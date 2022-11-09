object frmDesligarServidorEstagiario: TfrmDesligarServidorEstagiario
  Left = 294
  Top = 146
  Width = 1001
  Height = 540
  Caption = 'Desligamento de servidores e estagi'#225'rios'
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
  object grdPesquisa: TcxGrid
    Left = 0
    Top = 164
    Width = 993
    Height = 345
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tbvPesquisa: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPesquisa
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.ContentEven = frmPrincipal.cxStyle1
      Styles.OnGetContentStyle = tbvPesquisaStylesGetContentStyle
      object tvcNome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 350
      end
      object tvcMatricula: TcxGridDBColumn
        Caption = 'Matr'#237'cula'
        DataBinding.FieldName = 'idServidor'
      end
      object tvcCargo: TcxGridDBColumn
        Caption = 'Cargo'
        DataBinding.FieldName = 'descricaoCargo'
        Width = 250
      end
      object tvcDtDesligamentoCargo: TcxGridDBColumn
        Caption = 'Data de desligamento'
        DataBinding.FieldName = 'Dt_Deslig_Cargo'
        Width = 150
      end
      object tvcFormaDesligamento: TcxGridDBColumn
        Caption = 'Forma de desligamento'
        DataBinding.FieldName = 'desligamento'
        Width = 250
      end
      object tvcLotacao: TcxGridDBColumn
        Caption = 'Lota'#231#227'o'
        DataBinding.FieldName = 'SiglaLotacao'
        Width = 250
      end
      object tvcStatus: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
      end
    end
    object lvlPesquisa: TcxGridLevel
      GridView = tbvPesquisa
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 416
      Top = 16
      Width = 172
      Height = 13
      Caption = 'frmDesligarServidorEstagiario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnSair: TcxButton
      Left = 120
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
    object btnDesligar: TcxButton
      Left = 2
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Desligar'
      TabOrder = 0
      OnClick = btnDesligarClick
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
  object pnlNome: TPanel
    Left = 0
    Top = 99
    Width = 993
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object txtNome: TDBText
      Left = 16
      Top = 12
      Width = 865
      Height = 31
      DataField = 'Nome'
      DataSource = dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblNumeroRegistros: TLabel
      Left = 0
      Top = 49
      Width = 993
      Height = 16
      Align = alBottom
      Alignment = taCenter
      Caption = 'N'#186' de registros encontrados: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 993
    Height = 59
    Align = alTop
    TabOrder = 3
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
  object qryPesquisa: TADOQuery
    Parameters = <>
    Left = 80
    Top = 248
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = qryPesquisa
    Left = 112
    Top = 248
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 616
    Top = 56
  end
  object StyleRepository: TcxStyleRepository
    Left = 584
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
end
