object frmUpdateAbonoAnual: TfrmUpdateAbonoAnual
  Left = 98
  Top = 146
  Width = 926
  Height = 576
  Caption = 'Lan'#231'amento de abono anual'
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
    Width = 918
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
      Left = 430
      Top = 25
      Width = 128
      Height = 13
      Caption = 'frmUpdateAbonoAnual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblOperacao: TLabel
      Left = 300
      Top = 25
      Width = 68
      Height = 13
      Caption = 'lblOperacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblFQC: TLabel
      Left = 700
      Top = 25
      Width = 37
      Height = 13
      Caption = 'lblFQC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object btnSair: TcxButton
      Left = 132
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
    object btnGravar: TcxButton
      Left = 7
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Gravar'
      TabOrder = 1
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
  object gbxLancamento: TcxGroupBox
    Left = 0
    Top = 97
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Height = 272
    Width = 918
    object Label6: TLabel
      Left = 26
      Top = 84
      Width = 75
      Height = 16
      Caption = 'Primeiro dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 43
      Top = 32
      Width = 58
      Height = 16
      Caption = 'Exerc'#237'cio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 194
      Width = 69
      Height = 16
      Caption = 'Quarto dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 34
      Top = 231
      Width = 67
      Height = 16
      Caption = 'Quinto dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 20
      Top = 120
      Width = 81
      Height = 16
      Caption = 'Segundo dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 157
      Width = 77
      Height = 16
      Caption = 'Terceiro dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblNProcessoSEI: TLabel
      Left = 225
      Top = 32
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
    object edtDt_1: TcxDateEdit
      Left = 120
      Top = 78
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnExit = edtDt_1Exit
      Width = 149
    end
    object edtExercicio: TcxTextEdit
      Left = 120
      Top = 25
      ParentFont = False
      Properties.MaxLength = 4
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnExit = edtExercicioExit
      OnKeyPress = edtExercicioKeyPress
      Width = 81
    end
    object edtProcessoSEI: TcxMaskEdit
      Left = 352
      Top = 25
      ParentFont = False
      Properties.MaxLength = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = '                   '
      OnExit = edtProcessoSEIExit
      Width = 293
    end
    object edtDt_4: TcxDateEdit
      Left = 120
      Top = 188
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      OnExit = edtDt_4Exit
      Width = 149
    end
    object edtDt_5: TcxDateEdit
      Left = 120
      Top = 225
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      OnExit = edtDt_5Exit
      Width = 149
    end
    object edtDt_2: TcxDateEdit
      Left = 120
      Top = 114
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      OnExit = edtDt_2Exit
      Width = 149
    end
    object edtDt_3: TcxDateEdit
      Left = 120
      Top = 151
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      OnExit = edtDt_3Exit
      Width = 149
    end
  end
  object pnlNome: TPanel
    Left = 0
    Top = 40
    Width = 918
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lblMatricula: TLabel
      Left = 645
      Top = 32
      Width = 64
      Height = 13
      Caption = 'lblMatricula'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 21
      Top = 8
      Width = 79
      Height = 23
      Caption = 'lblNome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblCargo: TLabel
      Left = 21
      Top = 36
      Width = 52
      Height = 16
      Caption = 'lblCargo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbl_ID: TLabel
      Left = 832
      Top = 32
      Width = 34
      Height = 13
      Caption = 'lbl_ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 369
    Align = alClient
    Caption = 'Abonos, afastamentos e f'#233'rias concomitantes'
    TabOrder = 3
    Height = 176
    Width = 918
    object grdFAA: TcxGrid
      Left = 2
      Top = 18
      Width = 914
      Height = 156
      Align = alClient
      TabOrder = 0
      object tbvFAA: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object tbcDt_Inicio: TcxGridDBColumn
          Caption = 'Data de in'#237'cio'
          DataBinding.FieldName = 'Dt_Inicio'
        end
        object tbcDt_Termino: TcxGridDBColumn
          Caption = 'Data de t'#233'rmino'
          DataBinding.FieldName = 'Dt_Termino'
        end
        object tbcTabela: TcxGridDBColumn
          DataBinding.FieldName = 'Tabela'
        end
      end
      object lvlFAA: TcxGridLevel
        GridView = tbvFAA
      end
    end
  end
  object qryAbonosNoPeriodo: TADOQuery
    Parameters = <>
    Left = 512
    Top = 144
  end
  object dsAbonosNoPeriodo: TDataSource
    DataSet = qryAbonosNoPeriodo
    Left = 544
    Top = 144
  end
  object dsFeriasAfastamentosAbonos: TDataSource
    Left = 648
    Top = 16
  end
end
