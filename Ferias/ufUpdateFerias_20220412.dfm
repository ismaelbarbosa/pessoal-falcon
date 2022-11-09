object frmUpdateFerias_20220412: TfrmUpdateFerias_20220412
  Left = 0
  Top = 33
  Width = 1024
  Height = 695
  Caption = 'Lan'#231'amento de f'#233'rias'
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
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = clSkyBlue
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
      Width = 92
      Height = 13
      Caption = 'frmLancarFerias'
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
    Top = 106
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Height = 108
    Width = 1016
    object Label5: TLabel
      Left = 212
      Top = 68
      Width = 102
      Height = 16
      Caption = 'Tipo de parcela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 22
      Top = 68
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
    object lblNProcessoSEI: TLabel
      Left = 465
      Top = 73
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
    object lkpTipoParcela: TcxLookupComboBox
      Left = 324
      Top = 60
      ParentFont = False
      Properties.DropDownRows = 20
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'idTipoParcela'
      Properties.ListColumns = <
        item
          Caption = 'Descri'#231#227'o'
          Width = 50
          FieldName = 'Descricao'
        end
        item
          Caption = 'C'#243'digo'
          Width = 30
          FieldName = 'idTipoParcela'
        end>
      Properties.ListSource = dsFeriasTipoParcela
      Style.BorderStyle = ebsUltraFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      OnClick = lkpTipoParcelaClick
      OnExit = lkpTipoParcelaExit
      Width = 95
    end
    object edtExercicio: TcxTextEdit
      Left = 90
      Top = 60
      ParentFont = False
      Properties.MaxLength = 4
      Style.BorderStyle = ebsUltraFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnExit = edtExercicioExit
      OnKeyPress = edtExercicioKeyPress
      Width = 95
    end
    object rgpPeriodo: TcxRadioGroup
      Left = 22
      Top = -3
      Caption = 'Per'#237'odo'
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = #218'nico'
        end
        item
          Caption = 'Primeiro'
        end
        item
          Caption = 'Segundo'
        end>
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 47
      Width = 244
    end
    object edtProcessoSEI: TcxMaskEdit
      Left = 590
      Top = 65
      ParentFont = False
      Properties.EditMask = '00000-00000000/0000-00;0;_'
      Properties.MaxLength = 0
      Style.BorderStyle = ebsUltraFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Text = '                   '
      Width = 266
    end
    object rgpParcelada: TcxRadioGroup
      Left = 316
      Top = -3
      Caption = 'Parcelada?'
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Sim'
        end
        item
          Caption = 'N'#227'o'
        end>
      ItemIndex = 1
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnClick = rgpParceladaClick
      OnExit = rgpParceladaExit
      Height = 47
      Width = 151
    end
  end
  object gbxFeriasNoPeriodo: TcxGroupBox
    Left = 0
    Top = 552
    Align = alBottom
    Caption = 'F'#233'rias do servidor no per'#237'odo'
    Style.BorderStyle = ebsNone
    TabOrder = 2
    Height = 112
    Width = 1016
    object grdFerias: TcxGrid
      Left = 2
      Top = 18
      Width = 1012
      Height = 92
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
        DataController.DataSource = dsFeriasNoPeriodo
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
          Width = 85
        end
        object tvcPeriodo: TcxGridDBColumn
          Caption = 'Per'#237'odo'
          DataBinding.FieldName = 'descricaoPeriodo'
          Width = 103
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
        object tvcIdTipoParcela: TcxGridDBColumn
          Caption = 'IDTP'
          DataBinding.FieldName = 'idTipoParcela'
          Width = 50
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
  object pnlNome: TPanel
    Left = 0
    Top = 40
    Width = 1016
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lblMatricula: TLabel
      Left = 661
      Top = 32
      Width = 74
      Height = 16
      Caption = 'lblMatricula'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 21
      Top = 10
      Width = 87
      Height = 25
      Caption = 'lblNome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblCargo: TLabel
      Left = 21
      Top = 39
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
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 214
    Align = alClient
    Style.BorderStyle = ebsNone
    TabOrder = 4
    Height = 338
    Width = 1016
    object gbxPrimeiraParcela: TcxGroupBox
      Left = 8
      Top = 13
      Caption = 'Primeira parcela ou parcela '#250'nica'
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 310
      Width = 235
      object lblDt_TerminoPrimeira: TLabel
        Left = 88
        Top = 58
        Width = 94
        Height = 18
        Caption = '__/__/____'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDtTermino1: TLabel
        Left = 8
        Top = 58
        Width = 66
        Height = 18
        Caption = 'T'#233'rmino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDtInicio1: TLabel
        Left = 10
        Top = 26
        Width = 45
        Height = 18
        Caption = 'In'#237'cio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDt_InicioReagend1: TLabel
        Left = 10
        Top = 218
        Width = 164
        Height = 14
        AutoSize = False
        Caption = 'In'#237'cio do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblDt_TerminoReagend1: TLabel
        Left = 12
        Top = 262
        Width = 159
        Height = 13
        AutoSize = False
        Caption = 'T'#233'rmino do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblObservacao1: TLabel
        Left = 10
        Top = 90
        Width = 68
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object edtDtInicioPrimeira: TcxDateEdit
        Left = 86
        Top = 26
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnEnter = edtDtInicioPrimeiraEnter
        OnExit = edtDtInicioPrimeiraExit
        Width = 117
      end
      object edtDt_InicioReagendamentoPrimeira: TcxDateEdit
        Left = 10
        Top = 233
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
      object edtDt_TerminoReagendamentoPrimeira: TcxDateEdit
        Left = 10
        Top = 278
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 121
      end
      object mmoObservacaoPrimeira: TcxMemo
        Left = 10
        Top = 106
        Lines.Strings = (
          '')
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 100
        Width = 220
      end
    end
    object gbxSegundaParcela: TcxGroupBox
      Left = 250
      Top = 13
      Caption = 'Segunda parcela'
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 310
      Width = 235
      object lblDt_TerminoSegunda: TLabel
        Left = 94
        Top = 58
        Width = 94
        Height = 18
        Caption = '__/__/____'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDtTermino2: TLabel
        Left = 8
        Top = 58
        Width = 66
        Height = 18
        Caption = 'T'#233'rmino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDtInicio2: TLabel
        Left = 10
        Top = 26
        Width = 45
        Height = 18
        Caption = 'In'#237'cio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDt_InicioReagend2: TLabel
        Left = 10
        Top = 218
        Width = 164
        Height = 14
        AutoSize = False
        Caption = 'In'#237'cio do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblDt_TerminoReagend2: TLabel
        Left = 12
        Top = 262
        Width = 159
        Height = 13
        AutoSize = False
        Caption = 'T'#233'rmino do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblObservacao2: TLabel
        Left = 10
        Top = 90
        Width = 68
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object edtDtInicioSegunda: TcxDateEdit
        Left = 86
        Top = 26
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnExit = edtDtInicioSegundaExit
        Width = 117
      end
      object edtDt_InicioReagendamentoSegunda: TcxDateEdit
        Left = 10
        Top = 233
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
      object edtDt_TerminoReagendamentoSegunda: TcxDateEdit
        Left = 10
        Top = 278
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 121
      end
      object mmoObservacaoSegunda: TcxMemo
        Left = 10
        Top = 106
        Lines.Strings = (
          '')
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 100
        Width = 220
      end
    end
    object gbxTerceiraParcela: TcxGroupBox
      Left = 492
      Top = 13
      Caption = 'Terceira parcela'
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 310
      Width = 235
      object lblDt_TerminoTerceira: TLabel
        Left = 102
        Top = 58
        Width = 94
        Height = 18
        Caption = '__/__/____'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDtTermino3: TLabel
        Left = 8
        Top = 58
        Width = 66
        Height = 18
        Caption = 'T'#233'rmino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDtInicio3: TLabel
        Left = 10
        Top = 26
        Width = 45
        Height = 18
        Caption = 'In'#237'cio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblDt_InicioReagend3: TLabel
        Left = 10
        Top = 218
        Width = 164
        Height = 14
        AutoSize = False
        Caption = 'In'#237'cio do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblDt_TerminoReagend3: TLabel
        Left = 12
        Top = 262
        Width = 159
        Height = 13
        AutoSize = False
        Caption = 'T'#233'rmino do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblObservacao3: TLabel
        Left = 10
        Top = 90
        Width = 68
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object edtDtInicioTerceira: TcxDateEdit
        Left = 86
        Top = 26
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnExit = edtDtInicioTerceiraExit
        Width = 117
      end
      object edtDt_InicioReagendamentoTerceira: TcxDateEdit
        Left = 10
        Top = 233
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
      object edtDt_TerminoReagendamentoTerceira: TcxDateEdit
        Left = 10
        Top = 278
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 121
      end
      object mmoObservacaoTerceira: TcxMemo
        Left = 10
        Top = 106
        Lines.Strings = (
          '')
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 100
        Width = 220
      end
    end
    object chkAntecipacao: TcxCheckBox
      Left = 736
      Top = 10
      Caption = 'Antecipa'#231#227'o'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object mmoSQL: TcxMemo
      Left = 736
      Top = 40
      Lines.Strings = (
        'mmoSQL')
      TabOrder = 4
      Visible = False
      Height = 105
      Width = 273
    end
    object cxGroupBox1: TcxGroupBox
      Left = 736
      Top = 157
      Caption = 'Quarta parcela'
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Visible = False
      Height = 124
      Width = 217
      object Label4: TLabel
        Left = 88
        Top = 58
        Width = 94
        Height = 18
        Caption = '__/__/____'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 58
        Width = 66
        Height = 18
        Caption = 'T'#233'rmino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 26
        Width = 45
        Height = 18
        Caption = 'In'#237'cio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 10
        Top = 101
        Width = 164
        Height = 14
        AutoSize = False
        Caption = 'In'#237'cio do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label9: TLabel
        Left = 12
        Top = 150
        Width = 159
        Height = 13
        AutoSize = False
        Caption = 'T'#233'rmino do reagendamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label10: TLabel
        Left = 10
        Top = 191
        Width = 68
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object cxDateEdit1: TcxDateEdit
        Left = 86
        Top = 22
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnExit = edtDtInicioTerceiraExit
        Width = 117
      end
      object cxDateEdit2: TcxDateEdit
        Left = 10
        Top = 118
        ParentFont = False
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Width = 121
      end
      object cxDateEdit3: TcxDateEdit
        Left = 10
        Top = 166
        ParentFont = False
        Style.BorderStyle = ebsNone
        TabOrder = 2
        Width = 121
      end
      object cxMemo1: TcxMemo
        Left = 10
        Top = 209
        Lines.Strings = (
          '')
        ParentFont = False
        Style.BorderStyle = ebsNone
        TabOrder = 3
        Height = 114
        Width = 196
      end
    end
  end
  object dsFeriasTipoParcela: TDataSource
    DataSet = dmExibirTabelas.qryFeriasTipoParcela
    Left = 728
    Top = 16
  end
  object qryFeriasNoPeriodo: TADOQuery
    Parameters = <>
    Left = 784
    Top = 16
  end
  object dsFeriasNoPeriodo: TDataSource
    DataSet = qryFeriasNoPeriodo
    Left = 816
    Top = 16
  end
  object qryRetornaAfastamentosEFeriasCoincidentes: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'codigoAfastamento'
        Size = -1
        Value = Null
      end
      item
        Name = 'DT_INICIO'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'DT_TERMINO'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'DT_INICIOATUAL'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'DT_TERMINOATUAL'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SET DATEFORMAT DMY'
      'SELECT * '
      'FROM F_RetornaAfastamentosFeriasCoincidentes(:idPessoal, '
      
        '     :codigoAfastamento, :DT_INICIO, :DT_TERMINO, :DT_INICIOATUA' +
        'L, '
      '     :DT_TERMINOATUAL)')
    Left = 862
    Top = 16
  end
  object dsqryRetornaAfastamentosEFeriasCoincidentes: TDataSource
    DataSet = qryRetornaAfastamentosEFeriasCoincidentes
    Left = 893
    Top = 15
  end
end
