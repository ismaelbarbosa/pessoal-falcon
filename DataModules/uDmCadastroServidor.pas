unit uDmCadastroServidor;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs;

type TDadosPessoal = array of String;

type
  TPessoal = record
    nome, cpf, dtNascimento, idPessoal, idServidor,
    cargo, especialidade, lotacao,
    dtPosseCargo, dtExercicioCargo,
    dtNomeacaoCargo, dtNomeacaoCargoDODF,
    requisitado, orgaoOrigem,
    cargaHoraria, classe,
    padrao, cfNum,
    auxTransporte,
    naturalidade, naturalUF,
    pai, mae, estadoCivil,
    tipoSangue, conjuge,
    endereco, bairro, cidade, enderecoUF,
    cep, email, grauInstrucao,
    curso, ciNum, ciEmissao, ciUF,
    teNum, teZona, teSecao, teUF,
    teEmissao, pisPasep,
    banco, agencia, contaBanco,
    oabNum, oabSecao
    : Array[0..1] of String;
end;

type
  TdmCadastroServidor = class(TDataModule)
    qryPessoal: TADOQuery;
    dsPessoal: TDataSource;
    qryCargo: TADOQuery;
    dsCargo: TDataSource;
    qryLotacao: TADOQuery;
    dsLotacao: TDataSource;
    qryEspecialidade: TADOQuery;
    dsEspecialidade: TDataSource;
    qryFuncao: TADOQuery;
    dsFuncao: TDataSource;
    qryUF: TADOQuery;
    dsNatural_UF: TDataSource;
    qryEstadoCivil: TADOQuery;
    dsEstadoCivil: TDataSource;
    qryExecSQL: TADOQuery;
    qryGrauInstrucao: TADOQuery;
    dsGrauInstrucao: TDataSource;
    qryCurso: TADOQuery;
    dsCurso: TDataSource;
    qryBanco: TADOQuery;
    dsBanco: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function retornarPessoal: boolean;
    function retornarCargo: boolean;
    function retornarLotacao: boolean;
    function retornarEspecialidade: boolean;
    function retornarFuncao: boolean;
    function retornarUF: boolean;
    function retornarEstadoCivil: boolean;
    function retornarCurso: boolean;
    function retornarBanco: boolean;

    function servidorAtivoNaFuncao(idPessoal, idServidor, idFuncao: String): integer;

    function GerarID(Tabela, Campo: String): String;
    function incluirPessoal_OLD(idPessoal, CPF, Nome, DataNascimento: String): boolean;

    function incluirPessoal(vSQL: String): boolean;
    function alterarPessoal(vSQL: String): boolean;

    function incluirDados(vSQL: String): boolean;
    function alterarDados(vSQL: String): boolean;

    function incluirServidor(vSQL: String): boolean;
    function alterarServidor(vSQL: String): boolean;

    function executarSQL(vSQL: String): boolean;

    function incluirDatas_OLD
    (idPessoal, idServidor, Dt_NomeacaoCargo,
    Dt_NomeacaoCargoDODF, Dt_PosseCargo,
    Dt_ExercicioCargo, Dt_PrimeiroExercicioGDF,
    Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF,
    Dt_PosseFuncao, Dt_ExercicioFuncao, Dt_Digitacao: String): boolean;

    function atualizarDatas(vSQL: String): boolean;


    function salvarPessoal(vSQL: String): boolean;

    function registrarNotificaNupro(vSQL: String):Boolean;

    function SQLUpdatePessoal(pIDP, pCPF, pNome, pDtNascimento: String): String;

    function SQLUpdateDados
    //(Dados: TDadosPessoal)

    (idPessoal, Endereco, Bairro, Cidade, EnderecoUF, CEP, CI_Num, CI_UF, CI_Emissao, Naturalidade
    , Natural_UF, Pis_Pasep, TE_Num, TE_Zona, TE_Secao, TE_UF, TE_Emissao
    , Pai, Mae, EstadoCivil, Conjuge, Banco, Agencia, Conta, OAB_Num, OAB_Secao, GrauInstrucao
    , Curso, TipoSanguineo, Email: String)

    : String;

    function SQLUpdateServidor
    (pIDP, pIDS, idServidor, idCargo, idEspecialidade, CF_Num, Classe,
    Padrao, Requisitado, OrgaoDeOrigem, AuxTransporte, CargaHoraria,
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
    observacao
    : String): String;

  end;

var
  dmCadastroServidor: TdmCadastroServidor;

implementation

uses udmPessoal, uDMConexao, DateUtils, ufCreateServidor, ufUpdateServidor,
  ufLogs, uPesFuncoes;
//, ufEditarServidor;

{$R *.dfm}

function TdmCadastroServidor.GerarID(Tabela, Campo: String): String;
var
  vQryMax :  TADOQuery;
  vSQL    : String;
begin
   vSQL    := '';
   vQryMax := TADOQuery.Create(nil);
   try
     with vQryMax do
     begin
       Connection := dmConexao.conPessoal;
       vSQL := 'Select max(' + Campo +')' + ' as MAXID';
       vSQL := vSQL + ' from ' + Tabela;

       if (Tabela = 'tbJuizo') then
       vSQL := vSQL + ' Where idJuizo <> ' + QuotedStr('999999');

       //ShowMessage(vSQL);

       SQL.Text := vSQL;
       Open;
     end;
     if vQryMax.FieldByName('MAXID').IsNull then
       Result := '1'
     else
       Result := IntToStr(vQryMax.FieldByName('MAXID').AsInteger + 1);
   finally
     vQryMax.Free;
   end;

end;


function TdmCadastroServidor.incluirPessoal_OLD(idPessoal, CPF, Nome,
  DataNascimento: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := 'Set dateformat dmy'
            + ' Insert into '
            + ' tbPessoal' //
            + '(idPessoal, CPF, Nome, dt_Nascimento )'
            + ' Values ('
            + QuotedStr(idPessoal)  + ', '
            + QuotedStr(CPF)       + ', '
            + QuotedStr(Nome) + ', '
            + QuotedStr(DataNascimento) + ')';

        monitorarAcoesDaSessao
        ('uDmCadastroServidor', 'incluirPessoal_OLD', SQL.Text);

        ExecSQL;

      end;
    Result := true
  except
    Result := false;
  end;


end;


function TdmCadastroServidor.retornarCargo: boolean;
begin
  try
    qryCargo.Active := false;
    qryCargo.SQL.Text :=

    'SELECT tbCargo.idCargo, tbCargo.Descricao '
    + 'FROM tbCargo '
    + 'WHERE tbCargo.Habilitado = 1 '
     //and tbcargo.descricao like ' +
     //QuotedStr(Trim(AnsiUpperCase(edtCargo.Text) + '%'));
    + 'Order by tbCargo.Descricao';

    qryCargo.Active := true;

   except
     Result := false;
  end;

  if qryCargo.RecordCount > 0 then Result := true
  else Result := false;

end;

function TdmCadastroServidor.retornarEspecialidade: boolean;
begin
  try
    qryEspecialidade.Active := false;
    qryEspecialidade.SQL.Text :=

    'SELECT idEspecialidade, Descricao'
    + ' FROM tbEspecialidade '
    + ' ORDER BY Descricao';

    qryEspecialidade.Active := true;

   except
     Result := false;
  end;

  if qryEspecialidade.RecordCount > 0 then Result := true
  else Result := false;

end;

function TdmCadastroServidor.retornarFuncao: boolean;
begin
  try
    qryFuncao.Active := false;
    qryFuncao.SQL.Text :=

    'SELECT tbFuncao.idFuncao, tbFuncao.Descricao, tbFuncao.idDFG '
    + 'From tbFuncao '
    + 'Where tbFuncao.Nova_Estrutura = 1 '
    + 'Order by tbFuncao.Descricao';

    qryFuncao.Active := true;

   except
     Result := false;
  end;

  if qryFuncao.RecordCount > 0 then Result := true
  else Result := false;

end;

function TdmCadastroServidor.retornarLotacao: boolean;
begin
  try
    qryLotacao.Active := false;
    qryLotacao.SQL.Text :=

    'SELECT idLotacao, Descricao, Sigla, Superlotacao,'
    + ' Sala, Ramal '
    + ' FROM tbLotacao '
    + ' WHERE nova_estrutura = ''1'' and ' + ' 1=1 '
    + ' ORDER BY Descricao';

    qryLotacao.Active := true;

   except
     Result := false;
  end;

  if qryLotacao.RecordCount > 0 then Result := true
  else Result := false;

end;

function TdmCadastroServidor.retornarUF: boolean;
begin
  try
    qryUF.Active := false;
    qryUF.SQL.Text :=

    'SELECT tbUF.idUF, tbUF.Nome '
    + ' FROM tbUF';

    qryUF.Active := true;

   except
     Result := false;
  end;

  if qryUF.RecordCount > 0 then Result := true
  else Result := false;

end;

function TdmCadastroServidor.retornarPessoal: boolean;
begin
  try
    qryPessoal.Active := false;
    qryPessoal.SQL.Text :=

    'SELECT '
    + ' serv.idUsuario, pes1.Nome AS Operador,'
    + ' OEE.Descricao as ExercicioExterno, PES.IDPESSOAL,'
    + ' PES.CPF, PES.NOME,'
    + ' PES.DT_NASCIMENTO,'
    + ' serv.*, DADOS.*, LOT.IDLOTACAO, LOT.DESCRICAO'
    + ' FROM tbPessoal AS pes'
    + ' INNER JOIN tbServidor AS serv ON serv.idPessoal = pes.idPessoal'
    + ' LEFT JOIN tbDados AS dados on dados.idPessoal = pes.idPessoal  '
    + ' LEFT JOIN tbLotacao as lot on lot.idLotacao = serv.idLotacao   '
    + ' LEFT JOIN tbFuncao as fun on fun.idFuncao = serv.idFuncao   '
    + ' LEFT JOIN tbOrgaoExercicioExterno oee                          '
    + ' ON oee.idOrgaoExercicioExterno = serv.idOrgaoExercicioExterno  '
    + ' LEFT JOIN tbPessoal as pes1 on pes1.CPF = serv.idUsuario       '

    + ' WHERE 1=1'
    + ' AND pes.idpessoal = ' + QuotedStr('987654321')
    + ' AND serv.idservidor = ' + QuotedStr('987654321')
    + ' ORDER BY pes.Nome';

    qryPessoal.Active := true;

   except
     Result := false;
  end;

  //if qryPessoal.RecordCount > 0 then Result := true
  //else Result := false;

  Result := true;

end;

function TdmCadastroServidor.retornarEstadoCivil: boolean;
begin
  try
    qryEstadoCivil.Active := false;
    qryEstadoCivil.SQL.Text :=

    'SELECT idEstadoCivil, Descricao'
    + ' FROM tbEstadoCivil';

    qryEstadoCivil.Active := true;

   except
     Result := false;
  end;

  if qryEstadoCivil.RecordCount > 0 then Result := true
  else Result := false;
//
end;

function TdmCadastroServidor.retornarCurso: boolean;
begin
  try
    qryCurso.Active := false;
    qryCurso.SQL.Text :=

    'SELECT idCurso, Descricao'
    + ' FROM tbCurso';

    qryCurso.Active := true;

   except
     Result := false;
  end;

  if qryCurso.RecordCount > 0 then Result := true
  else Result := false;

end;

function TdmCadastroServidor.incluirDatas_OLD
    (idPessoal, idServidor, Dt_NomeacaoCargo,
    Dt_NomeacaoCargoDODF, Dt_PosseCargo,
    Dt_ExercicioCargo, Dt_PrimeiroExercicioGDF,
    Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF,
    Dt_PosseFuncao, Dt_ExercicioFuncao, Dt_Digitacao: String): boolean;
begin

// Total de 10 campos de data mais idPessoal e idServidor

  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := 'SET DATEFORMAT DMY'
            + ' UPDATE '
            + ' tbServidor'
            + ' SET'
            + ' Dt_NomeacaoCargo = '         + QuotedStr(Dt_NomeacaoCargo)
            + ' , Dt_NomeacaoCargoDODF = '     + QuotedStr(Dt_NomeacaoCargoDODF)
            + ' , Dt_PosseCargo = '            + QuotedStr(Dt_PosseCargo)
            + ' , Dt_ExercicioCargo = '        + QuotedStr(Dt_ExercicioCargo)
            + ' , Dt_PrimeiroExercicioGDF = '  + QuotedStr(Dt_PrimeiroExercicioGDF)
            + ' , Dt_NomeacaoFuncao = '        + QuotedStr(Dt_NomeacaoFuncao)
            + ' , Dt_NomeacaoFuncaoDODF = '    + QuotedStr(Dt_NomeacaoFuncaoDODF)
            + ' , Dt_PosseFuncao = '           + QuotedStr(Dt_PosseFuncao)
            + ' , Dt_ExercicioFuncao = '       + QuotedStr(Dt_ExercicioFuncao)
            + ' , Dt_Digitacao = '             + QuotedStr(Dt_Digitacao)

            + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
            + ' AND idServidor = '  + QuotedStr(idServidor);

        //ExecSQL;

      end;
    Result := true
  except
    Result := false;
  end;


end;

function TdmCadastroServidor.retornarBanco: boolean;
begin
  try
    qryBanco.Active := false;
    qryBanco.SQL.Text :=

    'SELECT idBanco, Descricao'
    + ' FROM tbBanco';

    qryBanco.Active := true;

   except
     Result := false;
  end;

  if qryBanco.RecordCount > 0 then Result := true
  else Result := false;

end;


class function ListaCliente: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with dmCadastroServidor.qryUF do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('NOME').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

function TdmCadastroServidor.incluirPessoal(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TdmCadastroServidor.incluirServidor(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TdmCadastroServidor.incluirDados(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;


procedure TdmCadastroServidor.DataModuleCreate(Sender: TObject);
var con: TADOConnection;
begin
  con := DMConexao.conPessoal;

  qryExecSQL.Connection := con;
  qryPessoal.Connection := con;
  qryCargo.Connection := con;
  qryLotacao.Connection := con;
  qryEspecialidade.Connection := con;
  qryFuncao.Connection := con;
  qryUF.Connection := con;
  qryEstadoCivil.Connection := con;
  qryGrauInstrucao.Connection := con;
  qryCurso.Connection := con;
  qryBanco.Connection := con;
end;

function TdmCadastroServidor.salvarPessoal(vSQL: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := vSQL;

        //ExecSQL;
      end;
    Result := true
  except
    Result := false;
  end;

end;

function TdmCadastroServidor.servidorAtivoNaFuncao(idPessoal,
  idServidor, idFuncao: String): integer;
begin
  with qryExecSQL do
  begin
   Connection := dmConexao.conPessoal;
   Active := false;

   SQL.Clear;
   SQL.Text := 'SELECT pes.idPessoal, ser.idServidor, ser.Dt_Deslig_Funcao'
        + ' FROM tbPessoal as pes'
        + ' INNER JOIN tbServidor as ser ON ser.idPessoal = pes.idPessoal'
        + ' LEFT JOIN tbLotacao as lot ON lot.idLotacao = ser.idLotacao'
//        + ' LEFT JOIN tbCargo as car ON car.idCargo = ser.idCargo'
//        + ' LEFT JOIN tbFuncao as fun ON fun.idFuncao = ser.idFuncao'
        + ' WHERE pes.idPessoal = ' + QuotedStr(idPessoal)
        + ' AND ser.idServidor = '  + QuotedStr(idServidor)
        + ' AND ser.idFuncao = '    + QuotedStr(Trim(idFuncao))
        + ' AND ser.Dt_Deslig_Funcao IS NULL';
   Open;

   Result := RecordCount;
  end;
end;

function TdmCadastroServidor.alterarPessoal(vSQL: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := vSQL;

        ExecSQL;
      end;
    Result := true
  except
    Result := false;
  end;
end;

function TdmCadastroServidor.alterarDados(vSQL: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := vSQL;

        ExecSQL;
      end;
    Result := true
  except
    Result := false;
  end;
end;

function TdmCadastroServidor.alterarServidor(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TdmCadastroServidor.atualizarDatas(vSQL: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := vSQL;

        ExecSQL;
      end;
    Result := true
  except
    Result := false;
  end;

end;

function TdmCadastroServidor.registrarNotificaNupro(vSQL: String): Boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;

      ExecSQL;
    end;
    Result := true;
    //ShowMessage('Registrado em tbCamposAltSer');
  except
    Result := false;
    //ShowMessage('Não registrado em tbCamposAltSer');    
  end; 
end;

function TdmCadastroServidor.executarSQL(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TdmCadastroServidor.SQLUpdatePessoal(pIDP, pCPF, pNome, pDtNascimento: String): String;
var SQL_Pessoal: String;
begin
  SQL_Pessoal :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbPessoal'
      + ' SET '
      + ' CPF = '  + QuotedStr(pCPF)
      + ', Nome = ' + QuotedStr(pNome);

      if pDtNascimento <> '' then
        SQL_Pessoal := SQL_Pessoal + ', dt_Nascimento = '
        + QuotedStr(pDtNascimento)
      else
        SQL_Pessoal := SQL_Pessoal + ', dt_Nascimento = NULL ';

      SQL_Pessoal := SQL_Pessoal
      + ' WHERE idPessoal = ' + QuotedStr(pIDP);

  monitorarAcoesDaSessao('dmCadastroServidor', 'SQL de alteração do pessoal(SQLUpdatePessoal)', SQL_Pessoal);

  Result := SQL_Pessoal;
end;

function TdmCadastroServidor.SQLUpdateDados
//(Dados: TDadosPessoal): String;
(idPessoal, Endereco, Bairro, Cidade, EnderecoUF, CEP, CI_Num, CI_UF, CI_Emissao, Naturalidade
, Natural_UF, Pis_Pasep, TE_Num, TE_Zona, TE_Secao, TE_UF, TE_Emissao
, Pai, Mae, EstadoCivil, Conjuge, Banco, Agencia, Conta, OAB_Num, OAB_Secao, GrauInstrucao
, Curso, TipoSanguineo, Email: String): String;

var SQL_Dados: String;
begin

  SQL_Dados := 'SET DATEFORMAT dmy'
  + ' UPDATE tbDados'
  + ' SET ';

  if Endereco <> ''
  then SQL_Dados := SQL_Dados
    + ' Endereco = ' + QuotedStr(Endereco)
  else SQL_Dados := SQL_Dados
    + ' Endereco = NULL';

  if Bairro <> ''
  then SQL_Dados := SQL_Dados
    + ', Bairro = ' + QuotedStr(Bairro)
  else SQL_Dados := SQL_Dados
    + ', Bairro = NULL';

  if Cidade <> ''
  then SQL_Dados := SQL_Dados
    + ', Cidade = ' + QuotedStr(Cidade)
  else SQL_Dados := SQL_Dados
    + ', Cidade = NULL';

  if EnderecoUF <> ''
  then SQL_Dados := SQL_Dados
    + ', UF = ' + QuotedStr(EnderecoUF)
  else SQL_Dados := SQL_Dados
    + ', UF = NULL';

  if CEP <> ''
  then SQL_Dados := SQL_Dados
    + ', CEP = ' + QuotedStr(CEP)
  else SQL_Dados := SQL_Dados
    + ', CEP = NULL';

  if CI_Num <> ''
  then SQL_Dados := SQL_Dados
    + ', CI_Num = ' + QuotedStr(CI_Num)
  else SQL_Dados := SQL_Dados
    + ', CI_Num = NULL';

  if CI_UF <> ''
  then SQL_Dados := SQL_Dados
    + ', CI_UF = ' + QuotedStr(CI_UF)
  else SQL_Dados := SQL_Dados
    + ', CI_UF = NULL';

  if CI_Emissao <> ''
  then SQL_Dados := SQL_Dados
    + ', CI_Emissao = ' + QuotedStr(CI_Emissao)
  else SQL_Dados := SQL_Dados
    + ', CI_Emissao = NULL';

  if Naturalidade <> ''
  then SQL_Dados := SQL_Dados
    + ', Naturalidade = ' + QuotedStr(Naturalidade)
  else SQL_Dados := SQL_Dados
    + ', Naturalidade = NULL';

  if Natural_UF <> ''
  then SQL_Dados := SQL_Dados
    + ', Natural_UF = ' + QuotedStr(Natural_UF)
  else SQL_Dados := SQL_Dados
    + ', Natural_UF = NULL';

  if Pis_Pasep <> ''
  then SQL_Dados := SQL_Dados
    + ', Pis_Pasep = ' + QuotedStr(Pis_Pasep)
  else SQL_Dados := SQL_Dados
    + ', Pis_Pasep = NULL';

  if TE_Num <> ''
  then SQL_Dados := SQL_Dados
    + ', TE_Num = ' + QuotedStr(TE_Num)
  else SQL_Dados := SQL_Dados
    + ', TE_Num = NULL';

  if TE_Zona <> ''
  then SQL_Dados := SQL_Dados
    + ', TE_Zona = ' + QuotedStr(TE_Zona)
  else SQL_Dados := SQL_Dados
    + ', TE_Zona = NULL';

  if TE_Secao <> ''
  then SQL_Dados := SQL_Dados
    + ', TE_Secao = ' + QuotedStr(TE_Secao)
  else SQL_Dados := SQL_Dados
    + ', TE_Secao = NULL';

  if TE_UF <> ''
  then SQL_Dados := SQL_Dados
    + ', TE_UF = ' + QuotedStr(TE_UF)
  else SQL_Dados := SQL_Dados
    + ', TE_UF = NULL';

  if TE_Emissao <> ''
  then SQL_Dados := SQL_Dados
    + ', TE_Emissao = ' + QuotedStr(TE_Emissao)
  else SQL_Dados := SQL_Dados
    + ', TE_Emissao = NULL';

  if Pai <> ''
  then SQL_Dados := SQL_Dados
    + ', Pai = ' + QuotedStr(Pai)
  else SQL_Dados := SQL_Dados
    + ', Pai = NULL';

  if Mae <> ''
  then SQL_Dados := SQL_Dados
    + ', Mae = ' + QuotedStr(Mae)
  else SQL_Dados := SQL_Dados
    + ', Mae = NULL';

  if EstadoCivil <> ''
  then SQL_Dados := SQL_Dados
    + ', idEstadoCivil = ' + QuotedStr(EstadoCivil)
  else SQL_Dados := SQL_Dados
    + ', idEstadoCivil = NULL';

  if Conjuge <> ''
  then SQL_Dados := SQL_Dados
    + ', Conjuge = ' + QuotedStr(Conjuge)
  else SQL_Dados := SQL_Dados
    + ', Conjuge = NULL';

  if Banco <> ''
  then SQL_Dados := SQL_Dados
    + ', idBanco = ' + QuotedStr(Banco)
  else SQL_Dados := SQL_Dados
    + ', idBanco = NULL';

  if Agencia <> ''
  then SQL_Dados := SQL_Dados
    + ', Agencia = ' + QuotedStr(Agencia)
  else SQL_Dados := SQL_Dados
    + ', Agencia = NULL';

  if Conta <> ''
  then SQL_Dados := SQL_Dados
    + ', Conta = ' + QuotedStr(Conta)
  else SQL_Dados := SQL_Dados
    + ', Conta = NULL';

  if OAB_Num <> ''
  then SQL_Dados := SQL_Dados
    + ', OAB_Num = ' + QuotedStr(OAB_Num)
  else SQL_Dados := SQL_Dados
    + ', OAB_Num = NULL';

  if OAB_Secao <> ''
  then SQL_Dados := SQL_Dados
    + ', OAB_Secao = ' + QuotedStr(OAB_Secao)
  else SQL_Dados := SQL_Dados
    + ', OAB_Secao = NULL';

  if GrauInstrucao <> ''
  then SQL_Dados := SQL_Dados
    + ', Grau = ' + QuotedStr(GrauInstrucao)
  else SQL_Dados := SQL_Dados
    + ', Grau = NULL';

  if Curso <> ''
  then SQL_Dados := SQL_Dados
    + ', Curso = ' + QuotedStr(Curso)
  else SQL_Dados := SQL_Dados
    + ', Curso = NULL';

  if TipoSanguineo <> ''
  then SQL_Dados := SQL_Dados
    + ', TipoSanguineo = ' + QuotedStr(TipoSanguineo)
  else SQL_Dados := SQL_Dados
    + ', TipoSanguineo = NULL';

  if Email <> ''
  then SQL_Dados := SQL_Dados
    + ', Email = ' + QuotedStr(Email)
  else SQL_Dados := SQL_Dados
    + ', Email = NULL';

  SQL_Dados := SQL_Dados
    + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
    ;

  monitorarAcoesDaSessao
  ('uDmCadastroServidor', 'SQL de atualização de dados do servidor (SQLUpdateDados)', SQL_Dados);

  Result := SQL_Dados;
end;

function TdmCadastroServidor.SQLUpdateServidor
(pIDP, pIDS, idServidor, idCargo, idEspecialidade, CF_Num, Classe,
Padrao, Requisitado, OrgaoDeOrigem, AuxTransporte, CargaHoraria,
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
    observacao
: String): String;
var SQL_Servidor : String;
begin
// Ordem dos campos
{
...
...
...
39	Dt_InicioContrato1_Estagiario
40	Dt_TerminoContrato1_Estagiario
41	Dt_InicioContrato2_Estagiario
42	Dt_TerminoContrato2_Estagiario
43	Dt_InicioContrato3_Estagiario
44	Dt_TerminoContrato3_Estagiario
45	Dt_InicioContrato4_Estagiario
46	Dt_TerminoContrato4_Estagiario
47	Supervisor_Estagiario
48	DtNovaEstrutura
49	CaminhoFollhaDePonto
50	TurnoEstagio
51	Semestre
52	InstituicaoEnsino
53	observacao
54	idNucleo
55	dtNucleoDistribuicao
56	idOrgaoExercicioExterno
57	dt_InicioExercicioExterno
58	dt_TerminoExercicioExterno

}

  // Obs: As datas serão incluídas após o Insert
  // através da função incluirDatas (DMCadastroServidor)


  // Se não for atribuído um valor para o Cargo
  // o banco atribuirá o valor default (999999)
  // ídem para os campos idFuncao, idLotacao, Requisitado, etc
  // Obs: não será feito como definido nas linhas acima. serão informados
  // os valores default aqui no código


  SQL_Servidor := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET idServidor = ' + QuotedStr(idServidor);

  if idCargo <> ''
  then SQL_Servidor := SQL_Servidor
    + ', idCargo = ' + QuotedStr(idCargo)
  else SQL_Servidor := SQL_Servidor
    + ', idCargo = ' + QuotedStr('999999');

  {if Especialidade<> ''
  then SQL_Servidor := SQL_Servidor
    + ', especialidade = ' + QuotedStr(Especialidade)
  else SQL_Servidor := SQL_Servidor
    + ', especialidade = NULL';}

  if idEspecialidade <> ''
  then SQL_Servidor := SQL_Servidor
    + ', idEspecialidade = ' + QuotedStr(idEspecialidade)
  else SQL_Servidor := SQL_Servidor
    + ', idEspecialidade = NULL';


  {if Funcao<> ''
  then SQL_Servidor := SQL_Servidor
    + ', idFuncao = ' + QuotedStr(Funcao)
  else SQL_Servidor := SQL_Servidor
    + ', idFuncao  = NULL' ;}

  {if Lotacao<> ''
  then SQL_Servidor := SQL_Servidor
    + ', idLotacao = ' + QuotedStr(Lotacao)
  else SQL_Servidor := SQL_Servidor
    + ', idLotacao = NULL';}


  // 8	CF_Num 9	Ramal 10	Sala 11	Classe
  // 12	Padrao (não se aplica para ramal e sala)

  if CF_Num<> ''
  then SQL_Servidor := SQL_Servidor
    + ', CF_Num = ' + QuotedStr(Trim(CF_Num))
  else SQL_Servidor := SQL_Servidor
    + ', CF_Num = NULL';

  if Classe <> ''
  then SQL_Servidor := SQL_Servidor
    + ', Classe = ' + QuotedStr(Trim(Classe))
  else SQL_Servidor := SQL_Servidor
    + ', Classe = NULL';

  if Padrao <> ''
  then SQL_Servidor := SQL_Servidor
    + ', Padrao = ' + QuotedStr(Trim(Padrao))
  else SQL_Servidor := SQL_Servidor
    + ', Padrao = NULL';


  if Requisitado = '1'
  then SQL_Servidor := SQL_Servidor
    + ', Requisitado = 1'
  else SQL_Servidor := SQL_Servidor
    + ', Requisitado = 0';


  if OrgaoDeOrigem <> ''
  then SQL_Servidor := SQL_Servidor
    + ', OrgaoDeOrigem = ' + QuotedStr(Trim(OrgaoDeOrigem))
  else SQL_Servidor := SQL_Servidor
    + ', OrgaoDeOrigem = NULL';

  if AuxTransporte = '1'
  then SQL_Servidor := SQL_Servidor
    + ', AuxTransporte = 1'
  else SQL_Servidor := SQL_Servidor
    + ', AuxTransporte = 0';


  if CargaHoraria <> ''
  then SQL_Servidor := SQL_Servidor
    + ', CargaHoraria = ' + QuotedStr(Trim(CargaHoraria))
  else SQL_Servidor := SQL_Servidor
    + ', CargaHoraria = NULL';

////////////////// Dados do estágio ////////////////////////////////


    if Dt_InicioContrato1_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato1_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato1_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato1_Estagiario = NULL';

    if Dt_InicioContrato2_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato2_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato2_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato2_Estagiario = NULL';

    if Dt_InicioContrato3_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato3_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato3_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato3_Estagiario = NULL';

    if Dt_InicioContrato4_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato4_Estagiario = ' + QuotedStr(Trim(Dt_InicioContrato4_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato4_Estagiario = NULL';

    if Dt_TerminoContrato1_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato1_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato1_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato1_Estagiario = NULL';

    if Dt_TerminoContrato2_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato2_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato2_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato2_Estagiario = NULL';

    if Dt_TerminoContrato3_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato3_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato3_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato3_Estagiario = NULL';

    if Dt_TerminoContrato4_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato4_Estagiario = ' + QuotedStr(Trim(Dt_TerminoContrato4_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato4_Estagiario = NULL';


    if InstituicaoEnsino <> ''
    then SQL_Servidor := SQL_Servidor
      + ', InstituicaoEnsino = ' + QuotedStr(Trim(InstituicaoEnsino))
    else SQL_Servidor := SQL_Servidor
      + ', InstituicaoEnsino = NULL';

    if TurnoEstagio <> ''
    then SQL_Servidor := SQL_Servidor
      + ', TurnoEstagio = ' + QuotedStr(Trim(TurnoEstagio))
    else SQL_Servidor := SQL_Servidor
      + ', TurnoEstagio = NULL';

    if Semestre <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Semestre = ' + QuotedStr(Trim(Semestre))
    else SQL_Servidor := SQL_Servidor
      + ', Semestre = NULL';

    if Observacao <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Observacao = ' + QuotedStr(Trim(Observacao))
    else SQL_Servidor := SQL_Servidor
      + ', Observacao = NULL';

    if Supervisor_Estagiario <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Supervisor_Estagiario = ' + QuotedStr(Trim(Supervisor_Estagiario))
    else SQL_Servidor := SQL_Servidor
      + ', Supervisor_Estagiario = NULL';


////////////////////////////////////////////////////////////////////


    // ver com a Cláudia em que situações são digitados
    // os campos AverbacaoGDF e AverbacaoServPublico


  SQL_Servidor := SQL_Servidor
    + ', idUsuario = ' + QuotedStr(DMConexao.Usuario.CPF)
    + ' WHERE idPessoal = ' + QuotedStr(pIDP)
    + ' AND ID = ' + QuotedStr(pIDS);


  monitorarAcoesDaSessao('dmCadastroServidor', 'SQL de alteração do servidor (SQLUpdateServidor)', SQL_Servidor);

  Result := SQL_Servidor;
end;


end.
