unit ufRptNomesForaDoLivro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, DB,
  ADODB, StdCtrls, cxButtons, ExtCtrls, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxPC, QuickRpt, QRCtrls;

type
  TfrmRptNomesForaDoLivro = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    qryPessoal: TADOQuery;
    dsPessoal: TDataSource;
    qryPessoalidPessoal: TStringField;
    qryPessoalNome: TStringField;
    qryPessoalDt_Nascimento: TDateTimeField;
    cxPageControl1: TcxPageControl;
    tshPesquisa: TcxTabSheet;
    tshRelatorio: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    btnImprimir: TcxButton;
    qryServidor: TADOQuery;
    dsServidor: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qryPessoalCPF: TStringField;
    QRLabel7: TQRLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    qryPessoalNaturalidade: TStringField;
    qryPessoalPai: TStringField;
    qryPessoalMae: TStringField;
    qryPessoalConjuge: TStringField;
    qryTelefone: TADOQuery;
    dsTelefone: TDataSource;
    QRSysData1: TQRSysData;
    qryPessoalEndereco: TStringField;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    qryPessoalCidade: TStringField;
    qryPessoalUF: TStringField;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    function retornaPessoal:Integer;
  end;

var
  frmRptNomesForaDoLivro: TfrmRptNomesForaDoLivro;

implementation

uses uDMConexao;

{$R *.dfm}

function TfrmRptNomesForaDoLivro.retornaPessoal: Integer;
var wSQL: String;
begin
//
end;

procedure TfrmRptNomesForaDoLivro.btnImprimirClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TfrmRptNomesForaDoLivro.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmRptNomesForaDoLivro.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
