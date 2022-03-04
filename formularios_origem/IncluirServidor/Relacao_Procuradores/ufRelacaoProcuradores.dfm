object frmRelacaoProcuradores: TfrmRelacaoProcuradores
  Left = 192
  Top = 124
  Width = 1044
  Height = 540
  Caption = 'frmRelacaoProcuradores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 41
    Align = alTop
    TabOrder = 0
    object lblQtdProcurador: TLabel
      Left = 472
      Top = 12
      Width = 79
      Height = 13
      Caption = 'lblQtdProcurador'
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 1028
    Height = 200
    Align = alTop
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsProcurador
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Cargo'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 241
    Width = 1028
    Height = 200
    Align = alTop
    TabOrder = 2
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsFerias
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridDBTableView1Column1: TcxGridDBColumn
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object qryProcurador: TADOQuery
    Active = True
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT pes.idPessoal, ser.idServidor, pes.Nome, car.Descricao as' +
        ' Cargo, * '
      'FROM tbPessoal pes'
      'INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
      ' INNER JOIN tbCargo car on car.idCargo = ser.idCargo'
      ' WHERE ser.idCargo in ('#39'PA0000'#39', '#39'PB0000'#39', '#39'SP0000'#39')'
      'ORDER BY nome;')
    Left = 16
    Top = 8
  end
  object dsProcurador: TDataSource
    DataSet = qryProcurador
    Left = 48
    Top = 8
  end
  object qryFerias: TADOQuery
    Connection = DMConexao.conPessoal
    DataSource = dsProcurador
    Parameters = <
      item
        Name = 'Param1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
      end>
    SQL.Strings = (
      'SELECT idPessoal, idExercicio, Dt_Inicio, Dt_Termino'
      'FROM tbFerias'
      'WHERE idPessoal =:idPessoal')
    Left = 96
    Top = 8
  end
  object dsFerias: TDataSource
    DataSet = qryFerias
    Left = 128
    Top = 8
  end
end
