object frmCreateServidor: TfrmCreateServidor
  Left = -4
  Top = -4
  Width = 1544
  Height = 832
  Caption = 'Cadastro de novo'
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
  object barServidor: TStatusBar
    Left = 0
    Top = 782
    Width = 1536
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 30
      end
      item
        Width = 200
      end
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object pnlNomeMatricula: TPanel
    Left = 0
    Top = 49
    Width = 1536
    Height = 136
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object txtNome: TDBText
      Left = 122
      Top = 111
      Width = 50
      Height = 17
      AutoSize = True
      DataField = 'Nome'
      DataSource = dmCadastroServidor.dsPessoal
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCPF: TLabel
      Left = 79
      Top = 22
      Width = 30
      Height = 18
      Caption = 'CPF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblMatricula: TLabel
      Left = 304
      Top = 22
      Width = 74
      Height = 18
      Caption = 'Matr'#237'cula'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 62
      Top = 55
      Width = 47
      Height = 18
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lblNascimento: TLabel
      Left = 10
      Top = 84
      Width = 96
      Height = 18
      Caption = 'Nascimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edtCPF: TcxMaskEdit
      Left = 119
      Top = 18
      ParentFont = False
      Properties.EditMask = '000.000.000-00;0;_'
      Properties.MaxLength = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = '           '
      OnExit = edtCPFExit
      Width = 156
    end
    object edtidServidor: TcxTextEdit
      Left = 396
      Top = 18
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'edtidServidor'
      OnExit = edtidServidorExit
      OnKeyPress = edtidServidorKeyPress
      Width = 121
    end
    object edtNome: TcxTextEdit
      Left = 119
      Top = 49
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Text = 'edtNome'
      OnExit = edtNomeExit
      OnKeyPress = edtNomeKeyPress
      Width = 657
    end
    object edtDtNascimento: TcxDateEdit
      Left = 119
      Top = 80
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      OnExit = edtDtNascimentoExit
      Width = 126
    end
    object cxButton1: TcxButton
      Left = 288
      Top = 85
      Width = 200
      Height = 35
      Caption = 'Gerar ID Notifica Nupro'
      TabOrder = 4
      Visible = False
      OnClick = cxButton1Click
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
  object pgcPessoal: TcxPageControl
    Left = 0
    Top = 185
    Width = 1536
    Height = 597
    ActivePage = tshDadosFuncionais
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 597
    ClientRectRight = 1536
    ClientRectTop = 24
    object tshDadosFuncionais: TcxTabSheet
      Caption = 'Dados Funcionais'
      ImageIndex = 0
      object grpbxDadosFuncionais: TGroupBox
        Left = 0
        Top = 0
        Width = 1536
        Height = 573
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object lblCargo: TLabel
          Left = 98
          Top = 25
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
          Top = 142
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
        object btnGera_CF_Numero: TSpeedButton
          Left = 911
          Top = 247
          Width = 82
          Height = 20
          Caption = 'Gerar n'#186
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
          Top = 55
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
          Top = 285
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
          Left = 34
          Top = 170
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
          Top = 84
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
          Left = 281
          Top = 84
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
          Left = 555
          Top = 84
          Width = 96
          Height = 13
          Caption = '1'#186' Exerc'#237'cio GDF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_Nomeacao: TLabel
          Left = 6
          Top = 113
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
          Left = 281
          Top = 113
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
        object lblDt_NomeacaoFuncao: TLabel
          Left = 13
          Top = 229
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
        object lblDt_NomeacaoFuncaoDODF: TLabel
          Left = 341
          Top = 229
          Width = 214
          Height = 13
          Caption = 'Nomea'#231#227'o na fun'#231#227'o (data do DODF)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblAverbacaoGDF: TLabel
          Left = 898
          Top = 159
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
          Left = 908
          Top = 216
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
        object lblFuncao: TLabel
          Left = 93
          Top = 200
          Width = 40
          Height = 13
          Caption = 'Fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblDt_PosseFunca: TLabel
          Left = 38
          Top = 258
          Width = 95
          Height = 13
          AutoSize = False
          Caption = 'Posse na fun'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lblDt_ExercicioFuncao: TLabel
          Left = 444
          Top = 258
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
        object Label3: TLabel
          Left = 95
          Top = 313
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
          Top = 313
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
        object Label7: TLabel
          Left = 1199
          Top = 539
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
        object lbl_IDP: TLabel
          Left = 1228
          Top = 539
          Width = 7
          Height = 13
          Caption = '0'
        end
        object lbl_IDS: TLabel
          Left = 1316
          Top = 539
          Width = 7
          Height = 13
          Caption = '0'
        end
        object Label1: TLabel
          Left = 1287
          Top = 539
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
        object lblCF_Num: TLabel
          Left = 12
          Top = 347
          Width = 121
          Height = 13
          Caption = 'Carteira Funcional n'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 1383
          Top = 539
          Width = 22
          Height = 13
          Caption = 'IDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lbl_IDA: TLabel
          Left = 1412
          Top = 539
          Width = 7
          Height = 13
          Caption = '0'
        end
        object edtAverbacaoServPublico: TDBEdit
          Left = 1161
          Top = 405
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
          TabOrder = 0
          Visible = False
        end
        object chkAuxTransporte: TcxDBCheckBox
          Left = 904
          Top = 189
          Caption = 'Aux'#237'lio-transporte'
          DataBinding.DataField = 'AuxTransporte'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 1
          Visible = False
          Width = 126
        end
        object chkPessoal: TcxCheckBox
          Left = 904
          Top = 285
          Caption = 'Tabela de pessoal'
          Properties.ReadOnly = True
          TabOrder = 2
          Visible = False
          Width = 147
        end
        object chkServidor: TcxCheckBox
          Left = 904
          Top = 317
          Caption = 'Tabela de servidor'
          Properties.ReadOnly = True
          TabOrder = 3
          Visible = False
          Width = 147
        end
        object chkDados: TcxCheckBox
          Left = 904
          Top = 349
          Caption = 'Tabela de dados'
          Properties.ReadOnly = True
          TabOrder = 4
          Visible = False
          Width = 147
        end
        object chkDatas: TcxCheckBox
          Left = 905
          Top = 377
          Caption = 'Datas'
          Properties.ReadOnly = True
          TabOrder = 5
          Visible = False
          Width = 147
        end
        object lkpCargo: TcxLookupComboBox
          Left = 143
          Top = 20
          ParentFont = False
          Properties.KeyFieldNames = 'idCargo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsCargo
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          OnExit = lkpCargoExit
          Width = 548
        end
        object lkpEspecialidade: TcxLookupComboBox
          Left = 143
          Top = 49
          ParentFont = False
          Properties.KeyFieldNames = 'idEspecialidade'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsEspecialidade
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 401
        end
        object edtDt_PosseCargo: TcxDateEdit
          Left = 143
          Top = 78
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 121
        end
        object edtDt_ExercicioCargo: TcxDateEdit
          Left = 408
          Top = 78
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 121
        end
        object edtDt_PrimeiroExercicioGDF: TcxDateEdit
          Left = 672
          Top = 78
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 121
        end
        object edtDt_NomeacaoCargo: TcxDateEdit
          Left = 143
          Top = 107
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Width = 121
        end
        object edtDt_NomeacaoCargoDODF: TcxDateEdit
          Left = 408
          Top = 107
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Width = 121
        end
        object edtDt_NomeacaoFuncao: TcxDateEdit
          Left = 143
          Top = 223
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 17
          Width = 121
        end
        object edtDt_NomeacaoFuncaoDODF: TcxDateEdit
          Left = 571
          Top = 223
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 18
          Width = 121
        end
        object edtDt_PosseFuncao: TcxDateEdit
          Left = 143
          Top = 252
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 19
          Width = 121
        end
        object edtDt_ExercicioFuncao: TcxDateEdit
          Left = 571
          Top = 252
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 20
          Width = 121
        end
        object edtAverbacaoGDF: TcxDateEdit
          Left = 1003
          Top = 153
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 21
          Visible = False
          Width = 121
        end
        object lkpLotacao: TcxLookupComboBox
          Left = 143
          Top = 136
          ParentFont = False
          Properties.KeyFieldNames = 'idLotacao'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end
            item
              FieldName = 'Sigla'
            end
            item
              FieldName = 'Superlotacao'
            end>
          Properties.ListSource = dmCadastroServidor.dsLotacao
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          Width = 548
        end
        object chkRequisitado: TcxCheckBox
          Left = 591
          Top = 165
          Caption = 'Requisitado'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 14
          Width = 98
        end
        object edtOrgaoOrigem: TcxTextEdit
          Left = 143
          Top = 165
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Text = 'edtOrgaoOrigem'
          OnExit = edtOrgaoOrigemExit
          OnKeyPress = edtOrgaoOrigemKeyPress
          Width = 413
        end
        object lkpFuncao: TcxLookupComboBox
          Left = 143
          Top = 194
          ParentFont = False
          Properties.DropDownWidth = 800
          Properties.KeyFieldNames = 'idFuncao'
          Properties.ListColumns = <
            item
              Width = 500
              FieldName = 'Descricao'
            end
            item
              FieldName = 'idDFG'
            end>
          Properties.ListSource = dmCadastroServidor.dsFuncao
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 16
          Width = 548
        end
        object cbxCargaHoraria: TcxComboBox
          Left = 143
          Top = 281
          ParentFont = False
          Properties.Items.Strings = (
            '20'
            '30'
            '40')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 22
          Text = 'cbxCargaHoraria'
          Width = 80
        end
        object cbxClasse: TcxComboBox
          Left = 143
          Top = 310
          ParentFont = False
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            'E'
            'U')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 23
          Text = 'cbxClasse'
          Width = 80
        end
        object cbxPadrao: TcxComboBox
          Left = 304
          Top = 310
          ParentFont = False
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 24
          Text = 'cbxPadrao'
          Width = 80
        end
        object edtCF_Num: TcxTextEdit
          Left = 144
          Top = 339
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 25
          Text = 'edtCF_Num'
          Width = 81
        end
        object btnSelFuncao: TcxButton
          Left = 704
          Top = 193
          Width = 140
          Height = 25
          Caption = 'Pesquisar fun'#231#245'es'
          TabOrder = 26
          OnClick = btnSelFuncaoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000160000
            00CC000000B80000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000016000000D30000
            00FF000000CC0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000015000000D2000000FF0000
            00D7000000190000000000000000000000000000003B000000A6000000E30000
            00F9000000E3000000A50000003A00000015000000D2000000FF000000D70000
            001900000000000000000000000400000095000000E0000000680000001E0000
            00060000001E00000069000000E0000000E1000000FF000000D3000000160000
            0000000000000000000000000095000000B90000000D00000000000000000000
            000000000000000000000000000E000000DC000000E100000016000000000000
            0000000000000000003C000000DE0000000D0000000000000000000000000000
            00000000000000000000000000000000000E000000E00000003A000000000000
            000000000000000000A700000066000000000000000000000000000000000000
            00000000000000000000000000000000000000000069000000A5000000000000
            000000000000000000E50000001D000000000000000000000000000000000000
            0000000000000000000000000000000000000000001F000000E3000000000000
            000000000000000000F900000006000000000000000000000000000000000000
            00000000000000000000000000000000000000000007000000F8000000000000
            000000000000000000E50000001C000000000000000000000000000000000000
            0000000000000000000000000000000000000000001E000000E4000000000000
            000000000000000000A800000066000000000000000000000000000000000000
            00000000000000000000000000000000000000000068000000A6000000000000
            0000000000000000003E000000DD0000000C0000000000000000000000000000
            00000000000000000000000000000000000D000000DF0000003B000000000000
            0000000000000000000000000097000000B80000000C00000000000000000000
            000000000000000000000000000D000000B90000009500000000000000000000
            000000000000000000000000000400000097000000DE000000660000001C0000
            00050000001C00000067000000DE000000950000000400000000000000000000
            0000000000000000000000000000000000000000003D000000A8000000E50000
            00F9000000E4000000A70000003C000000000000000000000000000000000000
            000000000000}
        end
        object btnSelLotacao: TcxButton
          Left = 704
          Top = 134
          Width = 140
          Height = 25
          Caption = 'Pesquisar lota'#231#245'es'
          TabOrder = 27
          OnClick = btnSelLotacaoClick
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000160000
            00CC000000B80000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000016000000D30000
            00FF000000CC0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000015000000D2000000FF0000
            00D7000000190000000000000000000000000000003B000000A6000000E30000
            00F9000000E3000000A50000003A00000015000000D2000000FF000000D70000
            001900000000000000000000000400000095000000E0000000680000001E0000
            00060000001E00000069000000E0000000E1000000FF000000D3000000160000
            0000000000000000000000000095000000B90000000D00000000000000000000
            000000000000000000000000000E000000DC000000E100000016000000000000
            0000000000000000003C000000DE0000000D0000000000000000000000000000
            00000000000000000000000000000000000E000000E00000003A000000000000
            000000000000000000A700000066000000000000000000000000000000000000
            00000000000000000000000000000000000000000069000000A5000000000000
            000000000000000000E50000001D000000000000000000000000000000000000
            0000000000000000000000000000000000000000001F000000E3000000000000
            000000000000000000F900000006000000000000000000000000000000000000
            00000000000000000000000000000000000000000007000000F8000000000000
            000000000000000000E50000001C000000000000000000000000000000000000
            0000000000000000000000000000000000000000001E000000E4000000000000
            000000000000000000A800000066000000000000000000000000000000000000
            00000000000000000000000000000000000000000068000000A6000000000000
            0000000000000000003E000000DD0000000C0000000000000000000000000000
            00000000000000000000000000000000000D000000DF0000003B000000000000
            0000000000000000000000000097000000B80000000C00000000000000000000
            000000000000000000000000000D000000B90000009500000000000000000000
            000000000000000000000000000400000097000000DE000000660000001C0000
            00050000001C00000067000000DE000000950000000400000000000000000000
            0000000000000000000000000000000000000000003D000000A8000000E50000
            00F9000000E4000000A70000003C000000000000000000000000000000000000
            000000000000}
        end
      end
    end
    object tshDadosPessoais: TcxTabSheet
      Caption = 'Dados Pessoais'
      ImageIndex = 1
      object grpbxDados: TGroupBox
        Left = 0
        Top = 0
        Width = 1095
        Height = 402
        Align = alClient
        Caption = 'Dados'
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object lblNaturalidade: TLabel
          Left = 61
          Top = 26
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
          Top = 55
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
          Top = 113
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
          Top = 258
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
          Top = 200
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
          Top = 26
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object lblMae: TLabel
          Left = 110
          Top = 84
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
          Top = 142
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
          Top = 171
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
          Top = 229
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
          Top = 229
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object lblGrauInstrucao: TLabel
          Left = 29
          Top = 287
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
          Left = 99
          Top = 317
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
          Left = 45
          Top = 375
          Width = 88
          Height = 13
          Caption = 'Tipo Sangu'#237'neo'
        end
        object lblEmail: TLabel
          Left = 97
          Top = 347
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
          Left = 144
          Top = 20
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Text = 'edtNaturalidade'
          OnKeyPress = edtNaturalidadeKeyPress
          Width = 300
        end
        object edtPai: TcxTextEdit
          Left = 144
          Top = 49
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Text = 'edtPai'
          OnKeyPress = edtPaiKeyPress
          Width = 500
        end
        object edtMae: TcxTextEdit
          Left = 144
          Top = 78
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Text = 'edtMae'
          OnKeyPress = edtMaeKeyPress
          Width = 500
        end
        object edtConjuge: TcxTextEdit
          Left = 144
          Top = 136
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Text = 'edtConjuge'
          OnKeyPress = edtConjugeKeyPress
          Width = 500
        end
        object edtEndereco: TcxTextEdit
          Left = 144
          Top = 165
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Text = 'edtEndereco'
          OnKeyPress = edtEnderecoKeyPress
          Width = 500
        end
        object edtBairro: TcxTextEdit
          Left = 144
          Top = 194
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Text = 'edtBairro'
          OnKeyPress = edtBairroKeyPress
          Width = 300
        end
        object edtCidade: TcxTextEdit
          Left = 144
          Top = 223
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Text = 'edtCidade'
          OnKeyPress = edtCidadeKeyPress
          Width = 300
        end
        object edtEmail: TcxTextEdit
          Left = 144
          Top = 340
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          Text = 'edtEmail'
          Width = 500
        end
        object cbxNatural_UF: TcxComboBox
          Left = 536
          Top = 20
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Text = 'cbxNatural_UF'
          Width = 80
        end
        object cbxTipoSanguineo: TcxComboBox
          Left = 144
          Top = 369
          ParentFont = False
          Properties.Items.Strings = (
            'A+'
            'A-'
            'B+'
            'B-'
            'AB+'
            'AB-'
            'O+'
            'O-')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 14
          Text = 'cbxTipoSanguineo'
          Width = 80
        end
        object cbxEnderecoUF: TcxComboBox
          Left = 536
          Top = 223
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Text = 'cbxEnderecoUF'
          Width = 80
        end
        object cbxGrauInstrucao: TcxComboBox
          Left = 144
          Top = 281
          ParentFont = False
          Properties.Items.Strings = (
            '1'#186' GRAU COMPLETO'
            '1'#186' GRAU INCOMPLETO'
            '2'#186' GRAU COMPLETO'
            '2'#186' GRAU INCOMPLETO'
            '3'#186' GRAU COMPLETO'
            '3'#186' GRAU INCOMPLETO'
            'NAO INFORMADO       ')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Text = 'cbxGrauInstrucao'
          Width = 180
        end
        object lkpEstadoCivil: TcxLookupComboBox
          Left = 144
          Top = 107
          ParentFont = False
          Properties.KeyFieldNames = 'idEstadoCivil'
          Properties.ListColumns = <
            item
              FieldName = 'descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsEstadoCivil
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 300
        end
        object lkpCurso: TcxLookupComboBox
          Left = 144
          Top = 310
          ParentFont = False
          Properties.KeyFieldNames = 'Descricao'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsCurso
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Width = 400
        end
        object edtCEP: TcxMaskEdit
          Left = 144
          Top = 252
          ParentFont = False
          Properties.EditMask = '00\.000\-000;0;_'
          Properties.MaxLength = 0
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Text = '        '
          Width = 121
        end
      end
    end
    object tshDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 2
      object grpbxDocum: TGroupBox
        Left = 0
        Top = 0
        Width = 1016
        Height = 402
        Align = alClient
        TabOrder = 0
        object lblRG: TLabel
          Left = 116
          Top = 26
          Width = 17
          Height = 13
          Caption = 'RG'
        end
        object lblTitulo: TLabel
          Left = 44
          Top = 55
          Width = 89
          Height = 13
          Caption = 'T'#237'tulo de eleitor'
        end
        object lblCI_UF: TLabel
          Left = 545
          Top = 26
          Width = 63
          Height = 13
          Caption = #211'rg'#227'o/SSP'
        end
        object lblCI_Emissao: TLabel
          Left = 305
          Top = 26
          Width = 69
          Height = 13
          Caption = 'RG/Emiss'#227'o'
        end
        object lblZona: TLabel
          Left = 345
          Top = 55
          Width = 29
          Height = 13
          Caption = 'Zona'
        end
        object lblSecao: TLabel
          Left = 573
          Top = 55
          Width = 35
          Height = 13
          Caption = 'Se'#231#227'o'
        end
        object lblTE_UF: TLabel
          Left = 92
          Top = 84
          Width = 41
          Height = 13
          Caption = 'TE - UF'
        end
        object lblTE_Emissao: TLabel
          Left = 300
          Top = 84
          Width = 74
          Height = 13
          Caption = 'TE - Emiss'#227'o'
        end
        object lblPis_Pasep: TLabel
          Left = 71
          Top = 113
          Width = 62
          Height = 13
          Caption = 'PIS/PASEP'
        end
        object lblBanco: TLabel
          Left = 98
          Top = 142
          Width = 35
          Height = 13
          Caption = 'Banco'
        end
        object lblAgencia: TLabel
          Left = 88
          Top = 171
          Width = 45
          Height = 13
          Caption = 'Ag'#234'ncia'
        end
        object lblConta: TLabel
          Left = 339
          Top = 171
          Width = 34
          Height = 13
          Caption = 'Conta'
        end
        object lblOAB: TLabel
          Left = 108
          Top = 200
          Width = 25
          Height = 13
          Caption = 'OAB'
        end
        object lblOAB_Secao: TLabel
          Left = 338
          Top = 200
          Width = 35
          Height = 13
          Caption = 'Se'#231#227'o'
        end
        object edtCI_Num: TcxTextEdit
          Left = 144
          Top = 20
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Text = 'edtCI_Num'
          Width = 121
        end
        object edtCI_Emissao: TcxTextEdit
          Left = 384
          Top = 20
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Text = 'edtCI_Emissao'
          Width = 121
        end
        object edtTE_Num: TcxTextEdit
          Left = 144
          Top = 49
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Text = 'edtTE_Num'
          Width = 121
        end
        object edtTE_Zona: TcxTextEdit
          Left = 384
          Top = 49
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Text = 'edtTE_Zona'
          Width = 121
        end
        object edtPis_Pasep: TcxTextEdit
          Left = 144
          Top = 107
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Text = 'edtPis_Pasep'
          Width = 121
        end
        object edtTE_Secao: TcxTextEdit
          Left = 616
          Top = 49
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Text = 'edtTE_Secao'
          Width = 121
        end
        object edtAgencia: TcxTextEdit
          Left = 144
          Top = 165
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Text = 'edtAgencia'
          Width = 121
        end
        object edtConta: TcxTextEdit
          Left = 384
          Top = 165
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Text = 'edtConta'
          Width = 121
        end
        object edtOAB_Num: TcxTextEdit
          Left = 144
          Top = 194
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Text = 'edtOAB_Num'
          Width = 121
        end
        object edtOAB_Secao: TcxTextEdit
          Left = 384
          Top = 194
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          Text = 'edtOAB_Secao'
          Width = 121
        end
        object cbxCI_UF: TcxComboBox
          Left = 616
          Top = 20
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Text = 'cbxCI_UF'
          Width = 121
        end
        object cbxTE_UF: TcxComboBox
          Left = 144
          Top = 78
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Text = 'cbxTE_UF'
          Width = 121
        end
        object edtTE_Emissao: TcxDateEdit
          Left = 384
          Top = 78
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 121
        end
        object lkpBanco: TcxLookupComboBox
          Left = 144
          Top = 136
          ParentFont = False
          Properties.KeyFieldNames = 'idBanco'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end
            item
              FieldName = 'idBanco'
            end>
          Properties.ListSource = dmCadastroServidor.dsBanco
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 145
        end
      end
    end
    object tshTelefones: TcxTabSheet
      Caption = 'Telefones'
      ImageIndex = 3
      object grdTelefones: TcxGrid
        Left = 0
        Top = 59
        Width = 1536
        Height = 514
        Align = alClient
        TabOrder = 0
        object tbvTelefones: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsTelefonesServidor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object tbvTelefonesColumn1: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'Numero'
            Width = 100
          end
          object tbvTelefonesColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Width = 250
          end
        end
        object lvlTelefones: TcxGridLevel
          GridView = tbvTelefones
        end
      end
      object gbxCRUDTelefones: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 59
        Width = 1536
        object btnIncluirTelefone: TcxButton
          Left = 10
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Incluir telefone'
          TabOrder = 0
          OnClick = btnIncluirTelefoneClick
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
        object btnEditarTelefone: TcxButton
          Left = 145
          Top = 11
          Width = 120
          Height = 35
          Caption = 'Editar telefone'
          TabOrder = 1
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
    end
    object tshEstagio: TcxTabSheet
      Caption = 'Est'#225'gio'
      ImageIndex = 5
      object Label14: TLabel
        Left = 354
        Top = 27
        Width = 133
        Height = 13
        Caption = 'T'#233'rmino do 1'#186' contrato'
      end
      object Label18: TLabel
        Left = 10
        Top = 27
        Width = 117
        Height = 13
        Caption = 'In'#237'cio do 1'#186' contrato'
      end
      object Label45: TLabel
        Left = 9
        Top = 85
        Width = 118
        Height = 13
        Caption = 'Institui'#231#227'o de ensino'
      end
      object Label47: TLabel
        Left = 32
        Top = 113
        Width = 95
        Height = 13
        Caption = 'Turno do est'#225'gio'
      end
      object Label49: TLabel
        Left = 72
        Top = 141
        Width = 55
        Height = 13
        Caption = 'Semestre'
      end
      object Label50: TLabel
        Left = 59
        Top = 164
        Width = 68
        Height = 13
        Caption = 'Observa'#231#227'o'
      end
      object Label51: TLabel
        Left = 65
        Top = 56
        Width = 62
        Height = 13
        Caption = 'Supervisor'
      end
      object edtSupervisor_Estagiario: TcxTextEdit
        Left = 156
        Top = 50
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 500
      end
      object edtDt_InicioContrato1_Estagiario: TcxDateEdit
        Left = 156
        Top = 21
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
      object edtDt_TerminoContrato1_Estagiario: TcxDateEdit
        Left = 500
        Top = 21
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 121
      end
      object edtInstituicaoEnsino: TcxTextEdit
        Left = 156
        Top = 79
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 500
      end
      object edtTurnoEstagio: TcxTextEdit
        Left = 156
        Top = 107
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 237
      end
      object edtSemestre: TcxTextEdit
        Left = 156
        Top = 135
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 237
      end
      object mmoObservacao_Estagio: TcxMemo
        Left = 156
        Top = 164
        TabOrder = 6
        Height = 89
        Width = 501
      end
    end
    object tshAFazer: TcxTabSheet
      Caption = 'A fazer'
      ImageIndex = 4
      object cxMemo1: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          '1 - Implementar a verifica'#231#227'o do registro gravado no bot'#227'o Novo'
          
            '2 - Retirar a op'#231#227'o de limpar campos das procedures relativas a ' +
            'setarmodos (inclus'#227'o de pessoal, inclus'#227'o de servidor, '
          'altera'#231#227'o). '
          'Utilizar o limpa campos no bot'#227'o Novo.'
          '3 - Carregar o RG e o Banco em carregarDados'
          '4 - Conferir bloquearCampos')
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 573
        Width = 1536
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 1536
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object lblOperacao: TLabel
      Left = 446
      Top = 22
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
    object btnNovo: TcxButton
      Left = 2
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Novo'
      TabOrder = 0
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000C11E0000C11E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000C3000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000C300000000000000000000
        000000000000000000E200000024000000000000000000000000000000000000
        000000000000000000000000000000000025000000E200000000000000000000
        00000000000000000084000000B9000000060000000000000000000000000000
        0000000000000000000000000006000000B90000008300000000000000000000
        00000000000000000005000000AB000000D10000006000000021000000090000
        00090000002100000061000000D1000000AA0000000500000000000000000000
        00000000000000000000000000010000004B000000A8000000E0000000F50000
        00F5000000E0000000A80000004B000000000000000000000000000000DB0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000000000000A00000094000000E60000
        00E6000000940000000A0000000000000000000000DD000000FF000000FF0000
        00FF000000DB00000000000000000000000000000093000000AE0000001A0000
        001A000000AE0000009300000000000000000000000000000000000000FF0000
        000000000000000000000000000000000000000000E90000001A000000000000
        00000000001A000000E900000000000000000000000000000000000000DA0000
        000000000000000000000000000000000000000000E90000001A000000000000
        00000000001A000000E900000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000093000000AC000000180000
        0018000000AC0000009300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000A00000094000000E60000
        00E6000000940000000A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
    object btnGravar: TcxButton
      Left = 122
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
  end
  object tmrRelPersonalizado: TTimer
    Left = 1612
    Top = 18
  end
  object qryMaxID: TADOQuery
    Parameters = <>
    Left = 480
    Top = 65
  end
  object dsTelefonesServidor: TDataSource
    DataSet = qryTelefonesServidor
    Left = 558
    Top = 66
  end
  object qryTelefonesServidor: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPessoal'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  '
      'stel.Numero, stel.idTelefone'
      ',Tipo =  '
      '      CASE idTelefone  '
      '         WHEN '#39'R'#39' THEN '#39'RESIDENCIAL'#39'  '
      '         WHEN '#39'E'#39' THEN '#39'ESCRITORIO'#39'  '
      '         WHEN '#39'C'#39' THEN '#39'CELULAR'#39'  '
      '         ELSE '#39'-'#39'  '
      '      END  '
      'FROM tbServ_Telefone as stel'
      'INNER JOIN tbPessoal pes on pes.idPessoal = stel.idPessoal'
      'WHERE 1=1'
      'AND sTel.idPessoal = :idPessoal '
      'ORDER BY sTel.idTelefone desc;')
    Left = 525
    Top = 65
  end
end
