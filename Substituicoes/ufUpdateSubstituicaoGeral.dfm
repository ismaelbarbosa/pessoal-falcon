object frmUpdateSubstituicaoGeral: TfrmUpdateSubstituicaoGeral
  Left = 0
  Top = 74
  Width = 1024
  Height = 654
  Caption = 'Substitui'#231#245'es de procuradores'
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
    Width = 1016
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
    object btnSair: TcxButton
      Left = 145
      Top = 5
      Width = 110
      Height = 35
      Caption = 'Sai&r'
      TabOrder = 1
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
    object btnPesquisar: TcxButton
      Left = 7
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
  object pnlNome: TPanel
    Left = 0
    Top = 44
    Width = 1016
    Height = 120
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object txtNome: TDBText
      Left = 23
      Top = 10
      Width = 845
      Height = 21
      DataField = 'nome'
      DataSource = dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 23
      Top = 75
      Width = 54
      Height = 16
      AutoSize = True
      DataField = 'Cargo'
      DataSource = dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 23
      Top = 50
      Width = 54
      Height = 16
      AutoSize = True
      DataField = 'Lotacao'
      DataSource = dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object mmoSQL: TcxMemo
      Left = 824
      Top = 32
      Lines.Strings = (
        'mmoSQL')
      TabOrder = 0
      Visible = False
      Height = 49
      Width = 201
    end
  end
  object pgcSubstituicoes: TcxPageControl
    Left = 0
    Top = 164
    Width = 1016
    Height = 459
    ActivePage = tshRelacaoSubstituicao
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 459
    ClientRectRight = 1016
    ClientRectTop = 24
    object tshRelacaoProcuradores: TcxTabSheet
      Caption = '&1. Rela'#231#227'o de procuradores'
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1083
        Height = 59
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 21
          Width = 155
          Height = 18
          Caption = 'Nome ou matr'#237'cula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 959
          Top = 7
          Width = 100
          Height = 34
          DataField = 'idPessoal'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -27
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object edtPesquisa: TcxTextEdit
          Left = 183
          Top = 17
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyDown = edtPesquisaKeyDown
          OnKeyPress = edtPesquisaKeyPress
          Width = 355
        end
      end
      object grdServidores: TcxGrid
        Left = 0
        Top = 59
        Width = 1083
        Height = 376
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object tbvProcuradores: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPesquisa
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object tvcMatricula: TcxGridDBColumn
            Caption = 'Matr'#237'cula'
            DataBinding.FieldName = 'idServidor'
            Width = 120
          end
          object tvcNome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
          end
          object tvcCargo: TcxGridDBColumn
            DataBinding.FieldName = 'Cargo'
          end
          object tvcLotacao: TcxGridDBColumn
            Caption = 'Lota'#231#227'o'
            DataBinding.FieldName = 'Lotacao'
          end
        end
        object grdServidoresLevel1: TcxGridLevel
          GridView = tbvProcuradores
        end
      end
    end
    object tshRelacaoSubstituicao: TcxTabSheet
      Caption = '&2. Rela'#231#227'o de substitui'#231#245'es do procurador'
      ImageIndex = 1
      OnShow = tshRelacaoSubstituicaoShow
      object pnlCRUDSubstituicao: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblQtdServidores: TLabel
          Left = 520
          Top = 21
          Width = 95
          Height = 13
          Caption = 'lblQtdServidores'
        end
        object btnIncluirSubstituicao: TcxButton
          Left = 10
          Top = 8
          Width = 150
          Height = 35
          Caption = 'Incluir substitui'#231#227'o'
          TabOrder = 0
          OnClick = btnIncluirSubstituicaoClick
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
        object btnEditarFerias: TcxButton
          Left = 165
          Top = 8
          Width = 150
          Height = 35
          Caption = 'Editar substitui'#231#227'o'
          Enabled = False
          TabOrder = 1
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
        object btnExcluirFerias: TcxButton
          Left = 320
          Top = 8
          Width = 150
          Height = 35
          Caption = 'Excluir substitui'#231#227'o'
          TabOrder = 2
          OnClick = btnExcluirFeriasClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000003C000000D7000000FF0000
            00FF000000FF000000D70000003C000000000000000000000000000000000000
            000000000000000000000000000000000040000000E900000048000000000000
            00000000000000000089000000F4000000400000000000000000000000000000
            0000000000000000000000000040000000E90000004000000000000000000000
            000000000052000000E700000069000000E90000004000000000000000000000
            0000000000000000001B000000E8000000400000000000000000000000000000
            0052000000E7000000300000000000000040000000E900000040000000000000
            00000000000000000054000000AC000000000000000000000000000000520000
            00E70000003000000000000000000000000000000040000000E9000000400000
            0000000000000000001B000000E8000000400000000000000052000000E70000
            0030000000000000000000000000000000000000000000000040000000E90000
            0040000000000000000000000040000000E900000081000000E7000000300000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000040000000F400000069000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00AD0000005400000000000000000000000000000040000000E9000000400000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000000000000000000003C000000E90000
            004200000000000000000000000000000000000000000000003C000000E90000
            00420000000000000000000000000000000000000000000000000000003C0000
            00E9000000420000000000000000000000000000003C000000E9000000420000
            0000000000000000000000000000000000000000000000000000000000000000
            003C000000E900000042000000000000003C000000E900000042000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000040000000E8000000AC000000E80000004000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000001C000000540000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
      end
      object grdSubstituicoes: TcxGrid
        Left = 0
        Top = 189
        Width = 1016
        Height = 246
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object grdSubstituicoesDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsProcuradorSubstituido
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object tvcProcuradorSubstituido: TcxGridDBColumn
            Caption = 'Procurador substitu'#237'do'
            DataBinding.FieldName = 'Nome'
            Width = 500
          end
          object tvcProcuradorInicio: TcxGridDBColumn
            Caption = 'Data de in'#237'cio'
            DataBinding.FieldName = 'dt_Inicio'
            Width = 150
          end
          object tvcProcuradorTermino: TcxGridDBColumn
            Caption = 'Data de t'#233'rmino'
            DataBinding.FieldName = 'dt_Termino'
            Width = 150
          end
          object tvcProcuradorNdias: TcxGridDBColumn
            Caption = 'N'#186' de dias'
            DataBinding.FieldName = 'ndias'
            Width = 110
          end
          object tvcProcuradorNProcessoSEI: TcxGridDBColumn
            Caption = 'Processo SEI'
            DataBinding.FieldName = 'nProcessoSEI'
            Width = 200
          end
        end
        object grdSubstituicoesLevel1: TcxGridLevel
          GridView = grdSubstituicoesDBTableView1
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 54
        Width = 1016
        Height = 135
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsTotalDiasSubstituidos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object tvcAno: TcxGridDBColumn
            DataBinding.FieldName = 'Ano'
            Width = 70
          end
          object tvcTotalDias: TcxGridDBColumn
            Caption = 'Total de dias'
            DataBinding.FieldName = 'TOTAL DE DIAS'
            Width = 150
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object qryPesquisa: TADOQuery
    Connection = DMConexao.conPessoal
    Parameters = <>
    Left = 328
    Top = 8
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 360
    Top = 8
  end
  object dsTotalDiasSubstituidos: TDataSource
    Left = 476
    Top = 9
  end
  object dsProcuradorSubstituido: TDataSource
    Left = 580
    Top = 8
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
    Left = 444
    Top = 7
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
    Left = 548
    Top = 6
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 728
    Top = 16
  end
end
