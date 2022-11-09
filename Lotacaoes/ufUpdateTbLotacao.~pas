unit ufUpdateTbLotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DB, ADODB, cxControls, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxGroupBox, cxMemo, cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup, cxSplitter, cxCalendar;

type
  TfrmUpdateTbLotacao = class(TForm)
    qryLotacao: TADOQuery;
    dsLotacao: TDataSource;
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    Timer1: TTimer;
    Button1: TButton;
    btnNovaLotacao: TcxButton;
    pgcLotacao: TcxPageControl;
    tshRelacao: TcxTabSheet;
    tshCreateUpdate: TcxTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    btnGravar: TcxButton;
    btnEditarLotacao: TcxButton;
    gbxCargo: TcxGroupBox;
    edtPesquisa: TcxTextEdit;
    Label6: TLabel;
    Label1: TLabel;
    edtDescricao: TcxTextEdit;
    Label3: TLabel;
    edtSigla: TcxTextEdit;
    Label5: TLabel;
    edtSala: TcxTextEdit;
    Label8: TLabel;
    edtRamal: TcxTextEdit;
    lblGrauInstrucao: TLabel;
    qrySuperLotacao: TADOQuery;
    dsSuperLotacao: TDataSource;
    lkpSuperLotacao: TcxLookupComboBox;
    mmoSQL: TcxMemo;
    rgpEstrutura: TcxRadioGroup;
    btnDetalhar: TcxButton;
    qryServidores: TADOQuery;
    dsServidores: TDataSource;
    qryFuncao: TADOQuery;
    dsFuncao: TDataSource;
    qryHistoricoLotacao: TADOQuery;
    dsHistoricoLotacao: TDataSource;
    pnlLotacoes: TPanel;
    Label9: TLabel;
    grdLotacao: TcxGrid;
    grdLotacaoDBTableView1: TcxGridDBTableView;
    grdLotacaoDBTableView1Column1: TcxGridDBColumn;
    grdLotacaoDBTableView1Column2: TcxGridDBColumn;
    grdLotacaoDBTableView1Column5: TcxGridDBColumn;
    grdLotacaoDBTableView1Column6: TcxGridDBColumn;
    grdLotacaoDBTableView1Column7: TcxGridDBColumn;
    grdLotacaoDBTableView1Column8: TcxGridDBColumn;
    grdLotacaoDBTableView1Column3: TcxGridDBColumn;
    grdLotacaoDBTableView1Column4: TcxGridDBColumn;
    grdLotacaoLevel1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    lblLotacao: TLabel;
    edtIdLotacao: TcxTextEdit;
    Label11: TLabel;
    btnExtinguirLotacao: TcxButton;
    lblNascimento: TLabel;
    edtDataDODF: TcxDateEdit;
    pgcServidoresHistoricoFuncoes: TcxPageControl;
    tshServidores: TcxTabSheet;
    pnlServidores: TPanel;
    grdServidores: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tshFuncoes: TcxTabSheet;
    tshHistoricoLotacoes: TcxTabSheet;
    lblTotal: TLabel;
    Panel3: TPanel;
    Label10: TLabel;
    lblTotalServidores: TLabel;
    Panel4: TPanel;
    Label12: TLabel;
    lblTotalFuncoes: TLabel;
    grdFuncao: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel5: TPanel;
    Label13: TLabel;
    lblTotalHistorico: TLabel;
    grdHistorico_Lotacao: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btnCancelar: TcxButton;
    cxButton2: TcxButton;
    qryTransferirLotacao: TADOQuery;
    dsTransferirLotacao: TDataSource;
    lkpTransferirLotacao: TcxLookupComboBox;
    qryExisteServidorLotacao: TADOQuery;
    grdLotacaoDBTableView1Column10: TcxGridDBColumn;
    lblID: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnNovaLotacaoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgpEstruturaClick(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure grdLotacaoEnter(Sender: TObject);
    procedure btnExtinguirLotacaoClick(Sender: TObject);
    procedure dsLotacaoDataChange(Sender: TObject; Field: TField);
    procedure tshRelacaoEnter(Sender: TObject);
    procedure btnEditarLotacaoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    procedure limparCampos;
    function retornarTransferirLotacao: boolean;

    procedure setarStatus(prmModo: char);
    function setarOperacao(tipo: Integer):boolean;

    procedure setarModoInclusao;
    procedure setarModoAlteracao;
    procedure setarModoConsulta;

    function SQLLotacao(valor:String): String;
    function SQLServidores(idLotacao: String): String;
    function SQLHistorioLotacao(idLotacao: String): String;
    function SQLFuncoes(idLotacao: String): String;
    function SQLInsertLotacao: String;
    function SQLUpdateLotacao: String;

    function pesquisarLotacao: integer;
    function pesquisarServidores: integer;
    function pesquisarHistoricoLotacao: integer;
    function pesquisarFuncoes: integer;

    function gerarIdLotacao: String;
    function retornarSuperLotacao: boolean;
    function insertLotacao: boolean;
    function updateLotacao:boolean;
    function extinguirLotacao(ID: String): boolean;

    function gravarLotacao
    (idPessoal, idServidor, idLotacao, Dt_Lotacao: String):boolean;

    function existeServidorLotado(idLotacao: String): boolean;
    function carregarDadosLotacao:boolean;

  end;

type
  TStatus = class
  idStatus: char;
  dscStatus: String;
end;

var
  frmUpdateTbLotacao: TfrmUpdateTbLotacao;
  obStatus: TStatus;

implementation

uses uDMPessoal, uPesFuncoes, PRG_utils, uDMConexao, ufPrincipal, ufLogs,
  ufUpdateServidor, ufUpdateLotacao, uDmExibirTabelas, uDmCadastroServidor,
  ufCreateServidor;

{$R *.dfm}

{ TfrmUpdateTbLotacao }

function TfrmUpdateTbLotacao.pesquisarLotacao: integer;
begin
  with qryLotacao do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLLotacao(edtPesquisa.Text));
    Active := True;
  end;

  Result := qryLotacao.RecordCount;

end;

function TfrmUpdateTbLotacao.SQLLotacao(valor:String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + 'CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
  + ' WHEN Nova_Estrutura = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS NovaEstrutura'


  + ', lota.ID'
  + ', lota.idLotacao'
  + ', lota.Codigo_Sigre'
  + ', lota.Descricao'
  + ', lota.Sigla'
  + ', lota.SuperLotacao'
  + ', lota.Sala'
  + ', lota.Ramal'
  + ', lota.Nova_Estrutura'
  + ', lota.dtCriacao_Alteracao'

  + ' FROM tbLotacao as lota'

  + ' WHERE 1=1';

  case rgpEstrutura.ItemIndex of
  0: pesquisa := pesquisa + ' and lota.Nova_Estrutura = 1';
  1: pesquisa := pesquisa + ' and lota.Nova_Estrutura = 0';
  end;


  pesquisa := pesquisa

  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'Descricao','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'Sigla','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'idLotacao','AND')
  + ')'
  + ' ORDER BY lota.Descricao';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;

end;

procedure TfrmUpdateTbLotacao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateTbLotacao.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;
end;

procedure TfrmUpdateTbLotacao.Timer1Timer(Sender: TObject);
var total: Integer;
begin
  //if edtLotacao.Focused then
  if pesquisarLotacao <> 0 then
  begin
//    ShowMessage('Não é zero');
    lblTotal.Caption := InttoStr(pesquisarLotacao);
    btnDetalharClick(Nil);
  end;

  {else if edtLotacao.Focused then
  pesquisar(edtLotacao.Text, 2);}

  Timer1.Enabled := false;

end;

procedure TfrmUpdateTbLotacao.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
  qryLotacao.Connection := DMConexao.conPessoal;
  qryServidores.Connection := DMConexao.conPessoal;
  qryFuncao.Connection := DMConexao.conPessoal;
  qryHistoricoLotacao.Connection := DMConexao.conPessoal;
  qrySuperLotacao.Connection := DMConexao.conPessoal;
  qryTransferirLotacao.Connection := DMConexao.conPessoal;
  qryExisteServidorLotacao.Connection := DMConexao.conPessoal;

  edtIdLotacao.Properties.MaxLength := 12;
  edtDescricao.Properties.MaxLength := 200;
  edtSigla.Properties.MaxLength := 50;
  edtSala.Properties.MaxLength := 6;
  edtRamal.Properties.MaxLength := 4;

  setarOperacao(3);
  tshCreateUpdate.Enabled := true;

  btnNovaLotacao.Enabled := true;
  btnEditarLotacao.Enabled := true;

  pgcLotacao.ActivePageIndex := 0;

end;

function TfrmUpdateTbLotacao.gerarIdLotacao: String;
var VSQL, IDAtual, proximoID: String;
begin
  VSQL := 'SELECT MAX(RIGHT(idLotacao,4)) as maxID FROM tbLotacao WHERE LEFT(idLotacao, 8) = ''00000000''';

  with dmPessoal.qryExecSQL do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(VSQL);
    Active := True;
  end;

  IDAtual := IntToStr(StrToInt(dmPessoal.qryExecSQL.FieldValues['maxID'])+1);

  proximoID := StringOfChar('0', 12-length(IDAtual))+ IDAtual;

  Result := proximoID;

  //ShowMessage(Result);

  //ShowMessage(inttostr(length(IntToStr((StrToInt(Result)+1)))));

  //ShowMessage(StringOfChar('0', 12-length(Result)));

end;

procedure TfrmUpdateTbLotacao.Button1Click(Sender: TObject);
begin
  ShowMessage(gerarIdLotacao);
end;

procedure TfrmUpdateTbLotacao.btnNovaLotacaoClick(Sender: TObject);
begin
  setarOperacao(1);

  tshRelacao.Enabled := false;
  tshCreateUpdate.Enabled := true;

  btnNovaLotacao.Enabled := false;
  btnEditarLotacao.Enabled := false;
  btnExtinguirLotacao.Enabled := false;

  pgcLotacao.ActivePageIndex := 1;
end;

function TfrmUpdateTbLotacao.retornarSuperLotacao: boolean;
begin
  try
    qrySuperLotacao.Active := false;
    qrySuperLotacao.SQL.Text :=

    'SELECT DISTINCT superlotacao FROM tbLotacao where superLotacao IS NOT NULL ORDER BY superlotacao';

    qrySuperLotacao.Active := true;

   except
     Result := false;
  end;

  if qrySuperLotacao.RecordCount > 0 then Result := true
  else Result := false;

end;

procedure TfrmUpdateTbLotacao.FormActivate(Sender: TObject);
begin
  lblOperacao.Caption := 'CONSULTA';

  if not retornarSuperLotacao
  then ShowMessage('A pesquisa falhou para o campo de SuperLotacao');

  if not retornarTransferirLotacao
  then ShowMessage('A pesquisa falhou para o campo de lotação');

  //lblTotal.Caption := InttoStr(pesquisarLotacao);

  pgcLotacao.ActivePageIndex := 0;
  if tshRelacao.Visible then edtPesquisa.SetFocus;

  Timer1.Enabled := true;
  
end;

procedure TfrmUpdateTbLotacao.btnGravarClick(Sender: TObject);
var wMens: String;
begin

  if Trim(edtIdLotacao.Text) = '' then
  begin
    ShowMessage('O código da lotação de ser informado.');
    edtIdLotacao.SetFocus;
    Abort;
  end;

  if Trim(edtDescricao.Text) = '' then
  begin
    ShowMessage('A descrição da lotação de ser informada.');
    edtDescricao.SetFocus;
    Abort;
  end;

  case OPERACAO of
    // Inclusão de Lotação
    1:
    begin
      //ShowMessage('Inclusão');
      wMens := 'Atenção! Confirma a inclusão desta lotação?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin

        if insertLotacao then
        begin
          IncluirLog
          (
          DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
          RetornaData(2),
          'tbLotacao',
          QuotedStr(lblID.Caption),
          'NULL',
          'NULL',
          'TODOS',
          'Inclusão da lotação: '
          + 'Nova lotação: ' + edtDescricao.Text
          );

          limparCampos;

          ShowMessage('Registro gravado com sucesso');
        end



        // exibir lotações
      end;

    end;
    2:
    begin
      wMens := 'Atenção! Confirma a alteração desta lotação?';
      //ShowMessage('Alteração');

      if ConfirmaAcao(wMens,3) = 1 then
      begin

        if updateLotacao then
        begin
          IncluirLog
          (
          DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
          RetornaData(2),
          'tbLotacao',
          QuotedStr(lblID.Caption),
          'NULL',
          'NULL',
          'TODOS',
          'Alteração da lotação: '
          + 'Lotação atual: ' + edtDescricao.Text
          );

          ShowMessage('Registro gravado com sucesso');
        end

        // exibir lotações
      end;

    end
  end;

  edtPesquisa.Text := edtDescricao.Text;
  Timer1.Enabled := true;

  //btnCancelarClick(Nil);
end;

function TfrmUpdateTbLotacao.SQLInsertLotacao: String;
begin
  Result :=
  'SET DATEFORMAT dmy'
  + ' INSERT INTO'
  + ' tbLotacao'
  + '(idLotacao, Descricao, Sigla, SuperLotacao, SuperLotacaoFolhaDePonto, Sala, Ramal, Nova_Estrutura, Tramite, dtCriacao_Alteracao)'
  + ' VALUES ('
  + QuotedStr(edtIdLotacao.Text)
  + ', ' + QuotedStr(edtDescricao.Text)
  + ', ' + QuotedStr(edtSigla.Text)
  + ', ' + QuotedStr(lkpSuperLotacao.Text)
  + ', ' + QuotedStr(lkpSuperLotacao.Text)
  + ', ' + QuotedStr(edtSala.Text)
  + ', ' + QuotedStr(edtRamal.Text)
  + ', ' + QuotedStr('1')
  + ', ' + QuotedStr('1')
  + ', ' + QuotedStr(edtDataDODF.Text)
  + ')';

end;

function TfrmUpdateTbLotacao.updateLotacao: boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text :=  SQLUpdateLotacao;

      mmoSQL.Lines.Add(SQL.Text);

      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

procedure TfrmUpdateTbLotacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //tshSQL.TabVisible := not tshSQL.TabVisible;
    //gbxSQL.Visible := not gbxSQL.Visible;

    //frmLogs.mmoLog.Visible := not frmLogs.mmoLog.Visible;

    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateTbLotacao.rgpEstruturaClick(Sender: TObject);
begin
  lblTotal.Caption := InttoStr(pesquisarLotacao);
end;

function TfrmUpdateTbLotacao.pesquisarServidores: integer;
begin
  with qryServidores do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLServidores(qryLotacao.FieldValues['idLotacao']));
    Active := True;
  end;

  Result := qryServidores.RecordCount;
end;

function TfrmUpdateTbLotacao.SQLServidores(idLotacao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + 'CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
  + ' WHEN Nova_Estrutura = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS NovaEstrutura'

  + ', lot.idLotacao, lot.Sigla, nome, lot.Descricao as Lotacao, car.Descricao as Cargo'
  + ', pes.idPessoal, ser.idServidor'
  + ' FROM tbPessoal pes'
  + ' LEFT JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
  + ' INNER JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' LEFT JOIN tbLotacao lot on lot.idLotacao = ser.idLotacao'
  + ' WHERE lot.idLotacao = ' + QuotedStr(idLotacao)

  + ' AND idDesligamento is NULL';

  pesquisa := pesquisa

  + ' ORDER BY pes.Nome';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;

end;

procedure TfrmUpdateTbLotacao.btnDetalharClick(Sender: TObject);
begin
  lblTotalServidores.Caption := InttoStr(pesquisarServidores);
  lblTotalFuncoes.Caption := InttoStr(pesquisarFuncoes);
  lblTotalHistorico.Caption := InttoStr(pesquisarHistoricoLotacao);
end;

function TfrmUpdateTbLotacao.SQLFuncoes(idLotacao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + 'CASE WHEN fun.Nova_Estrutura = 1 THEN ''SIM'''
  + ' WHEN fun.Nova_Estrutura = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS NovaEstrutura'

  + ', lot.idLotacao, lot.Descricao as Lotacao, lot.Sigla as Sigla_Lotacao, idFuncao, fun.Codigo_SIGRH, fun.Descricao as Funcao, fun.*'
  + ' FROM tbFuncao fun'
  + ' LEFT JOIN tbLotacao lot on lot.idLotacao = fun.idLotacao'
  + ' WHERE lot.idLotacao = ' + QuotedStr(idLotacao);

  pesquisa := pesquisa

  + ' ORDER BY fun.Descricao';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;
end;

function TfrmUpdateTbLotacao.SQLHistorioLotacao(
  idLotacao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + ' his.idLotacao, lot.descricao, lot.Sigla as Sigla_Lotacao, his.idPessoal, '
  + ' ser.idServidor as Matricula, pes.Nome, car.Descricao as Cargo'
  + ' FROM tbHist_Lotacao his'
  + ' LEFT JOIN tbLotacao lot on lot.idLotacao = his.idLotacao'
  + ' INNER JOIN tbPessoal pes on pes.idPessoal = his.idPessoal'
  + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' WHERE lot.idLotacao = ' + QuotedStr(idLotacao);

  pesquisa := pesquisa

  + ' ORDER BY pes.Nome';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;
end;

function TfrmUpdateTbLotacao.pesquisarFuncoes: integer;
begin
  with qryFuncao do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLFuncoes(qryLotacao.FieldValues['idLotacao']));
    Active := True;
  end;

  Result := qryFuncao.RecordCount;
end;

function TfrmUpdateTbLotacao.pesquisarHistoricoLotacao: integer;
begin
  with qryHistoricoLotacao do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLHistorioLotacao(qryLotacao.FieldValues['idLotacao']));
    Active := True;
  end;

  Result := qryHistoricoLotacao.RecordCount;
end;

procedure TfrmUpdateTbLotacao.grdLotacaoEnter(Sender: TObject);
begin
//  lblTotal.Caption := InttoStr(pesquisarServidores);
end;

procedure TfrmUpdateTbLotacao.btnExtinguirLotacaoClick(Sender: TObject);
var mensagem: String;
begin
  if existeServidorLotado(qryLotacao.FieldValues['idLotacao']) = true then
  begin
    ShowMessage('Há servidores ativos lotados nessa lotação');
    Abort;
  end;

  // Verificar se há algum servidor ativo na lotação antes de desativá-la
  // Disponibilizar opção para alterar a lotação de servidores em lote

  mensagem := 'Confirma a extinção dessa lotação:' + chr(13) + chr(13) +
  qryLotacao.FieldValues['idLotacao'] + ' - ' +
  qryLotacao.FieldValues['Descricao'] + ' - ' + qryLotacao.FieldValues['Sigla'];

  if ConfirmaAcao(mensagem, 3) = 1
  then
  begin
    if extinguirLotacao(qryLotacao.FieldValues['ID']) then
    begin
      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbLotacao',
      qryLotacao.FieldValues['ID'],
      'NULL',
      'NULL',
      'TODOS',
      'Extinção da lotação: '
      + 'ID: ' + IntToStr(qryLotacao.FieldValues['ID'])
      + ', Sigla: ' + qryLotacao.FieldValues['Sigla']
      + ', Lotação: ' + qryLotacao.FieldValues['Descricao']
      );

      ShowMessage('A lotação foi extinta');
    end;
  end;
end;

function TfrmUpdateTbLotacao.extinguirLotacao(ID: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    try
      Active := false;
      SQL.Clear;

      SQL.Text := 'UPDATE tbLotacao'
      + ' SET Nova_Estrutura = 0 '
      + ' WHERE ID = ' + QuotedStr(ID);

      mmoSQL.Lines.Add(SQL.Text);

      ExecSQL;
      
      Result := true;
    except
      Result := false;
    end
  end
end;

procedure TfrmUpdateTbLotacao.dsLotacaoDataChange(Sender: TObject;
  Field: TField);
begin
  if (qryLotacao.Active) and (qryLotacao.RecordCount <> 0)
  then btnDetalharClick(Nil); //lblTotal.Caption <> '0'
end;

procedure TfrmUpdateTbLotacao.tshRelacaoEnter(Sender: TObject);
begin
 // if tshRelacao.Visible then edtLotacao.SetFocus;
end;

function TfrmUpdateTbLotacao.insertLotacao: boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text :=  SQLInsertLotacao;

      mmoSQL.Lines.Add(SQL.Text);

      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateTbLotacao.SQLUpdateLotacao: String;
begin
  Result :=
  'SET DATEFORMAT dmy'
  + ' UPDATE'
  + ' tbLotacao'
  + ' SET'

  + ' idLotacao = ' + QuotedStr(edtIdLotacao.Text)
  + ', Descricao = '   + QuotedStr(edtDescricao.Text)
  + ', Sigla = ' + QuotedStr(edtSigla.Text)
  + ', SuperLotacao = ' + QuotedStr(lkpSuperLotacao.Text)
  + ', SuperLotacaoFolhaDePonto = '+ QuotedStr(lkpSuperLotacao.Text)
  + ', Sala = ' + QuotedStr(edtSala.Text)
  + ', Ramal = ' + QuotedStr(edtRamal.Text)
  + ', Nova_Estrutura = ' + QuotedStr('1')
  + ', Tramite = ' + QuotedStr('1')
  + ', dtCriacao_Alteracao = ' + QuotedStr(edtDataDODF.Text)

  + ' WHERE ID = ' + QuotedStr(lblID.Caption); // QuotedStr(qryLotacao.FieldValues['ID']);
end;

procedure TfrmUpdateTbLotacao.btnEditarLotacaoClick(Sender: TObject);
begin
  // Habilitar a tabsheet de edição
  setarOperacao(2);

  tshRelacao.Enabled := false;
  tshCreateUpdate.Enabled := true;

  btnNovaLotacao.Enabled := false;
  btnEditarLotacao.Enabled := false;
  btnExtinguirLotacao.Enabled := false;

  pgcLotacao.ActivePageIndex := 1;

  // Carregar dados para o formulário

  carregarDadosLotacao;

  // Setar o modo para edição

end;

function TfrmUpdateTbLotacao.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;

  case OPERACAO of
    1: lblOperacao.Caption := 'INCLUSÃO'; 
    2: lblOperacao.Caption := 'ALTERAÇÃO';
    3: lblOperacao.Caption := 'CONSULTA';
  end;

  Result := true;

end;

procedure TfrmUpdateTbLotacao.setarModoAlteracao;
begin
  setarStatus('2');
  setarOperacao(2);
end;

procedure TfrmUpdateTbLotacao.setarModoInclusao;
begin
  //edtCPF.Clear; // incluido pois é exceção no limparCampos devido ao cadastro de servidor com CPF já existente
  //desbloquearCampos;

  setarStatus('1');
  setarOperacao(1);

  //desabilitarBtnNovo;

  //habilitarBtnGravar;

  //tshTelefones.Enabled := false;

end;


procedure TfrmUpdateTbLotacao.setarStatus(prmModo: char);
begin
  case prmModo of
    '1':
    begin
      with obStatus do
      begin
        idStatus := '1'; dscStatus := 'INCLUSÃO LOTAÇÃO';
      end;
    end;
    '2':
    begin
      with obStatus do
      begin
        idStatus := '2'; dscStatus := 'INCLUSÃO LOTAÇÃO';
      end;
    end;
    '3':
    begin
      with obStatus do
      begin
        idStatus := '3'; dscStatus := 'EDIÇÃO';
      end;
    end;
  end;

  {
  with barServidor do
  begin
     Panels[0].Text := obStatus.idStatus;
     Panels[1].Text := obStatus.dscStatus;
     Panels[2].Text := DMConexao.Usuario.Nome;
     Panels[3].Text := DMConexao.getNomeServidor;
  end;
  }
end;

procedure TfrmUpdateTbLotacao.btnCancelarClick(Sender: TObject);
begin
  limparCampos;

  setarOperacao(3);

  tshRelacao.Enabled := true;
  tshCreateUpdate.Enabled := false;
  
  btnNovaLotacao.Enabled := true;
  btnEditarLotacao.Enabled := true;
  btnExtinguirLotacao.Enabled := true;

  pgcLotacao.ActivePageIndex := 0;
end;

procedure TfrmUpdateTbLotacao.limparCampos;
var i: Integer;
begin
  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
    begin
      if (Components[i].Name <> 'edtCPF') // campos que serão mantidos
      and (Components[i].Name <> 'outroCampoASerMantido')
      then
      TcxTextEdit(Components[i]).Clear;
    end;

    if (Components[i] is TcxLookupComboBox) then
    begin
      if (Components[i].Name <> 'lkpLotacao_OLD')
      then
      TcxLookupComboBox(Components[i]).Clear;
    end;

    if (Components[i] is TcxComboBox) then
    begin
      if (Components[i].Name <> 'lkpLotacao_OLD')
      then
      TcxComboBox(Components[i]).Clear;
    end;

    if (Components[i] is TcxMaskEdit) then
      TcxMaskEdit(Components[i]).Clear;

    if (Components[i] is TcxDateEdit) then
      TcxDateEdit(Components[i]).Clear;

    {if (Components[i] is TcxDBDateEdit) then
      TcxDBDateEdit(Components[i]).Clear;

    if (Components[i] is TcxDBCheckBox) then
      TcxDBCheckBox(Components[i]).Checked := false;}
  end;

end;

function TfrmUpdateTbLotacao.retornarTransferirLotacao: boolean;
var vSQL: String;
begin
  try
    qryTransferirLotacao.Active := false;
    vSQL :=
    'SELECT id, idLotacao, Descricao,'
    + ' Sigla, SuperLotacao, Sala, Ramal'

    + ', CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
    + ' WHEN Nova_Estrutura = 0 THEN ''NÃO'''
    + ' ELSE ''-'' END AS NovaEstrutura'

    + ' FROM tbLotacao ';

    if (OPERACAO = 1) // 'NOVA LOTAÇÃO'
    or (OPERACAO = 3) // 'EDITAR LOTAÇÃO'

    then
    vSQL := vSQL
    + 'Where '
    + ' tbLotacao.Nova_Estrutura = 1 ';

    vSQL := vSQL
    + 'Order by tbLotacao.Descricao';

    //ShowMessage(vSQL);



    qryTransferirLotacao.SQL.Text := vSQL;
    qryTransferirLotacao.Active := true;


   except
     Result := false;
  end;

  if qryTransferirLotacao.RecordCount > 0 then Result := true
  else Result := false;


end;

procedure TfrmUpdateTbLotacao.cxButton2Click(Sender: TObject);
var idLotacaoAnt, idAlteracaoNN: String;
begin
  //ShowMessage('Em implementação');

  //ShowMessage(lkpTransferirLotacao.EditValue + ' ' + lkpTransferirLotacao.Text);

  if (lkpTransferirLotacao.Text = '') then
  ShowMessage('Selecione a lotação')
  else
  begin

    if ConfirmaAcao('Confirma a transferência de lotações dos servidores?', 3) = 1 then
    begin
      Application.CreateForm(TfrmUpdateLotacao, frmUpdateLotacao);
      //frmUpdateLotacao.setarOperacao(3); // Consulta

      while not qryServidores.Eof do
      begin
        //ShowMessage(qryServidores.FieldValues['Nome']);

        idLotacaoAnt := qryServidores.FieldValues['idLotacao'];


        if gravarLotacao(
        qryServidores.FieldValues['idPessoal'],
        qryServidores.FieldValues['idServidor'],  // trocar por ID (tbServidor)
        lkpTransferirLotacao.EditValue, // esse valor é correto na inclusão mas pode variar no desligmento pois há registros com a mesma descrição
        RetornaData(1))

        then
        begin

          if frmUpdateLotacao.registrarHistoricoLotacao(
          qryServidores.FieldValues['idPessoal'],
          qryServidores.FieldValues['idServidor'],   // trocar por ID (tbServidor)
          lkpTransferirLotacao.EditValue,
          RetornaData(1)
          //DateToStr(diaAnterior(edtDtLotacao.EditValue))
          )
          then
          begin //8
            IncluirLog
            (
            DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
            RetornaData(2),
            'tbServidor, tbHist_Lotacao',
            qryServidores.FieldValues['idPessoal'],
            qryServidores.FieldValues['idPessoal'],
            qryServidores.FieldValues['idServidor'],
            'TODOS',
            'Alteração da lotação: '
            + 'Matrícula: ' + qryServidores.FieldValues['idServidor']
            + ' Nome: ' + qryServidores.FieldValues['Nome']
            + ' Lotação nova: ' + FloatToStr(lkpTransferirLotacao.editValue)
            + ' - ' +  lkpTransferirLotacao.Text
            );

            //ShowMessage('Lotação alterada com sucesso');

            {dmExibirTabelas.ExibirHistoricoLotacoes
            (frmUpdateServidor.lbl_IDP.Caption,
             frmUpdateServidor.txtMatricula.Caption, 100, 0);
            }
            // Exibir os dados do servidor após a atualização
            {resultado :=
            dmPessoal.pesquisarPessoal
            (' AND pes.idPessoal = ' + QuotedStr(frmUpdateServidor.lbl_IDP.Caption)
            + ' AND serv.idServidor = ' + QuotedStr(frmUpdateServidor.txtMatricula.Caption));
            }
            //frmUpdateLotacao.Close;

          end; //8
        end;

        // Criar um registro na tabela tbCamposAltServ

        idAlteracaoNN := InserirZeros(dmCadastroServidor.GerarID('tbCamposAltServ','idAlteracao'),12);

        dmCadastroServidor.registrarNotificaNupro
        (frmCreateServidor.SQLInsertNotificaNupro(idAlteracaoNN, '', qryServidores.FieldValues['idServidor'],
        '', '', '', '', '', '', '', '', '', '', '', '',
        Trim(idLotacaoAnt), Trim(lkpTransferirLotacao.EditValue), DMConexao.Usuario.CPF, RetornaData(2)));

        qryServidores.Next;
      end;

      frmUpdateLotacao.Release;
      frmUpdateLotacao := nil;

    end       
  end;
end;

function TfrmUpdateTbLotacao.gravarLotacao(idPessoal, idServidor,
  idLotacao, Dt_Lotacao: String): boolean;
var SQL_Lotacao: string;
begin

  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Lotacao := 'SET DATEFORMAT DMY'
    + ' UPDATE tbServidor'
    + ' SET ';

    //ShowMessage(IntToStr(operacao));

    SQL_Lotacao := SQL_Lotacao
    + ' idLotacao = ' + QuotedStr(Trim(idLotacao))
    ;

    SQL_Lotacao := SQL_Lotacao
    + ' WHERE idPessoal = ' + QuotedStr(Trim(idPessoal))
    + ' AND idServidor = ' + QuotedStr(Trim(idServidor));

    SQL.Text := SQL_Lotacao;

    ExecSQL;

  end;

  Result := true;

  mmoSQL.Text := SQL_Lotacao;

end;

function TfrmUpdateTbLotacao.existeServidorLotado(
  idLotacao: String): boolean;
begin
  with qryExisteServidorLotacao do
  begin
    Active := false;
    SQL.Text :=
    'SELECT count(*) FROM tbServidor'
    + ' WHERE idLotacao = ' + QuotedStr(idLotacao)
    + ' AND idDesligamento is NULL';

    //ShowMessage(sql.Text);
    mmoSQL.Lines.Add(SQL.Text);

    Active := true;

    ShowMessage(IntToStr(qryExisteServidorLotacao.RecordCount));
    if qryExisteServidorLotacao.RecordCount > 0
    then
      Result := true
    else
      Result := false;
  end;
end;

function TfrmUpdateTbLotacao.carregarDadosLotacao: boolean;
begin
  with qryLotacao do
  begin

    if FieldByName('ID').IsNull
    then
    begin
      ShowMessage('Erro crítico. Chave da lotação é nula');
      Abort;
    end
    else lblID.Caption := Trim(FieldValues['ID']);

    if FieldByName('idLotacao').IsNull
    then edtIdLotacao.Text := ''
    else edtIdLotacao.Text := Trim(FieldValues['idLotacao']);

    if FieldByName('descricao').IsNull
    then edtDescricao.Text := ''
    else edtDescricao.Text := Trim(FieldValues['descricao']);

    if FieldByName('sigla').IsNull
    then edtSigla.Text := ''
    else edtSigla.Text := Trim(FieldValues['sigla']);

    if FieldByName('SuperLotacao').IsNull
    then lkpSuperLotacao.Text := ''
    else lkpSuperLotacao.Text := Trim(FieldValues['SuperLotacao']);

    if FieldByName('sala').IsNull
    then edtSala.Text := ''
    else edtSala.Text := Trim(FieldValues['sala']);

    if FieldByName('ramal').IsNull
    then edtRamal.Text := ''
    else edtRamal.Text := Trim(FieldValues['ramal']);

    if FieldByName('dtCriacao_Alteracao').IsNull
    then edtDataDODF.Text := ''
    else edtDataDODF.Text := Trim(FieldValues['dtCriacao_Alteracao']);

  end;
end;

procedure TfrmUpdateTbLotacao.setarModoConsulta;
begin
  setarStatus('3');
  setarOperacao(3);
end;

end.
