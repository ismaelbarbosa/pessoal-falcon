unit ufUpdateTbFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxPC, cxMemo, DBCtrls, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter;

type
  TfrmUpdateTbFuncao = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    btnNovaFuncao: TcxButton;
    btnEditarFuncao: TcxButton;
    pgcFuncao: TcxPageControl;
    tshRelacao: TcxTabSheet;
    gbxCargo: TcxGroupBox;
    lblLotacao: TLabel;
    edtFuncao: TcxTextEdit;
    rgpEstrutura: TcxRadioGroup;
    btnDetalhar: TcxButton;
    pnlFuncoes: TPanel;
    Label9: TLabel;
    grdFuncao: TcxGrid;
    grdFuncaoDBTableView1: TcxGridDBTableView;
    grdFuncaoDBTableView1Column1: TcxGridDBColumn;
    grdFuncaoDBTableView1Column2: TcxGridDBColumn;
    grdFuncaoDBTableView1Column4: TcxGridDBColumn;
    grdFuncaoDBTableView1Column9: TcxGridDBColumn;
    grdFuncaoLevel1: TcxGridLevel;
    qryFuncao: TADOQuery;
    dsFuncao: TDataSource;
    Timer1: TTimer;
    grdFuncaoDBTableView1Column5: TcxGridDBColumn;
    grdFuncaoDBTableView1Column6: TcxGridDBColumn;
    grdFuncaoDBTableView1Column7: TcxGridDBColumn;
    tshCreateUpdate: TcxTabSheet;
    mmoSQL: TcxMemo;
    grdFuncaoDBTableView1Column3: TcxGridDBColumn;
    grdFuncaoDBTableView1Column8: TcxGridDBColumn;
    grdFuncaoDBTableView1Column10: TcxGridDBColumn;
    grdFuncaoDBTableView1Column11: TcxGridDBColumn;
    Label6: TLabel;
    lblGrauInstrucao: TLabel;
    Label11: TLabel;
    lblNascimento: TLabel;
    btnGravar: TcxButton;
    edtDescricao: TcxTextEdit;
    lkpLotacao: TcxLookupComboBox;
    edtIdFuncao: TcxTextEdit;
    edtDataDODF: TcxDateEdit;
    Label7: TLabel;
    edtSimbolo: TcxTextEdit;
    qryLotacao: TADOQuery;
    dsLotacao: TDataSource;
    qryHistoricoFuncao: TADOQuery;
    dsHistoricoFuncao: TDataSource;
    btnExtinguirLotacao: TcxButton;
    btnSelLotacao: TcxButton;
    lblIdFuncao: TLabel;
    lblTotal: TLabel;
    cxSplitter1: TcxSplitter;
    pgcDetalhamento: TcxPageControl;
    tshFuncao: TcxTabSheet;
    lblCargo: TLabel;
    txtNome: TDBText;
    lblEspecialidade: TLabel;
    txtLotacao: TDBText;
    txtIdFuncao: TDBText;
    Label1: TLabel;
    txtDFG: TDBText;
    Label4: TLabel;
    Label3: TLabel;
    txtFuncao: TDBText;
    txtDtDODF: TDBText;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtFuncaoKeyPress(Sender: TObject; var Key: Char);
    procedure rgpEstruturaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lkpLotacaoExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovaFuncaoClick(Sender: TObject);
    procedure btnEditarFuncaoClick(Sender: TObject);
    procedure edtIdFuncaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdFuncaoExit(Sender: TObject);
    procedure edtSimboloKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnSelLotacaoClick(Sender: TObject);
    procedure tshRelacaoShow(Sender: TObject);
    procedure grdFuncaoDBTableView1DblClick(Sender: TObject);
    procedure grdFuncaoDBTableView1KeyPress(Sender: TObject;
      var Key: Char);
    procedure btnExtinguirLotacaoClick(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;

    function SQLFuncao(valor:String): String;
    function SQLHistoricoFuncao(idFuncao: String): String;
    function SQLInsertFuncao: String;
    function SQLUpdateFuncao(ID: String): String;

    function pesquisarFuncao: integer;
    function pesquisarHistoricoFuncao: integer;

    function retornarLotacao: boolean;

    function insertFuncao: boolean;
    function updateFuncao:boolean;
    function extinguirFuncao(ID: String): boolean;

    function validarCampos:boolean;
    function existeIDFuncao(idFuncao: String): boolean;
    procedure limparCampos;
    function carregarDadosFuncao: boolean;
  end;

var
  frmUpdateTbFuncao: TfrmUpdateTbFuncao;

implementation

uses PRG_utils, uPesFuncoes, uDMConexao, uDMPessoal, ufLogs, ufSelLotacao;

{$R *.dfm}

procedure TfrmUpdateTbFuncao.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  qryFuncao.Connection := DMConexao.conPessoal;
  qryLotacao.Connection := DMConexao.conPessoal;
  qryHistoricoFuncao.Connection := DMConexao.conPessoal;

  edtIdFuncao.Properties.MaxLength := 8;
  edtDescricao.Properties.MaxLength := 200;
  edtSimbolo.Properties.MaxLength := 7;

  lblIdFuncao.Caption := '0';
  
  setarOperacao(0);
  configurarOperacao;

{  qryServidores.Connection := DMConexao.conPessoal;
  qryFuncao.Connection := DMConexao.conPessoal;
  qryHistoricoLotacao.Connection := DMConexao.conPessoal;
  qrySuperLotacao.Connection := DMConexao.conPessoal;
}
end;

procedure TfrmUpdateTbFuncao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateTbFuncao.Timer1Timer(Sender: TObject);
begin
  if edtFuncao.Focused then
  lblTotal.Caption := InttoStr(pesquisarFuncao);

  Timer1.Enabled := false;

  //btnDetalharClick(Nil);
end;

function TfrmUpdateTbFuncao.pesquisarFuncao: integer;
begin
  with qryFuncao do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLFuncao(edtFuncao.Text));
    Active := True;
  end;

  Result := qryFuncao.RecordCount;
end;

function TfrmUpdateTbFuncao.SQLFuncao(valor: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + 'CASE WHEN fun.Nova_Estrutura = 1 THEN ''SIM'''
  + ' WHEN fun.Nova_Estrutura = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS NovaEstrutura'

  + ', fun.idFuncao, fun.ID'
  + ', fun.idLotacao, fun.Codigo_SIGRH, fun.idDFG'
  + ', fun.Descricao as Funcao'
  + ', fun.Nova_Estrutura'
  + ', fun.Dt_Criacao, fun.Data_DODF'
  + ', lot.Descricao as Lotacao'
  + ', pes.Nome, ser.idServidor as Matricula, car.descricao as Cargo'

  + ' FROM tbFuncao as fun'
  + ' LEFT JOIN tbLotacao lot on lot.idLotacao = fun.idLotacao'
  + ' LEFT JOIN tbServidor ser on ser.idFuncao = fun.idFuncao'
  + ' LEFT JOIN tbPessoal pes on pes.idPessoal = ser.idPessoal'
  + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' WHERE 1=1';

  case rgpEstrutura.ItemIndex of
  0: pesquisa := pesquisa + ' and fun.Nova_Estrutura = 1';
  1: pesquisa := pesquisa + ' and fun.Nova_Estrutura = 0';
  end;


  pesquisa := pesquisa

  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'fun.Descricao','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'fun.idFuncao','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'fun.Codigo_SIGRH','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'pes.Nome','AND')
  + ')'
  + ' ORDER BY fun.Descricao';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;
end;

procedure TfrmUpdateTbFuncao.edtFuncaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;
end;

procedure TfrmUpdateTbFuncao.rgpEstruturaClick(Sender: TObject);
begin
  lblTotal.Caption := InttoStr(pesquisarFuncao);
end;

function TfrmUpdateTbFuncao.retornarLotacao: boolean;
begin
  try
    qryLotacao.Active := false;
    qryLotacao.SQL.Text :=

    'SELECT idLotacao, Sigla, SuperLotacao, Descricao '
    + ' FROM tbLotacao '
    + ' WHERE Nova_Estrutura = 1 ORDER BY Descricao';

    qryLotacao.Active := true;

   except
     Result := false;
  end;

  if qryLotacao.RecordCount > 0 then Result := true
  else Result := false;
end;

procedure TfrmUpdateTbFuncao.FormActivate(Sender: TObject);
begin
  if not retornarLotacao
  then ShowMessage('A pesquisa falhou para o campo de Lotacao');

  pgcFuncao.ActivePageIndex := 0;
  edtFuncao.SetFocus;
  
  tshRelacao.Enabled := true;
  tshCreateUpdate.Enabled  := false;

  btnNovaFuncao.Enabled := true;
  btnEditarFuncao.Enabled := true;

end;

procedure TfrmUpdateTbFuncao.lkpLotacaoExit(Sender: TObject);
begin
//  ShowMessage(lkpLotacao.EditValue);
end;

procedure TfrmUpdateTbFuncao.btnGravarClick(Sender: TObject);
var wMens: String; realizado: boolean;
begin
  if not validarCampos then
  Abort;

  wMens := 'Atenção! Posso gravar?';

  if ConfirmaAcao(wMens,3) = 1 then
  begin
    case Operacao of
    1: // Inclusão
    begin
      if insertFuncao then
      begin
        realizado := true;
        ShowMessage('Registro incluído com sucesso');
      end
      else realizado := false;
    end;
    2: // Edição
    begin
      if updateFuncao then
      begin
        realizado := true;
        ShowMessage('Registro alterado com sucesso')
      end
      else realizado := false;
    end;
    end;

    // exibir lotações

    if realizado then
    begin
      limparCampos;
      edtIdFuncao.SetFocus;
      if OPERACAO = 2 then
      begin
        edtFuncao.Text := edtIdFuncao.Text;
        lblTotal.Caption := InttoStr(pesquisarFuncao);

        pgcFuncao.ActivePageIndex := 0;
      end;
    end;
  end;

  //tshRelacao.Enabled := true;
  //tshCreateUpdate.Enabled := false;

  //btnNovaFuncao.Enabled := true;
  //btnEditarFuncao.Enabled := true;

  //pgcFuncao.ActivePageIndex := 0;
end;

function TfrmUpdateTbFuncao.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateTbFuncao.configurarOperacao;
begin
  case OPERACAO of
    0:      // Pesquisa de funções
    begin
      lblOperacao.Caption := 'PESQUISA';
    end;
    1:      // Incluir função
    begin
      lblOperacao.Caption := 'INCLUSÃO DE FUNÇÃO';
    end;
    2:      // Alterar função
    begin
      lblOperacao.Caption :=  'ALTERAÇÃO DE FUNÇÃO';
    end;
  end;
end;

procedure TfrmUpdateTbFuncao.btnNovaFuncaoClick(Sender: TObject);
begin
  setarOperacao(1);
  configurarOperacao;

//  tshRelacao.Enabled := false;
  tshCreateUpdate.Enabled  := true;

  btnNovaFuncao.Enabled := false;
  btnEditarFuncao.Enabled := false;
  pgcFuncao.ActivePageIndex := 1;
  edtIdFuncao.SetFocus;
end;

procedure TfrmUpdateTbFuncao.btnEditarFuncaoClick(Sender: TObject);
begin
  if (qryFuncao.Active = false)
  or (qryFuncao.RecordCount = 0)
  then
  ShowMessage('Selecione uma função para ser editada.')
  else
  begin
    setarOperacao(2);
    configurarOperacao;

  //  tshRelacao.Enabled := false;
    tshCreateUpdate.Enabled  := true;

    btnNovaFuncao.Enabled := false;
    btnEditarFuncao.Enabled := false;
    pgcFuncao.ActivePageIndex := 1;

    carregarDadosFuncao;

    edtIdFuncao.SetFocus;
  end;
end;

function TfrmUpdateTbFuncao.pesquisarHistoricoFuncao: integer;
begin
  with qryHistoricoFuncao do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLHistoricoFuncao(qryFuncao.FieldValues['idFuncao']));
    Active := True;
  end;

  Result := qryHistoricoFuncao.RecordCount;
end;

function TfrmUpdateTbFuncao.SQLHistoricoFuncao(
  idFuncao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + ' his.idFuncao, fun.descricao, '
  + ' ser.idServidor as Matricula, pes.Nome, car.Descricao as Cargo'

  + ' FROM tbHist_Funcao his'

  + ' INNER JOIN tbFuncao fun on fun.idFuncao = his.idFuncao'
  + ' INNER JOIN tbServidor ser on ser.idServidor = his.idServidor'
  + ' INNER JOIN tbPessoal pes on pes.idPessoal = his.idPessoal'
  + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' WHERE his.idFuncao = ' + QuotedStr(idFuncao);

  pesquisa := pesquisa

  + ' ORDER BY pes.Nome';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;
end;

function TfrmUpdateTbFuncao.SQLInsertFuncao: String;
begin
  Result :=
  'SET DATEFORMAT dmy'
  + ' INSERT INTO'
  + ' tbFuncao'
  + '(idFuncao, Descricao, idLotacao, idDFG, Codigo_SIGRH, Nova_Estrutura, Data_DODF, dt_Criacao)'
  + ' VALUES ('
  + QuotedStr(InserirZeros(edtIdFuncao.Text, 8))
  + ', ' + QuotedStr(edtDescricao.Text)
  + ', ' + QuotedStr(lkpLotacao.EditValue)
  + ', ' + QuotedStr(edtSimbolo.Text)
  + ', ' + QuotedStr(InserirZeros(edtIdFuncao.Text, 8))
  + ', ' + QuotedStr('1')
  + ', ' + QuotedStr(edtDataDODF.Text)
  + ', ' + QuotedStr(RetornaData(1))
  + ')';
end;

function TfrmUpdateTbFuncao.extinguirFuncao(ID: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    try
      Active := false;
      SQL.Clear;

      SQL.Text := 'UPDATE tbFuncao'
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

function TfrmUpdateTbFuncao.insertFuncao: boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text :=  SQLInsertFuncao;

      mmoSQL.Lines.Add(SQL.Text);

      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateTbFuncao.updateFuncao: boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text :=  SQLUpdateFuncao(qryFuncao.FieldValues['ID']);

      mmoSQL.Lines.Add(SQL.Text);

      frmLogs.mmoLog.Lines.Add(SQL.Text);

      //ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateTbFuncao.SQLUpdateFuncao(ID: String): String;
var SQL_Funcao: String;
begin

  SQL_Funcao := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbFuncao'
  + ' SET idFuncao = ' + QuotedStr(edtIdFuncao.Text)
  + ', Descricao = ' + QuotedStr(edtDescricao.Text)
  + ', idDFG = ' + QuotedStr(edtDescricao.Text);

  if lkpLotacao.EditingValue <> Null
  then SQL_Funcao := SQL_Funcao
    + ', idLotacao = ' + QuotedStr(lkpLotacao.EditingValue)
  else SQL_Funcao := SQL_Funcao
    + ', idLotacao = NULL';

  if edtDataDODF.Text <> Null
  then SQL_Funcao := SQL_Funcao
    + ', Dt_Criacao = ' + QuotedStr(edtDataDODF.Text)
  else SQL_Funcao := SQL_Funcao
    + ', Dt_Criacao = NULL';


  SQL_Funcao := SQL_Funcao
    + ', Dt_Criacao = ' + QuotedStr(RetornaData(1))

    + ' WHERE ID = ' + QuotedStr(ID);


  monitorarAcoesDaSessao
  ('ufUpdateTbFuncao', 'Retorna SQL de alteração da função (SQLUpdateServidor)', SQL_Funcao);

  Result := SQL_Funcao;
end;

function TfrmUpdateTbFuncao.validarCampos: boolean;
var
  validado: array[1..4] of boolean;
begin
  if Trim(edtIdFuncao.Text) = '' then
  begin
    ShowMessage('O código da função está inválido');
    validado[1] := false;
  end
  else validado[1] := True;


  if OPERACAO = 1 // Inclusão
  then
  begin
    if existeIDFuncao(edtIdFuncao.Text) then
    begin
      ShowMessage('O código da função já existe');
      edtIdFuncao.Clear;
      validado[1] := false;
    end
    else validado[1] := True;
  end;

  if Trim(edtSimbolo.Text) = '' then
  begin
    ShowMessage('Informe o símbolo');
    validado[2] := false;
  end
  else validado[2] := True;

  if Trim(edtDescricao.Text) = '' then
  begin
    ShowMessage('Informe o nome da função');
    validado[3] := false;
  end
  else validado[3] := True;

  if lkpLotacao.EditingValue = Null then
  begin
    ShowMessage('Informe a lotação dessa função');
    validado[4] := false;
  end
  else validado[4] := True;

  if validado[1] and validado[2] and validado[3] and validado[4]
  then
    Result := true
  else
    Result := false;

end;

procedure TfrmUpdateTbFuncao.edtIdFuncaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TfrmUpdateTbFuncao.edtIdFuncaoExit(Sender: TObject);
begin
  if Trim(edtIdFuncao.Text) <> '' then
  edtIdFuncao.Text := InserirZeros(edtIdFuncao.Text, 8);

  {if existeIDFuncao(edtIdFuncao.Text) then
    ShowMessage('O código da função já existe');}
end;

procedure TfrmUpdateTbFuncao.edtSimboloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9','C','c','P','p','E','e','N','n',#8]) then key := #0;
  Key := CaracterSemAcento(Key, True);

end;

procedure TfrmUpdateTbFuncao.edtDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateTbFuncao.cxTextEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateTbFuncao.btnSelLotacaoClick(Sender: TObject);
var wIdLotacao: String;
begin
  if not Assigned(frmSelLotacao) then
  frmSelLotacao := TfrmSelLotacao.Create(Application);
  try
    frmSelLotacao.ShowModal;
    if frmSelLotacao.qryLotacao.Active then
    begin
      wIdLotacao := frmSelLotacao.retornaIdLotacao;
      if wIdLotacao <> '' then
      begin
        lkpLotacao.EditValue  := wIdLotacao;
        //edtIdAcao.SetFocus;
      end;
    end;
  finally
    frmSelLotacao.Release;
    frmSelLotacao := nil;
  end;
end;

function TfrmUpdateTbFuncao.existeIDFuncao(idFuncao: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'SELECT idFuncao from tbFuncao'
    + ' WHERE idFuncao = ' + QuotedStr(Trim(idFuncao));
    mmoSQL.Lines.Add(SQL.Text);
    Active := True;

    if dmPessoal.qryExecSQL.RecordCount = 0 then Result := false
    else Result := true;
  end;

end;

procedure TfrmUpdateTbFuncao.limparCampos;
var i: Integer;
begin
  lblIdFuncao.Caption := '0';

  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
      TcxTextEdit(Components[i]).Clear;

    if (Components[i] is TcxLookupComboBox) then
      TcxLookupComboBox(Components[i]).Clear;

    if (Components[i] is TcxDateEdit) then
      TcxDateEdit(Components[i]).Clear;
  end;
end;

procedure TfrmUpdateTbFuncao.tshRelacaoShow(Sender: TObject);
begin
  case OPERACAO of
  1:
    begin
      //ShowMessage('Modo de inclusão');
    end;
  2:
    begin
      //ShowMessage('Modo de alteração');
    end;
  end;

  btnNovaFuncao.Enabled := true;
  btnEditarFuncao.Enabled := true;
end;

function TfrmUpdateTbFuncao.carregarDadosFuncao: boolean;
begin
  with qryFuncao do
  begin

    if FieldByName('ID').IsNull then
    begin
      ShowMessage('Erro crítico');
      Application.Terminate;
    end;

    lblIdFuncao.Caption         := FieldValues['ID'];


    if FieldByName('idFuncao').IsNull
    then edtIdFuncao.Text := ''
    else edtIdFuncao.Text := Trim(FieldValues['idFuncao']);

    // Manter o valor do campo Nome no registro EstadoEdicao
    //EstadoEdicao.cpf[0]  := edtCPF.Text;

    if FieldByName('idDFG').IsNull
    then edtSimbolo.Text := ''
    else edtSimbolo.Text := Trim(FieldValues['idDFG']);

    if FieldByName('Lotacao').IsNull
    then lkpLotacao.Text := ''
    else lkpLotacao.Text := Trim(FieldValues['Lotacao']);

    if FieldByName('Funcao').IsNull
    then edtDescricao.Text := ''
    else edtDescricao.Text := Trim(FieldValues['Funcao']);

    if FieldByName('Data_DODF').IsNull
    then edtDataDODF.Text := ''
    else edtDataDODF.Text := Trim(FieldValues['Data_DODF']);

  end;
end;

procedure TfrmUpdateTbFuncao.grdFuncaoDBTableView1DblClick(
  Sender: TObject);
begin
  btnEditarFuncaoClick(Nil);
end;

procedure TfrmUpdateTbFuncao.grdFuncaoDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  btnEditarFuncaoClick(Nil);
end;

procedure TfrmUpdateTbFuncao.btnExtinguirLotacaoClick(Sender: TObject);
var mensagem: String;
begin
  mensagem := 'Confirma a extinção dessa função:' + chr(13) + chr(13) +
  qryFuncao.FieldValues['idFuncao'] + ' - ' +
  qryFuncao.FieldValues['Funcao'];

  if ConfirmaAcao(mensagem, 3) = 1
  then
  begin
    if extinguirFuncao(qryFuncao.FieldValues['ID']) then
    begin
      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbFuncao',
      qryFuncao.FieldValues['ID'],
      'NULL',
      'NULL',
      'TODOS',
      'Extinção da Função: '
      + 'ID: ' + IntToStr(qryFuncao.FieldValues['ID'])
      + ', Função: ' + qryFuncao.FieldValues['Descricao']
      );

      ShowMessage('A função foi extinta');
    end;
  end;

end;

end.
