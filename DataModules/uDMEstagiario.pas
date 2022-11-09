unit uDMEstagiario;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmEstagiario = class(TDataModule)
    qryPesquisa: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisarEstagiarios(condicao: String): integer;
    function SQLPesquisaEstagiarios
    (condicao: String): String;

    function SQLUpdateEstagio
      (idPessoal, idServidor,
      Dt_InicioContrato1_Estagiario,
      Dt_TerminoContrato1_Estagiario,
      Dt_InicioContrato2_Estagiario,
      Dt_TerminoContrato2_Estagiario,
      Dt_InicioContrato3_Estagiario,
      Dt_TerminoContrato3_Estagiario,
      Dt_InicioContrato4_Estagiario,
      Dt_TerminoContrato4_Estagiario,
      Supervisor_Estagiario,
      TurnoEstagio,
      Semestre,
      InstituicaoEnsino,
      observacao: String): String;
  end;

var
  dmEstagiario: TdmEstagiario;

implementation

uses uDMConexao, ufLogs, PRG_utils, uPesFuncoes;

{$R *.dfm}

procedure TdmEstagiario.DataModuleCreate(Sender: TObject);
begin
  qryPesquisa.Connection := DMConexao.conPessoal;
end;

function TdmEstagiario.pesquisarEstagiarios(condicao: String): integer;
begin
  with qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLPesquisaEstagiarios(condicao));
    Active := True;
  end;
  Result := qryPesquisa.RecordCount;
end;

function TdmEstagiario.SQLPesquisaEstagiarios(
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

  + ' AND left(serv.idCargo,3) = ' + QuotedStr('EST')

  + ' ' + condicao

  + ' ORDER BY pes.nome;';

  //frmLogs.mmoLog.Lines.Add(pesquisa);

  monitorarAcoesDaSessao
  ('uDMEstagiario', 'Retorna SQL da pesquisa do estagiário (retornaSQLPesquisaEstagiarios)', pesquisa);

  Result := pesquisa;

end;


function TdmEstagiario.SQLUpdateEstagio
(idPessoal, idServidor,
    Dt_InicioContrato1_Estagiario,
    Dt_TerminoContrato1_Estagiario,
    Dt_InicioContrato2_Estagiario,
    Dt_TerminoContrato2_Estagiario,
    Dt_InicioContrato3_Estagiario,
    Dt_TerminoContrato3_Estagiario,
    Dt_InicioContrato4_Estagiario,
    Dt_TerminoContrato4_Estagiario,
    Supervisor_Estagiario,
    TurnoEstagio,
    Semestre,
    InstituicaoEnsino,
    observacao: String): String;
var SQL_Estagio: String;
begin

  with dmEstagiario do
  begin
  SQL_Estagio := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET ';

    if Supervisor_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ' Supervisor_Estagiario = ' + QuotedStr(Trim(Supervisor_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ' Supervisor_Estagiario = NULL';

    if Dt_InicioContrato1_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato1_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato1_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato1_Estagiario = NULL';

    if Dt_InicioContrato2_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato2_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato2_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato2_Estagiario = NULL';

    if Dt_InicioContrato3_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato3_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato3_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato3_Estagiario = NULL';

    if Dt_InicioContrato4_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato4_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato4_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_InicioContrato4_Estagiario = NULL';

    if Dt_TerminoContrato1_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato1_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato1_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato1_Estagiario = NULL';

    if Dt_TerminoContrato2_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato2_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato2_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato2_Estagiario = NULL';

    if Dt_TerminoContrato3_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato3_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato3_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato3_Estagiario = NULL';

    if Dt_TerminoContrato4_Estagiario <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato4_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato4_Estagiario))
    else SQL_Estagio := SQL_Estagio
      + ', Dt_TerminoContrato4_Estagiario = NULL';


    if InstituicaoEnsino <> ''
    then SQL_Estagio := SQL_Estagio
      + ', InstituicaoEnsino = ' + QuotedStr(Trim(InstituicaoEnsino))
    else SQL_Estagio := SQL_Estagio
      + ', InstituicaoEnsino = NULL';

    if TurnoEstagio <> ''
    then SQL_Estagio := SQL_Estagio
      + ', TurnoEstagio = ' + QuotedStr(Trim(TurnoEstagio))
    else SQL_Estagio := SQL_Estagio
      + ', TurnoEstagio = NULL';

    if Semestre <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Semestre = ' + QuotedStr(Trim(Semestre))
    else SQL_Estagio := SQL_Estagio
      + ', Semestre = NULL';


    if Observacao <> ''
    then SQL_Estagio := SQL_Estagio
      + ', Observacao = ' + QuotedStr(Trim(Observacao))
    else SQL_Estagio := SQL_Estagio
      + ', Observacao = NULL';


    SQL_Estagio := SQL_Estagio
      + ', idUsuario = ' + QuotedStr(DMConexao.Usuario.CPF)
      + ', dt_Digitacao = ' + QuotedStr(RetornaData(2))

      + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
      + ' AND idServidor = ' + QuotedStr(idServidor);
      //+ ' AND ID = ' + QuotedStr(idServidor);
  end;

  monitorarAcoesDaSessao('dmEstagiario', 'SQL de alteração do estágio (SQLUpdateEstagio)', SQL_Estagio);

  Result := SQL_Estagio;
end;

end.
