object frmSelFuncaoCadastro: TfrmSelFuncaoCadastro
  Left = 44
  Top = 140
  Width = 913
  Height = 405
  Caption = 'Tabela de fun'#231#245'es'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbxFuncao: TcxGroupBox
    Left = 0
    Top = 46
    Align = alTop
    Caption = 'Selecione um dos campos abaixo e digite para realizar a pesquisa'
    TabOrder = 0
    Height = 89
    Width = 905
    object lblLotacao: TLabel
      Left = 16
      Top = 31
      Width = 40
      Height = 13
      Caption = 'Fun'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 55
      Width = 44
      Height = 13
      Caption = 'Lota'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edtFuncao: TcxTextEdit
      Left = 76
      Top = 28
      TabOrder = 0
      OnEnter = edtFuncaoEnter
      OnKeyPress = edtFuncaoKeyPress
      Width = 342
    end
    object edtLotacao: TcxTextEdit
      Left = 76
      Top = 52
      TabOrder = 1
      OnEnter = edtLotacaoEnter
      OnKeyPress = edtFuncaoKeyPress
      Width = 342
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 135
    Width = 905
    Height = 239
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsComissionados
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Fun'#231#227'o'
        DataBinding.FieldName = 'Funcao'
        Width = 350
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'S'#237'mbolo'
        DataBinding.FieldName = 'idDFG'
        Width = 100
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Lotacao'
        Width = 350
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'Sigla'
        Width = 200
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Atual ocupante desta fun'#231#227'o'
        DataBinding.FieldName = 'Nome'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object btnSelecionar: TcxButton
      Left = 2
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Selecionar'
      TabOrder = 0
      OnClick = btnSelecionarClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000000000000000000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000250000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0087000000FF0000007400000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000008E0000
        00FF000000D7000000FC00000045000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000087000000FF0000
        008E00000007000000C7000000EC000000210000000000000000000000000000
        00000000000000000000000000000000000000000000000000AE000000870000
        0000000000000000001B000000E8000000D00000000A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000040000000FB000000A600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000073000000FF00000025000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000002500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
    object btnCancela: TcxButton
      Left = 148
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Cancela'
      TabOrder = 1
      OnClick = btnCancelaClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF000000000000000000000000000000000000000000002B0000008E0000
        00D3000000F3000000F3000000D30000008D0000002A00000000000000000000
        00000000000000000000000000000000000600000093000000E70000007D0000
        00320000000C0000000C000000320000007E000000E700000091000000050000
        0000000000000000000000000006000000BC000000AB0000000E000000000000
        0000000000000000000000000000000000000000000F000000AD000000BB0000
        0005000000000000000000000094000000AB0000000100000000000000000000
        0000000000000000000000000000000000000000000000000001000000AD0000
        0091000000000000002C000000E70000000D000000000000002E000000360000
        00000000000000000000000000000000000000000000000000000000000F0000
        00E70000002A000000900000007C000000000000000000000037000000EA0000
        0040000000000000000000000000000000000000000000000000000000000000
        007E0000008E000000D5000000300000000000000000000000000000003D0000
        00E9000000420000000000000000000000000000000000000000000000000000
        0031000000D3000000F20000000D000000000000000000000000000000000000
        003D000000E90000004200000000000000000000000000000000000000000000
        000E000000F1000000F30000000C000000000000000000000000000000000000
        00000000003D000000E900000042000000000000000000000000000000000000
        000D000000F2000000D50000002F000000000000000000000000000000000000
        0000000000000000003D000000E9000000420000000000000000000000000000
        0031000000D3000000900000007B000000000000000000000000000000000000
        0000000000000000000000000040000000EA0000003700000000000000000000
        007D0000008E0000002D000000E60000000D0000000000000000000000000000
        0000000000000000000000000000000000370000002D000000000000000E0000
        00E70000002B0000000000000097000000AA0000000100000000000000000000
        0000000000000000000000000000000000000000000000000001000000AB0000
        0093000000000000000000000007000000BE000000AA0000000D000000000000
        0000000000000000000000000000000000000000000D000000AB000000BD0000
        00060000000000000000000000000000000700000096000000E60000007B0000
        00300000000B0000000B000000310000007C000000E700000094000000060000
        000000000000000000000000000000000000000000000000002D000000910000
        00D4000000F4000000F4000000D4000000900000002C00000000000000000000
        000000000000}
    end
  end
  object qryFuncao: TADOQuery
    Connection = DMConexao.conPessoal
    Parameters = <>
    Left = 400
    Top = 8
  end
  object dsComissionados: TDataSource
    DataSet = qryFuncao
    Left = 432
    Top = 8
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 480
    Top = 8
  end
end
