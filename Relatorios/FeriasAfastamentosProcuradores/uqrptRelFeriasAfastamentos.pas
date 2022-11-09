unit uqrptRelFeriasAfastamentos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrptRelFeriasAfastamentos = class(TQuickRep)
    QRBand1: TQRBand;
    lblPGDF: TQRLabel;
    lblTipoRelatorio: TQRLabel;
    QRLabel1: TQRLabel;
    lblEmitidoPor: TQRLabel;
    lblPeriodo: TQRLabel;
    lblUsuario: TQRLabel;
    sdDataHora: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    bndColHeader: TQRBand;
    lblMatricula: TQRLabel;
    lblNome: TQRLabel;
    lblTipo: TQRLabel;
    lblInicio: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    lblTermino: TQRLabel;
    bndDetail: TQRBand;
    txtProcesso: TQRDBText;
    txtTipo: TQRDBText;
    txtParte: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape7: TQRShape;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qrptRelFeriasAfastamentos: TqrptRelFeriasAfastamentos;

implementation

uses ufPrincipal, ufRelFeriasAfastamentos, udmPes_Relatorios, DB;

{$R *.DFM}

procedure TqrptRelFeriasAfastamentos.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{  lblUsuario.Caption := frmPrincipal.fLogin.Matricula + ' - ' +
                          frmPrincipal.fLogin.Nome;}
  lblUsuario.Caption := frmPrincipal.Usuario.Matricula + ' - ' +
                          frmPrincipal.Usuario.Nome;

  lblPeriodo.Caption := frmRelFeriasAfastamentos.lblNomeMes.Caption + '/' +
  IntToStr(dmPes_Relatorios.SProc_RelAfastamentoProcuradores.FieldValues['ANO']);
end;

end.
