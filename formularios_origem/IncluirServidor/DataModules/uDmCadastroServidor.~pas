unit uDmCadastroServidor;

interface

uses
  SysUtils, Classes, DB, ADODB;

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

    function GerarID(Tabela, Campo: String): String;
    function incluirPessoal_OLD(idPessoal, CPF, Nome, DataNascimento: String): boolean;
    function incluirPessoal(vSQL: String): boolean;

    function incluirDados_OLD
    (idPessoal, Endereco, Bairro, Cidade, UF,
    CEP, CI_Num, CI_UF, CI_Emissao,
    Naturalidade, Natural_UF, Pis_Pasep, TE_Num, TE_Zona,
    TE_Secao, TE_UF, TE_Emissao, Pai, Mae, idEstadoCivil,
    Conjuge, idBanco, Agencia, Conta, OAB_Num,
    OAB_Secao, Aspro_Opc, Grau, Curso, TipoSanguineo,
    Email: String): boolean;

    function incluirDados(vSQL: String): boolean;

    function incluirServidor_OLD
    (idPessoal, idServidor, Matr_Origem, idCargo, Especialidade,
    idFuncao, idLotacao, CF_Num, Ramal, Sala,
    Classe, Padrao, Requisitado, OrgaoDeOrigem, AuxTransporte,
    idUsuario, CargaHoraria: String): boolean;

    function incluirServidor(vSQL: String): boolean;

    function incluirDatas_OLD
    (idPessoal, idServidor, Dt_NomeacaoCargo,
    Dt_NomeacaoCargoDODF, Dt_PosseCargo,
    Dt_ExercicioCargo, Dt_PrimeiroExercicioGDF,
    Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF,
    Dt_PosseFuncao, Dt_ExercicioFuncao, Dt_Digitacao: String): boolean;

    function incluirDatas(vSQL: String): boolean;



  end;

var
  dmCadastroServidor: TdmCadastroServidor;

implementation

uses udmPessoal, ufIncluirServidor, uDMConexao, DateUtils;
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

function TdmCadastroServidor.incluirDados_OLD(idPessoal, Endereco, Bairro,
  Cidade, UF, CEP, CI_Num, CI_UF, CI_Emissao, Naturalidade,
  Natural_UF, Pis_Pasep, TE_Num, TE_Zona, TE_Secao, TE_UF, TE_Emissao, Pai,
  Mae, idEstadoCivil, Conjuge, idBanco, Agencia, Conta, OAB_Num, OAB_Secao,
  Aspro_Opc, Grau, Curso, TipoSanguineo, Email: String): boolean;

begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := 'Set dateformat dmy'
            + ' Insert into '
            + ' tbDados'
            + ' (idPessoal, Endereco, Bairro, Cidade, UF,'
            + 'CEP, CI_Num, CI_UF, CI_Emissao,'
            + 'Naturalidade, Natural_UF, Pis_Pasep, TE_Num, TE_Zona,'
            + 'TE_Secao, TE_UF, TE_Emissao, Pai, Mae, idEstadoCivil,'
            + 'Conjuge, idBanco, Agencia, Conta, OAB_Num,'
            + 'OAB_Secao, Aspro_Opc, Grau, Curso, TipoSanguineo,'
            + 'Email)'

            + ' Values ('

            + QuotedStr(idPessoal)+ ', '
            + QuotedStr(Endereco) + ', '
            + QuotedStr(Bairro)   + ', '
            + QuotedStr(Cidade)   + ', '
            + QuotedStr(UF)       + ', '
            + QuotedStr(CEP)      + ', '
            + QuotedStr(CI_Num)   + ', '
            + QuotedStr(CI_UF)    + ', '
            + QuotedStr(CI_Emissao)    + ', '
            + QuotedStr(Naturalidade) + ', '
            + QuotedStr(Natural_UF)    + ', '
            + QuotedStr(Pis_Pasep)     + ', '
            + QuotedStr(TE_Num)        + ', '
            + QuotedStr(TE_Zona)       + ', '
            + QuotedStr(TE_Secao)      + ', '
            + QuotedStr(TE_UF)         + ', '
            + QuotedStr(TE_Emissao)     + ', '
            + QuotedStr(Pai)            + ', '
            + QuotedStr(Mae)            + ', '
            + QuotedStr(idEstadoCivil)  + ', '
            + QuotedStr(Conjuge)        + ', '
            + QuotedStr(idBanco)        + ', '
            + QuotedStr(Agencia)        + ', '
            + QuotedStr(Conta)          + ', '
            + QuotedStr(OAB_Num)        + ', '
            + QuotedStr(OAB_Secao)      + ', '
            + QuotedStr(Aspro_Opc)      + ', '
            + QuotedStr(Grau)          + ', '
            + QuotedStr(Curso)          + ', '
            + QuotedStr(TipoSanguineo)  + ', '
            + QuotedStr(Email)
            + ')';

       ExecSQL;

       frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);
      end;
    Result := true
  except
    Result := false;
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

        ExecSQL;

        frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);

      end;
    Result := true
  except
    Result := false;
  end;


end;

function TdmCadastroServidor.incluirServidor_OLD
  (idPessoal, idServidor, Matr_Origem, idCargo, Especialidade,
  idFuncao, idLotacao, CF_Num, Ramal, Sala,
  Classe, Padrao, Requisitado, OrgaoDeOrigem, 
  AuxTransporte, idUsuario, CargaHoraria: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := 'Set dateformat dmy'
            + ' Insert into '
            + ' tbServidor'

            + '(idPessoal, idServidor,'
            + ' Matr_Origem, idCargo,'
            + ' Especialidade, idFuncao, '
            + ' idLotacao, CF_Num, '
            + ' Ramal, Sala,'
            + ' Classe, Padrao,'
            + ' Requisitado, OrgaoDeOrigem,'
            + ' AuxTransporte, '
            + ' idUsuario, CargaHoraria)'

            + ' Values ('

            + QuotedStr(idPessoal) + ', '
            + QuotedStr(idServidor) + ', '
            + QuotedStr(Matr_Origem) + ', '
            + QuotedStr(idCargo) + ', '
            + QuotedStr(Especialidade) + ', '
            + QuotedStr(idFuncao) + ', '
            + QuotedStr(idLotacao) + ', '
            + QuotedStr(CF_Num) + ', '
            + QuotedStr(Ramal) + ', '
            + QuotedStr(Sala) + ', '
            + QuotedStr(Classe) + ', '
            + QuotedStr(Padrao) + ', '
            + QuotedStr(Requisitado) + ', '
            + QuotedStr(OrgaoDeOrigem) + ', '
            + QuotedStr(AuxTransporte) + ', '
            + QuotedStr(idUsuario) + ', '
            + QuotedStr(CargaHoraria)
            + ')';


        ExecSQL;

        frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);
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

    'SELECT Descricao'
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

       frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);

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
        frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);

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
        frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);

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
        frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);

        ExecSQL;

      end;
    Result := true
  except
    Result := false;
  end;

end;

function TdmCadastroServidor.incluirDatas(vSQL: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := vSQL;

        ExecSQL;

        frmIncluirServidor.mmoSQL.Lines.Add(SQL.Text);

      end;
    Result := true
  except
    Result := false;
  end;

end;

procedure TdmCadastroServidor.DataModuleCreate(Sender: TObject);
begin
  with DMConexao do
  begin
    qryPessoal.Connection := conPessoal;
    qryCargo.Connection := conPessoal;
    qryLotacao.Connection := conPessoal;
    qryEspecialidade.Connection := conPessoal;
    qryFuncao.Connection := conPessoal;
    qryUF.Connection := conPessoal;
    qryEstadoCivil.Connection := conPessoal;
    qryGrauInstrucao.Connection := conPessoal;
    qryCurso.Connection := conPessoal;
    qryBanco.Connection := conPessoal;
  end
end;

end.
