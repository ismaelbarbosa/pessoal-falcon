unit uRptRelFeriasAnuais;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TrptRelFeriasAnuais = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    lblReferencia: TQRLabel;
    QRShape10: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    lblGrupo: TQRLabel;
    txtGrupo: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBTextDt_Inicio: TQRDBText;
    QRDBTextDt_Termino: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    txtAdiantamento: TQRDBText;
    lblAdiantamento: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
  private

  public

  end;

var
  rptRelFeriasAnuais: TrptRelFeriasAnuais;

implementation

uses uDMRelatorios;

{$R *.DFM}

end.
