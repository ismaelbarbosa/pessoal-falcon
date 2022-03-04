object dmExibirTabelas: TdmExibirTabelas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 441
  Top = 81
  Height = 530
  Width = 487
  object qryHistoricoFuncoes: TADOQuery
    DataSource = dsPessoal
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
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      ''
      '     CONVERT(char(10), dt_NomeacaoFuncao, 103),'
      '     CONVERT(char(10), dt_NomeacaoFuncaoDODF, 103),'
      '     CONVERT(char(10), dt_PosseFuncao, 103),'
      '     CONVERT(char(10), dt_ExercicioFuncao, 103),'
      '     CONVERT(char(10), dt_Deslig_Funcao, 103),'
      '     CONVERT(char(10), dt_Deslig_FuncaoDODF, 103),'
      ''
      '     idDFG as SimboloDFG, Descricao as descricaoFuncao, '
      '     his.ID as IDHistorico,  Observacao,'
      ''
      '     *'
      ''
      '     FROM tbHist_Funcao his'
      ''
      '     LEFT JOIN tbFuncao fun on fun.idFuncao = his.idFuncao'
      ''
      '     WHERE  1=1'
      'AND  his.idPessoal = :idPessoal '
      'AND  his.idServidor = :idServidor'
      ''
      '     ORDER BY his.dt_NomeacaoFuncao desc ;')
    Left = 184
    Top = 200
  end
  object qryHistoricoLotacoes: TADOQuery
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
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CONVERT(char(10), dt_lotacao, 103) as dataLotacao,'
      'lot.Descricao descricaoLotacao,'
      'lot.Sigla,'
      'lot.Sala,'
      'lot.Ramal'
      ''
      'FROM tbHist_Lotacao his'
      ''
      'LEFT JOIN tbLotacao lot on lot.idLotacao = his.idLotacao'
      ''
      'WHERE his.idPessoal = :idPessoal'
      'AND  his.idServidor = :idServidor'
      ''
      'ORDER BY his.dt_Lotacao desc, his.ID desc')
    Left = 184
    Top = 265
  end
  object qryFeriasServidor: TADOQuery
    CursorType = ctStatic
    DataSource = dsPessoal
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
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  '
      'Fer.idPessoal, Fer.idExercicio, Fer.idPeriodo, Fer.idParcela,'
      
        'Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino, Fer.idServidor' +
        ','
      'Fer.Dt_InicioReagendamento, Fer.Dt_TerminoReagendamento,'
      'Fer.Observacao,'
      'Fer.nProcessoSEI,'
      ''
      'Per.idPeriodo, Per.descricao as descricaoPeriodo,'
      'Par.idParcela, Par.descricao as descricaoParcela,'
      'Tipo.idTipoParcela, Tipo.descricao as descricaoTipo '
      ''
      'FROM tbFerias as Fer'
      
        'INNER JOIN tbFeriasPeriodo as Per on Per.idPeriodo = Fer.idPerio' +
        'do '
      
        'INNER JOIN tbFeriasParcela as Par on Par.idParcela = Fer.idParce' +
        'la '
      
        'INNER JOIN tbFeriasTipoParcela as Tipo on Tipo.idTipoParcela = F' +
        'er.idTipoParcela'
      ''
      'WHERE 1=1'
      'AND Fer.idPessoal = :idPessoal '
      'AND Fer.idServidor = :idServidor '
      'ORDER BY Fer.idExercicio desc;')
    Left = 53
    Top = 201
  end
  object dsPessoal: TDataSource
    DataSet = dmPessoal.qryPesquisa
    Left = 56
    Top = 8
  end
  object qryAbonoServidor: TADOQuery
    CursorType = ctStatic
    DataSource = dsPessoal
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
        Name = 'idServidor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      
        'Abon.idPessoal, Abon.idExercicio, Abon.Dt_1, Abon.Dt_2, Abon.Dt_' +
        '3,'
      'Abon.Dt_4, Abon.Dt_5, Abon.idServidor,'
      'nProcessoSEI'
      'FROM tbAbono AS Abon'
      'WHERE '
      'Abon.idPessoal = :idPessoal and'
      'Abon.idServidor = :idServidor'
      'ORDER BY Abon.idExercicio DESC;'
      '')
    Left = 53
    Top = 265
  end
  object qryAfastamentoServidor: TADOQuery
    CursorType = ctStatic
    DataSource = dsPessoal
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
      'SELECT'
      'tbafastamento.idafastamento, tbafastamento.descricao,'
      'tbAfastamento.Codigo,'
      'tbserv_afast.idpessoal, tbserv_afast.idafastamento, '
      
        'tbserv_afast.dt_inicio, tbserv_afast.dt_termino, tbserv_afast.id' +
        'Exercicio,'
      'tbserv_afast.nProcessoSEI,'
      'tbserv_afast.Observacao'
      ''
      'FROM tbafastamento'
      'INNER JOIN tbserv_afast '
      'ON tbserv_afast.idafastamento = tbafastamento.idafastamento '
      ''
      'WHERE '
      'tbserv_afast.idpessoal = :idpessoal '
      'and tbafastamento.idafastamento not in ('#39'721'#39')'
      ''
      'ORDER BY tbserv_afast.dt_inicio DESC;')
    Left = 53
    Top = 329
  end
  object qryTelefonesServidor: TADOQuery
    CursorType = ctStatic
    DataSource = dsPessoal
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
      'SELECT  '
      'stel.Numero, stel.idTelefone'
      ',Tipo =  '
      '      CASE idTelefone  '
      '         WHEN '#39'R'#39' THEN '#39'RESIDENCIAL'#39'  '
      '         WHEN '#39'E'#39' THEN '#39'ESCRITORIO'#39'  '
      '         WHEN '#39'C'#39' THEN '#39'CELULAR'#39'  '
      '         ELSE '#39'-'#39'  '
      '      END  '
      'FROM tbServ_Telefone as stel'
      'INNER JOIN tbPessoal pes on pes.idPessoal = stel.idPessoal'
      'WHERE 1=1'
      'AND sTel.idPessoal = :idPessoal '
      'ORDER BY sTel.idTelefone desc;')
    Left = 53
    Top = 129
  end
  object qryFeriasTipoParcela: TADOQuery
    Parameters = <>
    Left = 56
    Top = 400
  end
  object qryHistoricoExercicioExterno: TADOQuery
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
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'oee.descricao as descricaoOrgao, oee.Sigla as siglaOrgaoExterno,'
      'his.idOrgaoExercicioExterno, '
      'his.dt_Nomeacao,'
      'his.dt_Posse,'
      'his.dt_Inicio,'
      'his.dt_Termino,'
      'his.ID'
      'FROM tbHist_ExercicioExterno his'
      'INNER JOIN tbOrgaoExercicioExterno oee '
      'on oee.idOrgaoExercicioExterno = his.idOrgaoExercicioExterno'
      'WHERE his.idPessoal = :idPessoal'
      'AND  his.idServidor = :idServidor'
      'ORDER BY his.dt_Nomeacao desc ')
    Left = 184
    Top = 329
  end
  object qryTotalDiasSubstituidos: TADOQuery
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
      'SELECT ANOINICIO AS ANO, '
      '       TOTALDEDIASSUBSTITUIDOS AS '#39'TOTAL DE DIAS'#39
      'FROM vwSubstituicaoProcurador120DiasTotalDeDias'
      'WHERE (ANOINICIO = YEAR(GETDATE()) OR '
      '    ANOINICIO = YEAR(GETDATE())-1 OR'
      '    ANOINICIO = YEAR(GETDATE())-2 OR'
      '    ANOINICIO = YEAR(GETDATE())-3) AND'
      '    IDPESSOALSUBSTITUTO = :idPessoal'
      'ORDER BY ANOINICIO DESC')
    Left = 340
    Top = 199
  end
  object qryProcuradorSubstituido: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'procsubstituto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      
        'select subst.*,  '#39'ndias'#39' = (DATEDIFF(DAY, subst.dt_inicio, subst' +
        '. dt_termino)+1)'
      'from tbsubstprocurador subst'
      'where subst.idpessoalsubstituto = :procsubstituto'
      'order by subst.dt_inicio desc, subst.dt_termino desc')
    Left = 340
    Top = 270
  end
end
