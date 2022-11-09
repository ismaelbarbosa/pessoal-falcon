unit uRptRelAfastamento;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TrptRelAfastamento = class(TQuickRep)
    QRBand1: TQRBand;
    lblPGDF: TQRLabel;
    lblTipoRelatorio: TQRLabel;
    QRLabel1: TQRLabel;
    bndColHeader: TQRBand;
    lblMatricula: TQRLabel;
    lblNome: TQRLabel;
    lblTipo: TQRLabel;
    lblInicio: TQRLabel;
    QRShape5: TQRShape;
    QRGroup1: TQRGroup;
    bndDetail: TQRBand;
    txtProcesso: TQRDBText;
    txtTipo: TQRDBText;
    txtParte: TQRDBText;
    lblTermino: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    lblPeriodo: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape7: TQRShape;
    txtLotacao: TQRDBText;
    lblDias: TQRLabel;
    txtDias: TQRDBText;
    QRDBText1: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  rptRelAfastamento: TrptRelAfastamento;

implementation

uses uDMRelatorios, udmPessoal, ufRelAfastamento, ufPrincipal;
//, uqrptRelSubstProcurador;

{$R *.DFM}

procedure TrptRelAfastamento.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  lblUsuario.Caption := frmPrincipal.Sessao.Matricula + ' - ' +
                          frmPrincipal.Sessao.Nome;}

  //lblPeriodo.Caption := frmRelAfastamento.lkpMes.EditValue.Caption + '/'
  //                    + frmRelAfastamento.lkpAno.Text;
end;

end.
