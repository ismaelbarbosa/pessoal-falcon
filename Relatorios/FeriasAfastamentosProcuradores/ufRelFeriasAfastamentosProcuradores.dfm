object frmRelFeriasAfastamentosProcuradores: TfrmRelFeriasAfastamentosProcuradores
  Left = 229
  Top = 227
  Width = 1044
  Height = 513
  Caption = 'F'#233'rias e afastamentos de procuradores'
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
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label21: TLabel
      Left = 424
      Top = 8
      Width = 416
      Height = 25
      Caption = 'frmRelFeriasAfastamentosProcuradores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnSair: TcxButton
      Left = 290
      Top = 5
      Width = 110
      Height = 35
      Caption = 'Sai&r'
      TabOrder = 2
      OnClick = btnSairClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000000000000000000000000000000000000000FF0000FF
        0000FF00000000000000000000DA000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00DA00000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        000000000000000000B400000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        000000000000000000B500000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000FF00000013000000F8000000000000
        000000000000000000000000000000000000000000EE000000DC000000B80000
        00940000006F0000004A00000026000000FF000000F900000085000000000000
        00000000000000000000000000000000000000000005000000260000004A0000
        006F00000094000000B8000000DC000000E70000000000000000000000000000
        000000000000}
    end
    object btnImprimir: TcxButton
      Left = 133
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = btnImprimirClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000049000000E3000000FF0000
        00FF000000FF000000FF000000FF000000FF000000E200000048000000000000
        000000000000000000000000000000000000000000E30000003C000000000000
        0000000000000000000000000000000000000000003D000000E2000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000000000
        00000000000000000049000000E3000000FF000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00E200000048000000E30000003C00000000000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000000000
        003D000000E2000000FF0000000000000000000000E30000003A000000000000
        0000000000000000000000000000000000000000003C000000E2000000000000
        0000000000FF000000FF00000000000000000000004B000000E4000000FF0000
        00FF000000FF000000FF000000FF000000FF000000E300000049000000000000
        0000000000FF000000FF00000000000000B90000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000E30000003A000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        003C000000E20000004B000000E4000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00E300000049000000000000000000000000000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000000000
        000000000000000000000000000000000000000000E30000003A000000000000
        0000000000000000000000000000000000000000003C000000E2000000000000
        0000000000000000000000000000000000000000004B000000E4000000FF0000
        00FF000000FF000000FF000000FF000000FF000000E300000049000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
    object btnPesquisar: TcxButton
      Left = 8
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Pesquisar'
      TabOrder = 0
      OnClick = btnPesquisarClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000160000
        00CC000000B80000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000016000000D30000
        00FF000000CC0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000015000000D2000000FF0000
        00D7000000190000000000000000000000000000003B000000A6000000E30000
        00F9000000E3000000A50000003A00000015000000D2000000FF000000D70000
        001900000000000000000000000400000095000000E0000000680000001E0000
        00060000001E00000069000000E0000000E1000000FF000000D3000000160000
        0000000000000000000000000095000000B90000000D00000000000000000000
        000000000000000000000000000E000000DC000000E100000016000000000000
        0000000000000000003C000000DE0000000D0000000000000000000000000000
        00000000000000000000000000000000000E000000E00000003A000000000000
        000000000000000000A700000066000000000000000000000000000000000000
        00000000000000000000000000000000000000000069000000A5000000000000
        000000000000000000E50000001D000000000000000000000000000000000000
        0000000000000000000000000000000000000000001F000000E3000000000000
        000000000000000000F900000006000000000000000000000000000000000000
        00000000000000000000000000000000000000000007000000F8000000000000
        000000000000000000E50000001C000000000000000000000000000000000000
        0000000000000000000000000000000000000000001E000000E4000000000000
        000000000000000000A800000066000000000000000000000000000000000000
        00000000000000000000000000000000000000000068000000A6000000000000
        0000000000000000003E000000DD0000000C0000000000000000000000000000
        00000000000000000000000000000000000D000000DF0000003B000000000000
        0000000000000000000000000097000000B80000000C00000000000000000000
        000000000000000000000000000D000000B90000009500000000000000000000
        000000000000000000000000000400000097000000DE000000660000001C0000
        00050000001C00000067000000DE000000950000000400000000000000000000
        0000000000000000000000000000000000000000003D000000A8000000E50000
        00F9000000E4000000A70000003C000000000000000000000000000000000000
        000000000000}
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 44
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Height = 60
    Width = 1036
    object lblMes: TLabel
      Left = 15
      Top = 22
      Width = 32
      Height = 18
      Caption = 'M'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lkpMes: TcxLookupComboBox
      Left = 66
      Top = 18
      ParentFont = False
      Properties.KeyFieldNames = 'nmes'
      Properties.ListColumns = <
        item
          Caption = 'M'#234's'
          FieldName = 'mes'
        end>
      Properties.ListSource = dsMes
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 168
    end
  end
  object grdAfastamentos: TcxGrid
    Left = 0
    Top = 104
    Width = 1036
    Height = 378
    Align = alClient
    TabOrder = 2
    object tbvAfastamentos: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object tvcMatricula: TcxGridDBColumn
        Caption = 'Matr'#237'cula'
        DataBinding.FieldName = 'Matricula'
        Width = 100
      end
      object tvcNome: TcxGridDBColumn
        Caption = 'Nome completo'
        DataBinding.FieldName = 'Nome'
        Width = 300
      end
      object tvcLotacao: TcxGridDBColumn
        Caption = 'Lota'#231#227'o'
        DataBinding.FieldName = 'Sigla'
        Width = 250
      end
      object tvcTipoDeAfastamento: TcxGridDBColumn
        Caption = 'Tipo de afastamento'
        DataBinding.FieldName = 'Afastamento'
        Width = 400
      end
      object tvcDataInicio: TcxGridDBColumn
        Caption = 'Data de in'#237'cio'
        DataBinding.FieldName = 'Inicio'
        Width = 100
      end
      object tvcDataTermino: TcxGridDBColumn
        Caption = 'Data de t'#233'rmino'
        DataBinding.FieldName = 'Termino'
        Width = 100
      end
      object tvcDias: TcxGridDBColumn
        Caption = 'Dias '
        DataBinding.FieldName = 'Dias'
        Visible = False
      end
      object tbvAfastamentosColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Ano'
      end
    end
    object lvlAfastamentos: TcxGridLevel
      GridView = tbvAfastamentos
    end
  end
  object dsAno: TDataSource
    Left = 474
    Top = 57
  end
  object dsMes: TDataSource
    Left = 506
    Top = 57
  end
  object dsRelAfastamentoProcuradores: TDataSource
    DataSet = dmRelatorios.sprRelAfastamentoProcuradores
    Left = 582
    Top = 57
  end
end