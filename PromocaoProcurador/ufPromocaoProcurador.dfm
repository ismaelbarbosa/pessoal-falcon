object frmPromocaoProcurador: TfrmPromocaoProcurador
  Left = 192
  Top = 117
  Width = 1238
  Height = 540
  Caption = 'Promo'#231#227'o de procuradores'
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
    Width = 1230
    Height = 40
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
      Left = 416
      Top = 8
      Width = 257
      Height = 25
      Caption = 'frmPromocaoProcurador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnSair: TcxButton
      Left = 130
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
    object btnGravarServidor: TcxButton
      Left = 5
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btnGravarServidorClick
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
      Left = 920
      Top = 7
      Width = 75
      Height = 25
      Caption = 'SQL'
      TabOrder = 2
      Visible = False
    end
  end
  object pnlNome: TPanel
    Left = 0
    Top = 40
    Width = 1230
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
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object txtCargo: TDBText
      Left = 23
      Top = 50
      Width = 57
      Height = 16
      AutoSize = True
      DataField = 'descricaoCargo'
      DataSource = dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object txtLotacao: TDBText
      Left = 23
      Top = 75
      Width = 72
      Height = 16
      AutoSize = True
      DataField = 'descricaoLotacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object pgcProcurador: TcxPageControl
    Left = 0
    Top = 160
    Width = 1230
    Height = 349
    ActivePage = tshDadosDoProcurador
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 349
    ClientRectRight = 1230
    ClientRectTop = 24
    object tshRelacaoProcuradores: TcxTabSheet
      Caption = '&1. Rela'#231#227'o de procuradores'
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1230
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
        object lblQtdServidores: TLabel
          Left = 616
          Top = 22
          Width = 7
          Height = 13
          Caption = '0'
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
        Width = 1230
        Height = 266
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object tbvServidores: TcxGridDBTableView
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
            DataBinding.FieldName = 'idServidor'
            Width = 100
          end
          object tvcNome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            Width = 300
          end
          object tvcCargo: TcxGridDBColumn
            Caption = 'Cargo'
            DataBinding.FieldName = 'descricaoCargo'
            Width = 350
          end
          object tvcCategoriaII: TcxGridDBColumn
            Caption = 'Promo'#231#227'o Categoria II'
            DataBinding.FieldName = 'Dt_PromocaoCategoria2'
            Width = 180
          end
          object tvcSubprocurador: TcxGridDBColumn
            Caption = 'Promo'#231#227'o Subprocurador'
            DataBinding.FieldName = 'Dt_PromocaoSubProcurador'
            Width = 180
          end
          object tbvAverbacaoGDF: TcxGridDBColumn
            Caption = 'Averb GDF'
            DataBinding.FieldName = 'AverbacaoGDF'
            Width = 150
          end
          object tbvAverbacaoServPublico: TcxGridDBColumn
            Caption = 'Averb Serv P'#250'blico'
            DataBinding.FieldName = 'AverbacaoServPublico'
            Width = 150
          end
        end
        object grdServidoresLevel1: TcxGridLevel
          GridView = tbvServidores
        end
      end
    end
    object tshDadosDoProcurador: TcxTabSheet
      Caption = '&2. Datas da promo'#231#227'o '
      ImageIndex = 1
      OnShow = tshDadosDoProcuradorShow
      object pnlDadosProcurador: TPanel
        Left = 0
        Top = 0
        Width = 1230
        Height = 325
        Align = alClient
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label14: TLabel
          Left = 18
          Top = 59
          Width = 146
          Height = 13
          Caption = 'Promo'#231#227'o Subprocurador'
        end
        object Label18: TLabel
          Left = 33
          Top = 27
          Width = 131
          Height = 13
          Caption = 'Promo'#231#227'o Categoria II'
        end
        object lblAverbacaoGDF: TLabel
          Left = 75
          Top = 92
          Width = 89
          Height = 13
          Caption = 'Averba'#231#227'o GDF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblAverbacaoServPublico: TLabel
          Left = 292
          Top = 92
          Width = 200
          Height = 13
          Caption = 'Averba'#231#227'o Servi'#231'o P'#250'blico (U/E/M)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object edtDt_PromocaoCategoria2: TcxDateEdit
          Left = 188
          Top = 21
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 121
        end
        object edtDt_PromocaoSubProcurador: TcxDateEdit
          Left = 188
          Top = 53
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 121
        end
        object Memo1: TMemo
          Left = 632
          Top = 40
          Width = 409
          Height = 201
          Lines.Strings = (
            'Memo1')
          TabOrder = 2
          Visible = False
        end
        object edtAverbacaoGDF: TcxTextEdit
          Left = 189
          Top = 85
          ParentFont = False
          Properties.MaxLength = 5
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          OnKeyPress = edtAverbacaoGDFKeyPress
          Width = 77
        end
        object edtAverbacaoServPublico: TcxTextEdit
          Left = 517
          Top = 85
          ParentFont = False
          Properties.MaxLength = 5
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyPress = edtAverbacaoServPublicoKeyPress
          Width = 77
        end
      end
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = qryPesquisa
    Left = 392
    Top = 56
  end
  object qryAfastamentoServidor: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'tbafastamento.idafastamento, tbafastamento.descricao,'
      'tbAfastamento.Codigo,'
      'tbserv_afast.idpessoal, tbserv_afast.idafastamento, '
      
        'tbserv_afast.dt_inicio, tbserv_afast.dt_termino, tbserv_afast.id' +
        'Exercicio,'
      'tbserv_afast.nProcessoSEI,'
      'tbserv_afast.Observacao'
      ''
      'FROM tbafastamento'
      'INNER JOIN tbserv_afast '
      'ON tbserv_afast.idafastamento = tbafastamento.idafastamento '
      ''
      'WHERE '
      'tbserv_afast.idPessoal = :idPessoal '
      'and tbserv_afast.idServidor = :idServidor'
      'and tbafastamento.idafastamento not in ('#39'721'#39')'
      ''
      'ORDER BY tbserv_afast.dt_inicio DESC;')
    Left = 437
    Top = 57
  end
  object dsAfastamentoServidor: TDataSource
    DataSet = qryAfastamentoServidor
    Left = 467
    Top = 56
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 576
    Top = 56
  end
  object qryPesquisa: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'idServidor'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'tbafastamento.idafastamento, tbafastamento.descricao,'
      'tbAfastamento.Codigo,'
      'tbserv_afast.idpessoal, tbserv_afast.idafastamento, '
      
        'tbserv_afast.dt_inicio, tbserv_afast.dt_termino, tbserv_afast.id' +
        'Exercicio,'
      'tbserv_afast.nProcessoSEI,'
      'tbserv_afast.Observacao'
      ''
      'FROM tbafastamento'
      'INNER JOIN tbserv_afast '
      'ON tbserv_afast.idafastamento = tbafastamento.idafastamento '
      ''
      'WHERE '
      'tbserv_afast.idPessoal = :idPessoal '
      'and tbserv_afast.idServidor = :idServidor'
      'and tbafastamento.idafastamento not in ('#39'721'#39')'
      ''
      'ORDER BY tbserv_afast.dt_inicio DESC;')
    Left = 357
    Top = 57
  end
end
