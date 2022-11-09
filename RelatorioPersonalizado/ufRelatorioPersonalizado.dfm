object frmRelatorioPersonalizado: TfrmRelatorioPersonalizado
  Left = 194
  Top = 78
  Width = 1024
  Height = 540
  Caption = 'Relatorio personalizado'
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
  object grpbxPesquisa: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 83
    Width = 1016
    object lblTotal: TLabel
      Left = 24
      Top = 61
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
      Left = 508
      Top = 12
      Width = 105
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
      Height = 19
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
    object rdgrpSelecionaRelatorio_Old: TRadioGroup
      Left = 744
      Top = 9
      Width = 57
      Height = 52
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
    end
    object rgpSelecionaRelatorio: TcxRadioGroup
      Left = 10
      Top = 1
      Caption = 'Rela'#231#227'o de:'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Servidores'
        end
        item
          Caption = 'F'#233'rias'
        end>
      ItemIndex = 0
      TabOrder = 4
      OnClick = rgpSelecionaRelatorioClick
      Height = 45
      Width = 198
    end
    object btnSair: TcxButton
      Left = 627
      Top = 12
      Width = 92
      Height = 35
      Caption = 'Sai&r'
      TabOrder = 5
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
      TabOrder = 6
      OnClick = rgpSelecionaRelatorioClick
      Height = 45
      Width = 230
    end
  end
  object grpbxRelPersonalizado: TcxGroupBox
    Left = 0
    Top = 83
    Align = alClient
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Height = 426
    Width = 1016
    object grdRelPersonalizado: TcxGrid
      Left = 2
      Top = 18
      Width = 1012
      Height = 406
      Align = alClient
      TabOrder = 0
      object tvRelPersonalizadoServidor: TcxGridDBTableView
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
      object lvgrdRelPersonalizadoServidor: TcxGridLevel
        GridView = tvRelPersonalizadoServidor
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 436
    Top = 153
  end
  object SaveDialogExportarExcel: TSaveDialog
    Left = 364
    Top = 153
  end
  object tmrPesqPessoal: TTimer
    Enabled = False
    Interval = 300
    Left = 312
    Top = 152
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
    Left = 152
    Top = 152
  end
  object dsPesqPessoal: TDataSource
    DataSet = qryPesqPessoal
    Left = 184
    Top = 152
  end
end
