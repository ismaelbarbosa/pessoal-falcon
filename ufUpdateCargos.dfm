object frmUpdateCargos_20211222: TfrmUpdateCargos_20211222
  Left = 356
  Top = 1
  Width = 1022
  Height = 725
  Caption = 'Gerenciamento de cargos, vagas e nomea'#231#245'es '
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
    Width = 1014
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
      Width = 185
      Height = 25
      Caption = 'frmUpdateCargos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnSair: TcxButton
      Left = 512
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
    object btnGerenciarCargos: TcxButton
      Left = 11
      Top = 5
      Width = 138
      Height = 35
      Caption = 'Gerenciar cargos'
      TabOrder = 1
      OnClick = btnGerenciarCargosClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF000000000000000000000000000049000000E3000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
        0000000000000000000000000000000000E3000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000E20000
        0000000000000000000000000000000000FF000000ED000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000ED000000FF0000
        0000000000000000000000000000000000FF0000001500000070000000BE0000
        00DA000000F4000000F4000000DA000000BE0000007000000015000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF00000000000000000000000A0000
        0093000000EA000000EA000000930000000A0000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000940000
        00FF000000FF000000FF000000FF000000940000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000E60000
        00FF000000FF000000FF000000FF000000E50000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000E70000
        00FF000000FF000000FF000000FF000000E80000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000940000
        00FF000000FF000000FF000000FF000000940000000000000000000000FF0000
        0000000000000000000000000000000000FF00000000000000000000000A0000
        0093000000EA000000EA000000930000000A0000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000F90000000600000000000000000000
        00DD000000FF000000FF000000DB000000000000000000000007000000F90000
        0000000000000000000000000000000000BC0000007900000006000000000000
        000000000000000000000000000000000000000000060000007A000000BA0000
        00000000000000000000000000000000001F000000BC000000F9000000FF0000
        00FF000000FF000000FF000000FF000000FF000000F9000000BB0000001E0000
        000000000000}
    end
    object btnGerenciarVagas: TcxButton
      Left = 163
      Top = 5
      Width = 139
      Height = 35
      Caption = 'Gerenciar vagas'
      TabOrder = 2
      OnClick = btnGerenciarVagasClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000078000000B00000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000002C000000AA0000000000000000000000DA0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00DB00000000000000000000006C000000760000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000AD000000A30000000900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001E0000009F0000000000000000000000DA0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00DB00000000000000000000006A000000790000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000120000008F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000270000008F0000000000000000000000DA0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00DB000000000000000000000052000000600000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
    object btnGerenciarNomeacoes: TcxButton
      Left = 315
      Top = 5
      Width = 170
      Height = 35
      Caption = 'Gerenciar nomea'#231#245'es'
      TabOrder = 3
      OnClick = btnGerenciarNomeacoesClick
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000C3000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000C300000000000000000000
        000000000000000000E200000024000000000000000000000000000000000000
        000000000000000000000000000000000025000000E200000000000000000000
        00000000000000000084000000B9000000060000000000000000000000000000
        0000000000000000000000000006000000B90000008300000000000000000000
        00000000000000000005000000AB000000D10000006000000021000000090000
        00090000002100000061000000D1000000AA0000000500000000000000000000
        00000000000000000000000000010000004B000000A8000000E0000000F50000
        00F5000000E0000000A80000004B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000040000000E2000000400000
        0000000000000000000000000000000000000000000A00000094000000E60000
        00E6000000940000000A0000000000000037000000EA00000074000000EA0000
        00400000000000000000000000000000000000000093000000AE0000001A0000
        001A000000AE0000009300000000000000300000003700000000000000400000
        00EA00000040000000000000000000000000000000E90000001A000000000000
        00000000001A000000E900000000000000000000000000000000000000000000
        0040000000D0000000000000000000000000000000E90000001A000000000000
        00000000001A000000E900000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000093000000AC000000180000
        0018000000AC0000009300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000A00000094000000E60000
        00E6000000940000000A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
  end
  object pgcTabelas: TcxPageControl
    Left = 0
    Top = 55
    Width = 1014
    Height = 639
    ActivePage = tshCargos
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 639
    ClientRectRight = 1014
    ClientRectTop = 24
    object tshCargos: TcxTabSheet
      Caption = 'Cargos'
      ImageIndex = 0
      object pnlCargos: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 615
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object grdCargos: TcxGrid
          Left = 48
          Top = 341
          Width = 1014
          Height = 378
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
        object pnlBotoesCargo: TPanel
          Left = 0
          Top = 0
          Width = 1014
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object lblOperacaoCargo: TLabel
            Left = 534
            Top = 10
            Width = 170
            Height = 23
            Caption = 'lblOperacaoCargo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object btnNovoCargo: TcxButton
            Left = 10
            Top = 4
            Width = 110
            Height = 35
            Caption = 'Novo cargo'
            Enabled = False
            TabOrder = 0
            OnClick = btnNovoCargoClick
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
          object btnEditarCargo: TcxButton
            Left = 133
            Top = 4
            Width = 112
            Height = 35
            Caption = 'Editar cargo'
            Enabled = False
            TabOrder = 1
            OnClick = btnEditarCargoClick
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
          object btnGravarCargo: TcxButton
            Left = 258
            Top = 4
            Width = 110
            Height = 35
            Caption = '&Gravar'
            Enabled = False
            TabOrder = 2
            OnClick = btnGravarCargoClick
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
          object btnCancelarCargo: TcxButton
            Left = 381
            Top = 4
            Width = 110
            Height = 35
            Caption = '&Cancelar'
            Enabled = False
            TabOrder = 3
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
        object pgcCRCargo: TcxPageControl
          Left = 0
          Top = 46
          Width = 1014
          Height = 191
          ActivePage = tshCreateUpdateCargo
          Align = alTop
          TabOrder = 2
          ClientRectBottom = 191
          ClientRectRight = 1014
          ClientRectTop = 24
          object tshReadCargo: TcxTabSheet
            Caption = 'Rela'#231#227'o de cargos'
            ImageIndex = 1
            object pnlReadCargo: TPanel
              Left = 0
              Top = 0
              Width = 1014
              Height = 161
              Align = alTop
              BevelOuter = bvNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label14: TLabel
                Left = 791
                Top = 126
                Width = 14
                Height = 13
                Caption = 'ID'
                Visible = False
              end
              object DBText1: TDBText
                Left = 817
                Top = 126
                Width = 48
                Height = 13
                AutoSize = True
                DataField = 'idCargo'
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
                Top = 109
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
                Top = 48
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
                Top = 18
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
              object txtIdCargo_: TDBText
                Left = 168
                Top = 79
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
                Top = 110
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
                Top = 115
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
                Top = 23
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
                Top = 53
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
                Top = 84
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
                Top = 115
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
                Top = 115
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
                Top = 108
                DataBinding.DataField = 'QtdVagas'
                DataBinding.DataSource = dsCargo
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
          end
          object tshCreateUpdateCargo: TcxTabSheet
            Caption = 'Inclus'#227'o e edi'#231#227'o'
            ImageIndex = 0
            object pnlUpdateCargo: TPanel
              Left = 0
              Top = 0
              Width = 1014
              Height = 156
              Align = alTop
              BevelOuter = bvNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label28: TLabel
                Left = 895
                Top = 118
                Width = 14
                Height = 13
                Caption = 'ID'
                Visible = False
              end
              object txtIdCargo: TDBText
                Left = 921
                Top = 118
                Width = 62
                Height = 13
                AutoSize = True
                DataField = 'idCargo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                Visible = False
              end
              object Label1: TLabel
                Left = 47
                Top = 115
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
                Top = 115
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
                Top = 115
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
                Top = 109
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
                Top = 23
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
                Top = 53
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
                Top = 84
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
                Top = 108
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
                Top = 48
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
                Top = 18
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = 'Verdana'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 3
                OnKeyPress = edtDescricaoKeyPress
                Width = 700
              end
              object edtIdCargo: TcxTextEdit
                Left = 168
                Top = 79
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = 'Verdana'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 4
                OnExit = edtIdCargoExit
                Width = 121
              end
              object edtVagas_Prev: TcxSpinEdit
                Left = 168
                Top = 110
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
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Pesquisa de cargos'
            ImageIndex = 2
            object gbxPesquisarCargo: TcxGroupBox
              Left = 0
              Top = 0
              Align = alClient
              Caption = 'Pesquisar'
              TabOrder = 0
              Visible = False
              Height = 167
              Width = 1014
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
                Left = 124
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
          end
        end
      end
    end
    object tshVagas: TcxTabSheet
      Caption = 'Vagas'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 615
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 768
          Top = 8
          Width = 13
          Height = 25
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Button2: TButton
          Left = 816
          Top = 16
          Width = 75
          Height = 25
          Caption = 'MaxID'
          TabOrder = 0
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'Pesquisar'
          TabOrder = 1
          Visible = False
          Height = 113
          Width = 1014
          object Label5: TLabel
            Left = 16
            Top = 31
            Width = 35
            Height = 13
            Caption = 'Cargo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lblTotalVagas: TLabel
            Left = 888
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
          end
          object edtVagaCargo: TcxTextEdit
            Left = 68
            Top = 28
            TabOrder = 0
            OnKeyPress = edtVagaCargoKeyPress
            Width = 342
          end
          object btnNovoVaga: TcxButton
            Left = 72
            Top = 66
            Width = 110
            Height = 35
            Caption = '&Nova vaga'
            TabOrder = 1
            OnClick = btnGravarCargoClick
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
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 305
          Width = 1014
          Height = 310
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCargoVaga
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = 'C'#243'digo da vaga'
              DataBinding.FieldName = 'idCargoVaga'
            end
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 500
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idCargo'
              Width = 150
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Vagas previstas'
              DataBinding.FieldName = 'Vagas_Prev'
              Width = 150
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'QtdVagas'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object gbxEditarVaga: TcxGroupBox
          Left = 0
          Top = 113
          Align = alTop
          Caption = 'Editar'
          TabOrder = 3
          Height = 192
          Width = 1014
          object Label7: TLabel
            Left = 117
            Top = 31
            Width = 56
            Height = 23
            Caption = 'Cargo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 117
            Top = 109
            Width = 56
            Height = 23
            Caption = 'Vagas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 408
            Top = 68
            Width = 28
            Height = 23
            Caption = 'Lei'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 24
            Top = 70
            Width = 149
            Height = 23
            Caption = 'Data de cria'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object cxLookupComboBox1: TcxLookupComboBox
            Left = 184
            Top = 28
            ParentFont = False
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'Cargo'
              end>
            Properties.ListSource = dsCargo
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Verdana'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 745
          end
          object btnGravarNovaVaga: TcxButton
            Left = 498
            Top = 126
            Width = 110
            Height = 35
            Caption = '&Gravar'
            TabOrder = 1
            OnClick = btnGravarNovaVagaClick
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
          object edtLei: TcxTextEdit
            Left = 496
            Top = 65
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Verdana'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 121
          end
          object edtData: TcxDateEdit
            Left = 184
            Top = 64
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -24
            Style.Font.Name = 'Verdana'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 185
          end
          object edtQtdVagas: TcxSpinEdit
            Left = 184
            Top = 106
            ParentFont = False
            Properties.MaxValue = 10.000000000000000000
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -24
            Style.Font.Name = 'Verdana'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Value = 1
            Width = 67
          end
        end
      end
    end
    object tshServidores: TcxTabSheet
      Caption = 'Servidores'
      ImageIndex = 2
    end
    object tshHistorico: TcxTabSheet
      Caption = 'Hist'#243'rico'
      ImageIndex = 3
    end
  end
  object qryCargo: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    OnCalcFields = qryCargoCalcFields
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
    Left = 856
    Top = 88
  end
  object dsCargo: TDataSource
    DataSet = qryCargo
    OnDataChange = dsCargoDataChange
    Left = 888
    Top = 88
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 600
    OnTimer = Timer1Timer
    Left = 480
    Top = 97
  end
  object qryCargoVaga: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 952
    Top = 88
  end
  object dsCargoVaga: TDataSource
    DataSet = qryCargoVaga
    Left = 984
    Top = 88
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 600
    OnTimer = Timer2Timer
    Left = 480
    Top = 137
  end
  object qryCargoCarreira: TADOQuery
    Connection = DMConexao.conPessoal
    CursorType = ctStatic
    OnCalcFields = qryCargoCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from tbCargoCarreira')
    Left = 744
    Top = 88
  end
  object dsCargoCarreira: TDataSource
    DataSet = qryCargoCarreira
    Left = 776
    Top = 88
  end
end
