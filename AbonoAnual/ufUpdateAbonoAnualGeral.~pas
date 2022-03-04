unit ufUpdateAbonoAnualGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ADODB, cxMemo, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, StdCtrls, cxPC, cxButtons, ExtCtrls;

type
  TfrmUpdateAbonoAnualGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    pgcAbono: TcxPageControl;
    tshRelacaoServidores: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    lblQtdServidores: TLabel;
    edtPesquisa: TcxTextEdit;
    grdServidores: TcxGrid;
    tbvServidores: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    grdServidoresLevel1: TcxGridLevel;
    tshRelacaoAbonos: TcxTabSheet;
    Panel2: TPanel;
    lblQtdAbonos: TLabel;
    btnIncluirAbono: TcxButton;
    btnEditarFerias: TcxButton;
    btnExcluirFerias: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    grdAbonoAnual: TcxGrid;
    tbvAbonoAnual: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcDt_1: TcxGridDBColumn;
    tvcDt_2: TcxGridDBColumn;
    tvcDt_3: TcxGridDBColumn;
    tvcDt_4: TcxGridDBColumn;
    tvcDt_5: TcxGridDBColumn;
    grdAbonoAnualLevel1: TcxGridLevel;
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure tbvServidoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirAbonoClick(Sender: TObject);
    procedure tshRelacaoAbonosShow(Sender: TObject);
  private
    { Private declarations }
  public
    //
  end;

var
  frmUpdateAbonoAnualGeral: TfrmUpdateAbonoAnualGeral;

implementation

uses uDMConexao, PRG_utils, uPesFuncoes, ufUpdateAbonoAnual, ufLogs,
  ufPrincipal, uDmFeriasAbonoAfastamento;

{$R *.dfm}

procedure TfrmUpdateAbonoAnualGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateAbonoAnualGeral.btnPesquisarClick(Sender: TObject);
begin
  lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
end;

procedure TfrmUpdateAbonoAnualGeral.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  tbvServidores.DataController.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  tbvAbonoAnual.DataController.DataSource := DMFeriasAbonoAfastamento.dsAbonoAnual;

  txtNome.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtCargo.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtLotacao.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;

end;

procedure TfrmUpdateAbonoAnualGeral.FormActivate(Sender: TObject);
begin
  pgcAbono.ActivePageIndex := 0;
  edtPesquisa.SetFocus;
  lblQtdServidores.Caption := '0';
  lblQtdAbonos.Caption := '0';
end;

procedure TfrmUpdateAbonoAnualGeral.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateAbonoAnualGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end
end;

procedure TfrmUpdateAbonoAnualGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateAbonoAnualGeral.tbvServidoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN
  then pgcAbono.ActivePageIndex := 1;
end;

procedure TfrmUpdateAbonoAnualGeral.btnIncluirAbonoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAbonoAnual, frmUpdateAbonoAnual);
  frmUpdateAbonoAnual.setarOperacao(1);

  with DMFeriasAbonoAfastamento do
  begin
    frmUpdateAbonoAnual.setarDadosServidor
    (qryPesquisa.FieldValues['idServidor'],
     qryPesquisa.FieldValues['Nome'],
     qryPesquisa.FieldValues['Cargo']);
  end;

  frmUpdateAbonoAnual.setFormQueChamou('frmUpdateAbonoAnualGeral');

  frmUpdateAbonoAnual.ShowModal;
  frmUpdateAbonoAnual.Release;
  frmUpdateAbonoAnual := nil;

end;

procedure TfrmUpdateAbonoAnualGeral.tshRelacaoAbonosShow(Sender: TObject);
begin
  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      lblQtdAbonos.Caption := 'Total de registros: '
      + IntToStr(DMFeriasAbonoAfastamento.exibirAbonos(FieldValues['idPessoal'], FieldValues['idServidor']));
    end;
  end;
end;

end.
