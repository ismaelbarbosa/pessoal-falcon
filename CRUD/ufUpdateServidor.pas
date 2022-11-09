unit ufUpdateServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DBCtrls, cxControls, cxContainer, cxEdit,
  Grids, DBGrids, cxSplitter, cxCheckBox, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxMemo, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, Mask, Buttons, cxPC, cxLabel, cxDBLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, ComCtrls,
  cxFontNameComboBox;

type
  TPessoal = record
    nome, cpf, dtNascimento, idPessoal, idServidor,
    idCargo, cargo, idEspecialidade, idLotacao, lotacao,
    dtPosseCargo, dtExercicioCargo,
    dtNomeacaoCargo, dtNomeacaoCargoDODF,
    requisitado, orgaoOrigem,
    cargaHoraria, classe,
    padrao, cfNum,
    auxTransporte,
    naturalidade, naturalUF,
    pai, mae, estadoCivil,
    tipoSangue, conjuge,
    endereco, bairro, cidade, enderecoUF,
    cep, email, grauInstrucao,
    curso, ciNum, ciEmissao, ciUF,
    teNum, teZona, teSecao, teUF,
    teEmissao, pisPasep,
    banco, agencia, contaBanco,
    oabNum, oabSecao,
    Dt_InicioContrato1_Estagiario,
    Dt_TerminoContrato1_Estagiario,
    Dt_InicioContrato2_Estagiario,
    Dt_TerminoContrato2_Estagiario,
    Dt_InicioContrato3_Estagiario,
    Dt_TerminoContrato3_Estagiario,
    Dt_InicioContrato4_Estagiario,
    Dt_TerminoContrato4_Estagiario,
    Supervisor_Estagiario,
    TurnoEstagio,
    Semestre,
    InstituicaoEnsino,
    observacao
    {
    }
    : Array[0..1] of String;
end;

type
  TfrmUpdateServidor = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    btnGravarServidor: TcxButton;
    pgcPessoal: TcxPageControl;
    tshDadosFuncionais: TcxTabSheet;
    tshDadosPessoais: TcxTabSheet;
    tshDocumentos: TcxTabSheet;
    tshTelefones: TcxTabSheet;
    tshFerias: TcxTabSheet;
    gbxFerias: TcxGroupBox;
    tshFuncoes: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    grdHistoricoFuncoes: TcxGrid;
    tbvHistoricoFuncoes: TcxGridDBTableView;
    grdColHistoricoFuncaoDescricao: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    lvlHstoricoFuncoes: TcxGridLevel;
    txtidFuncao: TDBText;
    txtFuncao: TDBText;
    Label32: TLabel;
    txtDtNomeacaoFuncao: TDBText;
    lblDt_PosseFuncao: TLabel;
    lblDtDeslig_Funcao: TLabel;
    txtDtDesligFuncao: TDBText;
    Label33: TLabel;
    txtDtExercicioFuncao: TDBText;
    btnDesligarFuncao: TcxButton;
    btnNovaFuncao: TcxButton;
    tshAbonos: TcxTabSheet;
    tshAfastamentos: TcxTabSheet;
    grdTelefones: TcxGrid;
    grdTelefonesDBTableView1: TcxGridDBTableView;
    grdTelefonesDBTableView1Column1: TcxGridDBColumn;
    grdTelefonesDBTableView1Column2: TcxGridDBColumn;
    lvlTelefones: TcxGridLevel;
    gbxCRUDAbonoAnual: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    gbxCRUDAfastamento: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    grdAfastamentos: TcxGrid;
    tbvAfastamentos: TcxGridDBTableView;
    tvcTipoAfastamento: TcxGridDBColumn;
    tvcDt_inicioAfastamento: TcxGridDBColumn;
    tvcDt_TerminoAfastamento: TcxGridDBColumn;
    tvcIdExercicioAfastamento: TcxGridDBColumn;
    tvcCodigoAfastamento: TcxGridDBColumn;
    tvcProcessoSEIAfastamento: TcxGridDBColumn;
    tbvObservacaoAfastamento: TcxGridDBColumn;
    lvlAfastamentos: TcxGridLevel;
    Label2: TLabel;
    lblDt_NomeacaoFuncaoDODF: TLabel;
    txtDtNomeacaFuncaoDODF: TDBText;
    txtDtPosseFuncao: TDBText;
    Label5: TLabel;
    txtDtDesligFuncaoDODF: TDBText;
    Button1: TButton;
    txtDFG: TDBText;
    tbvHistoricoFuncoesColumn1: TcxGridDBColumn;
    tshLotacoes: TcxTabSheet;
    gbxCRUDLotacoes: TcxGroupBox;
    btnNovaLotacao: TcxButton;
    tbvHistoricoFuncoesColumn2: TcxGridDBColumn;
    Panel1: TPanel;
    txtIdFuncaoHistorico: TDBText;
    txtDescricaoFuncaoHistorico: TDBText;
    Label22: TLabel;
    txtDt_NomeacaoFuncaoHistorico: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    txtDt_Deslig_FuncaoHistorico: TDBText;
    Label25: TLabel;
    txtDt_ExercicioFuncaoHistorico: TDBText;
    Label26: TLabel;
    txtDt_NomeacaoFuncaoDODFHistorico: TDBText;
    txtDt_PosseFuncaoHistorico: TDBText;
    Label27: TLabel;
    txtDt_Deslig_FuncaoDODFHistorico: TDBText;
    txtDFGHistorico: TDBText;
    Label28: TLabel;
    txtIDHistorico: TDBText;
    tshExercicioExterno: TcxTabSheet;
    gbxCRUDExercicioExterno: TcxGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    txtDtNomeacaoEE: TDBText;
    Label35: TLabel;
    txtDtTerminoEE: TDBText;
    Label37: TLabel;
    txtDtInicioEE: TDBText;
    txtOrgaoExterno: TDBText;
    btnDesligarExercicioExterno: TcxButton;
    btnNovoExercicioExterno: TcxButton;
    gbxHistoricoExercicioExterno: TcxGroupBox;
    grdExercicioExterno: TcxGrid;
    tbvExercicioExterno: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    lvlExercicioExterno: TcxGridLevel;
    pnlHistoricoExercicioExterno: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    txtDtNomeacaoEEHis: TDBText;
    Label42: TLabel;
    txtDtTerminoEEHis: TDBText;
    Label44: TLabel;
    txtDtPosseEEHis: TDBText;
    txtOrgaoExternoHis: TDBText;
    Label46: TLabel;
    txtIDEEHis: TDBText;
    gbxHistoricoLotacoes: TcxGroupBox;
    grdHistoricoLotacoes: TcxGrid;
    tbvHistoricoLotacoes: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    lblHistoricoLotacoes: TcxGridLevel;
    pnlHistoricoLotacoes: TPanel;
    txtDescricaoLotacaoHistorico: TDBText;
    Label48: TLabel;
    DBText50: TDBText;
    cxButton4: TcxButton;
    txtDescricaoLotacao: TDBText;
    btnEditarHistoricoEE: TcxButton;
    Label15: TLabel;
    txtDtPosseEE: TDBText;
    btnEditarHistorico: TcxButton;
    tbvExercicioExternoColumn1: TcxGridDBColumn;
    txtSiglaOEHis: TDBText;
    txtSiglaOE: TDBText;
    Label16: TLabel;
    txtDtInicioEEHis: TDBText;
    btnExcluirFuncao: TcxButton;
    btnEditarFuncao: TcxButton;
    txtIdFun: TDBText;
    DBText11: TDBText;
    btnIncluirAbono: TcxButton;
    btnEditarAbono: TcxButton;
    btnExcluirAbono: TcxButton;
    grdFerias: TcxGrid;
    tbvFerias: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcPeriodo: TcxGridDBColumn;
    tvcParcela: TcxGridDBColumn;
    tvcTipoParcela: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcDt_InicioReagendamento: TcxGridDBColumn;
    tvcDt_TerminoReagendamento: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    lvlFerias: TcxGridLevel;
    grdAbonoAnual: TcxGrid;
    tbvAbonoAnual: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    tvcDt_1: TcxGridDBColumn;
    tvcDt_2: TcxGridDBColumn;
    tvcDt_3: TcxGridDBColumn;
    tvcDt_4: TcxGridDBColumn;
    tvcDt_5: TcxGridDBColumn;
    lvlAbonoAnual: TcxGridLevel;
    dsControle: TDataSource;
    StatusBar: TStatusBar;
    tshSubstituicao: TcxTabSheet;
    Panel4: TPanel;
    btnIncluirSubstituicao: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdSubstituicoes: TcxGrid;
    tbvSubstituicoes: TcxGridDBTableView;
    tbvSubstituicoesinicio: TcxGridDBColumn;
    tbvSubstituicoestermino: TcxGridDBColumn;
    tbvSubstituicoesndias: TcxGridDBColumn;
    tbvSubstituicoesnProcessoSEI: TcxGridDBColumn;
    lvlSubstituicoes: TcxGridLevel;
    grdResumoSubstituicoes: TcxGrid;
    tbvResumoSubstituicoes: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    lvlResumoSubstituicoes: TcxGridLevel;
    tbvSubstituicoesColumn1: TcxGridDBColumn;
    btnIncluirAfastamento: TcxButton;
    btnEditarAfastamento: TcxButton;
    btnExcluirAfastamento: TcxButton;
    Label7: TLabel;
    Label17: TLabel;
    cxFontNameComboBox1: TcxFontNameComboBox;
    tbvHistoricoFuncoesColumn3: TcxGridDBColumn;
    tshEstagio: TcxTabSheet;
    Button2: TButton;
    gbxDadosFuncionais: TcxGroupBox;
    Label1: TLabel;
    lblNome: TLabel;
    lblCargo: TLabel;
    lblLotacao: TLabel;
    lblCF_Num: TLabel;
    btnGera_CF_Numero: TSpeedButton;
    lblEspecialidade: TLabel;
    lblCargaHoraria: TLabel;
    lblOrgaoOrigem: TLabel;
    lblDt_PosseCargo: TLabel;
    lblDt_ExercicioCargo: TLabel;
    lblPrimeiroExercicioGDF: TLabel;
    lblDt_Nomeacao: TLabel;
    lblDt_NomeacaoDODF: TLabel;
    lblAverbacaoGDF: TLabel;
    lblAverbacaoServPublico: TLabel;
    lblCPF: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblNascimento: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    DBText4: TDBText;
    Label11: TLabel;
    DBText5: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label13: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    txtLotacao: TDBText;
    Label19: TLabel;
    lbl_IDS: TLabel;
    Label34: TLabel;
    lbl_IDP: TLabel;
    txtMatricula: TDBText;
    edtAverbacaoServPublico: TDBEdit;
    edtDt_PrimeiroExercicioGDF: TcxDBDateEdit;
    edtAverbacaoGDF: TcxDBDateEdit;
    chkAuxTransporte: TcxDBCheckBox;
    edtCF_Num: TcxDBTextEdit;
    edtNome: TcxTextEdit;
    edtCPF: TcxTextEdit;
    lkpCargo: TcxLookupComboBox;
    edtDtNascimento: TcxDateEdit;
    lkpEspecialidade: TcxLookupComboBox;
    edtidServidor: TcxTextEdit;
    edtDt_PosseCargo: TcxDateEdit;
    edtDt_ExercicioCargo: TcxDateEdit;
    edtDt_NomeacaoCargo: TcxDateEdit;
    edtDt_NomeacaoCargoDODF: TcxDateEdit;
    chkRequisitado: TcxCheckBox;
    edtOrgaoOrigem: TcxTextEdit;
    cbxCargaHoraria: TcxComboBox;
    cbxClasse: TcxComboBox;
    cbxPadrao: TcxComboBox;
    chkPessoal: TcxCheckBox;
    chkServidor: TcxCheckBox;
    chkDados: TcxCheckBox;
    chkDatas: TcxCheckBox;
    gbxDados: TcxGroupBox;
    lblNaturalidade: TLabel;
    lblPai: TLabel;
    lblEstadoCivil: TLabel;
    lblCEP: TLabel;
    lblBairro: TLabel;
    lblUF: TLabel;
    lblMae: TLabel;
    lblConjuge: TLabel;
    lblEndereco: TLabel;
    lblCidade: TLabel;
    lblUFEndereco: TLabel;
    lblGrauInstrucao: TLabel;
    lblCurso: TLabel;
    lblTipoSanguineo: TLabel;
    lblEmail: TLabel;
    edtNaturalidade: TcxTextEdit;
    cbxNatural_UF: TcxComboBox;
    cbxTipoSanguineo: TcxComboBox;
    cbxEnderecoUF: TcxComboBox;
    edtPai: TcxTextEdit;
    edtMae: TcxTextEdit;
    edtConjuge: TcxTextEdit;
    edtEndereco: TcxTextEdit;
    edtBairro: TcxTextEdit;
    edtCidade: TcxTextEdit;
    edtEmail: TcxTextEdit;
    cbxGrauInstrucao: TcxComboBox;
    lkpEstadoCivil: TcxLookupComboBox;
    lkpCurso: TcxLookupComboBox;
    gbxDocumentos: TcxGroupBox;
    lblRG: TLabel;
    lblTitulo: TLabel;
    lblCI_UF: TLabel;
    lblCI_Emissao: TLabel;
    lblZona: TLabel;
    lblSecao: TLabel;
    lblTE_UF: TLabel;
    lblTE_Emissao: TLabel;
    lblPis_Pasep: TLabel;
    lblBanco: TLabel;
    lblAgencia: TLabel;
    lblConta: TLabel;
    lblOAB: TLabel;
    lblOAB_Secao: TLabel;
    Label43: TLabel;
    edtCI_Num: TcxTextEdit;
    cbxCI_UF: TcxComboBox;
    cbxTE_UF: TcxComboBox;
    edtTE_Num: TcxTextEdit;
    edtTE_Zona: TcxTextEdit;
    edtTE_Secao: TcxTextEdit;
    edtPis_Pasep: TcxTextEdit;
    edtAgencia: TcxTextEdit;
    edtConta: TcxTextEdit;
    edtOAB_Num: TcxTextEdit;
    edtOAB_Secao: TcxTextEdit;
    lkpBanco: TcxLookupComboBox;
    edtTE_Emissao: TcxDateEdit;
    edtCI_Emissao: TcxDateEdit;
    gbxDadosEstagio: TcxGroupBox;
    Label14: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    edtSupervisor_Estagiario: TcxTextEdit;
    edtDt_InicioContrato1_Estagiario: TcxDateEdit;
    edtDt_InicioContrato2_Estagiario: TcxDateEdit;
    edtDt_InicioContrato3_Estagiario: TcxDateEdit;
    edtDt_InicioContrato4_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato1_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato2_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato3_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato4_Estagiario: TcxDateEdit;
    edtInstituicaoEnsino: TcxTextEdit;
    edtTurnoEstagio: TcxTextEdit;
    edtSemestre: TcxTextEdit;
    mmoObservacao_Estagio: TcxMemo;
    gbxCRUDFerias: TcxGroupBox;
    btnIncluirFerias: TcxButton;
    btnEditarFerias: TcxButton;
    btnExcluirFerias: TcxButton;
    gbxCRUDTelefones: TcxGroupBox;
    btnIncluirTelefone: TcxButton;
    btnEditarTelefone: TcxButton;
    edtCEP: TcxMaskEdit;
    tbvIDAfastamento: TcxGridDBColumn;
    tbvAbonoAnualColumn1: TcxGridDBColumn;
    gbxPromocaoProcurador: TcxGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    txtDt_PromocaoCategoria2: TDBText;
    txtDt_PromocaoSubProcurador: TDBText;
    Label54: TLabel;
    Label55: TLabel;
    txtAverbacaoGDF: TDBText;
    txtAverbacaoServPublico: TDBText;
    txtDt_DesligamentoCargo: TDBText;
    Label56: TLabel;
    procedure btnGravarServidorClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btnIncluirFeriasClick(Sender: TObject);
    procedure btnNovaFuncaoClick(Sender: TObject);
    procedure btnDesligarFuncaoClick(Sender: TObject);
    procedure btnEditarFeriasClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnEditarHistoricoClick(Sender: TObject);
    procedure btnNovoExercicioExternoClick(Sender: TObject);
    procedure btnDesligarExercicioExternoClick(Sender: TObject);
    procedure btnExcluirFuncaoClick(Sender: TObject);
    procedure btnEditarFuncaoClick(Sender: TObject);
    procedure btnNovaLotacaoClick(Sender: TObject);
    procedure btnExcluirFeriasClick(Sender: TObject);
    procedure btnIncluirAbonoClick(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtCPFPropertiesChange(Sender: TObject);
    procedure edtCPFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDtNascimentoPropertiesChange(Sender: TObject);
    procedure edtDtNascimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtidServidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpCargoPropertiesChange(Sender: TObject);
    procedure lkpCargoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtidServidorPropertiesChange(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure btnIncluirSubstituicaoClick(Sender: TObject);
    procedure btnIncluirAfastamentoClick(Sender: TObject);
    procedure btnEditarAfastamentoClick(Sender: TObject);
    procedure edtNaturalidadePropertiesChange(Sender: TObject);
    procedure lkpEspecialidadePropertiesChange(Sender: TObject);
    procedure edtDt_PosseCargoPropertiesChange(Sender: TObject);
    procedure edtDt_ExercicioCargoPropertiesChange(Sender: TObject);
    procedure edtDt_NomeacaoCargoPropertiesChange(Sender: TObject);
    procedure edtDt_NomeacaoCargoDODFPropertiesChange(Sender: TObject);
    procedure edtOrgaoOrigemPropertiesChange(Sender: TObject);
    procedure cbxCargaHorariaPropertiesChange(Sender: TObject);
    procedure cbxClassePropertiesChange(Sender: TObject);
    procedure cbxPadraoPropertiesChange(Sender: TObject);
    procedure edtCF_NumPropertiesChange(Sender: TObject);
    procedure cbxNatural_UFPropertiesChange(Sender: TObject);
    procedure edtPaiPropertiesChange(Sender: TObject);
    procedure edtMaePropertiesChange(Sender: TObject);
    procedure lkpEstadoCivilPropertiesChange(Sender: TObject);
    procedure cbxTipoSanguineoPropertiesChange(Sender: TObject);
    procedure edtConjugePropertiesChange(Sender: TObject);
    procedure edtEnderecoPropertiesChange(Sender: TObject);
    procedure edtBairroPropertiesChange(Sender: TObject);
    procedure edtCidadePropertiesChange(Sender: TObject);
    procedure cbxEnderecoUFPropertiesChange(Sender: TObject);
    procedure edtCEPPropertiesChange(Sender: TObject);
    procedure edtEmailPropertiesChange(Sender: TObject);
    procedure cbxGrauInstrucaoPropertiesChange(Sender: TObject);
    procedure lkpCursoPropertiesChange(Sender: TObject);
    procedure edtNaturalidadeExit(Sender: TObject);
    procedure edtSupervisor_EstagiarioPropertiesChange(Sender: TObject);
    procedure edtDt_InicioContrato1_EstagiarioPropertiesChange(
      Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnIncluirTelefoneClick(Sender: TObject);
    procedure tshFeriasShow(Sender: TObject);
    procedure btnExcluirAfastamentoClick(Sender: TObject);
    procedure btnExcluirAbonoClick(Sender: TObject);
    procedure btnEditarAbonoClick(Sender: TObject);
    procedure edtNaturalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtPaiKeyPress(Sender: TObject; var Key: Char);
    procedure edtMaeKeyPress(Sender: TObject; var Key: Char);
    procedure edtConjugeKeyPress(Sender: TObject; var Key: Char);
    procedure edtEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure edtBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edtCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    RegistroAlterado: boolean;
    PodeDesfazerCampo: boolean;
  public
    function setarCorPadrao: boolean;
    function checarEstadoRegistro: Integer;
    procedure desabilitarEdicao;
    procedure habilitarEdicao;
    procedure setarTamanhoCampos;
    procedure setarCampoAlterado(Campo: TComponent);
    procedure SetarAlteracaoDesfeita;
    procedure SetarEstadoDoRegistro;
    procedure desfazerAlteracaoCampo(Campo: TComponent);

    procedure preencherCamposUF;

    function carregarDadosPessoais:boolean;
    function carregarDadosFuncionais:boolean;
    function carregarDocumentos: boolean;
    function carregarDadosEstagio:boolean;


    // Obsoletas, remover daqui pois est�o no datamodule dmCadastroServidor
    // verificar se as fun��es update s�o compat�veis para o cadastro inicial e a altera��o
    // pois s�o feitas em formul�rios diferentes

    function SQLUpdateServidor(pIDP, pIDS: String): String;
    function SQLUpdateDados(pIDP: String): String;
    function SQLUpdateDatas(pIDP, pIDS: String): String;

    procedure refreshDados;
    function servidorOcupaFuncao(idPessoal, idServidor: String):boolean;
    function servidorEstaEmExercicioExterno(idPessoal, idServidor: String):boolean;
    function salvarDados:boolean;

    function setarRegistroAGravar: boolean;
    function jaExisteFerias(idPessoal, idServidor, idExercicio: String):boolean;
    
  end;

var
  frmUpdateServidor: TfrmUpdateServidor;

implementation

uses ufReadServidor, uDMPessoal, uDmCadastroServidor,
  ufUpdateFuncao, PRG_utils, uPesFuncoes, uDmExibirTabelas,
  ufUpdateHistoricoFuncao, ufUpdateExercicioExterno, uDMConexao, ufLogs,
  ufUpdateLotacao, ufUpdateFerias, ufUpdateAbonoAnual,
  ufUpdateSubstituicao, ufPrincipal, ufUpdateAfastamento, ufUpdateTelefone,
  uDMExcluirFeriasAbonoAfastamento, uDmFeriasAbonoAfastamento;

{$R *.dfm}

var EstadoEdicao, RegistroAGravar: TPessoal;

procedure TfrmUpdateServidor.btnGravarServidorClick(Sender: TObject);
var wMens, NIDP, NIDS, Evento: String;
    Registro_Setado, OK_Pes, OK_Ser, OK_Dad, OK_Dat: boolean;
    resultado : integer;
begin
  wMens := 'Aten��o! Confirma esta altera��o?' + #13 + #13
         + edtCPF.Text + #13
         + edtNome.Text;

  //if ConfirmaAcao(wMens,3) = 1 then
  //begin //4
    edtNomeExit(Self);

    //setarCampos;

    //if lbl_IDP.Caption = '0' then
    //begin //5

    //NIDP := InserirZeros
    //(dmCadastroServidor.GerarID('tbPessoal','idPessoal'),5);

    //lbl_IDP.Caption := NIDP;

    //end;  //5

    NIDP := lbl_IDP.Caption;
    NIDS := lbl_IDS.Caption;

    //ShowMessage(NIDP + ' ' + NIDS);

    {
  //    if dmCadastroServidor.alterarPessoal
    if dmCadastroServidor.executarSQL(SQLUpdatePessoal(NIDP))
    then
      OK_Pes := true
    else
      OK_Pes := false;
    }


    if setarRegistroAGravar then
    Registro_Setado := true;
    
    //Abort;


    // Tabela de Pessoal

    with dmCadastroServidor do
    begin
      if executarSQL(SQLUpdatePessoal(NIDP, edtCPF.Text, edtNome.Text, edtDtNascimento.Text))
      then
        OK_Pes := true
      else
        OK_Pes := false;
    end;


  // Tabela de Dados

    with dmCadastroServidor, RegistroAGravar do
    begin
      if executarSQL(SQLUpdateDados
      (
        NIDP
        , endereco[0]
        , bairro[0]
        , cidade[0]
        , enderecoUF[0]
        , cep[0]
        , ciNum[0]
        , ciUF[0]
        , ciEmissao[0]
        , naturalidade[0]
        , naturalUF[0]
        , pisPasep[0]
        , teNum[0]
        , teZona[0]
        , teSecao[0]
        , teUF[0]
        , teEmissao[0]
        , pai[0]
        , mae[0]
        , estadoCivil[0]
        , conjuge[0]
        , banco[0]
        , agencia[0]
        , contaBanco[0]
        , oabNum[0]
        , oabSecao[0]
        , grauInstrucao[0]
        , curso[0]
        , tipoSangue[0]
        , email[0]
      )
      )
      then
        OK_Dad := true
      else
        OK_Dad := false;
    end;

  // Tabela de Servidor

    with dmCadastroServidor, RegistroAGravar do
    begin
      if executarSQL(SQLUpdateServidor
      (
        NIDP, NIDS,
        idServidor[0],
        idCargo[0],
        idEspecialidade[0],
        cfNum[0],
        classe[0],
        padrao[0],
        requisitado[0],
        orgaoOrigem[0],
        auxTransporte[0],
        cargaHoraria[0],
        Dt_InicioContrato1_Estagiario[0],
        Dt_TerminoContrato1_Estagiario[0],
        Dt_InicioContrato2_Estagiario[0],
        Dt_TerminoContrato2_Estagiario[0],
        Dt_InicioContrato3_Estagiario[0],
        Dt_TerminoContrato3_Estagiario[0],
        Dt_InicioContrato4_Estagiario[0],
        Dt_TerminoContrato4_Estagiario[0],
        Supervisor_Estagiario[0],
        TurnoEstagio[0],
        Semestre[0],
        InstituicaoEnsino[0],
        observacao[0]
      )
      )
      then
        OK_Ser := true
      else
        OK_Ser := false;
    end;

    if dmCadastroServidor.atualizarDatas
    // Tabela tbServidor, campos do tipo data
    (SQLUpdateDatas(NIDP, NIDS))
    then
      OK_Dat := true
    else
      OK_Dat := false;


    if OK_Pes then
    begin //6
      chkPessoal.Checked := true;
      frmLogs.mmoLog.Lines.Add('Registro alterado na tabela de Pessoal');
    end   //6
    else
    begin //6
      chkPessoal.Checked := false;
      frmLogs.mmoLog.Lines.Add('Registro n�o alterado na tabela de Pessoal');
    end; //6

    if OK_Ser then
    begin //7
      chkServidor.Checked := true;
      frmLogs.mmoLog.Lines.Add('Registro alterado na tabela de Servidor');
    end   //7
    else
    begin //7
      chkServidor.Checked := false;
      frmLogs.mmoLog.Lines.Add('Registro n�o alterado na tabela de Servidor');
    end;  //7

    if OK_Dad then
    begin //8
      chkDados.Checked := true;
      frmLogs.mmoLog.Lines.Add('Registro alterado na tabela de Dados');
    end   //8
    else
    begin //8
      chkDados.Checked := false;
      frmLogs.mmoLog.Lines.Add('Registro n�o alterado na tabela de Dados');
    end;  //8

    if OK_Dat then
    begin //9
      chkDatas.Checked := true;
      frmLogs.mmoLog.Lines.Add('Datas atualizadas na tabela Servidor');
    end
    else
    begin //9
      chkDatas.Checked := false;
      frmLogs.mmoLog.Lines.Add('Datas n�o atualizadas na tabela Servidor');
    end;  //9

    if (OK_Pes) and (OK_Ser) and (OK_Dad) and (OK_Dat)
    then
    begin //10
      // comentado pois est� Repetido
      {if dmCadastroServidor.alterarServidor   // Tabela de Servidor
      (SQLUpdateServidor(NIDP, NIDS))
      then
        OK_Ser := true
      else
        OK_Ser := false;

      if dmCadastroServidor.alterarDados  // Tabela de Dados
      (SQLUpdateDados(NIDP))
      then
        OK_Dad := true
      else
        OK_Dad := false;

      if dmCadastroServidor.atualizarDatas
      // Tabela tbServidor, campos do tipo data
      (SQLUpdateDatas(NIDP, NIDS))
      then
        OK_Dat := true
      else
        OK_Dat := false;
      }

      //setarOperacao(2); // Altera��o de registro

      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
      RetornaData(2),
      'tbPessoal, tbServidor, tbDados',
      'NULL',
      NIDP,
      NIDS,
      'TODOS',
      'Inclus�o do servidor: '
      + 'Matr�cula: ' + edtidServidor.Text
      + ' Nome: ' + edtNome.Text
      );

      // Exibir os dados do servidor ap�s a atualiza��o
      resultado :=
      dmPessoal.pesquisarPessoal
      (' AND pes.idPessoal = ' + QuotedStr(frmUpdateServidor.lbl_IDP.Caption)
      + ' AND serv.idServidor = ' + QuotedStr(frmUpdateServidor.txtMatricula.Caption));


      // bloquear registro

      //SetarModoAlteracao;

      ShowMessage('Registro gravado com sucesso.');
      //frmCreateServidor.Activate;  // atualiza a p�gina para exibir o modo de altera�~~ao

      //btnGravarServidor.Enabled := false;

    end  //10
    else
      ShowMessage('Houve um erro no cadastro de uma das tabelas.');

  //end //4
  //else Abort;

end;

procedure TfrmUpdateServidor.btnSairClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmUpdateServidor.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
  setarTamanhoCampos;

  pgcPessoal.ActivePage := tshDadosFuncionais;
  gbxFerias.Caption := '';

  // desabilitarEdicao; -- desabilitado a pedida da Georgiana

  if not dmCadastroServidor.retornarCargo
  then ShowMessage('A pesquisa falhou para o campo de cargo');

  if not dmCadastroServidor.retornarEspecialidade
  then ShowMessage('A pesquisa falhou para o campo de especialidade');

  if not dmCadastroServidor.retornarLotacao
  then ShowMessage('A pesquisa falhou para o campo de lota��o');

  if not dmCadastroServidor.retornarFuncao
  then ShowMessage('A pesquisa falhou para o campo de fun��o');

  if not dmCadastroServidor.retornarUF
  then ShowMessage('A pesquisa falhou para o campo da UF');

  if not dmCadastroServidor.retornarEstadoCivil
  then ShowMessage('A pesquisa falhou para o campo do Estado Civil');

  if not dmCadastroServidor.retornarCurso
  then ShowMessage('A pesquisa falhou para o campo do Curso');

  if not dmCadastroServidor.retornarBanco
  then ShowMessage('A pesquisa falhou para o campo do Banco');

end;

function TfrmUpdateServidor.salvarDados: boolean;
begin
//
end;

procedure TfrmUpdateServidor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var nomeMudou: String;
begin
  if Shift = [ssCtrl] then
  begin
    case key of
      VK_F12:
      //mmoLog.Visible := not mmoLog.Visible;
      frmLogs.ShowModal;

      VK_F8:
      begin


        if edtNome.Text <> EstadoEdicao.Nome[0] then nomeMudou := 'O nome foi alterado';
        ShowMessage(
        EstadoEdicao.Nome[0] + chr(13) +
        EstadoEdicao.CPF[0] + chr(13) +
        EstadoEdicao.dtNascimento[0] + chr(13) +
        EstadoEdicao.idServidor[0] + chr(13) +
        //EstadoEdicao.Cargo[0] + chr(13) +

        nomeMudou
        );
      end;

    end

  end
end;

procedure TfrmUpdateServidor.preencherCamposUF;
var NumCampo :integer;
UF: string;
begin

  // S� retornou o nome dos campos
  // � necess�rio retornar o valor do campo NOME

  {with dmCadastroServidor.qryUF do
  begin
    //
    Active := True;
    First;
    NumCampo :=0;
    while NumCampo < Fields.Count do
    begin
      cbxNatural_UF.Properties.Items.Add(dmCadastroServidor.qryUF.Fields[NumCampo].FieldName);
      NumCampo:=NumCampo+1;
    end;
  end;}

  with dmCadastroServidor.qryUF do
  begin
    if not IsEmpty then
    begin
      While not Eof do
      begin
        UF := FieldByName('idUF').AsString;
        cbxNatural_UF.Properties.Items.Add(UF);
        cbxEnderecoUF.Properties.Items.Add(UF);
        cbxCI_UF.Properties.Items.Add(UF);
        cbxTE_UF.Properties.Items.Add(UF);

        Next;
      end;
    end;
  end;

end;

procedure TfrmUpdateServidor.FormActivate(Sender: TObject);
var wOK: boolean;
begin
  lkpBanco.Enabled := false;
  {
  if carregarDados then
  wOK := true
  else wOk := false;
  }
  carregarDadosPessoais;
  carregarDadosFuncionais;
  carregarDocumentos;
  carregarDadosEstagio;
  
  WindowState := wsMaximized;

  if not dmPessoal.qryPesquisa.FieldByName('idCargo').IsNull then
  begin
    if dmPessoal.VerificarSeEProcurador(Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2))
    then
    begin
      tshSubstituicao.TabVisible := true;
      gbxPromocaoProcurador.Visible := true;
    end
    else
    begin
      tshSubstituicao.TabVisible := false;
      gbxPromocaoProcurador.Visible := false;
    end
  end;

  {
  if dmPessoal.VerificarSeEServidor(Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2))
  then
  begin
    tshAbonoAnual.TabVisible := true;
    tshEstagio.TabVisible := false;
    tshExercicioExterno.TabVisible := true;
    tshFerias.TabVisible := true;
    tshSubstituicao.TabVisible := false;
    gbxPromocaoProcurador.Visible := false;
    frmUpdateServidor.gbxPromocaoProcurador.Visible := false;
  end;
  }

//  edtCPF.SetFocus;

  {if not dmCadastroServidor.retornarPessoal
  then ShowMessage('A pesquisa falhou para o campo de pessoal');

  if not dmCadastroServidor.retornarCargo
  then ShowMessage('A pesquisa falhou para o campo de cargo');

  if not dmCadastroServidor.retornarEspecialidade
  then ShowMessage('A pesquisa falhou para o campo de especialidade');

  if not dmCadastroServidor.retornarLotacao
  then ShowMessage('A pesquisa falhou para o campo de lota��o');

  if not dmCadastroServidor.retornarFuncao
  then ShowMessage('A pesquisa falhou para o campo de fun��o');

  if not dmCadastroServidor.retornarUF
  then ShowMessage('A pesquisa falhou para o campo da UF');

  if not dmCadastroServidor.retornarEstadoCivil
  then ShowMessage('A pesquisa falhou para o campo do Estado Civil');

  if not dmCadastroServidor.retornarCurso
  then ShowMessage('A pesquisa falhou para o campo do Curso');

  if not dmCadastroServidor.retornarBanco
  then ShowMessage('A pesquisa falhou para o campo do Banco');
  }

  preencherCamposUF;


  //cbxNatural_UF.Properties.Items := dmCadastroServidor.ListaCliente;

  //mmoSQL.Lines.Add(LstUser);
  //mmoSQL.Lines.Add(DateToStr(LstDate));
  
end;

procedure TfrmUpdateServidor.btnIncluirFeriasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFerias, frmUpdateFerias);
  frmUpdateFerias.setarOperacao(1);
  frmUpdateFerias.configurarOperacao;
  frmUpdateFerias.setFormQueChamou('frmUpdateServidor');

  {frmUpdateFerias.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);
  }

  {ShowMessage
  (dmPessoal.qryPesquisa.FieldValues['idServidor'] + ', ' +
   dmPessoal.qryPesquisa.FieldValues['Nome'] + ', ' +
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);}

  {
  dmExibirTabelas.setarCabecalhoPessoal
  ('', dmPessoal.qryPesquisa.FieldValues['idServidor'],
   '', dmPessoal.qryPesquisa.FieldValues['Nome'],
   '', '', dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);
  }
  
  with dmPessoal do
  begin
    frmUpdateFerias.setarDadosServidor
    (qryPesquisa.FieldValues['idServidor'],
     qryPesquisa.FieldValues['Nome'],
     qryPesquisa.FieldValues['descricaoCargo']);
  end;

  frmUpdateFerias.ShowModal;
  frmUpdateFerias.Release;
  frmUpdateFerias := nil;
end;

procedure TfrmUpdateServidor.btnNovaFuncaoClick(Sender: TObject);
begin

  //ShowMessage(Trim(txtDtDesligFuncao.Caption));

  //ShowMessage(Trim(dmPessoal.qryPesquisa.FieldValues['idFuncao']));

  {if not (dmPessoal.qryPesquisa.FieldByName('idFuncao').IsNull)
  or

  (Trim(txtDtDesligFuncao.Caption) <> '')
  and (Trim(txtDtDesligFuncao.Caption) <> '99999'
  )}

  if //Trim(dmPessoal.qryPesquisa. FieldValues['idFuncao']) = '99999'
  servidorOcupaFuncao(lbl_IDP.Caption, txtMatricula.Caption)
  then
  ShowMessage('� necess�rio desligar o servidor da fun��o atual')

  {
  ShowMessage(IntToStr(dmCadastroServidor.servidorAtivoNaFuncao
  (dmPessoal.qryPesquisa.FieldValues['idPessoal'],
  dmPessoal.qryPesquisa.FieldValues['idServidor'],
  dmPessoal.qryPesquisa.FieldValues['idFuncao']))
  )
  }

  else
  begin
    Application.CreateForm(TfrmUpdateFuncao, frmUpdateFuncao);
    frmUpdateFuncao.setarOperacao(1);
    frmUpdateFuncao.ShowModal;
    frmUpdateFuncao.Release;
    frmUpdateFuncao := nil;
  end;
end;

procedure TfrmUpdateServidor.btnDesligarFuncaoClick(Sender: TObject);
begin
    //showMessage(dmPessoal.qryPesquisa. FieldValues['idFuncao']);

  if //Trim(dmPessoal.qryPesquisa. FieldValues['idFuncao']) = '99999'
  not servidorOcupaFuncao(lbl_IDP.Caption, txtMatricula.Caption)
  then ShowMessage('O servidor n�o est� ocupando fun��o')
  else
  begin;
    Application.CreateForm(TfrmUpdateFuncao, frmUpdateFuncao);

    with frmUpdateFuncao do
    begin
      setarOperacao(2); //'DESLIGAR FUN��O';
      retornarFuncao;
      btnSelecionarFuncoes.Visible := false;

      lkpFuncao.Text := txtFuncao.Caption;
      // o erro est� aqui (o lookup pode pegar o primeiro que aparecer
      // pois os registros t�m a mesma descri��o

      lblSimbolo.Caption := txtDFG.Caption;
      edtDtNomeacaoFuncao.Text := txtDtNomeacaoFuncao.Caption;
      edtDtNomeacaoFuncaoDODF.Text := txtDtNomeacaFuncaoDODF.Caption;
      edtDtPosseFuncao.Text := txtDtPosseFuncao.Caption;
      edtDtExercicioFuncao.Text := txtDtExercicioFuncao.Caption;

      ShowModal;
      Release;
      frmUpdateFuncao  := nil;
    end;
  end;
end;

procedure TfrmUpdateServidor.btnEditarFeriasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFerias, frmUpdateFerias);
  frmUpdateFerias.setarOperacao(2);

  //with DMFeriasAbonoAfastamento.qryPesquisa do
  //begin

  //dmExibirTabelas.qryAfastamentoServidor

    {frmUpdateFerias.exibeFeriasNoPeriodo
    (DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
    DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],
    DMFeriasAbonoAfastamento.qryFerias.FieldValues['idExercicio']);
    }

    {frmUpdateFerias.exibeFeriasNoPeriodo
    (dmExibirTabelas.qryFeriasServidor.FieldValues['idPessoal'],
    dmExibirTabelas.qryFeriasServidor.FieldValues['idServidor'],
    dmExibirTabelas.qryFeriasServidor.FieldValues['idExercicio'],
    dmExibirTabelas.qryFeriasServidor.FieldValues['idPeriodo']
    }

    dmFeriasAbonoAfastamento.exibeFeriasNoPeriodo
    (dmExibirTabelas.qryFeriasServidor.FieldValues['idPessoal'],
    dmExibirTabelas.qryFeriasServidor.FieldValues['idServidor'],
    dmExibirTabelas.qryFeriasServidor.FieldValues['idExercicio'],
    dmExibirTabelas.qryFeriasServidor.FieldValues['idPeriodo']

    );

  //end;

  frmUpdateFerias.configurarOperacao;
  frmUpdateFerias.carregarFeriasParaEdicao;


  frmUpdateFerias.bloquearCampos;
  //frmUpdateFerias.edtProcessoSEI.SetFocus;


  {with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    frmUpdateFerias.setarDadosServidor
    (FieldValues['idServidor'],
     FieldValues['Nome'],
     FieldValues['Cargo']);
  end;
  }

  frmUpdateFerias.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);

  {dmExibirTabelas.setarCabecalhoPessoal
  ('', dmPessoal.qryPesquisa.FieldValues['idServidor'],
   '', dmPessoal.qryPesquisa.FieldValues['Nome'],
   '', '', dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);}


  frmUpdateFerias.setFormQueChamou('frmUpdateUpdateServidor');

  frmUpdateFerias.ShowModal;
  frmUpdateFerias.Release;
  frmUpdateFerias := nil;


{  Application.CreateForm(TfrmUpdateAbonoAnual, frmUpdateAbonoAnual);
  frmUpdateAbonoAnual.setarOperacao(2);

  frmUpdateAbonoAnual.configurarOperacao;
  frmUpdateAbonoAnual.setFormQueChamou('frmUpdateServidor');

  with dmPessoal.qryPesquisa do
  begin
    frmUpdateAbonoAnual.setarDadosServidor
    (FieldValues['idServidor'],
     FieldValues['Nome'],
     FieldValues['descricaoCargo']);
  end;


  with dmExibirTabelas.qryAbonoServidor do
  begin
    idExercicio := FieldValues['idExercicio'];

    if not FieldByName('nProcessoSEI').IsNull then
    ProcessoSEI := FieldValues['nProcessoSEI']
    //  else ProcessoSEI := ''
    ;
    if not FieldByName('Dt_1').IsNull then
    dt_1 := FieldValues['Dt_1'];

    if not FieldByName('Dt_2').IsNull then
    dt_2 := FieldValues['Dt_2'];

    if not FieldByName('Dt_3').IsNull then
    dt_3 := FieldValues['Dt_3'];

    if not FieldByName('Dt_4').IsNull then
    dt_4 := FieldValues['Dt_4'];

    if not FieldByName('Dt_5').IsNull then
    dt_5 := FieldValues['Dt_5'];
  end;


  frmUpdateAbonoAnual.configurarOperacao;
  frmUpdateAbonoAnual.carregarAbonoParaEdicao(idExercicio, ProcessoSEI, dt_1, dt_2, dt_3, dt_4, dt_5);

  frmUpdateAbonoAnual.bloquearCampos;

  frmUpdateAbonoAnual.ShowModal;
  frmUpdateAbonoAnual.Release;
  frmUpdateAbonoAnual := nil;
}  
end;

procedure TfrmUpdateServidor.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.edtNomeExit(Sender: TObject);
begin
  edtNome.Text :=
  AnsiUpperCase(RemoveEspaco(edtNome.Text));

  if (edtNome.Text <> EstadoEdicao.Nome[0]) then
  setarCampoAlterado(edtNome);
end;

procedure TfrmUpdateServidor.desabilitarEdicao;
var i: integer;
begin

  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
    begin
      //if Components[i].Name <> 'edtIdProcuradoria' then
      TcxTextEdit(Components[i]).Enabled := false;
      //TcxTextEdit(Components[i]).Properties.ReadOnly := true;

    end;

    if (Components[i] is TcxLookupComboBox) then
      TcxLookupComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxDateEdit) then
       TcxDateEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxMaskEdit) then
       TcxMaskEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxComboBox) then
       TcxComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxCheckBox) then
       TcxCheckBox(Components[i]).Enabled := false;

  end;

  //mmoObservacao.Enabled := false;

end;

procedure TfrmUpdateServidor.habilitarEdicao;
var i: integer;
begin

  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
    begin
      //if Components[i].Name <> 'edtIdProcuradoria' then
      TcxTextEdit(Components[i]).Enabled := true;
      //TcxTextEdit(Components[i]).Properties.ReadOnly := true;

    end;

    if (Components[i] is TcxLookupComboBox) then
      TcxLookupComboBox(Components[i]).Enabled := true;

    if (Components[i] is TcxDateEdit) then
       TcxDateEdit(Components[i]).Enabled := true;

    if (Components[i] is TcxMaskEdit) then
       TcxMaskEdit(Components[i]).Enabled := true;

    if (Components[i] is TcxComboBox) then
       TcxComboBox(Components[i]).Enabled := true;

    if (Components[i] is TcxCheckBox) then
       TcxCheckBox(Components[i]).Enabled := true;
  end;

  //mmoObservacao.Enabled := true;


end;

procedure TfrmUpdateServidor.Button1Click(Sender: TObject);
begin
  dmExibirTabelas.ExibirHistoricoFuncoes(frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption, 100, 0);
end;

procedure TfrmUpdateServidor.refreshDados;
var
  condicao: string;
begin

  condicao :=
    ' AND pes.idpessoal = ' + QuotedStr(lbl_IDP.Caption)
  + ' AND serv.idServidor = '  + QuotedStr(txtMatricula.Caption);

{
  'SET DATEFORMAT dmy'
  + ' SELECT '

//  + ' serv.idUsuario, pes1.Nome AS Operador, '
  + ' Operador=dbo.F_RetornaOperador(serv.idUsuario), '
  + ' OEE.Descricao as ExercicioExterno, PES.IDPESSOAL, PES.CPF, PES.NOME,'

  + ' pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'

  //+ ' serv.*,' -- tabela Servidor

  + ' serv.idServidor,'
  + ' serv.Matr_Origem,'
  + ' serv.idCargo,'
  + ' serv.Especialidade,'
  + ' serv.idFuncao,'
  + ' serv.idLotacao,'
  + ' serv.CF_Num,'
  + ' serv.Ramal,'
  + ' serv.Sala,'
  + ' serv.Classe,'
  + ' serv.Padrao,'
  + ' serv.Dt_NomeacaoCargo,'
  + ' serv.Dt_NomeacaoCargoDODF,'
  + ' serv.Dt_PosseCargo,'
  + ' serv.Dt_ExercicioCargo,'
  + ' serv.Dt_PrimeiroExercicioGDF,'
  + ' serv.Dt_Deslig_Cargo,'
  + ' serv.Dt_Deslig_CargoDODF,'
  + ' serv.Dt_NomeacaoFuncao,'
  + ' serv.Dt_NomeacaoFuncaoDODF,'
  + ' serv.Dt_PosseFuncao,'
  + ' serv.Dt_ExercicioFuncao,'
  + ' serv.Dt_Deslig_Funcao,'
  + ' serv.Dt_Deslig_FuncaoDODF,'
  + ' serv.Dt_Falecimento,'
  + ' serv.Dt_Digitacao,'
  + ' serv.Requisitado,'
  + ' serv.OrgaoDeOrigem,'
  + ' serv.Dt_FimRequisicao,'
  + ' serv.AuxTransporte,'
  + ' serv.idDesligamento,'
  + ' serv.idUsuario,'
  + ' serv.CargaHoraria,'
  + ' serv.Dt_PromocaoCategoria2,'
  + ' serv.Dt_PromocaoSubProcurador,'
  + ' serv.AverbacaoGDF,'
  + ' serv.AverbacaoServPublico,'
  + ' serv.Dt_InicioContrato1_Estagiario,'
  + ' serv.Dt_TerminoContrato1_Estagiario,'
  + ' serv.Dt_InicioContrato2_Estagiario,'
  + ' serv.Dt_TerminoContrato2_Estagiario,'
  + ' serv.Dt_InicioContrato3_Estagiario,'
  + ' serv.Dt_TerminoContrato3_Estagiario,'
  + ' serv.Dt_InicioContrato4_Estagiario,'
  + ' serv.Dt_TerminoContrato4_Estagiario,'
  + ' serv.Supervisor_Estagiario,'
  + ' serv.DtNovaEstrutura,'
  + ' serv.CaminhoFollhaDePonto,'
  + ' serv.TurnoEstagio,'
  + ' serv.Semestre,'
  + ' serv.InstituicaoEnsino,'
 // + ' serv.observacao,' -- Este campo n�o est� na table tbServidor do banco PGSRV19
 // + ' serv.idNucleo,' -- �dem acima
 // + ' serv.dtNucleoDistribuicao,' -- �dem acima

  //+ ' dados.*,' -- tabela Dados

  + ' dados.Endereco,'
  + ' dados.Bairro,'
  + ' dados.Cidade,'
  + ' dados.UF,'
  + ' dados.CEP,'
  + ' dados.CI_Num,'
  + ' dados.CI_UF,'
  + ' dados.CI_Emissao,'
  + ' dados.Nacionalidade,'
  + ' dados.Naturalidade,'
  + ' dados.Natural_UF,'
  + ' dados.Pis_Pasep,'
  + ' dados.TE_Num,'
  + ' dados.TE_Zona,'
  + ' dados.TE_Secao,'
  + ' dados.TE_UF,'
  + ' dados.TE_Emissao,'
  + ' dados.Pai,'
  + ' dados.Mae,'
  + ' dados.idEstadoCivil, '

  + ' CASE'
  + '  WHEN civil.Descricao != ' + QuotedStr('') + ' THEN civil.Descricao'
  + '  ELSE ' + QuotedStr('N�O INFORMADO')
  + ' END AS EstadoCivil ,'

  + ' dados.Conjuge,'
  + ' dados.idBanco,'
  + ' dados.Agencia,'
  + ' dados.Conta,'
  + ' dados.OAB_Num,'
  + ' dados.OAB_Secao,'
  + ' dados.Aspro_Opc,'
  + ' dados.Grau,'
  + ' dados.Curso,'
  + ' dados.TipoSanguineo,'
  + ' dados.Email,'

  + ' lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descricaoLotacao,'
  + ' car.descricao as descricaoCargo,'
  + ' fun.descricao as descricaoFuncao,'
  + ' desl.descricao as desligamento'
  + ' FROM tbPessoal as pes'
  + ' LEFT JOIN tbServidor as serv ON serv.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbDados as dados ON dados.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbLotacao as lot ON lot.idLotacao = serv.idLotacao'
  + ' LEFT JOIN tbCargo as car ON car.idCargo = serv.idCargo'
  + ' LEFT JOIN tbFuncao as fun ON fun.idFuncao = serv.idFuncao'
  + ' LEFT JOIN tbEstadoCivil as civil ON civil.idEstadoCivil = dados.idEstadoCivil'
  + ' LEFT JOIN tbDesligamento as desl ON desl.idDesligamento = serv.idDesligamento'

  + ' LEFT JOIN tbOrgaoExercicioExterno oee'
  + ' ON oee.idOrgaoExercicioExterno = serv.idOrgaoExercicioExterno'
//  + ' LEFT JOIN tbPessoal as pes1 on pes1.CPF = serv.idUsuario'

  + ' WHERE 1=1'

  + ' AND pes.idpessoal = ' + QuotedStr(txtIdPessoal.Caption)
  + ' AND serv.idServidor = '  + QuotedStr(txtMatricula.Caption)
  + ' ORDER BY pes.nome;';

  {
  with dmPessoal.qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(pesquisa);
    Active := True;
  end;//with
  }

  //ShowMessage('N� de registros atualizados: ' +
  //IntToStr(





  dmPessoal.pesquisarPessoal(condicao);

  //));

  with dmExibirTabelas do
  begin
    qryTelefonesServidor.Active := true;
    qryFeriasServidor.Active := true;
    qryAbonoServidor.Active := true;
    qryAfastamentoServidor.Active := true;
    qryHistoricoFuncoes.Active := true;
  end;

end;

procedure TfrmUpdateServidor.btnEditarHistoricoClick(Sender: TObject);
begin

  Application.CreateForm(TfrmUpdateHistoricoFuncao, frmUpdateHistoricoFuncao);

  frmUpdateHistoricoFuncao.setarOperacao(2); // Atualizar hist�rico

  with frmUpdateHistoricoFuncao, dmExibirTabelas.qryHistoricoFuncoes do
  begin
    //retornarFuncao;
    lkpFuncao.Text
    := FieldValues['Descricao'];

    if not FieldByName('dt_NomeacaoFuncao').IsNull
    then
    edtDtNomeacaoFuncao.Text := FieldValues['dt_NomeacaoFuncao'];

    if not FieldByName('dt_NomeacaoFuncaoDODF').IsNull
    then
    edtDtNomeacaoFuncaoDODF.Text := FieldValues['dt_NomeacaoFuncaoDODF'];

    if not FieldByName('dt_PosseFuncao').IsNull
    then
    edtDtPosseFuncao.Text := FieldValues['dt_PosseFuncao'];

    if not FieldByName('dt_ExercicioFuncao').IsNull
    then
    edtDtExercicioFuncao.Text := FieldValues['dt_ExercicioFuncao'];

    if not FieldByName('dt_Deslig_Funcao').IsNull
    then
    edtDtDesligFuncao.Text := FieldValues['dt_Deslig_Funcao'];

    if not FieldByName('dt_Deslig_FuncaoDODF').IsNull
    then
    edtDtDesligFuncaoDODF.Text := FieldValues['dt_Deslig_FuncaoDODF'];

  end;

  frmUpdateHistoricoFuncao.ShowModal;
  frmUpdateHistoricoFuncao.Release;
  frmUpdateHistoricoFuncao := nil;
end;

function TfrmUpdateServidor.servidorOcupaFuncao(idPessoal,
  idServidor: String): boolean;
begin
  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SET DATEFORMAT dmy'
    + ' SELECT idFuncao from tbServidor'
    + ' WHERE idPesSoal = ' + QuotedStr(idPessoal)
    + ' AND idServidor = ' + QuotedStr(idServidor);

    frmLogs.mmoLog.Text := SQL.Text;

    Active := true;

    if (dmCadastroServidor.qryExecSQL.FieldByName('idFuncao').IsNull)
    or (Trim(dmCadastroServidor.qryExecSQL.FieldValues['idFuncao']) = '99999')
    then result := false
    else result := true;

  end

end;


procedure TfrmUpdateServidor.btnNovoExercicioExternoClick(Sender: TObject);
begin
  if servidorEstaEmExercicioExterno(lbl_IDP.Caption, txtMatricula.Caption)
  then
  ShowMessage('� necess�rio desligar o servidor do exerc�cio externo atual')

  else
  begin
    Application.CreateForm(TfrmUpdateExercicioExterno, frmUpdateExercicioExterno);
    frmUpdateExercicioExterno.setarOperacao(1);
    frmUpdateExercicioExterno.ShowModal;
    frmUpdateExercicioExterno.Release;
    frmUpdateExercicioExterno := nil;
  end;

end;

function TfrmUpdateServidor.servidorEstaEmExercicioExterno(idPessoal,
  idServidor: String): boolean;
begin
  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SET DATEFORMAT dmy'
    + ' SELECT idOrgaoExercicioExterno from tbServidor'
    + ' WHERE idPesSoal = ' + QuotedStr(idPessoal)
    + ' AND idServidor = ' + QuotedStr(idServidor);

    frmLogs.mmoLog.Text := SQL.Text;

    Active := true;

    if (FieldByName('idOrgaoExercicioExterno').IsNull)
    or (Trim(FieldValues['idOrgaoExercicioExterno']) = '')
    then result := false
    else result := true;

  end

end;

procedure TfrmUpdateServidor.btnDesligarExercicioExternoClick(
  Sender: TObject);
begin
  if not servidorEstaEmExercicioExterno
  (lbl_IDP.Caption, txtMatricula.Caption)
  then ShowMessage('O servidor n�o est� em exerc�cio externo')
  else
  begin;
    Application.CreateForm(TfrmUpdateExercicioExterno, frmUpdateExercicioExterno);

    with frmUpdateExercicioExterno do
    begin
      setarOperacao(2); //'DESLIGAR EXERC�CIO EXTERNO';
      retornarOrgaoEE;
      btnSelecionarOEE.Visible := false;

      lkpOrgaoEE.Text := txtOrgaoExterno.Caption;

      edtDtNomeacao.Text  := txtDtNomeacaoEE.Caption;
      edtDtPosse.Text     := txtDtPosseEE.Caption;
      edtDtInicio.Text    := txtDtInicioEE.Caption;
      edtDtTermino.Text   := txtDtTerminoEE.Caption;

      ShowModal;
      Release;
      frmUpdateExercicioExterno  := nil;
    end;
  end;
end;

function TfrmUpdateServidor.SQLUpdateDados(pIDP: String): String;
var SQL_Dados: String;
begin

  SQL_Dados := 'SET DATEFORMAT dmy'
  + ' UPDATE tbDados'
  + ' SET ';

  if edtEndereco.Text <> Null
  then SQL_Dados := SQL_Dados
    + ' Endereco = ' + QuotedStr(edtEndereco.Text)
  else SQL_Dados := SQL_Dados
    + ' Endereco = NULL';

  if edtBairro.Text <> Null
  then SQL_Dados := SQL_Dados
    + ', Bairro = ' + QuotedStr(edtBairro.Text)
  else SQL_Dados := SQL_Dados
    + ', Bairro = NULL';

  if edtCidade.Text <> Null
  then SQL_Dados := SQL_Dados
    + ', Cidade = ' + QuotedStr(edtCidade.Text)
  else SQL_Dados := SQL_Dados
    + ', Cidade = NULL';

  if cbxEnderecoUF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
    + ', UF = ' + QuotedStr(cbxEnderecoUF.Text)
  else SQL_Dados := SQL_Dados
    + ', UF = NULL';

  if edtCEP.Text <> Null
  then SQL_Dados := SQL_Dados
    + ', CEP = ' + QuotedStr(edtCEP.Text)
  else SQL_Dados := SQL_Dados
    + ', CEP = NULL';

  if edtCI_Num.Text <> Null
  then SQL_Dados := SQL_Dados
    + ', CI_Num = ' + QuotedStr(edtCI_Num.Text)
  else SQL_Dados := SQL_Dados
    + ', CI_Num = NULL';

  if cbxCI_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', CI_UF = ' + QuotedStr(cbxCI_UF.Text)
  else SQL_Dados := SQL_Dados
  + ', CI_UF = NULL';

  if edtCI_Emissao.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', CI_Emissao = ' + QuotedStr(edtCI_Emissao.Text)
  else SQL_Dados := SQL_Dados
  + ', CI_Emissao = NULL';

  if edtNaturalidade.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Naturalidade = ' + QuotedStr(edtNaturalidade.Text)
  else SQL_Dados := SQL_Dados
  + ', Naturalidade = NULL';

  if cbxNatural_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', Natural_UF = ' + QuotedStr(cbxNatural_UF.EditingValue)
  else SQL_Dados := SQL_Dados
  + ', Natural_UF = NULL';

  if edtPis_Pasep.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Pis_Pasep = ' + QuotedStr(edtPis_Pasep.Text)
  else SQL_Dados := SQL_Dados
  + ', Pis_Pasep = NULL';

  if edtTE_Num.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', TE_Num = ' + QuotedStr(edtTE_Num.Text)
  else SQL_Dados := SQL_Dados
  + ', TE_Num = NULL';

  if edtTE_Zona.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', TE_Zona = ' + QuotedStr(edtTE_Zona.Text)
  else SQL_Dados := SQL_Dados
  + ', TE_Zona = NULL';

  if edtTE_Secao.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', TE_Secao = ' + QuotedStr(edtTE_Secao.Text)
  else SQL_Dados := SQL_Dados
  + ', TE_Secao = NULL';

  if cbxTE_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', TE_UF = ' + QuotedStr(cbxTE_UF.EditingValue)
  else SQL_Dados := SQL_Dados
  + ', TE_UF = NULL';

  if edtTE_Emissao.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', TE_Emissao = ' + QuotedStr(edtTE_Emissao.Text)
  else SQL_Dados := SQL_Dados
  + ', TE_Emissao = NULL';

  if edtPai.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Pai = ' + QuotedStr(edtPai.Text)
  else SQL_Dados := SQL_Dados
  + ', Pai = NULL';

  if edtMae.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Mae = ' + QuotedStr(edtMae.Text)
  else SQL_Dados := SQL_Dados
  + ', Mae = NULL';

  if lkpEstadoCivil.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', idEstadoCivil = ' + QuotedStr(lkpEstadoCivil.EditingValue)
  else SQL_Dados := SQL_Dados
  + ', idEstadoCivil = NULL';

  if edtConjuge.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Conjuge = ' + QuotedStr(edtConjuge.Text)
  else SQL_Dados := SQL_Dados
  + ', Conjuge = NULL';

  if lkpBanco.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', idBanco = ' + QuotedStr(lkpBanco.EditingValue)
  else SQL_Dados := SQL_Dados
  + ', idBanco = NULL';

  if edtAgencia.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Agencia = ' + QuotedStr(edtAgencia.Text)
  else SQL_Dados := SQL_Dados
  + ', Agencia = NULL';

  if edtConta.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Conta = ' + QuotedStr(edtConta.Text)
  else SQL_Dados := SQL_Dados
  + ', Conta = NULL';

  if edtOAB_Num.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', OAB_Num = ' + QuotedStr(edtOAB_Num.Text)
  else SQL_Dados := SQL_Dados
  + ', OAB_Num = NULL';

  if edtOAB_Secao.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', OAB_Secao = ' + QuotedStr(edtOAB_Secao.Text)
  else SQL_Dados := SQL_Dados
  + ', OAB_Secao = NULL';

  if cbxGrauInstrucao.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', Grau = ' + QuotedStr(cbxGrauInstrucao.EditingValue)
  else SQL_Dados := SQL_Dados
  + ', Grau = NULL';

  if lkpCurso.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', Curso = ' + QuotedStr(lkpCurso.EditingValue)
  else SQL_Dados := SQL_Dados
  + ', Curso = NULL';

  if cbxTipoSanguineo.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', TipoSanguineo = ' + QuotedStr(cbxTipoSanguineo.EditingValue)
  else SQL_Dados := SQL_Dados
  + ', TipoSanguineo = NULL';

  if edtEmail.Text <> Null
  then SQL_Dados := SQL_Dados
  + ', Email = ' + QuotedStr(edtEmail.Text)
  else SQL_Dados := SQL_Dados
  + ', Email = NULL';

  SQL_Dados := SQL_Dados
  + ' WHERE idPessoal = ' + QuotedStr(pIDP)
  ;

//  frmLogs.mmoLog.Lines.Add(SQL_Dados);

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL de atualiza��o de dados do servidor (retornaSQLUpdateDados)', SQL_Dados);

  Result := SQL_Dados;
end;

function TfrmUpdateServidor.SQLUpdateServidor(pIDP,
  pIDS: String): String;
var SQL_Servidor: String;
begin
// Ordem dos campos
{
...
...
...
39	Dt_InicioContrato1_Estagiario
40	Dt_TerminoContrato1_Estagiario
41	Dt_InicioContrato2_Estagiario
42	Dt_TerminoContrato2_Estagiario
43	Dt_InicioContrato3_Estagiario
44	Dt_TerminoContrato3_Estagiario
45	Dt_InicioContrato4_Estagiario
46	Dt_TerminoContrato4_Estagiario
47	Supervisor_Estagiario
48	DtNovaEstrutura
49	CaminhoFollhaDePonto
50	TurnoEstagio
51	Semestre
52	InstituicaoEnsino
53	observacao
54	idNucleo
55	dtNucleoDistribuicao
56	idOrgaoExercicioExterno
57	dt_InicioExercicioExterno
58	dt_TerminoExercicioExterno

}

  // Obs: As datas ser�o inclu�das ap�s o Insert
  // atrav�s da fun��o incluirDatas (DMCadastroServidor)


  // Se n�o for atribu�do um valor para o Cargo
  // o banco atribuir� o valor default (999999)
  // �dem para os campos idFuncao, idLotacao, Requisitado, etc
  // Obs: n�o ser� feito como definido nas linhas acima. ser�o informados
  // os valores default aqui no c�digo


  SQL_Servidor := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET idServidor = ' + QuotedStr(edtidServidor.Text);
  //+ ' , Matr_Origem = ' + -- esse campo n�o est� sendo utilizado;

  if lkpCargo.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idCargo = ' + QuotedStr(lkpCargo.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idCargo = ' + QuotedStr('999999');

  {if lkpEspecialidade.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', especialidade = ' + QuotedStr(lkpEspecialidade.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', especialidade = NULL';}

  if lkpEspecialidade.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idEspecialidade = ' + QuotedStr(lkpEspecialidade.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idEspecialidade = NULL';

  {if lkpFuncao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idFuncao = ' + QuotedStr(lkpFuncao.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idFuncao  = NULL' ;}

  {if lkpLotacao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idLotacao = ' + QuotedStr(lkpLotacao.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idLotacao = NULL';}


  // 8	CF_Num 9	Ramal 10	Sala 11	Classe
  // 12	Padrao (n�o se aplica para ramal e sala)

  if edtCF_Num.Text <> Null
  then SQL_Servidor := SQL_Servidor
    + ', CF_Num = ' + QuotedStr(Trim(edtCF_Num.Text))
  else SQL_Servidor := SQL_Servidor
    + ', CF_Num = NULL';

  if cbxClasse.Text <> Null
  then SQL_Servidor := SQL_Servidor
    + ', Classe = ' + QuotedStr(Trim(cbxClasse.Text))
  else SQL_Servidor := SQL_Servidor
    + ', Classe = NULL';

  if cbxPadrao.Text <> Null
  then SQL_Servidor := SQL_Servidor
    + ', Padrao = ' + QuotedStr(Trim(cbxPadrao.Text))
  else SQL_Servidor := SQL_Servidor
    + ', Padrao = NULL';


  if chkRequisitado.Checked
  then SQL_Servidor := SQL_Servidor
    + ', Requisitado = 1'
  else SQL_Servidor := SQL_Servidor
    + ', Requisitado = 0';


  if edtOrgaoOrigem.Text <> ''
  then SQL_Servidor := SQL_Servidor
    + ', OrgaoDeOrigem = ' + QuotedStr(Trim(edtOrgaoOrigem.Text))
  else SQL_Servidor := SQL_Servidor
    + ', OrgaoDeOrigem = NULL';

  if chkAuxTransporte.Checked
  then SQL_Servidor := SQL_Servidor
    + ', AuxTransporte = 1'
  else SQL_Servidor := SQL_Servidor
    + ', AuxTransporte = 0';


  if cbxCargaHoraria.Text <> Null
  then SQL_Servidor := SQL_Servidor
    + ', CargaHoraria = ' + QuotedStr(Trim(cbxCargaHoraria.Text))
  else SQL_Servidor := SQL_Servidor
    + ', CargaHoraria = NULL';


  if edtSupervisor_Estagiario.Text <> ''
  then SQL_Servidor := SQL_Servidor
    + ', Supervisor_Estagiario = ' + QuotedStr(edtSupervisor_Estagiario.Text)
  else SQL_Servidor := SQL_Servidor
    + ', Supervisor_Estagiario = NULL';


    // ver com a Cl�udia em que situa��es s�o digitados
    // os campos AverbacaoGDF e AverbacaoServPublico


  SQL_Servidor := SQL_Servidor
    + ', idUsuario = ' + QuotedStr(DMConexao.Usuario.CPF)
    + ' WHERE idPessoal = ' + QuotedStr(pIDP)
    + ' AND ID = ' + QuotedStr(pIDS);


  Result := SQL_Servidor;

end;

function TfrmUpdateServidor.SQLUpdateDatas(pIDP,
  pIDS: String): String;
var SQL_Datas: String;
begin

  SQL_Datas := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET';

  if edtDt_NomeacaoCargo.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoCargo = '
  + QuotedStr(edtDt_NomeacaoCargo.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoCargo = NULL, ';

  if edtDt_NomeacaoCargoDODF.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoCargoDODF = '
  + QuotedStr(edtDt_NomeacaoCargoDODF.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoCargoDODF = NULL, ';

  if edtDt_PosseCargo.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_PosseCargo = '
  + QuotedStr(edtDt_PosseCargo.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_PosseCargo = NULL, ';

  if edtDt_ExercicioCargo.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_ExercicioCargo = '
  + QuotedStr(edtDt_ExercicioCargo.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_ExercicioCargo = NULL, ';

  if edtDt_PrimeiroExercicioGDF.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_PrimeiroExercicioGDF = '
  + QuotedStr(edtDt_PrimeiroExercicioGDF.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_PrimeiroExercicioGDF = NULL, ';

  {if edtDt_NomeacaoFuncao.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoFuncao = '
  + QuotedStr(edtDt_NomeacaoFuncao.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoFuncao = NULL, ';

  if edtDt_NomeacaoFuncaoDODF.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoFuncaoDODF = '
  + QuotedStr(edtDt_NomeacaoFuncaoDODF.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_NomeacaoFuncaoDODF = NULL, ';

  if edtDt_PosseFuncao.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_PosseFuncao = '
  + QuotedStr(edtDt_PosseFuncao.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_PosseFuncao = NULL, ';

  if edtDt_ExercicioFuncao.Text <> '' then
  SQL_Datas := SQL_Datas + ' Dt_ExercicioFuncao = '
  + QuotedStr(edtDt_ExercicioFuncao.Text) + ', '
  else
  SQL_Datas := SQL_Datas + ' Dt_ExercicioFuncao = NULL,';}

  SQL_Datas := SQL_Datas + ' Dt_Digitacao = ' + QuotedStr(RetornaData(2));

  SQL_Datas := SQL_Datas + ' WHERE idPessoal = '
  + QuotedStr(pIDP)
  + ' AND ID = '  + QuotedStr(pIDS);

  Result := SQL_Datas;

end;

procedure TfrmUpdateServidor.btnExcluirFuncaoClick(Sender: TObject);
var wMens: String;
begin

  wMens := 'Aten��o! Ao excluir esta fun��o, a mesma n�o ser� registrada'
  + chr(13) + 'no hist�rico de fun��es ocupadas pelo servidor.'
  + chr(13) + 'Confirma?';

  if ConfirmaAcao(wMens, 2) = 1 then
  begin
    Application.CreateForm(TfrmUpdateFuncao, frmUpdateFuncao);

    with frmUpdateFuncao do
    begin
      setarOperacao(2); //'DESLIGAR FUN��O';

      if gravarFuncao(
      frmUpdateServidor.lbl_IDP.Caption,
      frmUpdateServidor.txtMatricula.Caption,
      '', '', '', '', '', '', ''
      )
      then ShowMessage('Fun��o exclu�da com sucesso');

      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
      RetornaData(2),
      'tbServidor, tbHist_Funcao',
      'NULL',
      frmUpdateServidor.lbl_IDP.Caption,
      frmUpdateServidor.edtidServidor.Text, // bloquear a edi��o desse campo neste formul�rio
      'TODOS',
      'Exclus�o da fun��o: '
      + 'Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
      + ' Nome: ' + frmUpdateServidor.edtNome.Text
      + ' Fun��o exclu�da: ' + lkpFuncao.editValue + ' - ' +  lkpFuncao.Text
      );

      Release;
      frmUpdateFuncao  := nil;
    end;

  end;

end;

procedure TfrmUpdateServidor.btnEditarFuncaoClick(Sender: TObject);
begin
  if not servidorOcupaFuncao(lbl_IDP.Caption, txtMatricula.Caption)
  then ShowMessage('O servidor n�o est� ocupando fun��o')
  else
  begin;
    Application.CreateForm(TfrmUpdateFuncao, frmUpdateFuncao);

    with frmUpdateFuncao do
    begin
      setarOperacao(3); //'EDITAR FUN��O';
      retornarFuncao;
      btnSelecionarFuncoes.Visible := false;

      lkpFuncao.Text := txtFuncao.Caption;
      // o erro est� aqui (o lookup pode pegar o primeiro que aparecer
      // pois os registros t�m a mesma descri��o

      lblSimbolo.Caption := txtDFG.Caption;
      edtDtNomeacaoFuncao.Text := txtDtNomeacaoFuncao.Caption;
      edtDtNomeacaoFuncaoDODF.Text := txtDtNomeacaFuncaoDODF.Caption;
      edtDtPosseFuncao.Text := txtDtPosseFuncao.Caption;
      edtDtExercicioFuncao.Text := txtDtExercicioFuncao.Caption;

      ShowModal;
      Release;
      frmUpdateFuncao  := nil;
    end;
  end;

end;

procedure TfrmUpdateServidor.btnNovaLotacaoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateLotacao, frmUpdateLotacao);
  frmUpdateLotacao.setarOperacao(1);
  frmUpdateLotacao.ShowModal;
  frmUpdateLotacao.Release;
  frmUpdateLotacao := nil;
end;

procedure TfrmUpdateServidor.btnExcluirFeriasClick(Sender: TObject);
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Aten��o! Confirma esta';
  wOperacao := 'EXCLUS�O';
  wMens := wMens + ' ' + wOperacao + '?';

  if ConfirmaAcao(wMens, 3) = 1 then
  begin
    with dmExibirTabelas.qryFeriasServidor do
    begin
      wEvento := UpperCase(wOperacao)+ ' de f�rias.'
      + ' Exerc�cio: ' + FieldValues['idExercicio']
      + ' Data de in�cio: ';

      if not FieldByName('Dt_Inicio').IsNull then
      wEvento := wEvento + DateToStr(FieldValues['Dt_Inicio'])

      + ', Data de t�rmino: ';

      if not FieldByName('Dt_Termino').IsNull then
      wEvento := wEvento + DateToStr(FieldValues['Dt_Termino']);
    end;

    if DMExcluirFeriasAbonoAfastamento.excluirFerias(dmExibirTabelas.qryFeriasServidor.FieldValues['ID'])
    then
    begin
      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
      RetornaData(2),
      'tbFerias',
      //'NULL',
      dmPessoal.qryPesquisa.FieldValues['idPessoal'],
      dmPessoal.qryPesquisa.FieldValues['idPessoal'],
      dmPessoal.qryPesquisa.FieldValues['idServidor'],
      'TODOS',
      wEvento
      );

      ShowMessage('Registro exclu�do.');
    end;

    dmExibirTabelas.qryFeriasServidor.Active := false;
    dmExibirTabelas.qryFeriasServidor.Active := true;
  end
end;

procedure TfrmUpdateServidor.btnIncluirAbonoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAbonoAnual, frmUpdateAbonoAnual);
  frmUpdateAbonoAnual.setarOperacao(1);
  frmUpdateAbonoAnual.configurarOperacao;

  frmUpdateAbonoAnual.setFormQueChamou('frmUpdateServidor');

  frmUpdateAbonoAnual.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);

  frmUpdateAbonoAnual.ShowModal;
  frmUpdateAbonoAnual.Release;
  frmUpdateAbonoAnual := nil;
end;


procedure TfrmUpdateServidor.SetarAlteracaoDesfeita;
begin
  RegistroAlterado := false;
//  btnGravarServidor.Enabled := false;

  with StatusBar do
  begin
     Panels[0].Text := '0';
     Panels[1].Text := 'N�O ALTERADO';
  end;

end;

procedure TfrmUpdateServidor.SetarEstadoDoRegistro;
begin
  case checarEstadoRegistro of
  0:
  begin
    RegistroAlterado := false;
//    btnGravarServidor.Enabled := false;
  //  SetarStatus('2');

    with StatusBar do
    begin
       Panels[0].Text := '0';
       Panels[1].Text := 'N�O ALTERADO';
    end;
  end;

  1:
  begin
    RegistroAlterado := true;
//    btnGravarServidor.Enabled := true;
  //  SetarStatus('2');

    with StatusBar do
    begin
       Panels[0].Text := '1';
       Panels[1].Text := 'ALTERADO';
    end;
  end;
end;

end;

procedure TfrmUpdateServidor.edtNomePropertiesChange(Sender: TObject);
begin
  if (edtNome.Text <> EstadoEdicao.Nome[0]) then
    setarCampoAlterado(edtNome)
  else
    desfazerAlteracaoCampo(edtNome);
end;

procedure TfrmUpdateServidor.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Chr(key) = #27) then
  begin
    if PodeDesfazerCampo then //DesfazerAlteracao;
    desfazerAlteracaoCampo(edtNome);

{    edtNome.Undo;
    edtNome.Style.Font.Color := clBlack;
    SetarEstadoDoRegistro;}
  end;
end;

procedure TfrmUpdateServidor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  {if btnGravarServidor.Enabled then

  case ConfirmaAcao
  ('O registro n�o foi gravado, ainda. Deseja grav�-lo antes de sair?',3) of
  1:
    begin
      {if not AlterarAS(txtIdCE.Caption,
                      Trim(edtProtocoloSAJ.Text),
                      Trim(edtProtocoloSAJ.Text),
                      Trim(widArea),
                      Trim(widPrazo),
                      Trim(txtidLotacao.Caption),
                      Trim(edtAssunto.Text),
                      Trim(edtLocalizacaoInterna.Text),
                      Trim(edtValorAtual.Text),
                      Trim(mmoObservacao.Text),
                      Trim(frmPrincipal.Sessao.idUsuario),
                      Trim(edtDt_Entrada.Text),
                      Trim(edtDt_Saida.Text),
                      Trim(edtCaixa.Text),
                      Trim(edtEstante.Text)
                      )

      then
      begin
        ShowMessage('Houve um erro na tentativa de grava��o');
        CanClose := False;
      end
      else CanClose := True;
      }
  {  end;
  0: CanClose := True;
  2: CanClose := False;
  end;
  }
end;

function TfrmUpdateServidor.setarCorPadrao: boolean;
var i: Integer;
begin

  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
        TcxTextEdit(Components[i]).Style.Font.Color := clBlack;

    if (Components[i] is TcxComboBox) then
        TcxTextEdit(Components[i]).Style.Font.Color := clBlack;

    if (Components[i] is TcxLookupComboBox) then
        TcxTextEdit(Components[i]).Style.Font.Color := clBlack;

    if (Components[i] is TcxDateEdit) then
        TcxTextEdit(Components[i]).Style.Font.Color := clBlack;

    if (Components[i] is TcxMaskEdit) then
        TcxTextEdit(Components[i]).Style.Font.Color := clBlack;

    if (Components[i] is TcxMemo) then
        TcxTextEdit(Components[i]).Style.Font.Color := clBlack;

  end;
end;

procedure TfrmUpdateServidor.edtCPFPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtCPF);
end;

procedure TfrmUpdateServidor.edtCPFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Chr(key) = #27) then
  begin
    if PodeDesfazerCampo then //DesfazerAlteracao;
    {edtCPF.Undo;
    edtCPF.Style.Font.Color := clBlack;}
    desfazerAlteracaoCampo(edtCPF);
  end;
end;

function TfrmUpdateServidor.checarEstadoRegistro: Integer;
begin
  if (edtNome.Text <> EstadoEdicao.Nome[0])
  or (edtCPF.Text <> EstadoEdicao.CPF[0])
  or (edtDtNascimento.Text <> EstadoEdicao.dtNascimento[0])
  or (lkpCargo.EditValue <> EstadoEdicao.idCargo[0])
  or (edtidServidor.Text <> EstadoEdicao.idServidor[0])

  //  or (lkpEspecialidade.Text <> EstadoEdicao.especialidade[0])
  or (lkpEspecialidade.EditValue <> EstadoEdicao.idEspecialidade[0])

  or (edtDt_PosseCargo.Text <> EstadoEdicao.dtPosseCargo[0])
  or (edtDt_ExercicioCargo.Text <> EstadoEdicao.dtExercicioCargo[0])
  or (edtDt_NomeacaoCargo.Text <> EstadoEdicao.dtNomeacaoCargo[0])

  //or (chkRequisitado.Text <> EstadoEdicao.requisitado[0]) -- verificar pelo chequed ou por outra forma

  or (edtOrgaoOrigem.Text <> EstadoEdicao.orgaoOrigem[0])
  or (cbxCargaHoraria.Text <> EstadoEdicao.cargaHoraria[0])
  or (cbxClasse.Text <> EstadoEdicao.classe[0])
  or (cbxPadrao.Text <> EstadoEdicao.padrao[0])
  or (edtCF_Num.Text <> EstadoEdicao.cfNum[0])

  or (edtNaturalidade.Text <> EstadoEdicao.naturalidade[0])
  or (cbxNatural_UF.Text <> EstadoEdicao.naturalUF[0])
  or (edtPai.Text <> EstadoEdicao.pai[0])
  or (edtMae.Text <> EstadoEdicao.mae[0])
  or (lkpEstadoCivil.Text <> EstadoEdicao.estadoCivil[0])
  or (cbxTipoSanguineo.Text <> EstadoEdicao.tipoSangue[0])
  or (edtConjuge.Text <> EstadoEdicao.conjuge[0])
  or (edtEndereco.Text <> EstadoEdicao.endereco[0])
  or (edtBairro.Text <> EstadoEdicao.bairro[0])

  or (edtCidade.Text <> EstadoEdicao.cidade[0])
  or (cbxEnderecoUF.Text <> EstadoEdicao.enderecoUF[0])
  or (edtCEP.Text <> EstadoEdicao.cep[0])
  or (edtEmail.Text <> EstadoEdicao.email[0])
  or (cbxGrauInstrucao.Text <> EstadoEdicao.grauInstrucao[0])
  or (lkpCurso.Text <> EstadoEdicao.curso[0])

  //or (lblLotacao.Caption <> EstadoEdicao.Lotacao[0])
  then
    Result := 1
  else
    Result := 0;

end;

procedure TfrmUpdateServidor.desfazerAlteracaoCampo(Campo: TComponent);
begin
  if Campo.ClassType = TcxTextEdit then
  begin
      TcxTextEdit(Campo).Undo;
      TcxTextEdit(Campo).Style.Font.Color := clBlack;
  end;

  if Campo.ClassType = TcxDateEdit then
  begin
      TcxDateEdit(Campo).Undo;
      TcxDateEdit(Campo).Style.Font.Color := clBlack;
  end;

  if Campo.ClassType = TcxLookupComboBox then
  begin
      TcxLookupComboBox(Campo).Undo;
      TcxLookupComboBox(Campo).Style.Font.Color := clBlack;
  end;

  SetarEstadoDoRegistro;

end;

procedure TfrmUpdateServidor.setarCampoAlterado(Campo: TComponent);
begin
  PodeDesfazerCampo := true;
  SetarEstadoDoRegistro;
  {
  if Campo.ClassType = TcxTextEdit then
  TcxTextEdit(Campo).Style.Font.Color := clRed;

  if Campo.ClassType = TcxDateEdit then
  TcxTextEdit(Campo).Style.Font.Color := clRed;

  if Campo.ClassType = TcxLookupComboBox then
  TcxLookupComboBox(Campo).Style.Font.Color := clRed;

  if Campo.ClassType = TcxComboBox then
  TcxComboBox(Campo).Style.Font.Color := clRed;
  }
end;

procedure TfrmUpdateServidor.edtDtNascimentoPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtDtNascimento);
end;

procedure TfrmUpdateServidor.edtDtNascimentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Chr(key) = #27) then
  begin
    if PodeDesfazerCampo then //DesfazerAlteracao;
    {edtNome.Undo;
    edtNome.Style.Font.Color := clBlack;}
    desfazerAlteracaoCampo(edtDtNascimento);
  end;
end;

procedure TfrmUpdateServidor.edtidServidorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Chr(key) = #27) then
  begin
    if PodeDesfazerCampo then //DesfazerAlteracao;
    {edtNome.Undo;
    edtNome.Style.Font.Color := clBlack;}
    desfazerAlteracaoCampo(edtidServidor);
  end;                                  
end;

procedure TfrmUpdateServidor.lkpCargoPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(lkpCargo);
end;

procedure TfrmUpdateServidor.lkpCargoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Chr(key) = #27) then
  begin
    if PodeDesfazerCampo then //DesfazerAlteracao;
    desfazerAlteracaoCampo(lkpCargo);
  end;
end;

procedure TfrmUpdateServidor.edtidServidorPropertiesChange(
  Sender: TObject);
begin

  if (edtidServidor.Text <> EstadoEdicao.idServidor[0]) then
  begin
    setarCampoAlterado(edtidServidor);
    //ShowMessage('Diferente');
  end
  else
    desfazerAlteracaoCampo(edtidServidor);
end;

procedure TfrmUpdateServidor.cxButton5Click(Sender: TObject);
begin
  dmExibirTabelas.ExibirSubstituicoes(frmUpdateServidor.lbl_IDP.Caption,
        100, 0);

end;

procedure TfrmUpdateServidor.btnIncluirSubstituicaoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateSubstituicao, frmUpdateSubstituicao);
  frmUpdateSubstituicao.setarOperacao(1);
  frmUpdateSubstituicao.configurarOperacao;
  frmUpdateSubstituicao.setFormQueChamou('frmUpdateServidor');


  frmUpdateSubstituicao.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);
  

  frmUpdateSubstituicao.ShowModal;
  frmUpdateSubstituicao.Release;
  frmUpdateSubstituicao := nil;

end;

procedure TfrmUpdateServidor.btnIncluirAfastamentoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAfastamento, frmUpdateAfastamento);
  frmUpdateAfastamento.setarOperacao(1);
  //frmUpdateAfastamento.configurarOperacao;

  frmUpdateAfastamento.setFormQueChamou('frmUpdateServidor');

  frmUpdateAfastamento.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);

  frmUpdateAfastamento.ShowModal;
  frmUpdateAfastamento.Release;
  frmUpdateAfastamento := nil;

end;

procedure TfrmUpdateServidor.btnEditarAfastamentoClick(Sender: TObject);
var
    idExercicio,
    nProcessoSEI,
    idAfastamento,
    dt_Inicio,
    dt_Termino,
    Observacao,
    ID: String;
begin
  Application.CreateForm(TfrmUpdateAfastamento, frmUpdateAfastamento);
  frmUpdateAfastamento.setarOperacao(2);

  frmUpdateAfastamento.configurarOperacao;
  frmUpdateAfastamento.setFormQueChamou('frmUpdateServidor');

  with dmExibirTabelas.qryAfastamentoServidor do
  begin
    if FieldByName('idExercicio').IsNull
    then idExercicio := ''
    else idExercicio := FieldValues['idExercicio'];

    if FieldByName('nProcessoSEI').IsNull
    then nProcessoSEI := ''
    else nProcessoSEI := FieldValues['nProcessoSEI'];

    if FieldByName('idAfastamento').IsNull
    then idAfastamento := ''
    else idAfastamento := FieldValues['idAfastamento'];

    if FieldByName('dt_Inicio').IsNull
    then dt_Inicio := ''
    else dt_Inicio := FieldValues['dt_Inicio'];

    if FieldByName('dt_Termino').IsNull
    then dt_Termino := ''
    else dt_Termino := FieldValues['dt_Termino'];

    if (FieldByName('Observacao').IsNull) or (Trim(FieldValues['Observacao']) = '')
    then Observacao := ''
    else Observacao := FieldValues['Observacao'];

    //ShowMessage(FieldByName('Observacao').AsString);

    if FieldByName('ID').IsNull
    then ID := ''
    else ID := FieldValues['ID'];

    //ShowMessage(ID);
  end;


  with dmExibirTabelas.qryAfastamentoServidor do
  begin
    frmUpdateAfastamento.carregarAfastamento
    (
      idExercicio,
      nProcessoSEI,
      idAfastamento,
      dt_Inicio,
      dt_Termino,
      Observacao,
      ID
    );
  end;

  frmUpdateAfastamento.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);

  frmUpdateAfastamento.ShowModal;
  frmUpdateAfastamento.Release;
  frmUpdateAfastamento := nil;

end;

procedure TfrmUpdateServidor.edtNaturalidadePropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtNaturalidade);
end;

procedure TfrmUpdateServidor.lkpEspecialidadePropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(lkpEspecialidade);
end;

procedure TfrmUpdateServidor.edtDt_PosseCargoPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtDt_PosseCargo);
end;

procedure TfrmUpdateServidor.edtDt_ExercicioCargoPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtDt_ExercicioCargo);
end;

procedure TfrmUpdateServidor.edtDt_NomeacaoCargoPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtDt_NomeacaoCargo);
end;

procedure TfrmUpdateServidor.edtDt_NomeacaoCargoDODFPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtDt_NomeacaoCargoDODF);
end;

procedure TfrmUpdateServidor.edtOrgaoOrigemPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtOrgaoOrigem);
end;

procedure TfrmUpdateServidor.cbxCargaHorariaPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(cbxCargaHoraria);
end;

procedure TfrmUpdateServidor.cbxClassePropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(cbxClasse);
end;

procedure TfrmUpdateServidor.cbxPadraoPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(cbxPadrao);
end;

procedure TfrmUpdateServidor.edtCF_NumPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtCF_Num);
end;

procedure TfrmUpdateServidor.cbxNatural_UFPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(cbxNatural_UF);
end;

procedure TfrmUpdateServidor.edtPaiPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtPai);
end;

procedure TfrmUpdateServidor.edtMaePropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtMae);
end;

procedure TfrmUpdateServidor.lkpEstadoCivilPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(lkpEstadoCivil);
end;

procedure TfrmUpdateServidor.cbxTipoSanguineoPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(cbxTipoSanguineo);
end;

procedure TfrmUpdateServidor.edtConjugePropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtConjuge);
end;

procedure TfrmUpdateServidor.edtEnderecoPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtEndereco);
end;

procedure TfrmUpdateServidor.edtBairroPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtBairro);
end;

procedure TfrmUpdateServidor.edtCidadePropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtCidade);
end;

procedure TfrmUpdateServidor.cbxEnderecoUFPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(cbxEnderecoUF);
end;

procedure TfrmUpdateServidor.edtCEPPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtCEP);
end;

procedure TfrmUpdateServidor.edtEmailPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(edtEmail);
end;

procedure TfrmUpdateServidor.cbxGrauInstrucaoPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(cbxGrauInstrucao);
end;

procedure TfrmUpdateServidor.lkpCursoPropertiesChange(Sender: TObject);
begin
  setarCampoAlterado(lkpCurso);
end;

function TfrmUpdateServidor.setarRegistroAGravar: boolean;
var registro: String;
begin
  // Setar vari�veis para tabela tbDados

  with RegistroAGravar do
  begin
    if edtNome.Text <> Null
    then nome[0]  := edtNome.Text
    else nome[0] := '';

    if edtEndereco.Text <> Null
    then endereco[0] :=  edtEndereco.Text
    else endereco[0] := '';

    if edtBairro.Text <> Null
    then Bairro[0] := edtBairro.Text
    else Bairro[0] := '';

    if edtCidade.Text <> Null
    then Cidade[0] := edtCidade.Text
    else Cidade[0] := '';

    if cbxEnderecoUF.EditingValue <> Null
    then EnderecoUF[0] := cbxEnderecoUF.Text
    else EnderecoUF[0] := '';

    if edtCEP.Text <> Null
    then CEP[0] := edtCEP.Text
    else CEP[0] := '';

    if edtCI_Num.Text <> Null
    then ciNum[0] := edtCI_Num.Text
    else ciNum[0] := '';

    if cbxCI_UF.EditingValue <> Null
    then ciUF[0] := cbxCI_UF.Text
    else ciUF[0] := '';

    if edtCI_Emissao.Text <> Null
    then ciEmissao[0] := edtCI_Emissao.Text
    else ciEmissao[0] := '';

    if edtNaturalidade.Text <> Null
    then Naturalidade[0] := edtNaturalidade.Text
    else Naturalidade[0] := '';

    if cbxNatural_UF.EditingValue <> Null
    then naturalUF[0] := cbxNatural_UF.EditingValue
    else naturalUF[0] := '';

    if edtPis_Pasep.Text <> Null
    then pisPasep[0] := edtPis_Pasep.Text
    else pisPasep[0] := '';

    if edtTE_Num.Text <> Null
    then teNum[0] := edtTE_Num.Text
    else teNum[0] := '';

    if edtTE_Zona.Text <> Null
    then teZona[0] := edtTE_Zona.Text
    else teZona[0] := '';

    if edtTE_Secao.Text <> Null
    then teSecao[0] := edtTE_Secao.Text
    else teSecao[0] := '';

    if cbxTE_UF.EditingValue <> Null
    then teUF[0] := cbxTE_UF.EditingValue
    else teUF[0] := '';

    if edtTE_Emissao.Text <> Null
    then teEmissao[0] := edtTE_Emissao.Text
    else teEmissao[0] := '';

    if edtPai.Text <> Null
    then Pai[0] := edtPai.Text
    else Pai[0] := '';

    if edtMae.Text <> Null
    then Mae[0] := edtMae.Text
    else Mae[0] := '';

    if lkpEstadoCivil.EditingValue <> Null
    then EstadoCivil[0] := lkpEstadoCivil.EditingValue
    else EstadoCivil[0] := '';

    if edtConjuge.Text <> Null
    then Conjuge[0] := edtConjuge.Text
    else Conjuge[0] := '';

    if lkpBanco.EditingValue <> Null
    then Banco[0] :=lkpBanco.EditingValue
    else Banco[0] := '';

    if edtAgencia.Text <> Null
    then Agencia[0] := edtAgencia.Text
    else Agencia[0] := '';

    if edtConta.Text <> Null
    then contaBanco[0] := edtConta.Text
    else contaBanco[0] := '';

    if edtOAB_Num.Text <> Null
    then oabNum[0] := edtOAB_Num.Text
    else oabNum[0] := '';

    if edtOAB_Secao.Text <> Null
    then oabSecao[0] := edtOAB_Secao.Text
    else oabSecao[0] := '';

    if cbxGrauInstrucao.EditingValue <> Null
    then GrauInstrucao[0] := cbxGrauInstrucao.EditingValue
    else GrauInstrucao[0] := '';

    if lkpCurso.EditingValue <> Null
    then Curso[0] := lkpCurso.EditingValue
    else Curso[0] := '';

    if cbxTipoSanguineo.EditingValue <> Null
    then tipoSangue[0] := cbxTipoSanguineo.EditingValue
    else tipoSangue[0] := '';

    if edtEmail.Text <> Null
    then Email[0] := edtEmail.Text
    else Email[0] := '';


    // Setar vari�ves par tbServidor

    if edtidServidor.Text <> Null
    then idServidor[0] := Trim(edtidServidor.Text)
    else idServidor[0] := '';


    if lkpCargo.EditingValue <> Null
    then idCargo[0] := Trim(lkpCargo.EditingValue)
    else idCargo[0] := '';

    if lkpEspecialidade.EditingValue <> Null
//    then especialidade[0] := lkpEspecialidade.EditingValue
//    else especialidade[0] := '';

    then idEspecialidade[0] := lkpEspecialidade.EditingValue
    else idEspecialidade[0] := '';

    // 8	CF_Num 9	Ramal 10	Sala 11	Classe
    // 12	Padrao (n�o se aplica para ramal e sala)

    if edtCF_Num.Text <> Null
    then cfNum[0] := Trim(edtCF_Num.Text)
    else cfNum[0] := '';

    if cbxClasse.Text <> Null
    then Classe[0] := Trim(cbxClasse.Text)
    else Classe[0] := '';

    if cbxPadrao.Text <> Null
    then Padrao[0] := Trim(cbxPadrao.Text)
    else Padrao[0] := '';


    if chkRequisitado.Checked
    then Requisitado[0] := '1'
    else Requisitado[0] := '0';


    if edtOrgaoOrigem.Text <> ''
    then orgaoOrigem[0] := edtOrgaoOrigem.Text
    else orgaoOrigem[0] := '';

    if chkAuxTransporte.Checked
    then AuxTransporte[0] := '1'
    else AuxTransporte[0] := '0';


    if cbxCargaHoraria.Text <> Null
    then CargaHoraria[0] := Trim(cbxCargaHoraria.Text)
    else CargaHoraria[0] := '';

///////////// Dados do est�gio //////////////////////////////////////

    //1
    if edtSupervisor_Estagiario.Text <> Null
    then Supervisor_Estagiario[0] := Trim(edtSupervisor_Estagiario.Text)
    else Supervisor_Estagiario[0] := '';
    //2
    if edtDt_InicioContrato1_Estagiario.Text <> Null
    then Dt_InicioContrato1_Estagiario[0] := Trim(edtDt_InicioContrato1_Estagiario.Text)
    else Dt_InicioContrato1_Estagiario[0] := '';
    //3
    if edtDt_InicioContrato2_Estagiario.Text <> Null
    then Dt_InicioContrato2_Estagiario[0] := Trim(edtDt_InicioContrato2_Estagiario.Text)
    else Dt_InicioContrato2_Estagiario[0] := '';
    //4
    if edtDt_InicioContrato3_Estagiario.Text <> Null
    then Dt_InicioContrato3_Estagiario[0] := Trim(edtDt_InicioContrato3_Estagiario.Text)
    else Dt_InicioContrato3_Estagiario[0] := '';
    //5
    if edtDt_InicioContrato4_Estagiario.Text <> Null
    then Dt_InicioContrato4_Estagiario[0] := Trim(edtDt_InicioContrato4_Estagiario.Text)
    else Dt_InicioContrato4_Estagiario[0] := '';
    //6
    if edtDt_TerminoContrato1_Estagiario.Text <> Null
    then Dt_TerminoContrato1_Estagiario[0] := Trim(edtDt_TerminoContrato1_Estagiario.Text)
    else Dt_TerminoContrato1_Estagiario[0] := '';
    //7
    if edtDt_TerminoContrato2_Estagiario.Text <> Null
    then Dt_TerminoContrato2_Estagiario[0] := Trim(edtDt_TerminoContrato2_Estagiario.Text)
    else Dt_TerminoContrato2_Estagiario[0] := '';
    //8
    if edtDt_TerminoContrato3_Estagiario.Text <> Null
    then Dt_TerminoContrato3_Estagiario[0] := Trim(edtDt_TerminoContrato3_Estagiario.Text)
    else Dt_TerminoContrato3_Estagiario[0] := '';
    //9
    if edtDt_TerminoContrato4_Estagiario.Text <> Null
    then Dt_TerminoContrato4_Estagiario[0] := Trim(edtDt_TerminoContrato4_Estagiario.Text)
    else Dt_TerminoContrato4_Estagiario[0] := '';
    //10
    if edtInstituicaoEnsino.Text <> Null
    then InstituicaoEnsino[0] := Trim(edtInstituicaoEnsino.Text)
    else InstituicaoEnsino[0] := '';
    //11
    if edtTurnoEstagio.Text <> Null
    then TurnoEstagio[0] := Trim(edtTurnoEstagio.Text)
    else TurnoEstagio[0] := '';
    //12
    if mmoObservacao_Estagio.Text <> Null
    then observacao[0] := Trim(mmoObservacao_Estagio.Text)
    else observacao[0] := '';
    //13
    if edtSemestre.Text <> Null
    then Semestre[0] := Trim(edtSemestre.Text)
    else Semestre[0] := '';

///////////////////////////////////////////////////

  end;

  with RegistroAGravar do
  begin
    registro := nome[0] + chr(13) + idCargo[0] + chr(13);
  end;

  monitorarAcoesDaSessao('ufUpdateServidor', 'setarRegistroNovo', registro);

  Result := true;
end;

procedure TfrmUpdateServidor.edtNaturalidadeExit(Sender: TObject);
begin
  edtNaturalidade.Text :=
  AnsiUpperCase(RemoveEspaco(edtNaturalidade.Text));
end;

function TfrmUpdateServidor.carregarDadosEstagio: boolean;
begin
  with dmPessoal.qryPesquisa do
  begin
    if FieldByName('Dt_InicioContrato1_Estagiario').IsNull
    then edtDt_InicioContrato1_Estagiario.Text := ''
    else edtDt_InicioContrato1_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato1_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato1_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_InicioContrato1_Estagiario[0]   := Trim(edtDt_InicioContrato1_Estagiario.Text);

    if FieldByName('Dt_InicioContrato2_Estagiario').IsNull
    then edtDt_InicioContrato2_Estagiario.Text := ''
    else edtDt_InicioContrato2_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato2_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato2_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_InicioContrato2_Estagiario[0]   := Trim(edtDt_InicioContrato2_Estagiario.Text);

    if FieldByName('Dt_InicioContrato3_Estagiario').IsNull
    then edtDt_InicioContrato3_Estagiario.Text := ''
    else edtDt_InicioContrato3_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato3_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato3_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_InicioContrato3_Estagiario[0]   := Trim(edtDt_InicioContrato3_Estagiario.Text);

    if FieldByName('Dt_InicioContrato4_Estagiario').IsNull
    then edtDt_InicioContrato4_Estagiario.Text := ''
    else edtDt_InicioContrato4_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato4_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato4_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_InicioContrato4_Estagiario[0]   := Trim(edtDt_InicioContrato4_Estagiario.Text);


    if FieldByName('Dt_TerminoContrato1_Estagiario').IsNull
    then edtDt_TerminoContrato1_Estagiario.Text := ''
    else edtDt_TerminoContrato1_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato1_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato1_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_TerminoContrato1_Estagiario[0]   := Trim(edtDt_TerminoContrato1_Estagiario.Text);


    if FieldByName('Dt_TerminoContrato2_Estagiario').IsNull
    then edtDt_TerminoContrato2_Estagiario.Text := ''
    else edtDt_TerminoContrato2_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato2_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato2_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_TerminoContrato2_Estagiario[0]   := Trim(edtDt_TerminoContrato2_Estagiario.Text);

    if FieldByName('Dt_TerminoContrato3_Estagiario').IsNull
    then edtDt_TerminoContrato3_Estagiario.Text := ''
    else edtDt_TerminoContrato3_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato3_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato3_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_TerminoContrato3_Estagiario[0]   := Trim(edtDt_TerminoContrato3_Estagiario.Text);

    if FieldByName('Dt_TerminoContrato4_Estagiario').IsNull
    then edtDt_TerminoContrato4_Estagiario.Text := ''
    else edtDt_TerminoContrato4_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato4_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato4_Estagiario no registro EstadoEdicao
    EstadoEdicao.Dt_TerminoContrato4_Estagiario[0]   := Trim(edtDt_TerminoContrato4_Estagiario.Text);

    if FieldByName('Supervisor_Estagiario').IsNull
    then edtSupervisor_Estagiario.Text := ''
    else edtSupervisor_Estagiario.Text := Trim(FieldValues['Supervisor_Estagiario']);

    // Manter o valor do campo Supervisor_Estagiario no registro EstadoEdicao
    EstadoEdicao.Supervisor_Estagiario[0]   := Trim(edtSupervisor_Estagiario.Text);

    if FieldByName('InstituicaoEnsino').IsNull
    then edtInstituicaoEnsino.Text := ''
    else edtInstituicaoEnsino.Text := Trim(FieldValues['InstituicaoEnsino']);

    // Manter o valor do campo Supervisor_Estagiario no registro EstadoEdicao
    EstadoEdicao.InstituicaoEnsino[0]   := Trim(edtInstituicaoEnsino.Text);


    if FieldByName('TurnoEstagio').IsNull
    then edtTurnoEstagio.Text := ''
    else edtTurnoEstagio.Text := Trim(FieldValues['TurnoEstagio']);

    // Manter o valor do campo TurnoEstagio no registro EstadoEdicao
    EstadoEdicao.TurnoEstagio[0]   := Trim(edtTurnoEstagio.Text);

    if FieldByName('Semestre').IsNull
    then edtSemestre.Text := ''
    else edtSemestre.Text := Trim(FieldValues['Semestre']);

    // Manter o valor do campo Semestre no registro EstadoEdicao
    EstadoEdicao.Semestre[0]   := Trim(edtSemestre.Text);

    if FieldByName('Observacao').IsNull
    then mmoObservacao_Estagio.Text := ''
    else mmoObservacao_Estagio.Text := Trim(FieldValues['Observacao']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.observacao[0]   := Trim(mmoObservacao_Estagio.Text);
  end;
end;

function TfrmUpdateServidor.carregarDadosFuncionais: boolean;
begin
  with dmPessoal.qryPesquisa do
  begin

    if FieldByName('idServidor').IsNull
    then edtidServidor.Text := ''
    else edtidServidor.Text := Trim(FieldValues['idServidor']);

    // Manter o valor do campo idServidor no registro EstadoEdicao
    EstadoEdicao.idServidor[0]  := edtidServidor.Text;


    if FieldByName('descricaoCargo').IsNull
    then lkpCargo.Text := ''
    else lkpCargo.Text := Trim(FieldValues['descricaoCargo']);

    // Manter o valor do campo Cargo no registro EstadoEdicao
    EstadoEdicao.idCargo[0]    := Trim(lkpCargo.Text);


    {if FieldByName('Especialidade').IsNull
    then lkpEspecialidade.Text := ''
    else lkpEspecialidade.Text := Trim(FieldValues['Especialidade']);}

    //ShowMessage(FieldByName('idEspecialidade').AsString);
    //abort;

    if FieldByName('idEspecialidade').IsNull
    then
      lkpEspecialidade.Text := ''
    else
    begin
      lkpEspecialidade.Text := Trim(FieldValues['Especialidade']);
      EstadoEdicao.idEspecialidade[0] := Trim(lkpEspecialidade.EditValue);
    end;

    // Manter o valor do campo Especialidade no registro EstadoEdicao
//    EstadoEdicao.especialidade[0]    := Trim(lkpEspecialidade.Text);




    if FieldByName('Dt_PosseCargo').IsNull
    then edtDt_PosseCargo.Text := ''
    else edtDt_PosseCargo.Text := Trim(FieldValues['Dt_PosseCargo']);

    // Manter o valor do campo Dt_PosseCargo no registro EstadoEdicao
    EstadoEdicao.dtPosseCargo[0]    := Trim(edtDt_PosseCargo.Text);

    if FieldByName('Dt_ExercicioCargo').IsNull
    then edtDt_ExercicioCargo.Text := ''
    else edtDt_ExercicioCargo.Text := Trim(FieldValues['Dt_ExercicioCargo']);

    // Manter o valor do campo Dt_ExercicioCargo no registro EstadoEdicao
    EstadoEdicao.dtExercicioCargo[0]   := Trim(edtDt_ExercicioCargo.Text);

    if FieldByName('Dt_NomeacaoCargo').IsNull
    then edtDt_NomeacaoCargo.Text := ''
    else edtDt_NomeacaoCargo.Text := Trim(FieldValues['Dt_NomeacaoCargo']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.dtNomeacaoCargo[0]   := Trim(edtDt_NomeacaoCargo.Text);

    if FieldByName('Dt_NomeacaoCargoDODF').IsNull
    then edtDt_NomeacaoCargoDODF.Text := ''
    else edtDt_NomeacaoCargoDODF.Text := Trim(FieldValues['Dt_NomeacaoCargoDODF']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.dtNomeacaoCargoDODF[0]   := Trim(edtDt_NomeacaoCargoDODF.Text);

    if FieldByName('descricaoLotacao').IsNull
    then txtLotacao.Caption := '' // lkpLotacao.Text := ''
    else txtLotacao.Caption :=    // lkpLotacao.Text :=
    Trim(FieldValues['descricaoLotacao']);

    // Manter o valor do campo Lotacao no registro EstadoEdicao
    EstadoEdicao.idLotacao[0]  := Trim(txtLotacao.Caption);


    //lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descricaoLotacao,

    if not FieldByName('requisitado').IsNull
    then chkRequisitado.Checked := false
    else chkRequisitado.Checked := true;

    // Manter o valor do campo <> no registro EstadoEdicao
//    EstadoEdicao.[0]   := Trim();

    if FieldByName('OrgaoDeOrigem').IsNull
    then edtOrgaoOrigem.Text := ''
    else edtOrgaoOrigem.Text := Trim(FieldValues['OrgaoDeOrigem']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.orgaoOrigem[0]   := Trim(edtOrgaoOrigem.Text);

    if FieldByName('CargaHoraria').IsNull
    then cbxCargaHoraria.Text := ''
    else cbxCargaHoraria.Text := Trim(FieldValues['CargaHoraria']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.cargaHoraria[0]   := Trim(cbxCargaHoraria.Text);

    if FieldByName('Classe').IsNull
    then cbxClasse.Text := ''
    else cbxClasse.Text := Trim(FieldValues['Classe']);

        // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.classe[0]   := Trim(cbxClasse.Text);

    if FieldByName('Padrao').IsNull
    then cbxPadrao.Text := ''
    else cbxPadrao.Text := Trim(FieldValues['Padrao']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.padrao[0]   := Trim(cbxPadrao.Text);


    if FieldByName('Supervisor_Estagiario').IsNull
    then edtSupervisor_Estagiario.Text := ''
    else edtSupervisor_Estagiario.Text := Trim(FieldValues['Supervisor_Estagiario']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.Supervisor_Estagiario[0]   := Trim(edtSupervisor_Estagiario.Text);

  end;
end;

function TfrmUpdateServidor.carregarDadosPessoais: boolean;
begin
  with dmPessoal.qryPesquisa do
  begin

    if FieldByName('ID').IsNull then
    begin
      ShowMessage('Erro cr�tico');
      Application.Terminate;
    end;

    lbl_IDP.Caption         := FieldValues['idPessoal'];
    lbl_IDS.Caption         := FieldValues['ID'];


    if FieldByName('CPF').IsNull
    then edtCPF.Text := ''
    else edtCPF.Text := Trim(FieldValues['CPF']);

    // Manter o valor do campo Nome no registro EstadoEdicao
    EstadoEdicao.cpf[0]  := edtCPF.Text;

    if FieldByName('dt_nascimento').IsNull
    then edtDtNascimento.Text := ''
    else edtDtNascimento.Text := Trim(FieldValues['dt_nascimento']);

    // Manter o valor do campo dt_Nascimento no registro EstadoEdicao
    EstadoEdicao.dtNascimento[0]  := edtDtNascimento.Text;

    if FieldByName('Nome').IsNull
    then edtNome.Text := ''
    else edtNome.Text := Trim(FieldValues['Nome']);

    // Manter o valor do campo Nome no registro EstadoEdicao
    EstadoEdicao.nome[0]  := edtNome.Text;


    // Aba dados pessoais

    if FieldByName('Naturalidade').IsNull
    then edtNaturalidade.Text := ''
    else edtNaturalidade.Text := Trim(FieldValues['Naturalidade']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.naturalidade[0]   := Trim(edtNaturalidade.Text);

    // Manter o valor do campo Naturalidade no registro EstadoEdicao
    EstadoEdicao.naturalidade[0]  := edtNaturalidade.Text;

    if FieldByName('Natural_UF').IsNull
    then cbxNatural_UF.Text := ''
    else cbxNatural_UF.Text := Trim(FieldValues['Natural_UF']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.naturalUF[0]   := Trim(cbxNatural_UF.Text);

    if FieldByName('Pai').IsNull
    then edtPai.Text := ''
    else edtPai.Text := Trim(FieldValues['Pai']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.pai[0]   := Trim(edtPai.Text);

    if FieldByName('Mae').IsNull
    then edtMae.Text := ''
    else edtMae.Text := Trim(FieldValues['Mae']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.mae[0]   := Trim(edtMae.Text);

    if FieldByName('EstadoCivil').IsNull
    then lkpEstadoCivil.Text := ''
    else lkpEstadoCivil.Text := Trim(FieldValues['EstadoCivil']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.estadoCivil[0]   := Trim(lkpEstadoCivil.Text);

    if FieldByName('TipoSanguineo').IsNull
    then cbxTipoSanguineo.Text := ''
    else cbxTipoSanguineo.Text := Trim(FieldValues['TipoSanguineo']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.tipoSangue[0]   := Trim(cbxTipoSanguineo.Text);

    if FieldByName('Conjuge').IsNull
    then edtConjuge.Text := ''
    else edtConjuge.Text := Trim(FieldValues['Conjuge']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.conjuge[0]   := Trim(edtConjuge.Text);

    if FieldByName('Endereco').IsNull
    then edtEndereco.Text := ''
    else edtEndereco.Text := Trim(FieldValues['Endereco']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.endereco[0]   := Trim(edtEndereco.Text);

    if FieldByName('Bairro').IsNull
    then edtBairro.Text := ''
    else edtBairro.Text := Trim(FieldValues['Bairro']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.bairro[0]   := Trim(edtBairro.Text);

    if FieldByName('Cidade').IsNull
    then edtCidade.Text := ''
    else edtCidade.Text := Trim(FieldValues['Cidade']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.cidade[0]   := Trim(edtCidade.Text);

    if FieldByName('UF').IsNull
    then cbxEnderecoUF.Text := ''
    else cbxEnderecoUF.Text := Trim(FieldValues['UF']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.enderecoUF[0]   := Trim(cbxEnderecoUF.Text);

    if FieldByName('CEP').IsNull
    then edtCEP.Text := ''
    else edtCEP.Text := Trim(FieldValues['CEP']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.cep[0]   := Trim(edtCEP.Text);

    if FieldByName('Grau').IsNull
    then cbxGrauInstrucao.Text := ''
    else cbxGrauInstrucao.Text := Trim(FieldValues['Grau']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.grauInstrucao[0]   := Trim(cbxGrauInstrucao.Text);

    if FieldByName('Email').IsNull
    then edtEmail.Text := ''
    else edtEmail.Text := Trim(FieldValues['Email']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.email[0]   := Trim(edtEmail.Text);

    if FieldByName('Curso').IsNull
    then lkpCurso.Text := ''
    else lkpCurso.Text := Trim(FieldValues['Curso']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.curso[0]   := Trim(lkpCurso.Text);
  end;

  SetarAlteracaoDesfeita;
  setarCorPadrao;
end;

function TfrmUpdateServidor.carregarDocumentos: boolean;
begin
  with dmPessoal.qryPesquisa do
  begin
    // Aba documentos

    if FieldByName('CI_NUM').IsNull
    then edtCI_NUM.Text := ''
    else edtCI_NUM.Text := Trim(FieldValues['CI_NUM']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.ciNum[0]   := Trim(edtCI_Num.Text);

    if FieldByName('CI_Emissao').IsNull
    then edtCI_Emissao.Text := ''
    else edtCI_Emissao.Text := Trim(FieldValues['CI_Emissao']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.ciEmissao[0]   := Trim(edtCI_Emissao.Text);

    if FieldByName('CI_UF').IsNull
    then cbxCI_UF.Text := ''
    else cbxCI_UF.Text := Trim(FieldValues['CI_UF']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.ciUF[0]   := Trim(cbxCI_UF.Text);

    if FieldByName('TE_Num').IsNull
    then edtTE_Num.Text := ''
    else edtTE_Num.Text := Trim(FieldValues['TE_Num']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.teNum[0]   := Trim(edtTE_Num.Text);

    if FieldByName('TE_Zona').IsNull
    then edtTE_Zona.Text := ''
    else edtTE_Zona.Text := Trim(FieldValues['TE_Zona']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.teZona[0]   := Trim(edtTE_Zona.Text);

    if FieldByName('TE_Secao').IsNull
    then edtTE_Secao.Text := ''
    else edtTE_Secao.Text := Trim(FieldValues['TE_Secao']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.teSecao[0]   := Trim(edtTE_Secao.Text);

    if FieldByName('TE_UF').IsNull
    then cbxTE_UF.Text := ''
    else cbxTE_UF.Text := Trim(FieldValues['TE_UF']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.teUF[0]   := Trim(cbxTE_UF.Text);

    if FieldByName('TE_Emissao').IsNull
    then edtTE_Emissao.Text := ''
    else edtTE_Emissao.Text := Trim(FieldValues['TE_Emissao']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.teEmissao[0]   := Trim(edtTE_Emissao.Text);

    if FieldByName('Pis_Pasep').IsNull
    then edtPis_Pasep.Text := ''
    else edtPis_Pasep.Text := Trim(FieldValues['Pis_Pasep']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.pisPasep[0]   := Trim(edtPis_Pasep.Text);

    {
    if FieldByName('EstadoCivil').IsNull
    then lkpEstadoCivil.Text := ''
    else lkpEstadoCivil.Text := Trim(FieldValues['EstadoCivil']);
    }

    //ShowMessage(FieldValues['Banco']);
    //ShowMessage(FieldByName('idBanco').AsString);

    {
    if FieldByName('idBanco').IsNull
    then lkpBanco.Text := ''
    else lkpBanco.Text := FieldValues['Banco']; // Falhou quando usou a fun��o Trim -> Trim(FieldValues['Banco']);

    lkpNomeBanco.Text := FieldValues['Banco'];
    }

    // Definir o banco como BRB
    lkpBanco.EditValue := '070';

    if FieldByName('Agencia').IsNull
    then edtAgencia.Text := ''
    else edtAgencia.Text := Trim(FieldValues['Agencia']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.agencia[0]   := Trim(edtAgencia.Text);

    if FieldByName('Conta').IsNull
    then edtConta.Text := ''
    else edtConta.Text := Trim(FieldValues['Conta']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.contaBanco[0]   := Trim(edtConta.Text);

    if FieldByName('OAB_Num').IsNull
    then edtOAB_Num.Text := ''
    else edtOAB_Num.Text := Trim(FieldValues['OAB_Num']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.oabNum[0]   := Trim(edtOAB_Num.Text);

    if FieldByName('OAB_Secao').IsNull
    then edtOAB_Secao.Text := ''
    else edtOAB_Secao.Text := Trim(FieldValues['OAB_Secao']);

    // Manter o valor do campo <> no registro EstadoEdicao
    EstadoEdicao.oabSecao[0]   := Trim(edtOAB_Secao.Text);
  end;
end;

procedure TfrmUpdateServidor.edtSupervisor_EstagiarioPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtSupervisor_Estagiario);
end;

procedure TfrmUpdateServidor.edtDt_InicioContrato1_EstagiarioPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtDt_InicioContrato1_Estagiario);
end;

procedure TfrmUpdateServidor.Button2Click(Sender: TObject);
begin
//  ShowMessage(SQLUpdateServidor(lbl_IDP.Caption, lbl_IDS.Caption ));
end;

procedure TfrmUpdateServidor.btnIncluirTelefoneClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateTelefone, frmUpdateTelefone);
  frmUpdateTelefone.setarOperacao(1);
  frmUpdateTelefone.configurarOperacao;
  frmUpdateTelefone.lbl_IDP.Caption := lbl_IDP.Caption;
  
  frmUpdateTelefone.setFormQueChamou('frmUpdateServidor');

  {frmUpdateTelefone.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);
  }

  frmUpdateTelefone.ShowModal;
  frmUpdateTelefone.Release;
  frmUpdateTelefone := nil;
end;

procedure TfrmUpdateServidor.tshFeriasShow(Sender: TObject);
begin
  with dmExibirTabelas.qryFeriasServidor do
  begin
    if (Active) and (RecordCount > 0)
    then btnEditarFerias.Enabled := true
    else btnEditarFerias.Enabled := false;
  end
end;

procedure TfrmUpdateServidor.btnExcluirAfastamentoClick(Sender: TObject);
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Aten��o! Confirma esta';
  wOperacao := 'exclus�o';
  wMens := wMens + ' ' + wOperacao + '?';

  if ConfirmaAcao(wMens, 3) = 1 then
  begin
    if frmUpdateAfastamento.excluirAfastamento
    (dmExibirTabelas.qryAfastamentoServidor.FieldValues['ID'])
    then
    begin
      ShowMessage('Registro exclu�do.');

      wEvento := UpperCase(wOperacao)+ ' de afastamento.';

      with dmExibirTabelas.qryAfastamentoServidor do
      begin
       if not FieldByName('descricao').IsNull
       then
        wEvento := wEvento + ' '
        + FieldValues['idAfastamento']
        + ' - ' + FieldValues['descricao'];

        if not FieldByName('idExercicio').IsNull then
        wEvento := wEvento
        + ', Exerc�cio: '
        + FieldValues['idExercicio'];

        if not FieldByName('Dt_Inicio').IsNull then
        wEvento := wEvento
        + ', Data de in�cio: ' + DateToStr(FieldValues['Dt_Inicio']);

        if not FieldByName('Dt_Termino').IsNull then
        wEvento := wEvento
        + ', Data de t�rmino: ' + DateToStr(FieldValues['Dt_Termino']);

        IncluirLog
        (
          DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
          RetornaData(2),
          'tbAfastamento',
          'NULL',
          lbl_IDP.Caption, // FieldValues['idPessoal'],
          edtidServidor.Text, //FieldValues['idServidor'], // desabilitar este campo para edi��o
          'TODOS',
          wEvento
        );

        ShowMessage('Registrado no log de altera��es.');

      end;

    end;

    dmExibirTabelas.qryAfastamentoServidor.Active := false;
    dmExibirTabelas.qryAfastamentoServidor.Active := true;
  end                                                     
end;

procedure TfrmUpdateServidor.btnExcluirAbonoClick(Sender: TObject);
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Aten��o! Confirma esta';
  wOperacao := 'exclus�o';
  wMens := wMens + ' ' + wOperacao + '?';

  if ConfirmaAcao(wMens, 3) = 1 then
  begin
    wEvento := UpperCase(wOperacao)+ ' de abono.'
    + ' Exerc�cio: ' + dmExibirTabelas.qryAbonoServidor.FieldValues['idExercicio']
    + ' Datas: ';

    with dmExibirTabelas.qryAbonoServidor do
    begin
      if not FieldByName('Dt_1').IsNull then
      wEvento := wEvento + DateToStr(FieldValues['dt_1']);

      if not FieldByName('Dt_2').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_2']);

      if not FieldByName('Dt_3').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_3']);

      if not FieldByName('Dt_4').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_4']);

      if not FieldByName('Dt_5').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_5']);
    end;

    if DMExcluirFeriasAbonoAfastamento.excluirAbono
    (dmExibirTabelas.qryAbonoServidor.FieldValues['ID'])
    then
    begin
      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
      RetornaData(2),
      'tbAbono',
      'NULL',
      dmPessoal.qryPesquisa.FieldValues['idPessoal'],
      dmPessoal.qryPesquisa.FieldValues['idServidor'],
      'TODOS',
      wEvento
      );

      ShowMessage('Registro exclu�do.');
    end;

    dmExibirTabelas.qryAbonoServidor.Active := false;
    dmExibirTabelas.qryAbonoServidor.Active := true;

    //frmUpdateAbonoAnualGeral.Close;
  end                                   
end;

procedure TfrmUpdateServidor.btnEditarAbonoClick(Sender: TObject);
var ID, idExercicio, ProcessoSEI, dt_1, dt_2, dt_3, dt_4, dt_5: String;
begin
  Application.CreateForm(TfrmUpdateAbonoAnual, frmUpdateAbonoAnual);
  frmUpdateAbonoAnual.setarOperacao(2); // Altera��o


  with dmExibirTabelas.qryAbonoServidor do
  begin
    ID := FieldValues['ID'];

    if not FieldByName('idExercicio').IsNull then
    idExercicio := FieldValues['idExercicio'];

    if not FieldByName('nProcessoSEI').IsNull then
    ProcessoSEI := FieldValues['nProcessoSEI']
    //  else ProcessoSEI := ''
    ;
    if not FieldByName('Dt_1').IsNull then
    dt_1 := FieldValues['Dt_1'];

    if not FieldByName('Dt_2').IsNull then
    dt_2 := FieldValues['Dt_2'];

    if not FieldByName('Dt_3').IsNull then
    dt_3 := FieldValues['Dt_3'];

    if not FieldByName('Dt_4').IsNull then
    dt_4 := FieldValues['Dt_4'];

    if not FieldByName('Dt_5').IsNull then
    dt_5 := FieldValues['Dt_5'];
  end;


  frmUpdateAbonoAnual.configurarOperacao;
  frmUpdateAbonoAnual.carregarAbonoParaEdicao(ID, idExercicio, ProcessoSEI, dt_1, dt_2, dt_3, dt_4, dt_5);

  //frmUpdateAbonoAnual.bloquearCampos;
  //frmUpdateAbonoAnual.edtProcessoSEI.SetFocus;

  frmUpdateAbonoAnual.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);


  frmUpdateAbonoAnual.setFormQueChamou('frmUpdateServidor');

  frmUpdateAbonoAnual.ShowModal;
  frmUpdateAbonoAnual.Release;
  frmUpdateAbonoAnual := nil;
end;

function TfrmUpdateServidor.jaExisteFerias(idPessoal, idServidor,
  idExercicio: String): boolean;
begin

end;

procedure TfrmUpdateServidor.edtNaturalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.edtPaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.edtMaeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.edtConjugeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.edtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.edtBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.edtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateServidor.setarTamanhoCampos;
begin
  edtNaturalidade.Properties.MaxLength := 30;
  edtPai.Properties.MaxLength := 50;
  edtMae.Properties.MaxLength := 50;
  edtConjuge.Properties.MaxLength := 50;
  edtBairro.Properties.MaxLength := 30;
  edtEndereco.Properties.MaxLength := 100;
  edtEmail.Properties.MaxLength := 40;

  edtCI_Num.Properties.MaxLength := 16;
  edtTE_Num.Properties.MaxLength := 12;
  edtTE_Zona.Properties.MaxLength := 3;
  edtTE_Secao.Properties.MaxLength := 5;
  edtPis_Pasep.Properties.MaxLength := 11;
  edtAgencia.Properties.MaxLength := 4;
  edtConta.Properties.MaxLength := 7;
  edtOAB_Num.Properties.MaxLength := 10;
  edtOAB_Secao.Properties.MaxLength := 3;
end;

end.
