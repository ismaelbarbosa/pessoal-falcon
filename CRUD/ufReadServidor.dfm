object frmReadServidor: TfrmReadServidor
  Left = 35
  Top = 202
  Width = 1374
  Height = 832
  Caption = 'Rela'#231#227'o de pessoal'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1366
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
      Left = 944
      Top = 8
      Width = 178
      Height = 25
      Caption = 'frmReadServidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnSair: TcxButton
      Left = 274
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
    object btnNovo: TcxButton
      Left = 8
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Novo'
      TabOrder = 1
      OnClick = btnNovoClick
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
        00F5000000E0000000A80000004B000000000000000000000000000000DB0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000000000000A00000094000000E60000
        00E6000000940000000A0000000000000000000000DD000000FF000000FF0000
        00FF000000DB00000000000000000000000000000093000000AE0000001A0000
        001A000000AE0000009300000000000000000000000000000000000000FF0000
        000000000000000000000000000000000000000000E90000001A000000000000
        00000000001A000000E900000000000000000000000000000000000000DA0000
        000000000000000000000000000000000000000000E90000001A000000000000
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
    object btnPesquisar: TcxButton
      Left = 400
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Pesquisar'
      TabOrder = 0
      Visible = False
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
    object btnEditarServidor: TcxButton
      Left = 133
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Editar'
      TabOrder = 3
      OnClick = btnEditarServidorClick
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
  object grdResultado: TcxGroupBox
    Left = 0
    Top = 93
    Align = alTop
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clGray
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Height = 177
    Width = 1366
    object grdPessoal: TcxGrid
      Left = 2
      Top = 50
      Width = 1362
      Height = 125
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object tbvPessoal: TcxGridDBTableView
        OnDblClick = tbvPessoalDblClick
        OnKeyPress = tbvPessoalKeyPress
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPesquisa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
        object tbcNome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
          Width = 300
        end
        object tbcMatricula: TcxGridDBColumn
          Caption = 'Matr'#237'cula'
          DataBinding.FieldName = 'idServidor'
          Visible = False
          Width = 100
        end
        object tbcCPF: TcxGridDBColumn
          DataBinding.FieldName = 'CPF'
          Visible = False
          Width = 100
        end
        object tbcSiglaLotacao: TcxGridDBColumn
          Caption = 'Lota'#231#227'o'
          DataBinding.FieldName = 'SiglaLotacao'
          Width = 250
        end
        object tbcCargo: TcxGridDBColumn
          Caption = 'Cargo efetivo'
          DataBinding.FieldName = 'descricaoCargo'
          Width = 350
        end
        object tbcFuncao: TcxGridDBColumn
          Caption = 'Fun'#231#227'o'
          DataBinding.FieldName = 'descricaoFuncao'
          Width = 350
        end
        object tbcDataDesligCargo: TcxGridDBColumn
          DataBinding.FieldName = 'Dt_Deslig_Cargo'
          Visible = False
        end
        object tbcStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Width = 100
        end
      end
      object lvlPessoal: TcxGridLevel
        GridView = tbvPessoal
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 18
      Width = 1362
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Image2: TImage
        Left = 13
        Top = 10
        Width = 10
        Height = 10
        Picture.Data = {
          07544269746D6170C6000000424DC60000000000000076000000280000000A00
          00000A0000000100040000000000500000000000000000000000100000001000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000}
      end
      object lblRequisitado: TLabel
        Left = 104
        Top = 7
        Width = 75
        Height = 16
        Caption = 'Requisitado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDeslig_Cargo: TLabel
        Left = 222
        Top = 7
        Width = 131
        Height = 16
        Caption = 'Desligado/Devolvido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDeslig_Funcao: TLabel
        Left = 391
        Top = 7
        Width = 96
        Height = 16
        Caption = 'Deslig. Fun'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label3: TLabel
        Left = 568
        Top = 8
        Width = 49
        Height = 13
        Caption = 'Servidor'
      end
      object lblAtivo: TLabel
        Left = 27
        Top = 7
        Width = 34
        Height = 16
        Caption = 'Ativo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Image4: TImage
        Left = 90
        Top = 10
        Width = 10
        Height = 10
        Picture.Data = {
          07544269746D6170C6000000424DC60000000000000076000000280000000A00
          00000A0000000100040000000000500000000000000000000000100000000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00222222222200000022222222220000002222222222000000222222222200
          0000222222222200000022222222220000002222222222000000222222222200
          000022222222220000002222222222000000}
      end
      object Image1: TImage
        Left = 208
        Top = 10
        Width = 10
        Height = 10
        Picture.Data = {
          07544269746D6170F6000000424DF60000000000000076000000280000001000
          0000100000000100040000000000800000000000000000000000100000001000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999}
      end
      object Image3: TImage
        Left = 377
        Top = 10
        Width = 10
        Height = 10
        Picture.Data = {
          07544269746D6170C6000000424DC60000000000000076000000280000000A00
          00000A0000000100040000000000500000000000000000000000100000001000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00CCCCCCCCCC000000CCCCCCCCCC000000CCCCCCCCCC000000CCCCCCCCCC00
          0000CCCCCCCCCC000000CCCCCCCCCC000000CCCCCCCCCC000000CCCCCCCCCC00
          0000CCCCCCCCCC000000CCCCCCCCCC000000}
        Visible = False
      end
    end
  end
  object splPesqPessoal: TcxSplitter
    Left = 0
    Top = 270
    Width = 1366
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salTop
    Control = grdResultado
  end
  object pgcPessoal: TcxPageControl
    Left = 0
    Top = 336
    Width = 1366
    Height = 465
    ActivePage = tshDadosFuncionais
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ClientRectBottom = 465
    ClientRectRight = 1366
    ClientRectTop = 27
    object tshDadosFuncionais: TcxTabSheet
      Caption = 'Dados Funcionais'
      ImageIndex = 0
      object gbxDadosFuncionais: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object lblCargo: TLabel
          Left = 126
          Top = 48
          Width = 38
          Height = 16
          Caption = 'Cargo'
        end
        object lblClasse: TLabel
          Left = 513
          Top = 83
          Width = 42
          Height = 16
          Caption = 'Classe'
        end
        object lblPadrao: TLabel
          Left = 648
          Top = 83
          Width = 45
          Height = 16
          Caption = 'Padr'#227'o'
        end
        object lblLotacao: TLabel
          Left = 111
          Top = 103
          Width = 53
          Height = 16
          Caption = 'Lota'#231#227'o'
        end
        object txtCargo: TDBText
          Left = 181
          Top = 47
          Width = 70
          Height = 18
          AutoSize = True
          DataField = 'descricaoCargo'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtidCargo: TDBText
          Left = 870
          Top = 85
          Width = 60
          Height = 13
          AutoSize = True
          DataField = 'idCargo'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object txtClasse: TDBText
          Left = 559
          Top = 85
          Width = 53
          Height = 13
          AutoSize = True
          DataField = 'Classe'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtPadrao: TDBText
          Left = 698
          Top = 85
          Width = 55
          Height = 13
          AutoSize = True
          DataField = 'Padrao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtidLotacao: TDBText
          Left = 414
          Top = 103
          Width = 69
          Height = 13
          AutoSize = True
          DataField = 'idLotacao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblEspecialidade: TLabel
          Left = 76
          Top = 83
          Width = 88
          Height = 16
          Caption = 'Especialidade'
        end
        object edtEspecialidade: TDBText
          Left = 181
          Top = 85
          Width = 95
          Height = 13
          AutoSize = True
          DataField = 'Especialidade'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtLotSigla: TDBText
          Left = 182
          Top = 103
          Width = 60
          Height = 13
          AutoSize = True
          DataField = 'SiglaLotacao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_Nomeacao: TLabel
          Left = 96
          Top = 163
          Width = 68
          Height = 16
          Caption = 'Nomea'#231#227'o'
        end
        object lblDt_PosseCargo: TLabel
          Left = 126
          Top = 183
          Width = 38
          Height = 16
          Caption = 'Posse'
        end
        object lblDt_Deslig_Cargo: TLabel
          Left = 37
          Top = 223
          Width = 127
          Height = 13
          Caption = 'Data de Desligamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_ExercicioCargo: TLabel
          Left = 427
          Top = 183
          Width = 58
          Height = 16
          Caption = 'Exerc'#237'cio'
        end
        object lblDesligamento: TLabel
          Left = 28
          Top = 203
          Width = 136
          Height = 13
          Caption = 'Forma de Desligamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_Falecimento: TLabel
          Left = 407
          Top = 163
          Width = 78
          Height = 16
          Caption = 'Falecimento'
        end
        object txtLotacao: TDBText
          Left = 182
          Top = 123
          Width = 59
          Height = 13
          AutoSize = True
          DataField = 'descricaoLotacao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDesligamento: TDBText
          Left = 182
          Top = 203
          Width = 93
          Height = 13
          AutoSize = True
          DataField = 'desligamento'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDt_NomeacaoCargo: TDBText
          Left = 181
          Top = 163
          Width = 130
          Height = 13
          AutoSize = True
          DataField = 'Dt_NomeacaoCargo'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDt_Falecimento: TDBText
          Left = 520
          Top = 163
          Width = 102
          Height = 13
          AutoSize = True
          DataField = 'Dt_Falecimento'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDt_ExercicioCargo: TDBText
          Left = 520
          Top = 183
          Width = 121
          Height = 13
          AutoSize = True
          DataField = 'Dt_ExercicioCargo'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDt_PosseCargo: TDBText
          Left = 181
          Top = 183
          Width = 103
          Height = 13
          AutoSize = True
          DataField = 'Dt_PosseCargo'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtidDesligamento: TDBText
          Left = 414
          Top = 203
          Width = 103
          Height = 13
          AutoSize = True
          DataField = 'idDesligamento'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object txtDt_DesligamentoCargo: TDBText
          Left = 181
          Top = 223
          Width = 148
          Height = 13
          AutoSize = True
          DataField = 'Dt_Deslig_Cargo'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblPrimeiroExercicioGDF: TLabel
          Left = 696
          Top = 183
          Width = 109
          Height = 16
          Caption = '1'#186' Exerc'#237'cio GDF'
          Visible = False
        end
        object edtPrimeiroExercicioGDF: TDBText
          Left = 818
          Top = 185
          Width = 141
          Height = 13
          AutoSize = True
          DataField = 'Dt_PrimeiroExercicioGDF'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object txtExercicioExterno: TDBText
          Left = 414
          Top = 143
          Width = 110
          Height = 13
          AutoSize = True
          DataField = 'ExercicioExterno'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 51
          Top = 143
          Width = 113
          Height = 16
          Caption = 'Exerc'#237'cio externo'
        end
        object lblFuncao: TLabel
          Left = 78
          Top = 263
          Width = 86
          Height = 16
          Caption = 'Fun'#231#227'o atual'
        end
        object lblRamal: TLabel
          Left = 126
          Top = 243
          Width = 38
          Height = 16
          Caption = 'Ramal'
        end
        object lblSala: TLabel
          Left = 457
          Top = 243
          Width = 28
          Height = 16
          Caption = 'Sala'
        end
        object lblDt_NomeacaoFuncao: TLabel
          Left = 25
          Top = 283
          Width = 139
          Height = 16
          Caption = 'Nomea'#231#227'o na fun'#231#227'o'
        end
        object lblDt_ExercicioFuncao: TLabel
          Left = 35
          Top = 303
          Width = 129
          Height = 16
          Caption = 'Exerc'#237'cio na fun'#231#227'o'
        end
        object lblDt_PosseFuncao: TLabel
          Left = 376
          Top = 283
          Width = 109
          Height = 16
          Caption = 'Posse na fun'#231#227'o'
        end
        object lblDt_Digitacao: TLabel
          Left = 464
          Top = 391
          Width = 21
          Height = 16
          Caption = 'por'
        end
        object lblUsuario: TLabel
          Left = 87
          Top = 391
          Width = 77
          Height = 16
          Caption = 'Digitado em'
        end
        object txtUsuario: TDBText
          Left = 520
          Top = 391
          Width = 58
          Height = 13
          AutoSize = True
          DataField = 'Operador'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDt_Digitacao: TDBText
          Left = 181
          Top = 391
          Width = 88
          Height = 13
          AutoSize = True
          DataField = 'Dt_Digitacao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtFuncao: TDBText
          Left = 237
          Top = 263
          Width = 55
          Height = 13
          AutoSize = True
          DataField = 'descricaoFuncao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtRamal: TDBText
          Left = 181
          Top = 245
          Width = 51
          Height = 13
          AutoSize = True
          DataField = 'Ramal'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtSala: TDBText
          Left = 520
          Top = 245
          Width = 40
          Height = 13
          AutoSize = True
          DataField = 'Sala'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtidFuncao: TDBText
          Left = 520
          Top = 263
          Width = 65
          Height = 13
          AutoSize = True
          DataField = 'idFuncao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object txtNomeacaoFuncao: TDBText
          Left = 181
          Top = 283
          Width = 115
          Height = 13
          AutoSize = True
          DataField = 'Dt_NomeacaoFuncao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDt_ExercicioFuncao: TDBText
          Left = 181
          Top = 303
          Width = 126
          Height = 13
          AutoSize = True
          DataField = 'Dt_ExercicioFuncao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDt_PosseFuncao: TDBText
          Left = 520
          Top = 283
          Width = 108
          Height = 13
          AutoSize = True
          DataField = 'Dt_PosseFuncao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDtDeslig_Funcao: TLabel
          Left = 327
          Top = 303
          Width = 158
          Height = 16
          Caption = 'Desligamento da fun'#231#227'o'
        end
        object txtDtDeslig_Funcao: TDBText
          Left = 520
          Top = 303
          Width = 110
          Height = 13
          AutoSize = True
          DataField = 'Dt_Deslig_Funcao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCargaHoraria: TLabel
          Left = 404
          Top = 351
          Width = 81
          Height = 13
          Caption = 'Carga Hor'#225'ria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtCargaHoraria: TDBText
          Left = 520
          Top = 351
          Width = 92
          Height = 13
          AutoSize = True
          DataField = 'CargaHoraria'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtOrgaoDeOrigem: TDBText
          Left = 302
          Top = 332
          Width = 108
          Height = 13
          AutoSize = True
          DataField = 'OrgaoDeOrigem'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 183
          Top = 331
          Width = 108
          Height = 16
          Caption = 'Org'#227'o de origem'
        end
        object txtDFG: TDBText
          Left = 181
          Top = 263
          Width = 39
          Height = 13
          AutoSize = True
          DataField = 'SimboloDFG'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtSiglaOrgaoExterno: TDBText
          Left = 182
          Top = 143
          Width = 122
          Height = 13
          AutoSize = True
          DataField = 'siglaOrgaoExterno'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtMatricula: TDBText
          Left = 181
          Top = 23
          Width = 117
          Height = 18
          DataField = 'idServidor'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 104
          Top = 24
          Width = 60
          Height = 16
          Caption = 'Matr'#237'cula'
        end
        object Label19: TLabel
          Left = 695
          Top = 27
          Width = 21
          Height = 13
          Caption = 'IDP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 831
          Top = 27
          Width = 22
          Height = 13
          Caption = 'IDS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtIdPessoal: TDBText
          Left = 725
          Top = 27
          Width = 75
          Height = 18
          DataField = 'idPessoal'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtID: TDBText
          Left = 861
          Top = 27
          Width = 117
          Height = 18
          DataField = 'ID'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 74
          Top = 331
          Caption = 'Requisitado'
          DataBinding.DataField = 'Requisitado'
          DataBinding.DataSource = dsPesquisa
          ParentFont = False
          Properties.ReadOnly = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 90
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 178
          Top = 351
          Caption = 'Aux'#237'lio-transporte'
          DataBinding.DataField = 'AuxTransporte'
          DataBinding.DataSource = dsPesquisa
          ParentFont = False
          Properties.ReadOnly = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 142
        end
        object gbxPromocaoProcurador: TcxGroupBox
          Left = 688
          Top = 261
          Caption = 'Promo'#231#227'o de procurador'
          TabOrder = 2
          Height = 108
          Width = 392
          object Label22: TLabel
            Left = 98
            Top = 20
            Width = 151
            Height = 16
            Caption = 'Nomea'#231#227'o Categoria II'
          end
          object Label23: TLabel
            Left = 80
            Top = 40
            Width = 169
            Height = 16
            Caption = 'Nomea'#231#227'o Subprocurador'
          end
          object txtDt_PromocaoCategoria2: TDBText
            Left = 261
            Top = 20
            Width = 177
            Height = 16
            AutoSize = True
            DataField = 'Dt_PromocaoCategoria2'
            DataSource = dsPesquisa
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtDt_PromocaoSubProcurador: TDBText
            Left = 261
            Top = 40
            Width = 202
            Height = 16
            AutoSize = True
            DataField = 'Dt_PromocaoSubProcurador'
            DataSource = dsPesquisa
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lblAverbacaoGDF: TLabel
            Left = 148
            Top = 60
            Width = 101
            Height = 16
            Caption = 'Averba'#231#227'o GDF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lblAverbacaoServPublico: TLabel
            Left = 15
            Top = 76
            Width = 232
            Height = 16
            Caption = 'Averba'#231#227'o Servi'#231'o P'#250'blico (U/E/M)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object txtAverbacaoGDF: TDBText
            Left = 261
            Top = 60
            Width = 115
            Height = 16
            AutoSize = True
            DataField = 'AverbacaoGDF'
            DataSource = dsPesquisa
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtAverbacaoServPublico: TDBText
            Left = 261
            Top = 76
            Width = 165
            Height = 16
            AutoSize = True
            DataField = 'AverbacaoServPublico'
            DataSource = dsPesquisa
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object tshDadosPessoais: TcxTabSheet
      Caption = 'Dados Pessoais'
      ImageIndex = 2
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object lblNascimento: TLabel
          Left = 88
          Top = 24
          Width = 76
          Height = 16
          Caption = 'Nascimento'
        end
        object lblNaturalidade: TLabel
          Left = 403
          Top = 24
          Width = 82
          Height = 16
          Caption = 'Naturalidade'
        end
        object lblPai: TLabel
          Left = 145
          Top = 44
          Width = 19
          Height = 16
          Caption = 'Pai'
        end
        object lblEstadoCivil: TLabel
          Left = 88
          Top = 84
          Width = 76
          Height = 16
          Caption = 'Estado Civil'
        end
        object lblUF: TLabel
          Left = 653
          Top = 24
          Width = 17
          Height = 16
          Caption = 'UF'
        end
        object lblMae: TLabel
          Left = 137
          Top = 64
          Width = 27
          Height = 16
          Caption = 'M'#227'e'
        end
        object lblConjuge: TLabel
          Left = 111
          Top = 104
          Width = 53
          Height = 16
          Caption = 'C'#244'njuge'
        end
        object txtUF_Natural: TDBText
          Left = 679
          Top = 26
          Width = 77
          Height = 13
          AutoSize = True
          DataField = 'Natural_UF'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtidEstadoCivil: TDBText
          Left = 325
          Top = 86
          Width = 88
          Height = 13
          AutoSize = True
          DataField = 'idEstadoCivil'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object txtDt_Nascimento: TDBText
          Left = 180
          Top = 26
          Width = 101
          Height = 13
          AutoSize = True
          DataField = 'dt_nascimento'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtNaturalidade: TDBText
          Left = 500
          Top = 26
          Width = 87
          Height = 13
          AutoSize = True
          DataField = 'Naturalidade'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtPai: TDBText
          Left = 180
          Top = 46
          Width = 32
          Height = 13
          AutoSize = True
          DataField = 'Pai'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtMae: TDBText
          Left = 180
          Top = 66
          Width = 38
          Height = 13
          AutoSize = True
          DataField = 'Mae'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtConjuge: TDBText
          Left = 180
          Top = 106
          Width = 63
          Height = 13
          AutoSize = True
          DataField = 'Conjuge'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 127
          Top = 144
          Width = 37
          Height = 16
          Caption = 'Bairro'
        end
        object lblEndereco: TLabel
          Left = 103
          Top = 124
          Width = 61
          Height = 16
          Caption = 'Endere'#231'o'
        end
        object txtEndereco: TDBText
          Left = 180
          Top = 126
          Width = 68
          Height = 13
          AutoSize = True
          DataField = 'Endereco'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtBairro: TDBText
          Left = 180
          Top = 146
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'Bairro'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 120
          Top = 164
          Width = 44
          Height = 16
          Caption = 'Cidade'
        end
        object lblUFEndereco: TLabel
          Left = 468
          Top = 164
          Width = 17
          Height = 16
          Caption = 'UF'
        end
        object txtUF_End: TDBText
          Left = 500
          Top = 166
          Width = 57
          Height = 13
          AutoSize = True
          DataField = 'UF'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtCidade: TDBText
          Left = 180
          Top = 166
          Width = 55
          Height = 13
          AutoSize = True
          DataField = 'Cidade'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCEP: TLabel
          Left = 139
          Top = 184
          Width = 25
          Height = 16
          Caption = 'CEP'
        end
        object txtCEP: TDBText
          Left = 180
          Top = 186
          Width = 38
          Height = 13
          AutoSize = True
          DataField = 'CEP'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtEstadoCivil: TDBText
          Left = 180
          Top = 86
          Width = 78
          Height = 13
          AutoSize = True
          DataField = 'EstadoCivil'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblGrauInstrucao: TLabel
          Left = 45
          Top = 204
          Width = 119
          Height = 16
          Caption = 'Grau de Instru'#231#227'o'
        end
        object txtGrauInstrucao: TDBText
          Left = 180
          Top = 206
          Width = 97
          Height = 13
          AutoSize = True
          DataField = 'Grau'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCurso: TLabel
          Left = 448
          Top = 204
          Width = 37
          Height = 16
          Caption = 'Curso'
        end
        object txtCurso: TDBText
          Left = 500
          Top = 206
          Width = 49
          Height = 13
          AutoSize = True
          DataField = 'Curso'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblTipoSanguineo: TLabel
          Left = 386
          Top = 84
          Width = 99
          Height = 16
          Caption = 'Tipo sangu'#237'neo'
        end
        object txtTipoSanguineo: TDBText
          Left = 500
          Top = 86
          Width = 99
          Height = 13
          AutoSize = True
          DataField = 'TipoSanguineo'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object tshDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 7
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object lblRG: TLabel
          Left = 147
          Top = 45
          Width = 17
          Height = 16
          Caption = 'RG'
        end
        object lblCPF: TLabel
          Left = 139
          Top = 24
          Width = 25
          Height = 16
          Caption = 'CPF'
        end
        object lblTitulo: TLabel
          Left = 127
          Top = 85
          Width = 37
          Height = 16
          Caption = 'T'#237'tulo'
        end
        object lblCI_UF: TLabel
          Left = 651
          Top = 45
          Width = 71
          Height = 16
          Caption = #211'rg'#227'o/SSP'
        end
        object lblCI_Emissao: TLabel
          Left = 423
          Top = 45
          Width = 75
          Height = 16
          Caption = 'RG/Emiss'#227'o'
        end
        object lblZona: TLabel
          Left = 423
          Top = 85
          Width = 33
          Height = 16
          Caption = 'Zona'
        end
        object lblSecao: TLabel
          Left = 651
          Top = 85
          Width = 41
          Height = 16
          Caption = 'Se'#231#227'o'
        end
        object txtUF_CI: TDBText
          Left = 719
          Top = 47
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'CI_UF'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtCI_Num: TDBText
          Left = 180
          Top = 47
          Width = 62
          Height = 13
          AutoSize = True
          DataField = 'CI_Num'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtCI_Emissao: TDBText
          Left = 503
          Top = 47
          Width = 83
          Height = 13
          AutoSize = True
          DataField = 'CI_Emissao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtCPF: TDBText
          Left = 180
          Top = 22
          Width = 53
          Height = 18
          AutoSize = True
          DataField = 'cpf'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtTE_Num: TDBText
          Left = 180
          Top = 87
          Width = 62
          Height = 13
          AutoSize = True
          DataField = 'TE_Num'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtTE_Zona: TDBText
          Left = 479
          Top = 87
          Width = 65
          Height = 13
          AutoSize = True
          DataField = 'TE_Zona'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtTE_Secao: TDBText
          Left = 703
          Top = 87
          Width = 71
          Height = 13
          AutoSize = True
          DataField = 'TE_Secao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblTE_UF: TLabel
          Left = 423
          Top = 105
          Width = 51
          Height = 16
          Caption = 'TE - UF'
        end
        object lblTE_Emissao: TLabel
          Left = 78
          Top = 105
          Width = 86
          Height = 16
          Caption = 'TE - Emiss'#227'o'
        end
        object lblPis_Pasep: TLabel
          Left = 94
          Top = 125
          Width = 70
          Height = 16
          Caption = 'PIS/PASEP'
        end
        object txtUF_TE: TDBText
          Left = 479
          Top = 107
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'TE_UF'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtTE_Emissao: TDBText
          Left = 180
          Top = 107
          Width = 83
          Height = 13
          AutoSize = True
          DataField = 'TE_Emissao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtPIS_PASEP: TDBText
          Left = 180
          Top = 127
          Width = 79
          Height = 13
          AutoSize = True
          DataField = 'Pis_Pasep'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblBanco: TLabel
          Left = 124
          Top = 145
          Width = 40
          Height = 16
          Caption = 'Banco'
        end
        object lblAgencia: TLabel
          Left = 112
          Top = 165
          Width = 52
          Height = 16
          Caption = 'Ag'#234'ncia'
        end
        object txtBanco: TDBText
          Left = 180
          Top = 147
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'Banco'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblConta: TLabel
          Left = 423
          Top = 165
          Width = 39
          Height = 16
          Caption = 'Conta'
        end
        object txtAgencia: TDBText
          Left = 180
          Top = 167
          Width = 60
          Height = 13
          AutoSize = True
          DataField = 'Agencia'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtConta: TDBText
          Left = 479
          Top = 167
          Width = 49
          Height = 13
          AutoSize = True
          DataField = 'Conta'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblOAB: TLabel
          Left = 137
          Top = 185
          Width = 27
          Height = 16
          Caption = 'OAB'
        end
        object lblOAB_Secao: TLabel
          Left = 423
          Top = 185
          Width = 41
          Height = 16
          Caption = 'Se'#231#227'o'
        end
        object txtOAB: TDBText
          Left = 180
          Top = 187
          Width = 40
          Height = 13
          AutoSize = True
          DataField = 'OAB_Num'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtOAB_Secao: TDBText
          Left = 479
          Top = 187
          Width = 82
          Height = 13
          AutoSize = True
          DataField = 'OAB_Secao'
          DataSource = dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object chckbxAspro_Opc: TDBCheckBox
          Left = 423
          Top = 65
          Width = 60
          Height = 17
          Caption = 'Aspro'
          DataField = 'Aspro_Opc'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object tshTelefones: TcxTabSheet
      Caption = 'Telefones'
      ImageIndex = 8
      object cxGroupBox9: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdTelefones: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tbvTelefones: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsTelefonesServidor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object tbvTelefonesColumn1: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'Numero'
              Width = 100
            end
            object tbvTelefonesColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Tipo'
              Width = 250
            end
          end
          object lblTelefones: TcxGridLevel
            GridView = tbvTelefones
          end
        end
      end
    end
    object tshFuncoes: TcxTabSheet
      Caption = 'Fun'#231#245'es'
      ImageIndex = 1
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdHistoricoFuncoes: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tbvHistoricoFuncoes: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsHistoricoFuncoes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Fun'#231#227'o'
              DataBinding.FieldName = 'descricaoFuncao'
              Width = 400
            end
            object tbvHistoricoFuncoesColumn1: TcxGridDBColumn
              Caption = 'S'#237'mbolo'
              DataBinding.FieldName = 'idDFG'
              Width = 70
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Nomea'#231#227'o'
              DataBinding.FieldName = 'dt_NomeacaoFuncao'
              Width = 100
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = 'Posse'
              DataBinding.FieldName = 'dt_PosseFuncao'
              Width = 100
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = 'Exerc'#237'cio'
              DataBinding.FieldName = 'dt_ExercicioFuncao'
              Width = 100
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = 'Desligamento'
              DataBinding.FieldName = 'dt_Deslig_Funcao'
              Width = 100
            end
            object tbvHistoricoFuncoesColumn2: TcxGridDBColumn
              Caption = 'Observa'#231#245'es'
              DataBinding.FieldName = 'Observacao'
            end
          end
          object lvlHistoricoFuncoes: TcxGridLevel
            GridView = tbvHistoricoFuncoes
          end
        end
      end
    end
    object tshLotacoes: TcxTabSheet
      Caption = 'Lota'#231#245'es'
      ImageIndex = 10
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdLotacoes: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tbvLotacoes: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsHistoricoLotacoes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'Lota'#231#227'o'
              DataBinding.FieldName = 'descricaoLotacao'
              Width = 550
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = 'Data da lota'#231#227'o'
              DataBinding.FieldName = 'dataLotacao'
              Width = 150
            end
          end
          object lvlLotacoes: TcxGridLevel
            GridView = tbvLotacoes
          end
        end
      end
    end
    object tshExercicioExterno: TcxTabSheet
      Caption = 'Exerc'#237'cio externo'
      ImageIndex = 9
      object cxGroupBox11: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdExercicioExterno: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          TabOrder = 0
          object tbvExercicioExterno: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsHistoricoExercicioExterno
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = #211'rgao de exerc'#237'cio'
              DataBinding.FieldName = 'descricaoOrgao'
              Width = 550
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = 'In'#237'cio do exerc'#237'cio'
              DataBinding.FieldName = 'dt_Exercicio'
              Width = 150
            end
          end
          object lvlExercicioExterno: TcxGridLevel
            GridView = tbvExercicioExterno
          end
        end
      end
    end
    object tshFerias: TcxTabSheet
      Caption = 'F'#233'rias'
      ImageIndex = 3
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdFerias: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tbvFerias: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsFeriasServidor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object tvcExercicio: TcxGridDBColumn
              Caption = 'Exerc'#237'cio'
              DataBinding.FieldName = 'idExercicio'
              Width = 70
            end
            object tvcPeriodo: TcxGridDBColumn
              Caption = 'Per'#237'odo'
              DataBinding.FieldName = 'descricaoPeriodo'
              Width = 100
            end
            object tvcParcela: TcxGridDBColumn
              Caption = 'Parcela'
              DataBinding.FieldName = 'descricaoParcela'
              Width = 100
            end
            object tvcTipoParcela: TcxGridDBColumn
              Caption = 'Tipo da parcela'
              DataBinding.FieldName = 'descricaoTipo'
              Width = 110
            end
            object tvcDt_Inicio: TcxGridDBColumn
              Caption = 'In'#237'cio'
              DataBinding.FieldName = 'Dt_Inicio'
              Width = 110
            end
            object tvcDt_Termino: TcxGridDBColumn
              Caption = 'T'#233'rmino'
              DataBinding.FieldName = 'Dt_Termino'
              Width = 110
            end
            object tvcProcessoSEI: TcxGridDBColumn
              Caption = 'Processo SEI'
              DataBinding.FieldName = 'nProcessoSEI'
              Width = 190
            end
            object tvcDt_InicioReagendamento: TcxGridDBColumn
              Caption = 'In'#237'cio reagend.'
              DataBinding.FieldName = 'Dt_InicioReagendamento'
              Width = 120
            end
            object tvcDt_TerminoReagendamento: TcxGridDBColumn
              Caption = 'T'#233'rmino reagend.'
              DataBinding.FieldName = 'Dt_TerminoReagendamento'
              Width = 120
            end
            object tvcObservacao: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'Observacao'
              Width = 500
            end
          end
          object lvlFerias: TcxGridLevel
            GridView = tbvFerias
          end
        end
      end
    end
    object tshAbonoAnual: TcxTabSheet
      Caption = 'Abono anual'
      ImageIndex = 4
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdAbonoAnual: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tbvAbonoAnual: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAbonoServidor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object tvcExercicioAbono: TcxGridDBColumn
              Caption = 'Exerc'#237'cio'
              DataBinding.FieldName = 'idExercicio'
              Width = 70
            end
            object tvcProcessoSEIAbono: TcxGridDBColumn
              Caption = 'Processo SEI'
              DataBinding.FieldName = 'nProcessoSEI'
              Width = 190
            end
            object tvcDt_1: TcxGridDBColumn
              Caption = 'Primeiro dia'
              DataBinding.FieldName = 'Dt_1'
              Width = 110
            end
            object tvcDt_2: TcxGridDBColumn
              Caption = 'Segundo dia'
              DataBinding.FieldName = 'Dt_2'
              Width = 110
            end
            object tvcDt_3: TcxGridDBColumn
              Caption = 'Terceiro dia'
              DataBinding.FieldName = 'Dt_3'
              Width = 120
            end
            object tvcDt_4: TcxGridDBColumn
              Caption = 'Quarto dia'
              DataBinding.FieldName = 'Dt_4'
              Width = 120
            end
            object tvcDt_5: TcxGridDBColumn
              Caption = 'Quinto dia'
              DataBinding.FieldName = 'Dt_5'
            end
            object tvcID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
            end
          end
          object lvlAbonoAnual: TcxGridLevel
            GridView = tbvAbonoAnual
          end
        end
      end
    end
    object tshAfastamento: TcxTabSheet
      Caption = 'Afastamentos'
      ImageIndex = 5
      object cxGroupBox7: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdAfastamentos: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          TabOrder = 0
          object tbvAfastamentos: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAfastamentoServidor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object tvcTipoAfastamento: TcxGridDBColumn
              Caption = 'Tipo de afastamento'
              DataBinding.FieldName = 'descricao'
              Width = 500
            end
            object tvcDt_InicioAfastamento: TcxGridDBColumn
              Caption = 'In'#237'cio'
              DataBinding.FieldName = 'dt_inicio'
              Width = 100
            end
            object tvcDt_TerminoAfastamento: TcxGridDBColumn
              Caption = 'T'#233'rmino'
              DataBinding.FieldName = 'dt_termino'
              Width = 100
            end
            object tvcProcessoSEIAfastamento: TcxGridDBColumn
              Caption = 'Processo SEI'
              DataBinding.FieldName = 'nProcessoSEI'
              Width = 200
            end
            object tvcExercicioAfastamento: TcxGridDBColumn
              Caption = 'Exerc'#237'cio'
              DataBinding.FieldName = 'idExercicio'
              Width = 70
            end
            object tvcObservacaoAfastamento: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'Observacao'
            end
            object tvclCodigoAfastamento: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
            end
            object tvcIDAfastamento: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
            end
          end
          object lvlAfastamentos: TcxGridLevel
            GridView = tbvAfastamentos
          end
        end
      end
    end
    object tshRelatorioPersonalizado: TcxTabSheet
      Caption = 'Relat'#243'rio Personalizado'
      ImageIndex = 6
      OnShow = tshRelatorioPersonalizadoShow
      object cxGroupBox8: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grpbxPesquisa: TcxGroupBox
          Left = 2
          Top = 21
          Align = alTop
          Style.BorderStyle = ebsNone
          TabOrder = 0
          Height = 54
          Width = 1362
          object lblTotal: TLabel
            Left = 720
            Top = 20
            Width = 60
            Height = 18
            Caption = 'lblTotal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object btnExportar: TcxButton
            Left = 876
            Top = 12
            Width = 128
            Height = 35
            Caption = '&Exportar'
            TabOrder = 0
            OnClick = btnExportarClick
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
          object edtPesquisar: TEdit
            Left = 797
            Top = 31
            Width = 217
            Height = 22
            CharCase = ecUpperCase
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Visible = False
          end
          object btnEmitirRelatorio: TcxButton
            Left = 1054
            Top = 20
            Width = 128
            Height = 33
            Caption = 'Emitir Relat'#243'rio'
            Enabled = False
            TabOrder = 2
            Visible = False
          end
          object rgpSelecionaRelatorio: TRadioGroup
            Left = 469
            Top = 1
            Width = 232
            Height = 45
            Caption = 'Rela'#231#227'o de:'
            Columns = 2
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              'SERVIDORES'
              'F'#201'RIAS')
            ParentCtl3D = False
            TabOrder = 3
            Visible = False
            OnClick = rgpSelecionaRelatorioClick
          end
          object rdgrpSelecionaRelatorio: TcxRadioGroup
            Left = 10
            Top = 1
            Caption = 'Rela'#231#227'o de:'
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'Servidores'
              end
              item
                Caption = 'F'#233'rias'
              end>
            ItemIndex = 0
            TabOrder = 4
            OnClick = rdgrpSelecionaRelatorioClick
            Height = 45
            Width = 198
          end
          object rgpSituacao: TcxRadioGroup
            Left = 218
            Top = 1
            Caption = 'Sita'#231#227'o'
            Properties.Columns = 3
            Properties.Items = <
              item
                Caption = 'Ativos'
              end
              item
                Caption = 'Inativos'
              end
              item
                Caption = 'Todos'
              end>
            ItemIndex = 0
            TabOrder = 5
            Height = 45
            Width = 230
          end
        end
        object grpbxRelPersonalizado: TcxGroupBox
          Left = 2
          Top = 75
          Align = alClient
          Style.BorderStyle = ebsNone
          TabOrder = 1
          Height = 361
          Width = 1362
          object grdRelPersonalizado: TcxGrid
            Left = 2
            Top = 21
            Width = 1358
            Height = 338
            Align = alClient
            TabOrder = 0
            object tvRelPersonalizadoServidor: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              FilterBox.Visible = fvAlways
              DataController.DataSource = dsqryPesqPessoal
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                    end
                    item
                    end>
                  SummaryItems = <
                    item
                      Kind = skCount
                      DisplayText = '(total=)'
                    end>
                end>
              DataController.OnGroupingChanged = tvRelPersonalizadoServidorDataControllerGroupingChanged
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              object tvRelPersonalizadoServidorSITUACAOSERVIDOR: TcxGridDBColumn
                Caption = 'SITUA'#199#195'O'
                DataBinding.FieldName = 'SITUACAOSERVIDOR'
                Visible = False
                Width = 84
              end
              object tvRelPersonalizadoServidorNOME: TcxGridDBColumn
                DataBinding.FieldName = 'NOME'
                Width = 409
              end
              object tvRelPersonalizadoServidorMATRICULA: TcxGridDBColumn
                Caption = 'MATR'#205'CULA'
                DataBinding.FieldName = 'MATRICULA'
                Width = 76
              end
              object tvRelPersonalizadoServidorCPF: TcxGridDBColumn
                DataBinding.FieldName = 'CPF'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.EditMask = '999.999.999-99'
                Visible = False
                Width = 96
              end
              object tvRelPersonalizadoServidorSIGLA: TcxGridDBColumn
                DataBinding.FieldName = 'SIGLA'
                Visible = False
                Width = 252
              end
              object tvRelPersonalizadoServidorLOTACAO: TcxGridDBColumn
                Caption = 'LOTA'#199#195'O'
                DataBinding.FieldName = 'LOTACAO'
                Width = 725
              end
              object tvRelPersonalizadoServidorSIGLALOTACAO: TcxGridDBColumn
                Caption = 'SIGLA-LOTA'#199#195'O'
                DataBinding.FieldName = 'SIGLALOTACAO'
                Width = 616
              end
              object tvRelPersonalizadoServidorSUPERLOTACAO: TcxGridDBColumn
                Caption = 'UNIDADE PRINCIPAL'
                DataBinding.FieldName = 'SUPERLOTACAO'
                Visible = False
                Width = 150
              end
              object tvRelPersonalizadoServidorCARGO: TcxGridDBColumn
                DataBinding.FieldName = 'CARGO'
                Width = 354
              end
              object tvRelPersonalizadoServidorFUNCAO: TcxGridDBColumn
                Caption = 'FUN'#199#195'O'
                DataBinding.FieldName = 'FUNCAO'
                Width = 456
              end
              object tvRelPersonalizadoServidorSITUACAOLOTACAO: TcxGridDBColumn
                Caption = 'SITUA'#199#195'O LOTA'#199#195'O'
                DataBinding.FieldName = 'SITUACAOLOTACAO'
                Visible = False
                Width = 126
              end
              object tvRelPersonalizadoServidorESPECIALIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'ESPECIALIDADE'
                Visible = False
                Width = 273
              end
              object tvRelPersonalizadoServidorDATANOMEACAOCARGO: TcxGridDBColumn
                Caption = 'NOMEA'#199#195'O CARGO'
                DataBinding.FieldName = 'DATANOMEACAOCARGO'
                Visible = False
                Width = 152
              end
              object tvRelPersonalizadoServidorDATANOMEACAOCARGODODF: TcxGridDBColumn
                Caption = 'NOMEA'#199#195'O CARGO DODF'
                DataBinding.FieldName = 'DATANOMEACAOCARGODODF'
                Visible = False
                Width = 165
              end
              object tvRelPersonalizadoServidorDATAPOSSECARGO: TcxGridDBColumn
                Caption = 'POSSE CARGO'
                DataBinding.FieldName = 'DATAPOSSECARGO'
                Visible = False
                Width = 129
              end
              object tvRelPersonalizadoServidorDATAEXERCICIOCARGO: TcxGridDBColumn
                Caption = 'EXERC'#205'CIO CARGO'
                DataBinding.FieldName = 'DATAEXERCICIOCARGO'
                Visible = False
                Width = 150
              end
              object tvRelPersonalizadoServidorDATADESLIGAMENTOCARGO: TcxGridDBColumn
                Caption = 'DESLIGAMENTO CARGO'
                DataBinding.FieldName = 'DATADESLIGAMENTOCARGO'
                Visible = False
                Width = 170
              end
              object tvRelPersonalizadoServidorDATADESLIGAMENTOCARGODODF: TcxGridDBColumn
                Caption = 'DESLIGAMENTO CARGO DODF'
                DataBinding.FieldName = 'DATADESLIGAMENTOCARGODODF'
                Visible = False
                Width = 203
              end
              object tvRelPersonalizadoServidorDATANOMEACAOFUNCAO: TcxGridDBColumn
                Caption = 'NOMEA'#199#195'O FUN'#199#195'O'
                DataBinding.FieldName = 'DATANOMEACAOFUNCAO'
                Visible = False
                Width = 124
              end
              object tvRelPersonalizadoServidorDATANOMEACAOFUNCAODODF: TcxGridDBColumn
                Caption = 'NOMEA'#199#195'O FUN'#199#195'O DODF'
                DataBinding.FieldName = 'DATANOMEACAOFUNCAODODF'
                Visible = False
                Width = 164
              end
              object tvRelPersonalizadoServidorDATAPOSSEFUNCAO: TcxGridDBColumn
                Caption = 'POSSE FUN'#199#195'O'
                DataBinding.FieldName = 'DATAPOSSEFUNCAO'
                Visible = False
                Width = 102
              end
              object tvRelPersonalizadoServidorDATAEXERCICIOFUNCAO: TcxGridDBColumn
                Caption = 'EXERC'#205'CIO FUN'#199#195'O'
                DataBinding.FieldName = 'DATAEXERCICIOFUNCAO'
                Visible = False
                Width = 129
              end
              object tvRelPersonalizadoServidorDATADESLIGAMENTOFUNCAO: TcxGridDBColumn
                Caption = 'DESLIGAMENTO FUN'#199#195'O'
                DataBinding.FieldName = 'DATADESLIGAMENTOFUNCAO'
                Visible = False
                Width = 158
              end
              object tvRelPersonalizadoServidorDATADESLIGAMENTOFUNCAODODF: TcxGridDBColumn
                Caption = 'DESLIGAMENTO FUN'#199#195'O DODF'
                DataBinding.FieldName = 'DATADESLIGAMENTOFUNCAODODF'
                Visible = False
                Width = 191
              end
              object tvRelPersonalizadoServidorPAI: TcxGridDBColumn
                DataBinding.FieldName = 'PAI'
                Visible = False
                Width = 317
              end
              object tvRelPersonalizadoServidorMAE: TcxGridDBColumn
                DataBinding.FieldName = 'MAE'
                Visible = False
                Width = 278
              end
              object tvRelPersonalizadoServidorPISPASEP: TcxGridDBColumn
                DataBinding.FieldName = 'PIS/PASEP'
                Visible = False
                Width = 85
              end
              object tvRelPersonalizadoServidorTIPOSANG: TcxGridDBColumn
                DataBinding.FieldName = 'TIPO SANG.'
                Visible = False
                Width = 73
              end
              object tvRelPersonalizadoServidorNATURALIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'NATURALIDADE'
                Visible = False
                Width = 159
              end
              object tvRelPersonalizadoServidorUF: TcxGridDBColumn
                DataBinding.FieldName = 'UF'
                Visible = False
                Width = 29
              end
              object tvRelPersonalizadoServidorDATANASCIMENTO: TcxGridDBColumn
                Caption = 'DATA DE NASCIMENTO'
                DataBinding.FieldName = 'DATANASCIMENTO'
                Visible = False
                Width = 146
              end
              object tvRelPersonalizadoServidorIDENTIDADE: TcxGridDBColumn
                Caption = 'IDENTIDADE N'#186
                DataBinding.FieldName = 'IDENTIDADE'
                Visible = False
                Width = 121
              end
              object tvRelPersonalizadoServidorREQUISITADO: TcxGridDBColumn
                DataBinding.FieldName = 'REQUISITADO'
                Visible = False
                Width = 88
              end
              object tvRelPersonalizadoServidorOAB: TcxGridDBColumn
                DataBinding.FieldName = 'OAB'
                Visible = False
                Width = 66
              end
              object tvRelPersonalizadoServidorOAB_SECAO: TcxGridDBColumn
                Caption = 'SE'#199#195'O OAB'
                DataBinding.FieldName = 'OAB_SECAO'
                Visible = False
                Width = 93
              end
              object tvRelPersonalizadoServidorEMAIL: TcxGridDBColumn
                DataBinding.FieldName = 'EMAIL'
                Visible = False
                Width = 237
              end
              object tvRelPersonalizadoServidorCODIGOLOTACAO: TcxGridDBColumn
                Caption = 'COD. LOTA'#199#195'O'
                DataBinding.FieldName = 'CODIGOLOTACAO'
                Visible = False
                Width = 100
              end
              object tvRelPersonalizadoServidorTIPODESLIGAMENTO: TcxGridDBColumn
                Caption = 'TIPO DE DESLIGAMENTO'
                DataBinding.FieldName = 'TIPODESLIGAMENTO'
                Visible = False
                Width = 144
              end
              object tvRelPersonalizadoServidorCARGAHORARIA: TcxGridDBColumn
                Caption = 'CARGA HOR'#193'RIA'
                DataBinding.FieldName = 'CARGAHORARIA'
                Visible = False
                Width = 105
              end
              object tvRelPersonalizadoServidorRAMAL: TcxGridDBColumn
                DataBinding.FieldName = 'RAMAL'
                Visible = False
                Width = 54
              end
              object tvRelPersonalizadoServidorSALA: TcxGridDBColumn
                DataBinding.FieldName = 'SALA'
                Visible = False
                Width = 37
              end
              object tvRelPersonalizadoServidorSIGLACARGO: TcxGridDBColumn
                DataBinding.FieldName = 'SIGLACARGO'
                Width = 85
              end
              object tvRelPersonalizadoServidorOrgaoDeOrigem: TcxGridDBColumn
                Caption = #211'RG'#194'O DE ORIGEM '
                DataBinding.FieldName = 'OrgaoDeOrigem'
                Visible = False
              end
            end
            object tvRelPersonalizadoFerias: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              FilterBox.Visible = fvAlways
              DataController.DataSource = dsqryPesqPessoal
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              object tvRelPersonalizadoFeriasNOME: TcxGridDBColumn
                DataBinding.FieldName = 'NOME'
                Width = 351
              end
              object tvRelPersonalizadoFeriasCPF: TcxGridDBColumn
                DataBinding.FieldName = 'CPF'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.EditMask = '999.999.999-99'
                Width = 81
              end
              object tvRelPersonalizadoFeriasMATRICULA: TcxGridDBColumn
                Caption = 'MATR'#237'CULA'
                DataBinding.FieldName = 'MATRICULA'
                Width = 85
              end
              object tvRelPersonalizadoFeriasTIPOAFASTAMENTO: TcxGridDBColumn
                Caption = 'TIPO DO AFASTAMENTO'
                DataBinding.FieldName = 'TIPOAFASTAMENTO'
                Width = 214
              end
              object tvRelPersonalizadoFeriasSIGLACARGO: TcxGridDBColumn
                DataBinding.FieldName = 'SIGLACARGO'
                Width = 82
              end
              object tvRelPersonalizadoFeriasEXERCICIO: TcxGridDBColumn
                Caption = 'EXERC'#237'CIO'
                DataBinding.FieldName = 'EXERCICIO'
                Width = 80
              end
              object tvRelPersonalizadoFeriasPERIODO: TcxGridDBColumn
                Caption = 'PER'#237'ODO'
                DataBinding.FieldName = 'PERIODO'
                Width = 61
              end
              object tvRelPersonalizadoFeriasTIPO: TcxGridDBColumn
                DataBinding.FieldName = 'TIPO'
                Width = 52
              end
              object tvRelPersonalizadoFeriasPARCELA: TcxGridDBColumn
                DataBinding.FieldName = 'PARCELA'
                Width = 54
              end
              object tvRelPersonalizadoFeriasDT_INICIO: TcxGridDBColumn
                Caption = 'IN'#237'CIO'
                DataBinding.FieldName = 'DT_INICIO'
                Width = 82
              end
              object tvRelPersonalizadoFeriasDT_TERMINO: TcxGridDBColumn
                Caption = 'T'#201'RMINO'
                DataBinding.FieldName = 'DT_TERMINO'
                Width = 79
              end
              object tvRelPersonalizadoFeriasSIGLALOTACAO: TcxGridDBColumn
                Caption = 'SIGLA-LOTA'#199#195'O'
                DataBinding.FieldName = 'SIGLALOTACAO'
                Width = 442
              end
              object tvRelPersonalizadoFeriasSIGLA: TcxGridDBColumn
                DataBinding.FieldName = 'SIGLA'
                Width = 176
              end
              object tvRelPersonalizadoFeriasLOTACAO: TcxGridDBColumn
                Caption = 'LOTA'#199#195'O'
                DataBinding.FieldName = 'LOTACAO'
                Width = 539
              end
              object tvRelPersonalizadoFeriasSUPERLOTACAO: TcxGridDBColumn
                Caption = 'UNIDADE PRINCIPAL'
                DataBinding.FieldName = 'SUPERLOTACAO'
                Width = 113
              end
              object tvRelPersonalizadoFeriasCARGO: TcxGridDBColumn
                DataBinding.FieldName = 'CARGO'
                Width = 343
              end
              object tvRelPersonalizadoFeriasFUNCAO: TcxGridDBColumn
                Caption = 'FUN'#199#195'O'
                DataBinding.FieldName = 'FUNCAO'
                Width = 271
              end
              object tvRelPersonalizadoFeriasNProcessoSEI: TcxGridDBColumn
                Caption = 'N'#186' Proc. SEI'
                DataBinding.FieldName = 'nProcSEI'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.EditMask = '99999-99999999/9999-99;1;_'
                Properties.ReadOnly = True
                Width = 160
              end
            end
            object tvRelEncaminhamentoFolhasDePonto: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              object tvRelEncaminhamentoFolhasDePontoNOME: TcxGridDBColumn
                DataBinding.FieldName = 'NOME'
              end
              object tvRelEncaminhamentoFolhasDePontoMATRICULA: TcxGridDBColumn
                DataBinding.FieldName = 'MATRICULA'
              end
              object tvRelEncaminhamentoFolhasDePontoSIGLA: TcxGridDBColumn
                DataBinding.FieldName = 'SIGLA'
              end
              object tvRelEncaminhamentoFolhasDePontoLOTACAO: TcxGridDBColumn
                DataBinding.FieldName = 'LOTACAO'
              end
              object tvRelEncaminhamentoFolhasDePontoSUPERLOTACAO: TcxGridDBColumn
                DataBinding.FieldName = 'SUPERLOTACAO'
              end
              object tvRelEncaminhamentoFolhasDePontoSITUACAOSERVIDOR: TcxGridDBColumn
                DataBinding.FieldName = 'SITUACAOSERVIDOR'
              end
              object tvRelEncaminhamentoFolhasDePontoSITUACAOLOTACAO: TcxGridDBColumn
                DataBinding.FieldName = 'SITUACAOLOTACAO'
              end
              object tvRelEncaminhamentoFolhasDePontoDATAPOSSEFUNCAO: TcxGridDBColumn
                DataBinding.FieldName = 'DATAPOSSEFUNCAO'
              end
              object tvRelEncaminhamentoFolhasDePontoREQUISITADO: TcxGridDBColumn
                DataBinding.FieldName = 'REQUISITADO'
              end
            end
            object lvgrdRelPersonalizadoServidor: TcxGridLevel
              GridView = tvRelPersonalizadoServidor
            end
          end
        end
      end
    end
    object tshSubstituicao: TcxTabSheet
      Caption = 'Substitui'#231#245'es'
      ImageIndex = 11
      object cxGroupBox10: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdTotalSubstituicoes: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 135
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tvbTotalSubstituicoes: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsTotalDiasSubstituidos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'Ano'
              Width = 136
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Total de dias'
              DataBinding.FieldName = 'TOTAL DE DIAS'
              Width = 157
            end
          end
          object lvlTotalSubstituicoes: TcxGridLevel
            GridView = tvbTotalSubstituicoes
          end
        end
        object grdSubstituicoes: TcxGrid
          Left = 2
          Top = 156
          Width = 1362
          Height = 280
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object tvSubstProcurador: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsProcuradorSubstituido
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsSelection.MultiSelect = True
            OptionsView.GroupByBox = False
            object tvSubstProcuradorColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'Nome'
            end
            object tvSubstProcuradorinicio: TcxGridDBColumn
              Caption = 'IN'#205'CIO'
              DataBinding.FieldName = 'dt_Inicio'
              Width = 183
            end
            object tvSubstProcuradortermino: TcxGridDBColumn
              Caption = 'T'#201'RMINO'
              DataBinding.FieldName = 'dt_Termino'
              Width = 226
            end
            object tvSubstProcuradorndias: TcxGridDBColumn
              Caption = 'N'#186' DE DIAS'
              DataBinding.FieldName = 'ndias'
              Width = 125
            end
            object tvSubstProcuradornProcessoSEI: TcxGridDBColumn
              Caption = 'N'#186' Processo SEI'
              DataBinding.FieldName = 'nProcessoSEI'
              Width = 160
            end
          end
          object lvSubstProcurador: TcxGridLevel
            GridView = tvSubstProcurador
          end
        end
      end
    end
    object tshEstagio: TcxTabSheet
      Caption = 'Dados do est'#225'gio'
      ImageIndex = 12
      object Label5: TLabel
        Left = 354
        Top = 21
        Width = 155
        Height = 16
        Caption = 'T'#233'rmino do 1'#186' contrato'
      end
      object Label6: TLabel
        Left = 10
        Top = 21
        Width = 138
        Height = 16
        Caption = 'In'#237'cio do 1'#186' contrato'
      end
      object Label7: TLabel
        Left = 10
        Top = 41
        Width = 138
        Height = 16
        Caption = 'In'#237'cio do 2'#186' contrato'
      end
      object txtDt_InicioContrato1_Estagiario: TDBText
        Left = 156
        Top = 21
        Width = 186
        Height = 13
        AutoSize = True
        DataField = 'Dt_InicioContrato1_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object txtDt_TerminoContrato1_Estagiario: TDBText
        Left = 524
        Top = 21
        Width = 201
        Height = 13
        AutoSize = True
        DataField = 'Dt_TerminoContrato1_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 354
        Top = 41
        Width = 155
        Height = 16
        Caption = 'T'#233'rmino do 2'#186' contrato'
      end
      object Label9: TLabel
        Left = 10
        Top = 61
        Width = 138
        Height = 16
        Caption = 'In'#237'cio do 3'#186' contrato'
      end
      object txtDt_InicioContrato2_Estagiario: TDBText
        Left = 156
        Top = 41
        Width = 186
        Height = 13
        AutoSize = True
        DataField = 'Dt_InicioContrato2_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object txtDt_TerminoContrato2_Estagiario: TDBText
        Left = 524
        Top = 41
        Width = 201
        Height = 13
        AutoSize = True
        DataField = 'Dt_TerminoContrato2_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 354
        Top = 61
        Width = 155
        Height = 16
        Caption = 'T'#233'rmino do 3'#186' contrato'
      end
      object Label11: TLabel
        Left = 10
        Top = 81
        Width = 138
        Height = 16
        Caption = 'In'#237'cio do 4'#186' contrato'
      end
      object txtDt_InicioContrato3_Estagiario: TDBText
        Left = 156
        Top = 61
        Width = 186
        Height = 13
        AutoSize = True
        DataField = 'Dt_InicioContrato3_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object txtDt_TerminoContrato3_Estagiario: TDBText
        Left = 524
        Top = 61
        Width = 201
        Height = 13
        AutoSize = True
        DataField = 'Dt_TerminoContrato3_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 354
        Top = 81
        Width = 155
        Height = 16
        Caption = 'T'#233'rmino do 4'#186' contrato'
      end
      object txtDt_InicioContrato4_Estagiario: TDBText
        Left = 156
        Top = 81
        Width = 186
        Height = 13
        AutoSize = True
        DataField = 'Dt_InicioContrato4_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object txtDt_TerminoContrato4_Estagiario: TDBText
        Left = 524
        Top = 81
        Width = 201
        Height = 13
        AutoSize = True
        DataField = 'Dt_TerminoContrato4_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 79
        Top = 141
        Width = 69
        Height = 16
        Caption = 'Supervisor'
      end
      object Label14: TLabel
        Left = 10
        Top = 141
        Width = 138
        Height = 16
        Caption = 'Institui'#231#227'o de ensino'
      end
      object Label15: TLabel
        Left = 37
        Top = 161
        Width = 111
        Height = 16
        Caption = 'Turno do est'#225'gio'
      end
      object Label16: TLabel
        Left = 86
        Top = 181
        Width = 62
        Height = 16
        Caption = 'Semestre'
      end
      object Label17: TLabel
        Left = 70
        Top = 201
        Width = 78
        Height = 16
        Caption = 'Observa'#231#227'o'
      end
      object txtInstituicaoEnsino: TDBText
        Left = 156
        Top = 141
        Width = 111
        Height = 13
        AutoSize = True
        DataField = 'InstituicaoEnsino'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object txtTurnoEstagio: TDBText
        Left = 156
        Top = 161
        Width = 88
        Height = 13
        AutoSize = True
        DataField = 'TurnoEstagio'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object txtSemestre: TDBText
        Left = 156
        Top = 181
        Width = 70
        Height = 13
        AutoSize = True
        DataField = 'Semestre'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object txtObservacao: TDBText
        Left = 156
        Top = 201
        Width = 83
        Height = 13
        AutoSize = True
        DataField = 'observacao'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 79
        Top = 120
        Width = 69
        Height = 16
        Caption = 'Supervisor'
      end
      object txtSupervisor_Estagiario: TDBText
        Left = 156
        Top = 120
        Width = 140
        Height = 13
        AutoSize = True
        DataField = 'Supervisor_Estagiario'
        DataSource = dsPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object tshLogHistorico: TcxTabSheet
      Caption = 'Registro de altera'#231#245'es'
      ImageIndex = 13
      object gbxLogHistorico: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Hist'#243'rico'
        TabOrder = 0
        Height = 438
        Width = 1366
        object grdLogHistorico: TcxGrid
          Left = 2
          Top = 21
          Width = 1362
          Height = 415
          Align = alClient
          TabOrder = 0
          object tbvLogHistorico: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsLogHistorico
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object tbvData: TcxGridDBColumn
              DataBinding.FieldName = 'Data'
            end
            object tbvOperador: TcxGridDBColumn
              DataBinding.FieldName = 'Operador'
              Width = 350
            end
            object tbvEvento: TcxGridDBColumn
              DataBinding.FieldName = 'Evento'
              Width = 1000
            end
          end
          object lvlLogHistorico: TcxGridLevel
            GridView = tbvLogHistorico
          end
        end
      end
    end
  end
  object pnlNome: TPanel
    Left = 0
    Top = 278
    Width = 1366
    Height = 58
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object txtNome: TDBText
      Left = 16
      Top = 7
      Width = 799
      Height = 34
      DataField = 'nome'
      DataSource = dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 1072
      Top = 15
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'idPessoal'
      DataSource = dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object btnStatus: TcxButton
      Left = 880
      Top = 7
      Width = 176
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      Colors.Default = clInfoBk
      Colors.DefaultText = clBackground
    end
    object btnFlag: TcxButton
      Left = 852
      Top = 7
      Width = 29
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      Colors.Default = clBtnFace
      Colors.DefaultText = clBackground
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000DB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF0000002C00000000000000000000
        0000000000000000001000000057000000760000005E00000029000000000000
        0000000000000000000000000000000000FF000000E2000000DB000000A00000
        0089000000AF000000F0000000B000000089000000A3000000DE000000E00000
        0080000000000000000000000000000000FF000000000000002C000000610000
        00760000005700000010000000000000000000000000000000000000002D0000
        00FF000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000000000000000000000000000FF000000AC0000005E000000210000
        00090000003000000089000000D8000000F7000000DF000000AA000000630000
        00FF000000000000000000000000000000DD00000061000000AA000000E00000
        00F7000000D8000000860000002F00000009000000210000005D000000AD0000
        00DF00000000}
    end
  end
  object cxGroupBox12: TcxGroupBox
    Left = 0
    Top = 44
    Align = alTop
    Caption = 'Pesquisa r'#225'pida'
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -13
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Height = 49
    Width = 1366
    object Label20: TLabel
      Left = 16
      Top = 21
      Width = 204
      Height = 18
      Caption = 'Nome, matr'#237'cula ou CPF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdServidores: TLabel
      Left = 600
      Top = 22
      Width = 8
      Height = 16
      Caption = '0'
    end
    object edtPesquisa: TcxTextEdit
      Left = 231
      Top = 12
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyDown = edtPesquisaKeyDown
      OnKeyPress = edtPesquisaKeyPress
      Width = 355
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    OnDataChange = dsPesquisaDataChange
    Left = 551
    Top = 12
  end
  object StyleRepository: TcxStyleRepository
    Left = 776
    Top = 56
    PixelsPerInch = 96
    object stlAtivo: TcxStyle
    end
    object stlRequisitado: TcxStyle
    end
    object stlDesligadoCargo: TcxStyle
    end
    object stlDesligadoFuncao: TcxStyle
    end
    object stlDesligado: TcxStyle
    end
  end
  object dsFeriasServidor: TDataSource
    Left = 613
    Top = 12
  end
  object dsAbonoServidor: TDataSource
    Left = 643
    Top = 12
  end
  object dsAfastamentoServidor: TDataSource
    Left = 675
    Top = 12
  end
  object dsHistoricoFuncoes: TDataSource
    Left = 707
    Top = 12
  end
  object dsHistoricoLotacoes: TDataSource
    Left = 739
    Top = 12
  end
  object dsTelefonesServidor: TDataSource
    Left = 582
    Top = 12
  end
  object dsHistoricoExercicioExterno: TDataSource
    Left = 771
    Top = 12
  end
  object dsTotalDiasSubstituidos: TDataSource
    Left = 803
    Top = 12
  end
  object dsProcuradorSubstituido: TDataSource
    Left = 836
    Top = 11
  end
  object dsLogHistorico: TDataSource
    AutoEdit = False
    Left = 868
    Top = 11
  end
  object qryPesqPessoal_Old: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tipoRelatorio'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = 'SERVIDOR'
      end>
    SQL.Strings = (
      'EXECUTE sprocRelatorioPersonalizado '
      '@pesq = Null, @tipoRelatorio = :tipoRelatorio'
      ', @Ativos = :Ativos')
    Left = 576
    Top = 536
  end
  object dsqryPesqPessoal: TDataSource
    DataSet = qryPesqPessoal
    Left = 608
    Top = 536
  end
  object tmrPesqPessoal: TTimer
    Enabled = False
    Interval = 300
    Left = 736
    Top = 536
  end
  object SaveDialogExportarExcel: TSaveDialog
    Left = 788
    Top = 537
  end
  object SaveDialog1: TSaveDialog
    Left = 860
    Top = 537
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 744
    Top = 56
  end
  object qryPesqPessoal: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tipoRelatorio'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = 'SERVIDOR'
      end
      item
        Name = 'Ativos'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'EXECUTE sprocRelatorioPersonalizado '
      '@pesq = Null, @tipoRelatorio = :tipoRelatorio'
      ', @Ativos = :Ativos'
      '')
    Left = 544
    Top = 536
  end
end
