object frmFolhaDePonto: TfrmFolhaDePonto
  Left = 192
  Top = 117
  Width = 670
  Height = 278
  Caption = 'Impress'#227'o de folha de ponto'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 662
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
      Left = 432
      Top = 12
      Width = 170
      Height = 25
      Caption = 'frmLancarFerias'
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
      Visible = False
    end
    object lblFQC: TLabel
      Left = 624
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
      Visible = False
    end
    object btnSair: TcxButton
      Left = 145
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
    object btnGerar: TcxButton
      Left = 7
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Gerar folha'
      TabOrder = 1
      OnClick = btnGerarClick
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
  object grpbxOpcoes: TcxGroupBox
    Left = 0
    Top = 40
    Align = alClient
    TabOrder = 1
    Height = 207
    Width = 662
    object lblAno: TLabel
      Left = 15
      Top = 22
      Width = 31
      Height = 18
      Caption = 'Ano'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblMes: TLabel
      Left = 15
      Top = 50
      Width = 32
      Height = 18
      Caption = 'M'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblLotacao: TLabel
      Left = 15
      Top = 78
      Width = 139
      Height = 18
      Caption = 'Lota'#231#227'o Principal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblServidor: TLabel
      Left = 15
      Top = 106
      Width = 66
      Height = 18
      Caption = 'Servidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lkpAno: TcxLookupComboBox
      Left = 162
      Top = 18
      ParentFont = False
      Properties.KeyFieldNames = 'ANO'
      Properties.ListColumns = <
        item
          FieldName = 'ANO'
        end>
      Properties.ListSource = dsqryAno
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 115
    end
    object lkpMes: TcxLookupComboBox
      Left = 162
      Top = 46
      ParentFont = False
      Properties.KeyFieldNames = 'nmes'
      Properties.ListColumns = <
        item
          Caption = 'M'#234's'
          FieldName = 'mes'
        end>
      Properties.ListSource = dsqryMes
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 168
    end
    object lkpSuperLotacao: TcxLookupComboBox
      Left = 162
      Top = 74
      ParentFont = False
      Properties.DropDownRows = 20
      Properties.KeyFieldNames = 'SUPERLOTACAO'
      Properties.ListColumns = <
        item
          Caption = 'Lota'#231#227'o Principal'
          FieldName = 'SUPERLOTACAO'
        end>
      Properties.ListSource = dsqryLotacao
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 247
    end
    object lkpServidor: TcxLookupComboBox
      Left = 162
      Top = 102
      ParentFont = False
      Properties.KeyFieldNames = 'IDPESSOAL'
      Properties.ListColumns = <
        item
          FieldName = 'NOME'
        end>
      Properties.ListSource = dsqryServidor
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = lkcmbbxServidorPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 423
    end
    object pgbrPonto: TcxProgressBar
      Left = 160
      Top = 171
      TabOrder = 4
      Width = 425
    end
  end
  object dsqryMes: TDataSource
    Left = 474
    Top = 85
  end
  object dsqryAno: TDataSource
    Left = 474
    Top = 57
  end
  object qryLotacao: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT(SUPERLOTACAO)'
      'FROM VWFOLHAPONTO LOT'
      'WHERE NOVA_ESTRUTURA = 1 AND '
      '      SUPERLOTACAO IS NOT NULL AND'
      '      SUPERLOTACAO <> '#39'NAO DEFINIDA'#39
      'UNION'
      'SELECT '#39'SUPERLOTACAO'#39' = '#39'TODOS'#39)
    Left = 510
    Top = 57
  end
  object qryServidor: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT PES.NOME, PES.IDPESSOAL'
      'FROM TBPESSOAL PES, TBSERVIDOR SERV'
      'WHERE PES.IDPESSOAL = SERV.IDPESSOAL AND'
      ' SERV.IDDESLIGAMENTO IS NULL AND'
      ' PES.NOME NOT LIKE '#39'%ADMINISTRADOR%'#39' AND'
      ' LEFT(serv.idCargo, 2) NOT IN '
      '     ('#39'pa'#39', '#39'pb'#39', '#39'pf'#39', '#39'sp'#39', '#39'js'#39')'
      'ORDER BY PES.NOME')
    Left = 510
    Top = 85
  end
  object dsqryServidor: TDataSource
    DataSet = qryServidor
    Left = 546
    Top = 86
  end
  object dsqryLotacao: TDataSource
    DataSet = qryLotacao
    Left = 546
    Top = 58
  end
end
