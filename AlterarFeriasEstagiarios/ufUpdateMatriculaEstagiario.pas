unit ufUpdateMatriculaEstagiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, DBCtrls,
  cxTextEdit, cxDBEdit, ComCtrls;

type
  TEstadoEdicao = record
    Nome, CPF, dtNascimento, idServidor,
    Cargo,
    Lotacao,
    DtExercicioCargo: Array[0..3] of String;
end;


type
  TPessoalArray = array of string;

  TfrmUpdateMatriculaEstagiario = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    txtNome: TDBText;
    edtidServidor: TcxTextEdit;
    StatusBar: TStatusBar;
    Label19: TLabel;
    lbl_IDS: TLabel;
    Label34: TLabel;
    lbl_IDP: TLabel;
    Button1: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtIdServidorExit(Sender: TObject);
    procedure edtidServidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtidServidorPropertiesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    RegistroAlterado: boolean;
    PodeDesfazerCampo: boolean;
  public
    function carregarDados:boolean;
    function alterarMatricula(pSQL: String): boolean;
    function retornaSQLUpdateMatricula(pIDP, pIDS, pNovaMatricula: String): String;
    function MatriculaCadastradaNoID(pIdPessoal, pMatricula: string): TPessoalArray;
    function checarEstadoRegistro: Integer;
    procedure SetarEstadoDoRegistro;
    procedure SetarAlteracaoDesfeita;
    procedure setarCampoAlterado(Campo: TComponent);
    procedure desfazerAlteracaoCampo(Campo: TComponent);
  end;

var
  frmUpdateMatriculaEstagiario: TfrmUpdateMatriculaEstagiario;

implementation

uses ufReadEstagiarios, PRG_utils, uPesFuncoes, ufCreateServidor,
  uDmCadastroServidor, uDMConexao, ufLogs, uDMPessoal;

{$R *.dfm}

var EstadoEdicao: TEstadoEdicao;

procedure TfrmUpdateMatriculaEstagiario.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateMatriculaEstagiario.btnGravarClick(
  Sender: TObject);
var wMens, NIDP, NIDS: String;
OK_Ser: boolean;
  condicao: string;
  Resultado: Integer;
begin
  wMens := 'Atenção! Confirma a alteração da matrícula deste(a) estagiário(a)?' + #13 + #13
         + txtNome.Caption;

  if ConfirmaAcao(wMens,3) = 1 then
  begin //4
    edtIdServidorExit(Self);

    {
    NIDP := lbl_IDP.Caption;
    NIDS := lbl_IDS.Caption;
    }

    NIDP := frmReadEstagiarios.qryPesquisa.FieldValues['idPessoal'];
    NIDS := frmReadEstagiarios.qryPesquisa.FieldValues['ID'];

    {if alterarMatricula(NIDP, NIDS, edtidServidor.Text) then
    ShowMessage('OK');
    }

    if alterarMatricula
    (retornaSQLUpdateMatricula(NIDP, NIDS, edtidServidor.Text))
    then
      OK_Ser := true
    else
      OK_Ser := false;

    condicao := ' AND ' +
    Gera_SQL(RemoveIndesejadas('EST'), 'serv.idCargo');

    frmReadEstagiarios.lblNumeroRegistros.Caption := 'Nº de registros encontrados: ' +
    IntToStr(frmReadEstagiarios.pesquisarEstagiarios(condicao));

    Close;

  end;
end;

function TfrmUpdateMatriculaEstagiario.alterarMatricula(pSQL: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;
        SQL.Text := pSQL;
        frmLogs.mmoLog.Lines.Add(SQL.Text);

        ExecSQL;
      end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateMatriculaEstagiario.retornaSQLUpdateMatricula(pIDP,
  pIDS, pNovaMatricula: String): String;
var wSQL: String;
begin
  wSQL := 'SET DATEFORMAT dmy'
  + ' UPDATE '
  + ' tbServidor'
  + ' SET idServidor = ' + QuotedStr(pNovaMatricula)
  + ' WHERE idPessoal = ' + QuotedStr(pIDP)
  + ' AND ID = ' + QuotedStr(pIDS);

  frmLogs.mmoLog.Lines.Add(wSQL);
  
  Result := wSQL;

end;

procedure TfrmUpdateMatriculaEstagiario.edtIdServidorExit(Sender: TObject);
var
  Pessoal: TPessoalArray;
  Mensagem: String;
begin
  if (edtidServidor.Text <> EstadoEdicao.idServidor[0]) then
  setarCampoAlterado(edtidServidor);

  if btnSair.Focused then Close
  else
  begin
    edtidServidor.Text :=
    AnsiUpperCase(RemoveEspaco(edtidServidor.Text));

    if (edtidServidor.Text <> EstadoEdicao.idServidor[0]) then
    setarCampoAlterado(edtidServidor);

    if Trim(edtIdServidor.Text) = '' then
    begin
      ShowMessage('Você deve digitar o número da matrícula');
      edtIdServidor.SetFocus;
    end
    else
    begin
      edtidServidor.Text := InserirZeros(edtidServidor.Text,10);
      Setlength(Pessoal, 3);

      Pessoal := MatriculaCadastradaNoID(frmReadEstagiarios.qryPesquisa.FieldValues['idPessoal'],
      Trim(edtIdServidor.Text)
      );

      if Pessoal[0] <> '0' then
      begin //4
        Mensagem := 'Já existe um registro cadastrado para esses valores: '
                    + #13 + 'Matrícula: ' + Pessoal[0]
                    + #13 + 'Nome: ' + Pessoal[1]
                    + #13 + 'Cargo: ' + Pessoal[2];


        ShowMessage(Mensagem);

        //bloquearEdicao;

        edtidServidor.Text := '' ;
        edtidServidor.SetFocus;
      end
      else
      begin
        //DesbloquearCampos;
        //edtIdServidor.SetFocus;
        btnGravar.SetFocus;
      end;


    end;
  end;
end;

function TfrmUpdateMatriculaEstagiario.MatriculaCadastradaNoID(pIdPessoal,
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

function TfrmUpdateMatriculaEstagiario.carregarDados: boolean;
begin
  with frmReadEstagiarios.qryPesquisa do
  begin
    lbl_IDP.Caption         := FieldValues['idPessoal'];
    lbl_IDS.Caption         := FieldValues['ID'];

    if FieldByName('idServidor').IsNull
    then edtidServidor.Text := ''
    else edtidServidor.Text := Trim(FieldValues['idServidor']);

    // Manter o valor do campo idServidor no registro EstadoEdicao
    EstadoEdicao.idServidor[0]  := edtidServidor.Text;
  end;

  SetarAlteracaoDesfeita;
  //setarCorPadrao;

end;

procedure TfrmUpdateMatriculaEstagiario.SetarAlteracaoDesfeita;
begin
  RegistroAlterado := false;
  //btnGravar.Enabled := false;

  with StatusBar do
  begin
     Panels[0].Text := '0';
     Panels[1].Text := 'NÃO ALTERADO';
  end;

end;

procedure TfrmUpdateMatriculaEstagiario.edtidServidorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Chr(key) = #27) then
  begin
    if PodeDesfazerCampo then //DesfazerAlteracao;
    {edtNome.Undo;
    edtNome.Style.Font.Color := clBlack;}
    desfazerAlteracaoCampo(edtidServidor);
  end;                                  

end;

procedure TfrmUpdateMatriculaEstagiario.desfazerAlteracaoCampo(
  Campo: TComponent);
begin
  if Campo.ClassType = TcxTextEdit then
  begin
      TcxTextEdit(Campo).Undo;
      TcxTextEdit(Campo).Style.Font.Color := clBlack;
  end;

  {if Campo.ClassType = TcxDateEdit then
  begin
      TcxDateEdit(Campo).Undo;
      TcxDateEdit(Campo).Style.Font.Color := clBlack;
  end;
  }

  {if Campo.ClassType = TcxLookupComboBox then
  begin
      TcxLookupComboBox(Campo).Undo;
      TcxLookupComboBox(Campo).Style.Font.Color := clBlack;
  end;
  }

  SetarEstadoDoRegistro;

end;

procedure TfrmUpdateMatriculaEstagiario.SetarEstadoDoRegistro;
begin
  case checarEstadoRegistro of
  0:
  begin
    RegistroAlterado := false;
    btnGravar.Enabled := false;
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
    btnGravar.Enabled := true;
  //  SetarStatus('2');

    with StatusBar do
    begin
       Panels[0].Text := '1';
       Panels[1].Text := 'ALTERADO';
    end;
  end;
  end;
end;

function TfrmUpdateMatriculaEstagiario.checarEstadoRegistro: Integer;
begin
  if
  //(edtNome.Text <> EstadoEdicao.Nome[0])
  //or (edtCPF.Text <> EstadoEdicao.CPF[0])
  //or (edtDtNascimento.Text <> EstadoEdicao.dtNascimento[0])
  //or (lkpCargo.Text <> EstadoEdicao.Cargo[0])
  //or (lblLotacao.Caption <> EstadoEdicao.Lotacao[0])
  //or
  (edtidServidor.Text <> EstadoEdicao.idServidor[0])

  then
    Result := 1
  else
    Result := 0;

end;

procedure TfrmUpdateMatriculaEstagiario.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    case key of
      VK_F12:
      //mmoLog.Visible := not mmoLog.Visible;
      frmLogs.ShowModal;
    end
  end
end;

procedure TfrmUpdateMatriculaEstagiario.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TfrmUpdateMatriculaEstagiario.FormActivate(Sender: TObject);
var wOK: boolean;
begin
  if carregarDados then
  wOK := true
  else wOk := false;

  if wOK then edtidServidor.SetFocus;
end;

procedure TfrmUpdateMatriculaEstagiario.setarCampoAlterado(
  Campo: TComponent);
begin
  PodeDesfazerCampo := true;
  SetarEstadoDoRegistro;

  if Campo.ClassType = TcxTextEdit then
  TcxTextEdit(Campo).Style.Font.Color := clRed;

  {if Campo.ClassType = TcxDateEdit then
  TcxTextEdit(Campo).Style.Font.Color := clRed;

  if Campo.ClassType = TcxLookupComboBox then
  TcxLookupComboBox(Campo).Style.Font.Color := clRed;
  }
end;

procedure TfrmUpdateMatriculaEstagiario.edtidServidorPropertiesChange(
  Sender: TObject);
begin
  setarCampoAlterado(edtidServidor);
end;

procedure TfrmUpdateMatriculaEstagiario.Button1Click(Sender: TObject);
begin
  ShowMessage('ok');
end;

end.
