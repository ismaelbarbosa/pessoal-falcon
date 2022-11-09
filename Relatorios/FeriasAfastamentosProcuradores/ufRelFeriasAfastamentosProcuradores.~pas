unit ufRelFeriasAfastamentosProcuradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, StdCtrls, cxButtons, ExtCtrls, Grids,
  DBGrids;

type
  TfrmRelFeriasAfastamentosProcuradores = class(TForm)
    pnlBotoes: TPanel;
    Label21: TLabel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    btnPesquisar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    lblMes: TLabel;
    lkpMes: TcxLookupComboBox;
    grdAfastamentos: TcxGrid;
    tbvAfastamentos: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    tvcTipoDeAfastamento: TcxGridDBColumn;
    tvcDataInicio: TcxGridDBColumn;
    tvcDataTermino: TcxGridDBColumn;
    tvcDias: TcxGridDBColumn;
    lvlAfastamentos: TcxGridLevel;
    dsAno: TDataSource;
    dsMes: TDataSource;
    dsRelAfastamentoProcuradores: TDataSource;
    tbvAfastamentosColumn1: TcxGridDBColumn;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFeriasAfastamentosProcuradores: TfrmRelFeriasAfastamentosProcuradores;

implementation

uses uDMRelatorios, uDmExibirTabelas, uDMConexao,
  uRptRelFeriasAfastamentos;

{$R *.dfm}

procedure TfrmRelFeriasAfastamentosProcuradores.btnPesquisarClick(
  Sender: TObject);
begin
//  edtMesExit(Sender);

  with dmRelatorios do
  begin
    sprRelAfastamentoProcuradores.Connection := DMConexao.conPessoal;
    
    sprRelAfastamentoProcuradores.Active := false;
    sprRelAfastamentoProcuradores.Parameters.ParamValues['@mes'] := lkpMes.EditValue; // StrToInt(edtMes.Text);
    sprRelAfastamentoProcuradores.ExecProc;
    sprRelAfastamentoProcuradores.Active := true;

    if sprRelAfastamentoProcuradores.RecordCount > 0 then btnImprimir.Enabled := true
    else btnImprimir.Enabled := false;
  end;

end;

procedure TfrmRelFeriasAfastamentosProcuradores.btnSairClick(
  Sender: TObject);
begin
  Close;
end;

procedure TfrmRelFeriasAfastamentosProcuradores.FormCreate(
  Sender: TObject);
begin
  dsRelAfastamentoProcuradores.DataSet := DMRelatorios.sprRelAfastamentoProcuradores;
  tbvAfastamentos.DataController.DataSource := dsRelAfastamentoProcuradores;

  with dmExibirTabelas do
  begin
    dsMes.DataSet := qryMes;
    dsAno.DataSet := qryAno;

    qryAno.Active := true;
    qryMes.Active := true;
    qryDataHora.Active := true;

    lkpMes.ItemIndex := qryDataHora.FieldValues['Mes']-1;
  end;

  WindowState := wsMaximized;
end;

procedure TfrmRelFeriasAfastamentosProcuradores.btnImprimirClick(
  Sender: TObject);
begin
  if not Assigned(rptRelFeriasAfastamentos) then//if5
  begin
    Application.CreateForm(TrptRelFeriasAfastamentos, rptRelFeriasAfastamentos);
    rptRelFeriasAfastamentos.Prepare;
  end;//if5

//    qRptRelAfastamento.PrinterSettings.Copies := nCopias;
//    qRptRelAfastamento.Print;

  rptRelFeriasAfastamentos.Preview;
end;

procedure TfrmRelFeriasAfastamentosProcuradores.FormActivate(
  Sender: TObject);
begin
  with dmRelatorios.sprRelAfastamentoProcuradores do
  begin
    if Active = true then
    begin
      if RecordCount > 0 then btnImprimir.Enabled := true
      else btnImprimir.Enabled := false;
    end
    else btnImprimir.Enabled := false;
  end
end;

end.
