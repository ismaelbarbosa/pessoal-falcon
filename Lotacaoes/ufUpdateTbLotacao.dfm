object frmUpdateTbLotacao: TfrmUpdateTbLotacao
  Left = 149
  Top = 35
  Width = 1377
  Height = 691
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
    Width = 1369
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
      Left = 744
      Top = 8
      Width = 219
      Height = 25
      Caption = 'frmUpdateTbLotacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblOperacao: TLabel
      Left = 614
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
    object btnSair: TcxButton
      Left = 448
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
      Left = 1056
      Top = 16
      Width = 75
      Height = 25
      Caption = 'MaxID'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object btnNovaLotacao: TcxButton
      Left = 10
      Top = 5
      Width = 111
      Height = 35
      Caption = 'Nova lota'#231#227'o'
      TabOrder = 2
      OnClick = btnNovaLotacaoClick
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
    object btnEditarLotacao: TcxButton
      Left = 130
      Top = 5
      Width = 116
      Height = 35
      Caption = 'Editar lota'#231#227'o'
      TabOrder = 3
      OnClick = btnEditarLotacaoClick
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
    object btnExtinguirLotacao: TcxButton
      Left = 254
      Top = 5
      Width = 140
      Height = 35
      Caption = 'Extinguir lota'#231#227'o'
      TabOrder = 4
      OnClick = btnExtinguirLotacaoClick
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
  object pgcLotacao: TcxPageControl
    Left = 0
    Top = 55
    Width = 1369
    Height = 605
    ActivePage = tshCreateUpdate
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 605
    ClientRectRight = 1369
    ClientRectTop = 24
    object tshRelacao: TcxTabSheet
      Caption = 'Rela'#231#227'o de lota'#231#245'es'
      ImageIndex = 0
      OnEnter = tshRelacaoEnter
      object gbxCargo: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Pesquisar'
        TabOrder = 0
        Height = 65
        Width = 1369
        object lblLotacao: TLabel
          Left = 16
          Top = 26
          Width = 183
          Height = 18
          Caption = 'Nome, sigla ou c'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblTotal: TLabel
          Left = 648
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
        object edtPesquisa: TcxTextEdit
          Left = 228
          Top = 17
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -24
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyPress = edtPesquisaKeyPress
          Width = 342
        end
        object rgpEstrutura: TcxRadioGroup
          Left = 712
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
        object btnDetalhar: TcxButton
          Left = 970
          Top = 18
          Width = 143
          Height = 35
          Caption = 'Detalhar'
          TabOrder = 2
          OnClick = btnDetalharClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000085000000F9000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00F900000084000000F900000013000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0013000000F8000000FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000FF000000FF0000000000000000000000B800000000000000DA0000
            00FF000000FF000000FF000000FF000000FF000000FF000000DB000000000000
            0000000000FF000000FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000FF000000FF00000000000000000000005B00000000000000710000
            0088000000880000008800000088000000880000008800000071000000000000
            0000000000FF000000FF00000000000000000000005D00000000000000690000
            0077000000770000007700000077000000770000007700000069000000000000
            0000000000FF000000FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000FF000000FF0000000000000000000000B800000000000000DA0000
            00FF000000FF000000FF000000FF000000FF000000FF000000DB000000000000
            0000000000FF000000FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000FF000000F900000012000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0013000000F800000086000000F9000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00F9000000850000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
      end
      object pnlLotacoes: TPanel
        Left = 0
        Top = 65
        Width = 1369
        Height = 221
        Align = alTop
        TabOrder = 1
        object Label9: TLabel
          Left = 1
          Top = 1
          Width = 1367
          Height = 18
          Align = alTop
          Caption = 'Lota'#231#245'es'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object grdLotacao: TcxGrid
          Left = 1
          Top = 19
          Width = 1367
          Height = 201
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = grdLotacaoEnter
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
            object grdLotacaoDBTableView1Column5: TcxGridDBColumn
              DataBinding.FieldName = 'Sigla'
              Width = 250
            end
            object grdLotacaoDBTableView1Column1: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 500
            end
            object grdLotacaoDBTableView1Column2: TcxGridDBColumn
              Caption = 'N.E.'
              DataBinding.FieldName = 'NovaEstrutura'
              Width = 60
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
            object grdLotacaoDBTableView1Column10: TcxGridDBColumn
              Caption = 'Data de cria'#231#227'o'
              DataBinding.FieldName = 'dtCriacao_Alteracao'
            end
          end
          object grdLotacaoLevel1: TcxGridLevel
            GridView = grdLotacaoDBTableView1
          end
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 286
        Width = 1369
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        Control = pnlLotacoes
      end
      object pgcServidoresHistoricoFuncoes: TcxPageControl
        Left = 0
        Top = 294
        Width = 1369
        Height = 287
        ActivePage = tshServidores
        Align = alClient
        TabOrder = 3
        ClientRectBottom = 287
        ClientRectRight = 1369
        ClientRectTop = 24
        object tshServidores: TcxTabSheet
          Caption = 'Servidores e estagi'#225'rios lotados'
          ImageIndex = 0
          object pnlServidores: TPanel
            Left = 0
            Top = 0
            Width = 1369
            Height = 263
            Align = alClient
            TabOrder = 0
            object grdServidores: TcxGrid
              Left = 1
              Top = 51
              Width = 1367
              Height = 241
              TabOrder = 0
              object cxGridDBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsServidores
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                Styles.ContentEven = frmPrincipal.cxStyle1
                object cxGridDBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'Nome'
                  Width = 350
                end
                object cxGridDBTableView1Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'Cargo'
                  Width = 350
                end
                object cxGridDBColumn1: TcxGridDBColumn
                  Caption = 'ID Lota'#231#227'o'
                  DataBinding.FieldName = 'idLotacao'
                  Width = 100
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  Caption = 'Lota'#231#227'o'
                  DataBinding.FieldName = 'Sigla'
                  Width = 200
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
            object Panel3: TPanel
              Left = 1
              Top = 1
              Width = 1367
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object Label10: TLabel
                Left = 9
                Top = 9
                Width = 265
                Height = 18
                Caption = 'Servidores e estagi'#225'rios lotados'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object lblTotalServidores: TLabel
                Left = 360
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
              object cxButton2: TcxButton
                Left = 482
                Top = 5
                Width = 270
                Height = 35
                Caption = 'Trasferir servidores para outra lota'#231#227'o'
                TabOrder = 0
                OnClick = cxButton2Click
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
              object lkpTransferirLotacao: TcxLookupComboBox
                Left = 773
                Top = 12
                Properties.DropDownWidth = 700
                Properties.KeyFieldNames = 'idLotacao'
                Properties.ListColumns = <
                  item
                    FieldName = 'Descricao'
                  end
                  item
                    FieldName = 'Sigla'
                  end
                  item
                    FieldName = 'SuperLotacao'
                  end
                  item
                    FieldName = 'Sala'
                  end
                  item
                    FieldName = 'Ramal'
                  end
                  item
                    FieldName = 'NovaEstrutura'
                  end>
                Properties.ListSource = dsTransferirLotacao
                TabOrder = 1
                Width = 522
              end
            end
          end
        end
        object tshFuncoes: TcxTabSheet
          Caption = 'Fun'#231#245'es da lota'#231#227'o'
          ImageIndex = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1369
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label12: TLabel
              Left = 9
              Top = 9
              Width = 158
              Height = 18
              Caption = 'Fun'#231#245'es da lota'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object lblTotalFuncoes: TLabel
              Left = 360
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
          end
          object grdFuncao: TcxGrid
            Left = 0
            Top = 41
            Width = 1369
            Height = 220
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsFuncao
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'ID Lota'#231#227'o'
                DataBinding.FieldName = 'idLotacao'
                Width = 100
              end
              object cxGridDBTableView3Column2: TcxGridDBColumn
                DataBinding.FieldName = 'idFuncao'
              end
              object cxGridDBTableView3Column1: TcxGridDBColumn
                Caption = 'N.E.'
                DataBinding.FieldName = 'NovaEstrutura'
                Width = 70
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'Fun'#231#227'o'
                DataBinding.FieldName = 'Funcao'
                Width = 250
              end
              object cxGridDBColumn9: TcxGridDBColumn
                Caption = 'Lota'#231#227'o'
                DataBinding.FieldName = 'Sigla_Lotacao'
                Width = 200
              end
              object cxGridDBTableView3Column3: TcxGridDBColumn
                Caption = 'Codigo Sigre'
                DataBinding.FieldName = 'Codigo_SIGRH'
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
        object tshHistoricoLotacoes: TcxTabSheet
          Caption = 'Hist'#243'rico de servidores lotados'
          ImageIndex = 2
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1369
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label13: TLabel
              Left = 9
              Top = 9
              Width = 173
              Height = 18
              Caption = 'Hist'#243'rico de lota'#231#245'es'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object lblTotalHistorico: TLabel
              Left = 360
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
          end
          object grdHistorico_Lotacao: TcxGrid
            Left = 0
            Top = 41
            Width = 1369
            Height = 222
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsHistoricoLotacao
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGridDBTableView2Column1: TcxGridDBColumn
                Caption = 'Matr'#237'cula'
                DataBinding.FieldName = 'Matricula'
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'Nome'
                Width = 250
              end
              object cxGridDBTableView2Column2: TcxGridDBColumn
                DataBinding.FieldName = 'Cargo'
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Lota'#231#227'o'
                DataBinding.FieldName = 'Sigla_Lotacao'
                Width = 200
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'ID Lota'#231#227'o'
                DataBinding.FieldName = 'idLotacao'
                Width = 100
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
      end
    end
    object tshCreateUpdate: TcxTabSheet
      Caption = 'Incluir/editar lota'#231#227'o'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1369
        Height = 581
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
          Left = 48
          Top = 107
          Width = 64
          Height = 16
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 81
          Top = 139
          Width = 31
          Height = 16
          Caption = 'Sigla'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 84
          Top = 203
          Width = 28
          Height = 16
          Caption = 'Sala'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 224
          Top = 203
          Width = 38
          Height = 16
          Caption = 'Ramal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblGrauInstrucao: TLabel
          Left = 25
          Top = 171
          Width = 87
          Height = 16
          Caption = 'Superlota'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 17
          Top = 71
          Width = 95
          Height = 18
          Caption = 'C'#243'digo (ID)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblNascimento: TLabel
          Left = 372
          Top = 202
          Width = 158
          Height = 16
          Caption = 'Data de cria'#231#227'o (DODF)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lblID: TLabel
          Left = 417
          Top = 71
          Width = 10
          Height = 18
          Caption = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object btnGravar: TcxButton
          Left = 5
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
        object edtDescricao: TcxTextEdit
          Left = 130
          Top = 102
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnKeyPress = edtPesquisaKeyPress
          Width = 645
        end
        object edtSigla: TcxTextEdit
          Left = 130
          Top = 134
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          OnKeyPress = edtPesquisaKeyPress
          Width = 335
        end
        object edtSala: TcxTextEdit
          Left = 130
          Top = 198
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyPress = edtPesquisaKeyPress
          Width = 70
        end
        object edtRamal: TcxTextEdit
          Left = 276
          Top = 198
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyPress = edtPesquisaKeyPress
          Width = 70
        end
        object lkpSuperLotacao: TcxLookupComboBox
          Left = 130
          Top = 166
          ParentFont = False
          Properties.KeyFieldNames = 'superLotacao'
          Properties.ListColumns = <
            item
              FieldName = 'superLotacao'
            end>
          Properties.ListSource = dsSuperLotacao
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 233
        end
        object mmoSQL: TcxMemo
          Left = 85
          Top = 360
          Lines.Strings = (
            'mmoSQL')
          TabOrder = 8
          Visible = False
          Height = 129
          Width = 761
        end
        object edtIdLotacao: TcxTextEdit
          Left = 130
          Top = 65
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyPress = edtPesquisaKeyPress
          Width = 205
        end
        object edtDataDODF: TcxDateEdit
          Left = 541
          Top = 198
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 140
        end
        object btnCancelar: TcxButton
          Left = 125
          Top = 5
          Width = 124
          Height = 35
          Caption = '&Cancelar'
          TabOrder = 9
          OnClick = btnCancelarClick
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
    OnDataChange = dsLotacaoDataChange
    Left = 472
    Top = 40
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 600
    OnTimer = Timer1Timer
    Left = 1144
    Top = 41
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
  object qryServidores: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 624
    Top = 40
  end
  object dsServidores: TDataSource
    DataSet = qryServidores
    Left = 656
    Top = 40
  end
  object qryFuncao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 704
    Top = 40
  end
  object dsFuncao: TDataSource
    DataSet = qryFuncao
    Left = 736
    Top = 40
  end
  object qryHistoricoLotacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 800
    Top = 40
  end
  object dsHistoricoLotacao: TDataSource
    DataSet = qryHistoricoLotacao
    Left = 832
    Top = 40
  end
  object qryTransferirLotacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 960
    Top = 40
  end
  object dsTransferirLotacao: TDataSource
    DataSet = qryTransferirLotacao
    Left = 992
    Top = 40
  end
  object qryExisteServidorLotacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 1064
    Top = 40
  end
end
