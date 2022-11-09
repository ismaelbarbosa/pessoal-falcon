object dmRelatorios: TdmRelatorios
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 192
  Top = 117
  Height = 440
  Width = 579
  object sprRelAfastamento: TADOStoredProc
    CursorType = ctStatic
    ProcedureName = 'sp_RelAfastamento;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@mes'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 7
      end
      item
        Name = '@ano'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 2005
      end
      item
        Name = '@tipo'
        DataType = ftString
        Size = 5
        Value = 'ambos'
      end>
    Left = 83
    Top = 33
  end
  object qryAbonoAnual: TADOQuery
    Parameters = <>
    Left = 85
    Top = 96
  end
  object sprRelAfastamentoProcuradores: TADOStoredProc
    CursorType = ctStatic
    ProcedureName = 'SProc_RelAfastamentoProcuradores;1'
    Parameters = <
      item
        Name = '@mes'
        DataType = ftSmallint
        Value = Null
      end>
    Left = 83
    Top = 153
  end
  object qryRel_Conf_Fer_Mens: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Set DateFormat DMY'
      ''
      'Select  tbLotacao.sigla, tblotacao.descricao,'
      #9'tbPessoal.Nome, '
      #9'substring(idCargo,1,2) as Cargo,'
      #9'tbServidor.idServidor, tbFerias.idExercicio, '
      ''
      'ADI= case when Antecipacao = 0 then '#39'N'#195'O'#39' '
      'when Antecipacao = 1 then '#39'SIM'#39
      'end,'
      ''
      'PER = case when idPeriodo = '#39'U'#39' then '#39'UNI'#39' '
      'when idPeriodo = '#39'1'#39' then '#39'1'#186#39
      'when idPeriodo = '#39'2'#39' then '#39'2'#186#39' '
      'else '#39'---'#39
      'end,'
      ''
      'PAR = case when idParcela = '#39'U'#39' then '#39'UNI'#39' '
      'when idParcela = '#39'1'#39' then '#39'1'#170#39
      'when idParcela = '#39'2'#39' then '#39'2'#170#39' '
      'else '#39'---'#39'end,'
      ''
      'TIPO = case when idTipoParcela = '#39'U'#39' then '#39'30'#39' '
      'when idTipoParcela = '#39'A'#39' then '#39'15/15'#39
      'when idTipoParcela = '#39'B'#39' then '#39'10/20'#39' '
      'when idTipoParcela = '#39'C'#39' then '#39'20/10'#39' '
      'else '#39'---'#39
      'end,'
      ''
      'tbFerias.dt_inicio, tbFerias.dt_termino'
      ''
      'from tbLotacao, tbPessoal, tbServidor, tbFerias'
      ''
      'where   tbLotacao.idLotacao = tbServidor.idLotacao and '
      #9'tbservidor.idpessoal = tbpessoal.idpessoal and'
      #9'tbPessoal.idPessoal = tbFerias.idPessoal and '
      #9'tbServidor.idServidor = tbFerias.idServidor and '
      #9'month(tbFerias.dt_inicio) = '#39'07'#39' and '
      #9'year(tbFerias.dt_Inicio) = '#39'2003'#39
      'order by tblotacao.descricao, tbpessoal.nome, '
      #9' tbservidor.idservidor')
    Left = 88
    Top = 224
  end
  object qryFeriasAnuais: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Set DateFormat DMY'
      ''
      'Select  tbLotacao.sigla, tblotacao.descricao,'
      #9'tbPessoal.Nome, '
      #9'substring(idCargo,1,2) as Cargo,'
      #9'tbServidor.idServidor, tbFerias.idExercicio, '
      ''
      'ADI= case when Antecipacao = 0 then '#39'N'#195'O'#39' '
      'when Antecipacao = 1 then '#39'SIM'#39
      'end,'
      ''
      'PER = case when idPeriodo = '#39'U'#39' then '#39'UNI'#39' '
      'when idPeriodo = '#39'1'#39' then '#39'1'#186#39
      'when idPeriodo = '#39'2'#39' then '#39'2'#186#39' '
      'else '#39'---'#39
      'end,'
      ''
      'PAR = case when idParcela = '#39'U'#39' then '#39'UNI'#39' '
      'when idParcela = '#39'1'#39' then '#39'1'#170#39
      'when idParcela = '#39'2'#39' then '#39'2'#170#39' '
      'else '#39'---'#39'end,'
      ''
      'TIPO = case when idTipoParcela = '#39'U'#39' then '#39'30'#39' '
      'when idTipoParcela = '#39'A'#39' then '#39'15/15'#39
      'when idTipoParcela = '#39'B'#39' then '#39'10/20'#39' '
      'when idTipoParcela = '#39'C'#39' then '#39'20/10'#39' '
      'else '#39'---'#39
      'end,'
      ''
      'tbFerias.dt_inicio, tbFerias.dt_termino'
      ''
      'from tbLotacao, tbPessoal, tbServidor, tbFerias'
      ''
      'where   tbLotacao.idLotacao = tbServidor.idLotacao and '
      #9'tbservidor.idpessoal = tbpessoal.idpessoal and'
      #9'tbPessoal.idPessoal = tbFerias.idPessoal and '
      #9'tbServidor.idServidor = tbFerias.idServidor and '
      #9'month(tbFerias.dt_inicio) = '#39'07'#39' and '
      #9'year(tbFerias.dt_Inicio) = '#39'2003'#39
      'order by tblotacao.descricao, tbpessoal.nome, '
      #9' tbservidor.idservidor')
    Left = 88
    Top = 296
  end
end
