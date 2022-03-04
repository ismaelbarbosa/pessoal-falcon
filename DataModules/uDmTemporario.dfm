object dmTemporario: TdmTemporario
  OldCreateOrder = False
  Left = 192
  Top = 124
  Height = 658
  Width = 1247
  object qryidPessoal_MaxADO: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max(idPessoal) as Maximo from tbPessoal;')
    Left = 234
    Top = 58
  end
  object qryDataHoraADO: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select "Ano" = year(getdate()), "DataHora" = getdate();')
    Left = 134
    Top = 58
  end
  object qryPessoal: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
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
      'Select pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'
      '       serv.*, dados.*'
      'from tbpessoal as pes, tbservidor as serv, tbdados as dados'
      'where pes.idpessoal = :idPessoal and'
      '      serv.idservidor = :idservidor and'
      '      pes.idpessoal = serv.idpessoal and'
      '      pes.idpessoal = dados.idpessoal;')
    Left = 34
    Top = 113
  end
  object dsqryPessoal: TDataSource
    DataSet = qryPessoal
    Left = 112
    Top = 113
  end
  object dsqryCargo: TDataSource
    DataSet = qryCargo
    Left = 261
    Top = 114
  end
  object qryCargo: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idCargo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'Select tbcargo.idCargo, tbcargo.Descricao'
      'from tbCargo'
      'where tbcargo.idCargo = :idCargo;')
    Left = 184
    Top = 113
  end
  object qryFuncao: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idfuncao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select tbfuncao.idfuncao, tbfuncao.descricao, tbfuncao.idDFG'
      'from tbfuncao'
      'where idfuncao = :idfuncao;')
    Left = 33
    Top = 205
  end
  object dsqryFuncao: TDataSource
    DataSet = qryFuncao
    Left = 106
    Top = 205
  end
  object dsqryLotacao: TDataSource
    DataSet = qryLotacao
    Left = 264
    Top = 205
  end
  object qryLotacao: TADOQuery
    CursorType = ctStatic
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
      
        'select tblotacao.idlotacao, tblotacao.descricao, tblotacao.sigla' +
        ', '
      
        '           tbLotacao.SuperLotacao, tbLotacao.Sala, tbLotacao.Ram' +
        'al'
      'from tblotacao'
      'where idlotacao = :idlotacao;')
    Left = 184
    Top = 205
  end
  object qryEstadoCivil: TADOQuery
    CursorType = ctStatic
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
      'select *'
      'from tbestadocivil'
      'where idestadocivil = :idestadocivil;')
    Left = 32
    Top = 253
  end
  object dsqryEstadoCivil: TDataSource
    DataSet = qryEstadoCivil
    Left = 111
    Top = 253
  end
  object dsqryDesligamento: TDataSource
    DataSet = qryDesligamento
    Left = 124
    Top = 301
  end
  object qryDesligamento: TADOQuery
    CursorType = ctStatic
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
      'where valido = 1 and iddesligamento = :iddesligamento'
      'order by tbdesligamento.Descricao;')
    Left = 35
    Top = 301
  end
  object cntPesqPessoal: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=prg_server3'
      'DataBase=dbpessoal'
      'User_Name=PESSOAL'
      'Password=NhiD90oH'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False')
    VendorLib = 'oledb'
    Connected = True
    Left = 566
    Top = 49
  end
  object qryPesqCPF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntPesqPessoal
    Left = 638
    Top = 49
  end
  object qryDataHora: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select "Ano" = year(getdate()), "DataHora" = getdate(),'
      '"Mes" = month(getdate());')
    SQLConnection = cntPesqPessoal
    Left = 638
    Top = 97
  end
  object qryidPessoal_Max: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(idPessoal) as Maximo from tbPessoal;')
    SQLConnection = cntPesqPessoal
    Left = 638
    Top = 145
  end
  object qryBanco: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tbbanco.idbanco, tbbanco.descricao'
      'from tbbanco;')
    Left = 35
    Top = 352
  end
  object dsqryBanco: TDataSource
    DataSet = qryBanco
    Left = 125
    Top = 351
  end
  object qryUF_Natural: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tbUF.idUF, tbUF.nome'
      'from tbUF;')
    Left = 216
    Top = 261
  end
  object dsqryUF_Natural: TDataSource
    DataSet = qryUF_Natural
    Left = 299
    Top = 261
  end
  object qryUF_End: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tbUF.idUF, tbUF.nome'
      'from tbUF;')
    Left = 216
    Top = 310
  end
  object dsqryUF_End: TDataSource
    DataSet = qryUF_End
    Left = 299
    Top = 310
  end
  object qryUF_CI: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tbUF.idUF, tbUF.nome'
      'from tbUF;')
    Left = 216
    Top = 362
  end
  object dsqryUF_CI: TDataSource
    DataSet = qryUF_CI
    Left = 299
    Top = 362
  end
  object qryUF_TE: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tbUF.idUF, tbUF.nome'
      'from tbUF;')
    Left = 216
    Top = 409
  end
  object dsqryUF_TE: TDataSource
    DataSet = qryUF_TE
    Left = 299
    Top = 409
  end
  object qryidPessoal: TADOQuery
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
      'select tbpessoal.idpessoal, tbpessoal.cpf, tbpessoal.nome'
      'from tbpessoal'
      'where tbpessoal.idpessoal = :idPessoal;')
    Left = 34
    Top = 161
  end
  object dsqryidPessoal: TDataSource
    DataSet = qryidPessoal
    Left = 112
    Top = 161
  end
  object qryPesq_idServidor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntPesqPessoal
    Left = 718
    Top = 49
  end
  object qryidPessoal_Servidor: TADOQuery
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
      'select tbservidor.idpessoal, tbservidor.idservidor'
      'from tbservidor'
      'where tbservidor.idpessoal = :idPessoal;')
    Left = 205
    Top = 161
  end
  object qryidPessoal_Dados: TADOQuery
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
      'select tbdados.idpessoal'
      'from tbdados'
      'where tbdados.idpessoal = :idPessoal;')
    Left = 313
    Top = 161
  end
  object qryTelInserir: TADOQuery
    CursorType = ctStatic
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
        Name = 'numero'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      'Select tbServ_Telefone.idpessoal, tbServ_Telefone.numero, '
      '           tbServ_Telefone.idtelefone'
      '           from tbServ_Telefone'
      'where tbServ_Telefone.idpessoal = :idpessoal and'
      '           tbServ_Telefone.numero = :numero;')
    Left = 33
    Top = 403
  end
  object qryTelExibir: TADOQuery
    CursorType = ctStatic
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
      'Select tbServ_Telefone.idpessoal, tbServ_Telefone.numero, '
      '           tbServ_Telefone.idtelefone,'
      '           tbTelefone.idtelefone, tbTelefone.descricao'
      'from tbServ_Telefone, tbTelefone'
      'where tbServ_Telefone.idpessoal = :idpessoal and'
      '           tbServ_Telefone.idtelefone = tbtelefone.idtelefone;')
    Left = 32
    Top = 455
  end
  object dsqryTelInserir: TDataSource
    DataSet = qryTelInserir
    Left = 125
    Top = 403
  end
  object dsqryTelExibir: TDataSource
    DataSet = qryTelExibir
    Left = 125
    Top = 455
  end
  object qryTelDuplicado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpessoal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numero'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'Select tbServ_Telefone.idpessoal, tbServ_Telefone.numero'
      '           from tbServ_Telefone'
      'where tbServ_Telefone.idpessoal = :idpessoal and'
      '           tbServ_Telefone.numero = :numero;')
    SQLConnection = cntPesqPessoal
    Left = 718
    Top = 97
  end
  object qrySelTipoTel: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tbtelefone;')
    Left = 32
    Top = 502
  end
  object dsqrySelTipoTel: TDataSource
    DataSet = qrySelTipoTel
    Left = 125
    Top = 502
  end
  object cmdExcluiTel: TADOCommand
    CommandText = 
      'delete from  tbserv_telefone'#13#10'where idpessoal = :idpessoal and i' +
      'dservidor = :idservidor;'#13#10
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
    Left = 719
    Top = 193
  end
  object qryPesqPensionista: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'
      '       pens.*, dados.*'
      'from tbpessoal as pes, tbpensionista as pens, tbdados as dados'
      'where pes.idpessoal = pens.idpessoal and'
      '      pes.cpf = '#39'27969614191'#39' and '
      '      pes.idpessoal = dados.idpessoal'
      'order by pes.nome;')
    Left = 392
    Top = 259
  end
  object dsqryPesqPensionista: TDataSource
    DataSet = qryPesqPensionista
    Left = 495
    Top = 259
  end
  object qryPesquisa: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'
      '       serv.*, dados.*'
      'from tbpessoal as pes, tbservidor as serv, tbdados as dados'
      'where pes.cpf = '#39'03242200144'#39' and'
      '      pes.idpessoal = serv.idpessoal and'
      '      pes.idpessoal = dados.idpessoal'
      'order by pes.nome;')
    Left = 393
    Top = 308
  end
  object dsqryPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 479
    Top = 308
  end
  object cmdExcluiServidor: TADOCommand
    CommandText = 
      'delete from  tbservidor'#13#10'where idpessoal = :idpessoal'#13#10'and idser' +
      'vidor = '#39'  '#39';'
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    Left = 639
    Top = 194
  end
  object qryPesqTelefone: TADOQuery
    CursorType = ctStatic
    DataSource = dsqryPesquisa
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
      'Select tbServ_Telefone.idpessoal, tbServ_Telefone.numero,'
      '           tbServ_Telefone.idTelefone, tbTelefone.idTelefone, '
      '           tbTelefone.Descricao'
      '           from tbServ_Telefone, tbTelefone'
      'where tbServ_Telefone.idpessoal = :idpessoal and'
      '           tbServ_Telefone.idTelefone = tbTelefone.idTelefone;')
    Left = 310
    Top = 507
  end
  object dsqryPesqTelefone: TDataSource
    DataSet = qryPesqTelefone
    Left = 399
    Top = 507
  end
  object qryidPessoal_Utente: TADOQuery
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
      'select tbutente.idpessoal'
      'from tbutente'
      'where tbutente.idpessoal = :idPessoal;')
    Left = 416
    Top = 161
  end
  object qryPessoalUtente: TADOQuery
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
      'Select pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'
      '       ut.*'
      'from tbpessoal as pes, tbutente as ut'
      'where pes.idpessoal = :idPessoal and'
      '           pes.idpessoal = ut.idpessoal;')
    Left = 347
    Top = 113
  end
  object dsqryPessoalUtente: TDataSource
    DataSet = qryPessoalUtente
    Left = 443
    Top = 113
  end
  object qryPesquisaUtente: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select top 1 pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento' +
        ','
      '       ut.*'
      'from tbpessoal as pes, tbutente as ut'
      'where  pes.idpessoal = ut.idpessoal;'
      ''
      '')
    Left = 393
    Top = 356
  end
  object dsqryPesquisaUtente: TDataSource
    DataSet = qryPesquisaUtente
    Left = 498
    Top = 408
  end
  object qryPesqUtLotacao: TADOQuery
    CursorType = ctStatic
    DataSource = dsqryPesquisaUtente
    Parameters = <
      item
        Name = 'idlotacao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select lot.idlotacao, lot.descricao'
      'from tblotacao as lot'
      'where lot.idlotacao = :idlotacao;')
    Left = 604
    Top = 408
  end
  object dsqryPesqUtLotacao: TDataSource
    DataSet = qryPesqUtLotacao
    Left = 708
    Top = 356
  end
  object qryPessoalPensionista: TADOQuery
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
        Name = 'idpensionista'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'
      '       pens.*, dados.*'
      'from tbpessoal as pes, tbpensionista as pens, tbdados as dados'
      'where pes.idpessoal = :idPessoal and'
      '      pens.idpensionista = :idpensionista and'
      '      pes.idpessoal = pens.idpessoal and'
      '      pes.idpessoal = dados.idpessoal;')
    Left = 567
    Top = 455
  end
  object qryidPessoal_Pens_Dados: TADOQuery
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
      'select tbdados.idpessoal'
      'from tbdados'
      'where tbdados.idpessoal = :idPessoal;')
    Left = 446
    Top = 455
  end
  object qryidPessoal_Pensionista: TADOQuery
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
      'select tbpensionista.idpessoal, tbpensionista.idpensionista'
      'from tbpensionista'
      'where tbpensionista.idpessoal = :idPessoal;')
    Left = 316
    Top = 455
  end
  object dsqryPessoalPensionista: TDataSource
    DataSet = qryPessoalPensionista
    Left = 682
    Top = 455
  end
  object cmdExcluiUtente: TADOCommand
    CommandText = 'delete from  tbutente'#13#10'where idpessoal = :idpessoal;'
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    Left = 639
    Top = 243
  end
  object qryPesqTelPensionista: TADOQuery
    CursorType = ctStatic
    DataSource = dsqryPesqPensionista
    Parameters = <
      item
        Name = 'idpessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = '00582'
      end>
    SQL.Strings = (
      'Select tbServ_Telefone.idpessoal, tbServ_Telefone.numero,'
      '           tbServ_Telefone.idTelefone, tbTelefone.idTelefone, '
      '           tbTelefone.Descricao'
      '           from tbServ_Telefone, tbTelefone'
      'where tbServ_Telefone.idpessoal = :idpessoal and'
      '           tbServ_Telefone.idTelefone = tbTelefone.idTelefone;')
    Left = 504
    Top = 508
  end
  object dsqryPesqTelPensionista: TDataSource
    DataSet = qryPesqTelPensionista
    Left = 621
    Top = 508
  end
  object strprocPesqCPF: TADOStoredProc
    ProcedureName = 'Pesq_CPF;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CPF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 11
        Value = Null
      end>
    Left = 474
    Top = 47
  end
  object strprocPesq_idServidor: TADOStoredProc
    ProcedureName = 'Pesq_Matricula;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CPF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 11
        Value = Null
      end
      item
        Name = '@Matricula'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 378
    Top = 47
  end
  object strprocPesq_Matr_Ferias: TADOStoredProc
    ProcedureName = 'Pesq_Matr_Ferias;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Matricula'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 374
    Top = 211
  end
  object strprocPesq_Folha_Frequencia: TADOStoredProc
    ProcedureName = 'Pesq_Folha_de_Frequencia;1'
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Matricula'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 852
    Top = 47
  end
  object qryFolha_Frequencia: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 710
    Top = 293
  end
  object qryPesqFolhaFreq: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select pes.nome'
      'from tbpessoal as pes, tbservidor as serv'
      'where pes.idpessoal = serv.idpessoal and'
      'serv.iddesligamento is null and'
      'pes.nome like '#39'a%'#39)
    Left = 530
    Top = 133
  end
  object dsqryPesqFolhaFreq: TDataSource
    DataSet = qryPesqFolhaFreq
    Left = 528
    Top = 184
  end
  object dsqryHist_Funcoes: TDataSource
    DataSet = qryHist_Funcoes
    Left = 503
    Top = 353
  end
  object qryHist_Funcoes: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select Hist.*, Func.Descricao'
      'from tbHist_Funcao as Hist, tbFuncao as Func'
      'where Hist.idServidor = :idServidor and'
      '    Func.idFuncao = Hist.idFuncao'
      'order by Hist.dt_NomeacaoFuncao desc')
    Left = 599
    Top = 350
  end
  object cntPessoalOld: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=NhiD90oH;Persist Security Info=True' +
      ';User ID=PESSOAL;Initial Catalog=dbPessoal;Data Source=PRG_SERVE' +
      'R3;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=T-NUDES2;Use Encryption for Data=False;Tag wi' +
      'th column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 139
    Top = 13
  end
end
