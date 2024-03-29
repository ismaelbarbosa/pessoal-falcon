object frmRegistrosBanco: TfrmRegistrosBanco
  Left = 192
  Top = 117
  Width = 696
  Height = 480
  Caption = 'Registros realizados no banco de dados de pessoal'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btnSair: TcxButton
      Left = 4
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
  end
  object pgcSituacao: TcxPageControl
    Left = 0
    Top = 154
    Width = 688
    Height = 295
    ActivePage = tshRegistrosBanco
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 295
    ClientRectRight = 688
    ClientRectTop = 24
    object tshRegistrosBanco: TcxTabSheet
      Caption = 'Registros'
      ImageIndex = 0
      object pnlCargosComissionados: TPanel
        Left = 0
        Top = 0
        Width = 688
        Height = 99
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          Left = 12
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Data'
        end
        object DBText2: TDBText
          Left = 77
          Top = 15
          Width = 107
          Height = 18
          DataField = 'dataEvento'
          DataSource = dsLog
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 204
          Top = 16
          Width = 83
          Height = 13
          Caption = 'Realizado por:'
        end
        object DBText5: TDBText
          Left = 301
          Top = 16
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'Usuario'
          DataSource = dsLog
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 12
          Top = 48
          Width = 39
          Height = 13
          Caption = 'Evento'
        end
        object cxDBMemo1: TcxDBMemo
          Left = 78
          Top = 40
          DataBinding.DataField = 'Evento'
          DataBinding.DataSource = dsLog
          Properties.ReadOnly = False
          TabOrder = 0
          Height = 45
          Width = 515
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 99
        Width = 688
        Height = 172
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsLog
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentEven = frmPrincipal.cxStyle1
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'dataEvento'
            Width = 100
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'Evento'
            Width = 350
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Tabela'
            DataBinding.FieldName = 'tabela'
            Width = 100
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'Usuario'
            Width = 200
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 49
    Align = alTop
    Caption = 'Totais'
    TabOrder = 2
    Height = 105
    Width = 688
    object lblTotalGeral: TLabel
      Left = 55
      Top = 14
      Width = 39
      Height = 45
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblTotalExercicioExterno: TLabel
      Left = 240
      Top = 14
      Width = 39
      Height = 45
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -37
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 72
      Width = 127
      Height = 13
      Caption = 'Registgros na semana'
    end
    object Label2: TLabel
      Left = 202
      Top = 72
      Width = 99
      Height = 13
      Caption = 'Registros no m'#234's'
    end
  end
  object qryLog: TADOQuery
    Connection = DMConexao.conPessoal
    Parameters = <>
    Left = 400
    Top = 8
  end
  object dsLog: TDataSource
    DataSet = qryLog
    Left = 432
    Top = 8
  end
end
