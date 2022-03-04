object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 540
  Top = 195
  Height = 188
  Width = 389
  object conPessoal: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=NhiD90oH;Persist Security Info=True' +
      ';User ID=PESSOAL;Initial Catalog=dbPessoal;Data Source=PRG_SERVE' +
      'R3'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 50
    Top = 45
  end
  object strDadosUsuarioLogado: TADOStoredProc
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
    Left = 195
    Top = 47
  end
end
