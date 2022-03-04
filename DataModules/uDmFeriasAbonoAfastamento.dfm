object dmFeriasAbonoAfastamento: TdmFeriasAbonoAfastamento
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 192
  Top = 117
  Height = 362
  Width = 561
  object qryPesquisa: TADOQuery
    Parameters = <>
    Left = 72
    Top = 24
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 152
    Top = 24
  end
  object qryFerias: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'Fer.idPessoal, Fer.idExercicio, Fer.idPeriodo, Fer.idParcela,'
      
        'Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino, Fer.idServidor' +
        ','
      'Fer.Dt_InicioReagendamento, Fer.Dt_TerminoReagendamento,'
      'Fer.Observacao,'
      'Fer.nProcessoSEI,'
      'Per.idPeriodo, Per.descricao as descricaoPeriodo,'
      'Par.idParcela, Par.descricao as descricaoParcela,'
      'Tipo.idTipoParcela, Tipo.descricao as descricaoTipo'
      'FROM tbFerias as Fer'
      
        'INNER JOIN tbFeriasPeriodo as Per on Per.idPeriodo = Fer.idPerio' +
        'do'
      
        'INNER JOIN tbFeriasParcela as Par on Par.idParcela = Fer.idParce' +
        'la'
      
        'INNER JOIN tbFeriasTipoParcela as Tipo on Tipo.idTipoParcela = F' +
        'er.idTipoParcela'
      'WHERE 1=1'
      'ORDER BY Fer.idExercicio desc'
      '')
    Left = 72
    Top = 96
    object qryFeriasidPessoal: TStringField
      FieldName = 'idPessoal'
      FixedChar = True
      Size = 5
    end
    object qryFeriasidExercicio: TStringField
      FieldName = 'idExercicio'
      FixedChar = True
      Size = 4
    end
    object qryFeriasidPeriodo: TStringField
      FieldName = 'idPeriodo'
      FixedChar = True
      Size = 1
    end
    object qryFeriasidParcela: TStringField
      FieldName = 'idParcela'
      FixedChar = True
      Size = 1
    end
    object qryFeriasidTipoParcela: TStringField
      FieldName = 'idTipoParcela'
      FixedChar = True
      Size = 1
    end
    object qryFeriasDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object qryFeriasDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object qryFeriasidServidor: TStringField
      FieldName = 'idServidor'
      FixedChar = True
      Size = 10
    end
    object qryFeriasDt_InicioReagendamento: TDateTimeField
      FieldName = 'Dt_InicioReagendamento'
    end
    object qryFeriasDt_TerminoReagendamento: TDateTimeField
      FieldName = 'Dt_TerminoReagendamento'
    end
    object qryFeriasObservacao: TStringField
      FieldName = 'Observacao'
      Size = 300
    end
    object qryFeriasnProcessoSEI: TStringField
      FieldName = 'nProcessoSEI'
      EditMask = '00000-00000000/0000-00;0;_'
      Size = 80
    end
    object qryFeriasidPeriodo_1: TStringField
      FieldName = 'idPeriodo_1'
      FixedChar = True
      Size = 1
    end
    object qryFeriasdescricaoPeriodo: TStringField
      FieldName = 'descricaoPeriodo'
      Size = 10
    end
    object qryFeriasidParcela_1: TStringField
      FieldName = 'idParcela_1'
      FixedChar = True
      Size = 1
    end
    object qryFeriasdescricaoParcela: TStringField
      FieldName = 'descricaoParcela'
      FixedChar = True
      Size = 10
    end
    object qryFeriasidTipoParcela_1: TStringField
      FieldName = 'idTipoParcela_1'
      FixedChar = True
      Size = 1
    end
    object qryFeriasdescricaoTipo: TStringField
      FieldName = 'descricaoTipo'
      Size = 10
    end
  end
  object dsFerias: TDataSource
    DataSet = qryFerias
    Left = 152
    Top = 96
  end
  object qryAfastamento: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'Saf.idPessoal, Saf.idServidor, Saf.idExercicio, '
      'Saf.Dt_Inicio, Saf.Dt_Termino,'
      'Saf.Observacao,'
      'Saf.nProcessoSEI,'
      'Afa.idAfastamento, Afa.Descricao as descricaoAfastamento,'
      'Afa.Codigo, Afa.Valido, Afa.Abreviatura'
      'FROM tbServ_Afast as Saf'
      
        'LEFT JOIN tbAfastamento as Afa on Afa.idAfastamento = Saf.idAfas' +
        'tamento'
      'WHERE 1=1'
      'ORDER BY Saf.idExercicio desc'
      '')
    Left = 72
    Top = 168
    object qryAfastamentoidPessoal: TStringField
      FieldName = 'idPessoal'
      FixedChar = True
      Size = 5
    end
    object qryAfastamentoidServidor: TStringField
      FieldName = 'idServidor'
      FixedChar = True
      Size = 10
    end
    object qryAfastamentoidExercicio: TStringField
      FieldName = 'idExercicio'
      FixedChar = True
      Size = 4
    end
    object qryAfastamentoDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object qryAfastamentoDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object qryAfastamentoObservacao: TStringField
      FieldName = 'Observacao'
      Size = 300
    end
    object qryAfastamentonProcessoSEI: TStringField
      FieldName = 'nProcessoSEI'
      Size = 80
    end
    object qryAfastamentoidAfastamento: TStringField
      FieldName = 'idAfastamento'
      FixedChar = True
      Size = 4
    end
    object qryAfastamentodescricaoAfastamento: TStringField
      FieldName = 'descricaoAfastamento'
      Size = 80
    end
    object qryAfastamentoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object qryAfastamentoValido: TBooleanField
      FieldName = 'Valido'
    end
    object qryAfastamentoAbreviatura: TStringField
      FieldName = 'Abreviatura'
    end
  end
  object dsAfastamento: TDataSource
    DataSet = qryAfastamento
    Left = 152
    Top = 168
  end
  object qryAbonoAnual: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'Abo.idPessoal, Abo.idExercicio,'
      'Abo.nProcessoSEI,'
      'Abo.Dt_1, Abo.Dt_2, Abo.Dt_3, Abo.Dt_4, Abo.Dt_5'
      'FROM tbAbono as Abo'
      'WHERE 1=1'
      'ORDER BY Abo.idExercicio desc')
    Left = 72
    Top = 240
    object qryAbonoAnualidPessoal: TStringField
      FieldName = 'idPessoal'
      FixedChar = True
      Size = 5
    end
    object qryAbonoAnualidExercicio: TStringField
      FieldName = 'idExercicio'
      FixedChar = True
      Size = 4
    end
    object qryAbonoAnualnProcessoSEI: TStringField
      FieldName = 'nProcessoSEI'
      EditMask = '00000-00000000/0000-00;0;_'
      Size = 80
    end
    object qryAbonoAnualDt_1: TDateTimeField
      FieldName = 'Dt_1'
    end
    object qryAbonoAnualDt_2: TDateTimeField
      FieldName = 'Dt_2'
    end
    object qryAbonoAnualDt_3: TDateTimeField
      FieldName = 'Dt_3'
    end
    object qryAbonoAnualDt_4: TDateTimeField
      FieldName = 'Dt_4'
    end
    object qryAbonoAnualDt_5: TDateTimeField
      FieldName = 'Dt_5'
    end
  end
  object dsAbonoAnual: TDataSource
    DataSet = qryAbonoAnual
    Left = 152
    Top = 240
  end
  object qryTipoAfastamento: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 168
  end
  object dsTipoAfastamento: TDataSource
    DataSet = qryTipoAfastamento
    Left = 408
    Top = 168
  end
end
