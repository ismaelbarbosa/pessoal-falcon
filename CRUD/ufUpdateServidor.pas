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
  TEstadoEdicao = record
    Nome, CPF, dtNascimento, idServidor,
    Cargo,
    Lotacao,
    DtExercicioCargo: Array[0..1] of String;
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
    grpbxDadosFuncionais: TGroupBox;
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
    edtAverbacaoServPublico: TDBEdit;
    edtDt_PrimeiroExercicioGDF: TcxDBDateEdit;
    edtAverbacaoGDF: TcxDBDateEdit;
    chkAuxTransporte: TcxDBCheckBox;
    edtCF_Num: TcxDBTextEdit;
    tshDadosPessoais: TcxTabSheet;
    grpbxDados: TGroupBox;
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
    tshDocumentos: TcxTabSheet;
    grpbxDocum: TGroupBox;
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
    tshTelefones: TcxTabSheet;
    grpbxTelefone: TGroupBox;
    lblTipo: TLabel;
    btnSelTipoTelefone: TSpeedButton;
    txtDesc_TipoTel: TDBText;
    lblNumero: TLabel;
    btnGravarTel: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnEditarTel: TSpeedButton;
    btnInserirTel: TSpeedButton;
    btnCancelarTel: TSpeedButton;
    edtTipoTel: TDBEdit;
    edtNumero: TDBEdit;
    SplitterDocumentos: TcxSplitter;
    btnEditarServidor: TcxButton;
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
    edtNaturalidade: TcxTextEdit;
    edtCI_Num: TcxTextEdit;
    cbxNatural_UF: TcxComboBox;
    cbxTipoSanguineo: TcxComboBox;
    cbxEnderecoUF: TcxComboBox;
    edtPai: TcxTextEdit;
    edtMae: TcxTextEdit;
    edtConjuge: TcxTextEdit;
    edtEndereco: TcxTextEdit;
    edtBairro: TcxTextEdit;
    edtCidade: TcxTextEdit;
    edtCEP: TcxTextEdit;
    edtEmail: TcxTextEdit;
    cbxGrauInstrucao: TcxComboBox;
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
    lkpEstadoCivil: TcxLookupComboBox;
    lkpCurso: TcxLookupComboBox;
    lkpBanco: TcxLookupComboBox;
    edtTE_Emissao: TcxDateEdit;
    edtCI_Emissao: TcxDateEdit;
    tshFerias: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
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
    cxGridLevel3: TcxGridLevel;
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
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label2: TLabel;
    pnlBotoesFerias: TPanel;
    lblDt_NomeacaoFuncaoDODF: TLabel;
    txtDtNomeacaFuncaoDODF: TDBText;
    txtDtPosseFuncao: TDBText;
    Label5: TLabel;
    txtDtDesligFuncaoDODF: TDBText;
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
    Button1: TButton;
    txtDFG: TDBText;
    DBText9: TDBText;
    tbvHistoricoFuncoesColumn1: TcxGridDBColumn;
    tshLotacoes: TcxTabSheet;
    cxGroupBox8: TcxGroupBox;
    btnNovaLotacao: TcxButton;
    txtLotacao: TDBText;
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
    cxGroupBox9: TcxGroupBox;
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
    cxGroupBox10: TcxGroupBox;
    grdFerias: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel2: TPanel;
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
    cxGroupBox11: TcxGroupBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    Panel3: TPanel;
    txtDescricaoLotacaoHistorico: TDBText;
    Label48: TLabel;
    DBText50: TDBText;
    cxButton4: TcxButton;
    txtDescricaoLotacao: TDBText;
    btnEditarHistoricoEE: TcxButton;
    Label15: TLabel;
    txtDtPosseEE: TDBText;
    btnEditarHistorico: TcxButton;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    txtSiglaOEHis: TDBText;
    txtSiglaOE: TDBText;
    Label16: TLabel;
    txtDtInicioEEHis: TDBText;
    Label19: TLabel;
    lbl_IDS: TLabel;
    Label34: TLabel;
    lbl_IDP: TLabel;
    chkPessoal: TcxCheckBox;
    chkServidor: TcxCheckBox;
    chkDados: TcxCheckBox;
    chkDatas: TcxCheckBox;
    btnExcluirFuncao: TcxButton;
    btnEditarFuncao: TcxButton;
    txtIdFun: TDBText;
    DBText11: TDBText;
    btnIncluirFerias: TcxButton;
    btnEditarFerias: TcxButton;
    btnExcluirFerias: TcxButton;
    btnIncluirAbono: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
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
    cxGridLevel6: TcxGridLevel;
    grdAbonoAnual: TcxGrid;
    tbvAbonoAnual: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    tvcDt_1: TcxGridDBColumn;
    tvcDt_2: TcxGridDBColumn;
    tvcDt_3: TcxGridDBColumn;
    tvcDt_4: TcxGridDBColumn;
    tvcDt_5: TcxGridDBColumn;
    grdFeriasLevel1: TcxGridLevel;
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
    tvSubstProcurador: TcxGridDBTableView;
    tvSubstProcuradorinicio: TcxGridDBColumn;
    tvSubstProcuradortermino: TcxGridDBColumn;
    tvSubstProcuradorndias: TcxGridDBColumn;
    tvSubstProcuradornProcessoSEI: TcxGridDBColumn;
    lvSubstProcurador: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tvSubstProcuradorColumn1: TcxGridDBColumn;
    txtMatricula: TDBText;
    btnIncluirAfastamento: TcxButton;
    btnEditarAfastamento: TcxButton;
    btnExcluirAfastamento: TcxButton;
    Label7: TLabel;
    Label17: TLabel;
    cxFontNameComboBox1: TcxFontNameComboBox;
    tbvHistoricoFuncoesColumn3: TcxGridDBColumn;
    procedure btnGravarServidorClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarServidorClick(Sender: TObject);
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
  private
    RegistroAlterado: boolean;
    PodeDesfazerCampo: boolean;
  public
    function setarCorPadrao: boolean;
    function checarEstadoRegistro: Integer;
    procedure desabilitarEdicao;
    procedure habilitarEdicao;
    procedure setarCampoAlterado(Campo: TComponent);
    procedure SetarAlteracaoDesfeita;
    procedure SetarEstadoDoRegistro;
    procedure desfazerAlteracaoCampo(Campo: TComponent);

    procedure preencherCamposUF;
    function carregarDados:boolean;

    function retornaSQLUpdatePessoal(pIDP: String): String;
    function retornaSQLUpdateServidor(pIDP, pIDS: String): String;
    function retornaSQLUpdateDados(pIDP: String): String;
    function retornaSQLUpdateDatas(pIDP, pIDS: String): String;

    procedure refreshDados;
    function servidorOcupaFuncao(idPessoal, idServidor: String):boolean;
    function servidorEstaEmExercicioExterno(idPessoal, idServidor: String):boolean;
    function salvarDados:boolean;
  end;

var
  frmUpdateServidor: TfrmUpdateServidor;

implementation

uses ufReadServidor, uDMPessoal, uDmCadastroServidor,
  ufUpdateFuncao, PRG_utils, uPesFuncoes, uDmExibirTabelas,
  ufUpdateHistoricoFuncao, ufUpdateExercicioExterno, uDMConexao, ufLogs,
  ufUpdateLotacao, ufUpdateFerias, ufUpdateAbonoAnual,
  ufUpdateSubstituicao, ufPrincipal, ufUpdateAfastamento;

{$R *.dfm}

var EstadoEdicao: TEstadoEdicao;

procedure TfrmUpdateServidor.btnGravarServidorClick(Sender: TObject);
var wMens, NIDP, NIDS: String;
OK_Pes, OK_Ser, OK_Dad, OK_Dat: boolean;
begin
  wMens := 'Atenção! Confirma a inclusão deste(a) servidor(a)?' + #13 + #13
         + edtCPF.Text + #13
         + edtNome.Text;

  if ConfirmaAcao(wMens,3) = 1 then
  begin //4
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

    if dmCadastroServidor.alterarPessoal      // Tabela de Pessoal
    (retornaSQLUpdatePessoal(NIDP))
    then
      OK_Pes := true
    else
      OK_Pes := false;

    if dmCadastroServidor.alterarServidor   // Tabela de Servidor
    (retornaSQLUpdateServidor(NIDP, NIDS))
    then
      OK_Ser := true
    else
      OK_Ser := false;

    if dmCadastroServidor.alterarDados  // Tabela de Dados
    (retornaSQLUpdateDados(NIDP))
    then
      OK_Dad := true
    else
      OK_Dad := false;

    if dmCadastroServidor.atualizarDatas
    // Tabela tbServidor, campos do tipo data
    (retornaSQLUpdateDatas(NIDP, NIDS))
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
      frmLogs.mmoLog.Lines.Add('Registro não incluído na tabela de Pessoal');
    end; //6

    if OK_Ser then
    begin //7
      chkServidor.Checked := true;
      frmLogs.mmoLog.Lines.Add('Registro incluído na tabela de Servidor');
    end   //7
    else
    begin //7
      chkServidor.Checked := false;
      frmLogs.mmoLog.Lines.Add('Registro não incluído na tabela de Servidor');
    end;  //7

    if OK_Dad then
    begin //8
      chkDados.Checked := true;
      frmLogs.mmoLog.Lines.Add('Registro incluído na tabela de Dados');
    end   //8
    else
    begin //8
      chkDados.Checked := false;
      frmLogs.mmoLog.Lines.Add('Registro não incluído na tabela de Dados');
    end;  //8

    if OK_Dat then
    begin //9
      chkDatas.Checked := true;
      frmLogs.mmoLog.Lines.Add('Datas atualizadas na tabela Servidor');
    end
    else
    begin //9
      chkDatas.Checked := false;
      frmLogs.mmoLog.Lines.Add('Datas não atualizadas na tabela Servidor');
    end;  //9

    if (OK_Pes) and (OK_Ser) and (OK_Dad) and (OK_Dat)
    then
    begin //10
      if dmCadastroServidor.alterarServidor   // Tabela de Servidor
      (retornaSQLUpdateServidor(NIDP, NIDS))
      then
        OK_Ser := true
      else
        OK_Ser := false;

      if dmCadastroServidor.alterarDados  // Tabela de Dados
      (retornaSQLUpdateDados(NIDP))
      then
        OK_Dad := true
      else
        OK_Dad := false;

      if dmCadastroServidor.atualizarDatas
      // Tabela tbServidor, campos do tipo data
      (retornaSQLUpdateDatas(NIDP, NIDS))
      then
        OK_Dat := true
      else
        OK_Dat := false;

      //setarOperacao(2); // Alteração de registro

      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbPessoal, tbServidor, tbDados',
      NIDP,
      'TODOS',
      'Inclusão do servidor: '
      + 'Matrícula: ' + edtidServidor.Text
      + ' Nome: ' + edtNome.Text
      );

      // bloquear registro

      //SetarModoAlteracao;

      ShowMessage('Registro gravado com sucesso.');
      //frmCreateServidor.Activate;  // atualiza a página para exibir o modo de alteraç~~ao

      btnGravarServidor.Enabled := false;
      btnEditarServidor.Enabled := true;

    end  //10
    else
      ShowMessage('Houve um erro no cadastro de uma das tabelas.');

  end //4
  else Abort;

end;

procedure TfrmUpdateServidor.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmUpdateServidor.carregarDados: boolean;
begin
  // Campos carregados no EstadoEdicao:
  // Nome, CPF, dt_Nascimento, idServidor
  // Cargo

  with dmPessoal.qryPesquisa do
  begin

    lbl_IDP.Caption         := FieldValues['idPessoal'];
    lbl_IDS.Caption         := FieldValues['ID'];

    if FieldByName('CPF').IsNull
    then edtCPF.Text := ''
    else edtCPF.Text := Trim(FieldValues['CPF']);

    // Manter o valor do campo Nome no registro EstadoEdicao
    EstadoEdicao.CPF[0]  := edtCPF.Text;

    if FieldByName('dt_nascimento').IsNull
    then edtDtNascimento.Text := ''
    else edtDtNascimento.Text := Trim(FieldValues['dt_nascimento']);

    // Manter o valor do campo dt_Nascimento no registro EstadoEdicao
    EstadoEdicao.dtNascimento[0]  := edtDtNascimento.Text;

    if FieldByName('idServidor').IsNull
    then edtidServidor.Text := ''
    else edtidServidor.Text := Trim(FieldValues['idServidor']);

    // Manter o valor do campo idServidor no registro EstadoEdicao
    EstadoEdicao.idServidor[0]  := edtidServidor.Text;

    if FieldByName('Nome').IsNull
    then edtNome.Text := ''
    else edtNome.Text := Trim(FieldValues['Nome']);

    // Manter o valor do campo Nome no registro EstadoEdicao
    EstadoEdicao.Nome[0]  := edtNome.Text;


    //ShowMessage(FieldValues['descricaoCargo']);

    if FieldByName('descricaoCargo').IsNull
    then lkpCargo.Text := ''
    else lkpCargo.Text := Trim(FieldValues['descricaoCargo']);

    // Manter o valor do campo Cargo no registro EstadoEdicao
    EstadoEdicao.Cargo[0]    := Trim(lkpCargo.Text);


    if FieldByName('Especialidade').IsNull
    then lkpEspecialidade.Text := ''
    else lkpEspecialidade.Text := Trim(FieldValues['Especialidade']);

    if FieldByName('Dt_PosseCargo').IsNull
    then edtDt_PosseCargo.Text := ''
    else edtDt_PosseCargo.Text := Trim(FieldValues['Dt_PosseCargo']);

    if FieldByName('Dt_ExercicioCargo').IsNull
    then edtDt_ExercicioCargo.Text := ''
    else edtDt_ExercicioCargo.Text := Trim(FieldValues['Dt_ExercicioCargo']);

    // Manter o valor do campo Dt_ExercicioCargo no registro EstadoEdicao
    
    EstadoEdicao.DtExercicioCargo[0]   := Trim(edtDt_ExercicioCargo.Text);

    if FieldByName('Dt_NomeacaoCargo').IsNull
    then edtDt_NomeacaoCargo.Text := ''
    else edtDt_NomeacaoCargo.Text := Trim(FieldValues['Dt_NomeacaoCargo']);

    if FieldByName('Dt_NomeacaoCargoDODF').IsNull
    then edtDt_NomeacaoCargoDODF.Text := ''
    else edtDt_NomeacaoCargoDODF.Text := Trim(FieldValues['Dt_NomeacaoCargoDODF']);

    if FieldByName('descricaoLotacao').IsNull
    then txtLotacao.Caption := '' // lkpLotacao.Text := ''
    else txtLotacao.Caption :=    // lkpLotacao.Text :=
    Trim(FieldValues['descricaoLotacao']);

    // Manter o valor do campo Lotacao no registro EstadoEdicao
    EstadoEdicao.Lotacao[0]  := Trim(txtLotacao.Caption);


    //lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descricaoLotacao,

    if not FieldByName('requisitado').IsNull
    then chkRequisitado.Checked := false
    else chkRequisitado.Checked := true;

    if FieldByName('OrgaoDeOrigem').IsNull
    then edtOrgaoOrigem.Text := ''
    else edtOrgaoOrigem.Text := Trim(FieldValues['OrgaoDeOrigem']);

    if FieldByName('CargaHoraria').IsNull
    then cbxCargaHoraria.Text := ''
    else cbxCargaHoraria.Text := Trim(FieldValues['CargaHoraria']);

    if FieldByName('Classe').IsNull
    then cbxClasse.Text := ''
    else cbxClasse.Text := Trim(FieldValues['Classe']);

    if FieldByName('Padrao').IsNull
    then cbxPadrao.Text := ''
    else cbxPadrao.Text := Trim(FieldValues['Padrao']);


    // Aba dados pessoais
    
    if FieldByName('Naturalidade').IsNull
    then edtNaturalidade.Text := ''
    else edtNaturalidade.Text := Trim(FieldValues['Naturalidade']);

    if FieldByName('Natural_UF').IsNull
    then cbxNatural_UF.Text := ''
    else cbxNatural_UF.Text := Trim(FieldValues['Natural_UF']);

    if FieldByName('Pai').IsNull
    then edtPai.Text := ''
    else edtPai.Text := Trim(FieldValues['Pai']);

    if FieldByName('Mae').IsNull
    then edtMae.Text := ''
    else edtMae.Text := Trim(FieldValues['Mae']);

    if FieldByName('EstadoCivil').IsNull
    then lkpEstadoCivil.Text := ''
    else lkpEstadoCivil.Text := Trim(FieldValues['EstadoCivil']);

    if FieldByName('TipoSanguineo').IsNull
    then cbxTipoSanguineo.Text := ''
    else cbxTipoSanguineo.Text := Trim(FieldValues['TipoSanguineo']);

    if FieldByName('Conjuge').IsNull
    then edtConjuge.Text := ''
    else edtConjuge.Text := Trim(FieldValues['Conjuge']);

    if FieldByName('Endereco').IsNull
    then edtEndereco.Text := ''
    else edtEndereco.Text := Trim(FieldValues['Endereco']);

    if FieldByName('Bairro').IsNull
    then edtBairro.Text := ''
    else edtBairro.Text := Trim(FieldValues['Bairro']);

    if FieldByName('Cidade').IsNull
    then edtCidade.Text := ''
    else edtCidade.Text := Trim(FieldValues['Cidade']);

    if FieldByName('UF').IsNull
    then cbxEnderecoUF.Text := ''
    else cbxEnderecoUF.Text := Trim(FieldValues['UF']);

    if FieldByName('CEP').IsNull
    then edtCEP.Text := ''
    else edtCEP.Text := Trim(FieldValues['CEP']);

    if FieldByName('Grau').IsNull
    then cbxGrauInstrucao.Text := ''
    else cbxGrauInstrucao.Text := Trim(FieldValues['Grau']);

    if FieldByName('Email').IsNull
    then edtEmail.Text := ''
    else edtEmail.Text := Trim(FieldValues['Email']);

    if FieldByName('Curso').IsNull
    then lkpCurso.Text := ''
    else lkpCurso.Text := Trim(FieldValues['Curso']);


    // Aba documentos

    if FieldByName('CI_NUM').IsNull
    then edtCI_NUM.Text := ''
    else edtCI_NUM.Text := Trim(FieldValues['CI_NUM']);

    if FieldByName('CI_Emissao').IsNull
    then edtCI_Emissao.Text := ''
    else edtCI_Emissao.Text := Trim(FieldValues['CI_Emissao']);

    if FieldByName('CI_UF').IsNull
    then cbxCI_UF.Text := ''
    else cbxCI_UF.Text := Trim(FieldValues['CI_UF']);

    if FieldByName('TE_Num').IsNull
    then edtTE_Num.Text := ''
    else edtTE_Num.Text := Trim(FieldValues['TE_Num']);

    if FieldByName('TE_Zona').IsNull
    then edtTE_Zona.Text := ''
    else edtTE_Zona.Text := Trim(FieldValues['TE_Zona']);

    if FieldByName('TE_Secao').IsNull
    then edtTE_Secao.Text := ''
    else edtTE_Secao.Text := Trim(FieldValues['TE_Secao']);

    if FieldByName('TE_UF').IsNull
    then cbxTE_UF.Text := ''
    else cbxTE_UF.Text := Trim(FieldValues['TE_UF']);

    if FieldByName('TE_Emissao').IsNull
    then edtTE_Emissao.Text := ''
    else edtTE_Emissao.Text := Trim(FieldValues['TE_Emissao']);

    if FieldByName('Pis_Pasep').IsNull
    then edtPis_Pasep.Text := ''
    else edtPis_Pasep.Text := Trim(FieldValues['Pis_Pasep']);

    {if FieldByName('Banco').IsNull
    then lkpBanco.Text := ''
    else lkpBanco.Text := Trim(FieldValues['Banco']);}

    if FieldByName('Agencia').IsNull
    then edtAgencia.Text := ''
    else edtAgencia.Text := Trim(FieldValues['Agencia']);

    if FieldByName('Conta').IsNull
    then edtConta.Text := ''
    else edtConta.Text := Trim(FieldValues['Conta']);

    if FieldByName('OAB_Num').IsNull
    then edtOAB_Num.Text := ''
    else edtOAB_Num.Text := Trim(FieldValues['OAB_Num']);

    if FieldByName('OAB_Secao').IsNull
    then edtOAB_Secao.Text := ''
    else edtOAB_Secao.Text := Trim(FieldValues['OAB_Secao']);

  end;

  SetarAlteracaoDesfeita;
  setarCorPadrao;
end;

procedure TfrmUpdateServidor.FormCreate(Sender: TObject);
begin
  KeyPreview := true;

  pgcPessoal.ActivePage := tshDadosFuncionais;

  desabilitarEdicao;

  if not dmCadastroServidor.retornarCargo
  then ShowMessage('A pesquisa falhou para o campo de cargo');

  if not dmCadastroServidor.retornarEspecialidade
  then ShowMessage('A pesquisa falhou para o campo de especialidade');

  if not dmCadastroServidor.retornarLotacao
  then ShowMessage('A pesquisa falhou para o campo de lotação');

  if not dmCadastroServidor.retornarFuncao
  then ShowMessage('A pesquisa falhou para o campo de função');

  if not dmCadastroServidor.retornarUF
  then ShowMessage('A pesquisa falhou para o campo da UF');

  if not dmCadastroServidor.retornarEstadoCivil
  then ShowMessage('A pesquisa falhou para o campo do Estado Civil');

  if not dmCadastroServidor.retornarCurso
  then ShowMessage('A pesquisa falhou para o campo do Curso');

  if not dmCadastroServidor.retornarBanco
  then ShowMessage('A pesquisa falhou para o campo do Banco');
  

end;

function TfrmUpdateServidor.retornaSQLUpdatePessoal(pIDP: String): String;
var SQL_Pessoal: String;
begin

  SQL_Pessoal :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbPessoal'
      + ' SET '
      + ' CPF = '  + QuotedStr(edtCPF.Text)
      + ', Nome = ' + QuotedStr(edtNome.Text);

      if edtDtNascimento.Text <> '' then
      SQL_Pessoal := SQL_Pessoal + ', dt_Nascimento = '
      + QuotedStr(edtDtNascimento.Text)
      else
      SQL_Pessoal := SQL_Pessoal + ', dt_Nascimento = NULL ';

      SQL_Pessoal := SQL_Pessoal
      + ' WHERE idPessoal = ' + QuotedStr(pIDP);

  Result := SQL_Pessoal;
      
end;

function TfrmUpdateServidor.salvarDados: boolean;
begin
//
end;

procedure TfrmUpdateServidor.btnEditarServidorClick(Sender: TObject);
var wOK: boolean;
begin
  {if carregarDados then
  wOK := true
  else wOk := false;}

  habilitarEdicao;

  btnEditarServidor.Enabled := false;
  //edtCPF.SetFocus;
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
        EstadoEdicao.Cargo[0] + chr(13) +

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

  // Só retornou o nome dos campos
  // É necessário retornar o valor do campo NOME

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
  if carregarDados then
  wOK := true
  else wOk := false;

  WindowState := wsMaximized;

  if not dmPessoal.qryPesquisa.FieldByName('idCargo').IsNull then
  begin
    if dmPessoal.VerificarSeEProcurador(Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2))
    then
      tshSubstituicao.TabVisible := true
    else tshSubstituicao.TabVisible := false;
  end;
  

//  edtCPF.SetFocus;

  {if not dmCadastroServidor.retornarPessoal
  then ShowMessage('A pesquisa falhou para o campo de pessoal');

  if not dmCadastroServidor.retornarCargo
  then ShowMessage('A pesquisa falhou para o campo de cargo');

  if not dmCadastroServidor.retornarEspecialidade
  then ShowMessage('A pesquisa falhou para o campo de especialidade');

  if not dmCadastroServidor.retornarLotacao
  then ShowMessage('A pesquisa falhou para o campo de lotação');

  if not dmCadastroServidor.retornarFuncao
  then ShowMessage('A pesquisa falhou para o campo de função');

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

  frmUpdateFerias.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);


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
  ShowMessage('É necessário desligar o servidor da função atual')

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
  then ShowMessage('O servidor não está ocupando função')
  else
  begin;
    Application.CreateForm(TfrmUpdateFuncao, frmUpdateFuncao);

    with frmUpdateFuncao do
    begin
      setarOperacao(2); //'DESLIGAR FUNÇÃO';
      retornarFuncao;
      btnSelecionarFuncoes.Visible := false;

      lkpFuncao.Text := txtFuncao.Caption;
      // o erro está aqui (o lookup pode pegar o primeiro que aparecer
      // pois os registros têm a mesma descrição

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
  frmUpdateFerias.ShowModal;
  frmUpdateFerias.Release;
  frmUpdateFerias := nil;
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
 // + ' serv.observacao,' -- Este campo não está na table tbServidor do banco PGSRV19
 // + ' serv.idNucleo,' -- ídem acima
 // + ' serv.dtNucleoDistribuicao,' -- ídem acima

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
  + '  ELSE ' + QuotedStr('NÃO INFORMADO')
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

  //ShowMessage('Nº de registros atualizados: ' +
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

  frmUpdateHistoricoFuncao.setarOperacao(2); // Atualizar histórico

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
  ShowMessage('É necessário desligar o servidor do exercício externo atual')

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
  then ShowMessage('O servidor não está em exercício externo')
  else
  begin;
    Application.CreateForm(TfrmUpdateExercicioExterno, frmUpdateExercicioExterno);

    with frmUpdateExercicioExterno do
    begin
      setarOperacao(2); //'DESLIGAR EXERCÍCIO EXTERNO';
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

function TfrmUpdateServidor.retornaSQLUpdateDados(pIDP: String): String;
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

  frmLogs.mmoLog.Lines.Add(SQL_Dados);

  Result := SQL_Dados;

end;

function TfrmUpdateServidor.retornaSQLUpdateServidor(pIDP,
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

  // Obs: As datas serão incluídas após o Insert
  // através da função incluirDatas (DMCadastroServidor)


  // Se não for atribuído um valor para o Cargo
  // o banco atribuirá o valor default (999999)
  // ídem para os campos idFuncao, idLotacao, Requisitado, etc
  // Obs: não será feito como definido nas linhas acima. serão informados
  // os valores default aqui no código


  SQL_Servidor := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET idServidor = ' + QuotedStr(edtidServidor.Text);
  //+ ' , Matr_Origem = ' + -- esse campo não está sendo utilizado;

  if lkpCargo.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idCargo = ' + QuotedStr(lkpCargo.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idCargo = ' + QuotedStr('999999');

  if lkpEspecialidade.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', especialidade = ' + QuotedStr(lkpEspecialidade.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', especialidade = NULL';

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
  // 12	Padrao (não se aplica para ramal e sala)

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


    // ver com a Cláudia em que situações são digitados
    // os campos AverbacaoGDF e AverbacaoServPublico

    
  SQL_Servidor := SQL_Servidor
    + ', idUsuario = ' + QuotedStr(DMConexao.Usuario.CPF)
    + ' WHERE idPessoal = ' + QuotedStr(pIDP)
    + ' AND ID = ' + QuotedStr(pIDS);


  Result := SQL_Servidor;

end;

function TfrmUpdateServidor.retornaSQLUpdateDatas(pIDP,
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

  wMens := 'Atenção! Ao excluir esta função, a mesma não será registrada'
  + chr(13) + 'no histórico de funções ocupadas pelo servidor.'
  + chr(13) + 'Confirma?';

  if ConfirmaAcao(wMens, 2) = 1 then
  begin
    Application.CreateForm(TfrmUpdateFuncao, frmUpdateFuncao);

    with frmUpdateFuncao do
    begin
      setarOperacao(2); //'DESLIGAR FUNÇÃO';

      if gravarFuncao(
      frmUpdateServidor.lbl_IDP.Caption,
      frmUpdateServidor.txtMatricula.Caption,
      '', '', '', '', '', '', ''
      )
      then ShowMessage('Função excluída com sucesso');

      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbServidor, tbHist_Funcao',
      frmUpdateServidor.lbl_IDP.Caption,
      'TODOS',
      'Exclusão da função: '
      + 'Matrícula: ' + frmUpdateServidor.txtMatricula.Caption
      + ' Nome: ' + frmUpdateServidor.edtNome.Text
      + ' Função excluída: ' + lkpFuncao.editValue + ' - ' +  lkpFuncao.Text
      );

      Release;
      frmUpdateFuncao  := nil;
    end;

  end;

end;

procedure TfrmUpdateServidor.btnEditarFuncaoClick(Sender: TObject);
begin
  if not servidorOcupaFuncao(lbl_IDP.Caption, txtMatricula.Caption)
  then ShowMessage('O servidor não está ocupando função')
  else
  begin;
    Application.CreateForm(TfrmUpdateFuncao, frmUpdateFuncao);

    with frmUpdateFuncao do
    begin
      setarOperacao(3); //'EDITAR FUNÇÃO';
      retornarFuncao;
      btnSelecionarFuncoes.Visible := false;

      lkpFuncao.Text := txtFuncao.Caption;
      // o erro está aqui (o lookup pode pegar o primeiro que aparecer
      // pois os registros têm a mesma descrição

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
begin
//
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
  btnGravarServidor.Enabled := false;

  with StatusBar do
  begin
     Panels[0].Text := '0';
     Panels[1].Text := 'NÃO ALTERADO';
  end;

end;

procedure TfrmUpdateServidor.SetarEstadoDoRegistro;
begin
  case checarEstadoRegistro of
  0:
  begin
    RegistroAlterado := false;
    btnGravarServidor.Enabled := false;
  //  SetarStatus('2');

    with StatusBar do
    begin
       Panels[0].Text := '0';
       Panels[1].Text := 'NÃO ALTERADO';
    end;
  end;

  1:
  begin
    RegistroAlterado := true;
    btnGravarServidor.Enabled := true;
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
  if btnGravarServidor.Enabled then

  case ConfirmaAcao
  ('O registro não foi gravado, ainda. Deseja gravá-lo antes de sair?',3) of
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
        ShowMessage('Houve um erro na tentativa de gravação');
        CanClose := False;
      end
      else CanClose := True;
      }
    end;
  0: CanClose := True;
  2: CanClose := False;
  end;

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
  or (lkpCargo.Text <> EstadoEdicao.Cargo[0])
  or (edtidServidor.Text <> EstadoEdicao.idServidor[0])

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

  if Campo.ClassType = TcxTextEdit then
  TcxTextEdit(Campo).Style.Font.Color := clRed;

  if Campo.ClassType = TcxDateEdit then
  TcxTextEdit(Campo).Style.Font.Color := clRed;

  if Campo.ClassType = TcxLookupComboBox then
  TcxLookupComboBox(Campo).Style.Font.Color := clRed;

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
begin
  ShowMessage('Em desenvolvimento');
end;

end.
