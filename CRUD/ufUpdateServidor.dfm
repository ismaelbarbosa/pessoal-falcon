object frmUpdateServidor: TfrmUpdateServidor
  Left = 0
  Top = 110
  Width = 1536
  Height = 714
  Caption = 'Atualiza'#231#227'o de dados do servidor'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1528
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
      Left = 416
      Top = 8
      Width = 200
      Height = 25
      Caption = 'frmUpdateServidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btnSair: TcxButton
      Left = 288
      Top = 5
      Width = 110
      Height = 35
      Caption = 'Sai&r'
      TabOrder = 2
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
    object btnGravarServidor: TcxButton
      Left = 117
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = btnGravarServidorClick
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
    object btnEditarServidor: TcxButton
      Left = 2
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Editar'
      TabOrder = 0
      OnClick = btnEditarServidorClick
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
    Top = 40
    Width = 1528
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object txtNome: TDBText
      Left = 16
      Top = 12
      Width = 865
      Height = 31
      DataField = 'nome'
      DataSource = frmReadServidor.dsPesquisa
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object pgcPessoal: TcxPageControl
    Left = 0
    Top = 92
    Width = 1528
    Height = 572
    ActivePage = tshAfastamentos
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 572
    ClientRectRight = 1528
    ClientRectTop = 24
    object tshDadosFuncionais: TcxTabSheet
      Caption = 'Dados Funcionais'
      ImageIndex = 0
      object grpbxDadosFuncionais: TGroupBox
        Left = 0
        Top = 0
        Width = 1528
        Height = 548
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object Label1: TLabel
          Left = 260
          Top = 93
          Width = 51
          Height = 13
          Caption = 'Matr'#237'cula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblNome: TLabel
          Left = 86
          Top = 22
          Width = 47
          Height = 18
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCargo: TLabel
          Left = 98
          Top = 120
          Width = 35
          Height = 13
          Caption = 'Cargo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblLotacao: TLabel
          Left = 57
          Top = 224
          Width = 76
          Height = 13
          Caption = 'Lota'#231#227'o atual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCF_Num: TLabel
          Left = 12
          Top = 439
          Width = 121
          Height = 13
          Caption = 'Carteira Funcional n'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object btnGera_CF_Numero: TSpeedButton
          Left = 223
          Top = 435
          Width = 82
          Height = 20
          Caption = 'Gerar n'#186
          Enabled = False
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblEspecialidade: TLabel
          Left = 56
          Top = 146
          Width = 77
          Height = 13
          Caption = 'Especialidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCargaHoraria: TLabel
          Left = 52
          Top = 387
          Width = 81
          Height = 13
          Caption = 'Carga Hor'#225'ria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblOrgaoOrigem: TLabel
          Left = 171
          Top = 250
          Width = 99
          Height = 13
          Caption = 'Org'#227'o de Origem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lblDt_PosseCargo: TLabel
          Left = 46
          Top = 172
          Width = 87
          Height = 13
          Caption = 'Posse no cargo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_ExercicioCargo: TLabel
          Left = 249
          Top = 172
          Width = 105
          Height = 13
          Caption = 'Exerc'#237'cio no cargo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblPrimeiroExercicioGDF: TLabel
          Left = 475
          Top = 172
          Width = 96
          Height = 13
          Caption = '1'#186' Exerc'#237'cio GDF'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblDt_Nomeacao: TLabel
          Left = 6
          Top = 198
          Width = 127
          Height = 13
          Caption = 'Decreto de Nomea'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_NomeacaoDODF: TLabel
          Left = 449
          Top = 198
          Width = 107
          Height = 13
          Caption = 'Nomea'#231#227'o (DODF)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblAverbacaoGDF: TLabel
          Left = 466
          Top = 387
          Width = 89
          Height = 13
          Caption = 'Averba'#231#227'o GDF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblAverbacaoServPublico: TLabel
          Left = 460
          Top = 412
          Width = 200
          Height = 13
          Caption = 'Averba'#231#227'o Servi'#231'o P'#250'blico (U/E/M)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblCPF: TLabel
          Left = 103
          Top = 52
          Width = 30
          Height = 18
          Caption = 'CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 95
          Top = 413
          Width = 38
          Height = 13
          Caption = 'Classe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 245
          Top = 413
          Width = 40
          Height = 13
          Caption = 'Padr'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblNascimento: TLabel
          Left = 67
          Top = 93
          Width = 66
          Height = 13
          Caption = 'Nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 103
          Top = 288
          Width = 40
          Height = 13
          Caption = 'Fun'#231#227'o'
        end
        object DBText1: TDBText
          Left = 301
          Top = 288
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'idFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object DBText2: TDBText
          Left = 241
          Top = 288
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'descricaoFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 24
          Top = 310
          Width = 120
          Height = 13
          Caption = 'Nomea'#231#227'o na fun'#231#227'o'
        end
        object DBText3: TDBText
          Left = 161
          Top = 310
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'Dt_NomeacaoFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 51
          Top = 331
          Width = 93
          Height = 13
          Caption = 'Posse na fun'#231#227'o'
        end
        object Label10: TLabel
          Left = 7
          Top = 353
          Width = 138
          Height = 13
          Caption = 'Desligamento da fun'#231#227'o'
        end
        object DBText4: TDBText
          Left = 161
          Top = 353
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'Dt_Deslig_Funcao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 342
          Top = 331
          Width = 111
          Height = 13
          Caption = 'Exerc'#237'cio na fun'#231#227'o'
        end
        object DBText5: TDBText
          Left = 541
          Top = 331
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'Dt_ExercicioFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 341
          Top = 310
          Width = 167
          Height = 13
          Caption = 'Nomea'#231#227'o na fun'#231#227'o (DODF)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 541
          Top = 310
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'Dt_NomeacaoFuncaoDODF'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 161
          Top = 331
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'Dt_PosseFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 343
          Top = 353
          Width = 185
          Height = 13
          Caption = 'Desligamento da fun'#231#227'o (DODF)'
        end
        object DBText8: TDBText
          Left = 545
          Top = 353
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'Dt_Deslig_FuncaoDODF'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 161
          Top = 288
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'SimboloDFG'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtLotacao: TDBText
          Left = 143
          Top = 225
          Width = 59
          Height = 13
          AutoSize = True
          DataField = 'SimboloDFG'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 695
          Top = 27
          Width = 21
          Height = 13
          Caption = 'IDP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbl_IDS: TLabel
          Left = 796
          Top = 27
          Width = 7
          Height = 13
          Caption = '0'
        end
        object Label34: TLabel
          Left = 767
          Top = 27
          Width = 22
          Height = 13
          Caption = 'IDS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbl_IDP: TLabel
          Left = 724
          Top = 26
          Width = 7
          Height = 13
          Caption = '0'
        end
        object txtMatricula: TDBText
          Left = 456
          Top = 91
          Width = 79
          Height = 16
          AutoSize = True
          DataField = 'idServidor'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object edtAverbacaoServPublico: TDBEdit
          Left = 1161
          Top = 432
          Width = 80
          Height = 19
          Ctl3D = False
          DataField = 'AverbacaoServPublico'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          Visible = False
        end
        object edtDt_PrimeiroExercicioGDF: TcxDBDateEdit
          Left = 579
          Top = 168
          DataBinding.DataField = 'Dt_PrimeiroExercicioGDF'
          Enabled = False
          TabOrder = 18
          Visible = False
          Width = 100
        end
        object edtAverbacaoGDF: TcxDBDateEdit
          Left = 563
          Top = 383
          DataBinding.DataField = 'AverbacaoGDF'
          Enabled = False
          TabOrder = 16
          Visible = False
          Width = 100
        end
        object chkAuxTransporte: TcxDBCheckBox
          Left = 536
          Top = 433
          Caption = 'Aux'#237'lio-transporte'
          DataBinding.DataField = 'AuxTransporte'
          TabOrder = 17
          Width = 126
        end
        object edtCF_Num: TcxDBTextEdit
          Left = 141
          Top = 435
          DataBinding.DataField = 'CF_Num'
          TabOrder = 19
          Visible = False
          Width = 81
        end
        object edtNome: TcxTextEdit
          Left = 141
          Top = 18
          ParentFont = False
          Properties.OnChange = edtNomePropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Text = 'edtNome'
          OnExit = edtNomeExit
          OnKeyDown = edtNomeKeyDown
          OnKeyPress = edtNomeKeyPress
          Width = 522
        end
        object edtCPF: TcxTextEdit
          Left = 141
          Top = 48
          ParentFont = False
          Properties.OnChange = edtCPFPropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Text = 'edtCPF'
          OnKeyDown = edtCPFKeyDown
          Width = 172
        end
        object lkpCargo: TcxLookupComboBox
          Left = 141
          Top = 116
          Properties.KeyFieldNames = 'idCargo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsCargo
          Properties.OnChange = lkpCargoPropertiesChange
          TabOrder = 4
          OnKeyDown = lkpCargoKeyDown
          Width = 522
        end
        object edtDtNascimento: TcxDateEdit
          Left = 141
          Top = 89
          Properties.OnChange = edtDtNascimentoPropertiesChange
          TabOrder = 2
          OnKeyDown = edtDtNascimentoKeyDown
          Width = 108
        end
        object lkpEspecialidade: TcxLookupComboBox
          Left = 141
          Top = 142
          Properties.KeyFieldNames = 'Descricao'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          TabOrder = 5
          Width = 326
        end
        object edtidServidor: TcxTextEdit
          Left = 319
          Top = 89
          Properties.OnChange = edtidServidorPropertiesChange
          TabOrder = 3
          Text = 'edtidServidor'
          OnKeyDown = edtidServidorKeyDown
          Width = 121
        end
        object edtDt_PosseCargo: TcxDateEdit
          Left = 141
          Top = 168
          TabOrder = 6
          Width = 99
        end
        object edtDt_ExercicioCargo: TcxDateEdit
          Left = 367
          Top = 168
          TabOrder = 7
          Width = 99
        end
        object edtDt_NomeacaoCargo: TcxDateEdit
          Left = 141
          Top = 194
          TabOrder = 8
          Width = 99
        end
        object edtDt_NomeacaoCargoDODF: TcxDateEdit
          Left = 563
          Top = 194
          TabOrder = 9
          Width = 99
        end
        object chkRequisitado: TcxCheckBox
          Left = 47
          Top = 247
          Caption = 'Requisitado'
          TabOrder = 10
          Width = 90
        end
        object edtOrgaoOrigem: TcxTextEdit
          Left = 277
          Top = 246
          TabOrder = 11
          Text = 'edtOrgaoOrigem'
          Width = 386
        end
        object cbxCargaHoraria: TcxComboBox
          Left = 142
          Top = 383
          Properties.Items.Strings = (
            '20'
            '30'
            '40')
          TabOrder = 12
          Text = 'cbxCargaHoraria'
          Width = 60
        end
        object cbxClasse: TcxComboBox
          Left = 142
          Top = 409
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            'E'
            'U')
          TabOrder = 13
          Text = 'cbxClasse'
          Width = 73
        end
        object cbxPadrao: TcxComboBox
          Left = 304
          Top = 409
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            'E'
            'U')
          TabOrder = 14
          Text = 'cbxPadrao'
          Width = 73
        end
        object chkPessoal: TcxCheckBox
          Left = 696
          Top = 296
          Caption = 'Tabela de pessoal'
          Properties.ReadOnly = True
          TabOrder = 20
          Visible = False
          Width = 147
        end
        object chkServidor: TcxCheckBox
          Left = 696
          Top = 328
          Caption = 'Tabela de servidor'
          Properties.ReadOnly = True
          TabOrder = 21
          Visible = False
          Width = 147
        end
        object chkDados: TcxCheckBox
          Left = 696
          Top = 360
          Caption = 'Tabela de dados'
          Properties.ReadOnly = True
          TabOrder = 22
          Visible = False
          Width = 147
        end
        object chkDatas: TcxCheckBox
          Left = 696
          Top = 392
          Caption = 'Datas'
          Properties.ReadOnly = True
          TabOrder = 23
          Visible = False
          Width = 147
        end
      end
    end
    object tshDadosPessoais: TcxTabSheet
      Caption = 'Dados Pessoais'
      ImageIndex = 1
      object grpbxDados: TGroupBox
        Left = 0
        Top = 0
        Width = 1528
        Height = 548
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object lblNaturalidade: TLabel
          Left = 61
          Top = 23
          Width = 72
          Height = 13
          Caption = 'Naturalidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblPai: TLabel
          Left = 116
          Top = 49
          Width = 17
          Height = 13
          Caption = 'Pai'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblEstadoCivil: TLabel
          Left = 66
          Top = 101
          Width = 67
          Height = 13
          Caption = 'Estado Civil'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCEP: TLabel
          Left = 110
          Top = 231
          Width = 23
          Height = 13
          Caption = 'CEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 98
          Top = 179
          Width = 35
          Height = 13
          Caption = 'Bairro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblUF: TLabel
          Left = 514
          Top = 23
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object lblMae: TLabel
          Left = 110
          Top = 75
          Width = 23
          Height = 13
          Caption = 'M'#227'e'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblConjuge: TLabel
          Left = 85
          Top = 127
          Width = 48
          Height = 13
          Caption = 'C'#244'njuge'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblEndereco: TLabel
          Left = 80
          Top = 153
          Width = 53
          Height = 13
          Caption = 'Endere'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 93
          Top = 205
          Width = 40
          Height = 13
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblUFEndereco: TLabel
          Left = 512
          Top = 202
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object lblGrauInstrucao: TLabel
          Left = 30
          Top = 257
          Width = 104
          Height = 13
          Caption = 'Grau de Instru'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCurso: TLabel
          Left = 326
          Top = 257
          Width = 34
          Height = 13
          Caption = 'Curso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblTipoSanguineo: TLabel
          Left = 438
          Top = 101
          Width = 88
          Height = 13
          Caption = 'Tipo Sang'#252#237'neo'
        end
        object lblEmail: TLabel
          Left = 323
          Top = 231
          Width = 36
          Height = 13
          Caption = 'E-mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object edtNaturalidade: TcxTextEdit
          Left = 141
          Top = 19
          TabOrder = 0
          Text = 'edtNaturalidade'
          Width = 200
        end
        object cbxNatural_UF: TcxComboBox
          Left = 536
          Top = 19
          TabOrder = 1
          Text = 'cbxNatural_UF'
          Width = 63
        end
        object cbxTipoSanguineo: TcxComboBox
          Left = 534
          Top = 97
          Properties.Items.Strings = (
            'A+'
            'A-'
            'B+'
            'B-'
            'AB+'
            'AB-'
            'O+'
            'O-')
          TabOrder = 5
          Text = 'cbxTipoSanguineo'
          Width = 65
        end
        object cbxEnderecoUF: TcxComboBox
          Left = 534
          Top = 198
          TabOrder = 10
          Text = 'cbxEnderecoUF'
          Width = 65
        end
        object edtPai: TcxTextEdit
          Left = 141
          Top = 45
          TabOrder = 2
          Text = 'edtPai'
          Width = 458
        end
        object edtMae: TcxTextEdit
          Left = 141
          Top = 71
          TabOrder = 3
          Text = 'edtMae'
          Width = 458
        end
        object edtConjuge: TcxTextEdit
          Left = 141
          Top = 123
          TabOrder = 6
          Text = 'edtConjuge'
          Width = 458
        end
        object edtEndereco: TcxTextEdit
          Left = 141
          Top = 149
          TabOrder = 7
          Text = 'edtEndereco'
          Width = 458
        end
        object edtBairro: TcxTextEdit
          Left = 141
          Top = 175
          TabOrder = 8
          Text = 'edtBairro'
          Width = 200
        end
        object edtCidade: TcxTextEdit
          Left = 141
          Top = 201
          TabOrder = 9
          Text = 'edtCidade'
          Width = 200
        end
        object edtCEP: TcxTextEdit
          Left = 141
          Top = 227
          TabOrder = 11
          Text = 'edtCEP'
          Width = 80
        end
        object edtEmail: TcxTextEdit
          Left = 367
          Top = 227
          TabOrder = 12
          Text = 'edtEmail'
          Width = 232
        end
        object cbxGrauInstrucao: TcxComboBox
          Left = 141
          Top = 253
          Properties.Items.Strings = (
            '1'#186' GRAU COMPLETO'
            '1'#186' GRAU INCOMPLETO'
            '2'#186' GRAU COMPLETO'
            '2'#186' GRAU INCOMPLETO'
            '3'#186' GRAU COMPLETO'
            '3'#186' GRAU INCOMPLETO'
            'NAO INFORMADO       ')
          TabOrder = 13
          Text = 'cbxGrauInstrucao'
          Width = 162
        end
        object lkpEstadoCivil: TcxLookupComboBox
          Left = 141
          Top = 97
          Properties.KeyFieldNames = 'idEstadoCivil'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          TabOrder = 4
          Width = 145
        end
        object lkpCurso: TcxLookupComboBox
          Left = 367
          Top = 253
          Properties.KeyFieldNames = 'idCurso'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          TabOrder = 14
          Width = 232
        end
      end
    end
    object tshDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 2
      object grpbxDocum: TGroupBox
        Left = 0
        Top = 0
        Width = 1528
        Height = 548
        Align = alClient
        TabOrder = 0
        object lblRG: TLabel
          Left = 85
          Top = 20
          Width = 17
          Height = 13
          Caption = 'RG'
        end
        object lblTitulo: TLabel
          Left = 13
          Top = 45
          Width = 89
          Height = 13
          Caption = 'T'#237'tulo de eleitor'
        end
        object lblCI_UF: TLabel
          Left = 481
          Top = 20
          Width = 63
          Height = 13
          Caption = #211'rg'#227'o/SSP'
        end
        object lblCI_Emissao: TLabel
          Left = 252
          Top = 20
          Width = 69
          Height = 13
          Caption = 'RG/Emiss'#227'o'
        end
        object lblZona: TLabel
          Left = 292
          Top = 45
          Width = 29
          Height = 13
          Caption = 'Zona'
        end
        object lblSecao: TLabel
          Left = 509
          Top = 46
          Width = 35
          Height = 13
          Caption = 'Se'#231#227'o'
        end
        object lblTE_UF: TLabel
          Left = 61
          Top = 70
          Width = 41
          Height = 13
          Caption = 'TE - UF'
        end
        object lblTE_Emissao: TLabel
          Left = 247
          Top = 70
          Width = 74
          Height = 13
          Caption = 'TE - Emiss'#227'o'
        end
        object lblPis_Pasep: TLabel
          Left = 40
          Top = 95
          Width = 62
          Height = 13
          Caption = 'PIS/PASEP'
        end
        object lblBanco: TLabel
          Left = 66
          Top = 119
          Width = 35
          Height = 13
          Caption = 'Banco'
        end
        object lblAgencia: TLabel
          Left = 57
          Top = 148
          Width = 45
          Height = 13
          Caption = 'Ag'#234'ncia'
        end
        object lblConta: TLabel
          Left = 286
          Top = 148
          Width = 34
          Height = 13
          Caption = 'Conta'
        end
        object lblOAB: TLabel
          Left = 77
          Top = 173
          Width = 25
          Height = 13
          Caption = 'OAB'
        end
        object lblOAB_Secao: TLabel
          Left = 285
          Top = 174
          Width = 35
          Height = 13
          Caption = 'Se'#231#227'o'
        end
        object edtCI_Num: TcxTextEdit
          Left = 109
          Top = 16
          TabOrder = 0
          Text = 'edtCI_Num'
          Width = 121
        end
        object cbxCI_UF: TcxComboBox
          Left = 552
          Top = 16
          TabOrder = 2
          Text = 'cbxCI_UF'
          Width = 65
        end
        object cbxTE_UF: TcxComboBox
          Left = 109
          Top = 66
          TabOrder = 6
          Text = 'cbxTE_UF'
          Width = 121
        end
        object edtTE_Num: TcxTextEdit
          Left = 109
          Top = 41
          TabOrder = 3
          Text = 'edtTE_Num'
          Width = 121
        end
        object edtTE_Zona: TcxTextEdit
          Left = 328
          Top = 41
          TabOrder = 4
          Text = 'edtTE_Zona'
          Width = 121
        end
        object edtTE_Secao: TcxTextEdit
          Left = 552
          Top = 42
          TabOrder = 5
          Text = 'edtTE_Secao'
          Width = 121
        end
        object edtPis_Pasep: TcxTextEdit
          Left = 109
          Top = 91
          TabOrder = 8
          Text = 'edtPis_Pasep'
          Width = 121
        end
        object edtAgencia: TcxTextEdit
          Left = 109
          Top = 144
          TabOrder = 10
          Text = 'edtAgencia'
          Width = 80
        end
        object edtConta: TcxTextEdit
          Left = 328
          Top = 144
          TabOrder = 11
          Text = 'edtConta'
          Width = 121
        end
        object edtOAB_Num: TcxTextEdit
          Left = 109
          Top = 170
          TabOrder = 12
          Text = 'edtOAB_Num'
          Width = 121
        end
        object edtOAB_Secao: TcxTextEdit
          Left = 328
          Top = 170
          TabOrder = 13
          Text = 'edtOAB_Secao'
          Width = 121
        end
        object lkpBanco: TcxLookupComboBox
          Left = 109
          Top = 116
          Enabled = False
          Properties.KeyFieldNames = 'idBanco'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          TabOrder = 9
          Width = 340
        end
        object edtTE_Emissao: TcxDateEdit
          Left = 328
          Top = 66
          TabOrder = 7
          Width = 121
        end
        object edtCI_Emissao: TcxDateEdit
          Left = 328
          Top = 16
          TabOrder = 1
          Width = 121
        end
      end
    end
    object tshTelefones: TcxTabSheet
      Caption = 'Telefones'
      Enabled = False
      ImageIndex = 3
      object grpbxTelefone: TGroupBox
        Left = 0
        Top = 0
        Width = 1528
        Height = 89
        Align = alTop
        TabOrder = 0
        object lblTipo: TLabel
          Left = 77
          Top = 42
          Width = 24
          Height = 13
          HelpContext = 11
          Caption = 'Tipo'
        end
        object btnSelTipoTelefone: TSpeedButton
          Left = 145
          Top = 38
          Width = 19
          Height = 20
          Caption = '...'
          Enabled = False
        end
        object txtDesc_TipoTel: TDBText
          Left = 171
          Top = 42
          Width = 78
          Height = 13
          AutoSize = True
          DataField = 'Descricao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblNumero: TLabel
          Left = 56
          Top = 16
          Width = 45
          Height = 13
          Caption = 'N'#250'mero'
        end
        object btnGravarTel: TSpeedButton
          Left = 306
          Top = 17
          Width = 36
          Height = 36
          Hint = 'Grava um novo telefone'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            66030000424D6603000000000000360000002800000010000000110000000100
            18000000000030030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000007F7F7F0000007F7F
            7F7F7F7F000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBF000000000000BFBFBF000000BFBFBFBFBFBF000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBFBFBFBFBFBF
            BFBFBFBF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000000000FFFFFF000000000000FFFFFF000000000000BF
            BFBF000000FF0000FF0000FF00000000FFFF0000FF0000000000000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF0000FF0000
            FF0000FFBFBFBFBFBFBF000000FFFFFF000000000000000000000000FFFFFF00
            0000FFFFFF0000000000FF0000FF0000FF0000FF0000FFBFBFBF000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF000000FFFFFF000000000000FFFFFF00000000000000
            0000000000000000BFBFBF0000FF0000FF0000FFBFBFBFBFBFBF000000FFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000BFBFBFBFBFBF0000FF0000
            FF0000FFBFBFBFBFBFBF000000FFFFFF000000BFBFBFFFFFFF000000FFFFFF00
            0000BFBFBFBFBFBF7F7F7F0000FF0000FF0000FFBFBFBFBFBFBF000000FFFFFF
            FFFFFFFFFFFFFFFFFF000000000000BFBFBF0000FF0000FF0000FF0000FF0000
            FFBFBFBFBFBFBFBFBFBF000000000000000000000000000000000000BFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object btnExcluir: TSpeedButton
          Left = 414
          Top = 17
          Width = 36
          Height = 36
          Hint = 'Exclui um telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            C6050000424DC605000000000000360400002800000014000000140000000100
            0800000000009001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFD495252
            5B9BA4A45B52524A49494AFDFDFDFDFDFDFDF707F6FFFFFF0807A45B4952FDFD
            FDFDFDFDFDFD5BF707F6FFF607F79B520049FDFDFDFDFDFDFDFD9BF707F6F607
            A4A49B520049FDFDFDFDFDFDFDFD9BF707AD5B52000013530049FDFDFDFDFDFD
            FDFD9BF7FBBFA452000A2F2F0049FDFDFDFDFDFDFDFD9B77FBBF0752005C2F27
            1449FDFDFDFDFDFDFDFD9B37FBBFF66D032E2F272748FDFDFDFDFDFDFDFD9B25
            37B6F6641B2F1D1D1D49FDFDFDFDFDFDFDFDA4000A52AD7F370A00000052FDFD
            FDFDFDFDFDFDA400495B9B3F370000000052FDFDFDFDFDFDFDFD9BF70052F7FB
            FB1300000049FDFDFDFDFDFDFDFD9BF79B5BF6FBFB2E00490049FDFDFDFDFDFD
            FDFD9BF70707FFBF7F6E5B520049FDFDFDFDFDFDFDFDA30708FFFFFF07F7A452
            0052FDFDFDFDFDFDFD00000049525B5B52494900004949FDFDFDFDFDFD4A9BF7
            07F6F6FFA4F79B52004A52FDFDFDFDFDFDFDA40708F6F6F60707A49B5B52FDFD
            FDFDFDFDFDFDFDFDFD5B07FFF6F752FDFDFDFDFDFDFDFDFDFDFDFDFDFDFD0052
            4900FDFDFDFDFDFDFDFD}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object btnEditarTel: TSpeedButton
          Left = 342
          Top = 17
          Width = 36
          Height = 36
          Hint = 'Altera um telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object btnInserirTel: TSpeedButton
          Left = 270
          Top = 17
          Width = 36
          Height = 36
          Hint = 'Novo telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333B3333333B333333
            B33333333B333333B33333333BB33888BB8888BB3333333333B00000000000B3
            333333333330FFFFFFFFF083333333333330FFFFFFFFF083333333333330FFFF
            FFFFF083333333333330FFFFFFFFF083333333333330FFFFFFFFF08333333333
            3BB0FFFFFFFFF0833333333BB330FFFFFFFFF0BB333333333330FFFFFF777033
            BB3333333330FFFFF0000033333333333330FFFFF0FF0333333333333330FFFF
            F0F0B333333333333330FFFFF003BB333333333333B0000000333BB333333333
            3BB33333BB3333BB33333333B3333333B3333333B33333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object btnCancelarTel: TSpeedButton
          Left = 378
          Top = 17
          Width = 36
          Height = 36
          Hint = 'Desfaz as altera'#231#245'es'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object edtTipoTel: TDBEdit
          Left = 111
          Top = 39
          Width = 34
          Height = 19
          Ctl3D = False
          DataField = 'idtelefone'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtNumero: TDBEdit
          Left = 111
          Top = 14
          Width = 106
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'numero'
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object SplitterDocumentos: TcxSplitter
        Left = 0
        Top = 89
        Width = 8
        Height = 8
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salTop
        Control = grpbxTelefone
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 97
        Width = 1528
        Height = 451
        Align = alClient
        TabOrder = 2
        object cxGrid4DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = frmReadServidor.dsTelefonesServidor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid4DBTableView1Column1: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'Numero'
            Width = 100
          end
          object cxGrid4DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Width = 250
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
    end
    object tshFuncoes: TcxTabSheet
      Caption = 'Fun'#231#245'es'
      ImageIndex = 6
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Fun'#231#227'o atual'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 201
        Width = 1528
        object txtidFuncao: TDBText
          Left = 805
          Top = 48
          Width = 65
          Height = 13
          AutoSize = True
          DataField = 'idFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtFuncao: TDBText
          Left = 40
          Top = 20
          Width = 767
          Height = 23
          DataField = 'descricaoFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 33
          Top = 69
          Width = 120
          Height = 13
          Caption = 'Nomea'#231#227'o na fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDtNomeacaoFuncao: TDBText
          Left = 169
          Top = 69
          Width = 128
          Height = 13
          AutoSize = True
          DataField = 'Dt_NomeacaoFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_PosseFuncao: TLabel
          Left = 60
          Top = 91
          Width = 93
          Height = 13
          Caption = 'Posse na fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDtDeslig_Funcao: TLabel
          Left = 15
          Top = 113
          Width = 138
          Height = 13
          Caption = 'Desligamento da fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDtDesligFuncao: TDBText
          Left = 169
          Top = 113
          Width = 103
          Height = 13
          AutoSize = True
          DataField = 'Dt_Deslig_Funcao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 349
          Top = 91
          Width = 111
          Height = 13
          Caption = 'Exerc'#237'cio na fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDtExercicioFuncao: TDBText
          Left = 549
          Top = 91
          Width = 119
          Height = 13
          AutoSize = True
          DataField = 'Dt_ExercicioFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_NomeacaoFuncaoDODF: TLabel
          Left = 349
          Top = 69
          Width = 167
          Height = 13
          Caption = 'Nomea'#231#227'o na fun'#231#227'o (DODF)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDtNomeacaFuncaoDODF: TDBText
          Left = 549
          Top = 69
          Width = 154
          Height = 13
          AutoSize = True
          DataField = 'Dt_NomeacaoFuncaoDODF'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDtPosseFuncao: TDBText
          Left = 169
          Top = 91
          Width = 101
          Height = 13
          AutoSize = True
          DataField = 'Dt_PosseFuncao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 349
          Top = 113
          Width = 185
          Height = 13
          Caption = 'Desligamento da fun'#231#227'o (DODF)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDtDesligFuncaoDODF: TDBText
          Left = 549
          Top = 113
          Width = 136
          Height = 13
          AutoSize = True
          DataField = 'Dt_Deslig_FuncaoDODF'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDFG: TDBText
          Left = 170
          Top = 48
          Width = 39
          Height = 13
          AutoSize = True
          DataField = 'SimboloDFG'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtIdFun: TDBText
          Left = 885
          Top = 48
          Width = 47
          Height = 13
          AutoSize = True
          DataField = 'idFun'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 105
          Top = 48
          Width = 46
          Height = 13
          Caption = 'S'#237'mbolo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object btnDesligarFuncao: TcxButton
          Left = 125
          Top = 149
          Width = 139
          Height = 35
          Caption = 'Desligar da fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnDesligarFuncaoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000DD000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000DB0000
            00000000000000000000000000000000000000000080000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF00000080000000000000
            0000000000000000000000000000000000000000006E000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF0000006D000000000000
            00000000000000000000000000000000000000000035000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF00000033000000000000
            00000000000000000000000000000000000000000000000000B2000000FF0000
            00FF000000FF000000FF000000FF000000FF000000B000000000000000000000
            000000000000000000000000000000000000000000000000000E000000B10000
            00FF000000FF000000FF000000FF000000B00000000E00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            009F000000C9000000C90000009E000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            009E00000075000000760000009E000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000E000000AF0000
            00CB0000001600000016000000CB000000AE0000000D00000000000000000000
            00000000000000000000000000000000000000000000000000B10000009A0000
            00050000000000000000000000060000009C000000AF00000000000000000000
            00000000000000000000000000000000000000000034000000DC000000040000
            000000000000000000000000000000000004000000DD00000032000000000000
            0000000000000000000000000000000000000000006E00000091000000000000
            000000000000000000000000000000000000000000920000006D000000000000
            0000000000000000000000000000000000000000008000000080000000000000
            0000000000000000000000000000000000000000008000000080000000000000
            0000000000000000000000000000000000DA000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000DB0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
        object btnNovaFuncao: TcxButton
          Left = 10
          Top = 149
          Width = 110
          Height = 35
          Caption = 'Nova fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnNovaFuncaoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000000000000000000000000000000000000000FF0000FF
            0000FF000000000000000000000000000049000000E3000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
            0000000000000000000000000000000000E30000003C00000000000000000000
            000000000000000000000000000000000000000000000000003D000000E20000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            00000000000000000000000000010000005B0000008800000088000000AE0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            000000000000000000000000005C000000FF000000FF000000DF000000200000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000080000000FF000000E100000022000000000000
            0000000000000000000000000000000000E30000003A00000000000000000000
            0000000000000000000000000080000000E10000002200000000000000000000
            00000000000000000000000000000000004B000000E4000000FF000000FF0000
            00FF000000FF000000FF000000B1000000220000000000000000000000000000
            000000000000}
        end
        object Button1: TButton
          Left = 816
          Top = 104
          Width = 100
          Height = 25
          Caption = 'Exibir hist'#243'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = Button1Click
        end
        object btnEditarHistorico: TcxButton
          Left = 504
          Top = 149
          Width = 184
          Height = 35
          Caption = 'Editar registro do hist'#243'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnEditarHistoricoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000070000006D0000
            00C8000000F7000000F6000000C70000006C0000000700000000000000000000
            0000000000000000000000000000000000000000001B000000D0000000B20000
            003E000000110000000A00000047000000BB000000D00000001A000000000000
            000000000000000000000000000000000007000000D100000075000000000000
            00000000000000000000000000000000000100000082000000CF000000070000
            00000000000000000000000000000000006F000000B600000000000000000000
            00000000000000000000000000000000000000000001000000B70000006C0000
            0000000000000000000000000000000000CA0000004000000000000000000000
            0000000000000000000000000000000000000000000000000043000000C80000
            0000000000000000000000000000000000F60000000F00000000000000000000
            0000000000000000000000000000000000000000000000000012000000F30000
            0000000000000000000000000000000000F60000001300000000000000000000
            000000000000000000000000000000000000000000000000000A000000F40000
            0000000000000000000000000000000000C90000004500000000000000000000
            0000000000000000000000000000000000000000000000000040000000C80000
            00000000000000000000000000000000006E000000B500000000000000000000
            000000000000000000000000000000000000000000000000004D000000590000
            000000000000000000000000000000000007000000D10000007A000000000000
            0000000000000000008000000004000000000000000000000000000000000000
            0000000000000000000000000000000000000000001D000000D1000000B60000
            003C0000000A000000FF000000BB000000110000000000000000000000000000
            0000000000000000000000000000000000000000000000000007000000700000
            00CA000000F5000000FF000000FF000000AC0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000FF000000BB000000110000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000008100000004000000000000000000000000000000000000
            000000000000}
        end
        object btnExcluirFuncao: TcxButton
          Left = 386
          Top = 149
          Width = 113
          Height = 35
          Caption = 'Excluir fun'#231#227'o'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnExcluirFuncaoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000003C000000D7000000FF0000
            00FF000000FF000000D70000003C000000000000000000000000000000000000
            000000000000000000000000000000000040000000E900000048000000000000
            00000000000000000089000000F4000000400000000000000000000000000000
            0000000000000000000000000040000000E90000004000000000000000000000
            000000000052000000E700000069000000E90000004000000000000000000000
            0000000000000000001B000000E8000000400000000000000000000000000000
            0052000000E7000000300000000000000040000000E900000040000000000000
            00000000000000000054000000AC000000000000000000000000000000520000
            00E70000003000000000000000000000000000000040000000E9000000400000
            0000000000000000001B000000E8000000400000000000000052000000E70000
            0030000000000000000000000000000000000000000000000040000000E90000
            0040000000000000000000000040000000E900000081000000E7000000300000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000040000000F400000069000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00AD0000005400000000000000000000000000000040000000E9000000400000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000000000000000000003C000000E90000
            004200000000000000000000000000000000000000000000003C000000E90000
            00420000000000000000000000000000000000000000000000000000003C0000
            00E9000000420000000000000000000000000000003C000000E9000000420000
            0000000000000000000000000000000000000000000000000000000000000000
            003C000000E900000042000000000000003C000000E900000042000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000040000000E8000000AC000000E80000004000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000001C000000540000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
        object btnEditarFuncao: TcxButton
          Left = 269
          Top = 149
          Width = 112
          Height = 35
          Caption = 'Editar fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btnEditarFuncaoClick
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
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 201
        Align = alClient
        Caption = 'Hist'#243'rico de fun'#231#245'es'
        TabOrder = 1
        Height = 347
        Width = 1528
        object grdHistoricoFuncoes: TcxGrid
          Left = 2
          Top = 145
          Width = 1524
          Height = 200
          Align = alClient
          TabOrder = 0
          object tbvHistoricoFuncoes: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = frmReadServidor.dsHistoricoFuncoes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object grdColHistoricoFuncaoDescricao: TcxGridDBColumn
              Caption = 'Fun'#231#227'o'
              DataBinding.FieldName = 'Descricao'
              Width = 400
            end
            object tbvHistoricoFuncoesColumn1: TcxGridDBColumn
              Caption = 'S'#237'mbolo'
              DataBinding.FieldName = 'idDFG'
              Width = 70
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Nomea'#231#227'o'
              DataBinding.FieldName = 'dt_NomeacaoFuncao'
              Width = 100
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = 'Posse'
              DataBinding.FieldName = 'dt_PosseFuncao'
              Width = 100
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = 'Exerc'#237'cio'
              DataBinding.FieldName = 'dt_ExercicioFuncao'
              Width = 100
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = 'Desligamento'
              DataBinding.FieldName = 'dt_Deslig_Funcao'
              Width = 100
            end
            object tbvHistoricoFuncoesColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
            end
            object tbvHistoricoFuncoesColumn3: TcxGridDBColumn
              Caption = 'Observa'#231#245'es'
              DataBinding.FieldName = 'Observacao'
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = tbvHistoricoFuncoes
          end
        end
        object Panel1: TPanel
          Left = 2
          Top = 18
          Width = 1524
          Height = 127
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object txtIdFuncaoHistorico: TDBText
            Left = 685
            Top = 34
            Width = 116
            Height = 13
            AutoSize = True
            DataField = 'idFuncao'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object txtDescricaoFuncaoHistorico: TDBText
            Left = 40
            Top = 5
            Width = 230
            Height = 18
            AutoSize = True
            DataField = 'descricaoFuncao'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 33
            Top = 55
            Width = 120
            Height = 13
            Caption = 'Nomea'#231#227'o na fun'#231#227'o'
          end
          object txtDt_NomeacaoFuncaoHistorico: TDBText
            Left = 169
            Top = 55
            Width = 184
            Height = 13
            AutoSize = True
            DataField = 'Dt_NomeacaoFuncao'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 60
            Top = 76
            Width = 93
            Height = 13
            Caption = 'Posse na fun'#231#227'o'
          end
          object Label24: TLabel
            Left = 15
            Top = 97
            Width = 138
            Height = 13
            Caption = 'Desligamento da fun'#231#227'o'
          end
          object txtDt_Deslig_FuncaoHistorico: TDBText
            Left = 169
            Top = 97
            Width = 166
            Height = 13
            AutoSize = True
            DataField = 'Dt_Deslig_Funcao'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 349
            Top = 76
            Width = 111
            Height = 13
            Caption = 'Exerc'#237'cio na fun'#231#227'o'
          end
          object txtDt_ExercicioFuncaoHistorico: TDBText
            Left = 549
            Top = 76
            Width = 175
            Height = 13
            AutoSize = True
            DataField = 'Dt_ExercicioFuncao'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 349
            Top = 55
            Width = 167
            Height = 13
            Caption = 'Nomea'#231#227'o na fun'#231#227'o (DODF)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtDt_NomeacaoFuncaoDODFHistorico: TDBText
            Left = 549
            Top = 55
            Width = 217
            Height = 13
            AutoSize = True
            DataField = 'Dt_NomeacaoFuncaoDODF'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtDt_PosseFuncaoHistorico: TDBText
            Left = 169
            Top = 76
            Width = 157
            Height = 13
            AutoSize = True
            DataField = 'Dt_PosseFuncao'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 349
            Top = 97
            Width = 185
            Height = 13
            Caption = 'Desligamento da fun'#231#227'o (DODF)'
          end
          object txtDt_Deslig_FuncaoDODFHistorico: TDBText
            Left = 549
            Top = 97
            Width = 199
            Height = 13
            AutoSize = True
            DataField = 'Dt_Deslig_FuncaoDODF'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtDFGHistorico: TDBText
            Left = 169
            Top = 34
            Width = 88
            Height = 13
            AutoSize = True
            DataField = 'SimboloDFG'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 831
            Top = 55
            Width = 14
            Height = 13
            Caption = 'ID'
          end
          object txtIDHistorico: TDBText
            Left = 857
            Top = 55
            Width = 78
            Height = 13
            AutoSize = True
            DataField = 'ID'
            DataSource = frmReadServidor.dsHistoricoFuncoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 105
            Top = 34
            Width = 46
            Height = 13
            Caption = 'S'#237'mbolo'
          end
        end
        object cxFontNameComboBox1: TcxFontNameComboBox
          Left = 232
          Top = 224
          TabOrder = 2
          Width = 121
        end
      end
    end
    object tshLotacoes: TcxTabSheet
      Caption = 'Lota'#231#245'es'
      ImageIndex = 8
      object cxGroupBox8: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Lota'#231#227'o atual'
        TabOrder = 0
        Height = 100
        Width = 1528
        object txtDescricaoLotacao: TDBText
          Left = 40
          Top = 20
          Width = 165
          Height = 18
          AutoSize = True
          DataField = 'descricaoLotacao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 139
          Top = 72
          Width = 55
          Height = 13
          AutoSize = True
          DataField = 'idLotacao'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object btnNovaLotacao: TcxButton
          Left = 18
          Top = 53
          Width = 110
          Height = 35
          Caption = 'Nova lota'#231#227'o'
          TabOrder = 0
          OnClick = btnNovaLotacaoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000000000000000000000000000000000000000FF0000FF
            0000FF000000000000000000000000000049000000E3000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
            0000000000000000000000000000000000E30000003C00000000000000000000
            000000000000000000000000000000000000000000000000003D000000E20000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            00000000000000000000000000010000005B0000008800000088000000AE0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            000000000000000000000000005C000000FF000000FF000000DF000000200000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000080000000FF000000E100000022000000000000
            0000000000000000000000000000000000E30000003A00000000000000000000
            0000000000000000000000000080000000E10000002200000000000000000000
            00000000000000000000000000000000004B000000E4000000FF000000FF0000
            00FF000000FF000000FF000000B1000000220000000000000000000000000000
            000000000000}
        end
      end
      object cxGroupBox11: TcxGroupBox
        Left = 0
        Top = 100
        Align = alClient
        Caption = 'Hist'#243'rico de lota'#231#245'es'
        TabOrder = 1
        Height = 448
        Width = 1528
        object cxGrid5: TcxGrid
          Left = 2
          Top = 127
          Width = 1524
          Height = 319
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView5: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = frmReadServidor.dsHistoricoLotacoes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn25: TcxGridDBColumn
              Caption = 'Lota'#231#227'o'
              DataBinding.FieldName = 'descricaoLotacao'
              Width = 500
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = 'Data de lota'#231#227'o'
              DataBinding.FieldName = 'dataLotacao'
              Width = 150
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBTableView5
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 18
          Width = 1524
          Height = 109
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object txtDescricaoLotacaoHistorico: TDBText
            Left = 40
            Top = 8
            Width = 193
            Height = 16
            AutoSize = True
            DataField = 'descricaoLotacao'
            DataSource = frmReadServidor.dsHistoricoLotacoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 40
            Top = 38
            Width = 27
            Height = 13
            Caption = 'Data'
          end
          object DBText50: TDBText
            Left = 90
            Top = 38
            Width = 55
            Height = 13
            AutoSize = True
            DataField = 'dataLotacao'
            DataSource = frmReadServidor.dsHistoricoLotacoes
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object cxButton4: TcxButton
            Left = 18
            Top = 66
            Width = 205
            Height = 35
            Caption = 'Editar registro do hist'#243'rico'
            Enabled = False
            TabOrder = 0
            OnClick = btnEditarHistoricoClick
            Glyph.Data = {
              42040000424D4204000000000000420000002800000010000000100000000100
              20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
              0000FF0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000070000006D0000
              00C8000000F7000000F6000000C70000006C0000000700000000000000000000
              0000000000000000000000000000000000000000001B000000D0000000B20000
              003E000000110000000A00000047000000BB000000D00000001A000000000000
              000000000000000000000000000000000007000000D100000075000000000000
              00000000000000000000000000000000000100000082000000CF000000070000
              00000000000000000000000000000000006F000000B600000000000000000000
              00000000000000000000000000000000000000000001000000B70000006C0000
              0000000000000000000000000000000000CA0000004000000000000000000000
              0000000000000000000000000000000000000000000000000043000000C80000
              0000000000000000000000000000000000F60000000F00000000000000000000
              0000000000000000000000000000000000000000000000000012000000F30000
              0000000000000000000000000000000000F60000001300000000000000000000
              000000000000000000000000000000000000000000000000000A000000F40000
              0000000000000000000000000000000000C90000004500000000000000000000
              0000000000000000000000000000000000000000000000000040000000C80000
              00000000000000000000000000000000006E000000B500000000000000000000
              000000000000000000000000000000000000000000000000004D000000590000
              000000000000000000000000000000000007000000D10000007A000000000000
              0000000000000000008000000004000000000000000000000000000000000000
              0000000000000000000000000000000000000000001D000000D1000000B60000
              003C0000000A000000FF000000BB000000110000000000000000000000000000
              0000000000000000000000000000000000000000000000000007000000700000
              00CA000000F5000000FF000000FF000000AC0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000FF000000BB000000110000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000008100000004000000000000000000000000000000000000
              000000000000}
          end
        end
      end
    end
    object tshExercicioExterno: TcxTabSheet
      Caption = 'Exerc'#237'cio externo'
      ImageIndex = 9
      object cxGroupBox9: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Exerc'#237'cio externo atual'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 145
        Width = 1528
        object Label29: TLabel
          Left = 15
          Top = 24
          Width = 112
          Height = 13
          Caption = #211'rg'#227'o em exerc'#237'cio'
        end
        object Label30: TLabel
          Left = 67
          Top = 54
          Width = 60
          Height = 13
          Caption = 'Nomea'#231#227'o'
        end
        object txtDtNomeacaoEE: TDBText
          Left = 145
          Top = 54
          Width = 102
          Height = 13
          AutoSize = True
          DataField = 'dt_NomeacaoExercicioExterno'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 602
          Top = 54
          Width = 47
          Height = 13
          Caption = 'T'#233'rmino'
        end
        object txtDtTerminoEE: TDBText
          Left = 662
          Top = 54
          Width = 88
          Height = 13
          AutoSize = True
          DataField = 'dt_TerminoExercicioExterno'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 448
          Top = 54
          Width = 31
          Height = 13
          Caption = 'In'#237'cio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtDtInicioEE: TDBText
          Left = 492
          Top = 54
          Width = 73
          Height = 13
          AutoSize = True
          DataField = 'dt_InicioExercicioExterno'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtOrgaoExterno: TDBText
          Left = 258
          Top = 24
          Width = 94
          Height = 13
          AutoSize = True
          DataField = 'ExercicioExterno'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 263
          Top = 54
          Width = 33
          Height = 13
          Caption = 'Posse'
        end
        object txtDtPosseEE: TDBText
          Left = 312
          Top = 54
          Width = 75
          Height = 13
          AutoSize = True
          DataField = 'dt_PosseExercicioExterno'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object txtSiglaOE: TDBText
          Left = 146
          Top = 24
          Width = 59
          Height = 13
          AutoSize = True
          DataField = 'siglaOrgaoExterno'
          DataSource = frmReadServidor.dsPesquisa
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object btnDesligarExercicioExterno: TcxButton
          Left = 141
          Top = 93
          Width = 159
          Height = 35
          Caption = 'Desligar do exerc'#237'cio'
          TabOrder = 0
          OnClick = btnDesligarExercicioExternoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000DD000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000DB0000
            00000000000000000000000000000000000000000080000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF00000080000000000000
            0000000000000000000000000000000000000000006E000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF0000006D000000000000
            00000000000000000000000000000000000000000035000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF00000033000000000000
            00000000000000000000000000000000000000000000000000B2000000FF0000
            00FF000000FF000000FF000000FF000000FF000000B000000000000000000000
            000000000000000000000000000000000000000000000000000E000000B10000
            00FF000000FF000000FF000000FF000000B00000000E00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            009F000000C9000000C90000009E000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            009E00000075000000760000009E000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000E000000AF0000
            00CB0000001600000016000000CB000000AE0000000D00000000000000000000
            00000000000000000000000000000000000000000000000000B10000009A0000
            00050000000000000000000000060000009C000000AF00000000000000000000
            00000000000000000000000000000000000000000034000000DC000000040000
            000000000000000000000000000000000004000000DD00000032000000000000
            0000000000000000000000000000000000000000006E00000091000000000000
            000000000000000000000000000000000000000000920000006D000000000000
            0000000000000000000000000000000000000000008000000080000000000000
            0000000000000000000000000000000000000000008000000080000000000000
            0000000000000000000000000000000000DA000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000DB0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
        object btnNovoExercicioExterno: TcxButton
          Left = 10
          Top = 93
          Width = 127
          Height = 35
          Caption = 'Novo exerc'#237'cio'
          TabOrder = 1
          OnClick = btnNovoExercicioExternoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000000000000000000000000000000000000000FF0000FF
            0000FF000000000000000000000000000049000000E3000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
            0000000000000000000000000000000000E30000003C00000000000000000000
            000000000000000000000000000000000000000000000000003D000000E20000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            00000000000000000000000000010000005B0000008800000088000000AE0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            000000000000000000000000005C000000FF000000FF000000DF000000200000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000080000000FF000000E100000022000000000000
            0000000000000000000000000000000000E30000003A00000000000000000000
            0000000000000000000000000080000000E10000002200000000000000000000
            00000000000000000000000000000000004B000000E4000000FF000000FF0000
            00FF000000FF000000FF000000B1000000220000000000000000000000000000
            000000000000}
        end
        object btnEditarHistoricoEE: TcxButton
          Left = 304
          Top = 93
          Width = 205
          Height = 35
          Caption = 'Editar registro do hist'#243'rico'
          TabOrder = 2
          OnClick = btnEditarHistoricoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000070000006D0000
            00C8000000F7000000F6000000C70000006C0000000700000000000000000000
            0000000000000000000000000000000000000000001B000000D0000000B20000
            003E000000110000000A00000047000000BB000000D00000001A000000000000
            000000000000000000000000000000000007000000D100000075000000000000
            00000000000000000000000000000000000100000082000000CF000000070000
            00000000000000000000000000000000006F000000B600000000000000000000
            00000000000000000000000000000000000000000001000000B70000006C0000
            0000000000000000000000000000000000CA0000004000000000000000000000
            0000000000000000000000000000000000000000000000000043000000C80000
            0000000000000000000000000000000000F60000000F00000000000000000000
            0000000000000000000000000000000000000000000000000012000000F30000
            0000000000000000000000000000000000F60000001300000000000000000000
            000000000000000000000000000000000000000000000000000A000000F40000
            0000000000000000000000000000000000C90000004500000000000000000000
            0000000000000000000000000000000000000000000000000040000000C80000
            00000000000000000000000000000000006E000000B500000000000000000000
            000000000000000000000000000000000000000000000000004D000000590000
            000000000000000000000000000000000007000000D10000007A000000000000
            0000000000000000008000000004000000000000000000000000000000000000
            0000000000000000000000000000000000000000001D000000D1000000B60000
            003C0000000A000000FF000000BB000000110000000000000000000000000000
            0000000000000000000000000000000000000000000000000007000000700000
            00CA000000F5000000FF000000FF000000AC0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000FF000000BB000000110000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000008100000004000000000000000000000000000000000000
            000000000000}
        end
      end
      object cxGroupBox10: TcxGroupBox
        Left = 0
        Top = 145
        Align = alClient
        Caption = 'Hist'#243'rico de exerc'#237'cios externos'
        TabOrder = 1
        Height = 403
        Width = 1528
        object grdFerias: TcxGrid
          Left = 2
          Top = 79
          Width = 1524
          Height = 322
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView4: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = frmReadServidor.dsHistoricoExercicioExterno
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = #211'rgao em exerc'#237'cio'
              DataBinding.FieldName = 'descricaoOrgao'
              Width = 400
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'Nomea'#231#227'o'
              DataBinding.FieldName = 'dt_Nomeacao'
              Width = 70
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = 'Posse'
              DataBinding.FieldName = 'dt_Posse'
              Width = 100
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = 'In'#237'cio'
              DataBinding.FieldName = 'dt_Inicio'
              Width = 100
            end
            object cxGridDBTableView4Column1: TcxGridDBColumn
              Caption = 'T'#233'rmino'
              DataBinding.FieldName = 'dt_Termino'
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 18
          Width = 1524
          Height = 61
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label39: TLabel
            Left = 15
            Top = 8
            Width = 112
            Height = 13
            Caption = #211'rg'#227'o em exerc'#237'cio'
          end
          object Label40: TLabel
            Left = 67
            Top = 40
            Width = 60
            Height = 13
            Caption = 'Nomea'#231#227'o'
          end
          object txtDtNomeacaoEEHis: TDBText
            Left = 146
            Top = 40
            Width = 119
            Height = 13
            AutoSize = True
            DataField = 'dt_Nomeacao'
            DataSource = frmReadServidor.dsHistoricoExercicioExterno
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 602
            Top = 40
            Width = 47
            Height = 13
            Caption = 'T'#233'rmino'
          end
          object txtDtTerminoEEHis: TDBText
            Left = 662
            Top = 40
            Width = 105
            Height = 13
            AutoSize = True
            DataField = 'dt_Termino'
            DataSource = frmReadServidor.dsHistoricoExercicioExterno
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 263
            Top = 40
            Width = 33
            Height = 13
            Caption = 'Posse'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtDtPosseEEHis: TDBText
            Left = 312
            Top = 40
            Width = 92
            Height = 13
            AutoSize = True
            DataField = 'dt_Posse'
            DataSource = frmReadServidor.dsHistoricoExercicioExterno
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtOrgaoExternoHis: TDBText
            Left = 274
            Top = 8
            Width = 111
            Height = 13
            AutoSize = True
            DataField = 'descricaoOrgao'
            DataSource = frmReadServidor.dsHistoricoExercicioExterno
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 807
            Top = 6
            Width = 14
            Height = 13
            Caption = 'ID'
          end
          object txtIDEEHis: TDBText
            Left = 833
            Top = 6
            Width = 60
            Height = 13
            AutoSize = True
            DataField = 'ID'
            DataSource = frmReadServidor.dsHistoricoExercicioExterno
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtSiglaOEHis: TDBText
            Left = 146
            Top = 8
            Width = 76
            Height = 13
            AutoSize = True
            DataField = 'siglaOrgaoExterno'
            DataSource = frmReadServidor.dsHistoricoExercicioExterno
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 448
            Top = 40
            Width = 31
            Height = 13
            Caption = 'In'#237'cio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object txtDtInicioEEHis: TDBText
            Left = 492
            Top = 40
            Width = 90
            Height = 13
            AutoSize = True
            DataField = 'dt_Inicio'
            DataSource = frmReadServidor.dsHistoricoExercicioExterno
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object tshFerias: TcxTabSheet
      Caption = 'F'#233'rias'
      ImageIndex = 5
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 61
        Align = alClient
        Caption = 'Rela'#231#227'o (ordem decrescente de exerc'#237'cio, per'#237'odo e parcela)'
        TabOrder = 0
        Height = 487
        Width = 1528
        object cxGrid6: TcxGrid
          Left = 2
          Top = 18
          Width = 1524
          Height = 467
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDBTableView6: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = frmReadServidor.dsFeriasServidor
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
              Width = 70
            end
            object tvcPeriodo: TcxGridDBColumn
              Caption = 'Per'#237'odo'
              DataBinding.FieldName = 'descricaoPeriodo'
              Width = 60
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
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBTableView6
          end
        end
      end
      object pnlBotoesFerias: TPanel
        Left = 0
        Top = 0
        Width = 1528
        Height = 61
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnIncluirFerias: TcxButton
          Left = 10
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Incluir f'#233'rias'
          TabOrder = 0
          OnClick = btnIncluirFeriasClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000000000000000000000000000000000000000FF0000FF
            0000FF000000000000000000000000000049000000E3000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
            0000000000000000000000000000000000E30000003C00000000000000000000
            000000000000000000000000000000000000000000000000003D000000E20000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            00000000000000000000000000010000005B0000008800000088000000AE0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            000000000000000000000000005C000000FF000000FF000000DF000000200000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000080000000FF000000E100000022000000000000
            0000000000000000000000000000000000E30000003A00000000000000000000
            0000000000000000000000000080000000E10000002200000000000000000000
            00000000000000000000000000000000004B000000E4000000FF000000FF0000
            00FF000000FF000000FF000000B1000000220000000000000000000000000000
            000000000000}
        end
        object btnEditarFerias: TcxButton
          Left = 135
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Editar f'#233'rias'
          TabOrder = 1
          OnClick = btnEditarFeriasClick
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
        object btnExcluirFerias: TcxButton
          Left = 260
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Excluir f'#233'rias'
          Enabled = False
          TabOrder = 2
          OnClick = btnExcluirFeriasClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000003C000000D7000000FF0000
            00FF000000FF000000D70000003C000000000000000000000000000000000000
            000000000000000000000000000000000040000000E900000048000000000000
            00000000000000000089000000F4000000400000000000000000000000000000
            0000000000000000000000000040000000E90000004000000000000000000000
            000000000052000000E700000069000000E90000004000000000000000000000
            0000000000000000001B000000E8000000400000000000000000000000000000
            0052000000E7000000300000000000000040000000E900000040000000000000
            00000000000000000054000000AC000000000000000000000000000000520000
            00E70000003000000000000000000000000000000040000000E9000000400000
            0000000000000000001B000000E8000000400000000000000052000000E70000
            0030000000000000000000000000000000000000000000000040000000E90000
            0040000000000000000000000040000000E900000081000000E7000000300000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000040000000F400000069000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00AD0000005400000000000000000000000000000040000000E9000000400000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000000000000000000003C000000E90000
            004200000000000000000000000000000000000000000000003C000000E90000
            00420000000000000000000000000000000000000000000000000000003C0000
            00E9000000420000000000000000000000000000003C000000E9000000420000
            0000000000000000000000000000000000000000000000000000000000000000
            003C000000E900000042000000000000003C000000E900000042000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000040000000E8000000AC000000E80000004000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000001C000000540000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
      end
    end
    object tshAbonos: TcxTabSheet
      Caption = 'Abono anual'
      ImageIndex = 6
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        TabOrder = 0
        Height = 65
        Width = 1528
        object btnIncluirAbono: TcxButton
          Left = 10
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Incluir abonos'
          TabOrder = 0
          OnClick = btnIncluirAbonoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000000000000000000000000000000000000000FF0000FF
            0000FF000000000000000000000000000049000000E3000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
            0000000000000000000000000000000000E30000003C00000000000000000000
            000000000000000000000000000000000000000000000000003D000000E20000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            00000000000000000000000000010000005B0000008800000088000000AE0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            000000000000000000000000005C000000FF000000FF000000DF000000200000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000080000000FF000000E100000022000000000000
            0000000000000000000000000000000000E30000003A00000000000000000000
            0000000000000000000000000080000000E10000002200000000000000000000
            00000000000000000000000000000000004B000000E4000000FF000000FF0000
            00FF000000FF000000FF000000B1000000220000000000000000000000000000
            000000000000}
        end
        object cxButton2: TcxButton
          Left = 135
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Editar abonos'
          Enabled = False
          TabOrder = 1
          OnClick = btnEditarFeriasClick
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
        object cxButton3: TcxButton
          Left = 260
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Excluir abonos'
          Enabled = False
          TabOrder = 2
          OnClick = btnExcluirFeriasClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000003C000000D7000000FF0000
            00FF000000FF000000D70000003C000000000000000000000000000000000000
            000000000000000000000000000000000040000000E900000048000000000000
            00000000000000000089000000F4000000400000000000000000000000000000
            0000000000000000000000000040000000E90000004000000000000000000000
            000000000052000000E700000069000000E90000004000000000000000000000
            0000000000000000001B000000E8000000400000000000000000000000000000
            0052000000E7000000300000000000000040000000E900000040000000000000
            00000000000000000054000000AC000000000000000000000000000000520000
            00E70000003000000000000000000000000000000040000000E9000000400000
            0000000000000000001B000000E8000000400000000000000052000000E70000
            0030000000000000000000000000000000000000000000000040000000E90000
            0040000000000000000000000040000000E900000081000000E7000000300000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000040000000F400000069000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00AD0000005400000000000000000000000000000040000000E9000000400000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000000000000000000003C000000E90000
            004200000000000000000000000000000000000000000000003C000000E90000
            00420000000000000000000000000000000000000000000000000000003C0000
            00E9000000420000000000000000000000000000003C000000E9000000420000
            0000000000000000000000000000000000000000000000000000000000000000
            003C000000E900000042000000000000003C000000E900000042000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000040000000E8000000AC000000E80000004000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000001C000000540000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 65
        Align = alClient
        TabOrder = 1
        Height = 483
        Width = 1528
        object grdAbonoAnual: TcxGrid
          Left = 2
          Top = 18
          Width = 1524
          Height = 463
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tbvAbonoAnual: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = frmReadServidor.dsAbonoServidor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Exerc'#237'cio'
              DataBinding.FieldName = 'idExercicio'
              Width = 70
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Processo SEI'
              DataBinding.FieldName = 'nProcessoSEI'
              Width = 190
            end
            object tvcDt_1: TcxGridDBColumn
              Caption = 'Primeiro dia'
              DataBinding.FieldName = 'Dt_1'
              Width = 110
            end
            object tvcDt_2: TcxGridDBColumn
              Caption = 'Segundo dia'
              DataBinding.FieldName = 'Dt_2'
              Width = 110
            end
            object tvcDt_3: TcxGridDBColumn
              Caption = 'Terceiro dia'
              DataBinding.FieldName = 'Dt_3'
              Width = 120
            end
            object tvcDt_4: TcxGridDBColumn
              Caption = 'Quarto dia'
              DataBinding.FieldName = 'Dt_4'
              Width = 120
            end
            object tvcDt_5: TcxGridDBColumn
              Caption = 'Quinto dia'
              DataBinding.FieldName = 'Dt_5'
            end
          end
          object grdFeriasLevel1: TcxGridLevel
            GridView = tbvAbonoAnual
          end
        end
      end
    end
    object tshAfastamentos: TcxTabSheet
      Caption = 'Afastamentos'
      ImageIndex = 7
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        TabOrder = 0
        Height = 65
        Width = 1528
        object btnIncluirAfastamento: TcxButton
          Left = 10
          Top = 11
          Width = 146
          Height = 35
          Caption = 'Incluir afastamento'
          TabOrder = 0
          OnClick = btnIncluirAfastamentoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000000000000000000000000000000000000000FF0000FF
            0000FF000000000000000000000000000049000000E3000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
            0000000000000000000000000000000000E30000003C00000000000000000000
            000000000000000000000000000000000000000000000000003D000000E20000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            00000000000000000000000000010000005B0000008800000088000000AE0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            000000000000000000000000005C000000FF000000FF000000DF000000200000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000080000000FF000000E100000022000000000000
            0000000000000000000000000000000000E30000003A00000000000000000000
            0000000000000000000000000080000000E10000002200000000000000000000
            00000000000000000000000000000000004B000000E4000000FF000000FF0000
            00FF000000FF000000FF000000B1000000220000000000000000000000000000
            000000000000}
        end
        object btnEditarAfastamento: TcxButton
          Left = 161
          Top = 11
          Width = 155
          Height = 35
          Caption = 'Editar afastamento'
          TabOrder = 1
          OnClick = btnEditarAfastamentoClick
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
        object btnExcluirAfastamento: TcxButton
          Left = 321
          Top = 11
          Width = 150
          Height = 35
          Caption = 'Excluir afastamento'
          Enabled = False
          TabOrder = 2
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000003C000000D7000000FF0000
            00FF000000FF000000D70000003C000000000000000000000000000000000000
            000000000000000000000000000000000040000000E900000048000000000000
            00000000000000000089000000F4000000400000000000000000000000000000
            0000000000000000000000000040000000E90000004000000000000000000000
            000000000052000000E700000069000000E90000004000000000000000000000
            0000000000000000001B000000E8000000400000000000000000000000000000
            0052000000E7000000300000000000000040000000E900000040000000000000
            00000000000000000054000000AC000000000000000000000000000000520000
            00E70000003000000000000000000000000000000040000000E9000000400000
            0000000000000000001B000000E8000000400000000000000052000000E70000
            0030000000000000000000000000000000000000000000000040000000E90000
            0040000000000000000000000040000000E900000081000000E7000000300000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000040000000F400000069000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00AD0000005400000000000000000000000000000040000000E9000000400000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000000000000000000003C000000E90000
            004200000000000000000000000000000000000000000000003C000000E90000
            00420000000000000000000000000000000000000000000000000000003C0000
            00E9000000420000000000000000000000000000003C000000E9000000420000
            0000000000000000000000000000000000000000000000000000000000000000
            003C000000E900000042000000000000003C000000E900000042000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000040000000E8000000AC000000E80000004000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000001C000000540000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
      end
      object cxGroupBox7: TcxGroupBox
        Left = 0
        Top = 65
        Align = alClient
        TabOrder = 1
        Height = 483
        Width = 1528
        object cxGrid2: TcxGrid
          Left = 2
          Top = 18
          Width = 1524
          Height = 463
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = frmReadServidor.dsAfastamentoServidor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Tipo de afastamento'
              DataBinding.FieldName = 'descricao'
              Width = 300
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'In'#237'cio'
              DataBinding.FieldName = 'dt_inicio'
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'T'#233'rmino'
              DataBinding.FieldName = 'dt_termino'
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Exerc'#237'cio'
              DataBinding.FieldName = 'idExercicio'
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = 'Processo SEI'
              DataBinding.FieldName = 'nProcessoSEI'
              Width = 150
            end
            object cxGridDBTableView2Column1: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'Observacao'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
    object tshSubstituicao: TcxTabSheet
      Caption = 'Substitui'#231#245'es'
      ImageIndex = 10
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1528
        Height = 61
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btnIncluirSubstituicao: TcxButton
          Left = 10
          Top = 11
          Width = 151
          Height = 35
          Caption = 'Incluir substitui'#231#227'o'
          TabOrder = 0
          OnClick = btnIncluirSubstituicaoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000000000000000000000000000000000000000FF0000FF
            0000FF000000000000000000000000000049000000E3000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000E2000000480000
            0000000000000000000000000000000000E30000003C00000000000000000000
            000000000000000000000000000000000000000000000000003D000000E20000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            00000000000000000000000000010000005B0000008800000088000000AE0000
            0000000000000000000000000000000000FF0000000000000000000000000000
            000000000000000000000000005C000000FF000000FF000000DF000000200000
            0000000000000000000000000000000000FF0000000000000000000000000000
            0000000000000000000000000080000000FF000000E100000022000000000000
            0000000000000000000000000000000000E30000003A00000000000000000000
            0000000000000000000000000080000000E10000002200000000000000000000
            00000000000000000000000000000000004B000000E4000000FF000000FF0000
            00FF000000FF000000FF000000B1000000220000000000000000000000000000
            000000000000}
        end
        object cxButton5: TcxButton
          Left = 167
          Top = 11
          Width = 120
          Height = 35
          TabOrder = 1
          Visible = False
          OnClick = cxButton5Click
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
        object cxButton6: TcxButton
          Left = 292
          Top = 11
          Width = 120
          Height = 35
          Enabled = False
          TabOrder = 2
          Visible = False
          OnClick = btnExcluirFeriasClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000003C000000D7000000FF0000
            00FF000000FF000000D70000003C000000000000000000000000000000000000
            000000000000000000000000000000000040000000E900000048000000000000
            00000000000000000089000000F4000000400000000000000000000000000000
            0000000000000000000000000040000000E90000004000000000000000000000
            000000000052000000E700000069000000E90000004000000000000000000000
            0000000000000000001B000000E8000000400000000000000000000000000000
            0052000000E7000000300000000000000040000000E900000040000000000000
            00000000000000000054000000AC000000000000000000000000000000520000
            00E70000003000000000000000000000000000000040000000E9000000400000
            0000000000000000001B000000E8000000400000000000000052000000E70000
            0030000000000000000000000000000000000000000000000040000000E90000
            0040000000000000000000000040000000E900000081000000E7000000300000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000040000000F400000069000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00AD0000005400000000000000000000000000000040000000E9000000400000
            0000000000000000000000000000000000000000000000000000000000400000
            00E80000001B000000000000000000000000000000000000003C000000E90000
            004200000000000000000000000000000000000000000000003C000000E90000
            00420000000000000000000000000000000000000000000000000000003C0000
            00E9000000420000000000000000000000000000003C000000E9000000420000
            0000000000000000000000000000000000000000000000000000000000000000
            003C000000E900000042000000000000003C000000E900000042000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000040000000E8000000AC000000E80000004000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000001C000000540000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
        end
      end
      object grdSubstituicoes: TcxGrid
        Left = 0
        Top = 257
        Width = 1528
        Height = 327
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object tvSubstProcurador: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = frmReadServidor.dsProcuradorSubstituido
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnSorting = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          Styles.ContentEven = frmPrincipal.cxStyle1
          object tvSubstProcuradorColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
          end
          object tvSubstProcuradorinicio: TcxGridDBColumn
            Caption = 'IN'#205'CIO'
            DataBinding.FieldName = 'dt_Inicio'
            Width = 183
          end
          object tvSubstProcuradortermino: TcxGridDBColumn
            Caption = 'T'#201'RMINO'
            DataBinding.FieldName = 'dt_Termino'
            Width = 226
          end
          object tvSubstProcuradorndias: TcxGridDBColumn
            Caption = 'N'#186' DE DIAS'
            DataBinding.FieldName = 'ndias'
            Width = 125
          end
          object tvSubstProcuradornProcessoSEI: TcxGridDBColumn
            Caption = 'N'#186' Processo SEI'
            DataBinding.FieldName = 'nProcessoSEI'
            Width = 160
          end
        end
        object lvSubstProcurador: TcxGridLevel
          GridView = tvSubstProcurador
        end
      end
      object cxGrid7: TcxGrid
        Left = 0
        Top = 61
        Width = 1528
        Height = 196
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = frmReadServidor.dsTotalDiasSubstituidos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Ano'
            Width = 136
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Total de dias'
            DataBinding.FieldName = 'TOTAL DE DIAS'
            Width = 157
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 664
    Width = 1528
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object dsControle: TDataSource
    Left = 732
    Top = 17
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 696
    Top = 16
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
end
