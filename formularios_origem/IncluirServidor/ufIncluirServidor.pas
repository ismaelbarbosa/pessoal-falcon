unit ufIncluirServidor;

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
  cxDBLookupComboBox, cxMemo, cxCheckBox, cxPC, IniFiles;

type
  TPessoalArray = array of string;

  TfrmIncluirServidor = class(TForm)
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
    txtIdPessoal: TLabel;
    edtAverbacaoServPublico: TDBEdit;
    edtCPF: TcxDBTextEdit;
    edtidServidor: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    lkpLotacao: TcxDBLookupComboBox;
    mmoSQL: TcxMemo;
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
    btnNovo: TSpeedButton;
    btnGravar: TSpeedButton;
    btnSair: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
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
  private
    { Private declarations }

    Mens: Array of String;
    Campos: Array of String;

    LstUser: String;    
    LstDate : TDateTime;

  public

    procedure LimparCampos;
    procedure BloquearCampos;
    procedure DesbloquearCampos;
    procedure SetarStatus(prmModo: char);
    procedure SetarModoInclusao;
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

    function UF_EValida(pUF: String):Boolean;

    function retornaSQLPessoal: String;
    function retornaSQLServidor: String;
    function retornaSQLDados: String;
    function retornaSQLDatas: String;

    procedure CarregarSessaoAnterior;

  end;

type
  TStatus = class
  idStatus: char;
  dscStatus: String;
end;

var
  frmIncluirServidor: TfrmIncluirServidor;
  obStatus: TStatus;

implementation

uses uPesFuncoes, PRG_utils,
  uDmCadastroServidor, udmPessoal, uDMConexao;

{$R *.dfm}


procedure TfrmIncluirServidor.FormCreate(Sender: TObject);
begin

  KeyPreview := true;
  dmCadastroServidor.qryPessoal.Active := true;

  pgcPessoal.ActivePageIndex := 0;

  Setlength(Campos, 5);
  Mens := VarArrayof(['CPF','Nome','Data de nascimento',
            'Matrícula', 'Lotação']);

  SetarModoInclusao;

  //CarregarSessaoAnterior;
end;

procedure TfrmIncluirServidor.FormActivate(Sender: TObject);
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

  mmoSQL.Lines.Add(LstUser);
  mmoSQL.Lines.Add(DateToStr(LstDate));


end;


procedure TfrmIncluirServidor.btnGravarClick(Sender: TObject);
var wMens: String;
OK_Pes, OK_Ser, OK_Dad, OK_Dat: boolean;
begin

  wMens := 'Atenção! Confirma a inclusão deste(a) servidor(a)?' + #13 + #13
         + edtCPF.Text + #13
         + edtNome.Text;


  setarCampos;

  if not CamposVazios(Campos,Mens) then
  begin
    if ConfirmaAcao(wMens,3) = 1 then
    begin
      if txtIdPessoal.Caption = '....' then
      begin
        txtIdPessoal.Caption :=
        InserirZeros(dmCadastroServidor.GerarID('tbPessoal','idPessoal'),5);

        if dmCadastroServidor.IncluirPessoal      // Tabela de Pessoal
        (retornaSQLPessoal)
        then
          OK_Pes := true
        else
          OK_Pes := false;

      end;


      if dmCadastroServidor.IncluirServidor   // Tabela de Servidor
      (retornaSQLServidor)
      then
        OK_Ser := true
      else
        OK_Ser := false;

      if dmCadastroServidor.IncluirDados  // Tabela de Dados
      (retornaSQLDados)
      then
        OK_Dad := true
      else
        OK_Dad := false;

      {if not dmCadastroServidor.IncluirDatas // Tabela tbServidor, campos do tipo data
      (retornaSQLDatas)
      then
        OK_Dat := true
      else
        OK_Dat := false;}


      if OK_Pes then mmoSQL.Lines.Add('Registro incluído na tabela de Pessoal');
      if OK_Ser then mmoSQL.Lines.Add('Registro incluído na tabela de Servidor');
      if OK_Dad then mmoSQL.Lines.Add('Registro incluído na tabela de Dados');

      //if OK_Dat then mmoSQL.Lines.Add('Datas atualizadas na tabela Servidor');

      if OK_Pes and OK_Ser and OK_Dad
      then
      begin
        IncluirLog
        (
        DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
        RetornaData(2),
        'tbPessoal, tbServidor, tbDados',
        txtIdPessoal.Caption,
        'TODOS',
        'Incluisão do servidor: '
        + 'Matrícula: ' + edtidServidor.Text
        + ' Nome: ' + edtNome.Text
        );

        // bloquear registro

        SetarModoAlteracao;
        ShowMessage('Registro gravado com sucesso.');
      end
      else
        ShowMessage('Houve um erro no cadastro de uma das tabelas.');


      {end
      else
      ShowMessage('Não foi incluído na tabela de dados');
      end
      else
      ShowMessage('Não foi incluído na tabela de servidor');

      end
      else
      ShowMessage('Não foi incluído na tabela de pessoal');}

    end
  end
//  else Result := false;

end;

function TfrmIncluirServidor.CamposVazios(Campos,
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

procedure TfrmIncluirServidor.setarCampos;
begin
  Campos[0] := edtCPF.Text;
  Campos[1] := edtNome.Text;
  Campos[2] := edtDtNascimento.Text;
  Campos[3] := edtIdServidor.Text;
  Campos[4] := lkpLotacao.EditText;
end;


procedure TfrmIncluirServidor.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmIncluirServidor.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtNomeExit(Sender: TObject);
begin
  edtNome.Text :=
  AnsiUpperCase(RemoveEspaco(edtNome.Text));

  if dmCadastroServidor.qryPessoal.State in [dsInsert, dsEdit] then
  dmCadastroServidor.qryPessoal.FieldValues['Nome'] := edtNome.Text;
end;




procedure TfrmIncluirServidor.lkpCargoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpCargo.Clear;
  end;

end;

procedure TfrmIncluirServidor.lkpFuncaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    lkpFuncao.Clear;
  end;       
end;


procedure TfrmIncluirServidor.preencherCamposUF;
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


procedure TfrmIncluirServidor.edtOrgaoOrigemKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtNaturalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtPaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtMaeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtConjugeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.edtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmIncluirServidor.LimparCampos;
var i: Integer;
begin
  txtIdPessoal.Caption := '....';

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

procedure TfrmIncluirServidor.SpeedButton1Click(Sender: TObject);
begin
  if ConfirmaAcao('Limpar os campos?',3) = 1
  then
  begin
    IniciarNovoRegistro;
    LimparCampos;
  end;
end;

procedure TfrmIncluirServidor.IniciarNovoRegistro;
begin
  dmCadastroServidor.qryPessoal.Active := false;
  dmCadastroServidor.qryPessoal.Active := true;
end;

procedure TfrmIncluirServidor.btnNovoClick(Sender: TObject);
begin
  {if txtIdPessoal.Caption <> '....' then
  ShowMessage('O registro atual ainda não foi gravado. Grave primeiro');}

  SetarModoInclusao;
end;

function TfrmIncluirServidor.retornaSQLDados: String;
var SQL_Dados: String;
begin

  SQL_Dados := 'SET DATEFORMAT dmy'
  + ' INSERT INTO '
  + ' tbDados'
  + ' (idPessoal, Endereco, Bairro, Cidade, ';

  if cbxEnderecoUF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + 'UF, ';

  SQL_Dados := SQL_Dados
  + 'CEP, CI_Num, ';

  if cbxCI_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + 'CI_UF, ';

  if edtCI_Emissao.Text <> Null
  then SQL_Dados := SQL_Dados
  + ' CI_Emissao,';

  SQL_Dados := SQL_Dados
  + ' Naturalidade, ';

  if cbxNatural_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados +
  'Natural_UF,';

  SQL_Dados := SQL_Dados
  + 'Pis_Pasep, TE_Num, TE_Zona, TE_Secao,';

  if cbxTE_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados +
  'TE_UF, ';

  if edtTE_Emissao.EditingValue <> Null
  then SQL_Dados := SQL_Dados +
  'TE_Emissao, ';

  SQL_Dados := SQL_Dados
  +'Pai, Mae, ';

  if lkpEstadoCivil.EditValue <> Null
  then SQL_Dados := SQL_Dados +
  'idEstadoCivil, ';

  SQL_Dados := SQL_Dados
  + 'Conjuge, ';

  if lkpBanco.EditValue <> Null
  then
  SQL_Dados := SQL_Dados
  + 'idBanco, ';

  SQL_Dados := SQL_Dados
  + 'Agencia, Conta, OAB_Num, OAB_Secao, '
  + 'Grau, Curso, TipoSanguineo,'
  + 'Email)'

  + ' Values ('

  + QuotedStr(txtidPessoal.Caption)   + ', '
  + QuotedStr(edtEndereco.Text) + ', '
  + QuotedStr(edtBairro.Text)   + ', '
  + QuotedStr(edtCidade.Text)   + ', ';

  if cbxEnderecoUF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + QuotedStr(cbxEnderecoUF.Text)       + ', ';

  SQL_Dados := SQL_Dados
  + QuotedStr(edtCEP.Text)      + ', '
  + QuotedStr(edtCI_Num.Text)   + ', ';

  if cbxCI_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + QuotedStr(cbxCI_UF.Text)       + ', ';


  if edtCI_Emissao.Text <> Null
  then SQL_Dados := SQL_Dados
  + QuotedStr(edtCI_Emissao.Text)    + ', ';

  SQL_Dados := SQL_Dados
  + QuotedStr(edtNaturalidade.Text) + ', ';

  if cbxNatural_UF.Text <> ''
  then SQL_Dados := SQL_Dados
  + QuotedStr(cbxNatural_UF.Text)    + ', ';

  SQL_Dados := SQL_Dados
  + QuotedStr(edtPis_Pasep.Text)     + ', '
  + QuotedStr(edtTE_Num.Text)        + ', '
  + QuotedStr(edtTE_Zona.Text)       + ', '
  + QuotedStr(edtTE_Secao.Text)      + ', ';

  if cbxTE_UF.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + QuotedStr(cbxTE_UF.Text)         + ', ';

  if edtTE_Emissao.EditingValue <> Null
  then SQL_Dados := SQL_Dados
  + QuotedStr(edtTE_Emissao.Text)     + ', ';

  SQL_Dados := SQL_Dados
  + QuotedStr(edtPai.Text)            + ', '
  + QuotedStr(edtMae.Text)            + ', ';

  if lkpEstadoCivil.EditValue <> Null
  then SQL_Dados := SQL_Dados
  + QuotedStr(lkpEstadoCivil.EditValue)  + ', ';

  SQL_Dados := SQL_Dados
  + QuotedStr(edtConjuge.Text)        + ', ';

  if lkpBanco.EditValue <> Null
  then SQL_Dados := SQL_Dados
  + QuotedStr(lkpBanco.EditValue)        + ', ';

  SQL_Dados := SQL_Dados
  + QuotedStr(edtAgencia.Text)        + ', '
  + QuotedStr(edtConta.Text)          + ', '
  + QuotedStr(edtOAB_Num.Text)        + ', '
  + QuotedStr(edtOAB_Secao.Text)      + ', '
  + QuotedStr(cbxGrauInstrucao.Text)  + ', '
  + QuotedStr(lkpCargo.Text)          + ', '
  + QuotedStr(cbxTipoSanguineo.Text)  + ', '
  + QuotedStr(edtEmail.Text)
  + ')';

  Result := SQL_Dados;

end;

function TfrmIncluirServidor.retornaSQLDatas: String;
var SQL_Datas: String;
begin

  SQL_Datas := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET';

  // Dt_NomeacaoCargo Dt_NomeacaoCargoDODF Dt_PosseCargo

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


  // Dt_ExercicioCargo Dt_PrimeiroExercicioGDF Dt_NomeacaoFuncao

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

  // Dt_NomeacaoFuncaoDODF Dt_PosseFuncao Dt_ExercicioFuncao

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
  + QuotedStr(txtidPessoal.Caption)
  + ' AND idServidor = '  + QuotedStr(edtidServidor.Text);

  Result := SQL_Datas;

end;

function TfrmIncluirServidor.retornaSQLPessoal: String;
begin
  // txtidPessoal.Caption, edtCPF.Text, edtNome.Text, edtDtNascimento.Text
  Result :=
      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbPessoal'
      + '(idPessoal, CPF, Nome, dt_Nascimento)'
      + ' VALUES ('
      + QuotedStr(txtidPessoal.Caption)   + ', '
      + QuotedStr(edtCPF.Text)            + ', '
      + QuotedStr(edtNome.Text)           + ', '
      + QuotedStr(edtDtNascimento.Text)   + ')';
end;

function TfrmIncluirServidor.retornaSQLServidor: String;
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

  + QuotedStr(txtidPessoal.Caption)   + ', '
  + QuotedStr(edtidServidor.Text) + ', '
  + 'NULL' + ', ';

  // 4	idCargo 5	Especialidade 6	idFuncao 7	idLotacao

  if lkpCargo.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpCargo.EditValue) + ', ';

  if lkpEspecialidade.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpEspecialidade.EditValue) + ', ';

  if lkpFuncao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpFuncao.EditValue) + ', ';

  if lkpLotacao.EditingValue <> Null
  then SQL_Servidor := SQL_Servidor
  + QuotedStr(lkpLotacao.EditValue) + ', ';

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

procedure TfrmIncluirServidor.BloquearCampos;
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

procedure TfrmIncluirServidor.DesbloquearCampos;
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

procedure TfrmIncluirServidor.SpeedButton2Click(Sender: TObject);
begin
  BloquearCampos;
end;

procedure TfrmIncluirServidor.SetarStatus(prmModo: char);
begin
  case prmModo of
    '1':
    begin
      with obStatus do
      begin
        idStatus := '1';
        dscStatus := 'INCLUSÃO';
      end;
    end;
    '2':
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

procedure TfrmIncluirServidor.SetarModoInclusao;
begin
  LimparCampos;
  DesbloquearCampos;
  SetarStatus('1');
  DesabilitarBtnNovo;
  HabilitarBtnGravar;
end;

procedure TfrmIncluirServidor.SetarModoAlteracao;
begin
  BloquearCampos;
  SetarStatus('2');
  DesabilitarBtnGravar;
  HabilitarBtnNovo;
end;


procedure TfrmIncluirServidor.HabilitarBtnGravar;
begin
  btnGravar.Enabled := true;
end;

procedure TfrmIncluirServidor.DesabilitarBtnGravar;
begin
  btnGravar.Enabled := false;
end;

procedure TfrmIncluirServidor.DesabilitarBtnNovo;
begin
  btnNovo.Enabled := false;
end;

procedure TfrmIncluirServidor.HabilitarBtnNovo;
begin
  btnNovo.Enabled := true;
end;

function TfrmIncluirServidor.CPFJaCadastrado(pCPF: string): TPessoalArray;
begin
  SetLength(Result, 3);
   with dmCadastroServidor.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;
     SQL.Text := 'SELECT idPessoal, Nome, Dt_Nascimento FROM tbPessoal'
     + ' WHERE tbPessoal.CPF = ' + QuotedStr(pCPF);
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

procedure TfrmIncluirServidor.edtCPFExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
begin
  if Trim(edtCPF.Text) = '' then
  begin
    ShowMessage('Você deve digitar o número do CPF');
    edtCPF.SetFocus;
  end
  else
  begin
    if CPF_valido(edtCPF.Text) = false then
    begin
      ShowMessage('Número de CPF inválido.');
      edtCPF.SetFocus;
      edtCPF.SelectAll;
      Abort;
    end;

    Setlength(Pessoal, 3);

    Pessoal := CPFJaCadastrado(edtCPF.Text);
    if (Pessoal[0] <> '0')
    and (txtIdPessoal.Caption = '....') then
    begin
      Mensagem := 'O CPF: ' + edtCPF.Text
                  + ' já está cadastrado para: '
                  + #13 + 'Nome: ' + Pessoal[1]
                  + #13 + 'Nascimento: ' + Pessoal[2]
                  + #13 + #13 + 'Deseja continuar?';

      if ConfirmaAcao(Mensagem, 3) = 1
      then
      begin
        with dmCadastroServidor.qryPessoal do
        begin
          Edit;
          txtIdPessoal.Caption := Pessoal[0]; //
          FieldByName('idPessoal').AsString := Pessoal[0]; // idPessoal txtIdPessoal.Caption
          FieldByName('Nome').AsString := Pessoal[1]; // Nome edtNome.Text
          FieldByName('Dt_Nascimento').AsString := Pessoal[2] // edtDtNascimento.Text
        end;
      end
      else
      begin
        edtCPF.Clear;
        edtCPF.SetFocus;
      end;

    end

  end;
end;

function TfrmIncluirServidor.UF_EValida(pUF: String): Boolean;
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

procedure TfrmIncluirServidor.cbxNatural_UFExit(Sender: TObject);
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

procedure TfrmIncluirServidor.cbxEnderecoUFExit(Sender: TObject);
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

procedure TfrmIncluirServidor.cbxCI_UFExit(Sender: TObject);
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

procedure TfrmIncluirServidor.cbxTE_UFExit(Sender: TObject);
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

procedure TfrmIncluirServidor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //tshSQL.TabVisible := not tshSQL.TabVisible;
    //gbxSQL.Visible := not gbxSQL.Visible;
    mmoSQL.Visible := not mmoSQL.Visible;
  end
end;

function TfrmIncluirServidor.MatriculaCadastradaNoID(
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

      'SELECT pes.idPessoal, idServidor, Nome, car.Descricao'
     + ' FROM tbPessoal pes'
     + ' INNER JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
     + ' INNER JOIN tbCargo car ON car.idCargo = ser.idCargo'
     + ' WHERE pes.idPessoal = '  + QuotedStr(pIdPessoal)
     + ' AND ser.idServidor = '   + QuotedStr(pMatricula);


     Open;
     //ExecSQL;
     mmoSQL.Text := SQL.Text;
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

procedure TfrmIncluirServidor.edtidServidorExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
begin
  if Trim(edtidServidor.Text) = '' then
  begin
    ShowMessage('Você deve digitar o número da matrícula');
    edtidServidor.SetFocus;
  end
  else
  begin
    edtidServidor.Text := InserirZeros(edtidServidor.Text,10);
    Setlength(Pessoal, 3);

    Pessoal := MatriculaCadastradaNoID(txtIdPessoal.Caption, edtidServidor.Text);
    ShowMessage(Pessoal[0]);
    if Pessoal[0] <> '0' then
    begin
      Mensagem := 'Já existe um registro cadastrado para esses valores: '
                  + #13 + 'Matrícula: ' + Pessoal[0]
                  + #13 + 'Nome: ' + Pessoal[1]
                  + #13 + 'Cargo: ' + Pessoal[2];


      ShowMessage(Mensagem);

      edtCPF.Clear;
      edtCPF.SetFocus;
    end
  end; 
end;

procedure TfrmIncluirServidor.Button1Click(Sender: TObject);
var
  Erro: Word;
begin
  Erro := WinExec('.\ProgramaExterno\Iniciar.exe / MinhaSenha', SW_SHOW);
  if Erro <= 31 then { Se ocorreu erro... }
  ShowMessage('Erro ao executar o programa.');

end;

procedure TfrmIncluirServidor.Button2Click(Sender: TObject);
var edArquivo: String;
begin
//  ShellExecute(Application.Handle, PChar('open'), PChar('.\ProgramaExterno\Iniciar.exe'), PChar('MinhaSenha'), nil, SW_NORMAL);

edArquivo := '.\ProgramaExterno\Iniciar.exe';

ShellExecute(handle,'open',PChar(edArquivo), 'MinhaSenha','',SW_SHOWNORMAL)
end;

procedure TfrmIncluirServidor.CarregarSessaoAnterior;
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

  ShowMessage(LstUser + ' ' + DateToStr(LstDate));

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

initialization
  obStatus := TStatus.Create;
finalization
  obStatus.Free;

end.
