object frmUpdateTbLotacao: TfrmUpdateTbLotacao
  Left = 192
  Top = 117
  Width = 997
  Height = 446
  Caption = 'Manuten'#231#227'o da tabela de lota'#231#245'es'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 16
    Top = 231
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
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 989
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
      Left = 520
      Top = 8
      Width = 262
      Height = 25
      Caption = 'frmUpdateTabelaLotacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblOperacao: TLabel
      Left = 390
      Top = 9
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
    object lblTotal: TLabel
      Left = 808
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
    object btnSair: TcxButton
      Left = 256
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
    object Button1: TButton
      Left = 832
      Top = 16
      Width = 75
      Height = 25
      Caption = 'MaxID'
      TabOrder = 1
      OnClick = Button1Click
    end
    object btnNovaFuncao: TcxButton
      Left = 10
      Top = 5
      Width = 111
      Height = 35
      Caption = 'Nova lota'#231#227'o'
      TabOrder = 2
      OnClick = btnNovaFuncaoClick
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
    object btnEditarFuncao: TcxButton
      Left = 130
      Top = 5
      Width = 116
      Height = 35
      Caption = 'Editar lota'#231#227'o'
      TabOrder = 3
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
  end
  object pgcLotacao: TcxPageControl
    Left = 0
    Top = 55
    Width = 989
    Height = 360
    ActivePage = tshRelacao
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 360
    ClientRectRight = 989
    ClientRectTop = 24
    object tshRelacao: TcxTabSheet
      Caption = 'Rela'#231#227'o de lota'#231#245'es'
      ImageIndex = 0
      object gbxCargo: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Pesquisar'
        TabOrder = 0
        Height = 65
        Width = 989
        object lblLotacao: TLabel
          Left = 16
          Top = 31
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
        object edtLotacao: TcxTextEdit
          Left = 68
          Top = 28
          TabOrder = 0
          OnKeyPress = edtLotacaoKeyPress
          Width = 342
        end
        object rgpEstrutura: TcxRadioGroup
          Left = 472
          Top = 8
          Caption = 'Estrutura'
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Nova'
            end
            item
              Caption = 'Antigas'
            end
            item
              Caption = 'Todas'
            end>
          ItemIndex = 0
          TabOrder = 1
          OnClick = rgpEstruturaClick
          Height = 51
          Width = 233
        end
      end
      object grdLotacao: TcxGrid
        Left = 0
        Top = 65
        Width = 989
        Height = 271
        Align = alClient
        TabOrder = 1
        object grdLotacaoDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsLotacao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentEven = frmPrincipal.cxStyle1
          object grdLotacaoDBTableView1Column1: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'descricao'
            Width = 500
          end
          object grdLotacaoDBTableView1Column2: TcxGridDBColumn
            Caption = 'Nova estrutura'
            DataBinding.FieldName = 'NovaEstrutura'
            Width = 95
          end
          object grdLotacaoDBTableView1Column5: TcxGridDBColumn
            DataBinding.FieldName = 'Sigla'
            Width = 200
          end
          object grdLotacaoDBTableView1Column6: TcxGridDBColumn
            DataBinding.FieldName = 'SuperLotacao'
            Width = 150
          end
          object grdLotacaoDBTableView1Column7: TcxGridDBColumn
            DataBinding.FieldName = 'Sala'
            Width = 70
          end
          object grdLotacaoDBTableView1Column8: TcxGridDBColumn
            DataBinding.FieldName = 'Ramal'
            Width = 70
          end
          object grdLotacaoDBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Width = 50
          end
          object grdLotacaoDBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'idLotacao'
            Width = 120
          end
        end
        object grdLotacaoLevel1: TcxGridLevel
          GridView = grdLotacaoDBTableView1
        end
      end
    end
    object tshCreateLotacao: TcxTabSheet
      Caption = 'Incluir nova lota'#231#227'o'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 989
        Height = 336
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
        object Label1: TLabel
          Left = 16
          Top = 71
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 95
          Width = 28
          Height = 13
          Caption = 'Sigla'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 119
          Width = 25
          Height = 13
          Caption = 'Sala'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 168
          Top = 119
          Width = 36
          Height = 13
          Caption = 'Ramal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblGrauInstrucao: TLabel
          Left = 311
          Top = 95
          Width = 75
          Height = 13
          Caption = 'Superlota'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object btnGravar: TcxButton
          Left = 2
          Top = 5
          Width = 110
          Height = 35
          Caption = '&Gravar'
          TabOrder = 0
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
        object Button2: TButton
          Left = 816
          Top = 16
          Width = 75
          Height = 25
          Caption = 'MaxID'
          TabOrder = 1
          OnClick = Button1Click
        end
        object edtDescricao: TcxTextEdit
          Left = 84
          Top = 68
          TabOrder = 2
          OnKeyPress = edtLotacaoKeyPress
          Width = 645
        end
        object edtSigla: TcxTextEdit
          Left = 84
          Top = 92
          TabOrder = 3
          OnKeyPress = edtLotacaoKeyPress
          Width = 189
        end
        object edtSala: TcxTextEdit
          Left = 84
          Top = 116
          TabOrder = 4
          OnKeyPress = edtLotacaoKeyPress
          Width = 70
        end
        object edtRamal: TcxTextEdit
          Left = 220
          Top = 116
          TabOrder = 5
          OnKeyPress = edtLotacaoKeyPress
          Width = 70
        end
        object lkpSuperLotacao: TcxLookupComboBox
          Left = 424
          Top = 92
          Properties.KeyFieldNames = 'superLotacao'
          Properties.ListColumns = <
            item
              FieldName = 'superLotacao'
            end>
          Properties.ListSource = dsSuperLotacao
          TabOrder = 6
          Width = 233
        end
        object mmoSQL: TcxMemo
          Left = 85
          Top = 168
          Lines.Strings = (
            'mmoSQL')
          TabOrder = 7
          Height = 129
          Width = 761
        end
      end
    end
    object tshEditarLotacao: TcxTabSheet
      Caption = 'Editar lota'#231#227'o'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 989
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
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
        object cxButton1: TcxButton
          Left = 2
          Top = 5
          Width = 110
          Height = 35
          Caption = '&Gravar'
          TabOrder = 0
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
        object Button3: TButton
          Left = 816
          Top = 16
          Width = 75
          Height = 25
          Caption = 'MaxID'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
  end
  object qryLotacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 440
    Top = 40
  end
  object dsLotacao: TDataSource
    DataSet = qryLotacao
    Left = 472
    Top = 40
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 600
    OnTimer = Timer1Timer
    Left = 224
    Top = 97
  end
  object qrySuperLotacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 528
    Top = 40
  end
  object dsSuperLotacao: TDataSource
    DataSet = qrySuperLotacao
    Left = 560
    Top = 40
  end
end
