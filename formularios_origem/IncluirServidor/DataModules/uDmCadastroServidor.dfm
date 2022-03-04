object dmCadastroServidor: TdmCadastroServidor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 946
  Top = 178
  Height = 547
  Width = 420
  object qryPessoal: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idservidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'serv.idUsuario, pes1.Nome AS Operador,'
      ' OEE.Descricao as ExercicioExterno, PES.IDPESSOAL, '
      'PES.CPF, PES.NOME,'
      '  PES.DT_NASCIMENTO,'
      '  serv.*, DADOS.*, LOT.IDLOTACAO, LOT.DESCRICAO'
      '  FROM tbPessoal AS pes'
      
        '  INNER JOIN tbServidor AS serv ON serv.idPessoal = pes.idPessoa' +
        'l'
      '  LEFT JOIN tbDados AS dados on dados.idPessoal = pes.idPessoal'
      '  LEFT JOIN tbLotacao as lot on lot.idLotacao = serv.idLotacao'
      '  LEFT JOIN tbOrgaoExercicioExterno oee'
      '  ON oee.idOrgaoExercicioExterno = serv.idOrgaoExercicioExterno'
      ' LEFT JOIN tbPessoal as pes1 on pes1.CPF = serv.idUsuario'
      '  '
      '  WHERE 1=1'
      ' AND pes.idpessoal = :idPessoal '
      ' AND serv.idservidor = :idservidor '
      '  ORDER BY pes.Nome')
    Left = 34
    Top = 33
  end
  object dsPessoal: TDataSource
    DataSet = qryPessoal
    Left = 120
    Top = 33
  end
  object qryCargo: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 32
    Top = 96
  end
  object dsCargo: TDataSource
    DataSet = qryCargo
    Left = 120
    Top = 96
  end
  object qryLotacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 32
    Top = 152
  end
  object dsLotacao: TDataSource
    DataSet = qryLotacao
    Left = 120
    Top = 152
  end
  object qryEspecialidade: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 32
    Top = 208
  end
  object dsEspecialidade: TDataSource
    DataSet = qryEspecialidade
    Left = 120
    Top = 208
  end
  object qryFuncao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 32
    Top = 264
  end
  object dsFuncao: TDataSource
    DataSet = qryFuncao
    Left = 120
    Top = 264
  end
  object qryUF: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 32
    Top = 320
  end
  object dsNatural_UF: TDataSource
    DataSet = qryUF
    Left = 120
    Top = 320
  end
  object qryEstadoCivil: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 32
    Top = 376
  end
  object dsEstadoCivil: TDataSource
    DataSet = qryEstadoCivil
    Left = 120
    Top = 376
  end
  object qryExecSQL: TADOQuery
    Parameters = <>
    Left = 234
    Top = 36
  end
  object qryGrauInstrucao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 232
    Top = 96
  end
  object dsGrauInstrucao: TDataSource
    DataSet = qryGrauInstrucao
    Left = 320
    Top = 96
  end
  object qryCurso: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 232
    Top = 152
  end
  object dsCurso: TDataSource
    DataSet = qryCurso
    Left = 320
    Top = 152
  end
  object qryBanco: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 232
    Top = 210
  end
  object dsBanco: TDataSource
    DataSet = qryBanco
    Left = 320
    Top = 210
  end
end
