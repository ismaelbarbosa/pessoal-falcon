unit uRptRelFeriasAfastamentos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TrptRelFeriasAfastamentos = class(TQuickRep)
    QRBand1: TQRBand;
    lblPGDF: TQRLabel;
    lblTipoRelatorio: TQRLabel;
    QRLabel1: TQRLabel;
    lblPeriodo: TQRLabel;
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
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  rptRelFeriasAfastamentos: TrptRelFeriasAfastamentos;

implementation

uses ufPrincipal, DB,
  ufRelFeriasAfastamentosProcuradores, uDMRelatorios;

{$R *.DFM}

procedure TrptRelFeriasAfastamentos.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{  lblUsuario.Caption := frmPrincipal.fLogin.Matricula + ' - ' +
                          frmPrincipal.fLogin.Nome;}

  {lblUsuario.Caption := frmPrincipal.Sessao.Matricula + ' - ' +
                          frmPrincipal.Sessao.Nome;}

  lblPeriodo.Caption := frmRelFeriasAfastamentosProcuradores.lkpMes.Text + '/' +
  IntToStr(dmRelatorios.sprRelAfastamentoProcuradores.FieldValues['ANO']);
end;

end.
