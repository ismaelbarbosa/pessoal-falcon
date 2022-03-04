unit ufRptRelacaoPessoal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  cxGroupBox, cxRadioGroup, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk;

type
  TfrmRptRelacaoPessoal = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    dsPesquisa: TDataSource;
    qryPesquisa: TADOQuery;
    tvcNome: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    Button1: TButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function retornaSQLPesquisa: String;
    function pesquisarPessoal:Integer;

  end;

var
  frmRptRelacaoPessoal: TfrmRptRelacaoPessoal;

implementation

uses uDMConexao;

{$R *.dfm}

procedure TfrmRptRelacaoPessoal.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized
end;

procedure TfrmRptRelacaoPessoal.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmRptRelacaoPessoal.pesquisarPessoal: Integer;
begin
  with qryPesquisa do
  begin
    Active := false;
    SQL.Text := retornaSQLPesquisa;
    Active := true;
    Result := qryPesquisa.RecordCount;
  end
end;

function TfrmRptRelacaoPessoal.retornaSQLPesquisa: String;
var SQL :String;
begin

  SQL :=

      'SET DATEFORMAT dmy'
      + ' SELECT  '
      + ' Nome, car.Descricao as Cargo'
      + ' FROM tbPessoal pes'
      + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
      + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo';

  Result := SQL;

end;

procedure TfrmRptRelacaoPessoal.btnImprimirClick(Sender: TObject);
begin
  pesquisarPessoal;
end;

procedure TfrmRptRelacaoPessoal.Button1Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview(True);
end;

end.
