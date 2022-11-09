object frmPainelEstagiarios: TfrmPainelEstagiarios
  Left = 192
  Top = 117
  Width = 1236
  Height = 540
  Caption = 'Painel de estagi'#225'rios'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1228
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
    object btnSair: TcxButton
      Left = 321
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
    object btnPesquisar: TcxButton
      Left = 7
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Pesquisar'
      TabOrder = 1
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
    object btnExportar: TcxButton
      Left = 124
      Top = 5
      Width = 157
      Height = 35
      Caption = '&Exportar para Excel'
      TabOrder = 2
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
  end
  object grpbxOpcoes: TcxGroupBox
    Left = 0
    Top = 40
    Align = alTop
    Style.BorderStyle = ebsUltraFlat
    TabOrder = 1
    Height = 79
    Width = 1228
    object lblAno: TLabel
      Left = 391
      Top = 36
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
      Left = 527
      Top = 36
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
    object lblTotal: TLabel
      Left = 808
      Top = 35
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
    object lkpAno: TcxLookupComboBox
      Left = 434
      Top = 32
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
      OnClick = lkpAnoClick
      Width = 72
    end
    object lkpMes: TcxLookupComboBox
      Left = 570
      Top = 32
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
      OnClick = lkpMesClick
      Width = 168
    end
    object rgpSituacao: TcxRadioGroup
      Left = 5
      Top = 10
      Caption = 'Situa'#231#227'o'
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Ativos'
        end
        item
          Caption = 'Admitidos'
        end
        item
          Caption = 'Desligados'
        end>
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnClick = rgpSituacaoClick
      Height = 50
      Width = 364
    end
  end
  object grdEstagiarios: TcxGrid
    Left = 0
    Top = 119
    Width = 1228
    Height = 390
    Align = alClient
    TabOrder = 2
    object tbvEstagiarios: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvAlways
      DataController.DataSource = dsPesqPessoal
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
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object tbvEstagiariosDataPosse: TcxGridDBColumn
        Caption = 'Posse'
        DataBinding.FieldName = 'dt_PosseCargo'
        Width = 130
      end
      object tbvEstagiariosdt_DesligCargo: TcxGridDBColumn
        Caption = 'Desligamento'
        DataBinding.FieldName = 'dt_DesligCargo'
        Width = 130
      end
      object tbvEstagiariosNome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 250
      end
      object tbvEstagiariosCargo: TcxGridDBColumn
        DataBinding.FieldName = 'Cargo'
        Width = 250
      end
      object tbvEstagiariosLotacao: TcxGridDBColumn
        Caption = 'Lota'#231#227'o'
        DataBinding.FieldName = 'Sigla'
        Width = 200
      end
      object tbvEstagiariosColumn1: TcxGridDBColumn
        Caption = 'In'#237'cio 1'#186' contrato'
        DataBinding.FieldName = 'Dt_InicioContrato1_Estagiario'
        Width = 130
      end
      object tbvEstagiariosColumn2: TcxGridDBColumn
        Caption = 'T'#233'rmino 1'#186' contrato'
        DataBinding.FieldName = 'Dt_TerminoContrato1_Estagiario'
        Width = 130
      end
      object tbvEstagiariosColumn3: TcxGridDBColumn
        Caption = 'In'#237'cio 2'#186' contrato'
        DataBinding.FieldName = 'Dt_InicioContrato2_Estagiario'
      end
      object tbvEstagiariosColumn4: TcxGridDBColumn
        Caption = 'T'#233'rmino 2'#186' contrato'
        DataBinding.FieldName = 'Dt_TerminoContrato2_Estagiario'
      end
      object tbvEstagiariosColumn5: TcxGridDBColumn
        Caption = 'In'#237'cio 3'#186' contrato'
        DataBinding.FieldName = 'Dt_InicioContrato3_Estagiario'
      end
      object tbvEstagiariosColumn6: TcxGridDBColumn
        Caption = 'T'#233'rmino 3'#186' contrato'
        DataBinding.FieldName = 'Dt_TerminoContrato3_Estagiario'
      end
      object tbvEstagiariosColumn7: TcxGridDBColumn
        Caption = 'In'#237'cio 4'#186' contrato'
        DataBinding.FieldName = 'Dt_InicioContrato4_Estagiario'
      end
      object tbvEstagiariosColumn8: TcxGridDBColumn
        Caption = 'T'#233'rmino 4'#186' contrato'
        DataBinding.FieldName = 'Dt_TerminoContrato4_Estagiario'
      end
    end
    object tvRelPersonalizadoFerias: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvAlways
      DataController.DataSource = dsPesqPessoal
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
    object lvlEstagiarios: TcxGridLevel
      GridView = tbvEstagiarios
    end
  end
  object qryPesquisa: TADOQuery
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
    Left = 424
    Top = 121
  end
  object dsPesqPessoal: TDataSource
    DataSet = qryPesquisa
    Left = 464
    Top = 121
  end
  object dsqryMes: TDataSource
    Left = 546
    Top = 121
  end
  object dsqryAno: TDataSource
    Left = 506
    Top = 121
  end
  object SaveDialogExportarExcel: TSaveDialog
    Left = 388
    Top = 121
  end
end
