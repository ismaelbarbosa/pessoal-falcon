object frmGestaoCargos: TfrmGestaoCargos
  Left = 192
  Top = 117
  Width = 1306
  Height = 669
  Caption = 'Cargos efetivos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1298
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 736
      Top = 8
      Width = 184
      Height = 25
      Caption = 'frmGestaoCargos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblOperacao: TLabel
      Left = 934
      Top = 10
      Width = 114
      Height = 23
      Caption = 'lblOperacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object btnSair: TcxButton
      Left = 600
      Top = 5
      Width = 110
      Height = 35
      Caption = 'Sai&r'
      TabOrder = 0
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
    object btnNovo: TcxButton
      Left = 10
      Top = 4
      Width = 110
      Height = 35
      Caption = 'Novo cargo'
      Enabled = False
      TabOrder = 1
      OnClick = btnNovoClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000000000000000000000000000000000000000FF0000FF
        0000FF000000000000000000000000000049000000E3000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
        0000000000000000000000000000000000E30000003C00000000000000000000
        000000000000000000000000000000000000000000000000003D000000E20000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        00000000000000000000000000010000005B0000008800000088000000AE0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        000000000000000000000000005C000000FF000000FF000000DF000000200000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000080000000FF000000E100000022000000000000
        0000000000000000000000000000000000E30000003A00000000000000000000
        0000000000000000000000000080000000E10000002200000000000000000000
        00000000000000000000000000000000004B000000E4000000FF000000FF0000
        00FF000000FF000000FF000000B1000000220000000000000000000000000000
        000000000000}
    end
    object btnEditar: TcxButton
      Left = 133
      Top = 4
      Width = 112
      Height = 35
      Caption = 'Editar cargo'
      Enabled = False
      TabOrder = 2
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF000000000000DE000000A30000003D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000A3000000C7000000D6000000D600000070000000120000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000003D000000D5000000010000003D000000A3000000EC0000
        0040000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000D60000003D0000000000000000000000EF0000
        00F5000000400000000000000000000000000000000000000000000000000000
        0000000000000000000000000070000000A300000000000000EC000000EC0000
        0040000000EA0000004000000000000000000000000000000000000000000000
        0000000000000000000000000012000000EC000000EF000000EC000000000000
        000000000040000000EA00000040000000000000000000000000000000000000
        000000000000000000000000000000000040000000F500000040000000000000
        00000000000000000040000000EA000000400000000000000000000000000000
        0000000000000000000000000000000000000000003D000000E9000000420000
        000000000000000000000000003C000000E90000004200000000000000000000
        000000000000000000000000000000000000000000000000003D000000E90000
        00420000000000000000000000000000003C000000E900000042000000000000
        00000000000000000000000000000000000000000000000000000000003D0000
        00E9000000420000000000000000000000000000003C000000E9000000420000
        0000000000000000000000000000000000000000000000000000000000000000
        0040000000EA0000004000000000000000000000000000000074000000F50000
        0040000000000000000000000000000000000000000000000000000000000000
        000000000040000000EA000000400000000000000040000000E9000000740000
        00EA000000400000000000000000000000000000000000000000000000000000
        00000000000000000040000000EA00000074000000E900000040000000000000
        0074000000E20000000000000000000000000000000000000000000000000000
        0000000000000000000000000040000000F50000007400000000000000400000
        00EA000000400000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000040000000EA00000074000000EA0000
        0040000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000040000000E3000000400000
        000000000000}
    end
    object btnGravar: TcxButton
      Left = 258
      Top = 4
      Width = 110
      Height = 35
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 3
      OnClick = btnGravarClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF000000000000000000000000000085000000F9000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000F9000000840000
        0000000000000000000000000000000000F90000001300000000000000000000
        0000000000000000000000000000000000000000000000000013000000F80000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0006000000AC000000AC00000006000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000060000
        00B0000000F4000000F4000000B0000000060000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000005000000AF0000
        00B50000008700000085000000AF000000B50000000700000000000000FF0000
        0000000000000000000000000000000000FF000000000000005F000000AC0000
        0006000000800000008000000006000000AC0000005F00000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000800000008000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000F90000001200000000000000000000
        0000000000800000008000000000000000000000000000000013000000F80000
        000000000000000000000000000000000086000000F9000000FF000000DB0000
        0000000000800000008000000000000000DD000000FF000000F9000000850000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000800000008000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000800000008000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000800000008000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000006E0000006E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
    object btnCancelar: TcxButton
      Left = 381
      Top = 4
      Width = 110
      Height = 35
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 4
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000D10000004000000000000000000000
        0000000000000000000000000000000000000000000000000040000000D00000
        00000000000000000000000000000000003D000000E900000042000000000000
        0000000000000000000000000000000000000000003C000000E9000000420000
        0000000000000000000000000000000000000000003D000000E9000000420000
        00000000000000000000000000000000003C000000E900000042000000000000
        000000000000000000000000000000000000000000000000003D000000E90000
        004200000000000000000000003C000000E90000004200000000000000000000
        00000000000000000000000000000000000000000000000000000000003D0000
        00E9000000420000003C000000E9000000420000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        003D000000EE000000EF00000042000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        003C000000EE000000EF00000042000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000003C0000
        00E9000000420000003D000000E9000000420000000000000000000000000000
        000000000000000000000000000000000000000000000000003C000000E90000
        004200000000000000000000003D000000E90000004200000000000000000000
        0000000000000000000000000000000000000000003C000000E9000000420000
        00000000000000000000000000000000003D000000E900000042000000000000
        00000000000000000000000000000000003C000000E900000042000000000000
        0000000000000000000000000000000000000000003D000000E9000000420000
        0000000000000000000000000000000000D10000004000000000000000000000
        0000000000000000000000000000000000000000000000000040000000D00000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
  end
  object grdCargos: TcxGrid
    Left = 0
    Top = 417
    Width = 1298
    Height = 221
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object grdCargosDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsCargo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object grdCargosDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Cargo'
        Width = 500
      end
      object grdCargosDBTableView1Column2: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'idCargo'
        Width = 150
      end
      object grdCargosDBTableView1Column3: TcxGridDBColumn
        Caption = 'Vagas previstas'
        DataBinding.FieldName = 'Vagas_Prev'
        Width = 116
      end
      object grdCargosDBTableView1Column4: TcxGridDBColumn
        Caption = 'Vagas ocupadas'
        DataBinding.FieldName = 'QtdVagas'
        Width = 120
      end
      object grdCargosDBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = 'Carreira'
      end
    end
    object grdCargosLevel1: TcxGridLevel
      GridView = grdCargosDBTableView1
    end
  end
  object gbxPesquisarCargo: TcxGroupBox
    Left = 0
    Top = 55
    Align = alTop
    Caption = 'Pesquisar'
    TabOrder = 2
    Height = 63
    Width = 1298
    object lblLotacao: TLabel
      Left = 16
      Top = 30
      Width = 102
      Height = 13
      Caption = 'Cargo ou carreira'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblTotalCargo: TLabel
      Left = 808
      Top = 24
      Width = 13
      Height = 25
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object edtPesquisaCargo: TcxTextEdit
      Left = 132
      Top = 23
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = edtPesquisaCargoKeyPress
      Width = 414
    end
  end
  object pnlReadCargo: TPanel
    Left = 0
    Top = 118
    Width = 1298
    Height = 150
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label14: TLabel
      Left = 791
      Top = 118
      Width = 14
      Height = 13
      Caption = 'ID'
      Visible = False
    end
    object DBText1: TDBText
      Left = 817
      Top = 118
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'idCargo'
      DataSource = dsCargo
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label18: TLabel
      Left = 720
      Top = 101
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object txtCarreira: TDBText
      Left = 168
      Top = 40
      Width = 600
      Height = 25
      DataField = 'Cargo'
      DataSource = dsCargo
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object txtCargo: TDBText
      Left = 168
      Top = 10
      Width = 393
      Height = 25
      DataField = 'Carreira'
      DataSource = dsCargo
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object txtIdCargo: TDBText
      Left = 168
      Top = 71
      Width = 600
      Height = 25
      DataField = 'idCargo'
      DataSource = dsCargo
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object txtVagas_Prev: TDBText
      Left = 168
      Top = 102
      Width = 89
      Height = 25
      DataField = 'Vagas_Prev'
      DataSource = dsCargo
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 47
      Top = 107
      Width = 104
      Height = 16
      Caption = 'Vagas previstas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label19: TLabel
      Left = 24
      Top = 15
      Width = 127
      Height = 16
      Caption = 'Descri'#231#227'o do cargo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label20: TLabel
      Left = 100
      Top = 45
      Width = 51
      Height = 16
      Caption = 'Carreira'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label21: TLabel
      Left = 107
      Top = 76
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label16: TLabel
      Left = 304
      Top = 107
      Width = 107
      Height = 16
      Caption = 'Vagas ocupadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label17: TLabel
      Left = 584
      Top = 107
      Width = 115
      Height = 16
      Caption = 'Vagas dispon'#237'veis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object cxDBLabel2: TcxDBLabel
      Left = 432
      Top = 100
      DataBinding.DataField = 'QtdVagas'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 30
      Width = 52
    end
  end
  object pnlUpdateCargo: TPanel
    Left = 0
    Top = 268
    Width = 1298
    Height = 149
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 47
      Top = 107
      Width = 104
      Height = 16
      Caption = 'Vagas previstas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 304
      Top = 107
      Width = 107
      Height = 16
      Caption = 'Vagas ocupadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label10: TLabel
      Left = 584
      Top = 107
      Width = 115
      Height = 16
      Caption = 'Vagas dispon'#237'veis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lblVagasDisponiveis: TLabel
      Left = 720
      Top = 101
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 15
      Width = 127
      Height = 16
      Caption = 'Descri'#231#227'o do cargo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label12: TLabel
      Left = 100
      Top = 45
      Width = 51
      Height = 16
      Caption = 'Carreira'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label13: TLabel
      Left = 107
      Top = 76
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object cxMemo1: TcxMemo
      Left = 984
      Top = 10
      Lines.Strings = (
        'Se voc'#234' cadastrar o servidor'
        'Origem da vaga (derivada ou origin'#225'ria)'
        'se origin'#225'rio, remeter a tabela das leis'
        'se for derivada, remeter tabela dos desligados'
        'ambas ser'#227'o registradas no hist'#243'rico'
        ''
        't'#233'cnico jur'#237'dicos - remeter aos t')
      TabOrder = 0
      Visible = False
      Height = 36
      Width = 287
    end
    object cxDBLabel1: TcxDBLabel
      Left = 432
      Top = 100
      DataBinding.DataField = 'QtdVagas'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 30
      Width = 52
    end
    object lkpCargoCarreira: TcxLookupComboBox
      Left = 168
      Top = 40
      ParentFont = False
      Properties.KeyFieldNames = 'idCargoCarreira'
      Properties.ListColumns = <
        item
          FieldName = 'Descricao'
        end>
      Properties.ListSource = dsCargoCarreira
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 700
    end
    object edtDescricao: TcxTextEdit
      Left = 168
      Top = 10
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 700
    end
    object edtIdCargo: TcxTextEdit
      Left = 168
      Top = 71
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 121
    end
    object edtVagas_Prev: TcxSpinEdit
      Left = 168
      Top = 102
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 80
    end
    object mmoSQL: TcxMemo
      Left = 984
      Top = 56
      Lines.Strings = (
        'mmoSQL')
      TabOrder = 6
      Height = 40
      Width = 425
    end
  end
  object qryCargo: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SET DATEFORMAT dmy'
      '  SELECT  '
      ''
      '  CASE WHEN Habilitado = 1 THEN '#39'SIM'#39
      '  WHEN Habilitado = 0 THEN '#39'N'#195'O'#39
      '  ELSE '#39'-'#39' END AS Habilitado'
      ''
      ''
      '  , car.ID, car.idCargo'
      '  , car.Descricao as Cargo'
      '  , idCargoCarreira '
      '  , car.Vagas_Prev'
      '  , car.Vagas_Ocup'
      '  , cc.Descricao as Carreira'
      '  , idCargoCarreira '
      '  , dbo.F_QtdVagasOcupadasCargo(car.idCargo) as QtdVagas'
      ''
      '  FROM tbCargo as car'
      ''
      
        '  LEFT JOIN tbCargoCarreira cc on cc.idCargoCarreira = car.idCar' +
        'goCarreira'
      ''
      '  WHERE 1=1'
      '  AND Habilitado = 1'
      '  AND Carreira_PRG = 1')
    Left = 656
    Top = 80
  end
  object dsCargo: TDataSource
    DataSet = qryCargo
    Left = 688
    Top = 80
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 600
    OnTimer = Timer1Timer
    Left = 616
    Top = 81
  end
  object qryCargoCarreira: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbCargoCarreira')
    Left = 736
    Top = 80
  end
  object dsCargoCarreira: TDataSource
    DataSet = qryCargoCarreira
    Left = 768
    Top = 80
  end
end
