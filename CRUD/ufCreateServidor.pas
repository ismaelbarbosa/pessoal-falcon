unit ufCreateServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, DB, ADODB, ExtCtrls, cxButtons, cxMemo,
  Grids, DBGrids, cxSplitter, cxCheckBox, StdCtrls, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, Mask, DBCtrls, Buttons, cxPC, ComCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TPessoal = record
    nome, cpf, dtNascimento, idPessoal, idServidor,
    idCargo, cargo, especialidade, idLotacao, lotacao,
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
    {Dt_InicioContrato2_Estagiario,
    Dt_TerminoContrato2_Estagiario,
    Dt_InicioContrato3_Estagiario,
    Dt_TerminoContrato3_Estagiario,
    Dt_InicioContrato4_Estagiario,
    Dt_TerminoContrato4_Estagiario,}
    Supervisor_Estagiario,
    TurnoEstagio,
    Semestre,
    InstituicaoEnsino,
    observacao
    : Array[0..1] of String;
end;

type
  TStatus = class
  idStatus: char;
  dscStatus: String;
end;

type
  TPessoalArray = array of string;

type
  TfrmCreateServidor = class(TForm)
    barServidor: TStatusBar;
    pnlNomeMatricula: TPanel;
    txtNome: TDBText;
    pgcPessoal: TcxPageControl;
    tshDadosFuncionais: TcxTabSheet;
    grpbxDadosFuncionais: TGroupBox;
    lblCargo: TLabel;
    lblLotacao: TLabel;
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
    lblFuncao: TLabel;
    lblDt_PosseFunca: TLabel;
    lblDt_ExercicioFuncao: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    lbl_IDP: TLabel;
    lbl_IDS: TLabel;
    Label1: TLabel;
    edtAverbacaoServPublico: TDBEdit;
    chkAuxTransporte: TcxDBCheckBox;
    chkPessoal: TcxCheckBox;
    chkServidor: TcxCheckBox;
    chkDados: TcxCheckBox;
    chkDatas: TcxCheckBox;
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
    tshAFazer: TcxTabSheet;
    cxMemo1: TcxMemo;
    pnlBotoes: TPanel;
    lblOperacao: TLabel;
    btnNovo: TcxButton;
    btnGravar: TcxButton;
    btnSair: TcxButton;
    tmrRelPersonalizado: TTimer;
    qryMaxID: TADOQuery;
    lkpCargo: TcxLookupComboBox;
    lkpEspecialidade: TcxLookupComboBox;
    edtDt_PosseCargo: TcxDateEdit;
    edtDt_ExercicioCargo: TcxDateEdit;
    edtDt_PrimeiroExercicioGDF: TcxDateEdit;
    edtDt_NomeacaoCargo: TcxDateEdit;
    edtDt_NomeacaoCargoDODF: TcxDateEdit;
    edtDt_NomeacaoFuncao: TcxDateEdit;
    edtDt_NomeacaoFuncaoDODF: TcxDateEdit;
    edtDt_PosseFuncao: TcxDateEdit;
    edtDt_ExercicioFuncao: TcxDateEdit;
    edtAverbacaoGDF: TcxDateEdit;
    lkpLotacao: TcxLookupComboBox;
    chkRequisitado: TcxCheckBox;
    edtOrgaoOrigem: TcxTextEdit;
    lkpFuncao: TcxLookupComboBox;
    cbxCargaHoraria: TcxComboBox;
    cbxClasse: TcxComboBox;
    cbxPadrao: TcxComboBox;
    edtCF_Num: TcxTextEdit;
    edtNaturalidade: TcxTextEdit;
    edtPai: TcxTextEdit;
    edtMae: TcxTextEdit;
    edtConjuge: TcxTextEdit;
    edtEndereco: TcxTextEdit;
    edtBairro: TcxTextEdit;
    edtCidade: TcxTextEdit;
    edtEmail: TcxTextEdit;
    edtCI_Num: TcxTextEdit;
    edtCI_Emissao: TcxTextEdit;
    edtTE_Num: TcxTextEdit;
    edtTE_Zona: TcxTextEdit;
    edtPis_Pasep: TcxTextEdit;
    edtTE_Secao: TcxTextEdit;
    edtAgencia: TcxTextEdit;
    edtConta: TcxTextEdit;
    edtOAB_Num: TcxTextEdit;
    edtOAB_Secao: TcxTextEdit;
    cbxNatural_UF: TcxComboBox;
    cbxTipoSanguineo: TcxComboBox;
    cbxEnderecoUF: TcxComboBox;
    cbxGrauInstrucao: TcxComboBox;
    cbxCI_UF: TcxComboBox;
    cbxTE_UF: TcxComboBox;
    lkpEstadoCivil: TcxLookupComboBox;
    lkpCurso: TcxLookupComboBox;
    edtCEP: TcxMaskEdit;
    edtTE_Emissao: TcxDateEdit;
    lkpBanco: TcxLookupComboBox;
    btnSelFuncao: TcxButton;
    btnSelLotacao: TcxButton;
    lblCF_Num: TLabel;
    grdTelefones: TcxGrid;
    tbvTelefones: TcxGridDBTableView;
    tbvTelefonesColumn1: TcxGridDBColumn;
    tbvTelefonesColumn2: TcxGridDBColumn;
    lvlTelefones: TcxGridLevel;
    gbxCRUDTelefones: TcxGroupBox;
    btnIncluirTelefone: TcxButton;
    btnEditarTelefone: TcxButton;
    dsTelefonesServidor: TDataSource;
    qryTelefonesServidor: TADOQuery;
    lblCPF: TLabel;
    edtCPF: TcxMaskEdit;
    lblMatricula: TLabel;
    edtidServidor: TcxTextEdit;
    lblNome: TLabel;
    edtNome: TcxTextEdit;
    lblNascimento: TLabel;
    edtDtNascimento: TcxDateEdit;
    tshEstagio: TcxTabSheet;
    Label14: TLabel;
    Label18: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    edtSupervisor_Estagiario: TcxTextEdit;
    edtDt_InicioContrato1_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato1_Estagiario: TcxDateEdit;
    edtInstituicaoEnsino: TcxTextEdit;
    edtTurnoEstagio: TcxTextEdit;
    edtSemestre: TcxTextEdit;
    mmoObservacao_Estagio: TcxMemo;
    cxButton1: TcxButton;
    Label2: TLabel;
    lbl_IDA: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFExit(Sender: TObject);
    procedure edtidServidorKeyPress(Sender: TObject; var Key: Char);
    procedure edtidServidorExit(Sender: TObject);
    procedure edtOrgaoOrigemKeyPress(Sender: TObject; var Key: Char);
    procedure btnSelFuncaoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSelLotacaoClick(Sender: TObject);
    procedure btnIncluirTelefoneClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtNaturalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtPaiKeyPress(Sender: TObject; var Key: Char);
    procedure edtMaeKeyPress(Sender: TObject; var Key: Char);
    procedure edtConjugeKeyPress(Sender: TObject; var Key: Char);
    procedure edtEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure edtBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCEPKeyPress(Sender: TObject; var Key: Char);
    procedure edtDtNascimentoExit(Sender: TObject);
    procedure lkpCargoExit(Sender: TObject);
    procedure edtOrgaoOrigemExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    OPERACAO: Integer;
    Mens: Array of String;
    Campos: Array of String;
    TStatus: Array of String;

    function SQLNovoIDServidor(idPessoal: String): String;
  public
    procedure setarStatus(prmModo: char);
    function setarOperacao(tipo: Integer):boolean;

    procedure setarModoInclusaoPessoal;
    procedure setarModoInclusaoServidor;
    procedure setarModoAlteracao;
    procedure setarCampos;

    procedure configurarCampos;
    procedure limparCampos;
    procedure desbloquearCampos;
    procedure bloquearEdicao;
    procedure desbloquearEdicao;

    procedure habilitarBtnNovo;
    procedure desabilitarBtnNovo;
    procedure habilitarBtnGravar;
    procedure desabilitarBtnGravar;

    procedure preencherCamposUF;

    function cpfEstaOK(CPF: String): boolean;
    function cpfJaCadastrado(pCPF: string): TPessoalArray;
    function carregarDados:boolean;
    function matriculaCadastradaNoID(pIdPessoal, pMatricula: string): TPessoalArray;

    function incluirRegistro(modo: integer): boolean;
    function alterarRegistro: boolean;
    function exibirTelefones(pidPessoal: String): Integer;

    function SQLInsertPessoal(pIDP: String): String;
    function SQLInsertServidor(pIDP: String): String;
    function SQLInsertDados(pIDP: String): String;
    function SQLInsertCamposAltServ(pIDP: String): String;

    //function SQLInsertNotificaNupro(pIDP, Evento: String): String;
    function SQLInsertNotificaNupro
    (idAlteracao, idServidorAnt, idServidorNov, dtExercicioCargoAnt
    , dtExerciciocargoNov, dtDesligCargoAnt, dtDesligCargoNov, dtExercicioFuncaoAnt
    , dtExercicioFuncaoNov, dtDesligFuncaoAnt, dtDesligFuncaoNov, dtFalecimentoAnt
    , dtFalecimentoNov, idCargo, idFuncao, idLotacaoAnt
    , idLotacaoNov, idUsuario, dtAlteracao: String): String;

    function SQLUpdateServidor(pIDP, pIDS: String): String;
    function SQLUpdateDatas(pIDP, pIDS: String): String;

    function SQLUpdateCamposAltServ
    (idAlteracao, idServidorAnt, idServidorNov, dtExercicioCargoAnt
    , dtExerciciocargoNov, dtDesligCargoAnt, dtDesligCargoNov, dtExercicioFuncaoAnt
    , dtExercicioFuncaoNov, dtDesligFuncaoAnt, dtDesligFuncaoNov, dtFalecimentoAnt
    , dtFalecimentoNov, idCargo, idFuncao, idLotacaoAnt
    , idLotacaoNov, idUsuario, dtAlteracao: String): String;

    function retornaNovoIDServidor(idPessoal:String):String;

    function setarRegistroAGravar: boolean;

  end;

var
  frmCreateServidor: TfrmCreateServidor;
  obStatus: TStatus;

implementation

uses uDMConexao, PRG_utils, uPesFuncoes, uDmCadastroServidor, ufLogs,
  uDMPessoal, ufSelecionaFuncao, ufSelLotacao, ufUpdateTelefone;

{$R *.dfm}

var EstadoEdicao, RegistroAGravar: TPessoal;

procedure TfrmCreateServidor.configurarCampos;
begin
  edtNome.Properties.MaxLength := 60;
  edtCF_Num.Properties.MaxLength := 4;
end;

procedure TfrmCreateServidor.desabilitarBtnGravar;
begin
  btnGravar.Enabled := false;
end;

procedure TfrmCreateServidor.desabilitarBtnNovo;
begin
  btnNovo.Enabled := false;
end;

procedure TfrmCreateServidor.desbloquearCampos;
var i: integer;
begin
  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
    begin
      if Components[i].Name <> 'edtIdProcuradoria' then
      TcxTextEdit(Components[i]).Enabled := true;
    end;

    if (Components[i] is TcxLookupComboBox) then
      TcxLookupComboBox(Components[i]).Enabled := true;

    if (Components[i] is TcxComboBox) then
      TcxComboBox(Components[i]).Enabled := true;

    if (Components[i] is TcxDateEdit) then
       TcxDateEdit(Components[i]).Enabled := true;

    if (Components[i] is TcxMaskEdit) then
       TcxMaskEdit(Components[i]).Enabled := true;

    if (Components[i] is TcxCheckBox) then
       TcxCheckBox(Components[i]).Enabled := true;
  end;
end;

procedure TfrmCreateServidor.FormCreate(Sender: TObject);
begin
  KeyPreview := true;

  //dmCadastroServidor.qryPessoal.Active := true; ************ Verificar se essa linha � necess�ria

  pgcPessoal.ActivePageIndex := 0;
  tshEstagio.Enabled := false;

  Setlength(Campos, 5);
  Mens := VarArrayof(['CPF','Nome','Data de nascimento',
            'Matr�cula', 'Lota��o']);

  limparCampos;
  configurarCampos;
  SetarModoInclusaoPessoal;

  //CarregarSessaoAnterior;

  monitorarAcoesDaSessao('ufCreateServidor', 'Evento OnCreate', 'Sess�o iniciada');

  qryMaxID.Connection             := DMConexao.conPessoal;
  qryTelefonesServidor.Connection := DMConexao.conPessoal;
end;

procedure TfrmCreateServidor.habilitarBtnGravar;
begin
  btnGravar.Enabled := true;
end;

procedure TfrmCreateServidor.habilitarBtnNovo;
begin
  btnNovo.Enabled := true;
end;

procedure TfrmCreateServidor.limparCampos;
var i: Integer;
begin
  lbl_IDP.Caption := '0';
  lbl_IDS.Caption := '0';

  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
    begin
      if (Components[i].Name <> 'edtCPF') // campos que ser�o mantidos
      and (Components[i].Name <> 'outroCampoASerMantido')
      then
      TcxTextEdit(Components[i]).Clear;
    end;

    if (Components[i] is TcxLookupComboBox) then
    begin
      if (Components[i].Name <> 'lkpLotacao_OLD')
      then
      TcxLookupComboBox(Components[i]).Clear;
    end;

    if (Components[i] is TcxComboBox) then
    begin
      if (Components[i].Name <> 'lkpLotacao_OLD')
      then
      TcxComboBox(Components[i]).Clear;
    end;

    if (Components[i] is TcxMaskEdit) then
      TcxMaskEdit(Components[i]).Clear;

    if (Components[i] is TcxDBDateEdit) then
      TcxDBDateEdit(Components[i]).Clear;

    if (Components[i] is TcxDBCheckBox) then
      TcxDBCheckBox(Components[i]).Checked := false;
  end;
end;

procedure TfrmCreateServidor.setarModoInclusaoPessoal;
begin
  edtCPF.Clear; // incluido pois � exce��o no limparCampos devido ao cadastro de servidor com CPF j� existente
  desbloquearCampos;
  setarStatus('1');
  setarOperacao(1);
  desabilitarBtnNovo;
  habilitarBtnGravar;
  tshTelefones.Enabled := false;
end;

function TfrmCreateServidor.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;

  case OPERACAO of
    1: lblOperacao.Caption := 'INCLUS�O PESSOAL';   // Inclus�o de novo registro nas tabelas tbPessoal, tbServidor e tbDados
    2: lblOperacao.Caption := 'INCLUS�O SERVIDOR';  // Inclus�o de novo registro apenas na tabela tbServidor
    3: lblOperacao.Caption := 'EDI��O';             // Edi��o do registro cadastrado (as 3 tabelas acima)
  end;

  Result := true;
end;

procedure TfrmCreateServidor.setarStatus(prmModo: char);
begin
  case prmModo of
    '1':
    begin
      with obStatus do
      begin
        idStatus := '1'; dscStatus := 'INCLUS�O PESSOAL';
      end;
    end;
    '2':
    begin
      with obStatus do
      begin
        idStatus := '2'; dscStatus := 'INCLUS�O SERVIDOR';
      end;
    end;
    '3':
    begin
      with obStatus do
      begin
        idStatus := '3'; dscStatus := 'EDI��O';
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

procedure TfrmCreateServidor.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
  tshAFazer.Enabled := false;
  
  edtCPF.SetFocus;

  if not dmCadastroServidor.retornarPessoal
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

  preencherCamposUF;

  //cbxNatural_UF.Properties.Items := dmCadastroServidor.ListaCliente;

  //mmoLog.Lines.Add(LstUser);
  //mmoLog.Lines.Add(DateToStr(LstDate));

  monitorarAcoesDaSessao('ufCreateServidor', 'Evento OnActivate',
  'Opera��o: ' + lblOperacao.Caption + chr(13)
  + 'Retornar tabelas relacionadas' + chr(13)
  + 'Preencher campos UF'
  );

end;

procedure TfrmCreateServidor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
      frmLogs.ShowModal;
  end
end;

procedure TfrmCreateServidor.preencherCamposUF;
var UF: string;
begin

  // S� retornou o nome dos campos
  // � necess�rio retornar o valor do campo NOME

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

procedure TfrmCreateServidor.edtCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8, #9]) then key := #0;
end;

procedure TfrmCreateServidor.edtCPFExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
  dados : Integer;
begin
  if btnSair.Focused then Close
  else
  begin
//    ShowMessage('Validando o CPF');
    if cpfEstaOK(edtCPF.Text) then
    begin
//      ShowMessage('CPF est� OK');

      Setlength(Pessoal, 3);
      Pessoal := CPFJaCadastrado(edtCPF.Text);

      if (Pessoal[0] <> '0')
      and (lbl_IDP.Caption = '0') then
      begin
        Mensagem := 'O CPF: ' + edtCPF.Text
                    + ' j� est� cadastrado para: '
                    + #13 + Pessoal[1]
                    + #13 + 'Nascimento: ' + Pessoal[2]
                    + #13 + #13 + 'Deseja continuar?';

        if ConfirmaAcao(Mensagem, 3) = 1
        then
        begin
          //ShowMessage('Confirmada a inclus�o do servidor');
          lbl_IDP.Caption := Pessoal[0]; // O Id do Pessoal j� fica setado
          SetarModoInclusaoServidor;


          // carregar dados

          dados := dmPessoal.pesquisarPessoal
          (' AND pes.CPF = '
          + QuotedStr(edtCPF.Text)
          );

          if not carregarDados
          then
          ShowMessage('Os dados pessoais n�o foram carregados para edi��o');
        end;
      end;
    end;
  end;
end;

function TfrmCreateServidor.cpfEstaOK(CPF: String): boolean;
begin
  if Trim(CPF) = '' then
  begin
    ShowMessage('Voc� deve digitar o n�mero do CPF');
    edtCPF.SetFocus;
    Result := false;
    Abort;
  end
  else
  if Length(Trim(CPF)) < 11 then
  begin
    ShowMessage('O CPF deve ter 11 d�gitos');
    edtCPF.SetFocus;
    Result := false;
    Abort;
  end
  else
  begin
    if CPF_valido(CPF) = false then
    begin
      ShowMessage('N�mero de CPF inv�lido.');
      edtCPF.SetFocus;
      edtCPF.SelectAll;
      Result := false;
      Abort;
    end;
  end;

  Result := true;
  
end;

function TfrmCreateServidor.cpfJaCadastrado(pCPF: string): TPessoalArray;
begin
  SetLength(Result, 3);
   with dmCadastroServidor.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;
     SQL.Text := 'SELECT idPessoal, Nome, Dt_Nascimento FROM tbPessoal'
     + ' WHERE tbPessoal.CPF = ' + QuotedStr(pCPF);

     monitorarAcoesDaSessao('frmCreateServidor', 'fun��o CPFJaCadastrado', SQL.Text);
     Open;
   end;

   if (dmCadastroServidor.qryExecSQL.RecordCount = 0)
   then
     Result[0] := '0'
   else
   begin
     Result[0] := dmCadastroServidor.qryExecSQL.FieldValues['idPessoal'];

     if not dmCadastroServidor.qryExecSQL.FieldByName('Nome').IsNull then
      Result[1] := dmCadastroServidor.qryExecSQL.FieldValues['Nome']
     else
      Result[1] := '';

     if not dmCadastroServidor.qryExecSQL.FieldByName('Dt_Nascimento').IsNull then
      Result[2] := dmCadastroServidor.qryExecSQL.FieldValues['Dt_Nascimento']
     else
      Result[2] := '';
   end;

   dmCadastroServidor.qryExecSQL.Close;

end;

procedure TfrmCreateServidor.setarCampos;
begin
//
end;

procedure TfrmCreateServidor.setarModoAlteracao;
begin
//  BloquearCampos;
  setarStatus('3');
  setarOperacao(3); //
  //  DesabilitarBtnGravar;
  habilitarBtnNovo;
  tshTelefones.Enabled := true;;
end;

procedure TfrmCreateServidor.setarModoInclusaoServidor;
begin
  desbloquearCampos;
  setarStatus('2');
  setarOperacao(2);
  desabilitarBtnNovo;
  habilitarBtnGravar;
end;

function TfrmCreateServidor.carregarDados: boolean;
begin
  with dmPessoal.qryPesquisa do
  begin

    //lbl_IDP.Caption         := FieldValues['idPessoal'];
    //lbl_IDS.Caption         := FieldValues['ID'];

    // Manter o valor do campo Nome no registro EstadoEdicao
    //EstadoEdicao.CPF[0]  := edtCPF.Text;

    if FieldByName('dt_nascimento').IsNull
    then edtDtNascimento.Text := ''
    else edtDtNascimento.Text := Trim(FieldValues['dt_nascimento']);

    // Manter o valor do campo dt_Nascimento no registro EstadoEdicao
    //EstadoEdicao.dtNascimento[0]  := edtDtNascimento.Text;

    {if FieldByName('idServidor').IsNull
    then edtidServidor.Text := ''
    else edtidServidor.Text := Trim(FieldValues['idServidor']);
    }
    // Manter o valor do campo idServidor no registro EstadoEdicao
    //EstadoEdicao.idServidor[0]  := edtidServidor.Text;

    if FieldByName('Nome').IsNull
    then edtNome.Text := ''
    else edtNome.Text := Trim(FieldValues['Nome']);

    // Manter o valor do campo Nome no registro EstadoEdicao
    //EstadoEdicao.Nome[0]  := edtNome.Text;


    //ShowMessage(FieldValues['descricaoCargo']);

    {if FieldByName('descricaoCargo').IsNull
    then lkpCargo.Text := ''
    else lkpCargo.Text := Trim(FieldValues['descricaoCargo']);

    // Manter o valor do campo Cargo no registro EstadoEdicao
    EstadoEdicao.Cargo[0]    := Trim(lkpCargo.Text);
    }

    {if FieldByName('Especialidade').IsNull
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
    }
    {if FieldByName('descricaoLotacao').IsNull
    then txtLotacao.Caption := '' // lkpLotacao.Text := ''
    else txtLotacao.Caption :=    // lkpLotacao.Text :=
    Trim(FieldValues['descricaoLotacao']);

    // Manter o valor do campo Lotacao no registro EstadoEdicao
    EstadoEdicao.Lotacao[0]  := Trim(txtLotacao.Caption);
    }

    //lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descricaoLotacao,

    {if not FieldByName('requisitado').IsNull
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
    }

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
end;

procedure TfrmCreateServidor.edtidServidorKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  if not (key in ['0'..'9','X',#8, #9]) then key := #0;
end;

procedure TfrmCreateServidor.edtidServidorExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
begin
  if btnSair.Focused then Close
  else
  begin
    edtidServidor.Text := InserirZeros(edtidServidor.Text,10);
    Setlength(Pessoal, 3);

    Pessoal := MatriculaCadastradaNoID(
    lbl_IDP.Caption, Trim(edtidServidor.Text));

    if lbl_IDP.Caption <> '0' then
    begin
      if Pessoal[0] <> '0' then
      begin
        Mensagem := 'J� existe um registro cadastrado para esses valores: '
                    + #13 + 'Matr�cula: ' + Pessoal[0]
                    + #13 + 'Nome: ' + Pessoal[1]
                    + #13 + 'Cargo: ' + Pessoal[2];


        ShowMessage(Mensagem);

        bloquearEdicao;

        edtidServidor.Text := '' ;
        edtidServidor.SetFocus;
      end
      else
      begin
        DesbloquearCampos;
        edtNome.SetFocus;
      end;
    end;
  //end;
  end;
end;

function TfrmCreateServidor.matriculaCadastradaNoID(pIdPessoal,
  pMatricula: string): TPessoalArray;
begin
  SetLength(Result, 3);

  with dmCadastroServidor.qryExecSQL do
  begin
   Connection := DMConexao.conPessoal;
   SQL.Text :=

    'SELECT pes.idPessoal, ser.ID, ser.idServidor, pes.Nome, car.Descricao'
   + ' FROM tbPessoal pes'
   + ' INNER JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
   + ' INNER JOIN tbCargo car ON car.idCargo = ser.idCargo'
   + ' WHERE pes.idPessoal = '  + QuotedStr(pIdPessoal)
   + ' AND ser.idServidor = '   + QuotedStr(pMatricula);

   Open;

   //frmLogs.mmoLog.Lines.Add(SQL.Text);
   monitorarAcoesDaSessao('ufCreateServidor', 'fun��o matriculaCadastradaNoID', SQL.Text);

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

procedure TfrmCreateServidor.bloquearEdicao;
var i: integer;
begin
  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
    begin
      if (Components[i].Name <> 'edtCPF') and
         (Components[i].Name <> 'edtidServidor')
      then
      TcxTextEdit(Components[i]).Enabled := false;
    end;

    if (Components[i] is TcxLookupComboBox) then
      TcxLookupComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxComboBox) then
      TcxComboBox(Components[i]).Enabled := false;

    if (Components[i] is TcxDateEdit) then
      if (Components[i].Name <> 'edtDtNascimento')
      then TcxDateEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxDBMaskEdit) then
       TcxMaskEdit(Components[i]).Enabled := false;

    if (Components[i] is TcxDBCheckBox) then
       TcxCheckBox(Components[i]).Enabled := false;
  end;    
end;

procedure TfrmCreateServidor.desbloquearEdicao;
begin

end;

procedure TfrmCreateServidor.edtOrgaoOrigemKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.btnSelFuncaoClick(Sender: TObject);
var wIdFuncao: String;
begin
  if not Assigned(frmSelecionaFuncao) then
  frmSelecionaFuncao := TfrmSelecionaFuncao.Create(Application);
  try
    frmSelecionaFuncao.ShowModal;
    if frmSelecionaFuncao.qryFuncao.Active then
    begin
      wIdFuncao := frmSelecionaFuncao.retornaIdFuncao;
      if wIdFuncao <> '' then
      begin
        lkpFuncao.EditValue  := wIdFuncao;
        //edtIdAcao.SetFocus;
      end;
    end;
  finally
    frmSelecionaFuncao.Release;
    frmSelecionaFuncao := nil;
  end;
end;

procedure TfrmCreateServidor.btnGravarClick(Sender: TObject);
var Registro_Setado: boolean;
idAlteracaoNN, idFuncao: String;
begin
  edtCPFExit(Nil);

  if (edtCPF.Text = '')
  then
  begin
    ShowMessage('O CPF deve ser informado.');
    edtCPF.SetFocus;
    Abort;
  end;

  if (edtidServidor.Text = '') or (edtidServidor.Text = '000000000')
  then
  begin
    ShowMessage('A matr�cula deve ser informada.');
    edtidServidor.SetFocus;
    Abort;
  end;

  if (edtNome.Text = '')
  then
  begin
    ShowMessage('O nome deve ser informado.');
    edtNome.SetFocus;
    Abort;
  end;

  if (edtDtNascimento.Text = '')
  then
  begin
    ShowMessage('A data de nascimento deve ser informada.');
    edtDtNascimento.SetFocus;
    Abort;
  end;

  if (lkpCargo.Text = '')
  then
  begin
    ShowMessage('O cargo deve ser informado.');
    lkpCargo.SetFocus;
    Abort;
  end;

  if (edtDt_ExercicioCargo.Text = '')
  then
  begin
    ShowMessage('A data de exerc�cio no cargo deve ser informada.');
    edtDt_ExercicioCargo.SetFocus;
    Abort;
  end;

  if lkpFuncao.EditingValue <> Null
  then idFuncao := lkpFuncao.EditingValue
  else idFuncao := '99999'; //NULL'

  // Setar os valores do registro RegistroAGravar e utilizar os valores nas fun��es que realizam updates
  if setarRegistroAGravar then
  Registro_Setado := true;

  case OPERACAO of
    // Inclus�o de Pessoal
    1:
    begin
      if incluirRegistro(1) then ShowMessage('Registro cadastrado (1) com sucesso');

      // Inserir em tbCamposAltServ

      idAlteracaoNN := InserirZeros
          (dmCadastroServidor.GerarID('tbCamposAltServ','idAlteracao'),12);

      lbl_IDA.Caption := idAlteracaoNN;

      // Campos a serem passados para a fun��o de registro do Notifica Nupro (19 no total)
      {
        idAlteracao, idServidorAnt, idServidorNov, dtExercicioCargoAnt, dtExerciciocargoNov,
        dtDesligCargoAnt, dtDesligCargoNov, dtExercicioFuncaoAnt, dtExercicioFuncaoNov, dtDesligFuncaoAnt,
        dtDesligFuncaoNov, dtFalecimentoAnt, dtFalecimentoNov, idCargo, idFuncao,
        idLotacaoAnt, idLotacaoNov, idUsuario, dtAlteracao
      }

      //ShowMessage('Inclu�do na tabela tbPessoal. Ser� inclu�da na tabela tbCamposAltServ');

      with RegistroAGravar do
      begin
        dmCadastroServidor.registrarNotificaNupro
        (SQLInsertNotificaNupro(idAlteracaoNN, '', idServidor[0], '',
        edtDt_ExercicioCargo.Text, '', '', '',
        '', '', '', '', '', idCargo[0], idFuncao, '', idLotacao[0],
        DMConexao.Usuario.CPF,
        RetornaData(2)))
      end;
    end;

    // Inclus�o de Servidor
    2:
    begin
      if incluirRegistro(2) then ShowMessage('Registro cadastrado (2) com sucesso');
      ShowMessage('Inclus�o tbServidor');
      idAlteracaoNN := InserirZeros
          (dmCadastroServidor.GerarID('tbCamposAltServ','idAlteracao'),12);

      lbl_IDA.Caption := idAlteracaoNN;

      // Campos a serem passados para a fun��o de registro do Notifica Nupro (19 no total)
      {
        idAlteracao, idServidorAnt, idServidorNov, dtExercicioCargoAnt, dtExerciciocargoNov,
        dtDesligCargoAnt, dtDesligCargoNov, dtExercicioFuncaoAnt, dtExercicioFuncaoNov, dtDesligFuncaoAnt,
        dtDesligFuncaoNov, dtFalecimentoAnt, dtFalecimentoNov, idCargo, idFuncao,
        idLotacaoAnt, idLotacaoNov, idUsuario, dtAlteracao
      }

      ShowMessage('Inclu�do na tabela tbPessoal. Ser� inclu�da na tabela tbCamposAltServ');

      with RegistroAGravar do
      begin
        dmCadastroServidor.registrarNotificaNupro
        (SQLInsertNotificaNupro(idAlteracaoNN, '', idServidor[0], '',
        edtDt_ExercicioCargo.Text, '', '', '',
        '', '', '', '', '', idCargo[0], idFuncao, '', idLotacao[0],
        DMConexao.Usuario.CPF,
        RetornaData(2)))
      end;

    end;
    // Altera��o
    3:
    begin
      //ShowMessage(RegistroAGravar.idLotacao[0]);
      if alterarRegistro then ShowMessage('Registro alterado com sucesso');
      //ShowMessage('Altera��o tbServidor');

      with RegistroAGravar do
      begin
        dmCadastroServidor.registrarNotificaNupro
        (SQLUpdateCamposAltServ(lbl_IDA.Caption, '', idServidor[0], '',
        edtDt_ExercicioCargo.Text, '', '', '',
        '', '', '', '', '', idCargo[0], idFuncao, '', idLotacao[0],
        DMConexao.Usuario.CPF,
        RetornaData(2)))
      end;

    end;
  end;

  // Incluir dados na tabela tbCamposAltServ pela
  // fun��o registrarNotificaNupro (dmCadastroServidor)

  // GravarLog;

end;

function TfrmCreateServidor.alterarRegistro: boolean;
var NIDP, NIDS, Evento
    , Endereco, Bairro, Cidade, EnderecoUF, CEP, CI_Num, CI_UF, CI_Emissao, Naturalidade
    , Natural_UF, Pis_Pasep, TE_Num, TE_Zona, TE_Secao, TE_UF, TE_Emissao
    , Pai, Mae, EstadoCivil, Conjuge, Banco, Agencia, Conta, OAB_Num, OAB_Secao, GrauInstrucao
    , Curso, TipoSanguineo, Email: String;

    OK_Pes, OK_Ser, OK_Dad, OK_Dat, OK_NN: boolean;
begin
  edtNomeExit(Self);
  setarCampos;

  //ShowMessage('Alterar as tabelas tbPessoal, tbServidor e tbDados');

  NIDP := lbl_IDP.Caption;
  NIDS := lbl_IDS.Caption;

  //ShowMessage(lbl_IDP.Caption + ' ' + lbl_IDS.Caption);

  if (NIDP = '0') or (NIDS = '0')
  or (NIDP = '') or (NIDS = '')
  then
  begin
    ShowMessage('AS chaves de pessoal e servidor est�o incorretas. Verifique.');
    Abort;
  end;


  if edtEndereco.Text <> Null
  then Endereco :=  edtEndereco.Text
  else Endereco := '';

  if edtBairro.Text <> Null
  then Bairro := edtBairro.Text
  else Bairro := '';

  if edtCidade.Text <> Null
  then Cidade := edtCidade.Text
  else Cidade := '';

  if cbxEnderecoUF.EditingValue <> Null
  then EnderecoUF := cbxEnderecoUF.Text
  else EnderecoUF := '';

  if edtCEP.Text <> Null
  then CEP := edtCEP.Text
  else CEP := '';

  if edtCI_Num.Text <> Null
  then CI_Num := edtCI_Num.Text
  else CI_Num := '';

  if cbxCI_UF.EditingValue <> Null
  then CI_UF := cbxCI_UF.Text
  else CI_UF := '';

  if edtCI_Emissao.Text <> Null
  then CI_Emissao := edtCI_Emissao.Text
  else CI_Emissao := '';

  if edtNaturalidade.Text <> Null
  then Naturalidade := edtNaturalidade.Text
  else Naturalidade := '';

  if cbxNatural_UF.EditingValue <> Null
  then Natural_UF := cbxNatural_UF.EditingValue
  else Natural_UF := '';

  if edtPis_Pasep.Text <> Null
  then Pis_Pasep := edtPis_Pasep.Text
  else Pis_Pasep := '';

  if edtTE_Num.Text <> Null
  then TE_Num := edtTE_Num.Text
  else TE_Num := '';

  if edtTE_Zona.Text <> Null
  then TE_Zona := edtTE_Zona.Text
  else TE_Zona := '';

  if edtTE_Secao.Text <> Null
  then TE_Secao := edtTE_Secao.Text
  else TE_Secao := '';

  if cbxTE_UF.EditingValue <> Null
  then TE_UF := cbxTE_UF.EditingValue
  else TE_UF := '';

  if edtTE_Emissao.Text <> Null
  then TE_Emissao := edtTE_Emissao.Text
  else TE_Emissao := '';

  if edtPai.Text <> Null
  then Pai := edtPai.Text
  else Pai := '';

  if edtMae.Text <> Null
  then Mae := edtMae.Text
  else Mae := '';

  if lkpEstadoCivil.EditingValue <> Null
  then EstadoCivil := lkpEstadoCivil.EditingValue
  else EstadoCivil := '';

  if edtConjuge.Text <> Null
  then Conjuge := edtConjuge.Text
  else Conjuge := '';

  if lkpBanco.EditingValue <> Null
  then Banco :=lkpBanco.EditingValue
  else Banco := '';

  if edtAgencia.Text <> Null
  then Agencia := edtAgencia.Text
  else Agencia := '';

  if edtConta.Text <> Null
  then Conta := edtConta.Text
  else Conta := '';

  if edtOAB_Num.Text <> Null
  then OAB_Num := edtOAB_Num.Text
  else OAB_Num := '';

  if edtOAB_Secao.Text <> Null
  then OAB_Secao := edtOAB_Secao.Text
  else OAB_Secao := '';

  if cbxGrauInstrucao.EditingValue <> Null
  then GrauInstrucao := cbxGrauInstrucao.EditingValue
  else GrauInstrucao := '';

  if lkpCurso.EditingValue <> Null
  then Curso := lkpCurso.EditingValue
  else Curso := '';

  if cbxTipoSanguineo.EditingValue <> Null
  then TipoSanguineo := cbxTipoSanguineo.EditingValue
  else TipoSanguineo := '';

  if edtEmail.Text <> Null
  then Email := edtEmail.Text
  else Email := '';


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

  with dmCadastroServidor do
  begin
    if executarSQL(SQLUpdateDados
    (NIDP
    , Endereco, Bairro, Cidade, EnderecoUF, CEP, CI_Num, CI_UF, CI_Emissao, Naturalidade
    , Natural_UF, Pis_Pasep, TE_Num, TE_Zona, TE_Secao, TE_UF, TE_Emissao
    , Pai, Mae, EstadoCivil, Conjuge, Banco, Agencia, Conta, OAB_Num, OAB_Secao, GrauInstrucao
    , Curso, TipoSanguineo, Email
    )
    )
    then
      OK_Dad := true
    else
      OK_Dad := false;
  end;

  // Tabela de Servidor

  if dmCadastroServidor.executarSQL(SQLUpdateServidor(NIDP, NIDS))
  then
    OK_Dad := true
  else
    OK_Dad := false;


  // Tabela tbServidor, campos do tipo data

  if dmCadastroServidor.executarSQL(SQLUpdateDatas(NIDP, NIDS))
  then
    OK_Dat := true
  else
    OK_Dat := false;


  if OK_Pes then
  begin
    chkPessoal.Checked := true;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro inclu�do na tabela de Pessoal em: ' + RetornaData(2));
  end
  else
  begin
    chkPessoal.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro n�o inclu�do na tabela de Pessoal em: ' + RetornaData(2));
  end;

  if OK_Ser then
  begin
    chkServidor.Checked := true;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro inclu�do na tabela de Servidor em: ' + RetornaData(2));
  end
  else
  begin
    chkServidor.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro n�o inclu�do na tabela de Servidor em: ' + RetornaData(2));
  end;

  if OK_Dad then
  begin
    chkDados.Checked := true;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro inclu�do na tabela de Dados em: ' + RetornaData(2));
  end
  else
  begin
    chkDados.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro n�o inclu�do na tabela de Dados em: ' + RetornaData(2));
  end;

  if OK_Dat then
  begin
    chkDatas.Checked := true;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas atualizadas na tabela Servidor em: ' + RetornaData(2));
  end
  else
  begin
    chkDatas.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas n�o atualizadas na tabela Servidor em: ' + RetornaData(2));
  end;

  if (OK_Pes) and (OK_Ser) and (OK_Dad) and (OK_Dat)
  then
  begin

    setarOperacao(3); // Altera��o de registro

    Evento := 'Altera��o de registro na tabela de pessoal'
    + chr(13)
    + 'Cargo: ' + lkpCargo.Text
    + chr(13)
    + 'Lota��o: ' + lkpLotacao.Text;

    {
    if dmCadastroServidor.registrarNotificaNupro
    // Tabela tbCamposAltSer
    (retornaSQLInsertNotificaNupro(NIDP, Evento))
    then
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro inclu�do na tabela NotificaNupro' + RetornaData(2))
    else
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro n�o inclu�do na tabela NotificaNupro' + RetornaData(2));
    }

    IncluirLog
    (
    DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
    RetornaData(2),
    'tbPessoal, tbServidor, tbDados',
    'NULL',
    NIDP,
    edtidServidor.Text,
    'TODOS',
    'Altera��o de registro do servidor: '
    + 'Matr�cula: ' + edtidServidor.Text
    + ' Nome: ' + edtNome.Text
    );

    // bloquear registro

    SetarModoAlteracao;
    ShowMessage('Registro gravado com sucesso.');
    //frmCreateServidor.Activate;  // atualiza a p�gina para exibir o modo de altera�~~ao

  end
end;

function TfrmCreateServidor.incluirRegistro(modo: integer): boolean;
var NIDP, NIDS, Evento
        {, Endereco, Bairro, Cidade, EnderecoUF, CEP, CI_Num, CI_UF, CI_Emissao, Naturalidade
        , Natural_UF, Pis_Pasep, TE_Num, TE_Zona, TE_Secao, TE_UF, TE_Emissao
        , Pai, Mae, EstadoCivil, Conjuge, Banco, Agencia, Conta, OAB_Num, OAB_Secao, GrauInstrucao
        , Curso, TipoSanguineo, Email}
        : String;
OK_Pes, OK_Ser, OK_Dad, OK_Dat: boolean;
begin
  edtNomeExit(Self);
  setarCampos;

  case modo of
    1: // Incluir na tabela tbPessoal
    begin
      NIDP := InserirZeros
      (dmCadastroServidor.GerarID('tbPessoal','idPessoal'),5);

      // Realizar os inserts iniciais nas tabelas tbPessoal, tbDados e tbServidor

      if dmCadastroServidor.executarSQL(SQLInsertPessoal(NIDP))     // Tabela de Pessoal
      then
        OK_Pes := true
      else
        OK_Pes := false;


      if dmCadastroServidor.executarSQL(SQLInsertDados(NIDP))       // Tabela de Dados
      then
        OK_Dad := true
      else
        OK_Dad := false;


      if dmCadastroServidor.executarSQL(SQLInsertServidor(NIDP))    // Tabela de Servidor
      then
        OK_Ser := true
      else
        OK_Ser := false;


      // realizar os updates nas tabelas tbDados e tbServidor


      with dmCadastroServidor, RegistroAGravar do
      begin
        if executarSQL(SQLUpdateDados
        (
          NIDP
          , endereco[0], bairro[0], cidade[0], enderecoUF[0], cep[0], ciNum[0], ciUF[0], ciEmissao[0], naturalidade[0]
          , naturalUF[0], pisPasep[0], teNum[0], teZona[0], teSecao[0], teUF[0], teEmissao[0]
          , Pai[0], Mae[0], EstadoCivil[0], Conjuge[0], Banco[0], Agencia[0], contaBanco[0], oabNum[0], oabSecao[0], grauInstrucao[0]
          , Curso[0], tipoSangue[0], email[0]
        )
        )
        then
          OK_Dad := true
        else
          OK_Dad := false;
      end;
    end; // 1


    2: // Incluir na tabela tbServidor
    begin
      NIDP := lbl_IDP.Caption; // confirmar se este label est� sendo setado pela pesquisa

      if dmCadastroServidor.executarSQL(SQLInsertServidor(NIDP))   // Tabela de Servidor
      then
        OK_Ser := true
      else
        OK_Ser := false;

      // Tabela de Pessoal

      with dmCadastroServidor do
      begin
        if executarSQL(SQLUpdatePessoal(NIDP, edtCPF.Text, edtNome.Text, edtDtNascimento.Text))
        then
          OK_Pes := true
        else
          OK_Pes := false;
      end;

      with dmCadastroServidor, RegistroAGravar do
      begin
        if executarSQL
        (SQLUpdateDados
          (
            NIDP
            , endereco[0], bairro[0], cidade[0], enderecoUF[0], cep[0], ciNum[0], ciUF[0], ciEmissao[0], naturalidade[0]
            , naturalUF[0], pisPasep[0], teNum[0], teZona[0], teSecao[0], teUF[0], teEmissao[0]
            , Pai[0], Mae[0], EstadoCivil[0], Conjuge[0], Banco[0], Agencia[0], contaBanco[0], oabNum[0], oabSecao[0], grauInstrucao[0]
            , Curso[0], tipoSangue[0], email[0]
          )
            {(NIDP
            , Endereco, Bairro, Cidade, EnderecoUF, CEP, CI_Num, CI_UF, CI_Emissao, Naturalidade
            , Natural_UF, Pis_Pasep, TE_Num, TE_Zona, TE_Secao, TE_UF, TE_Emissao
            , Pai, Mae, EstadoCivil, Conjuge, Banco, Agencia, Conta, OAB_Num, OAB_Secao, GrauInstrucao
            , Curso, TipoSanguineo, Email
            )}
        )
        then
          OK_Dad := true
        else
          OK_Dad := false;
      end;

      if OK_Ser then
      begin
        chkServidor.Checked := true;
        if dmCadastroServidor.executarSQL(SQLUpdateServidor(NIDP, NIDS)) // Tabela de Servidor
        then
          OK_Ser := true
        else
          OK_Ser := false;

        monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
        'Registro inclu�do na tabela de Servidor em: ' + RetornaData(2));
      end
      else
      begin
        chkServidor.Checked := false;
        monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
        'Registro n�o inclu�do na tabela de Servidor em: ' + RetornaData(2));
      end;
    end; //2
  end; // case


//////////////////////////////////////////////////////////

// Executar o c�digo abaixo para as duas op��es de inclus�o

  lbl_IDP.Caption := NIDP;
  //ShowMessage(lbl_IDP.Caption);


  NIDS := retornaNovoIDServidor(NIDP);  // corrigido para trazer o �ltimo ID (MAX(ID)
  lbl_IDS.Caption := NIDS;


  // Tabela tbServidor, campos do tipo data

  if dmCadastroServidor.executarSQL(SQLUpdateDatas(NIDP, NIDS))
  then
    OK_Dat := true
  else
    OK_Dat := false;


  if OK_Pes then
  begin
    chkPessoal.Checked := true;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro inclu�do na tabela de Pessoal em: ' + RetornaData(2));
  end
  else
  begin
    chkPessoal.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro n�o inclu�do na tabela de Pessoal em: ' + RetornaData(2));
  end;

  // Gravar os demais dados da tabela tbServidor pois na inclus�o
  // s� foram gravados os campos idPessoal e idServidor

  if OK_Ser then
  begin
    chkServidor.Checked := true;
    //if dmCadastroServidor.alterarServidor   // Tabela de Servidor
    if dmCadastroServidor.executarSQL(SQLUpdateServidor(NIDP, NIDS))
    then
      OK_Ser := true
    else
      OK_Ser := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro inclu�do na tabela de Servidor em: ' + RetornaData(2));
  end
  else
  begin
    chkServidor.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro n�o inclu�do na tabela de Servidor em: ' + RetornaData(2));
  end;  //7

  if OK_Dad then
  begin //8
    chkDados.Checked := true;

    {if dmCadastroServidor.alterarDados  // Tabela de Dados
    (retornaSQLUpdateDados)
    then
      OK_Dad := true
    else
      OK_Dad := false;
    }
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro inclu�do na tabela de Dados em: ' + RetornaData(2));
  end   //8
  else
  begin //8
    chkDados.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro n�o inclu�do na tabela de Dados em: ' + RetornaData(2));
  end;  //8

  if OK_Dat then
  begin //9
    chkDatas.Checked := true;

    {if dmCadastroServidor.atualizarDatas
    // Tabela tbServidor, campos do tipo data
    (retornaSQLUpdateDatas(NIDP, NIDS))
    then
      OK_Dat := true
    else
      OK_Dat := false;
    }
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas atualizadas na tabela Servidor em: ' + RetornaData(2));
  end
  else
  begin //9
    chkDatas.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas n�o atualizadas na tabela Servidor em: ' + RetornaData(2));
  end;  //9


  if (OK_Pes) and (OK_Ser) and (OK_Dad) and (OK_Dat)
  then
  begin //10

    setarOperacao(3); // Altera��o de registro


    Evento := 'Inclus�o de novo registro na tabela de pessoal'
    + chr(13)
    + 'Cargo: ' + lkpCargo.Text
    + chr(13)
    + 'Lota��o: ' + lkpLotacao.Text;

    {
    if dmCadastroServidor.registrarNotificaNupro
    // Tabela tbCamposAltSer
    (retornaSQLInsertNotificaNupro(NIDP, Evento))
    then
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro inclu�do na tabela NotificaNupro' + RetornaData(2))
    else
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro n�o inclu�do na tabela NotificaNupro' + RetornaData(2));
    }
    
    IncluirLog
    (
    DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
    RetornaData(2),
    'tbPessoal, tbServidor, tbDados',
    'NULL',
    NIDP,
    edtidServidor.Text,
    'TODOS',
    'Inclus�o do servidor: '
    + 'Matr�cula: ' + edtidServidor.Text
    + ' Nome: ' + edtNome.Text
    );

    // bloquear registro

    SetarModoAlteracao;
    ShowMessage('Registro gravado com sucesso.');
    //frmCreateServidor.Activate;  // atualiza a p�gina para exibir o modo de altera�~~ao

  end  //10

  //  else
//    ShowMessage('Houve um erro no cadastro de uma das tabelas.');




//////////////////////////////////////////////////////////



end;

procedure TfrmCreateServidor.edtNomeExit(Sender: TObject);
begin
  edtNome.Text :=
  AnsiUpperCase(RemoveEspaco(edtNome.Text));
end;

function TfrmCreateServidor.SQLInsertCamposAltServ(pIDP: String): String;
begin
//
end;

function TfrmCreateServidor.SQLInsertDados(pIDP: String): String;
begin
  Result := 'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbDados'
  + ' (idPessoal)'
  + ' Values ('
  + QuotedStr(pIDP)
  + ')';

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL da iclus�o de dados dos servidor (SQLInsertDados)', Result);
end;

function TfrmCreateServidor.SQLInsertNotificaNupro
    (idAlteracao, idServidorAnt, idServidorNov, dtExercicioCargoAnt
    , dtExerciciocargoNov, dtDesligCargoAnt, dtDesligCargoNov, dtExercicioFuncaoAnt
    , dtExercicioFuncaoNov, dtDesligFuncaoAnt, dtDesligFuncaoNov, dtFalecimentoAnt
    , dtFalecimentoNov, idCargo, idFuncao, idLotacaoAnt
    , idLotacaoNov, idUsuario, dtAlteracao: String): String;
var wSQL: String;
begin

// dever�o ser passados 19 valores para a realiza��o desse insert
// Obrigat�ris: idAlteracao, idServidorNov, idCargoNov, idFuncaoNov,
// idLotacaoNov, idUsuario, dtAlteracao

  wSQL :=
      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbCamposAltServ'
      //+ '(idPessoal, CPF, Nome, dt_Nascimento)'

      + ' (idAlteracao, idServidorAnt, idServidorNov, dtExercicioCargoAnt'
      + ', dtExerciciocargoNov, dtDesligCargoAnt, dtDesligCargoNov, dtExercicioFuncaoAnt'
      + ', dtExercicioFuncaoNov, dtDesligFuncaoAnt, dtDesligFuncaoNov, dtFalecimentoAnt'
      + ', dtFalecimentoNov, idCargo, idFuncao, idLotacaoAnt'
      + ', idLotacaoNov, idUsuario, dtAlteracao)'

      + ' VALUES ('

      {
       Exemplo de valores
       000000018293, 0000111111, 0000111111, NULL,
       NULL, NULL, NULL, NULL
       NULL, NULL, NULL, NULL
       NULL, AJ0000, 99999, 99999999
       160400000000, 27949460130, 2022-08-22 18:10:22.773
      }

      
      //1
      + QuotedStr(idAlteracao)           + ', ';

      //2
      if idServidorAnt <> '' then
      wSQL := wSQL + QuotedStr(idServidorAnt) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //3
      wSQL := wSQL +  QuotedStr(idServidorNov) + ', ';

      //4
      //+ QuotedStr(dtExercicioCargoAnt)   + ', '
      if dtExercicioCargoAnt <> '' then
      wSQL := wSQL + QuotedStr(dtExercicioCargoAnt) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //5
      //+ QuotedStr(dtExerciciocargoNov)   + ', '
      if dtExercicioCargoNov <> '' then
      wSQL := wSQL + QuotedStr(dtExercicioCargoNov) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //6
      //+ QuotedStr(dtDesligCargoAnt)      + ', '
      if dtDesligCargoAnt <> '' then
      wSQL := wSQL + QuotedStr(dtDesligCargoAnt) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //7
      //wSQL := wSQL + QuotedStr(dtDesligCargoNov)  + ', '
      if dtDesligCargoNov <> '' then
      wSQL := wSQL + QuotedStr(dtDesligCargoNov) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //8
      //+ QuotedStr(dtExercicioFuncaoAnt)  + ', '
      if dtExercicioFuncaoAnt <> '' then
      wSQL := wSQL + QuotedStr(dtExercicioFuncaoAnt) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //9
      //+ QuotedStr(dtExercicioFuncaoNov)  + ', '
      if dtExercicioFuncaoNov <> '' then
      wSQL := wSQL + QuotedStr(dtExercicioFuncaoNov) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //10
      //+ QuotedStr(dtDesligFuncaoAnt)     + ', '
      if dtDesligFuncaoAnt <> '' then
      wSQL := wSQL + QuotedStr(dtDesligFuncaoAnt) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //11
      //+ QuotedStr(dtDesligFuncaoNov)     + ', '
      if dtDesligFuncaoNov <> '' then
      wSQL := wSQL + QuotedStr(dtDesligFuncaoNov) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //12
      //+ QuotedStr(dtFalecimentoAnt)      + ', '
      if dtFalecimentoAnt <> '' then
      wSQL := wSQL + QuotedStr(dtFalecimentoAnt) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //13
      //+ QuotedStr(dtFalecimentoNov)      + ', '
      if dtFalecimentoNov <> '' then
      wSQL := wSQL + QuotedStr(dtFalecimentoNov) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //14
      //+ QuotedStr(idCargo)               + ', '
      if idCargo <> '' then
      wSQL := wSQL + QuotedStr(idCargo) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //15
      //+ QuotedStr(idFuncao)              + ', '
      if idFuncao <> '' then
      wSQL := wSQL + QuotedStr(idFuncao) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //16
      //+ QuotedStr(idLotacaoAnt)          + ', '
      if idLotacaoAnt <> '' then
      wSQL := wSQL + QuotedStr(idLotacaoAnt) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //17
      //+ QuotedStr(idLotacaoNov)          + ', '
      if idLotacaoNov <> '' then
      wSQL := wSQL + QuotedStr(idLotacaoNov) + ','
      else wSQL := wSQL + ' NULL' + ',';

      //18
      wSQL := wSQL + QuotedStr(idUsuario)    + ', ';

      //19
      wSQL := wSQL + QuotedStr(dtAlteracao)  + ')';

      Result := wSQL;

      monitorarAcoesDaSessao
      ('ufCreateServidor', 'SQL da inclus�o de notifica nupro (SQLInsertNotificaNupro)', Result);

end;

function TfrmCreateServidor.SQLInsertPessoal(pIDP: String): String;
begin
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
      ('ufCreateServidor', 'SQL da inclus�o de pessoal (SQLInsertPessoal)', Result);
end;

function TfrmCreateServidor.SQLInsertServidor(pIDP: String): String;
begin
  // Se n�o for atribu�do um valor para o Cargo
  // o banco atribuir� o valor default (999999)
  // �dem para os campos idFuncao, idLotacao, Requisitado, etc

  Result :=  'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbServidor'
  + '(idPessoal, idServidor)'
  + ' Values ('
  + QuotedStr(pIDP)
  + ', ' + QuotedStr(edtidServidor.Text)
  + ')';

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'SQL da iclus�o de servidor (SQLInsertServidor)', Result);

end;

function TfrmCreateServidor.SQLNovoIDServidor(idPessoal: String): String;
begin
//
end;


function TfrmCreateServidor.SQLUpdateDatas(pIDP, pIDS: String): String;
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
  ('ufCreateServidor', 'Retorna SQL de atualiza��o de datas (SQLUpdateDatas)', SQL_Datas);

  Result := SQL_Datas;
end;


function TfrmCreateServidor.SQLUpdateServidor(pIDP, pIDS: String): String;
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
    + ', especialidade = NULL';
  }

  if lkpEspecialidade.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idEspecialidade = ' + QuotedStr(lkpEspecialidade.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idEspecialidade = NULL';

  if lkpFuncao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idFuncao = ' + QuotedStr(lkpFuncao.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idFuncao  = ' + QuotedStr('99999'); //NULL' 

  if lkpLotacao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
    + ', idLotacao = ' + QuotedStr(lkpLotacao.EditingValue)
  else SQL_Servidor := SQL_Servidor
    + ', idLotacao = NULL';


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


    // ver com a Cl�udia em que situa��es s�o digitados
    // os campos AverbacaoGDF e AverbacaoServPublico

////////////////// Dados do est�gio ////////////////////////////////


    if edtDt_InicioContrato1_Estagiario.Text <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato1_Estagiario = ' + QuotedStr(Trim(edtDt_InicioContrato1_Estagiario.Text))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_InicioContrato1_Estagiario = NULL';

    if edtDt_TerminoContrato1_Estagiario.Text <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato1_Estagiario = ' + QuotedStr(Trim(edtDt_TerminoContrato1_Estagiario.Text))
    else SQL_Servidor := SQL_Servidor
      + ', Dt_TerminoContrato1_Estagiario = NULL';

    if edtInstituicaoEnsino.Text <> ''
    then SQL_Servidor := SQL_Servidor
      + ', InstituicaoEnsino = ' + QuotedStr(Trim(edtInstituicaoEnsino.Text))
    else SQL_Servidor := SQL_Servidor
      + ', InstituicaoEnsino = NULL';

    if edtTurnoEstagio.Text <> ''
    then SQL_Servidor := SQL_Servidor
      + ', TurnoEstagio = ' + QuotedStr(Trim(edtTurnoEstagio.Text))
    else SQL_Servidor := SQL_Servidor
      + ', TurnoEstagio = NULL';

    if edtSemestre.Text <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Semestre = ' + QuotedStr(Trim(edtSemestre.Text))
    else SQL_Servidor := SQL_Servidor
      + ', Semestre = NULL';

    if mmoObservacao_Estagio.Text <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Observacao = ' + QuotedStr(Trim(mmoObservacao_Estagio.Text))
    else SQL_Servidor := SQL_Servidor
      + ', Observacao = NULL';

    if edtSupervisor_Estagiario.Text <> ''
    then SQL_Servidor := SQL_Servidor
      + ', Supervisor_Estagiario = ' + QuotedStr(Trim(edtSupervisor_Estagiario.Text))
    else SQL_Servidor := SQL_Servidor
      + ', Supervisor_Estagiario = NULL';


////////////////////////////////////////////////////////////////////



  SQL_Servidor := SQL_Servidor
    + ', idUsuario = ' + QuotedStr(DMConexao.Usuario.CPF)
    + ' WHERE idPessoal = ' + QuotedStr(pIDP)
    + ' AND ID = ' + QuotedStr(pIDS);

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL de atualiza��o do servidor (SQLUpdateServidor)', SQL_Servidor);

  Result := SQL_Servidor;
end;

function TfrmCreateServidor.retornaNovoIDServidor(
  idPessoal: String): String;
begin
//  with dmPessoal.qryExecSQL do
  with qryMaxID do
  begin
    Connection := dmConexao.conPessoal;
    Active := false;

//    SQL.Text := 'SELECT MAX(ID) FROM tbServidor WHERE idPessoal = '

    SQL.Text := 'SELECT ID FROM tbServidor WHERE idPessoal = '
    + QuotedStr(idPessoal)
    + ' ORDER BY ID DESC'
    ;

//    ShowMessage(SQL.Text);

    monitorarAcoesDaSessao
    ('ufCreateServidor', 'SQL (retornaNovoIDServidor)', SQL.Text);

    Active := true;

//    ShowMessage(FieldByName('ID').AsString);
    Result := FieldByName('ID').AsString;
  end;


end;

procedure TfrmCreateServidor.btnSairClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmCreateServidor.btnSelLotacaoClick(Sender: TObject);
var wIdLotacao: String;
begin
  if not Assigned(frmSelLotacao) then
  frmSelLotacao := TfrmSelLotacao.Create(Application);
  try
    frmSelLotacao.ShowModal;
    if frmSelLotacao.qryLotacao.Active then
    begin
      wIdLotacao := frmSelLotacao.retornaIdLotacao;
      if wIdLotacao <> '' then
      begin
        lkpLotacao.EditValue  := wIdLotacao;
        //edtIdAcao.SetFocus;
      end;
    end;
  finally
    frmSelLotacao.Release;
    frmSelLotacao := nil;
  end;

end;


procedure TfrmCreateServidor.btnIncluirTelefoneClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateTelefone, frmUpdateTelefone);
  frmUpdateTelefone.setarOperacao(1);
  frmUpdateTelefone.configurarOperacao;
  frmUpdateTelefone.lbl_IDP.Caption := lbl_IDP.Caption;
  frmUpdateTelefone.setFormQueChamou('frmCreateServidor');

  {frmUpdateTelefone.setarDadosServidor
  (dmPessoal.qryPesquisa.FieldValues['idServidor'],
   dmPessoal.qryPesquisa.FieldValues['Nome'],
   dmPessoal.qryPesquisa.FieldValues['descricaoCargo']);
  }

  frmUpdateTelefone.ShowModal;
  frmUpdateTelefone.Release;
  frmUpdateTelefone := nil;
end;

procedure TfrmCreateServidor.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtNaturalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtPaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtMaeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtConjugeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor.edtCEPKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

function TfrmCreateServidor.exibirTelefones(pidPessoal: String): Integer;
begin
  with qryTelefonesServidor do
  begin
    Active := false;
    SQL.Text := 'SELECT'
      + ' stel.Numero, stel.idTelefone'
      + ',Tipo = '
      + ' CASE idTelefone'
      + ' WHEN ' + QuotedStr('R') + ' THEN ' + QuotedStr('RESIDENCIAL')
      + ' WHEN ' + QuotedStr('E') + ' THEN ' + QuotedStr('ESCRITORIO')
      + ' WHEN ' + QuotedStr('C') + ' THEN ' + QuotedStr('CELULAR')
      + '  ELSE ' + QuotedStr('-')
      + ' END'
      + ' FROM tbServ_Telefone as stel'
      + ' INNER JOIN tbPessoal pes on pes.idPessoal = stel.idPessoal'
      + ' WHERE 1=1'
      + ' AND sTel.idPessoal = ' + QuotedStr(lbl_IDP.Caption)
      + ' ORDER BY sTel.idTelefone desc;';

    Active := true;
  end
end;

procedure TfrmCreateServidor.edtDtNascimentoExit(Sender: TObject);
begin
  if not btnSair.Focused then
  //Close
  begin
    if StrToInt(Copy(edtDtNascimento.Text,7,4)) < 1754 // o menor ano ano � 1753
    then
    begin
      ShowMessage('O ano de nascimento � inv�lido');
      edtDtNascimento.SetFocus;
    end
    else lkpCargo.SetFocus;
  end;
end;

function TfrmCreateServidor.setarRegistroAGravar: boolean;
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
    then especialidade[0] := lkpEspecialidade.EditingValue
    else especialidade[0] := '';

    if lkpLotacao.EditingValue <> Null
    then idLotacao[0] := lkpLotacao.EditingValue
    else idLotacao[0] := '';

    //ShowMessage(lotacao[0]);

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
    {if edtDt_InicioContrato2_Estagiario.Text <> Null
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
    }
    if edtDt_TerminoContrato1_Estagiario.Text <> Null
    then Dt_TerminoContrato1_Estagiario[0] := Trim(edtDt_TerminoContrato1_Estagiario.Text)
    else Dt_TerminoContrato1_Estagiario[0] := '';
    //7
    {if edtDt_TerminoContrato2_Estagiario.Text <> Null
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
    }
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

procedure TfrmCreateServidor.lkpCargoExit(Sender: TObject);
begin
  if Trim(lkpCargo.Text) <> '' then
  begin
    if Copy(lkpCargo.EditValue,1,3) = 'EST'
    then
      tshEstagio.Enabled := true
    else
      tshEstagio.Enabled := false;
  end
end;

procedure TfrmCreateServidor.edtOrgaoOrigemExit(Sender: TObject);
begin
  if Length(edtOrgaoOrigem.Text) > 1 then
    chkRequisitado.Checked := true
  else
    chkRequisitado.Checked := false;
end;

procedure TfrmCreateServidor.Button1Click(Sender: TObject);
var NN: String;
begin
  NN := InserirZeros
      (dmCadastroServidor.GerarID('tbCamposAltServ','idAlteracao'),12);

  //ShowMessage(NN);

end;

procedure TfrmCreateServidor.cxButton1Click(Sender: TObject);
var NN: String;
begin
  NN := InserirZeros
      (dmCadastroServidor.GerarID('tbCamposAltServ','idAlteracao'),12);

  //ShowMessage(NN);
end;

function TfrmCreateServidor.SQLUpdateCamposAltServ(idAlteracao,
  idServidorAnt, idServidorNov, dtExercicioCargoAnt, dtExerciciocargoNov,
  dtDesligCargoAnt, dtDesligCargoNov, dtExercicioFuncaoAnt,
  dtExercicioFuncaoNov, dtDesligFuncaoAnt, dtDesligFuncaoNov,
  dtFalecimentoAnt, dtFalecimentoNov, idCargo, idFuncao, idLotacaoAnt,
  idLotacaoNov, idUsuario, dtAlteracao: String): String;
var SQL_CAS: String;
begin

  SQL_CAS := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbCamposAltServ'
  + ' SET';

  //2
  {if idServidorAnt <> '' then
  wSQL := wSQL + QuotedStr(idServidorAnt) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if idServidorAnt <> '' then
  SQL_CAS := SQL_CAS + ' idServidorAnt = '
  + QuotedStr(idServidorAnt) + ', '
  else
  SQL_CAS := SQL_CAS + ' idServidorAnt = NULL, ';


  //3
  //wSQL := wSQL +  QuotedStr(idServidorNov) + ', ';

  if idServidorNov <> '' then
  SQL_CAS := SQL_CAS + ' idServidorNov = '
  + QuotedStr(idServidorNov) + ', '
  else
  SQL_CAS := SQL_CAS + ' idServidorNov = NULL, ';

  //4
  //+ QuotedStr(dtExercicioCargoAnt)   + ', '
  {if dtExercicioCargoAnt <> '' then
  wSQL := wSQL + QuotedStr(dtExercicioCargoAnt) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtExercicioCargoAnt <> '' then
  SQL_CAS := SQL_CAS + ' dtExercicioCargoAnt = '
  + QuotedStr(dtExercicioCargoAnt) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtExercicioCargoAnt = NULL, ';

  //5
  //+ QuotedStr(dtExerciciocargoNov)   + ', '
  {if dtExercicioCargoNov <> '' then
  wSQL := wSQL + QuotedStr(dtExercicioCargoNov) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtExerciciocargoNov <> '' then
  SQL_CAS := SQL_CAS + ' dtExerciciocargoNov = '
  + QuotedStr(dtExerciciocargoNov) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtExerciciocargoNov = NULL, ';

  //6
  //+ QuotedStr(dtDesligCargoAnt)      + ', '
  {if dtDesligCargoAnt <> '' then
  wSQL := wSQL + QuotedStr(dtDesligCargoAnt) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtDesligCargoAnt <> '' then
  SQL_CAS := SQL_CAS + ' dtDesligCargoAnt = '
  + QuotedStr(dtDesligCargoAnt) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtDesligCargoAnt = NULL, ';

  //7
  //wSQL := wSQL + QuotedStr(dtDesligCargoNov)  + ', '
  {if dtDesligCargoNov <> '' then
  wSQL := wSQL + QuotedStr(dtDesligCargoNov) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtDesligCargoNov <> '' then
  SQL_CAS := SQL_CAS + ' dtDesligCargoNov = '
  + QuotedStr(dtDesligCargoNov) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtDesligCargoNov = NULL, ';

  //8
  //+ QuotedStr(dtExercicioFuncaoAnt)  + ', '
  {if dtExercicioFuncaoAnt <> '' then
  wSQL := wSQL + QuotedStr(dtExercicioFuncaoAnt) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtExercicioFuncaoAnt <> '' then
  SQL_CAS := SQL_CAS + ' dtExercicioFuncaoAnt = '
  + QuotedStr(dtExercicioFuncaoAnt) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtExercicioFuncaoAnt = NULL, ';

  //9
  //+ QuotedStr(dtExercicioFuncaoNov)  + ', '
  {if dtExercicioFuncaoNov <> '' then
  wSQL := wSQL + QuotedStr(dtExercicioFuncaoNov) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtExercicioFuncaoNov <> '' then
  SQL_CAS := SQL_CAS + ' dtExercicioFuncaoNov = '
  + QuotedStr(dtExercicioFuncaoNov) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtExercicioFuncaoNov = NULL, ';

  //10
  //+ QuotedStr(dtDesligFuncaoAnt)     + ', '
  {if dtDesligFuncaoAnt <> '' then
  wSQL := wSQL + QuotedStr(dtDesligFuncaoAnt) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtDesligFuncaoAnt <> '' then
  SQL_CAS := SQL_CAS + ' dtDesligFuncaoAnt = '
  + QuotedStr(dtDesligFuncaoAnt) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtDesligFuncaoAnt = NULL,';


  //11
  //+ QuotedStr(dtDesligFuncaoNov)     + ', '
  {if dtDesligFuncaoNov <> '' then
  wSQL := wSQL + QuotedStr(dtDesligFuncaoNov) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtDesligFuncaoNov <> '' then
  SQL_CAS := SQL_CAS + ' dtDesligFuncaoNov = '
  + QuotedStr(dtDesligFuncaoNov) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtDesligFuncaoNov = NULL,';


  //12
  //+ QuotedStr(dtFalecimentoAnt)      + ', '
  {if dtFalecimentoAnt <> '' then
  wSQL := wSQL + QuotedStr(dtFalecimentoAnt) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtFalecimentoAnt <> '' then
  SQL_CAS := SQL_CAS + ' dtFalecimentoAnt = '
  + QuotedStr(dtFalecimentoAnt) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtFalecimentoAnt = NULL,';

  //13
  //+ QuotedStr(dtFalecimentoNov)      + ', '
  {if dtFalecimentoNov <> '' then
  wSQL := wSQL + QuotedStr(dtFalecimentoNov) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if dtFalecimentoNov <> '' then
  SQL_CAS := SQL_CAS + ' dtFalecimentoNov = '
  + QuotedStr(dtFalecimentoNov) + ', '
  else
  SQL_CAS := SQL_CAS + ' dtFalecimentoNov = NULL,';

  //14
  //+ QuotedStr(idCargo)               + ', '
  {if idCargo <> '' then
  wSQL := wSQL + QuotedStr(idCargo) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if idCargo <> '' then
  SQL_CAS := SQL_CAS + ' idCargo = '
  + QuotedStr(idCargo) + ', '
  else
  SQL_CAS := SQL_CAS + ' idCargo = NULL,';

  //15
  //+ QuotedStr(idFuncao)              + ', '
  {if idFuncao <> '' then
  wSQL := wSQL + QuotedStr(idFuncao) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if idFuncao <> '' then
  SQL_CAS := SQL_CAS + ' idFuncao = '
  + QuotedStr(idFuncao) + ', '
  else
  SQL_CAS := SQL_CAS + ' idFuncao = NULL,';

  //16
  //+ QuotedStr(idLotacaoAnt)          + ', '
  {if idLotacaoAnt <> '' then
  wSQL := wSQL + QuotedStr(idLotacaoAnt) + ','
  else wSQL := wSQL + ' NULL' + ',';}

  if idLotacaoAnt <> '' then
  SQL_CAS := SQL_CAS + ' idLotacaoAnt = '
  + QuotedStr(idLotacaoAnt) + ', '
  else
  SQL_CAS := SQL_CAS + ' idLotacaoAnt = NULL,';

  //17
  //+ QuotedStr(idLotacaoNov)          + ', '
  {if idLotacaoNov <> '' then
  wSQL := wSQL + QuotedStr(idLotacaoNov) + ','
  else wSQL := wSQL + ' NULL' + ','}

  if idLotacaoNov <> '' then
  SQL_CAS := SQL_CAS + ' idLotacaoNov = '
  + QuotedStr(idLotacaoNov) + ', '
  else
  SQL_CAS := SQL_CAS + ' idLotacaoNov = NULL,';

  //18
  //+ QuotedStr(idUsuario)             + ', '

  if idUsuario <> '' then
  SQL_CAS := SQL_CAS + ' idUsuario = '
  + QuotedStr(idUsuario) + ', '
  else
  SQL_CAS := SQL_CAS + ' idUsuario = NULL,';

  //19
  //+ QuotedStr(dtAlteracao)           + ')';

  if dtAlteracao <> '' then
  SQL_CAS := SQL_CAS + ' dtAlteracao = '
  + QuotedStr(dtAlteracao)
  //+ ', '
  else
  SQL_CAS := SQL_CAS + ' dtAlteracao = NULL';
  //+ ', ';

  SQL_CAS := SQL_CAS + ' WHERE idAlteracao = '
  + QuotedStr(idAlteracao);

  monitorarAcoesDaSessao
  ('ufCreateServidor', 'Retorna SQL de atualiza��o de datas (SQLUpdateDatas)', SQL_CAS);

  Result := SQL_CAS;
end;

initialization
  obStatus := TStatus.Create;
finalization
  obStatus.Free;

end.
