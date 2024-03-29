unit ufUpdateTelefone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxGroupBox, DB, ADODB;


type
  TTelefone = record
    idPessoal,
    idTelefone,
    numero,
    ID: Array[0..1] of String;
end;

type
  TfrmUpdateTelefone = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    gbxDados: TcxGroupBox;
    lblTipo: TLabel;
    lblNumero: TLabel;
    edtNumero: TcxMaskEdit;
    lkpTipoTelefone: TcxLookupComboBox;
    dsTelefone: TDataSource;
    qryTelefone: TADOQuery;
    Label19: TLabel;
    lbl_IDP: TLabel;
    lbl_IDT: TLabel;
    Label34: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtNumeroEnter(Sender: TObject);
  private
    OPERACAO: Integer;
    FormQueChamou: Integer;
  public
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;
    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;

    function SQLInsertTelefone: String;
    function SQLUpdateTelefone: String;

    function existeTelefone(idPessoal, numero: String):boolean;

    function incluirTelefone: boolean;
    function atualizarTelefone: boolean;
    function excluirTelefone(idPessoal, idServidor, numero: String): boolean;

    function carregarDadosTelefone:boolean;

    function setarRegistroAGravar: boolean;

  end;

var
  frmUpdateTelefone: TfrmUpdateTelefone;

implementation

uses uDmExibirTabelas, uDMConexao, uDMPessoal, ufLogs, PRG_utils,
  uPesFuncoes, ufCreateServidor;

{$R *.dfm}

var RegistroAGravar: TTelefone;

procedure TfrmUpdateTelefone.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir telefone
    begin
      lblOperacao.Caption := 'INCLUS�O DE TELEFONE';
    end;
    2:      // Alterar telefone
    begin
      lblOperacao.Caption :=  'ALTERA��O DE TELEFONE';
    end;
  end;
end;

function TfrmUpdateTelefone.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateTelefone.FormActivate(Sender: TObject);
begin
  configurarOperacao;
  lblFQC.Caption := IntToStr(getFormQueChamou);
end;

function TfrmUpdateTelefone.getFormQueChamou: Integer;
begin
  Result := FormQueChamou;
end;

function TfrmUpdateTelefone.setFormQueChamou(Origem: String): Integer;
begin
  if Origem = 'frmCreateServidor' then FormQueChamou := 1
  else if Origem = 'frmUpdateServidor' then FormQueChamou := 2;

  //ShowMessage(Origem + ' : ' + IntToStr(FormQueChamou));
  Result := FormQueChamou;
end;

procedure TfrmUpdateTelefone.btnGravarClick(Sender: TObject);
var wMens, wOperacao: String;
begin
  if existeTelefone(lbl_IDP.Caption, edtNumero.Text) then
  begin
    ShowMessage('O n�mero de telefone informado j� existe para este servidor');
    Abort;
  end;

  wMens := 'Aten��o! Confirma esta';

  case OPERACAO of //2
  // Inclus�o
    1:
    begin
      wOperacao := 'inclus�o';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //if
        setarRegistroAGravar;
        //then
        //Registro_Setado := true;

        if incluirTelefone then ShowMessage('Registro inclu�do com sucesso.');
      end;
    end;

  // Edi��o
    2:
    begin
      wOperacao := 'altera��o';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;

        if atualizarTelefone then ShowMessage('Registro alterado com sucesso.');

        //desbloquearCampos;
      end;
    end
  end;

  case getFormQueChamou of
    // frmCreateServidor
    1:
    begin
      //ShowMessage('1');
      frmCreateServidor.exibirTelefones(frmCreateServidor.lbl_IDP.Caption);
    end;

    // frmUpdateServidor
    2:
    begin
      //ShowMessage('2');
      dmExibirTabelas.qryTelefonesServidor.Active := false;
      dmExibirTabelas.qryTelefonesServidor.Active := true;
    end;
  end;
  {
  IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
  RetornaData(2),
  'tbAbono',
  'NULL',
  'TODOS',
  wOperacao + ' de abono: '
  + 'Matr�cula: ' + idServidor
  + ' Nome: '
  //+ frmUpdateAbonoAnualGeral.txtNome.Caption
  + lblNome.Caption
  + ' Exerc�cio: ' + edtExercicio.Text
  );
  }

  //frmUpdateTelefone.Close;
  
end;

function TfrmUpdateTelefone.atualizarTelefone: boolean;
begin
//
end;

function TfrmUpdateTelefone.excluirTelefone(idPessoal, idServidor,
  numero: String): boolean;
begin
//
end;

function TfrmUpdateTelefone.incluirTelefone: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := SQLInsertTelefone;
        ExecSQL;
        frmLogs.mmoLog.Lines.Add(SQL.Text); // alterar para a fun��o
      end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateTelefone.SQLInsertTelefone: String;
var SQL_Telefone :String;
begin

  SQL_Telefone :=

      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbServ_Telefone'
      + '(idPessoal, Numero, idTelefone'
      + ')'
      + ' VALUES ('
      + QuotedStr(RegistroAGravar.idPessoal[0])   + ', '
      + QuotedStr(RegistroAGravar.numero[0]) + ', '
      + QuotedStr(RegistroAGravar.idTelefone[0])
      + ')';

  Result := SQL_Telefone;
end;

function TfrmUpdateTelefone.SQLUpdateTelefone: String;
var SQL_Telefone: String;
begin
  SQL_Telefone :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbServ_Telefone'

      + ' SET '
      + ' numero = ' + QuotedStr(RegistroAGravar.numero[0])
      + ', idTelefone = ' + QuotedStr(RegistroAGravar.idTelefone[0])
      + ' WHERE ID = ' + QuotedStr(RegistroAGravar.ID[0]);

  Result := SQL_Telefone;
end;

procedure TfrmUpdateTelefone.FormCreate(Sender: TObject);
begin
  qryTelefone.Connection := DMConexao.conPessoal;
  qryTelefone.Active := true;
end;

function TfrmUpdateTelefone.setarRegistroAGravar: boolean;
var registro: String;
begin
  // Setar vari�veis para tabela tbDados

  with RegistroAGravar do
  begin
    idPessoal[0]  := lbl_IDP.Caption;
    idTelefone[0] := lkpTipoTelefone.EditValue;
    numero[0]     := edtNumero.Text;
    ID[0]         := lbl_IDT.Caption;
  end;

  with RegistroAGravar do
  begin
    registro := idPessoal[0] + chr(13) + idTelefone[0] + chr(13) + numero[0];
  end;

  monitorarAcoesDaSessao('ufUpdateTelefone', 'setarRegistroAGravar', registro);

  Result := true;

end;

function TfrmUpdateTelefone.carregarDadosTelefone: boolean;
begin
  {with dmPessoal.qryPesquisa do
  begin
    if FieldByName('ID').IsNull then
    begin
      ShowMessage('Erro cr�tico');
      Application.Terminate;
    end;

    lbl_IDP.Caption         := FieldValues['idPessoal'];
    lbl_IDT.Caption         := FieldValues['ID'];

    if FieldByName('CPF').IsNull
    then edtCPF.Text := ''
    else edtCPF.Text := Trim(FieldValues['CPF']);
  end;
  }
end;

procedure TfrmUpdateTelefone.edtNumeroEnter(Sender: TObject);
begin
  if lkpTipoTelefone.EditValue = 'C'
  then edtNumero.Properties.EditMask := '!\(99\)00000-0000;0;_'
  else edtNumero.Properties.EditMask := '!\(99\)0000-0000;0;_';
end;

function TfrmUpdateTelefone.existeTelefone(idPessoal,
  numero: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SELECT top 1 * from tbServ_Telefone'
    + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
    + ' AND numero = ' + QuotedStr(numero);

    Active := true;

    if dmPessoal.qryExecSQL.RecordCount > 0 then
    begin
      {with Abono do
      begin
        idPessoal := FieldValues['idPessoal'];
        numero := FieldValues['numero'];
        //ShowMessage(idPessoal + ', ' + idServidor + ', ' + idExercicio);
      end;
      }
      Result := true
    end
    else Result := false;
  end
end;

end.
