object frmReadRegistrosLog: TfrmReadRegistrosLog
  Left = 192
  Top = 117
  Width = 1044
  Height = 540
  Caption = 'Opera'#231#245'es realizadas na base de dados de pessoal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1036
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
      Left = 144
      Top = 8
      Width = 225
      Height = 25
      Caption = 'frmReadRegistrosLog'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnSair: TcxButton
      Left = 8
      Top = 5
      Width = 110
      Height = 35
      Caption = 'Sai&r'
      TabOrder = 0
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
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 114
    Width = 1036
    Height = 395
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPesquisa
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox12: TcxGroupBox
    Left = 0
    Top = 55
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
    TabOrder = 2
    Height = 59
    Width = 1036
    object Label20: TLabel
      Left = 16
      Top = 21
      Width = 361
      Height = 18
      Caption = 'Nome, matr'#237'cula, CPF ou data de altera'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdServidores: TLabel
      Left = 880
      Top = 22
      Width = 8
      Height = 16
      Caption = '0'
    end
    object edtPesquisa: TcxTextEdit
      Left = 391
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
      Width = 355
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 792
    Top = 72
  end
  object qryPesquisa: TADOQuery
    Parameters = <>
    Left = 512
    Top = 16
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 552
    Top = 16
  end
end
