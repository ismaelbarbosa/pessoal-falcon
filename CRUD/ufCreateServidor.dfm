object frmCreateServidor: TfrmCreateServidor
  Left = 73
  Top = 122
  Width = 951
  Height = 560
  Caption = 'Inclus'#227'o de Servidor'
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
    Top = 510
    Width = 943
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 30
      end
      item
        Width = 100
      end
      item
        Width = 400
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object pnlNomeMatricula: TPanel
    Left = 0
    Top = 49
    Width = 943
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object txtNome: TDBText
      Left = 16
      Top = 6
      Width = 93
      Height = 32
      AutoSize = True
      DataField = 'Nome'
      DataSource = dmCadastroServidor.dsPessoal
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object pgcPessoal: TcxPageControl
    Left = 0
    Top = 97
    Width = 943
    Height = 413
    ActivePage = tshDadosFuncionais
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 413
    ClientRectRight = 943
    ClientRectTop = 24
    object tshDadosFuncionais: TcxTabSheet
      Caption = 'Dados Funcionais'
      ImageIndex = 0
      object grpbxDadosFuncionais: TGroupBox
        Left = 0
        Top = 0
        Width = 943
        Height = 389
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object lblMatricula: TLabel
          Left = 484
          Top = 28
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
          Left = 100
          Top = 54
          Width = 33
          Height = 13
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object lblCargo: TLabel
          Left = 98
          Top = 80
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
          Top = 184
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
          Top = 366
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
        object btnGera_CF_Numero: TSpeedButton
          Left = 223
          Top = 362
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
        end
        object lblEspecialidade: TLabel
          Left = 56
          Top = 106
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
          Top = 314
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
          Top = 210
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
          Top = 132
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
          Top = 132
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
          Top = 132
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
          Top = 158
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
          Top = 158
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
          Top = 262
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
          Top = 262
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
          Left = 466
          Top = 314
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
          Top = 339
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
          Top = 22
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
        object lblFuncao: TLabel
          Left = 93
          Top = 236
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
          Top = 288
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
          Top = 288
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
          Top = 340
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
          Top = 340
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
        object lbl_IDP: TLabel
          Left = 724
          Top = 27
          Width = 7
          Height = 13
          Caption = '0'
        end
        object lblNascimento: TLabel
          Left = 291
          Top = 28
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
        object lbl_IDS: TLabel
          Left = 796
          Top = 27
          Width = 7
          Height = 13
          Caption = '0'
        end
        object Label1: TLabel
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
          TabOrder = 20
          Visible = False
        end
        object edtCPF: TcxDBTextEdit
          Left = 141
          Top = 19
          DataBinding.DataField = 'CPF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnExit = edtCPFExit
          OnKeyPress = edtCPFKeyPress
          Width = 132
        end
        object edtidServidor: TcxDBTextEdit
          Left = 543
          Top = 24
          DataBinding.DataField = 'idServidor'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 2
          OnExit = edtidServidorExit
          Width = 121
        end
        object edtNome: TcxDBTextEdit
          Left = 141
          Top = 50
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 3
          OnExit = edtNomeExit
          OnKeyPress = edtNomeKeyPress
          Width = 458
        end
        object lkpLotacao: TcxDBLookupComboBox
          Left = 141
          Top = 180
          DataBinding.DataField = 'idLotacao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.DropDownWidth = 700
          Properties.KeyFieldNames = 'idLotacao'
          Properties.ListColumns = <
            item
              Width = 350
              FieldName = 'Descricao'
            end
            item
              Width = 150
              FieldName = 'Sigla'
            end
            item
              Width = 200
              FieldName = 'Superlotacao'
            end>
          Properties.ListSource = dmCadastroServidor.dsLotacao
          TabOrder = 11
          Width = 402
        end
        object lkpCargo: TcxDBLookupComboBox
          Left = 141
          Top = 76
          DataBinding.DataField = 'idCargo'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.KeyFieldNames = 'idCargo'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsCargo
          TabOrder = 4
          OnKeyUp = lkpCargoKeyUp
          Width = 522
        end
        object edtDt_PosseCargo: TcxDBDateEdit
          Left = 141
          Top = 128
          DataBinding.DataField = 'Dt_PosseCargo'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 6
          Width = 100
        end
        object edtDt_ExercicioCargo: TcxDBDateEdit
          Left = 367
          Top = 128
          DataBinding.DataField = 'Dt_ExercicioCargo'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 7
          Width = 100
        end
        object edtDt_PrimeiroExercicioGDF: TcxDBDateEdit
          Left = 579
          Top = 128
          DataBinding.DataField = 'Dt_PrimeiroExercicioGDF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 8
          Width = 100
        end
        object lkpEspecialidade: TcxDBLookupComboBox
          Left = 141
          Top = 102
          DataBinding.DataField = 'Especialidade'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.KeyFieldNames = 'Descricao'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsEspecialidade
          TabOrder = 5
          Width = 326
        end
        object cbxCargaHoraria: TcxDBComboBox
          Left = 141
          Top = 310
          DataBinding.DataField = 'CargaHoraria'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.Items.Strings = (
            '20'
            '30'
            '40')
          TabOrder = 19
          Width = 60
        end
        object edtOrgaoOrigem: TcxDBTextEdit
          Left = 277
          Top = 206
          DataBinding.DataField = 'OrgaoDeOrigem'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 13
          OnKeyPress = edtOrgaoOrigemKeyPress
          Width = 386
        end
        object chkRequisitado: TcxDBCheckBox
          Left = 47
          Top = 210
          Caption = 'Requisitado'
          DataBinding.DataField = 'Requisitado'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 12
          Width = 90
        end
        object edtDt_NomeacaoCargo: TcxDBDateEdit
          Left = 141
          Top = 154
          DataBinding.DataField = 'Dt_NomeacaoCargo'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 9
          Width = 100
        end
        object edtDt_NomeacaoFuncao: TcxDBDateEdit
          Left = 141
          Top = 258
          DataBinding.DataField = 'Dt_NomeacaoFuncao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 15
          Width = 100
        end
        object edtAverbacaoGDF: TcxDBDateEdit
          Left = 563
          Top = 310
          DataBinding.DataField = 'AverbacaoGDF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 21
          Visible = False
          Width = 100
        end
        object edtDt_NomeacaoCargoDODF: TcxDBDateEdit
          Left = 563
          Top = 154
          DataBinding.DataField = 'Dt_NomeacaoCargoDODF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 10
          Width = 100
        end
        object edtDt_NomeacaoFuncaoDODF: TcxDBDateEdit
          Left = 563
          Top = 258
          DataBinding.DataField = 'Dt_NomeacaoFuncaoDODF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 16
          Width = 100
        end
        object chkAuxTransporte: TcxDBCheckBox
          Left = 536
          Top = 360
          Caption = 'Aux'#237'lio-transporte'
          DataBinding.DataField = 'AuxTransporte'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 25
          Width = 126
        end
        object lkpFuncao: TcxDBLookupComboBox
          Left = 141
          Top = 232
          DataBinding.DataField = 'idFuncao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.DropDownWidth = 700
          Properties.KeyFieldNames = 'idFuncao'
          Properties.ListColumns = <
            item
              Caption = 'S'#237'mbolo'
              Width = 150
              FieldName = 'idDFG'
            end
            item
              FieldName = 'Descricao'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = dmCadastroServidor.dsFuncao
          TabOrder = 14
          OnKeyUp = lkpFuncaoKeyUp
          Width = 522
        end
        object edtDt_PosseFuncao: TcxDBDateEdit
          Left = 141
          Top = 284
          DataBinding.DataField = 'Dt_PosseFuncao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 17
          Width = 100
        end
        object edtDt_ExercicioFuncao: TcxDBDateEdit
          Left = 563
          Top = 284
          DataBinding.DataField = 'Dt_ExercicioFuncao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 18
          Width = 100
        end
        object cbxClasse: TcxDBComboBox
          Left = 141
          Top = 336
          DataBinding.DataField = 'Classe'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            'E'
            'U')
          TabOrder = 22
          Width = 73
        end
        object cbxPadrao: TcxDBComboBox
          Left = 293
          Top = 336
          DataBinding.DataField = 'Padrao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            'E'
            'U')
          TabOrder = 23
          Width = 73
        end
        object edtCF_Num: TcxDBTextEdit
          Left = 141
          Top = 362
          DataBinding.DataField = 'CF_Num'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 24
          Width = 81
        end
        object edtDtNascimento: TcxDBDateEdit
          Left = 365
          Top = 24
          DataBinding.DataField = 'DT_NASCIMENTO'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 1
          OnExit = edtDtNascimentoExit
          Width = 100
        end
        object Button3: TButton
          Left = 832
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Button3'
          TabOrder = 26
          Visible = False
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 696
          Top = 112
          Width = 121
          Height = 25
          Caption = 'SQLUpdatePessoal'
          TabOrder = 27
          Visible = False
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 696
          Top = 141
          Width = 121
          Height = 25
          Caption = 'SQLUpdateServidor'
          TabOrder = 28
          Visible = False
          OnClick = Button5Click
        end
        object chkPessoal: TcxCheckBox
          Left = 696
          Top = 216
          Caption = 'Tabela de pessoal'
          Properties.ReadOnly = True
          TabOrder = 29
          Visible = False
          Width = 147
        end
        object chkServidor: TcxCheckBox
          Left = 696
          Top = 248
          Caption = 'Tabela de servidor'
          Properties.ReadOnly = True
          TabOrder = 30
          Visible = False
          Width = 147
        end
        object chkDados: TcxCheckBox
          Left = 696
          Top = 280
          Caption = 'Tabela de dados'
          Properties.ReadOnly = True
          TabOrder = 31
          Visible = False
          Width = 147
        end
        object chkDatas: TcxCheckBox
          Left = 696
          Top = 312
          Caption = 'Datas'
          Properties.ReadOnly = True
          TabOrder = 32
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
        Width = 943
        Height = 389
        Align = alClient
        Caption = 'Dados'
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
        object edtPai: TcxDBTextEdit
          Left = 141
          Top = 45
          DataBinding.DataField = 'Pai'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 2
          OnKeyPress = edtPaiKeyPress
          Width = 458
        end
        object edtMae: TcxDBTextEdit
          Left = 141
          Top = 71
          DataBinding.DataField = 'Mae'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 3
          OnKeyPress = edtMaeKeyPress
          Width = 458
        end
        object edtConjuge: TcxDBTextEdit
          Left = 141
          Top = 123
          DataBinding.DataField = 'Conjuge'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 6
          OnKeyPress = edtConjugeKeyPress
          Width = 458
        end
        object edtEndereco: TcxDBTextEdit
          Left = 141
          Top = 149
          DataBinding.DataField = 'Endereco'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 7
          OnKeyPress = edtEnderecoKeyPress
          Width = 458
        end
        object edtBairro: TcxDBTextEdit
          Left = 141
          Top = 175
          DataBinding.DataField = 'Bairro'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 8
          OnKeyPress = edtBairroKeyPress
          Width = 200
        end
        object edtCidade: TcxDBTextEdit
          Left = 141
          Top = 201
          DataBinding.DataField = 'Cidade'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 9
          OnKeyPress = edtCidadeKeyPress
          Width = 200
        end
        object edtCEP: TcxDBTextEdit
          Left = 141
          Top = 227
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 11
          Width = 80
        end
        object edtEmail: TcxDBTextEdit
          Left = 367
          Top = 227
          DataBinding.DataField = 'Email'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 12
          Width = 232
        end
        object edtNaturalidade: TcxDBTextEdit
          Left = 141
          Top = 19
          DataBinding.DataField = 'Naturalidade'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 0
          OnKeyPress = edtNaturalidadeKeyPress
          Width = 200
        end
        object cbxEnderecoUF: TcxDBComboBox
          Left = 534
          Top = 198
          DataBinding.DataField = 'UF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 10
          OnExit = cbxEnderecoUFExit
          Width = 65
        end
        object lkpEstadoCivil: TcxDBLookupComboBox
          Left = 141
          Top = 97
          DataBinding.DataField = 'idEstadoCivil'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.KeyFieldNames = 'idEstadoCivil'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsEstadoCivil
          TabOrder = 4
          Width = 145
        end
        object cbxGrauInstrucao: TcxDBComboBox
          Left = 142
          Top = 253
          DataBinding.DataField = 'Grau'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.Items.Strings = (
            '1'#186' GRAU COMPLETO'
            '1'#186' GRAU INCOMPLETO'
            '2'#186' GRAU COMPLETO'
            '2'#186' GRAU INCOMPLETO'
            '3'#186' GRAU COMPLETO'
            '3'#186' GRAU INCOMPLETO'
            'NAO INFORMADO       ')
          TabOrder = 13
          Width = 162
        end
        object cbxTipoSanguineo: TcxDBComboBox
          Left = 534
          Top = 97
          DataBinding.DataField = 'TipoSanguineo'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
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
          Width = 65
        end
        object lkpCurso: TcxDBLookupComboBox
          Left = 368
          Top = 253
          DataBinding.DataField = 'Curso'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.KeyFieldNames = 'Descricao'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end>
          Properties.ListSource = dmCadastroServidor.dsCurso
          TabOrder = 14
          Width = 232
        end
        object cbxNatural_UF: TcxDBComboBox
          Left = 536
          Top = 19
          DataBinding.DataField = 'Natural_UF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 1
          OnExit = cbxNatural_UFExit
          Width = 63
        end
      end
    end
    object tshDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 2
      object grpbxDocum: TGroupBox
        Left = 0
        Top = 0
        Width = 943
        Height = 389
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
          Top = 71
          Width = 41
          Height = 13
          Caption = 'TE - UF'
        end
        object lblTE_Emissao: TLabel
          Left = 247
          Top = 71
          Width = 74
          Height = 13
          Caption = 'TE - Emiss'#227'o'
        end
        object lblPis_Pasep: TLabel
          Left = 40
          Top = 97
          Width = 62
          Height = 13
          Caption = 'PIS/PASEP'
        end
        object lblBanco: TLabel
          Left = 67
          Top = 123
          Width = 35
          Height = 13
          Caption = 'Banco'
        end
        object lblAgencia: TLabel
          Left = 57
          Top = 149
          Width = 45
          Height = 13
          Caption = 'Ag'#234'ncia'
        end
        object lblConta: TLabel
          Left = 286
          Top = 149
          Width = 34
          Height = 13
          Caption = 'Conta'
        end
        object lblOAB: TLabel
          Left = 77
          Top = 174
          Width = 25
          Height = 13
          Caption = 'OAB'
        end
        object lblOAB_Secao: TLabel
          Left = 285
          Top = 175
          Width = 35
          Height = 13
          Caption = 'Se'#231#227'o'
        end
        object edtCI_Num: TcxDBTextEdit
          Left = 109
          Top = 16
          DataBinding.DataField = 'CI_Num'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 0
          Width = 121
        end
        object edtTE_Num: TcxDBTextEdit
          Left = 109
          Top = 41
          DataBinding.DataField = 'TE_Num'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 3
          Width = 121
        end
        object edtTE_Zona: TcxDBTextEdit
          Left = 328
          Top = 41
          DataBinding.DataField = 'TE_Zona'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 4
          Width = 121
        end
        object edtPis_Pasep: TcxDBTextEdit
          Left = 109
          Top = 93
          DataBinding.DataField = 'Pis_Pasep'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 8
          Width = 121
        end
        object edtAgencia: TcxDBTextEdit
          Left = 109
          Top = 145
          DataBinding.DataField = 'Agencia'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 10
          Width = 80
        end
        object edtConta: TcxDBTextEdit
          Left = 328
          Top = 145
          DataBinding.DataField = 'Conta'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 11
          Width = 121
        end
        object edtOAB_Num: TcxDBTextEdit
          Left = 109
          Top = 171
          DataBinding.DataField = 'OAB_Num'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 12
          Width = 121
        end
        object edtTE_Secao: TcxDBTextEdit
          Left = 552
          Top = 42
          DataBinding.DataField = 'TE_Secao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 5
          Width = 121
        end
        object cbxCI_UF: TcxDBComboBox
          Left = 552
          Top = 16
          DataBinding.DataField = 'CI_UF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 2
          OnExit = cbxCI_UFExit
          Width = 65
        end
        object edtCI_Emissao: TcxDBDateEdit
          Left = 328
          Top = 16
          DataBinding.DataField = 'CI_Emissao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 1
          Width = 121
        end
        object edtTE_Emissao: TcxDBDateEdit
          Left = 328
          Top = 67
          DataBinding.DataField = 'TE_Emissao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 7
          Width = 121
        end
        object edtOAB_Secao: TcxDBTextEdit
          Left = 328
          Top = 171
          DataBinding.DataField = 'OAB_Secao'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 13
          Width = 121
        end
        object lkpBanco: TcxDBLookupComboBox
          Left = 109
          Top = 119
          DataBinding.DataField = 'idBanco'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          Properties.DropDownWidth = 450
          Properties.KeyFieldNames = 'idBanco'
          Properties.ListColumns = <
            item
              FieldName = 'Descricao'
            end
            item
              FieldName = 'idBanco'
            end>
          Properties.ListSource = dmCadastroServidor.dsBanco
          TabOrder = 9
          Width = 250
        end
        object cbxTE_UF: TcxDBComboBox
          Left = 109
          Top = 67
          DataBinding.DataField = 'TE_UF'
          DataBinding.DataSource = dmCadastroServidor.dsPessoal
          TabOrder = 6
          OnExit = cbxTE_UFExit
          Width = 65
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
        Width = 943
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
      object dbgrdTelefone: TDBGrid
        Left = 0
        Top = 97
        Width = 943
        Height = 292
        Align = alClient
        Color = clBtnFace
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'numero'
            Title.Caption = 'N'#250'mero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Tipo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 659
            Visible = True
          end>
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 943
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object lblOperacao: TLabel
      Left = 446
      Top = 14
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
    object Button1: TButton
      Left = 600
      Top = 9
      Width = 200
      Height = 25
      Caption = 'Executar com par'#227'metros'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 808
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
    object btnNovo: TcxButton
      Left = 2
      Top = 5
      Width = 110
      Height = 35
      Caption = '&Novo'
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
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
end
