unit ufCreateServidor_20220311;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellAPI, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCalendar, cxContainer, ExtCtrls, cxSplitter, Grids, DBGrids,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  DBCtrls, Mask, ComCtrls, Buttons, ADODB, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxCheckBox, cxPC, IniFiles, Menus, cxButtons;

type
  TPessoalArray = array of string;

  TfrmCreateServidor_20220311 = class(TForm)
    barServidor: TStatusBar;
    pnlNomeMatricula: TPanel;
    txtNome: TDBText;
    tmrRelPersonalizado: TTimer;
    pgcPessoal: TcxPageControl;
    tshDadosFuncionais: TcxTabSheet;
    tshDadosPessoais: TcxTabSheet;
    tshDocumentos: TcxTabSheet;
    grpbxDadosFuncionais: TGroupBox;
    lblMatricula: TLabel;
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
    lblDt_NomeacaoFuncao: TLabel;
    lblDt_NomeacaoFuncaoDODF: TLabel;
    lblAverbacaoGDF: TLabel;
    lblAverbacaoServPublico: TLabel;
    lblCPF: TLabel;
    lblFuncao: TLabel;
    lblDt_PosseFunca: TLabel;
    lblDt_ExercicioFuncao: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    lbl_IDP: TLabel;
    edtAverbacaoServPublico: TDBEdit;
    edtCPF: TcxDBTextEdit;
    edtidServidor: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    lkpLotacao: TcxDBLookupComboBox;
    lkpCargo: TcxDBLookupComboBox;
    edtDt_PosseCargo: TcxDBDateEdit;
    edtDt_ExercicioCargo: TcxDBDateEdit;
    edtDt_PrimeiroExercicioGDF: TcxDBDateEdit;
    lkpEspecialidade: TcxDBLookupComboBox;
    cbxCargaHoraria: TcxDBComboBox;
    edtOrgaoOrigem: TcxDBTextEdit;
    chkRequisitado: TcxDBCheckBox;
    edtDt_NomeacaoCargo: TcxDBDateEdit;
    edtDt_NomeacaoFuncao: TcxDBDateEdit;
    edtAverbacaoGDF: TcxDBDateEdit;
    edtDt_NomeacaoCargoDODF: TcxDBDateEdit;
    edtDt_NomeacaoFuncaoDODF: TcxDBDateEdit;
    chkAuxTransporte: TcxDBCheckBox;
    lkpFuncao: TcxDBLookupComboBox;
    edtDt_PosseFuncao: TcxDBDateEdit;
    edtDt_ExercicioFuncao: TcxDBDateEdit;
    cbxClasse: TcxDBComboBox;
    cbxPadrao: TcxDBComboBox;
    edtCF_Num: TcxDBTextEdit;
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
    edtPai: TcxDBTextEdit;
    edtMae: TcxDBTextEdit;
    edtConjuge: TcxDBTextEdit;
    edtEndereco: TcxDBTextEdit;
    edtBairro: TcxDBTextEdit;
    edtCidade: TcxDBTextEdit;
    edtCEP: TcxDBTextEdit;
    edtEmail: TcxDBTextEdit;
    edtNaturalidade: TcxDBTextEdit;
    cbxEnderecoUF: TcxDBComboBox;
    lkpEstadoCivil: TcxDBLookupComboBox;
    cbxGrauInstrucao: TcxDBComboBox;
    cbxTipoSanguineo: TcxDBComboBox;
    lkpCurso: TcxDBLookupComboBox;
    cbxNatural_UF: TcxDBComboBox;
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
    edtCI_Num: TcxDBTextEdit;
    edtTE_Num: TcxDBTextEdit;
    edtTE_Zona: TcxDBTextEdit;
    edtPis_Pasep: TcxDBTextEdit;
    edtAgencia: TcxDBTextEdit;
    edtConta: TcxDBTextEdit;
    edtOAB_Num: TcxDBTextEdit;
    edtTE_Secao: TcxDBTextEdit;
    cbxCI_UF: TcxDBComboBox;
    edtCI_Emissao: TcxDBDateEdit;
    edtTE_Emissao: TcxDBDateEdit;
    edtOAB_Secao: TcxDBTextEdit;
    lkpBanco: TcxDBLookupComboBox;
    cbxTE_UF: TcxDBComboBox;
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
    dbgrdTelefone: TDBGrid;
    edtDtNascimento: TcxDBDateEdit;
    lblNascimento: TLabel;
    pnlBotoes: TPanel;
    Button1: TButton;
    Button2: TButton;
    btnNovo: TcxButton;
    btnGravar: TcxButton;
    btnSair: TcxButton;
    lblOperacao: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    chkPessoal: TcxCheckBox;
    chkServidor: TcxCheckBox;
    chkDados: TcxCheckBox;
    chkDatas: TcxCheckBox;
    lbl_IDS: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeExit(Sender: TObject);
    procedure lkpCargoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpFuncaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtOrgaoOrigemKeyPress(Sender: TObject; var Key: Char);
    procedure edtNaturalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtPaiKeyPress(Sender: TObject; var Key: Char);
    procedure edtMaeKeyPress(Sender: TObject; var Key: Char);
    procedure edtConjugeKeyPress(Sender: TObject; var Key: Char);
    procedure edtEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure edtBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure cbxNatural_UFExit(Sender: TObject);
    procedure cbxEnderecoUFExit(Sender: TObject);
    procedure cbxCI_UFExit(Sender: TObject);
    procedure cbxTE_UFExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtidServidorExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure edtDtNascimentoExit(Sender: TObject);
    procedure lkpLotacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    OPERACAO: Integer;

    Mens: Array of String;
    Campos: Array of String;

    LstUser: String;
    LstDate : TDateTime;

  public
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarCampos;

    procedure LimparCampos;
    procedure BloquearCampos;
    procedure DesbloquearCampos;

    procedure bloquearEdicao;
    procedure desbloquearEdicao;

    procedure SetarStatus(prmModo: char);
    procedure SetarModoInclusaoPessoal;
    procedure SetarModoInclusaoServidor;
    procedure SetarModoAlteracao;

    procedure HabilitarBtnGravar;
    procedure DesabilitarBtnGravar;

    procedure HabilitarBtnNovo;
    procedure DesabilitarBtnNovo;

    procedure IniciarNovoRegistro;
    procedure preencherCamposUF;
    procedure setarCampos;
    function CamposVazios(Campos: Array of String;
         Mensagens: Array of String): Boolean;

    function CPFJaCadastrado(pCPF: string): TPessoalArray;
    function MatriculaCadastradaNoID(pIdPessoal, pMatricula: string): TPessoalArray;
    function servidorEstaAtivo(pCPF: string): TPessoalArray;

    function UF_EValida(pUF: String):Boolean;

    function retornaSQLInsertPessoal(pIDP: String): String;
    function retornaSQLInsertServidor(pIDP: String): String;
    function retornaSQLInsertDados(pIDP: String): String;
    function retornaSQLInsertCamposAltServ(pIDP: String): String;

    function retornaSQLInsertDados_OLD(pIDP: String): String;
    function retornaSQLInsertServidor_OLD(pIDP: String): String;

    function retornaSQLInsertNotificaNupro(pIDP, Evento: String): String;

    function retornaSQLUpdatePessoal: String;
    function retornaSQLUpdateServidor(pIDP, pIDS: String): String;
    function retornaSQLUpdateDados: String;

    function retornaSQLUpdateDatas(pIDP, pIDS: String): String;

    function retornaNovoIDServidor(idPessoal:String):String;

    procedure CarregarSessaoAnterior;

    procedure GravarLog;

    function gravarRegistro: boolean;

  end;

type
  TStatus = class
  idStatus: char;
  dscStatus: String;
end;

var
  frmCreateServidor_20220311: TfrmCreateServidor_20220311;
  obStatus: TStatus;

implementation

uses uPesFuncoes, PRG_utils,
  uDmCadastroServidor, uDMConexao, udmPessoal, uAmbiente, ufPrincipal,
  ufLogs;

{$R *.dfm}


procedure TfrmCreateServidor_20220311.FormCreate(Sender: TObject);
begin

  KeyPreview := true;
  dmCadastroServidor.qryPessoal.Active := true;

  pgcPessoal.ActivePageIndex := 0;

  Setlength(Campos, 5);
  Mens := VarArrayof(['CPF','Nome','Data de nascimento',
            'Matrícula', 'Lotação']);

  configurarCampos;
  SetarModoInclusaoPessoal;

  //CarregarSessaoAnterior;

  //frmLogs.mmoLog.Lines.Add('Sessão iniciada em: ' + RetornaData(2));
  monitorarAcoesDaSessao('ufCreateServidor', 'Evento OnCreate', 'Sessão iniciada em: ' + RetornaData(2));

end;

procedure TfrmCreateServidor_20220311.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;

  edtCPF.SetFocus;

  if not dmCadastroServidor.retornarPessoal
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

  preencherCamposUF;

  //cbxNatural_UF.Properties.Items := dmCadastroServidor.ListaCliente;

  //mmoLog.Lines.Add(LstUser);
  //mmoLog.Lines.Add(DateToStr(LstDate));

  monitorarAcoesDaSessao('ufCreateServidor', 'Evento OnActivate', 'Operação: ' + lblOperacao.Caption);

end;


procedure TfrmCreateServidor_20220311.btnGravarClick(Sender: TObject);
var wMens, NIDP, NIDS, Evento: String;
OK_Pes, OK_Ser, OK_Dad, OK_Dat, OK_NN: boolean;
begin //1
  wMens := 'Atenção! Confirma a inclusão deste(a) servidor(a)?' + #13 + #13
         + edtCPF.Text + #13
         + edtNome.Text;

  case OPERACAO of //2

  // Inclusão

  1:
    begin //3
      if ConfirmaAcao(wMens,3) = 1 then
      begin //4
        edtNomeExit(Self);
        setarCampos;

        //if lbl_IDP.Caption = '0' then
        //begin //5

        NIDP := InserirZeros
        (dmCadastroServidor.GerarID('tbPessoal','idPessoal'),5);

        lbl_IDP.Caption := NIDP;

        //end;  //5

        if dmCadastroServidor.IncluirPessoal      // Tabela de Pessoal
        (retornaSQLInsertPessoal(NIDP))
        then
          OK_Pes := true
        else
          OK_Pes := false;

        if dmCadastroServidor.IncluirServidor   // Tabela de Servidor
        (retornaSQLInsertServidor(NIDP))
        then
          OK_Ser := true
        else
          OK_Ser := false;

        if dmCadastroServidor.IncluirDados  // Tabela de Dados
        (retornaSQLInsertDados(NIDP))
        then
          OK_Dad := true
        else
          OK_Dad := false;

        NIDS := retornaNovoIDServidor(NIDP);
        lbl_IDS.Caption := NIDS;

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
          //frmLogs.mmoLog.Lines.Add('Registro incluído na tabela de Pessoal');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Registro incluído na tabela de Pessoal em: ' + RetornaData(2));

        end   //6
        else
        begin //6
          chkPessoal.Checked := false;
          //frmLogs.mmoLog.Lines.Add('Registro não incluído na tabela de Pessoal');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Registro não incluído na tabela de Pessoal em: ' + RetornaData(2));
        end; //6

        if OK_Ser then
        begin //7
          chkServidor.Checked := true;
          //frmLogs.mmoLog.Lines.Add('Registro incluído na tabela de Servidor');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Registro incluído na tabela de Servidor em: ' + RetornaData(2));
        end   //7
        else
        begin //7
          chkServidor.Checked := false;
          //frmLogs.mmoLog.Lines.Add('Registro não incluído na tabela de Servidor');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Registro não incluído na tabela de Servidor em: ' + RetornaData(2));
        end;  //7

        if OK_Dad then
        begin //8
          chkDados.Checked := true;
          //frmLogs.mmoLog.Lines.Add('Registro incluído na tabela de Dados');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Registro incluído na tabela de Dados em: ' + RetornaData(2));
        end   //8
        else
        begin //8
          chkDados.Checked := false;
          //frmLogs.mmoLog.Lines.Add('Registro não incluído na tabela de Dados');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Registro não incluído na tabela de Dados em: ' + RetornaData(2));
        end;  //8

        if OK_Dat then
        begin //9
          chkDatas.Checked := true;
          //frmLogs.mmoLog.Lines.Add('Datas atualizadas na tabela Servidor');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Datas atualizadas na tabela Servidor em: ' + RetornaData(2));
        end
        else
        begin //9
          chkDatas.Checked := false;
          //frmLogs.mmoLog.Lines.Add('Datas não atualizadas na tabela Servidor');
          monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
          'Datas não atualizadas na tabela Servidor em: ' + RetornaData(2));
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
          (retornaSQLUpdateDados)
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

          setarOperacao(3); // Alteração de registro


          Evento := 'Inclusão de novo registro na tabela de pessoal'
          + chr(13)
          + 'Cargo: ' + lkpCargo.Text
          + chr(13)
          + 'Lotação: ' + lkpLotacao.Text;

          if dmCadastroServidor.registrarNotificaNupro
          // Tabela tbCamposAltSer
          (retornaSQLInsertNotificaNupro(NIDP, Evento))
          then
            //frmLogs.mmoLog.Lines.Add('Registro incluído na tabela NotificaNupro')
            monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
            'Registro incluído na tabela NotificaNupro' + RetornaData(2))

          else
            //frmLogs.mmoLog.Lines.Add('Registro não incluído na tabela NotificaNupro');
            monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
            'Registro não incluído na tabela NotificaNupro' + RetornaData(2));


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

          SetarModoAlteracao;
          ShowMessage('Registro gravado com sucesso.');
          //frmCreateServidor.Activate;  // atualiza a página para exibir o modo de alteraç~~ao
        end  //10
        else
          ShowMessage('Houve um erro no cadastro de uma das tabelas.');

      end //4
      else Abort;

    end; //3


  // Edição

  2:
    begin //11
      setarCampos;

      if dmCadastroServidor.alterarPessoal      // Tabela de Pessoal
      (retornaSQLUpdatePessoal)
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
      (retornaSQLUpdateDados)
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
      begin //12
        chkPessoal.Checked := true;
        frmLogs.mmoLog.Lines.Add('Registro alterado na tabela de Pessoal');
      end   //12
      else
      begin //12
        chkPessoal.Checked := false;
        frmLogs.mmoLog.Lines.Add('Registro não alterado na tabela de Pessoal');
      end;  //12

      if OK_Ser then
      begin //13
        chkServidor.Checked := true;
        frmLogs.mmoLog.Lines.Add('Registro alterado na tabela de Servidor');
      end   //13
      else
      begin //13
        chkServidor.Checked := false;
        frmLogs.mmoLog.Lines.Add('Registro não alterado na tabela de Servidor');
      end;  //13

      if OK_Dad then
      begin //14
        chkDados.Checked := true;
        frmLogs.mmoLog.Lines.Add('Registro alterado na tabela de Dados');
      end   //14
      else
      begin //14
        chkDados.Checked := false;
        frmLogs.mmoLog.Lines.Add('Registro não alterado na tabela de Dados');
      end;  //14

      if OK_Dat then
      begin //15
        chkDatas.Checked := true;
        frmLogs.mmoLog.Lines.Add('Datas atualizadas na tabela Servidor');
      end   //15
      else
      begin //15
        chkDatas.Checked := false;
        frmLogs.mmoLog.Lines.Add('Datas não atualizadas na tabela Servidor');
      end; //15

      if (OK_Pes) and (OK_Ser) and (OK_Dad) and (OK_Dat)
      then
      begin //16
        IncluirLog
        (
        DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
        RetornaData(2),
        'tbPessoal, tbServidor, tbDados',
        NIDP,
        'TODOS',
        'Alteração do servidor: '
        + 'Matrícula: ' + edtidServidor.Text
        + ' Nome: ' + edtNome.Text
        );

        // bloquear registro

        //SetarModoAlteracao;
        ShowMessage('Registro gravado com sucesso.');
      end   //16
      else
        ShowMessage('Houve um erro no cadastro de uma das tabelas.');
    end; //11
  end; //2

  GravarLog;
  
end; //1

function TfrmCreateServidor_20220311.CamposVazios(Campos,
  Mensagens: array of String): Boolean;
var cont: integer;
begin
  Result := false;

  if Length(Campos) <> Length(Mensagens) then
  begin
    MessageDlg('O número de Mensagens deve ser igual ao número de Campos', mtError,[mbOK],0);
    Halt;
  end
  else
  begin
    for cont := 0 to high(Campos) do
    begin
      if trim(Campos[cont]) = '' then//if2
      begin
        Result := true;
        ShowMessage('Preencha o campo ' + Mensagens[cont]);
        //Campos[cont].SetFocus;
        Break;
      end
      else Result := false;
    end;
  end;

end;

procedure TfrmCreateServidor_20220311.setarCampos;
begin
  Campos[0] := edtCPF.Text;
  Campos[1] := edtNome.Text;
  Campos[2] := edtDtNascimento.Text;
  Campos[3] := edtIdServidor.Text;
  Campos[4] := lkpLotacao.EditText;
end;


procedure TfrmCreateServidor_20220311.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCreateServidor_20220311.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtNomeExit(Sender: TObject);
begin
  edtNome.Text :=
  AnsiUpperCase(RemoveEspaco(edtNome.Text));

  if dmCadastroServidor.qryPessoal.State in [dsInsert, dsEdit] then
  dmCadastroServidor.qryPessoal.FieldValues['Nome'] := edtNome.Text;
end;




procedure TfrmCreateServidor_20220311.lkpCargoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpCargo.Clear;
  end;

end;

procedure TfrmCreateServidor_20220311.lkpFuncaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpFuncao.Clear;
  end;       
end;


procedure TfrmCreateServidor_20220311.preencherCamposUF;
var UF: string;
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


procedure TfrmCreateServidor_20220311.edtOrgaoOrigemKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtNaturalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtPaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtMaeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtConjugeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.edtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220311.LimparCampos;
var i: Integer;
begin
  lbl_IDP.Caption := '0';
  lbl_IDS.Caption := '0';

  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxDBTextEdit) then
    begin
      if (Components[i].Name <> 'edtIdProcuradoria') // campos que serão mantidos
      and (Components[i].Name <> 'edtDt_Entrada')
      then
      TcxDBTextEdit(Components[i]).Clear;
    end;

    if (Components[i] is TcxDBLookupComboBox) then
    begin
      if (Components[i].Name <> 'lkpLotacao_OLD')
      then
      TcxDBLookupComboBox(Components[i]).Clear;
    end;

    if (Components[i] is TcxDBComboBox) then
    begin
      if (Components[i].Name <> 'lkpLotacao_OLD')
      then
      TcxLookupComboBox(Components[i]).Clear;
    end;

    if (Components[i] is TcxMaskEdit) then
      TcxMaskEdit(Components[i]).Clear;

    if (Components[i] is TcxDBDateEdit) then
      TcxDBDateEdit(Components[i]).Clear;

    if (Components[i] is TcxDBCheckBox) then
      TcxDBCheckBox(Components[i]).Checked := false;
  end;

end;

procedure TfrmCreateServidor_20220311.SpeedButton1Click(Sender: TObject);
begin
  if ConfirmaAcao('Limpar os campos?',3) = 1
  then
  begin
    IniciarNovoRegistro;
    LimparCampos;
  end;
end;

procedure TfrmCreateServidor_20220311.IniciarNovoRegistro;
begin
  dmCadastroServidor.qryPessoal.Active := false;
  dmCadastroServidor.qryPessoal.Active := true;
end;

procedure TfrmCreateServidor_20220311.btnNovoClick(Sender: TObject);
begin
  {if txtIdPessoal.Caption <> '0' then
  ShowMessage('O registro atual ainda não foi gravado. Grave primeiro');}

  SetarModoInclusaoPessoal;
end;

function TfrmCreateServidor_20220311.retornaSQLInsertDados_OLD(pIDP: String): String;
var SQL_Dados: String;
begin

  SQL_Dados := 'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbDados'
  + ' (idPessoal, Endereco, Bairro, Cidade';

  if cbxEnderecoUF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', UF';

  SQL_Dados := SQL_Dados
  + ', CEP, CI_Num';

  if cbxCI_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', CI_UF';

  if edtCI_Emissao.Text <> ''
  then SQL_Dados := SQL_Dados
  + ', CI_Emissao';

  SQL_Dados := SQL_Dados
  + ', Naturalidade';

  if cbxNatural_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados +
  ', Natural_UF';

  SQL_Dados := SQL_Dados
  + ', Pis_Pasep, TE_Num, TE_Zona, TE_Secao';

  if cbxTE_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados +
  ', TE_UF';

  if edtTE_Emissao.EditingValue <> ''
  then SQL_Dados := SQL_Dados +
  ', TE_Emissao';

  SQL_Dados := SQL_Dados
  +', Pai, Mae';

  if lkpEstadoCivil.EditingValue <> Null
  then SQL_Dados := SQL_Dados +
  ', idEstadoCivil';

  SQL_Dados := SQL_Dados
  + ', Conjuge';

  if lkpBanco.EditingValue <> Null
  then
  SQL_Dados := SQL_Dados
  + ', idBanco';

  SQL_Dados := SQL_Dados
  + ', Agencia, Conta, OAB_Num, OAB_Secao'
  + ', Grau, Curso, TipoSanguineo'
  + ', Email)'

  + ' Values ('

  + QuotedStr(pIDP)             + ', '
  + QuotedStr(edtEndereco.Text) + ', '
  + QuotedStr(edtBairro.Text)   + ', '
  + QuotedStr(edtCidade.Text);

  if cbxEnderecoUF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(cbxEnderecoUF.Text);

  SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtCEP.Text)
  + ', ' + QuotedStr(edtCI_Num.Text);

  if cbxCI_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(cbxCI_UF.Text);

  if edtCI_Emissao.Text <> ''
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtCI_Emissao.Text);

  SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtNaturalidade.Text);

  if cbxNatural_UF.Text <> ''
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(cbxNatural_UF.Text);

  SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtPis_Pasep.Text)
  + ', ' + QuotedStr(edtTE_Num.Text)
  + ', ' + QuotedStr(edtTE_Zona.Text)
  + ', ' + QuotedStr(edtTE_Secao.Text);

  if cbxTE_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(cbxTE_UF.Text);

  if edtTE_Emissao.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtTE_Emissao.Text);

  SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtPai.Text)
  + ', ' + QuotedStr(edtMae.Text);

  if lkpEstadoCivil.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(lkpEstadoCivil.EditingValue);

  SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtConjuge.Text);

  if lkpBanco.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(lkpBanco.EditingValue);

  SQL_Dados := SQL_Dados
  + ', ' + QuotedStr(edtAgencia.Text)
  + ', ' + QuotedStr(edtConta.Text)
  + ', ' + QuotedStr(edtOAB_Num.Text)
  + ', ' + QuotedStr(edtOAB_Secao.Text)
  + ', ' + QuotedStr(cbxGrauInstrucao.Text)
  + ', ' + QuotedStr(lkpCargo.Text)
  + ', ' + QuotedStr(cbxTipoSanguineo.Text)
  + ', ' + QuotedStr(edtEmail.Text)
  + ')';

  Result := SQL_Dados;

end;

function TfrmCreateServidor_20220311.retornaSQLUpdateDatas(pIDP, pIDS: String): String;
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

  if edtDt_NomeacaoFuncao.Text <> '' then
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
  SQL_Datas := SQL_Datas + ' Dt_ExercicioFuncao = NULL,';

  SQL_Datas := SQL_Datas + ' Dt_Digitacao = ' + QuotedStr(RetornaData(2));

  SQL_Datas := SQL_Datas + ' WHERE idPessoal = '
  + QuotedStr(pIDP)
  + ' AND ID = '  + QuotedStr(pIDS);

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL de atualização de datas (retornaSQLUpdateDatas)', SQL_Datas);

  Result := SQL_Datas;
  
end;

function TfrmCreateServidor_20220311.retornaSQLInsertPessoal(pIDP: String): String;
begin
  // txtidPessoal.Caption, edtCPF.Text, edtNome.Text, edtDtNascimento.Text
  Result :=
      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbPessoal'
      + '(idPessoal, CPF, Nome, dt_Nascimento)'
      + ' VALUES ('
      + QuotedStr(pIDP)   + ', '
      + QuotedStr(edtCPF.Text)            + ', '
      + QuotedStr(edtNome.Text)           + ', '
      + QuotedStr(edtDtNascimento.Text)   + ')';

      monitorarAcoesDaSessao
      ('ufCreateServidor', 'SQL da inclusão de pessoal (retornaSQLInsertPessoal)', Result);

end;

function TfrmCreateServidor_20220311.retornaSQLInsertServidor_OLD(pIDP: String): String;
var SQL_Servidor: String;
begin

  // Retiradas as datas em 30/04/2021
  // As datas serão salvas pela função  

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

  SQL_Servidor := 'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbServidor'

  // 1	idPessoal 2	idServidor 3	Matr_Origem

  + '(idPessoal, idServidor, Matr_Origem, ';

  // Se não for atribuído um valor para o Cargo
  // o banco atribuirá o valor default (999999)
  // ídem para os campos idFuncao, idLotacao, Requisitado, etc

  // 4	idCargo 5	Especialidade 6	idFuncao 7	idLotacao


  if lkpCargo.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor + 'idCargo, ';

  if lkpEspecialidade.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor + 'especialidade, ';

  if lkpFuncao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor + 'idFuncao, ';

  if lkpLotacao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor + 'idLotacao, ';

  // 8	CF_Num 9	Ramal 10	Sala 11	Classe 12	Padrao (não se aplica para ramal e sala)

  SQL_Servidor := SQL_Servidor
  + 'CF_Num, Classe, Padrao, ';


  // 13	Dt_NomeacaoCargo 14	Dt_NomeacaoCargoDODF 15	Dt_PosseCargo 16	Dt_ExercicioCargo

//  if edtDt_NomeacaoCargo.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_NomeacaoCargo, ';

//  if edtDt_NomeacaoCargoDODF.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_NomeacaoCargoDODF, ';

//  if edtDt_PosseCargo.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_PosseCargo, ';

//  if edtDt_ExercicioCargo.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_ExercicioCargo, ';

  // 17	Dt_PrimeiroExercicioGDF 18	Dt_Deslig_Cargo 19	Dt_Deslig_CargoDODF 20	Dt_NomeacaoFuncao
  // (não se aplica para Dt_Deslig_Cargo e Dt_DesligCargoDODF)


//  if edtDt_PrimeiroExercicioGDF.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_PrimeiroExercicioGDF, ';

//  if edtDt_NomeacaoFuncao.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_NomeacaoFuncao, ';


  // 21	Dt_NomeacaoFuncaoDODF 22	Dt_PosseFuncao 23	Dt_ExercicioFuncao 24	Dt_Deslig_Funcao
  // (não se aplica para Dt_Deslig_Funcao)


//  if edtDt_NomeacaoFuncaoDODF.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_NomeacaoFuncaoDODF, ';

//  if edtDt_PosseFuncao.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_PosseFuncao, ';

//  if edtDt_ExercicioFuncao.Text <> '' then
  SQL_Servidor := SQL_Servidor + ' Dt_ExercicioFuncao, ';

  // 25	Dt_Deslig_FuncaoDODF 26	Dt_Falecimento 27	Dt_Digitacao
  // (não se aplica para Dt_Deslig_FuncaoDODF e Dt_Falecimento )

  SQL_Servidor := SQL_Servidor + ' Dt_Digitacao,  ';


// 28	Requisitado 29	OrgaoDeOrigem 30	Dt_FimRequisicao 31	AuxTransporte
//(não se aplica a Dt_FimRequisicao)


  if chkRequisitado.Checked
  then SQL_Servidor := SQL_Servidor + 'Requisitado, ';

  SQL_Servidor := SQL_Servidor
  + 'OrgaoDeOrigem, ';

  if chkAuxTransporte.Checked
  then SQL_Servidor := SQL_Servidor + 'AuxTransporte, ';

// 32	idDesligamento 33	idUsuario 34	CargaHoraria 35	Dt_PromocaoCategoria2
// (não se aplica a idDesligamento e Dt_PromocaoCategoria2

  SQL_Servidor := SQL_Servidor
  + 'idUsuario, CargaHoraria)'

// 36	Dt_PromocaoSubProcurador 37	AverbacaoGDF 38	AverbacaoServPublico
// (não se aplica a Dt_PromocaoSubProcurador

// ver com a Cláudia em que situações são digitados os campos AverbacaoGDF e AverbacaoServPublico


  + ' Values ('

  // 1	idPessoal 2	idServidor 3	Matr_Origem

  + QuotedStr(pIDP)   + ', '
  + QuotedStr(edtidServidor.Text) + ', '
  + 'NULL' + ', ';

  // 4	idCargo 5	Especialidade 6	idFuncao 7	idLotacao

  if lkpCargo.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpCargo.EditingValue) + ', ';

  if lkpEspecialidade.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpEspecialidade.EditingValue) + ', ';

  if lkpFuncao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpFuncao.EditingValue) + ', ';

  if lkpLotacao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpLotacao.EditingValue) + ', ';

  if chkRequisitado.Checked
  then SQL_Servidor := SQL_Servidor    // se não for informado o banco atribui o valor zero
  + '1, ';

  // 8	CF_Num 9	Ramal 10	Sala 11	Classe 12	Padrao (não se aplica para ramal e sala)


  SQL_Servidor := SQL_Servidor
  + QuotedStr(edtCF_Num.Text) + ', '
  + QuotedStr(cbxClasse.Text) + ', '
  + QuotedStr(cbxPadrao.Text) + ', ';


  // 13	Dt_NomeacaoCargo 14	Dt_NomeacaoCargoDODF 15	Dt_PosseCargo 16	Dt_ExercicioCargo


  if edtDt_NomeacaoCargo.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_NomeacaoCargo.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';

  if edtDt_NomeacaoCargoDODF.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_NomeacaoCargoDODF.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';

  if edtDt_PosseCargo.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_PosseCargo.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';

  if edtDt_ExercicioCargo.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_ExercicioCargo.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';


  // 17	Dt_PrimeiroExercicioGDF 18	Dt_Deslig_Cargo 19	Dt_Deslig_CargoDODF 20	Dt_NomeacaoFuncao
  // (não se aplica para Dt_Deslig_Cargo e Dt_DesligCargoDODF)


  if edtDt_PrimeiroExercicioGDF.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_PrimeiroExercicioGDF.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';

  if edtDt_NomeacaoFuncao.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_NomeacaoFuncao.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';

  // 21	Dt_NomeacaoFuncaoDODF 22	Dt_PosseFuncao 23	Dt_ExercicioFuncao 24	Dt_Deslig_Funcao
  // (não se aplica para Dt_Deslig_Funcao)

  if edtDt_NomeacaoFuncaoDODF.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_NomeacaoFuncaoDODF.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';

  if edtDt_PosseFuncao.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_PosseFuncao.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL, ';

  if edtDt_ExercicioFuncao.Text <> '' then
  SQL_Servidor := SQL_Servidor + QuotedStr(edtDt_ExercicioFuncao.Text) + ', '
  else
  SQL_Servidor := SQL_Servidor + ' NULL,';


  // 25	Dt_Deslig_FuncaoDODF 26	Dt_Falecimento 27	Dt_Digitacao
  // (não se aplica para Dt_Deslig_FuncaoDODF e Dt_Falecimento )


  SQL_Servidor := SQL_Servidor + QuotedStr(RetornaData(2)) + ', ';


  // 28	Requisitado 29	OrgaoDeOrigem 30	Dt_FimRequisicao 31	AuxTransporte
  //(não se aplica a Dt_FimRequisicao)

  if chkRequisitado.Checked
  then SQL_Servidor := SQL_Servidor
  + '1, ';

  SQL_Servidor := SQL_Servidor
  + QuotedStr(edtOrgaoOrigem.Text) + ', ';

  if chkAuxTransporte.Checked
  then SQL_Servidor := SQL_Servidor
  + '1, ';

// 32	idDesligamento 33	idUsuario 34	CargaHoraria 35	Dt_PromocaoCategoria2
// (não se aplica a idDesligamento e Dt_PromocaoCategoria2

  SQL_Servidor := SQL_Servidor
  + QuotedStr(DMConexao.Usuario.CPF) + ', '
  //+ QuotedStr(idUsuario) + ', '
  + QuotedStr(cbxCargaHoraria.Text)

  + ')';

  Result := SQL_Servidor;

end;

procedure TfrmCreateServidor_20220311.BloquearCampos;
var i: integer;
begin
  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxDBTextEdit) then
    begin
      if Components[i].Name <> 'edtIdProcuradoria' then
      TcxDBTextEdit(Components[i]).Enabled := false;
    end;

    if (Components[i] is TcxDBLookupComboBox) then
      TcxDBLookupComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxDBComboBox) then
      TcxDBComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxDBDateEdit) then
       TcxDBDateEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxDBMaskEdit) then
       TcxDBMaskEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxDBCheckBox) then
       TcxDBCheckBox(Components[i]).Enabled := false;

  end;

end;

procedure TfrmCreateServidor_20220311.DesbloquearCampos;
var i: integer;
begin
  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxDBTextEdit) then
    begin
      if Components[i].Name <> 'edtIdProcuradoria' then
      TcxDBTextEdit(Components[i]).Enabled := true;
    end;

    if (Components[i] is TcxDBLookupComboBox) then
      TcxDBLookupComboBox(Components[i]).Enabled := true;

    if (Components[i] is TcxDBComboBox) then
      TcxDBComboBox(Components[i]).Enabled := true;

    if (Components[i] is TcxDBDateEdit) then
       TcxDBDateEdit(Components[i]).Enabled := true;

    if (Components[i] is TcxDBMaskEdit) then
       TcxDBMaskEdit(Components[i]).Enabled := true;

    if (Components[i] is TcxDBCheckBox) then
       TcxDBCheckBox(Components[i]).Enabled := true;

  end;


end;

procedure TfrmCreateServidor_20220311.SpeedButton2Click(Sender: TObject);
begin
  BloquearCampos;
end;

procedure TfrmCreateServidor_20220311.SetarStatus(prmModo: char);
begin
  case prmModo of
    '1':
    begin
      with obStatus do
      begin
        idStatus := '1';
        dscStatus := 'INCLUSÃO PESSOAL';
      end;
    end;
    '2':
    begin
      with obStatus do
      begin
        idStatus := '1';
        dscStatus := 'INCLUSÃO SERVIDOR';
      end;
    end;
    '3':
    begin
      with obStatus do
      begin
        idStatus := '2';
        dscStatus := 'EDIÇÃO';
      end;
    end;
  end;

  with barServidor do
  begin
     Panels[0].Text := obStatus.idStatus;
     Panels[1].Text := obStatus.dscStatus;
     Panels[2].Text := DMConexao.Usuario.Nome;
     Panels[3].Text := DMConexao.getNomeServidor;

  end;
end;

procedure TfrmCreateServidor_20220311.SetarModoAlteracao;
begin
//  BloquearCampos;
  SetarStatus('3');
  setarOperacao(3); //
  //  DesabilitarBtnGravar;
  HabilitarBtnNovo;
end;


procedure TfrmCreateServidor_20220311.HabilitarBtnGravar;
begin
  btnGravar.Enabled := true;
end;

procedure TfrmCreateServidor_20220311.DesabilitarBtnGravar;
begin
  btnGravar.Enabled := false;
end;

procedure TfrmCreateServidor_20220311.DesabilitarBtnNovo;
begin
  btnNovo.Enabled := false;
end;

procedure TfrmCreateServidor_20220311.HabilitarBtnNovo;
begin
  btnNovo.Enabled := true;
end;

function TfrmCreateServidor_20220311.CPFJaCadastrado(pCPF: string): TPessoalArray;
begin
  SetLength(Result, 3);
   with dmCadastroServidor.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;
     SQL.Text := 'SELECT idPessoal, Nome, Dt_Nascimento FROM tbPessoal'
     + ' WHERE tbPessoal.CPF = ' + QuotedStr(pCPF);

     monitorarAcoesDaSessao('frmCreateServidor', 'função CPFJaCadastrado', SQL.Text);
     Open;
   end;

   if (dmCadastroServidor.qryExecSQL.RecordCount = 0)
   then
     Result[0] := '0'
   else
   begin
     Result[0] := dmCadastroServidor.qryExecSQL.FieldValues['idPessoal'];
     Result[1] := dmCadastroServidor.qryExecSQL.FieldValues['Nome'];
     Result[2] := dmCadastroServidor.qryExecSQL.FieldValues['Dt_Nascimento'];
   end;

   dmCadastroServidor.qryExecSQL.Close;
   
end;

procedure TfrmCreateServidor_20220311.edtCPFExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
begin //1
  if btnSair.Focused then Close
  else
  begin //2
    if Trim(edtCPF.Text) = '' then
    begin //3
      ShowMessage('Você deve digitar o número do CPF');
      edtCPF.SetFocus;
    end   //3
    else
    begin //4
      if CPF_valido(edtCPF.Text) = false then
      begin //5
        ShowMessage('Número de CPF inválido.');
        edtCPF.SetFocus;
        edtCPF.SelectAll;
        Abort;
      end   //5
      else
      begin //6
        Setlength(Pessoal, 3);
        Pessoal := CPFJaCadastrado(edtCPF.Text);

        if (Pessoal[0] <> '0')
        and (lbl_IDP.Caption = '0') then
        begin //7
          Mensagem := 'O CPF: ' + edtCPF.Text
                      + ' já está cadastrado para: '
                      + #13 + Pessoal[1]
                      + #13 + 'Nascimento: ' + Pessoal[2]
                      + #13 + #13 + 'Deseja continuar?';

          if ConfirmaAcao(Mensagem, 3) = 1
          then
          begin //8
            with dmCadastroServidor.qryPessoal do
            begin //9
              SetarModoInclusaoServidor;
              Edit;
              lbl_IDP.Caption := Pessoal[0]; //
              FieldByName('idPessoal').AsString := Pessoal[0]; // idPessoal txtIdPessoal.Caption
              FieldByName('Nome').AsString := Pessoal[1]; // Nome edtNome.Text
              FieldByName('Dt_Nascimento').AsString := Pessoal[2] // edtDtNascimento.Text
            end;  //9

            Setlength(Pessoal, 4);
            Pessoal := servidorEstaAtivo(edtCPF.Text);

            if (Pessoal[0] <> '0')
            //and (txtIdPessoal.Caption = '0')
            then
            begin //10
              Mensagem := 'Atenção!' + #13 + Pessoal[1]
                          + #13 + 'Ainda está com o registro funcional ativo.'
                          + #13 + 'Cargo: '   + Pessoal[2]
                          + #13 + 'Função: '  + Pessoal[3]
                          + #13 + 'É necessário realizar seu desligamento antes de criar um novo registro';

              ShowMessage(Mensagem);

              LimparCampos;

              bloquearEdicao;
              edtCPF.Clear;
              edtCPF.SetFocus;
            end   //10
          end //8
          else
          begin //8
            edtCPF.Clear;
            edtCPF.SetFocus;
          end; //8
        end //7
        else
        begin //7
          with dmCadastroServidor.qryPessoal do
          begin //11
            Edit;
            lbl_IDP.Caption := '0'; //
            FieldByName('idPessoal').Clear;
            FieldByName('Nome').Clear;
            FieldByName('Dt_Nascimento').Clear;
          end; //11
        end //7
      end; //6
    end; //4
  end;//2
end;//1

function TfrmCreateServidor_20220311.UF_EValida(pUF: String): Boolean;
begin
   with dmCadastroServidor.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;
     SQL.Text := 'SELECT idUF FROM tbUF'
     + ' WHERE idUF = ' + QuotedStr(pUF);
     Open;
   end;

   if (dmCadastroServidor.qryExecSQL.RecordCount = 0)
   then
     Result := false
   else
     Result := true;

   dmCadastroServidor.qryExecSQL.Close;
end;

procedure TfrmCreateServidor_20220311.cbxNatural_UFExit(Sender: TObject);
begin
  if (cbxNatural_UF.Text <> '')
  and (not UF_EValida(cbxNatural_UF.EditingText))
  then
  begin
    ShowMessage('UF é inválida');
    //cbxNatural_UF.Text := ''; -- Não apaga o valor
    //cbxNatural_UF.SelectedItem := -1;
    cbxNatural_UF.SelectAll;
    cbxNatural_UF.SetFocus;
  end
end;

procedure TfrmCreateServidor_20220311.cbxEnderecoUFExit(Sender: TObject);
begin
  if (cbxEnderecoUF.Text <> '')
  and (not UF_EValida(cbxEnderecoUF.EditingText))
  then
  begin
    ShowMessage('UF é inválida');
    //cbxEnderecoUF.Text := ''; -- Não apaga o valor
    //cbxEnderecoUF.SelectedItem := -1;
    cbxEnderecoUF.SelectAll;
    cbxEnderecoUF.SetFocus;
  end

end;

procedure TfrmCreateServidor_20220311.cbxCI_UFExit(Sender: TObject);
begin
  if (cbxCI_UF.Text <> '')
  and (not UF_EValida(cbxCI_UF.EditingText))
  then
  begin
    ShowMessage('UF é inválida');
    //cbxCI_UF.Text := ''; -- Não apaga o valor
    //cbxCI_UF.SelectedItem := -1;
    cbxCI_UF.SelectAll;
    cbxCI_UF.SetFocus;
  end

end;

procedure TfrmCreateServidor_20220311.cbxTE_UFExit(Sender: TObject);
begin
  if (cbxTE_UF.Text <> '')
  and (not UF_EValida(cbxCI_UF.EditingText))
  then
  begin
    ShowMessage('UF é inválida');
    //cbxTE_UF.Text := ''; -- Não apaga o valor
    //cbxTE_UF.SelectedItem := -1;
    cbxTE_UF.SelectAll;
    cbxTE_UF.SetFocus;
  end

end;

procedure TfrmCreateServidor_20220311.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //tshSQL.TabVisible := not tshSQL.TabVisible;
    //gbxSQL.Visible := not gbxSQL.Visible;

    //frmLogs.mmoLog.Visible := not frmLogs.mmoLog.Visible;

    frmLogs.ShowModal;
  end
end;

function TfrmCreateServidor_20220311.MatriculaCadastradaNoID(
  pIdPessoal, pMatricula: string): TPessoalArray;
begin
  SetLength(Result, 3);
   with dmCadastroServidor.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;
     SQL.Text :=

     {'SELECT idPessoal, Matrícula, Nome, Cargo'
     + ' FROM vwListaServidoresCompleta'
     + ' WHERE idPessoal = ' + QuotedStr(pIdPessoal)
     + ' AND Matrícula = ' + QuotedStr(pMatricula); }

      'SELECT pes.idPessoal, ser.ID, ser.idServidor, pes.Nome, car.Descricao'
     + ' FROM tbPessoal pes'
     + ' INNER JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
     + ' INNER JOIN tbCargo car ON car.idCargo = ser.idCargo'
     + ' WHERE pes.idPessoal = '  + QuotedStr(pIdPessoal)
     + ' AND ser.idServidor = '   + QuotedStr(pMatricula);


     Open;
     //ExecSQL;
     frmLogs.mmoLog.Lines.Add(SQL.Text);
   end;

   if (dmCadastroServidor.qryExecSQL.RecordCount = 0)
   then
     Result[0] := '0'
   else
   begin
     Result[0] := dmCadastroServidor.qryExecSQL.FieldValues['idServidor'];
     Result[1] := dmCadastroServidor.qryExecSQL.FieldValues['Nome'];
     Result[2] := dmCadastroServidor.qryExecSQL.FieldValues['Descricao'];
   end;
    // dmCadastroServidor.qryExecSQL.Close;

end;

procedure TfrmCreateServidor_20220311.edtidServidorExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
begin //1
  if btnSair.Focused then Close
  else
  begin //2
    if Trim(edtidServidor.Text) = '' then
    begin //3
      ShowMessage('É necessário digitar o número da matrícula');
      edtidServidor.SetFocus;
    end //3
    else
    begin //3
      edtidServidor.Text := InserirZeros(edtidServidor.Text,10);
      Setlength(Pessoal, 3);

      Pessoal := MatriculaCadastradaNoID(
      lbl_IDP.Caption, Trim(edtidServidor.Text));
      //ShowMessage(Pessoal[0]);
      if Pessoal[0] <> '0' then
      begin //4
        Mensagem := 'Já existe um registro cadastrado para esses valores: '
                    + #13 + 'Matrícula: ' + Pessoal[0]
                    + #13 + 'Nome: ' + Pessoal[1]
                    + #13 + 'Cargo: ' + Pessoal[2];


        ShowMessage(Mensagem);

        bloquearEdicao;

        edtidServidor.Text := '' ;
        edtidServidor.SetFocus;
      end //4
      else
      begin //4
        DesbloquearCampos;
        edtNome.SetFocus;
      end; //4
    end; //3
  end; //2
end; //1

procedure TfrmCreateServidor_20220311.Button1Click(Sender: TObject);
var
  Erro: Word;
begin
  Erro := WinExec('.\ProgramaExterno\Iniciar.exe / MinhaSenha', SW_SHOW);
  if Erro <= 31 then { Se ocorreu erro... }
  ShowMessage('Erro ao executar o programa.');

end;

procedure TfrmCreateServidor_20220311.Button2Click(Sender: TObject);
var edArquivo: String;
begin
//  ShellExecute(Application.Handle, PChar('open'), PChar('.\ProgramaExterno\Iniciar.exe'), PChar('MinhaSenha'), nil, SW_NORMAL);

edArquivo := '.\ProgramaExterno\Iniciar.exe';

ShellExecute(handle,'open',PChar(edArquivo), 'MinhaSenha','',SW_SHOWNORMAL)
end;

procedure TfrmCreateServidor_20220311.CarregarSessaoAnterior;
var
  IniFile  : TIniFile;
  //LstUser,
  Caminho, wArq: string;
  APP_PATH : string;
  //LstDate : TDateTime;
begin
  Caminho  := APP_PATH + '\UserPrefs\';

  wArq := 'Sessao'+DMConexao.Usuario.CPF+'.INI';

  IniFile := TIniFile.Create(Caminho+wArq);

  //se não houver último usuário retornará uma string vazia
  //se não houver data armazenada retornar a data atual

  LstUser := IniFile.ReadString('User','Nome','');
  LstDate := IniFile.ReadDate('User', 'Data', Date);

  //ShowMessage(LstUser + ' ' + DateToStr(LstDate));

  {LstEdtProcesso  := IniFile.ReadString('frmCritPesq', 'edtProcesso','');
  lstEdtAS        := IniFile.ReadString('frmCritPesq', 'edtidAS','');
  lstidCE         := IniFile.ReadString('frmCritPesq', 'edtidCE','');
  lstProtocoloSAJ := IniFile.ReadString('frmCritPesq', 'edtProtocoloSAJ','');
  lstCertidao     := IniFile.ReadString('frmCritPesq', 'edtCertidao','');
  lstCDA          := IniFile.ReadString('frmCritPesq', 'edtCDA','');
  lstReu          := IniFile.ReadString('frmCritPesq', 'edtReu','');
  lstAutor        := IniFile.ReadString('frmCritPesq', 'edtAutor','');
  lstParte        := IniFile.ReadString('frmCritPesq', 'edtParte','');
  lstCPF          := IniFile.ReadString('frmCritPesq', 'edtCPF','');}

  IniFile.Free;

end;

function TfrmCreateServidor_20220311.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;

  case OPERACAO of
    1: lblOperacao.Caption := 'INCLUSÃO PESSOAL'; // Inclusão de novo registro nas tabelas tbPessoal, tbServidor e tbDados
    2: lblOperacao.Caption := 'INCLUSÃO SERVIDOR'; // Inclusão de novo registro apenas na tabela tbServidor
    3: lblOperacao.Caption := 'EDIÇÃO';     // Edição do registro cadastrado (as 3 tabelas acima)
  end;

  Result := true;
end;


procedure TfrmCreateServidor_20220311.Button3Click(Sender: TObject);
begin
  frmLogs.mmoLog.Lines.Add(dmPessoal.registraNotificaNupro
  (edtidServidor.Text, lkpLotacao.EditingValue, lkpCargo.EditingValue,
  lkpFuncao.EditingValue, edtDt_ExercicioCargo.Text, DMConexao.Usuario.CPF, RetornaData(2))
  );
end;

procedure TfrmCreateServidor_20220311.edtCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8, #9]) then key := #0;
end;

procedure TfrmCreateServidor_20220311.bloquearEdicao;
var i: integer;
begin
  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxDBTextEdit) then
    begin
      if (Components[i].Name <> 'edtCPF') and
         (Components[i].Name <> 'edtidServidor')
      then
      TcxDBTextEdit(Components[i]).Enabled := false;
    end;

    if (Components[i] is TcxDBLookupComboBox) then
      TcxDBLookupComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxDBComboBox) then
      TcxDBComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxDBDateEdit) then
      if (Components[i].Name <> 'edtDtNascimento')
      then TcxDBDateEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxDBMaskEdit) then
       TcxDBMaskEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxDBCheckBox) then
       TcxDBCheckBox(Components[i]).Enabled := false;

  end;

end;

procedure TfrmCreateServidor_20220311.desbloquearEdicao;
begin
//
end;

procedure TfrmCreateServidor_20220311.configurarCampos;
begin
  //edtNome.Properties.MaxLength := 2;
end;

function TfrmCreateServidor_20220311.retornaSQLUpdateDados: String;
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
  + ' WHERE idPessoal = ' + QuotedStr(lbl_IDP.Caption)
  ;

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL de atualização de dados do servidor (retornaSQLUpdateDados)', SQL_Dados);

  Result := SQL_Dados;

end;

function TfrmCreateServidor_20220311.retornaSQLUpdatePessoal: String;
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
      + ' WHERE idPessoal = ' + QuotedStr(lbl_IDP.Caption);

  Result := SQL_Pessoal;

  monitorarAcoesDaSessao('ufCreateServidor', 'Retornar SQL de alterção do pessoal(retornaSQLUpdatePessoal)', Result)

end;

function TfrmCreateServidor_20220311.retornaSQLUpdateServidor(pIDP, pIDS: String): String;
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

  if lkpFuncao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idFuncao = ' + QuotedStr(lkpFuncao.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idFuncao  = NULL' ;

  if lkpLotacao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idLotacao = ' + QuotedStr(lkpLotacao.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idLotacao = NULL';


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

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL de atualização do servidor (retornaSQLUpdateServidor)', SQL_Servidor);

  Result := SQL_Servidor;

end;

procedure TfrmCreateServidor_20220311.Button4Click(Sender: TObject);
begin
  frmLogs.mmoLog.Lines.Add(retornaSQLUpdatePessoal);
end;

procedure TfrmCreateServidor_20220311.Button5Click(Sender: TObject);
begin
  frmLogs.mmoLog.Lines.Add(retornaSQLUpdateServidor(lbl_IDP.Caption, lbl_IDS.Caption));
end;

function TfrmCreateServidor_20220311.servidorEstaAtivo(pCPF: string): TPessoalArray;
begin
  SetLength(Result, 4);
   with dmCadastroServidor.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;
     SQL.Text :=

      'SELECT pes.idPessoal, ser.ID, ser.idServidor, pes.Nome'
     + ', car.Descricao AS descricaoCargo , fun.Descricao AS descricaoFuncao'
     + ' FROM tbPessoal pes'
     + ' INNER JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
     + ' LEFT JOIN tbCargo car ON car.idCargo = ser.idCargo'
     + ' LEFT JOIN tbFuncao fun ON fun.idFuncao = ser.idFuncao'
     + ' WHERE pes.CPF = '  + QuotedStr(pCPF)
     + ' AND ser.idDesligamento IS NULL';


     Open;
     //ExecSQL;
     frmLogs.mmoLog.Lines.Add('Verificar se o servidor está ativo no sistema.' + #13);
     frmLogs.mmoLog.Lines.Add(SQL.Text);
   end;

   if (dmCadastroServidor.qryExecSQL.RecordCount = 0)
   then
     Result[0] := '0'
   else
   begin
     Result[0] := dmCadastroServidor.qryExecSQL.FieldValues['idServidor'];
     Result[1] := dmCadastroServidor.qryExecSQL.FieldValues['Nome'];
     Result[2] := dmCadastroServidor.qryExecSQL.FieldValues['descricaoCargo'];
     Result[3] := dmCadastroServidor.qryExecSQL.FieldValues['descricaoFuncao'];

   end;
    // dmCadastroServidor.qryExecSQL.Close;

end;

procedure TfrmCreateServidor_20220311.edtDtNascimentoExit(Sender: TObject);
begin
  if Trim(edtDtNascimento.Text) = '' then
  begin
    ShowMessage('Como assim? Você já viu alguém sem data de nascimento? Daqui eu não passarei.');
    edtDtNascimento.SetFocus;
  end
end;

procedure TfrmCreateServidor_20220311.GravarLog;
var
  F: TextFile;
  i, wtotLinhas: integer;
  Caminho, wNomeArquivo, wLinhaAtual, wDataHora: string;
begin
  wDataHora := RetornaData(2);

  Caminho  := APP_PATH + '\UserPrefs\GPES\Logs\';
  wNomeArquivo := Caminho + 'InclusaoServidor'
  + Trim(edtCPF.Text)
  + copy(wDataHora,7,4)
  + copy(wDataHora,4,2)
  + copy(wDataHora,1,2)
  + copy(wDataHora,12,2)
  + copy(wDataHora,15,2)
  + '.txt';

//  ShowMessage(wNomeArquivo);

  AssignFile(F,(wNomeArquivo));
  Rewrite(F);

  wTotLinhas := frmLogs.mmoLog.Lines.Count;

  for i:= 0 to wTotLinhas do
  begin
    wLinhaAtual := frmLogs.mmoLog.Lines[i];
    Writeln(F,wLinhaAtual);
  end;

  CloseFile(F);

end;

function TfrmCreateServidor_20220311.retornaNovoIDServidor(idPessoal:String): String;
begin
  with dmPessoal.qryExecSQL do
  begin
    Connection := dmConexao.conPessoal;
    Active := false;

    SQL.Text := 'SELECT ID FROM tbServidor WHERE idPessoal = '
    + QuotedStr(idPessoal);

    monitorarAcoesDaSessao
    ('ufCreateServidor', 'SQL (retornaNovoIDServidor)', SQL.Text);

    Active := true;

    Result := FieldValues['ID'];

  end;

end;

function TfrmCreateServidor_20220311.retornaSQLInsertServidor(pIDP: String): String;
var SQL_Servidor: String;
begin
  // Se não for atribuído um valor para o Cargo
  // o banco atribuirá o valor default (999999)
  // ídem para os campos idFuncao, idLotacao, Requisitado, etc

  SQL_Servidor := 'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbServidor'
  + '(idPessoal, idServidor)'
  + ' Values ('
  + QuotedStr(pIDP)
  + ', ' + QuotedStr(edtidServidor.Text)
  + ')';

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'SQL da iclusão de servidor (retornaSQLInsertServidor)', SQL_Servidor);

  Result := SQL_Servidor;

end;

function TfrmCreateServidor_20220311.retornaSQLInsertDados(pIDP: String): String;
var SQL_Dados: String;
begin

  SQL_Dados := 'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbDados'
  + ' (idPessoal)'
  + ' Values ('
  + QuotedStr(pIDP)
  + ')';

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL da iclusão de dados dos servidor (retornaSQLInsertDados)', SQL_Dados);

  Result := SQL_Dados;

end;


function TfrmCreateServidor_20220311.retornaSQLInsertCamposAltServ(
  pIDP: String): String;
var SQL_CAS: String;
begin

  SQL_CAS := 'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbcamposAltServ'
  + ' (idPessoal)'
  + ' Values ('
  + QuotedStr(pIDP)
  + ')';

  Result := SQL_CAS;

end;

function TfrmCreateServidor_20220311.retornaSQLInsertNotificaNupro(
  pIDP, Evento: String): String;
var vSQL : String;
begin

  vSQL :=
      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbNotificaNupro'
      + '(dtEvento, idPessoal, idLotacao, Evento, idOperador)'
      + ' VALUES ('
      + QuotedStr(RetornaData(2)) + ', '
      + QuotedStr(pIDP)   + ', '
      + QuotedStr(lkpLotacao.EditValue)   + ', '
      + QuotedStr(Evento)            + ', '
      + QuotedStr(DMConexao.Usuario.CPF) + ')';


  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorn SQL de registro no NotificaNupro (retornaSQLInsertNotificaNupro)', vSQL);

  Result := vSQL;
end;

function TfrmCreateServidor_20220311.gravarRegistro: boolean;
begin
//
end;

procedure TfrmCreateServidor_20220311.SetarModoInclusaoPessoal;
begin
  LimparCampos;
  DesbloquearCampos;
  SetarStatus('1');
  DesabilitarBtnNovo;
  HabilitarBtnGravar;
end;

procedure TfrmCreateServidor_20220311.SetarModoInclusaoServidor;
begin
  LimparCampos;
  DesbloquearCampos;
  SetarStatus('2');
  DesabilitarBtnNovo;
  HabilitarBtnGravar;
end;

procedure TfrmCreateServidor_20220311.lkpLotacaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpLotacao.Clear;
  end;
end;

initialization
  obStatus := TStatus.Create;
finalization
  obStatus.Free;

end.
