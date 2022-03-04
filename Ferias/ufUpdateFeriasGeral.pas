unit ufUpdateFeriasGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxContainer, StdCtrls, cxTextEdit, cxMemo, Menus, cxButtons,
  cxPC, DBCtrls;

type
  TfrmUpdateFeriasGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    pgcFerias: TcxPageControl;
    tshRelacaoServidores: TcxTabSheet;
    tshRelacaoFerias: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    edtPesquisa: TcxTextEdit;
    grdServidores: TcxGrid;
    tbvServidores: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    grdServidoresLevel1: TcxGridLevel;
    Panel2: TPanel;
    grdFerias: TcxGrid;
    tbvFerias: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcPeriodo: TcxGridDBColumn;
    tvcParcela: TcxGridDBColumn;
    tvcTipoParcela: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcDt_InicioReagendamento: TcxGridDBColumn;
    tvcDt_TerminoReagendamento: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    grdFeriasLevel1: TcxGridLevel;
    pnlNome: TPanel;
    txtNome: TDBText;
    tvcCargo: TcxGridDBColumn;
    lblQtdFerias: TLabel;
    lblQtdServidores: TLabel;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    btnIncluirFerias: TcxButton;
    btnEditarFerias: TcxButton;
    btnExcluirFerias: TcxButton;
    tvcIdTipoParcela: TcxGridDBColumn;
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure tshRelacaoFeriasShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirFeriasClick(Sender: TObject);
    procedure tbvServidoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEditarFeriasClick(Sender: TObject);
  private
    { Private declarations }
  public
  //
  end;

var
  frmUpdateFeriasGeral: TfrmUpdateFeriasGeral;

implementation

uses uDMConexao, DateUtils, uDmExibirTabelas, ufPrincipal, PRG_utils,
  uPesFuncoes, ufUpdateFerias, uDmFeriasAbonoAfastamento, ufLogs;

{$R *.dfm}

procedure TfrmUpdateFeriasGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: btnPesquisarClick(Sender);
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end
end;


procedure TfrmUpdateFeriasGeral.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  tbvServidores.DataController.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  tbvFerias.DataController.DataSource := DMFeriasAbonoAfastamento.dsFerias;

  txtNome.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtCargo.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtLotacao.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  
end;

procedure TfrmUpdateFeriasGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateFeriasGeral.btnPesquisarClick(Sender: TObject);
begin
  lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
end;

procedure TfrmUpdateFeriasGeral.tshRelacaoFeriasShow(Sender: TObject);
begin
  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      lblQtdFerias.Caption := 'Total de registros: '
      + IntToStr(DMFeriasAbonoAfastamento.exibirFerias(FieldValues['idPessoal'],
      FieldValues['idServidor']));
    end;
  end;
end;

procedure TfrmUpdateFeriasGeral.FormActivate(Sender: TObject);
begin
  pgcFerias.ActivePageIndex := 0;
  edtPesquisa.SetFocus;
  lblQtdServidores.Caption := '0';
  lblQtdFerias.Caption := '0';
end;

procedure TfrmUpdateFeriasGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateFeriasGeral.btnIncluirFeriasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFerias, frmUpdateFerias);
  frmUpdateFerias.setarOperacao(1);

  with DMFeriasAbonoAfastamento do
  begin
    frmUpdateFerias.setarDadosServidor
    (qryPesquisa.FieldValues['idServidor'],
     qryPesquisa.FieldValues['Nome'],
     qryPesquisa.FieldValues['Cargo']);
  end;

  frmUpdateFerias.setFormQueChamou('frmUpdateFeriasGeral');

  frmUpdateFerias.ShowModal;
  frmUpdateFerias.Release;
  frmUpdateFerias := nil;

end;

procedure TfrmUpdateFeriasGeral.tbvServidoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN
  then pgcFerias.ActivePageIndex := 1;

end;

procedure TfrmUpdateFeriasGeral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateFeriasGeral.btnEditarFeriasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFerias, frmUpdateFerias);
  frmUpdateFerias.setarOperacao(2);

  //with DMFeriasAbonoAfastamento.qryPesquisa do
  //begin

    frmUpdateFerias.exibeFeriasNoPeriodo
    (DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
    DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],
    DMFeriasAbonoAfastamento.qryFerias.FieldValues['idExercicio']);

  //end;

  frmUpdateFerias.configurarOperacao;
  frmUpdateFerias.carregarFeriasParaEdicao;


  frmUpdateFerias.bloquearCampos;
  //frmUpdateFerias.edtProcessoSEI.SetFocus;


  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    frmUpdateFerias.setarDadosServidor
    (FieldValues['idServidor'],
     FieldValues['Nome'],
     FieldValues['Cargo']);
  end;

  frmUpdateFerias.setFormQueChamou('frmUpdateFeriasGeral');

  frmUpdateFerias.ShowModal;
  frmUpdateFerias.Release;
  frmUpdateFerias := nil;

end;

end.
