unit ufUpdateAfastamentoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxPC, cxMemo, DBCtrls,
  Grids, DBGrids;

type
  TfrmUpdateAfastamentoGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    pgcAfastamento: TcxPageControl;
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
    lvlServidores: TcxGridLevel;
    tshRelacaoAfastamentos: TcxTabSheet;
    pnlCRUDAfastamento: TPanel;
    lblQtdAfastamentos: TLabel;
    btnIncluirAfastamento: TcxButton;
    btnEditarAfastamento: TcxButton;
    btnExcluirAfastamento: TcxButton;
    grdAfastamento: TcxGrid;
    tbvAfastamento: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    lvlAfastamento: TcxGridLevel;
    tvcIdAfastamento: TcxGridDBColumn;
    tvcDescricaoAfastamento: TcxGridDBColumn;
    Timer1: TTimer;
    tvcID: TcxGridDBColumn;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure tshRelacaoAfastamentosShow(Sender: TObject);
    procedure btnIncluirAfastamentoClick(Sender: TObject);
    procedure btnEditarAfastamentoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirAfastamentoClick(Sender: TObject);
    procedure tbvServidoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    procedure habilitaRelacaoAfastamentos;
    procedure desabilitaRelacaoAfastamentos;
  end;

var
  frmUpdateAfastamentoGeral: TfrmUpdateAfastamentoGeral;

implementation

uses uDMConexao, uPesFuncoes, PRG_utils, ufUpdateAfastamento, ufPrincipal,
  uDmFeriasAbonoAfastamento, ufLogs;

{$R *.dfm}

procedure TfrmUpdateAfastamentoGeral.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  tbvServidores.DataController.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  tbvAfastamento.DataController.DataSource := DMFeriasAbonoAfastamento.dsAfastamento;

  txtNome.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtCargo.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtLotacao.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;

  if not DMFeriasAbonoAfastamento.qryPesquisa.Active
  then
    tshRelacaoAfastamentos.Enabled := false;
end;

procedure TfrmUpdateAfastamentoGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Timer1.Enabled := true;

  case Key of
    VK_RETURN: btnPesquisarClick(Sender);
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end

end;

procedure TfrmUpdateAfastamentoGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateAfastamentoGeral.FormActivate(Sender: TObject);
begin
  pgcAfastamento.ActivePageIndex := 0;
  edtPesquisa.SetFocus;
  lblQtdServidores.Caption := '0';
  lblQtdAfastamentos.Caption := '0';
end;

procedure TfrmUpdateAfastamentoGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateAfastamentoGeral.btnPesquisarClick(Sender: TObject);
begin
//  lblQtdServidores.Caption := IntToStr(pesquisarPessoal(edtPesquisa.Text));
  lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
end;

procedure TfrmUpdateAfastamentoGeral.tshRelacaoAfastamentosShow(
  Sender: TObject);
begin
  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      lblQtdAfastamentos.Caption := 'Total de registros: '
      + IntToStr(DMFeriasAbonoAfastamento.exibirAfastamentos(FieldValues['idPessoal'], FieldValues['idServidor']));
    end;
  end;
end;

procedure TfrmUpdateAfastamentoGeral.btnIncluirAfastamentoClick(Sender: TObject);
var idServidor, Nome, descricaoCargo: String;
begin
  Application.CreateForm(TfrmUpdateAfastamento, frmUpdateAfastamento);
  frmUpdateAfastamento.setarOperacao(1);

  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin

    if FieldByName('idServidor').IsNull then idServidor := ''
    else idServidor := FieldValues['idServidor'];

    if FieldByName('Nome').IsNull then Nome := ''
    else Nome := FieldValues['Nome'];

    if FieldByName('Cargo').IsNull then descricaoCargo := ''
    else descricaoCargo := FieldValues['Cargo'];

    frmUpdateAfastamento.setarDadosServidor
    (idServidor, Nome, descricaoCargo);
  end;


  frmUpdateAfastamento.setFormQueChamou('frmUpdateAfastamentoGeral');

  frmUpdateAfastamento.ShowModal;
  frmUpdateAfastamento.Release;
  frmUpdateAfastamento := nil;

end;

procedure TfrmUpdateAfastamentoGeral.btnEditarAfastamentoClick(
  Sender: TObject);
var idExercicio, nProcessoSEI, idAfastamento, dt_Inicio, dt_Termino, Observacao, ID: String;
begin
  Application.CreateForm(TfrmUpdateAfastamento, frmUpdateAfastamento);
  frmUpdateAfastamento.setarOperacao(2);

  frmUpdateAfastamento.configurarOperacao;

  //ShowMessage(DMFeriasAbonoAfastamento.qryAfastamento.FieldValues['idAfastamento']);

  with DMFeriasAbonoAfastamento.qryAfastamento do
  begin
    if FieldByName('idExercicio').IsNull then idExercicio := ''
    else idExercicio := FieldValues['idExercicio'];

    if FieldByName('nProcessoSEI').IsNull then nProcessoSEI := ''
    else nProcessoSEI := FieldValues['nProcessoSEI'];

    if FieldByName('idAfastamento').IsNull then idAfastamento := ''
    else idAfastamento := FieldValues['idAfastamento'];

    if FieldByName('dt_Inicio').IsNull then dt_Inicio := ''
    else dt_Inicio := FieldValues['dt_Inicio'];

    if FieldByName('dt_Termino').IsNull then dt_Termino := ''
    else dt_Termino := FieldValues['dt_Termino'];

    {if FieldByName('Observacao').IsNull
    then Observacao := ''
    else Observacao := FieldValues['Observacao'];}

    if (FieldByName('Observacao').IsNull) or (Trim(FieldValues['Observacao']) = '')
    then Observacao := ''
    else Observacao := FieldValues['Observacao'];

    //ShowMessage(FieldValues['ID']);
    ID := FieldValues['ID'];

    frmUpdateAfastamento.carregarAfastamento
    (idExercicio, nProcessoSEI, idAfastamento, dt_Inicio,
    dt_Termino, Observacao, ID);
  end;

  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    frmUpdateAfastamento.setarDadosServidor
    (FieldValues['idServidor'],
     FieldValues['Nome'],
     FieldValues['Cargo']);
  end;

  frmUpdateAfastamento.setFormQueChamou('frmUpdateAfastamentoGeral');

  frmUpdateAfastamento.ShowModal;
  frmUpdateAfastamento.Release;
  frmUpdateAfastamento := nil;
end;

procedure TfrmUpdateAfastamentoGeral.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateAfastamentoGeral.Timer1Timer(Sender: TObject);
var resultado: Integer;
begin
  if length(Trim(edtPesquisa.Text)) > 3 then
  begin

    resultado := DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text);

    case resultado of
      0:
      begin
        desabilitaRelacaoAfastamentos;
        //focarNaEdicao;
      end;
      1:
      begin
        habilitaRelacaoAfastamentos;
        //focarNaEdicao;
        pgcAfastamento.ActivePage := tshRelacaoAfastamentos;
        pnlCRUDAfastamento.SetFocus;
      end;
    end;

    if resultado > 1 then habilitaRelacaoAfastamentos;

    lblQtdServidores.Caption := IntToStr(resultado);

    Timer1.Enabled := false;
  end;
end;

procedure TfrmUpdateAfastamentoGeral.desabilitaRelacaoAfastamentos;
begin
  tshRelacaoAfastamentos.Enabled := false;
end;

procedure TfrmUpdateAfastamentoGeral.habilitaRelacaoAfastamentos;
begin
  tshRelacaoAfastamentos.Enabled := true;
end;

procedure TfrmUpdateAfastamentoGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMFeriasAbonoAfastamento.qryPesquisa.Active := false;
end;

procedure TfrmUpdateAfastamentoGeral.btnExcluirAfastamentoClick(
  Sender: TObject);
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Atenção! Confirma esta';
  wOperacao := 'exclusão';
  wMens := wMens + ' ' + wOperacao + '?';

  if ConfirmaAcao(wMens, 3) = 1 then
  begin
    if frmUpdateAfastamento.excluirAfastamento
    (DMFeriasAbonoAfastamento.qryAfastamento.FieldValues['ID'])
    then
    begin
      ShowMessage('Registro excluído.');

      wEvento := UpperCase(wOperacao)+ ' de afastamento.';

      with dmFeriasAbonoAfastamento.qryAfastamento do
      begin
       if not FieldByName('descricaoAfastamento').IsNull
       then
        wEvento := wEvento + ' ' 
        + dmFeriasAbonoAfastamento.qryAfastamento.FieldValues['idAfastamento']
        + ' - ' + dmFeriasAbonoAfastamento.qryAfastamento.FieldValues['descricaoAfastamento'];

        if not FieldByName('idExercicio').IsNull then
        wEvento := wEvento
        + ', Exercício: '
        + dmFeriasAbonoAfastamento.qryAfastamento.FieldValues['idExercicio'];

        if not FieldByName('Dt_Inicio').IsNull then
        wEvento := wEvento
        + ', Data de início: ' + DateToStr(FieldValues['Dt_Inicio']);

        if not FieldByName('Dt_Termino').IsNull then
        wEvento := wEvento
        + ', Data de término: ' + DateToStr(FieldValues['Dt_Termino']);
      end;

      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbAfastamento',
      //'NULL',
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],
      'TODOS',
      wEvento
      );

      //ShowMessage('Registrado no log de alterações.');
    end;


    frmUpdateAfastamentoGeral.tshRelacaoAfastamentosShow(Self);

  end
end;

procedure TfrmUpdateAfastamentoGeral.tbvServidoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN
  then pgcAfastamento.ActivePageIndex := 1;
end;

end.
