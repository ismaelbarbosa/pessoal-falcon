object dmPesComplemento: TdmPesComplemento
  OldCreateOrder = False
  Left = 29
  Top = 22
  Height = 706
  Width = 995
  object qryFeriasInserir: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryFeriasInserirAfterOpen
    AfterInsert = qryFeriasInserirAfterInsert
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'idExercicio'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'idPeriodo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'idParcela'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'Select Fer.idPessoal, Fer.idServidor,'
      '           Fer.nProcessoSEI,'
      '           Fer.idExercicio, Fer.idPeriodo, Fer.idParcela,'
      '           Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino,'
      '           Fer.Decimo, Fer.Antecipacao, Fer.Abono, '
      
        '           Fer.Dt_InicioReagendamento, Fer.Dt_TerminoReagendamen' +
        'to,'
      '           Fer.Observacao'
      'From tbFerias as Fer'
      'Where Fer.idPessoal = :idPessoal and'
      '            Fer.idServidor = :idServidor and'
      '            Fer.idExercicio = :idExercicio and'
      '            Fer.idPeriodo = :idPeriodo and'
      '            Fer.idParcela = :idParcela;')
    Left = 30
    Top = 14
  end
  object qryFeriasExibir: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryFeriasExibirAfterOpen
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select  Fer.idPessoal, Fer.idServidor,'
      '        Fer.nProcessoSEI,'
      '        Fer.idExercicio, Fer.idPeriodo, Fer.idParcela,'
      '        Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino,'
      #9#39'Abono'#39' = case'
      '                  when Fer.Abono = 0 then '#39'N'#227'o'#39' '
      '   '#9'          when Fer.Abono = 1 then '#39'Sim'#39
      '          '#9'  else '#39'N'#227'o informado'#39'  '
      '           '#9'  end,'
      #9#39'Decimo'#39' = case'
      '                   when Fer.Decimo = 0 then '#39'N'#227'o'#39' '
      '   '#9'           when Fer.Decimo = 1 then '#39'Sim'#39
      '          '#9'   else '#39'N'#227'o informado'#39'  '
      '           '#9'   end,'
      #9#39'Antecipacao'#39' = case'
      '                   '#9'when Fer.Antecipacao = 0 then '#39'N'#227'o'#39' '
      '   '#9'          '#9'when Fer.Antecipacao = 1 then '#39'Sim'#39
      '          '#9'  '#9'else '#39'N'#227'o informado'#39'  '
      '           '#9'  '#9'end,'
      '        FerPe.idPeriodo, FerPe.Descricao,'
      '        FerPa.idParcela, FerPa.Descricao,'
      '        FerTipoPa.idTipoParcela, FerTipoPa.Descricao, '
      '        Fer.Dt_InicioReagendamento, Fer.Dt_TerminoReagendamento,'
      '        Fer.Observacao'
      'from    tbFerias as Fer, tbFeriasPeriodo as FerPe,'
      #9'tbFeriasParcela as FerPa, tbFeriasTipoParcela as FerTipoPa'
      'where'#9'Fer.idPeriodo = FerPe.idPeriodo and'
      #9'Fer.idParcela = FerPa.idParcela and'
      #9'Fer.idTipoParcela = FerTipoPa.idTipoParcela and'
      #9'Fer.idPessoal = :idpessoal and'
      '                Fer.idServidor = :idservidor'
      'order by Fer.idExercicio desc;')
    Left = 29
    Top = 66
  end
  object dsqryFeriasInserir: TDataSource
    DataSet = qryFeriasInserir
    Left = 130
    Top = 14
  end
  object dsqryFeriasExibir: TDataSource
    DataSet = qryFeriasExibir
    Left = 130
    Top = 66
  end
  object qrySelPeriodo: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tbFeriasPeriodo;')
    Left = 29
    Top = 113
  end
  object dsqrySelPeriodo: TDataSource
    DataSet = qrySelPeriodo
    Left = 130
    Top = 113
  end
  object dsqrySelParcela: TDataSource
    DataSet = qrySelParcela
    Left = 131
    Top = 169
  end
  object qrySelParcela: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tbFeriasParcela;')
    Left = 30
    Top = 169
  end
  object qrySelTipoParcela: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tbFeriasTipoParcela'
      'ORDER BY idTipoParcela;')
    Left = 30
    Top = 222
  end
  object dsqrySelTipoParcela: TDataSource
    DataSet = qrySelTipoParcela
    Left = 131
    Top = 222
  end
  object qryFeriasDuplicadas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpessoal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idServidor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idExercicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idPeriodo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idParcela'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'Select Fer.idPessoal, Fer.idServidor, '
      '           Fer.idExercicio, Fer.idPeriodo, Fer.idParcela,'
      '           Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino,'
      '           Fer.Decimo, Fer.Antecipacao'
      'From tbFerias as Fer'
      'Where Fer.idPessoal = :idPessoal and'
      '            Fer.idservidor = :idServidor and'
      '            Fer.idExercicio = :idExercicio and'
      '            Fer.idPeriodo = :idPeriodo and'
      '            Fer.idParcela = :idParcela;')
    SQLConnection = dmPessoal.cntPesqPessoal
    Left = 717
    Top = 15
  end
  object cmdExcluiFerias: TADOCommand
    CommandText = 
      'delete from  tbferias'#13#10'where idpessoal = :idpessoal and'#13#10'       ' +
      '    idservidor = :idservidor;'#13#10
    Connection = dmPessoal.cntPessoal
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idservidor'
        Size = -1
        Value = Null
      end>
    Left = 724
    Top = 79
  end
  object qryPesqFerias: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqFeriasAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'select  Fer.idPessoal, Fer.idExercicio, Fer.idPeriodo, Fer.idPar' +
        'cela,'
      
        '        Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino, Fer.id' +
        'Servidor,'
      '        FerPe.idPeriodo, FerPe.Descricao,'
      '        FerPa.idParcela, FerPa.Descricao,'
      '        FerTipoPa.idTipoParcela, FerTipoPa.Descricao, '
      '        Fer.Dt_InicioReagendamento, Fer.Dt_TerminoReagendamento,'
      '        Fer.Observacao,'
      '        Fer.nProcessoSEI'
      'from    tbFerias as Fer, tbFeriasPeriodo as FerPe,'
      #9'tbFeriasParcela as FerPa, tbFeriasTipoParcela as FerTipoPa'
      'where'#9'Fer.idPessoal = :idPessoal and'
      '                Fer.idServidor = :idServidor and'
      '                Fer.idPeriodo = FerPe.idPeriodo and'
      #9'Fer.idParcela = FerPa.idParcela and'
      #9'Fer.idTipoParcela = FerTipoPa.idTipoParcela'
      'order by Fer.idExercicio desc;')
    Left = 461
    Top = 129
  end
  object dsqryPesqFerias: TDataSource
    DataSet = qryPesqFerias
    Left = 574
    Top = 129
  end
  object cmdExcluiAbono: TADOCommand
    CommandText = 
      'delete from  tbabono'#13#10'where idpessoal = :idpessoal and'#13#10'        ' +
      '   idservidor = :idservidor;'#13#10
    Connection = dmPessoal.cntPessoal
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idservidor'
        Size = -1
        Value = Null
      end>
    Left = 633
    Top = 80
  end
  object qryAbonoInserir: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryAbonoInserirAfterOpen
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'idExercicio'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select Abon.idPessoal, Abon.idExercicio, Abon.idServidor,'
      '           nProcessoSEI,'
      '           Abon.Dt_1, Abon.Dt_2, Abon.Dt_3,'
      '           Abon.Dt_4, Abon.Dt_5'
      'From tbAbono as Abon'
      'Where Abon.idPessoal = :idPessoal and'
      '            Abon.idServidor = :idServidor and'
      '            Abon.idExercicio = :idExercicio')
    Left = 30
    Top = 280
  end
  object dsqryAbonoInserir: TDataSource
    DataSet = qryAbonoInserir
    Left = 130
    Top = 280
  end
  object qryAbonoExibir: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryAbonoExibirAfterOpen
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select Abon.idPessoal, Abon.idExercicio, Abon.idServidor,'
      '           nProcessoSEI,'
      '           Abon.Dt_1, Abon.Dt_2, Abon.Dt_3,'
      '           Abon.Dt_4, Abon.Dt_5'
      'From tbAbono as Abon'
      'Where Abon.idPessoal = :idPessoal and'
      '           Abon.idServidor = :idServidor'
      'order by Abon.idExercicio desc;')
    Left = 29
    Top = 332
  end
  object dsqryAbonoExibir: TDataSource
    AutoEdit = False
    DataSet = qryAbonoExibir
    Left = 130
    Top = 332
  end
  object qryPesqAbono: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqAbonoAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'Select Abon.idPessoal, Abon.idExercicio, Abon.Dt_1, Abon.Dt_2, A' +
        'bon.Dt_3,'
      '           Abon.Dt_4, Abon.Dt_5, Abon.idServidor,'
      '           nProcessoSEI'
      'From tbAbono as Abon'
      'Where Abon.idPessoal = :idPessoal and'
      '           Abon.idServidor = :idServidor'
      'order by Abon.idExercicio desc;')
    Left = 461
    Top = 177
  end
  object dsqryPesqAbono: TDataSource
    DataSet = qryPesqAbono
    Left = 574
    Top = 177
  end
  object qryAbonoDuplicado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpessoal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idServidor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idExercicio'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'Select Abon.idPessoal, Abon.idExercicio, Abon.idServidor'
      'From tbAbono as Abon'
      'Where Abon.idPessoal = :idPessoal and'
      '            Abon.idServidor = :idServidor and'
      '            Abon.idExercicio = :idExercicio;')
    SQLConnection = dmPessoal.cntPesqPessoal
    Left = 510
    Top = 15
  end
  object qryAfastamentoInserir: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryAfastamentoInserirAfterOpen
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idservidor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'idafastamento'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'dt_inicio'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select    tbserv_afast.idpessoal, tbserv_afast.idafastamento, '
      '             tbserv_afast.dt_inicio, tbserv_afast.dt_termino,'
      '             tbserv_afast.idservidor,'
      '             tbserv_afast.idExercicio,'
      '             tbserv_afast.nProcessoSEI,'
      '             tbserv_afast.Observacao'
      'from tbserv_afast'
      'where tbserv_afast.idpessoal = :idpessoal and'
      '           tbserv_afast.idservidor = :idservidor and'
      '      tbserv_afast.idafastamento = :idafastamento and'
      '      tbserv_afast.dt_inicio = :dt_inicio'
      'order by tbserv_afast.dt_inicio;')
    Left = 41
    Top = 382
  end
  object dsqryAfastamentoInserir: TDataSource
    DataSet = qryAfastamentoInserir
    Left = 163
    Top = 382
  end
  object qryAfastamentoExibir: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryAfastamentoExibirAfterOpen
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idservidor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select tbafastamento.idafastamento, tbafastamento.descricao, '
      '              tbAfastamento.Codigo,'
      
        '              tbserv_afast.idpessoal, tbserv_afast.idafastamento' +
        ', '
      '             tbserv_afast.dt_inicio, tbserv_afast.dt_termino,'
      '             tbserv_afast.idExercicio,'
      '             tbserv_afast.idservidor,'
      '             tbserv_afast.nProcessoSEI,'
      '             tbserv_afast.Observacao'
      'from tbafastamento, tbserv_afast'
      'where tbserv_afast.idpessoal = :idpessoal and'
      '           tbserv_afast.idservidor = :idservidor and'
      
        '      tbafastamento.idafastamento = tbserv_afast.idafastamento a' +
        'nd'
      '      tbafastamento.idafastamento not in ('#39'721'#39')'
      'order by tbserv_afast.dt_inicio desc;')
    Left = 40
    Top = 434
  end
  object dsqryAfastamentoExibir: TDataSource
    DataSet = qryAfastamentoExibir
    Left = 163
    Top = 434
  end
  object qrySelAfastamento: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tbafastamento.idafastamento, tbafastamento.descricao'
      ' from tbafastamento'
      'where tbafastamento.valido = 1'
      'order by descricao;')
    Left = 40
    Top = 482
  end
  object dsqrySelAfastamento: TDataSource
    DataSet = qrySelAfastamento
    Left = 163
    Top = 482
  end
  object qryAfastamentoDuplicado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpessoal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idservidor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idafastamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_inicio'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select    tbserv_afast.idpessoal, tbserv_afast.idafastamento, '
      '             tbserv_afast.dt_inicio'
      'from tbserv_afast'
      'where tbserv_afast.idpessoal = :idpessoal and'
      '          tbserv_afast.idservidor = :idservidor and '
      '      tbserv_afast.idafastamento = :idafastamento and'
      '      tbserv_afast.dt_inicio = :dt_inicio and'
      '      tbserv_afast.idafastamento not in ('#39'1301'#39', '#39'721'#39');')
    SQLConnection = dmPessoal.cntPesqPessoal
    Left = 494
    Top = 78
  end
  object qryPesqAfastamento: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqAfastamentoAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'select tbafastamento.idafastamento, tbafastamento.descricao,'
      '              tbAfastamento.Codigo,'
      
        '              tbserv_afast.idpessoal, tbserv_afast.idafastamento' +
        ', '
      
        '              tbserv_afast.dt_inicio, tbserv_afast.dt_termino, t' +
        'bserv_afast.idExercicio,'
      '             tbserv_afast.nProcessoSEI,'
      '             tbserv_afast.Observacao'
      'from tbafastamento, tbserv_afast'
      'where tbserv_afast.idpessoal = :idpessoal and'
      
        '      tbafastamento.idafastamento = tbserv_afast.idafastamento a' +
        'nd'
      '      tbafastamento.idafastamento not in ('#39'721'#39')'
      'order by tbserv_afast.dt_inicio desc;')
    Left = 461
    Top = 226
  end
  object dsqryPesqAfastamento: TDataSource
    DataSet = qryPesqAfastamento
    Left = 574
    Top = 226
  end
  object qryPesqCargo: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqAfastamentoAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'idcargo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'select tbcargo.idcargo, tbcargo.descricao'
      'from tbcargo'
      'where tbcargo.idcargo = :idcargo;')
    Left = 461
    Top = 274
  end
  object dsqryPesqCargo: TDataSource
    DataSet = qryPesqCargo
    Left = 574
    Top = 274
  end
  object qryPesqLotacao: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqAfastamentoAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'idlotacao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select tblotacao.idlotacao, tblotacao.descricao, tbLotacao.sigla'
      'from tblotacao'
      'where tblotacao.idlotacao = :idlotacao;')
    Left = 461
    Top = 324
  end
  object dsqryPesqLotacao: TDataSource
    DataSet = qryPesqLotacao
    Left = 574
    Top = 324
  end
  object qryPesqFuncao: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqAfastamentoAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'idfuncao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'select tbfuncao.idfuncao, tbfuncao.descricao'
      'from tbfuncao'
      'where tbfuncao.idfuncao = :idfuncao;')
    Left = 461
    Top = 373
  end
  object dsqryPesqFuncao: TDataSource
    DataSet = qryPesqFuncao
    Left = 574
    Top = 373
  end
  object dsqryPesqDesligamento: TDataSource
    DataSet = qryPesqDesligamento
    Left = 574
    Top = 419
  end
  object qryPesqDesligamento: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqAfastamentoAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'iddesligamento'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'select tbdesligamento.iddesligamento, tbdesligamento.descricao'
      'from tbdesligamento'
      'where tbdesligamento.iddesligamento = :iddesligamento;')
    Left = 461
    Top = 419
  end
  object qryPesqEstadoCivil: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    AfterOpen = qryPesqAfastamentoAfterOpen
    DataSource = dmPessoal.dsqryPesquisa
    Parameters = <
      item
        Name = 'idestadocivil'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select tbestadocivil.idestadocivil, tbestadocivil.descricao'
      'from tbestadocivil'
      'where tbestadocivil.idestadocivil = :idestadocivil;')
    Left = 461
    Top = 468
  end
  object dsqryPesqEstadoCivil: TDataSource
    DataSet = qryPesqEstadoCivil
    Left = 574
    Top = 468
  end
  object qrySelGrauInstrucao: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From tbgrau_instrucao')
    Left = 234
    Top = 14
  end
  object dsqrySelGrauInstrucao: TDataSource
    DataSet = qrySelGrauInstrucao
    Left = 345
    Top = 14
  end
  object qrySelCurso: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From tbCurso')
    Left = 234
    Top = 67
  end
  object dsqrySelCurso: TDataSource
    DataSet = qrySelCurso
    Left = 334
    Top = 67
  end
  object qryMax_CF_Num: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select max(CF_Num) as Maximo'
      'from tbServidor;')
    Left = 312
    Top = 176
  end
  object qryMaxCF_Proc_Num: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select max(CF_Num) as Maximo'
      'from tbServidor as serv'
      'where left(serv.idcargo, 2) in ('#39'pa'#39','#39'pb'#39','#39'pf'#39','#39'sp'#39');')
    Left = 312
    Top = 237
  end
  object qrySubstProcurador: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idSubstituido'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'select serv.idServidor '#39'MATRICULA'#39', procSubst.substituto, '
      '           lot.descricao '#39'LOTACAO'#39', procSubst.Substituido,'
      
        '           procSubst.inicio, procSubst.termino, procSubst.idpess' +
        'oalsubstituido'
      'from tbservidor serv, tblotacao lot,'
      
        '  (select subst.idPessoalsubstituto, pesSubstituto.nome '#39'SUBSTIT' +
        'UTO'#39', '
      '    pesSubstituido.nome '#39'SUBSTITUIDO'#39','
      '    subst.dt_Inicio '#39'INICIO'#39', subst.dt_termino '#39'TERMINO'#39', '
      '    subst.idpessoalsubstituido'
      '    from tbsubstprocurador subst, tbpessoal pesSubstituto, '
      '            tbpessoal pesSubstituido'
      
        '    where pesSubstituto.idPessoal = subst.idPessoalSubstituto an' +
        'd'
      
        '    pesSubstituido.idPessoal = subst.idPessoalSubstituido) procS' +
        'ubst'
      'where serv.idPessoal = procSubst.idPessoalsubstituto and'
      '            serv.idLotacao = lot.idLotacao and'
      '            serv.iddesligamento is null and'
      '            serv.idPessoal = :idSubstituido'
      'order by procSubst.Inicio, procSubst.Termino')
    Left = 712
    Top = 152
  end
  object dsqrySubstProcurador: TDataSource
    DataSet = qrySubstProcurador
    Left = 821
    Top = 152
  end
  object qryHist_Lotacao: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idpes'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idserv'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select idPessoal, idServidor, idLotacao, dt_Lotacao'
      'from tbHist_Lotacao'
      'where idPessoal = :idpes and'
      '           idServidor = :idserv'
      'order by dt_Lotacao')
    Left = 713
    Top = 218
  end
  object dsqryHist_Lotacao: TDataSource
    DataSet = qryHist_Lotacao
    Left = 816
    Top = 218
  end
  object sproc_DataDisponivel: TADOStoredProc
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    ProcedureName = 'sproc_DataDisponivel;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DataInicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DataTermino'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 763
    Top = 353
  end
  object SProc_DadosUsuarioLogado: TADOStoredProc
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    ProcedureName = 'SProc_DadosUsuarioLogado;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Login'
        Attributes = [paNullable]
        DataType = ftString
        Size = 60
        Value = Null
      end
      item
        Name = '@idAplicacao'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end>
    Left = 787
    Top = 521
  end
  object qryRetornaAfastamentosEFeriasCoincidentes: TADOQuery
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'codigoAfastamento'
        Size = -1
        Value = Null
      end
      item
        Name = 'DT_INICIO'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'DT_TERMINO'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'DT_INICIOATUAL'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'DT_TERMINOATUAL'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SET DATEFORMAT DMY'
      'SELECT * '
      'FROM F_RetornaAfastamentosFeriasCoincidentes(:idPessoal, '
      
        '     :codigoAfastamento, :DT_INICIO, :DT_TERMINO, :DT_INICIOATUA' +
        'L, '
      '     :DT_TERMINOATUAL)')
    Left = 110
    Top = 542
  end
  object dsqryRetornaAfastamentosEFeriasCoincidentes: TDataSource
    DataSet = qryRetornaAfastamentosEFeriasCoincidentes
    Left = 341
    Top = 542
  end
  object qryTranspostoCarreiraProcurador: TADOQuery
    Active = True
    Connection = dmPessoal.cntPessoal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'SELECT PES.IDPESSOAL '
      'FROM TBPESSOAL PES'
      'WHERE PES.IDPESSOAL IN ('#39'01584'#39', '#39'01588'#39', '
      '    '#39'01590'#39', '#39'01587'#39', '#39'01616'#39', '#39'01586'#39', '
      '    '#39'01582'#39', '#39'01599'#39') AND'
      #9'PES.IDPESSOAL = :idPessoal')
    Left = 492
    Top = 583
  end
end
