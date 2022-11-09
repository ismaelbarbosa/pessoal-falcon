unit ufCreateServidor_20220314;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, ExtCtrls, cxButtons, Grids, DBGrids, DB,
  cxSplitter, cxCheckBox, StdCtrls, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  Mask, DBCtrls, Buttons, cxPC, ComCtrls, cxMemo, ADODB;

type
  TEstadoEdicao = record
    Nome, CPF, dtNascimento, idServidor,
    Cargo,
    Lotacao,
    DtExercicioCargo: Array[0..1] of String;
end;

type
  TPessoalArray = array of string;

  TfrmCreateServidor_20220314 = class(TForm)
    barServidor: TStatusBar;
    pnlNomeMatricula: TPanel;
    txtNome: TDBText;
    pgcPessoal: TcxPageControl;
    tshDadosFuncionais: TcxTabSheet;
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
    lblNascimento: TLabel;
    lbl_IDS: TLabel;
    Label1: TLabel;
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
    edtDtNascimento: TcxDBDateEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
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
    pnlBotoes: TPanel;
    lblOperacao: TLabel;
    Button1: TButton;
    Button2: TButton;
    btnNovo: TcxButton;
    btnGravar: TcxButton;
    btnSair: TcxButton;
    tmrRelPersonalizado: TTimer;
    tshAFazer: TcxTabSheet;
    cxMemo1: TcxMemo;
    qryMaxID: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFExit(Sender: TObject);
    procedure edtDtNascimentoExit(Sender: TObject);
    procedure edtidServidorExit(Sender: TObject);
    procedure edtidServidorKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeExit(Sender: TObject);
    procedure lkpCargoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtOrgaoOrigemKeyPress(Sender: TObject; var Key: Char);
    procedure lkpLotacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpFuncaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpEspecialidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpEstadoCivilKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxTipoSanguineoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxNatural_UFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxEnderecoUFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxGrauInstrucaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpCursoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxCI_UFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxTE_UFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpBancoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNaturalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure cbxNatural_UFExit(Sender: TObject);
    procedure cbxEnderecoUFExit(Sender: TObject);
    procedure cbxCI_UFExit(Sender: TObject);
    procedure cbxTE_UFExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    OPERACAO: Integer;

    Mens: Array of String;
    Campos: Array of String;

    LstUser: String;
    LstDate : TDateTime;
  public
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarCampos;

    procedure limparCampos;
    procedure bloquearCampos;
    procedure desbloquearCampos;
    procedure bloquearEdicao;
    procedure desbloquearEdicao;

    procedure setarStatus(prmModo: char);
    procedure setarModoInclusaoPessoal;
    procedure setarModoInclusaoServidor;
    procedure setarModoAlteracao;
    procedure setarCampos;

    procedure habilitarBtnNovo;
    procedure desabilitarBtnNovo;
    procedure habilitarBtnGravar;
    procedure desabilitarBtnGravar;

    procedure preencherCamposUF;
    procedure preencherCamposCargoClassePadrao;

    function cpfJaCadastrado(pCPF: string): TPessoalArray;
    function servidorEstaAtivo(pCPF: string): TPessoalArray;
    function matriculaCadastradaNoID(pIdPessoal, pMatricula: string): TPessoalArray;
    function UF_EValida(pUF: String):Boolean;

    function incluirRegistro(modo: integer): boolean;
    function alterarRegistro: boolean;

    function retornaSQLInsertPessoal(pIDP: String): String;
    function retornaSQLInsertServidor(pIDP: String): String;
    function retornaSQLInsertDados(pIDP: String): String;
    function retornaSQLInsertCamposAltServ(pIDP: String): String;
    function retornaSQLInsertNotificaNupro(pIDP, Evento: String): String;

    function retornaSQLUpdatePessoal(pIDP: String): String;
    function retornaSQLUpdateServidor(pIDP, pIDS: String): String;
    function retornaSQLUpdateDados: String;
    function retornaSQLUpdateDatas(pIDP, pIDS: String): String;
    function retornaNovoIDServidor(idPessoal:String):String;

    function carregarDados:boolean;

  end;

type
  TStatus = class
  idStatus: char;
  dscStatus: String;
end;

var
  frmCreateServidor_20220314: TfrmCreateServidor_20220314;
  obStatus: TStatus;

implementation

uses ufLogs, uDMConexao, uPesFuncoes, uDmCadastroServidor, PRG_utils,
  uDMPessoal;

{$R *.dfm}

var EstadoEdicao: TEstadoEdicao;

{ TfrmCreateServidor }

function TfrmCreateServidor_20220314.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;

  case OPERACAO of
    1: lblOperacao.Caption := 'INCLUSÃO PESSOAL'; // Inclusão de novo registro nas tabelas tbPessoal, tbServidor e tbDados
    2: lblOperacao.Caption := 'INCLUSÃO SERVIDOR'; // Inclusão de novo registro apenas na tabela tbServidor
    3: lblOperacao.Caption := 'EDIÇÃO';     // Edição do registro cadastrado (as 3 tabelas acima)
  end;

  Result := true;
end;

procedure TfrmCreateServidor_20220314.FormCreate(Sender: TObject);
begin
  KeyPreview := true;

  //dmCadastroServidor.qryPessoal.Active := true; ************ Verificar se essa linha é necessária

  pgcPessoal.ActivePageIndex := 0;

  Setlength(Campos, 5);
  Mens := VarArrayof(['CPF','Nome','Data de nascimento',
            'Matrícula', 'Lotação']);

  configurarCampos;
  SetarModoInclusaoPessoal;

  //CarregarSessaoAnterior;

  monitorarAcoesDaSessao('ufCreateServidor', 'Evento OnCreate', 'Sessão iniciada');

  qryMaxID.Connection := DMConexao.conPessoal;
end;

procedure TfrmCreateServidor_20220314.configurarCampos;
begin
  //edtNome.Properties.MaxLength := 2;
end;

procedure TfrmCreateServidor_20220314.setarModoAlteracao;
begin
//  BloquearCampos;
  setarStatus('3');
  setarOperacao(3); //
  //  DesabilitarBtnGravar;
  habilitarBtnNovo;
end;

procedure TfrmCreateServidor_20220314.setarModoInclusaoPessoal;
begin
  limparCampos;
  edtCPF.Clear; // incluido pois é exceção no limparCampos devido ao cadastro de servidor com CPF já existente
  desbloquearCampos;
  setarStatus('1');
  setarOperacao(1);
  desabilitarBtnNovo;
  habilitarBtnGravar;
end;

procedure TfrmCreateServidor_20220314.setarModoInclusaoServidor;
begin
  limparCampos;
  desbloquearCampos;
  setarStatus('2');
  setarOperacao(2); //
  desabilitarBtnNovo;
  habilitarBtnGravar;
end;

procedure TfrmCreateServidor_20220314.setarStatus(prmModo: char);
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
        idStatus := '2';
        dscStatus := 'INCLUSÃO SERVIDOR';
      end;
    end;
    '3':
    begin
      with obStatus do
      begin
        idStatus := '3';
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

procedure TfrmCreateServidor_20220314.desabilitarBtnGravar;
begin
  btnGravar.Enabled := false;
end;

procedure TfrmCreateServidor_20220314.desabilitarBtnNovo;
begin
  btnNovo.Enabled := false;
end;

procedure TfrmCreateServidor_20220314.habilitarBtnGravar;
begin
  btnGravar.Enabled := true;
end;

procedure TfrmCreateServidor_20220314.habilitarBtnNovo;
begin
  btnNovo.Enabled := true;
end;

procedure TfrmCreateServidor_20220314.bloquearCampos;
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

procedure TfrmCreateServidor_20220314.desbloquearCampos;
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

procedure TfrmCreateServidor_20220314.limparCampos;
var i: Integer;
begin
  lbl_IDP.Caption := '0';
  lbl_IDS.Caption := '0';

  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxDBTextEdit) then
    begin
      if (Components[i].Name <> 'edtCPF') // campos que serão mantidos
      and (Components[i].Name <> 'outroCampoASerMantido')
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

procedure TfrmCreateServidor_20220314.FormActivate(Sender: TObject);
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

  monitorarAcoesDaSessao('ufCreateServidor', 'Evento OnActivate',
  'Operação: ' + lblOperacao.Caption + chr(13)
  + 'Retornar tabelas relacionadas' + chr(13)
  + 'Preencher campos UF'
  );


end;

procedure TfrmCreateServidor_20220314.preencherCamposUF;
var UF: string;
begin

  // Só retornou o nome dos campos
  // É necessário retornar o valor do campo NOME

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

procedure TfrmCreateServidor_20220314.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
      frmLogs.ShowModal;
  end
end;

procedure TfrmCreateServidor_20220314.edtCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8, #9]) then key := #0;
end;

procedure TfrmCreateServidor_20220314.edtCPFExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
  resultado : Integer;
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

        {resultado :=
        dmPessoal.pesquisarPessoal

        (' AND pes.CPF = '
        + QuotedStr(edtCPF.Text)
        );

        if resultado = 0 then
        ShowMessage('Não localizado')
        else
        begin
          ShowMessage(dmPessoal.qryPesquisa.FieldValues['Nome']);
          ShowMessage(dmPessoal.qryPesquisa.FieldValues['dt_Nascimento']);
        end;
        }

        if (Pessoal[0] <> '0')
//        if (resultado <> 0)
        and (lbl_IDP.Caption = '0') then
        begin //7
          Mensagem := 'O CPF: ' + edtCPF.Text
                      + ' já está cadastrado para: '
                      + #13 + Pessoal[1]
                      + #13 + 'Nascimento: ' + Pessoal[2]
                      + #13 + #13 + 'Deseja continuar?';


{          Mensagem := 'O CPF: ' + edtCPF.Text
                      + ' já está cadastrado para: ' + #13
                      + dmPessoal.qryPesquisa.FieldValues['Nome']
                      + #13 + 'Nascimento: '
                      //+ dmPessoal.qryPesquisa.FieldValues['dt_Nascimento']
                      + #13 + #13 + 'Deseja continuar?';
}

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
              FieldByName('Dt_Nascimento').AsString := Pessoal[2]; // edtDtNascimento.Text

              resultado :=
              dmPessoal.pesquisarPessoal

              (' AND pes.CPF = '
              + QuotedStr(edtCPF.Text)
              );

              if carregarDados
              then
              ShowMessage('Dados pessoais carregados para edição');

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

end;

function TfrmCreateServidor_20220314.cpfJaCadastrado(pCPF: string): TPessoalArray;
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

function TfrmCreateServidor_20220314.servidorEstaAtivo(pCPF: string): TPessoalArray;
begin
  SetLength(Result, 4);

  with dmCadastroServidor.qryExecSQL do
  begin
    Connection := DMConexao.conPessoal;
    SQL.Text :=

    'SELECT pes.idPessoal, ser.ID, ser.idServidor, ser.idDesligamento, pes.Nome'
    + ', car.Descricao AS descricaoCargo , fun.Descricao AS descricaoFuncao'
    + ' FROM tbPessoal pes'
    + ' INNER JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
    + ' LEFT JOIN tbCargo car ON car.idCargo = ser.idCargo'
    + ' LEFT JOIN tbFuncao fun ON fun.idFuncao = ser.idFuncao'
    + ' WHERE pes.CPF = '  + QuotedStr(pCPF)
    + ' AND ser.idDesligamento IS NULL';

    monitorarAcoesDaSessao
    ('frmCreateServidor', 'função servidorEstaAtivo', SQL.Text);

    Open;

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

     if not dmCadastroServidor.qryExecSQL.FieldByName('descricaoCargo').IsNull then
     Result[2] := dmCadastroServidor.qryExecSQL.FieldValues['descricaoCargo'];

     if not dmCadastroServidor.qryExecSQL.FieldByName('descricaoFuncao').IsNull then
     Result[3] := dmCadastroServidor.qryExecSQL.FieldValues['descricaoFuncao'];

   end;
    // dmCadastroServidor.qryExecSQL.Close;

end;

procedure TfrmCreateServidor_20220314.bloquearEdicao;
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

procedure TfrmCreateServidor_20220314.desbloquearEdicao;
begin
//
end;

procedure TfrmCreateServidor_20220314.edtDtNascimentoExit(Sender: TObject);
begin
  if Trim(edtDtNascimento.Text) = '' then
  begin
    ShowMessage('Esse campo deve ser informado.');
    edtDtNascimento.SetFocus;
  end
end;

procedure TfrmCreateServidor_20220314.edtidServidorExit(Sender: TObject);
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

end;

function TfrmCreateServidor_20220314.matriculaCadastradaNoID(pIdPessoal,
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

procedure TfrmCreateServidor_20220314.edtidServidorKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  if not (key in ['0'..'9','X',#8, #9]) then key := #0;
end;

procedure TfrmCreateServidor_20220314.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220314.edtNomeExit(Sender: TObject);
begin
  edtNome.Text :=
  AnsiUpperCase(RemoveEspaco(edtNome.Text));

  if dmCadastroServidor.qryPessoal.State in [dsInsert, dsEdit] then
  dmCadastroServidor.qryPessoal.FieldValues['Nome'] := edtNome.Text;
end;

procedure TfrmCreateServidor_20220314.lkpCargoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpCargo.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.edtOrgaoOrigemKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220314.lkpLotacaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpLotacao.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.lkpFuncaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpFuncao.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.lkpEspecialidadeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpEspecialidade.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.lkpEstadoCivilKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpEstadoCivil.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.cbxTipoSanguineoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    cbxTipoSanguineo.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.cbxNatural_UFKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    cbxNatural_UF.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.cbxEnderecoUFKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    cbxEnderecoUF.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.cbxGrauInstrucaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    cbxGrauInstrucao.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.lkpCursoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpCurso.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.cbxCI_UFKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    cbxCI_UF.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.cbxTE_UFKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    cbxTE_UF.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.lkpBancoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpBanco.Clear;
  end;
end;

procedure TfrmCreateServidor_20220314.edtNaturalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCreateServidor_20220314.cbxNatural_UFExit(Sender: TObject);
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

function TfrmCreateServidor_20220314.UF_EValida(pUF: String): Boolean;
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

procedure TfrmCreateServidor_20220314.cbxEnderecoUFExit(Sender: TObject);
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

procedure TfrmCreateServidor_20220314.cbxCI_UFExit(Sender: TObject);
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

procedure TfrmCreateServidor_20220314.cbxTE_UFExit(Sender: TObject);
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

procedure TfrmCreateServidor_20220314.btnNovoClick(Sender: TObject);
begin
  {if txtIdPessoal.Caption <> '0' then
  ShowMessage('O registro atual ainda não foi gravado. Grave primeiro');}

  SetarModoInclusaoPessoal;
end;

procedure TfrmCreateServidor_20220314.btnGravarClick(Sender: TObject);
begin
  case OPERACAO of
    // Inclusão de Pessoal
    1:
    begin
      if incluirRegistro(1) then ShowMessage('Registro cadastrado (1) com sucesso');
    end;
    // Inclusão de Servidor
    2:
    begin
      ShowMessage('Em desenvolvimento');
      if incluirRegistro(2) then ShowMessage('Registro cadastrado (2) com sucesso');
    end;
    // Alteração
    3:
    begin
      ShowMessage('Em desenvolvimento');
      if alterarRegistro then ShowMessage('Registro alterado com sucesso');
    end;
  end;

  // GravarLog;

end;

function TfrmCreateServidor_20220314.retornaNovoIDServidor(
  idPessoal: String): String;
begin
//  with dmPessoal.qryExecSQL do
  with qryMaxID do
  begin
    Connection := dmConexao.conPessoal;
    Active := false;

    SQL.Text := 'SELECT MAX(ID), ID FROM tbServidor WHERE idPessoal = '
    + QuotedStr(idPessoal)
    + ' GROUP BY ID';

    ShowMessage(SQL.Text);
    
    monitorarAcoesDaSessao
    ('ufCreateServidor', 'SQL (retornaNovoIDServidor)', SQL.Text);

    Active := true;

    ShowMessage(FieldByName('ID').AsString);
    Result := FieldByName('ID').AsString;
  end;

end;

function TfrmCreateServidor_20220314.retornaSQLInsertCamposAltServ(
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

function TfrmCreateServidor_20220314.retornaSQLInsertDados(pIDP: String): String;
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

function TfrmCreateServidor_20220314.retornaSQLInsertNotificaNupro(pIDP,
  Evento: String): String;
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

function TfrmCreateServidor_20220314.retornaSQLInsertPessoal(pIDP: String): String;
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
      ('ufCreateServidor', 'SQL da inclusão de pessoal (retornaSQLInsertPessoal)', Result);

end;

function TfrmCreateServidor_20220314.retornaSQLInsertServidor(pIDP: String): String;
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

  ShowMessage(SQL_Servidor);
  
  monitorarAcoesDaSessao
  ('ufCreateServidor', 'SQL da iclusão de servidor (retornaSQLInsertServidor)', SQL_Servidor);

  Result := SQL_Servidor;
end;

function TfrmCreateServidor_20220314.retornaSQLUpdateDados: String;
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

  if edtCI_Emissao.Text <> ''
  then SQL_Dados := SQL_Dados
    + ' CI_Emissao = ' + QuotedStr(edtCI_Emissao.Text) + ', '
  else SQL_Dados := SQL_Dados
    + ' CI_Emissao = NULL, ';

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

function TfrmCreateServidor_20220314.retornaSQLUpdateDatas(pIDP,
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

function TfrmCreateServidor_20220314.retornaSQLUpdatePessoal(pIDP: String): String;
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

  monitorarAcoesDaSessao('ufCreateServidor', 'Retornar SQL de alterção do pessoal(retornaSQLUpdatePessoal)', Result);

  Result := SQL_Pessoal;
end;

function TfrmCreateServidor_20220314.retornaSQLUpdateServidor(pIDP,
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

procedure TfrmCreateServidor_20220314.setarCampos;
begin
  Campos[0] := edtCPF.Text;
  Campos[1] := edtNome.Text;
  Campos[2] := edtDtNascimento.Text;
  Campos[3] := edtIdServidor.Text;
  Campos[4] := lkpLotacao.EditText;
end;

function TfrmCreateServidor_20220314.alterarRegistro: boolean;
var NIDP, NIDS, Evento: String;
OK_Pes, OK_Ser, OK_Dad, OK_Dat, OK_NN: boolean;
begin
  edtNomeExit(Self);
  setarCampos;

  ShowMessage('Alterar na tabela tbPessoal e tbDados');

  NIDP := lbl_IDP.Caption;

  if dmCadastroServidor.alterarPessoal      // Tabela de Pessoal
  (retornaSQLUpdatePessoal(NIDP))
  then
    OK_Pes := true
  else
    OK_Pes := false;

  if dmCadastroServidor.alterarDados  // Tabela de Dados
  (retornaSQLUpdateDados)
  then
    OK_Dad := true
  else
    OK_Dad := false;

//  lbl_IDP.Caption := NIDP;
//  lbl_IDS.Caption := NIDS;

  ShowMessage(lbl_IDP.Caption + ' ' + lbl_IDS.Caption);

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
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro incluído na tabela de Pessoal em: ' + RetornaData(2));
  end   //6
  else
  begin //6
    chkPessoal.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro não incluído na tabela de Pessoal em: ' + RetornaData(2));
  end; //6

  if OK_Ser then
  begin //7
    chkServidor.Checked := true;

    if dmCadastroServidor.alterarServidor   // Tabela de Servidor
    (retornaSQLUpdateServidor(NIDP, NIDS))
    then
      OK_Ser := true
    else
      OK_Ser := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro incluído na tabela de Servidor em: ' + RetornaData(2));
  end   //7
  else
  begin //7
    chkServidor.Checked := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro não incluído na tabela de Servidor em: ' + RetornaData(2));
  end;  //7

  if OK_Dad then
  begin //8
    chkDados.Checked := true;

    if dmCadastroServidor.alterarDados  // Tabela de Dados
    (retornaSQLUpdateDados)
    then
      OK_Dad := true
    else
      OK_Dad := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro incluído na tabela de Dados em: ' + RetornaData(2));
  end   //8
  else
  begin //8
    chkDados.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro não incluído na tabela de Dados em: ' + RetornaData(2));
  end;  //8

  if OK_Dat then
  begin //9
    chkDatas.Checked := true;

    if dmCadastroServidor.atualizarDatas
    // Tabela tbServidor, campos do tipo data
    (retornaSQLUpdateDatas(NIDP, NIDS))
    then
      OK_Dat := true
    else
      OK_Dat := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas atualizadas na tabela Servidor em: ' + RetornaData(2));
  end
  else
  begin //9
    chkDatas.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas não atualizadas na tabela Servidor em: ' + RetornaData(2));
  end;  //9




  if (OK_Pes) and (OK_Ser) and (OK_Dad) and (OK_Dat)
  then
  begin //10

    setarOperacao(3); // Alteração de registro


    Evento := 'Inclusão de novo registro na tabela de pessoal'
    + chr(13)
    + 'Cargo: ' + lkpCargo.Text
    + chr(13)
    + 'Lotação: ' + lkpLotacao.Text;

    {
    if dmCadastroServidor.registrarNotificaNupro
    // Tabela tbCamposAltSer
    (retornaSQLInsertNotificaNupro(NIDP, Evento))
    then
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro incluído na tabela NotificaNupro' + RetornaData(2))
    else
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro não incluído na tabela NotificaNupro' + RetornaData(2));
    }

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

  //  else
//    ShowMessage('Houve um erro no cadastro de uma das tabelas.');

end;

function TfrmCreateServidor_20220314.incluirRegistro(modo: integer): boolean;
var NIDP, NIDS, Evento: String;
OK_Pes, OK_Ser, OK_Dad, OK_Dat, OK_NN: boolean;
begin
  edtNomeExit(Self);
  setarCampos;

  // Início do Case
  case modo of
    1: // Incluir na tabela tbPessoal
    begin
      ShowMessage('Incluir nas tabela tbPessoal, tbServidor e tbDados');
      NIDP := InserirZeros
      (dmCadastroServidor.GerarID('tbPessoal','idPessoal'),5);

      if dmCadastroServidor.IncluirPessoal      // Tabela de Pessoal
      (retornaSQLInsertPessoal(NIDP))
      then
        OK_Pes := true
      else
        OK_Pes := false;

      if dmCadastroServidor.IncluirDados  // Tabela de Dados
      (retornaSQLInsertDados(NIDP))
      then
        OK_Dad := true
      else
        OK_Dad := false;

      if dmCadastroServidor.IncluirServidor   // Tabela de Servidor
      (retornaSQLInsertServidor(NIDP))
      then
        OK_Ser := true
      else
        OK_Ser := false;
    end;

    2: // Alterar na tabela tbPessoal
    begin
      ShowMessage('Alterar na tabela tbPessoal e tbDados. Incluir na tabela tbServidor');

      NIDP := lbl_IDP.Caption;

      if dmCadastroServidor.alterarPessoal      // Tabela de Pessoal
      (retornaSQLUpdatePessoal(NIDP))
      then
        OK_Pes := true
      else
        OK_Pes := false;

      if dmCadastroServidor.alterarDados  // Tabela de Dados
      (retornaSQLUpdateDados)
      then
        OK_Dad := true
      else
        OK_Dad := false;

      if dmCadastroServidor.IncluirServidor   // Tabela de Servidor
      (retornaSQLInsertServidor(NIDP))
      then
        OK_Ser := true
      else
        OK_Ser := false;
    end;
  end;
  // Fim do Case

  lbl_IDP.Caption := NIDP;
  ShowMessage(lbl_IDP.Caption);


  NIDS := retornaNovoIDServidor(NIDP);  // corrigido para trazer o último ID (MAX(ID)
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
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro incluído na tabela de Pessoal em: ' + RetornaData(2));
  end   //6
  else
  begin //6
    chkPessoal.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro não incluído na tabela de Pessoal em: ' + RetornaData(2));
  end; //6

  if OK_Ser then
  begin //7
    chkServidor.Checked := true;

    if dmCadastroServidor.alterarServidor   // Tabela de Servidor
    (retornaSQLUpdateServidor(NIDP, NIDS))
    then
      OK_Ser := true
    else
      OK_Ser := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro incluído na tabela de Servidor em: ' + RetornaData(2));
  end   //7
  else
  begin //7
    chkServidor.Checked := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro não incluído na tabela de Servidor em: ' + RetornaData(2));
  end;  //7

  if OK_Dad then
  begin //8
    chkDados.Checked := true;

    if dmCadastroServidor.alterarDados  // Tabela de Dados
    (retornaSQLUpdateDados)
    then
      OK_Dad := true
    else
      OK_Dad := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro incluído na tabela de Dados em: ' + RetornaData(2));
  end   //8
  else
  begin //8
    chkDados.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Registro não incluído na tabela de Dados em: ' + RetornaData(2));
  end;  //8

  if OK_Dat then
  begin //9
    chkDatas.Checked := true;

    if dmCadastroServidor.atualizarDatas
    // Tabela tbServidor, campos do tipo data
    (retornaSQLUpdateDatas(NIDP, NIDS))
    then
      OK_Dat := true
    else
      OK_Dat := false;

    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas atualizadas na tabela Servidor em: ' + RetornaData(2));
  end
  else
  begin //9
    chkDatas.Checked := false;
    monitorarAcoesDaSessao('ufCreateServidor', 'Evento btnGravar',
    'Datas não atualizadas na tabela Servidor em: ' + RetornaData(2));
  end;  //9


  if (OK_Pes) and (OK_Ser) and (OK_Dad) and (OK_Dat)
  then
  begin //10

    setarOperacao(3); // Alteração de registro


    Evento := 'Inclusão de novo registro na tabela de pessoal'
    + chr(13)
    + 'Cargo: ' + lkpCargo.Text
    + chr(13)
    + 'Lotação: ' + lkpLotacao.Text;

    {
    if dmCadastroServidor.registrarNotificaNupro
    // Tabela tbCamposAltSer
    (retornaSQLInsertNotificaNupro(NIDP, Evento))
    then
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro incluído na tabela NotificaNupro' + RetornaData(2))
    else
      monitorarAcoesDaSessao('ufCreateServidor', 'btnGravar',
      'Registro não incluído na tabela NotificaNupro' + RetornaData(2));

    }
    
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

  //  else
//    ShowMessage('Houve um erro no cadastro de uma das tabelas.');

end;

procedure TfrmCreateServidor_20220314.Button2Click(Sender: TObject);
begin
  with dmPessoal.qryExecSQL do
  begin
    Connection := dmConexao.conPessoal;
    Active := false;

    SQL.Text := 'SELECT top 10 ID FROM tbServidor';

    Active := true;

    ShowMessage(FieldValues['ID']);
  end;
end;

function TfrmCreateServidor_20220314.carregarDados: boolean;
begin
  // Campos carregados no EstadoEdicao:
  // Nome, CPF, dt_Nascimento, idServidor
  // Cargo

  with dmPessoal.qryPesquisa do
  begin

    //lbl_IDP.Caption         := FieldValues['idPessoal'];
    //lbl_IDS.Caption         := FieldValues['ID'];

    {if FieldByName('CPF').IsNull
    then edtCPF.Text := ''
    else edtCPF.Text := Trim(FieldValues['CPF']);
    }
    // Manter o valor do campo Nome no registro EstadoEdicao
    //EstadoEdicao.CPF[0]  := edtCPF.Text;
    {
    if FieldByName('dt_nascimento').IsNull
    then edtDtNascimento.Text := ''
    else edtDtNascimento.Text := Trim(FieldValues['dt_nascimento']);
    }
    // Manter o valor do campo dt_Nascimento no registro EstadoEdicao
    //EstadoEdicao.dtNascimento[0]  := edtDtNascimento.Text;

    {if FieldByName('idServidor').IsNull
    then edtidServidor.Text := ''
    else edtidServidor.Text := Trim(FieldValues['idServidor']);
    }
    // Manter o valor do campo idServidor no registro EstadoEdicao
    //EstadoEdicao.idServidor[0]  := edtidServidor.Text;

    {if FieldByName('Nome').IsNull
    then edtNome.Text := ''
    else edtNome.Text := Trim(FieldValues['Nome']);
    }
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

procedure TfrmCreateServidor_20220314.preencherCamposCargoClassePadrao;
begin
  cbxCargaHoraria.Properties.Items.Add('30');
  cbxCargaHoraria.Properties.Items.Add('40');
end;

initialization
  obStatus := TStatus.Create;
finalization
  obStatus.Free;

end.
