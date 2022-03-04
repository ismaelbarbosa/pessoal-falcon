object frmUpdateSubstituicao: TfrmUpdateSubstituicao
  Left = 281
  Top = 118
  Width = 1078
  Height = 370
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
  object lblProcuradorSubstituido: TLabel
    Left = 18
    Top = 128
    Width = 148
    Height = 16
    Caption = 'Procurador substitu'#237'do'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lblDtInicio1: TLabel
    Left = 131
    Top = 193
    Width = 35
    Height = 16
    Caption = 'In'#237'cio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 114
    Top = 227
    Width = 52
    Height = 16
    Caption = 'T'#233'rmino'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalDias: TLabel
    Left = 181
    Top = 283
    Width = 87
    Height = 18
    Caption = 'N'#186' de dias'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lblNProcessoSEI: TLabel
    Left = 59
    Top = 159
    Width = 107
    Height = 16
    Caption = 'N'#186' Processo SEI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label2: TLabel
      Left = 432
      Top = 12
      Width = 240
      Height = 25
      Caption = 'frmUpdateSubstituicao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblOperacao: TLabel
      Left = 304
      Top = 12
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
    object lblFQC: TLabel
      Left = 680
      Top = 12
      Width = 69
      Height = 25
      Caption = 'lblFQC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblServidor: TLabel
      Left = 780
      Top = 16
      Width = 18
      Height = 18
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
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
    object btnGravar: TcxButton
      Left = 7
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
  end
  object lkpNome: TcxLookupComboBox
    Left = 181
    Top = 124
    ParentFont = False
    Properties.DropDownRows = 20
    Properties.DropDownWidth = 800
    Properties.KeyFieldNames = 'idPessoal'
    Properties.ListColumns = <
      item
        Width = 300
        FieldName = 'Nome'
      end
      item
        Width = 300
        FieldName = 'Cargo'
      end
      item
        Width = 300
        FieldName = 'Lotacao'
      end>
    Properties.ListSource = dsProcurador
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    OnExit = lkpNomeExit
    Width = 700
  end
  object edtDtInicio: TcxDateEdit
    Left = 181
    Top = 190
    ParentFont = False
    Style.BorderStyle = ebsUltraFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 117
  end
  object edtDtTermino: TcxDateEdit
    Left = 181
    Top = 223
    ParentFont = False
    Style.BorderStyle = ebsUltraFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    OnExit = edtDtTerminoExit
    Width = 117
  end
  object pnlNome: TPanel
    Left = 0
    Top = 40
    Width = 1070
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object lblNome: TLabel
      Left = 12
      Top = 16
      Width = 67
      Height = 18
      Caption = 'lblNome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblCargo: TLabel
      Left = 13
      Top = 41
      Width = 67
      Height = 18
      Caption = 'lblCargo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object edtProcessoSEI: TcxMaskEdit
    Left = 181
    Top = 157
    ParentFont = False
    Properties.EditMask = '00000-00000000/0000-00;0;_'
    Properties.MaxLength = 0
    Style.BorderStyle = ebsUltraFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Text = '                   '
    Width = 210
  end
  object qryProcurador: TADOQuery
    Connection = DMConexao.conPessoal
    Parameters = <>
    Left = 368
    Top = 40
  end
  object dsProcurador: TDataSource
    Left = 448
    Top = 40
  end
end
