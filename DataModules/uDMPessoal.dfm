object dmPessoal: TdmPessoal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 193
  Top = 124
  Height = 177
  Width = 498
  object qryExecSQL: TADOQuery
    Parameters = <>
    Left = 72
    Top = 40
  end
  object qryPesquisa: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SET DATEFORMAT dmy '
      'SELECT  '
      'CASE '
      
        'WHEN serv.idCargo != '#39'999999'#39' AND Dt_Deslig_Cargo IS NULL THEN '#39 +
        'ATIVO'#39' '
      
        'WHEN serv.idCargo = '#39'999999'#39' AND Dt_Deslig_Cargo IS NOT NULL THE' +
        'N '#39'DESLIGADO DA FUN'#199#195'O'#39' '
      'WHEN serv.Requisitado = 1 THEN '#39'REQUISITADO'#39' '
      'WHEN serv.Dt_Deslig_Cargo is NOT NULL THEN '#39'DESLIGADO DO CARGO'#39' '
      'ELSE '#39'-'#39' '
      'END AS Status, '
      ''
      
        'Operador=dbo.F_RetornaOperador(serv.idUsuario), OEE.Descricao as' +
        ' ExercicioExterno, '
      
        'OEE.Sigla as siglaOrgaoExterno, PES.IDPESSOAL, PES.CPF, PES.NOME' +
        ', pes.idpessoal, pes.cpf, pes.nome, '
      ''
      
        'pes.dt_nascimento, serv.idServidor, serv.ID, serv.Matr_Origem, s' +
        'erv.idCargo, serv.Especialidade, '
      
        'serv.idFuncao, fun.idDFG as SimboloDFG, fun.id as idFun, serv.id' +
        'Lotacao, serv.CF_Num, serv.Ramal, '
      
        'serv.Sala, serv.Classe, serv.Padrao, serv.Dt_NomeacaoCargo, serv' +
        '.Dt_NomeacaoCargoDODF, '
      
        'serv.Dt_PosseCargo, serv.Dt_ExercicioCargo, serv.Dt_PrimeiroExer' +
        'cicioGDF, serv.Dt_Deslig_Cargo, '
      
        'serv.Dt_Deslig_CargoDODF, serv.Dt_NomeacaoFuncao, serv.Dt_Nomeac' +
        'aoFuncaoDODF, serv.Dt_PosseFuncao, '
      
        'serv.Dt_ExercicioFuncao, serv.Dt_Deslig_Funcao, serv.Dt_Deslig_F' +
        'uncaoDODF, serv.Dt_Falecimento, '
      
        'serv.Dt_Digitacao, serv.Requisitado, serv.OrgaoDeOrigem, serv.Dt' +
        '_FimRequisicao, serv.AuxTransporte, '
      
        'serv.idDesligamento, serv.idUsuario, serv.CargaHoraria, serv.Dt_' +
        'PromocaoCategoria2, serv.Dt_PromocaoSubProcurador, '
      
        'serv.AverbacaoGDF, serv.AverbacaoServPublico, serv.Dt_InicioCont' +
        'rato1_Estagiario, serv.Dt_TerminoContrato1_Estagiario, '
      
        'serv.Dt_InicioContrato2_Estagiario, serv.Dt_TerminoContrato2_Est' +
        'agiario, serv.Dt_InicioContrato3_Estagiario, '
      
        'serv.Dt_TerminoContrato3_Estagiario, serv.Dt_InicioContrato4_Est' +
        'agiario, serv.Dt_TerminoContrato4_Estagiario, '
      
        'serv.Supervisor_Estagiario, serv.DtNovaEstrutura, serv.CaminhoFo' +
        'llhaDePonto, serv.TurnoEstagio, serv.Semestre, '
      
        'serv.InstituicaoEnsino, serv.dt_InicioExercicioExterno, serv.dt_' +
        'TerminoExercicioExterno, serv.dt_NomeacaoExercicioExterno, '
      
        'serv.dt_PosseExercicioExterno, dados.Endereco, dados.Bairro, dad' +
        'os.Cidade, dados.UF, dados.CEP, dados.CI_Num, dados.CI_UF, '
      
        'dados.CI_Emissao, dados.Nacionalidade, dados.Naturalidade, dados' +
        '.Natural_UF, dados.Pis_Pasep, dados.TE_Num, dados.TE_Zona, '
      
        'dados.TE_Secao, dados.TE_UF, dados.TE_Emissao, dados.Pai, dados.' +
        'Mae, dados.idEstadoCivil,  '
      ''
      'CASE  WHEN civil.Descricao != '#39#39' '
      'THEN civil.Descricao  ELSE '#39'N'#195'O INFORMADO'#39' END AS EstadoCivil, '
      'dados.Conjuge, dados.idBanco, dados.Agencia, '
      
        'dados.Conta, dados.OAB_Num, dados.OAB_Secao, dados.Aspro_Opc, da' +
        'dos.Grau, dados.Curso, dados.TipoSanguineo, dados.Email, '
      
        'lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descr' +
        'icaoLotacao, car.descricao as descricaoCargo, '
      
        'fun.descricao as descricaoFuncao, desl.descricao as desligamento' +
        ' '
      ''
      'FROM tbPessoal as pes '
      ''
      'LEFT JOIN tbServidor as serv ON serv.idPessoal = pes.idPessoal '
      'LEFT JOIN tbDados as dados ON dados.idPessoal = pes.idPessoal '
      'LEFT JOIN tbLotacao as lot ON lot.idLotacao = serv.idLotacao'
      'LEFT JOIN tbCargo as car ON car.idCargo = serv.idCargo '
      'LEFT JOIN tbFuncao as fun ON fun.idFuncao = serv.idFuncao '
      
        'LEFT JOIN tbEstadoCivil as civil ON civil.idEstadoCivil = dados.' +
        'idEstadoCivil '
      
        'LEFT JOIN tbDesligamento as desl ON desl.idDesligamento = serv.i' +
        'dDesligamento '
      
        'LEFT JOIN tbOrgaoExercicioExterno oee ON oee.idOrgaoExercicioExt' +
        'erno = serv.idOrgaoExercicioExterno '
      ''
      'WHERE 1=1 and pes.nome like '#39'%ZYXWV%'#39'  ORDER BY pes.nome;'
      '')
    Left = 161
    Top = 41
    object qryPesquisaStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 19
    end
    object qryPesquisaOperador: TStringField
      FieldName = 'Operador'
      ReadOnly = True
      Size = 120
    end
    object qryPesquisaExercicioExterno: TStringField
      FieldName = 'ExercicioExterno'
      Size = 150
    end
    object qryPesquisasiglaOrgaoExterno: TStringField
      FieldName = 'siglaOrgaoExterno'
      Size = 50
    end
    object qryPesquisaIDPESSOAL: TStringField
      FieldName = 'IDPESSOAL'
      FixedChar = True
      Size = 5
    end
    object qryPesquisaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;_'
      FixedChar = True
      Size = 11
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qryPesquisaidpessoal_1: TStringField
      FieldName = 'idpessoal_1'
      FixedChar = True
      Size = 5
    end
    object qryPesquisacpf_1: TStringField
      FieldName = 'cpf_1'
      FixedChar = True
      Size = 11
    end
    object qryPesquisanome_1: TStringField
      FieldName = 'nome_1'
      Size = 60
    end
    object qryPesquisadt_nascimento: TDateTimeField
      FieldName = 'dt_nascimento'
    end
    object qryPesquisaidServidor: TStringField
      FieldName = 'idServidor'
      FixedChar = True
      Size = 10
    end
    object qryPesquisaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryPesquisaMatr_Origem: TStringField
      FieldName = 'Matr_Origem'
      FixedChar = True
      Size = 10
    end
    object qryPesquisaidCargo: TStringField
      FieldName = 'idCargo'
      FixedChar = True
      Size = 6
    end
    object qryPesquisaEspecialidade: TStringField
      FieldName = 'Especialidade'
      Size = 40
    end
    object qryPesquisaidFuncao: TStringField
      FieldName = 'idFuncao'
      FixedChar = True
      Size = 10
    end
    object qryPesquisaSimboloDFG: TStringField
      FieldName = 'SimboloDFG'
      Size = 7
    end
    object qryPesquisaidFun: TAutoIncField
      FieldName = 'idFun'
      ReadOnly = True
    end
    object qryPesquisaidLotacao: TStringField
      FieldName = 'idLotacao'
      FixedChar = True
      Size = 12
    end
    object qryPesquisaCF_Num: TStringField
      FieldName = 'CF_Num'
      FixedChar = True
      Size = 4
    end
    object qryPesquisaRamal: TStringField
      FieldName = 'Ramal'
      Size = 8
    end
    object qryPesquisaSala: TStringField
      FieldName = 'Sala'
      FixedChar = True
      Size = 4
    end
    object qryPesquisaClasse: TStringField
      FieldName = 'Classe'
      FixedChar = True
      Size = 1
    end
    object qryPesquisaPadrao: TStringField
      FieldName = 'Padrao'
      Size = 2
    end
    object qryPesquisaDt_NomeacaoCargo: TDateTimeField
      FieldName = 'Dt_NomeacaoCargo'
    end
    object qryPesquisaDt_NomeacaoCargoDODF: TDateTimeField
      FieldName = 'Dt_NomeacaoCargoDODF'
    end
    object qryPesquisaDt_PosseCargo: TDateTimeField
      FieldName = 'Dt_PosseCargo'
    end
    object qryPesquisaDt_ExercicioCargo: TDateTimeField
      FieldName = 'Dt_ExercicioCargo'
    end
    object qryPesquisaDt_PrimeiroExercicioGDF: TDateTimeField
      FieldName = 'Dt_PrimeiroExercicioGDF'
    end
    object qryPesquisaDt_Deslig_Cargo: TDateTimeField
      FieldName = 'Dt_Deslig_Cargo'
    end
    object qryPesquisaDt_Deslig_CargoDODF: TDateTimeField
      FieldName = 'Dt_Deslig_CargoDODF'
    end
    object qryPesquisaDt_NomeacaoFuncao: TDateTimeField
      FieldName = 'Dt_NomeacaoFuncao'
    end
    object qryPesquisaDt_NomeacaoFuncaoDODF: TDateTimeField
      FieldName = 'Dt_NomeacaoFuncaoDODF'
    end
    object qryPesquisaDt_PosseFuncao: TDateTimeField
      FieldName = 'Dt_PosseFuncao'
    end
    object qryPesquisaDt_ExercicioFuncao: TDateTimeField
      FieldName = 'Dt_ExercicioFuncao'
    end
    object qryPesquisaDt_Deslig_Funcao: TDateTimeField
      FieldName = 'Dt_Deslig_Funcao'
    end
    object qryPesquisaDt_Deslig_FuncaoDODF: TDateTimeField
      FieldName = 'Dt_Deslig_FuncaoDODF'
    end
    object qryPesquisaDt_Falecimento: TDateTimeField
      FieldName = 'Dt_Falecimento'
    end
    object qryPesquisaDt_Digitacao: TDateTimeField
      FieldName = 'Dt_Digitacao'
    end
    object qryPesquisaRequisitado: TBooleanField
      FieldName = 'Requisitado'
    end
    object qryPesquisaOrgaoDeOrigem: TStringField
      FieldName = 'OrgaoDeOrigem'
      Size = 100
    end
    object qryPesquisaDt_FimRequisicao: TDateTimeField
      FieldName = 'Dt_FimRequisicao'
    end
    object qryPesquisaAuxTransporte: TBooleanField
      FieldName = 'AuxTransporte'
    end
    object qryPesquisaidDesligamento: TStringField
      FieldName = 'idDesligamento'
      FixedChar = True
      Size = 3
    end
    object qryPesquisaidUsuario: TStringField
      FieldName = 'idUsuario'
      FixedChar = True
      Size = 11
    end
    object qryPesquisaCargaHoraria: TStringField
      FieldName = 'CargaHoraria'
      FixedChar = True
      Size = 2
    end
    object qryPesquisaDt_PromocaoCategoria2: TDateTimeField
      FieldName = 'Dt_PromocaoCategoria2'
    end
    object qryPesquisaDt_PromocaoSubProcurador: TDateTimeField
      FieldName = 'Dt_PromocaoSubProcurador'
    end
    object qryPesquisaAverbacaoGDF: TIntegerField
      FieldName = 'AverbacaoGDF'
    end
    object qryPesquisaAverbacaoServPublico: TIntegerField
      FieldName = 'AverbacaoServPublico'
    end
    object qryPesquisaDt_InicioContrato1_Estagiario: TDateTimeField
      FieldName = 'Dt_InicioContrato1_Estagiario'
    end
    object qryPesquisaDt_TerminoContrato1_Estagiario: TDateTimeField
      FieldName = 'Dt_TerminoContrato1_Estagiario'
    end
    object qryPesquisaDt_InicioContrato2_Estagiario: TDateTimeField
      FieldName = 'Dt_InicioContrato2_Estagiario'
    end
    object qryPesquisaDt_TerminoContrato2_Estagiario: TDateTimeField
      FieldName = 'Dt_TerminoContrato2_Estagiario'
    end
    object qryPesquisaDt_InicioContrato3_Estagiario: TDateTimeField
      FieldName = 'Dt_InicioContrato3_Estagiario'
    end
    object qryPesquisaDt_TerminoContrato3_Estagiario: TDateTimeField
      FieldName = 'Dt_TerminoContrato3_Estagiario'
    end
    object qryPesquisaDt_InicioContrato4_Estagiario: TDateTimeField
      FieldName = 'Dt_InicioContrato4_Estagiario'
    end
    object qryPesquisaDt_TerminoContrato4_Estagiario: TDateTimeField
      FieldName = 'Dt_TerminoContrato4_Estagiario'
    end
    object qryPesquisaSupervisor_Estagiario: TStringField
      FieldName = 'Supervisor_Estagiario'
      Size = 60
    end
    object qryPesquisaDtNovaEstrutura: TDateTimeField
      FieldName = 'DtNovaEstrutura'
    end
    object qryPesquisaCaminhoFollhaDePonto: TStringField
      FieldName = 'CaminhoFollhaDePonto'
      Size = 150
    end
    object qryPesquisaTurnoEstagio: TStringField
      FieldName = 'TurnoEstagio'
      Size = 100
    end
    object qryPesquisaSemestre: TStringField
      FieldName = 'Semestre'
      Size = 50
    end
    object qryPesquisaInstituicaoEnsino: TStringField
      FieldName = 'InstituicaoEnsino'
      Size = 150
    end
    object qryPesquisadt_InicioExercicioExterno: TDateTimeField
      FieldName = 'dt_InicioExercicioExterno'
    end
    object qryPesquisadt_TerminoExercicioExterno: TDateTimeField
      FieldName = 'dt_TerminoExercicioExterno'
    end
    object qryPesquisadt_NomeacaoExercicioExterno: TDateTimeField
      FieldName = 'dt_NomeacaoExercicioExterno'
    end
    object qryPesquisadt_PosseExercicioExterno: TDateTimeField
      FieldName = 'dt_PosseExercicioExterno'
    end
    object qryPesquisaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qryPesquisaBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qryPesquisaCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object qryPesquisaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qryPesquisaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object qryPesquisaCI_Num: TStringField
      FieldName = 'CI_Num'
      Size = 16
    end
    object qryPesquisaCI_UF: TStringField
      FieldName = 'CI_UF'
      FixedChar = True
      Size = 2
    end
    object qryPesquisaCI_Emissao: TDateTimeField
      FieldName = 'CI_Emissao'
    end
    object qryPesquisaNacionalidade: TStringField
      FieldName = 'Nacionalidade'
    end
    object qryPesquisaNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 30
    end
    object qryPesquisaNatural_UF: TStringField
      FieldName = 'Natural_UF'
      FixedChar = True
      Size = 2
    end
    object qryPesquisaPis_Pasep: TStringField
      FieldName = 'Pis_Pasep'
      FixedChar = True
      Size = 11
    end
    object qryPesquisaTE_Num: TStringField
      FieldName = 'TE_Num'
      FixedChar = True
      Size = 12
    end
    object qryPesquisaTE_Zona: TStringField
      FieldName = 'TE_Zona'
      FixedChar = True
      Size = 3
    end
    object qryPesquisaTE_Secao: TStringField
      FieldName = 'TE_Secao'
      FixedChar = True
      Size = 5
    end
    object qryPesquisaTE_UF: TStringField
      FieldName = 'TE_UF'
      FixedChar = True
      Size = 2
    end
    object qryPesquisaTE_Emissao: TDateTimeField
      FieldName = 'TE_Emissao'
    end
    object qryPesquisaPai: TStringField
      FieldName = 'Pai'
      Size = 50
    end
    object qryPesquisaMae: TStringField
      FieldName = 'Mae'
      Size = 50
    end
    object qryPesquisaidEstadoCivil: TStringField
      FieldName = 'idEstadoCivil'
      FixedChar = True
      Size = 1
    end
    object qryPesquisaEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      ReadOnly = True
      Size = 15
    end
    object qryPesquisaConjuge: TStringField
      FieldName = 'Conjuge'
      Size = 50
    end
    object qryPesquisaidBanco: TStringField
      FieldName = 'idBanco'
      FixedChar = True
      Size = 3
    end
    object qryPesquisaAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 4
    end
    object qryPesquisaConta: TStringField
      FieldName = 'Conta'
      FixedChar = True
      Size = 7
    end
    object qryPesquisaOAB_Num: TStringField
      FieldName = 'OAB_Num'
      FixedChar = True
      Size = 10
    end
    object qryPesquisaOAB_Secao: TStringField
      FieldName = 'OAB_Secao'
      FixedChar = True
      Size = 3
    end
    object qryPesquisaAspro_Opc: TBooleanField
      FieldName = 'Aspro_Opc'
    end
    object qryPesquisaGrau: TStringField
      FieldName = 'Grau'
    end
    object qryPesquisaCurso: TStringField
      FieldName = 'Curso'
      Size = 60
    end
    object qryPesquisaTipoSanguineo: TStringField
      FieldName = 'TipoSanguineo'
      Size = 3
    end
    object qryPesquisaEmail: TWideStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 40
    end
    object qryPesquisaidlotacao_1: TStringField
      FieldName = 'idlotacao_1'
      FixedChar = True
      Size = 12
    end
    object qryPesquisaSiglaLotacao: TStringField
      FieldName = 'SiglaLotacao'
      Size = 50
    end
    object qryPesquisadescricaoLotacao: TStringField
      FieldName = 'descricaoLotacao'
      Size = 200
    end
    object qryPesquisadescricaoCargo: TStringField
      FieldName = 'descricaoCargo'
      Size = 50
    end
    object qryPesquisadescricaoFuncao: TStringField
      FieldName = 'descricaoFuncao'
      Size = 200
    end
    object qryPesquisadesligamento: TStringField
      FieldName = 'desligamento'
      Size = 80
    end
  end
end
