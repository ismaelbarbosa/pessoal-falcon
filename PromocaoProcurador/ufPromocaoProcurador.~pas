unit ufPromocaoProcurador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ADODB,
  cxGroupBox, cxMemo, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxPC, DBCtrls;

type
  TPromocao = record
    idPessoal, idServidor,
    Dt_PromocaoCategoria2, Dt_PromocaoSubProcurador,
    AverbacaoGDF, AverbacaoServPublico: Array[0..1] of String;
end;

type
  TfrmPromocaoProcurador = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnGravarServidor: TcxButton;
    Button2: TButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    pgcProcurador: TcxPageControl;
    tshRelacaoProcuradores: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    lblQtdServidores: TLabel;
    edtPesquisa: TcxTextEdit;
    grdServidores: TcxGrid;
    tbvServidores: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    tvcCategoriaII: TcxGridDBColumn;
    tvcSubprocurador: TcxGridDBColumn;
    grdServidoresLevel1: TcxGridLevel;
    tshDadosDoProcurador: TcxTabSheet;
    pnlDadosProcurador: TPanel;
    Label14: TLabel;
    Label18: TLabel;
    edtDt_PromocaoCategoria2: TcxDateEdit;
    edtDt_PromocaoSubProcurador: TcxDateEdit;
    dsPesquisa: TDataSource;
    qryAfastamentoServidor: TADOQuery;
    dsAfastamentoServidor: TDataSource;
    Timer1: TTimer;
    qryPesquisa: TADOQuery;
    Memo1: TMemo;
    edtAverbacaoGDF: TcxTextEdit;
    edtAverbacaoServPublico: TcxTextEdit;
    lblAverbacaoGDF: TLabel;
    lblAverbacaoServPublico: TLabel;
    tbvAverbacaoGDF: TcxGridDBColumn;
    tbvAverbacaoServPublico: TcxGridDBColumn;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure tshDadosDoProcuradorShow(Sender: TObject);
    procedure btnGravarServidorClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure edtAverbacaoGDFKeyPress(Sender: TObject; var Key: Char);
    procedure edtAverbacaoServPublicoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function pesquisarProcurador(condicao: String): integer;
    function SQLPesquisaProcurador
    (condicao: String): String;

    function carregarDados:boolean;
    procedure focarNaEdicao;
    procedure focarNaPesquisa;

    procedure habilitaPnlDadosProcurador;
    procedure desabilitaPnlDadosProcurador;

    function setarRegistroAGravar: boolean;

    function SQLUpdatePromocao
      (idPessoal, idServidor, Dt_PromocaoCategoria2, Dt_PromocaoSubProcurador,
      AverbacaoGDF, AverbacaoServPublico: String): String;

  end;

var
  frmPromocaoProcurador: TfrmPromocaoProcurador;

implementation

uses PRG_utils, uPesFuncoes, uDMConexao, uDmCadastroServidor;

{$R *.dfm}

var EstadoEdicao, RegistroAGravar: TPromocao;

procedure TfrmPromocaoProcurador.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPromocaoProcurador.FormCreate(Sender: TObject);
begin
  qryPesquisa.Connection := DMConexao.conPessoal;
  qryAfastamentoServidor.Connection := DMConexao.conPessoal;

  KeyPreview := true;
  WindowState := wsMaximized;
  dsPesquisa.DataSet := qryPesquisa;
  tbvServidores.DataController.DataSource := dsPesquisa;

  pgcProcurador.ActivePage := tshRelacaoProcuradores;

  Timer1.Enabled := false;
end;

function TfrmPromocaoProcurador.pesquisarProcurador(
  condicao: String): integer;
begin
  with qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLPesquisaProcurador(condicao));
    Active := True;
  end;
  Result := qryPesquisa.RecordCount;
end;

function TfrmPromocaoProcurador.SQLPesquisaProcurador(
  condicao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + ' CASE'
  + ' WHEN serv.idCargo != ''999999'' AND Dt_Deslig_Cargo IS NULL THEN ''ATIVO'''
  + ' WHEN serv.idCargo = ''999999'' AND Dt_Deslig_Cargo IS NOT NULL THEN ''DESLIGADO DA FUNÇÃO'''
  + ' WHEN serv.Requisitado = 1 THEN ''REQUISITADO'''
  + ' WHEN serv.Dt_Deslig_Cargo is NOT NULL THEN ''DESLIGADO DO CARGO'''
  + ' ELSE ''-'''
  + ' END AS Status'


//  + ' serv.idUsuario, pes1.Nome AS Operador, '
  + ', Operador=dbo.F_RetornaOperador(serv.idUsuario)'
  + ', OEE.Descricao as ExercicioExterno, OEE.Sigla as siglaOrgaoExterno'
  + ', PES.IDPESSOAL, PES.CPF, PES.NOME,'

  + ' pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'

  //+ ' serv.*,' -- tabela Servidor

  + ' serv.idServidor,'
  + ' serv.ID,'
  + ' serv.Matr_Origem,'
  + ' serv.idCargo,'
  + ' serv.Especialidade,'
  + ' serv.idFuncao,'
  + ' fun.idDFG as SimboloDFG,'
  + ' fun.id as idFun,'
  + ' serv.idLotacao,'
  + ' serv.CF_Num,'
  + ' serv.Ramal,'
  + ' serv.Sala,'
  + ' serv.Classe,'
  + ' serv.Padrao,'
  + ' serv.Dt_NomeacaoCargo,'
  + ' serv.Dt_NomeacaoCargoDODF,'
  + ' serv.Dt_PosseCargo,'
  + ' serv.Dt_ExercicioCargo,'
  + ' serv.Dt_PrimeiroExercicioGDF,'
  + ' serv.Dt_Deslig_Cargo,'
  + ' serv.Dt_Deslig_CargoDODF,'
  + ' serv.Dt_NomeacaoFuncao,'
  + ' serv.Dt_NomeacaoFuncaoDODF,'
  + ' serv.Dt_PosseFuncao,'
  + ' serv.Dt_ExercicioFuncao,'
  + ' serv.Dt_Deslig_Funcao,'
  + ' serv.Dt_Deslig_FuncaoDODF,'
  + ' serv.Dt_Falecimento,'
  + ' serv.Dt_Digitacao,'
  + ' serv.Requisitado,'
  + ' serv.OrgaoDeOrigem,'
  + ' serv.Dt_FimRequisicao,'
  + ' serv.AuxTransporte,'
  + ' serv.idDesligamento,'
  + ' serv.idUsuario,'
  + ' serv.CargaHoraria,'
  + ' serv.Dt_PromocaoCategoria2,'
  + ' serv.Dt_PromocaoSubProcurador,'
  + ' serv.AverbacaoGDF,'
  + ' serv.AverbacaoServPublico,'
  + ' serv.Dt_InicioContrato1_Estagiario,'
  + ' serv.Dt_TerminoContrato1_Estagiario,'
  + ' serv.Dt_InicioContrato2_Estagiario,'
  + ' serv.Dt_TerminoContrato2_Estagiario,'
  + ' serv.Dt_InicioContrato3_Estagiario,'
  + ' serv.Dt_TerminoContrato3_Estagiario,'
  + ' serv.Dt_InicioContrato4_Estagiario,'
  + ' serv.Dt_TerminoContrato4_Estagiario,'
  + ' serv.Supervisor_Estagiario,'
  + ' serv.DtNovaEstrutura,'
  + ' serv.CaminhoFollhaDePonto,'
  + ' serv.TurnoEstagio,'
  + ' serv.Semestre,'
  + ' serv.InstituicaoEnsino,'

  + ' serv.dt_InicioExercicioExterno,'
  + ' serv.dt_TerminoExercicioExterno,'
  + ' serv.dt_NomeacaoExercicioExterno,'
  + ' serv.dt_PosseExercicioExterno,'



  + ' serv.observacao,'
 // + ' serv.idNucleo,' -- ídem acima
 // + ' serv.dtNucleoDistribuicao,' -- ídem acima

  //+ ' dados.*,' -- tabela Dados

  + ' dados.Endereco,'
  + ' dados.Bairro,'
  + ' dados.Cidade,'
  + ' dados.UF,'
  + ' dados.CEP,'
  + ' dados.CI_Num,'
  + ' dados.CI_UF,'
  + ' dados.CI_Emissao,'
  + ' dados.Nacionalidade,'
  + ' dados.Naturalidade,'
  + ' dados.Natural_UF,'
  + ' dados.Pis_Pasep,'
  + ' dados.TE_Num,'
  + ' dados.TE_Zona,'
  + ' dados.TE_Secao,'
  + ' dados.TE_UF,'
  + ' dados.TE_Emissao,'
  + ' dados.Pai,'
  + ' dados.Mae,'
  + ' dados.idEstadoCivil, '

  + ' CASE'
  + '  WHEN civil.Descricao != ' + QuotedStr('') + ' THEN civil.Descricao'
  + '  ELSE ' + QuotedStr('NÃO INFORMADO')
  + ' END AS EstadoCivil ,'

  + ' dados.Conjuge,'
  + ' dados.idBanco,'
  + ' dados.Agencia,'
  + ' dados.Conta,'
  + ' dados.OAB_Num,'
  + ' dados.OAB_Secao,'
  + ' dados.Aspro_Opc,'
  + ' dados.Grau,'
  + ' dados.Curso,'
  + ' dados.TipoSanguineo,'
  + ' dados.Email,'

  + ' lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descricaoLotacao,'
  + ' car.descricao as descricaoCargo,'
  + ' fun.descricao as descricaoFuncao,'
  + ' desl.descricao as desligamento'

  + ' FROM tbPessoal as pes'
  + ' LEFT JOIN tbServidor as serv ON serv.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbDados as dados ON dados.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbLotacao as lot ON lot.idLotacao = serv.idLotacao'
  + ' LEFT JOIN tbCargo as car ON car.idCargo = serv.idCargo'
  + ' LEFT JOIN tbFuncao as fun ON fun.idFuncao = serv.idFuncao'
  + ' LEFT JOIN tbEstadoCivil as civil ON civil.idEstadoCivil = dados.idEstadoCivil'
  + ' LEFT JOIN tbDesligamento as desl ON desl.idDesligamento = serv.idDesligamento'
  + ' LEFT JOIN tbOrgaoExercicioExterno oee'
  + ' ON oee.idOrgaoExercicioExterno = serv.idOrgaoExercicioExterno'
//  + ' LEFT JOIN tbPessoal as pes1 on pes1.CPF = serv.idUsuario'

  + ' WHERE 1=1'

//  + ' AND LTRIM(Nome) NOT LIKE ' + QuotedStr('')
//  + ' AND serv.idDesligamento is NULL'
//  +  FstrNome + strMatricula + strLotacao + strCargo + strFuncao

//  + ' AND left(serv.idCargo,3) = ' + QuotedStr('EST')


    + ' AND (serv.idDesligamento is NULL or serv.idDesligamento = ' + QuotedStr('') + ')'

    + ' AND (LEFT(serv.idCargo,2) in ('
    + QuotedStr('PA') + ', '
    + QuotedStr('PB') + ', '
    + QuotedStr('PF') + ', '
    + QuotedStr('SP') + ', '
    + QuotedStr('JS') + ', '
    + QuotedStr('JA') + ', '
    + QuotedStr('JB') + ', '
    + QuotedStr('SJ')

    + '))'


  + ' ' + condicao

  + ' ORDER BY pes.nome;';

  //frmLogs.mmoLog.Lines.Add(pesquisa);

  monitorarAcoesDaSessao
  ('ufrmPromocaoProcurador', 'Retorna SQL da pesquisa do Procurador (SQLPesquisaProcurador)', pesquisa);

  Result := pesquisa;
end;

procedure TfrmPromocaoProcurador.Timer1Timer(Sender: TObject);
var condicao: String;
resultado: Integer;
begin
  if length(Trim(edtPesquisa.Text)) > 3 then
  begin
    condicao := ' AND '
    + '('
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
    + ' OR '
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
    + ')';

    resultado := pesquisarProcurador(condicao);

    case resultado of
      0:
      begin
        desabilitaPnlDadosProcurador;
        //focarNaEdicao;
      end;
      1:
      begin
        habilitaPnlDadosProcurador;
        focarNaEdicao;
      end;
    end;

    if resultado > 1 then habilitaPnlDadosProcurador;

    lblQtdServidores.Caption := IntToStr(resultado);

    Timer1.Enabled := false;
  end;
end;

procedure TfrmPromocaoProcurador.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Timer1.Enabled := true;
end;

procedure TfrmPromocaoProcurador.FormActivate(Sender: TObject);
begin
  edtPesquisa.SetFocus;
end;

function TfrmPromocaoProcurador.carregarDados: boolean;
begin
  with qryPesquisa do
  begin
    if FieldByName('Dt_PromocaoCategoria2').IsNull
    then edtDt_PromocaoCategoria2.Text := ''
    else edtDt_PromocaoCategoria2.Text := Trim(FieldValues['Dt_PromocaoCategoria2']);

    if FieldByName('Dt_PromocaoSubProcurador').IsNull
    then edtDt_PromocaoSubProcurador.Text := ''
    else edtDt_PromocaoSubProcurador.Text := Trim(FieldValues['Dt_PromocaoSubProcurador']);

    if FieldByName('AverbacaoGDF').IsNull
    then edtAverbacaoGDF.Text := ''
    else edtAverbacaoGDF.Text := Trim(FieldValues['AverbacaoGDF']);

    if FieldByName('AverbacaoServPublico').IsNull
    then edtAverbacaoServPublico.Text := ''
    else edtAverbacaoServPublico.Text := Trim(FieldValues['AverbacaoServPublico']);
  end;
end;

procedure TfrmPromocaoProcurador.focarNaEdicao;
begin
  pgcProcurador.ActivePage := tshDadosDoProcurador;
  //edtDt_InicioContrato1_Estagiario.SetFocus;
  pnlDadosProcurador.SetFocus;
end;

procedure TfrmPromocaoProcurador.desabilitaPnlDadosProcurador;
begin
  pnlDadosProcurador.Enabled := false;
end;

procedure TfrmPromocaoProcurador.habilitaPnlDadosProcurador;
begin
  pnlDadosProcurador.Enabled := true;
end;

procedure TfrmPromocaoProcurador.tshDadosDoProcuradorShow(Sender: TObject);
begin
  with qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
      carregarDados
    else
    begin
      ShowMessage('Não foi selecionado um procurador');
      pgcProcurador.ActivePage := tshRelacaoProcuradores;
    end;
  end;
end;

procedure TfrmPromocaoProcurador.btnGravarServidorClick(Sender: TObject);
var Registro_Setado: boolean;
    resultado : integer;
begin
  if setarRegistroAGravar then
  Registro_Setado := true;

  with RegistroAGravar do
  begin
    // lembrar que o ExecSQL do dmCadastroServidor está desabilitado
    if dmCadastroServidor.executarSQL
    (
      SQLUpdatePromocao
      (
      idPessoal[0], idServidor[0],
      Dt_PromocaoCategoria2[0],
      Dt_PromocaoSubProcurador[0],
      AverbacaoGDF[0],
      AverbacaoServPublico[0]
      )
    )
    then
    begin
      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbServidor',
      'NULL',

      //NIDP,
      //NIDS,

      idPessoal[0],
      idServidor[0],

      'TODOS',
      'Alteração das datas de promoção do procurador: '
      + 'Matrícula: ' + idServidor[0]
      + ', Nome: ' + txtNome.Caption
      + ', Nomeação Categoria II: ' + edtDt_PromocaoCategoria2.Text
      + ', Nomeação Subprocurador: ' + edtDt_PromocaoSubProcurador.Text
      );

      ShowMessage('O registro foi alterado com sucesso');
      qryPesquisa.Active := false;
      focarNaPesquisa;
    end
    else
      ShowMessage('O registro NÃO pôde ser alterado');
  end;

end;

function TfrmPromocaoProcurador.setarRegistroAGravar: boolean;
var registro: String;
begin
  // Setar variáveis para tabela tbDados

  with RegistroAGravar do
  begin
    idPessoal[0]  := qryPesquisa.FieldValues['idPessoal'];
    idServidor[0] := qryPesquisa.FieldValues['idServidor'];

    //1
    if edtDt_PromocaoCategoria2.Text <> Null
    then Dt_PromocaoCategoria2[0] := Trim(edtDt_PromocaoCategoria2.Text)
    else Dt_PromocaoCategoria2[0] := '';

    //2
    if edtDt_PromocaoSubProcurador.Text <> Null
    then Dt_PromocaoSubProcurador[0] := Trim(edtDt_PromocaoSubProcurador.Text)
    else Dt_PromocaoSubProcurador[0] := '';

    //3
    if edtAverbacaoGDF.Text <> Null
    then AverbacaoGDF[0] := Trim(edtAverbacaoGDF.Text)
    else AverbacaoGDF[0] := '';

    //4
    if edtAverbacaoServPublico.Text <> Null
    then AverbacaoServPublico[0] := Trim(edtAverbacaoServPublico.Text)
    else AverbacaoServPublico[0] := '';

  end;

  with RegistroAGravar do
  begin
    registro := txtNome.Caption + chr(13)
    + txtCargo.Caption + chr(13)
    + edtDt_PromocaoCategoria2.Text + chr(13)
    + edtDt_PromocaoSubProcurador.Text;
  end;

  monitorarAcoesDaSessao('ufPromocaoProcurador', 'setarRegistroAGravar', registro);

  Result := true;                                                     

end;

function TfrmPromocaoProcurador.SQLUpdatePromocao(idPessoal, idServidor,
  Dt_PromocaoCategoria2, Dt_PromocaoSubProcurador,
  AverbacaoGDF, AverbacaoServPublico: String): String;
var SQL_Promocao: String;
begin

  SQL_Promocao := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET ';

    if Dt_PromocaoCategoria2 <> ''
    then SQL_Promocao := SQL_Promocao
      + ' Dt_PromocaoCategoria2 = ' + QuotedStr(Trim(Dt_PromocaoCategoria2))
    else SQL_Promocao := SQL_Promocao
      + ' Dt_PromocaoCategoria2 = NULL';

    if Dt_PromocaoSubProcurador <> ''
    then SQL_Promocao := SQL_Promocao
      + ', Dt_PromocaoSubProcurador = ' + QuotedStr(Trim(Dt_PromocaoSubProcurador))
    else SQL_Promocao := SQL_Promocao
      + ', Dt_PromocaoSubProcurador = NULL';

    if AverbacaoGDF <> ''
    then SQL_Promocao := SQL_Promocao
      + ', AverbacaoGDF  = ' + QuotedStr(Trim(AverbacaoGDF))
    else SQL_Promocao := SQL_Promocao
      + ', AverbacaoGDF = NULL';

    if AverbacaoServPublico <> ''
    then SQL_Promocao := SQL_Promocao
      + ', AverbacaoServPublico = ' + QuotedStr(Trim(AverbacaoServPublico))
    else SQL_Promocao := SQL_Promocao
      + ', AverbacaoServPublico = NULL';

    SQL_Promocao := SQL_Promocao
      + ', idUsuario = ' + QuotedStr(DMConexao.Usuario.CPF)
      + ', dt_Digitacao = ' + QuotedStr(RetornaData(2))

      + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
      + ' AND idServidor = ' + QuotedStr(idServidor);
      //+ ' AND ID = ' + QuotedStr(idServidor);
      

  Memo1.Lines.Add(SQL_Promocao);

  //monitorarAcoesDaSessao('frmPromocaoProcurador', 'SQL de alteração das datas de promoção do procurador (SQLUpdatePromocao)', SQL_Promocao);

  Result := SQL_Promocao;
end;

procedure TfrmPromocaoProcurador.focarNaPesquisa;
begin
  pgcProcurador.ActivePage := tshRelacaoProcuradores;
  Panel1.SetFocus;
  edtPesquisa.SetFocus;
  edtPesquisa.Clear;
end;

procedure TfrmPromocaoProcurador.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmPromocaoProcurador.edtAverbacaoGDFKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  if not (key in ['0'..'9',#8, #9]) then key := #0;
end;

procedure TfrmPromocaoProcurador.edtAverbacaoServPublicoKeyPress(
  Sender: TObject; var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  if not (key in ['0'..'9',#8, #9]) then key := #0;
end;

end.
