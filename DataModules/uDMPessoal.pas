unit uDMPessoal;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs;

type
  TdmPessoal = class(TDataModule)
    qryExecSQL: TADOQuery;
    qryPesquisa: TADOQuery;
    qryPesquisaStatus: TStringField;
    qryPesquisaOperador: TStringField;
    qryPesquisaExercicioExterno: TStringField;
    qryPesquisasiglaOrgaoExterno: TStringField;
    qryPesquisaIDPESSOAL: TStringField;
    qryPesquisaCPF: TStringField;
    qryPesquisaNOME: TStringField;
    qryPesquisaidpessoal_1: TStringField;
    qryPesquisacpf_1: TStringField;
    qryPesquisanome_1: TStringField;
    qryPesquisadt_nascimento: TDateTimeField;
    qryPesquisaidServidor: TStringField;
    qryPesquisaID: TAutoIncField;
    qryPesquisaMatr_Origem: TStringField;
    qryPesquisaidCargo: TStringField;
    qryPesquisaEspecialidade: TStringField;
    qryPesquisaidFuncao: TStringField;
    qryPesquisaSimboloDFG: TStringField;
    qryPesquisaidFun: TAutoIncField;
    qryPesquisaidLotacao: TStringField;
    qryPesquisaCF_Num: TStringField;
    qryPesquisaRamal: TStringField;
    qryPesquisaSala: TStringField;
    qryPesquisaClasse: TStringField;
    qryPesquisaPadrao: TStringField;
    qryPesquisaDt_NomeacaoCargo: TDateTimeField;
    qryPesquisaDt_NomeacaoCargoDODF: TDateTimeField;
    qryPesquisaDt_PosseCargo: TDateTimeField;
    qryPesquisaDt_ExercicioCargo: TDateTimeField;
    qryPesquisaDt_PrimeiroExercicioGDF: TDateTimeField;
    qryPesquisaDt_Deslig_Cargo: TDateTimeField;
    qryPesquisaDt_Deslig_CargoDODF: TDateTimeField;
    qryPesquisaDt_NomeacaoFuncao: TDateTimeField;
    qryPesquisaDt_NomeacaoFuncaoDODF: TDateTimeField;
    qryPesquisaDt_PosseFuncao: TDateTimeField;
    qryPesquisaDt_ExercicioFuncao: TDateTimeField;
    qryPesquisaDt_Deslig_Funcao: TDateTimeField;
    qryPesquisaDt_Deslig_FuncaoDODF: TDateTimeField;
    qryPesquisaDt_Falecimento: TDateTimeField;
    qryPesquisaDt_Digitacao: TDateTimeField;
    qryPesquisaRequisitado: TBooleanField;
    qryPesquisaOrgaoDeOrigem: TStringField;
    qryPesquisaDt_FimRequisicao: TDateTimeField;
    qryPesquisaAuxTransporte: TBooleanField;
    qryPesquisaidDesligamento: TStringField;
    qryPesquisaidUsuario: TStringField;
    qryPesquisaCargaHoraria: TStringField;
    qryPesquisaDt_PromocaoCategoria2: TDateTimeField;
    qryPesquisaDt_PromocaoSubProcurador: TDateTimeField;
    qryPesquisaAverbacaoGDF: TIntegerField;
    qryPesquisaAverbacaoServPublico: TIntegerField;
    qryPesquisaDt_InicioContrato1_Estagiario: TDateTimeField;
    qryPesquisaDt_TerminoContrato1_Estagiario: TDateTimeField;
    qryPesquisaDt_InicioContrato2_Estagiario: TDateTimeField;
    qryPesquisaDt_TerminoContrato2_Estagiario: TDateTimeField;
    qryPesquisaDt_InicioContrato3_Estagiario: TDateTimeField;
    qryPesquisaDt_TerminoContrato3_Estagiario: TDateTimeField;
    qryPesquisaDt_InicioContrato4_Estagiario: TDateTimeField;
    qryPesquisaDt_TerminoContrato4_Estagiario: TDateTimeField;
    qryPesquisaSupervisor_Estagiario: TStringField;
    qryPesquisaDtNovaEstrutura: TDateTimeField;
    qryPesquisaCaminhoFollhaDePonto: TStringField;
    qryPesquisaTurnoEstagio: TStringField;
    qryPesquisaSemestre: TStringField;
    qryPesquisaInstituicaoEnsino: TStringField;
    qryPesquisadt_InicioExercicioExterno: TDateTimeField;
    qryPesquisadt_TerminoExercicioExterno: TDateTimeField;
    qryPesquisadt_NomeacaoExercicioExterno: TDateTimeField;
    qryPesquisadt_PosseExercicioExterno: TDateTimeField;
    qryPesquisaEndereco: TStringField;
    qryPesquisaBairro: TStringField;
    qryPesquisaCidade: TStringField;
    qryPesquisaUF: TStringField;
    qryPesquisaCEP: TStringField;
    qryPesquisaCI_Num: TStringField;
    qryPesquisaCI_UF: TStringField;
    qryPesquisaCI_Emissao: TDateTimeField;
    qryPesquisaNacionalidade: TStringField;
    qryPesquisaNaturalidade: TStringField;
    qryPesquisaNatural_UF: TStringField;
    qryPesquisaPis_Pasep: TStringField;
    qryPesquisaTE_Num: TStringField;
    qryPesquisaTE_Zona: TStringField;
    qryPesquisaTE_Secao: TStringField;
    qryPesquisaTE_UF: TStringField;
    qryPesquisaTE_Emissao: TDateTimeField;
    qryPesquisaPai: TStringField;
    qryPesquisaMae: TStringField;
    qryPesquisaidEstadoCivil: TStringField;
    qryPesquisaEstadoCivil: TStringField;
    qryPesquisaConjuge: TStringField;
    qryPesquisaidBanco: TStringField;
    qryPesquisaAgencia: TStringField;
    qryPesquisaConta: TStringField;
    qryPesquisaOAB_Num: TStringField;
    qryPesquisaOAB_Secao: TStringField;
    qryPesquisaAspro_Opc: TBooleanField;
    qryPesquisaGrau: TStringField;
    qryPesquisaCurso: TStringField;
    qryPesquisaTipoSanguineo: TStringField;
    qryPesquisaEmail: TWideStringField;
    qryPesquisaidlotacao_1: TStringField;
    qryPesquisaSiglaLotacao: TStringField;
    qryPesquisadescricaoLotacao: TStringField;
    qryPesquisadescricaoCargo: TStringField;
    qryPesquisadescricaoFuncao: TStringField;
    qryPesquisadesligamento: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function retornaSQLPesquisaServidor
    (condicao: String): String;
    function pesquisarPessoal(condicao: String): integer;
    function VerificarSeEProcurador(idCargo: string): boolean;
    function registraNotificaNupro
    (idServidor, idLotacao, idCargo, idFuncao, dtExercicioCargo,
    idUsuario, dtAlteracao: String):String;
  end;

var
  dmPessoal: TdmPessoal;

implementation

uses uDMConexao, ufCriterioPesquisaPessoal, ufLogs, PRG_utils, uPesFuncoes;

{$R *.dfm}

procedure TdmPessoal.DataModuleCreate(Sender: TObject);
begin
  qryExecSQL.Connection := DMConexao.conPessoal;
  qryPesquisa.Connection := DMConexao.conPessoal;
end;


function TdmPessoal.VerificarSeEProcurador(idCargo: string): boolean;
begin
  if idCargo = 'PA'
    then Result := true
  else  if idCargo = 'PB'
    then Result := true
  else  if idCargo = 'PF'
    then Result := true
  else  if idCargo = 'SP'
    then Result := true
  else  if idCargo = 'JS'
    then Result := true
  else  if idCargo = 'JA'
    then Result := true
  else  if idCargo = 'JB'
    then Result := true
  else  if idCargo = 'SJ'
    then Result := true
  else Result := false;

end;

function TdmPessoal.pesquisarPessoal(condicao: String): integer;
begin
  with dmPessoal.qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(retornaSQLPesquisaServidor(condicao));
    Active := True;
  end;

  Result := dmPessoal.qryPesquisa.RecordCount;

// SQL Original da antiga pesquisa

{SELECT
ser.idUsuario, pes1.Nome AS Operador,
OEE.DESCRICAO as ExercicioExterno,
PES.IDPESSOAL, PES.CPF, PES.NOME,
PES.DT_NASCIMENTO,
ser.*, DADOS.*, LOT.IDLOTACAO, LOT.DESCRICAO
FROM tbPessoal AS pes
INNER JOIN tbServidor AS ser ON ser.idPessoal = pes.idPessoal
LEFT JOIN tbDados AS dados on dados.idPessoal = pes.idPessoal
LEFT JOIN tbLotacao as lot on lot.idLotacao = ser.idLotacao
LEFT JOIN tbOrgaoExercicioExterno oee
ON oee.idOrgaoExercicioExterno = ser.idOrgaoExercicioExterno
LEFT JOIN tbPessoal as pes1 on pes1.CPF = ser.idUsuario
 WHERE
pes.cpf = '03242200144'
ORDER BY PES.NOME;}


// SQL da nova pesquisa

{SET DATEFORMAT dmy
SELECT  Operador=dbo.F_RetornaOperador(serv.idUsuario),  OEE.Descricao as ExercicioExterno,
PES.IDPESSOAL, PES.CPF, PES.NOME, pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,
serv.idServidor, serv.Matr_Origem, serv.idCargo, serv.Especialidade, serv.idFuncao,
serv.idLotacao, serv.CF_Num, serv.Ramal, serv.Sala, serv.Classe, serv.Padrao,
serv.Dt_NomeacaoCargo, serv.Dt_NomeacaoCargoDODF, serv.Dt_PosseCargo, serv.Dt_ExercicioCargo, 
serv.Dt_PrimeiroExercicioGDF, serv.Dt_Deslig_Cargo, serv.Dt_Deslig_CargoDODF, 
serv.Dt_NomeacaoFuncao, serv.Dt_NomeacaoFuncaoDODF, serv.Dt_PosseFuncao, 
serv.Dt_ExercicioFuncao, serv.Dt_Deslig_Funcao, serv.Dt_Deslig_FuncaoDODF, 
serv.Dt_Falecimento, serv.Dt_Digitacao, serv.Requisitado, serv.OrgaoDeOrigem, 
serv.Dt_FimRequisicao, serv.AuxTransporte, serv.idDesligamento, serv.idUsuario, 
serv.CargaHoraria, serv.Dt_PromocaoCategoria2, serv.Dt_PromocaoSubProcurador, 
serv.AverbacaoGDF, serv.AverbacaoServPublico, serv.Dt_InicioContrato1_Estagiario, 
serv.Dt_TerminoContrato1_Estagiario, serv.Dt_InicioContrato2_Estagiario, 
serv.Dt_TerminoContrato2_Estagiario, serv.Dt_InicioContrato3_Estagiario,
serv.Dt_TerminoContrato3_Estagiario, serv.Dt_InicioContrato4_Estagiario, 
serv.Dt_TerminoContrato4_Estagiario, serv.Supervisor_Estagiario, serv.DtNovaEstrutura,
serv.CaminhoFollhaDePonto, serv.TurnoEstagio, serv.Semestre, serv.InstituicaoEnsino, 
dados.Endereco, dados.Bairro, dados.Cidade, dados.UF, dados.CEP, dados.CI_Num, dados.CI_UF, 
dados.CI_Emissao, dados.Nacionalidade, dados.Naturalidade, dados.Natural_UF, 
dados.Pis_Pasep, dados.TE_Num, dados.TE_Zona, dados.TE_Secao, dados.TE_UF, 
dados.TE_Emissao, dados.Pai, dados.Mae, dados.idEstadoCivil,  
CASE  WHEN civil.Descricao != '' THEN civil.Descricao  
ELSE 'NÃO INFORMADO' END AS EstadoCivil , dados.Conjuge, dados.idBanco, dados.Agencia, 
dados.Conta, dados.OAB_Num, dados.OAB_Secao, dados.Aspro_Opc, dados.Grau, dados.Curso, 
dados.TipoSanguineo, dados.Email, lot.idlotacao, lot.Sigla as SiglaLotacao, 
lot.descricao as descricaoLotacao, car.descricao as descricaoCargo,
fun.descricao as descricaoFuncao, desl.descricao as desligamento 
FROM tbPessoal as pes LEFT JOIN tbServidor as serv ON serv.idPessoal = pes.idPessoal
LEFT JOIN tbDados as dados ON dados.idPessoal = pes.idPessoal 
LEFT JOIN tbLotacao as lot ON lot.idLotacao = serv.idLotacao 
LEFT JOIN tbCargo as car ON car.idCargo = serv.idCargo 
LEFT JOIN tbFuncao as fun ON fun.idFuncao = serv.idFuncao 
LEFT JOIN tbEstadoCivil as civil ON civil.idEstadoCivil = dados.idEstadoCivil 
LEFT JOIN tbDesligamento as desl ON desl.idDesligamento = serv.idDesligamento 
LEFT JOIN tbOrgaoExercicioExterno oee ON oee.idOrgaoExercicioExterno = serv.idOrgaoExercicioExterno 
WHERE 1=1 and pes.nome like '%ana%'  ORDER BY pes.nome; }


end;

function TdmPessoal.retornaSQLPesquisaServidor
(condicao: String): String;
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



 // + ' serv.observacao,' -- Este campo não está na table tbServidor do banco PGSRV19
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
  + ' AND LTRIM(Nome) not like ' + QuotedStr('')

//  +  FstrNome + strMatricula + strLotacao + strCargo + strFuncao

  + ' ' + condicao

  + ' ORDER BY pes.nome;';

  monitorarAcoesDaSessao
  ('uDMPessoal', 'Retorna SQL da pesquisa do servidor (retornaSQLPesquisaServidor)', pesquisa);

  Result := pesquisa;
end;

function TdmPessoal.registraNotificaNupro
(idServidor, idLotacao, idCargo, idFuncao, dtExercicioCargo,
idUsuario, dtAlteracao: String): String;
var vSQL: String;
begin
  vSQL := 'DECLARE @idAlteracao AS CHAR(12)'
       + ' SET @idAlteracao = CONVERT(CHAR, (SELECT MAX(convert(INT, idAlteracao)) + 1 FROM tbCamposAltServ))'
       + ' SET @idAlteracao = REPLICATE(''0'', 12 - LEN(@idAlteracao)) + LTRIM(RTRIM(@idAlteracao))'
       + ' INSERT INTO tbCamposAltServ'
       + ' (idAlteracao, idServidorAnt, idServidorNov'
       + ', dtExercicioCargoAnt, dtExercicioCargoNov'
       + ', dtDesligCargoAnt, dtDesligCargoNov'
       + ', dtExercicioFuncaoAnt, dtExercicioFuncaoNov'
       + ', dtDesligFuncaoAnt, dtDesligFuncaoNov'
       + ', idLotacaoAnt, idLotacaoNov'
       + ', dtFalecimentoAnt, dtFalecimentoNov'
       + ', idCargo, idFuncao, idUsuario, dtAlteracao)'
       + ' values ('
       + ' @idAlteracao, NULL, '
       + QuotedStr(idServidor) //0002474603,
       + ', NULL, '
       + QuotedStr(dtExercicioCargo) //2021-04-23
       + ', NULL, NULL'
       + ', NULL, NULL'
       + ', NULL, NULL'
       + ', NULL,'
       + QuotedStr(idLotacao) //'000000000133'
       + ', NULL, NULL,'
       + QuotedStr(idCargo)     + ', '
       + QuotedStr(idFuncao)    + ', '
       + QuotedStr(idUsuario)   + ', '
       + QuotedStr(dtAlteracao)
       + ')';
       //'999999, 0000000544, 53861396149, 2021-04-23';

  Result := vSQL;

end;

end.
