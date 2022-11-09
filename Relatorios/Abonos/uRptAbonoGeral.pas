unit uRptAbonoGeral;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRptAbonoGeral = class(TQuickRep)
    grpCabecalho: TQRGroup;
    lblData5: TQRLabel;
    lblData4: TQRLabel;
    lblData3: TQRLabel;
    lblData2: TQRLabel;
    lblData1: TQRLabel;
    lblExercicio: TQRLabel;
    lblNome: TQRLabel;
    lblMatricula: TQRLabel;
    lblLotacao: TQRLabel;
    txtLotacao: TQRDBText;
    lblProcuradoria: TQRLabel;
    lblServPessoal: TQRLabel;
    lblConfirmacao: TQRLabel;
    lblRef: TQRLabel;
    lblReferencia: TQRLabel;
    txtSigla: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    bndDetalhe: TQRBand;
    txtNome: TQRDBText;
    txtMatricula: TQRDBText;
    txtExercicio: TQRDBText;
    txtData1: TQRDBText;
    txtData2: TQRDBText;
    txtData3: TQRDBText;
    txtData4: TQRDBText;
    txtData5: TQRDBText;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
  private

  public

  end;

var
  RptAbonoGeral: TRptAbonoGeral;

implementation

uses uDMRelatorios;


{$R *.DFM}

end.
