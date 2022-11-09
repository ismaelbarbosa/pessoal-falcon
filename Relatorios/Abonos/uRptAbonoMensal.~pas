unit uRptAbonoMensal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TrptAbonoMensal = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    lblMes: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBTextExercicio: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBTextDt_Inicio: TQRDBText;
    QRDBTextDt_Termino: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape0: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRSysData2: TQRSysData;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    wCinza : boolean;
  public

  end;

var
  rptAbonoMensal: TrptAbonoMensal;

implementation

uses uDMRelatorios;

{$R *.DFM}

procedure TrptAbonoMensal.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var i: Integer;
begin
  {case frmRpt201.RadioGroup1.ItemIndex of
    0:
    begin
      qRpt201.Font.Color := clBlack;
      for i := 0 to ComponentCount - 1do
        if Components[i] is TQRLabel then
          TQRLabel(Components[i]).Font.Color := clBlack
        else
        if Components[i] is TQRDBText then
          TQRDBText(Components[i]).Font.Color := clBlack
        else
        if Components[i] is TQRShape then
          TQRShape(Components[i]).Pen.Color := clBlack

    end;
    1:
    begin
      qRpt201.Font.Color := clNavy;
      for i := 0 to ComponentCount - 1do
        if Components[i] is TQRLabel then
          TQRLabel(Components[i]).Font.Color := clNavy
        else
        if Components[i] is TQRDBText then
          TQRDBText(Components[i]).Font.Color := clNavy
        else
        if Components[i] is TQRShape then
          TQRShape(Components[i]).Pen.Color := clNavy

    end;
  end;
  }
  {
  if frmRpt201.CheckBox1.Checked then
  begin
  for i := 0 to ComponentCount - 1do
    if Components[i] is TQRShape then
      TQRShape(Components[i]).Pen.Color := clWhite
  end
  }

end;

procedure TrptAbonoMensal.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
//var i: Integer;
begin
  {if frmRpt201.CheckBox1.Checked then
  begin
    wCinza := not wCinza;
    if wCinza then DetailBand1.Color := $E6E6E6
    else DetailBand1.Color := clWhite;
  end
  }
end;

end.
