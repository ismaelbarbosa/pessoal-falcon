object frmServidorDetalhe: TfrmServidorDetalhe
  Left = 417
  Top = 172
  Width = 1073
  Height = 610
  Caption = 'Pessoal - cadastro de servidores'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPessoal: TcxPageControl
    Left = 0
    Top = 41
    Width = 1057
    Height = 369
    ActivePage = tshDadosFuncionais
    Align = alTop
    TabOrder = 0
    ClientRectBottom = 369
    ClientRectRight = 1057
    ClientRectTop = 24
    object tshDadosFuncionais: TcxTabSheet
      Caption = 'Dados funcionais'
      ImageIndex = 0
      object txtCargo: TDBText
        Left = 19
        Top = 102
        Width = 59
        Height = 21
        AutoSize = True
        DataField = 'descricaoCargo'
        DataSource = dmCadastroServidor.dsPessoal
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 19
        Top = 24
        Width = 30
        Height = 13
        Caption = 'Nome'
      end
      object Label4: TLabel
        Left = 19
        Top = 88
        Width = 31
        Height = 13
        Caption = 'Cargo'
      end
      object Label5: TLabel
        Left = 19
        Top = 128
        Width = 40
        Height = 13
        Caption = 'Lota'#231#227'o'
      end
      object DBText1: TDBText
        Left = 19
        Top = 142
        Width = 54
        Height = 21
        AutoSize = True
        DataField = 'descricaoLotacao'
        DataSource = dmCadastroServidor.dsPessoal
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 19
        Top = 156
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object DBText2: TDBText
        Left = 19
        Top = 148
        Width = 54
        Height = 21
        AutoSize = True
        DataField = 'CPF'
        DataSource = dmCadastroServidor.dsPessoal
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 275
        Top = 156
        Width = 48
        Height = 13
        Caption = 'Matr'#237'cula'
      end
      object DBText3: TDBText
        Left = 275
        Top = 148
        Width = 54
        Height = 21
        AutoSize = True
        DataField = 'idServidor'
        DataSource = dmCadastroServidor.dsPessoal
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 24
        Top = 152
        Width = 65
        Height = 17
        DataField = 'SituacaoFuncional'
      end
      object lblStatus: TLabel
        Left = 640
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Status'
      end
      object edtNome: TcxDBTextEdit
        Left = 19
        Top = 45
        DataBinding.DataField = 'Nome'
        DataBinding.DataSource = frmPesquisarServidor.dsPessoal
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 737
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 61
        Top = 18
        DataBinding.DataField = 'NOME'
        DataBinding.DataSource = dmCadastroServidor.dsPessoal
        TabOrder = 1
        Width = 458
      end
      object Memo1: TMemo
        Left = 24
        Top = 200
        Width = 297
        Height = 89
        Lines.Strings = (
          'dmCadastroServidor.dsPessoal - 1'#186' edit'
          'frmPesquisarServidor.dsPessoal - 2'#186' edit ')
        TabOrder = 2
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1057
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 21
      Top = 7
      Width = 108
      Height = 26
      Caption = 'Detalhar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000000000000000000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000250000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0087000000FF0000007400000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000008E0000
        00FF000000D7000000FC00000045000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000087000000FF0000
        008E00000007000000C7000000EC000000210000000000000000000000000000
        00000000000000000000000000000000000000000000000000AE000000870000
        0000000000000000001B000000E8000000D00000000A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000040000000FB000000A600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000073000000FF00000025000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000002500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      ParentFont = False
    end
  end
end
