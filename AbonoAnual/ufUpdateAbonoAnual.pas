unit ufUpdateAbonoAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxGroupBox, cxRadioGroup, cxMemo, cxCheckBox, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxButtons, ExtCtrls, ADODB;

type
  TAbono = record
    idPessoal,
    idServidor,
    idExercicio,
    nProcessoSEI,
    Data_1,
    Data_2,
    Data_3,
    Data_4,
    Data_5 : String;
end;

type
  TfrmUpdateAbonoAnual = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    gbxLancamento: TcxGroupBox;
    Label6: TLabel;
    Label1: TLabel;
    lblNProcessoSEI: TLabel;
    edtDt_1: TcxDateEdit;
    edtExercicio: TcxTextEdit;
    edtProcessoSEI: TcxMaskEdit;
    gbxFeriasNoPeriodo: TcxGroupBox;
    Label3: TLabel;
    edtDt_4: TcxDateEdit;
    Label4: TLabel;
    edtDt_5: TcxDateEdit;
    Label5: TLabel;
    edtDt_2: TcxDateEdit;
    Label7: TLabel;
    edtDt_3: TcxDateEdit;
    qryAbonosNoPeriodo: TADOQuery;
    dsAbonosNoPeriodo: TDataSource;
    grdAbono: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnlNome: TPanel;
    lblMatricula: TLabel;
    lblNome: TLabel;
    lblCargo: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure edtExercicioExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtExercicioKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    OPERACAO: Integer;
    FormQueChamou: Integer;
    idPessoal, idServidor: String;
  public
    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;

    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;
    procedure setarDadosServidor(Matricula, Nome, Cargo: String);

    function incluirAbono: boolean;
    function atualizarAbono: boolean;
    function jaExisteAbono(idPessoal, idServidor, idExercicio: String):boolean;
    function carregarAbonoExistente:boolean;

    function retornaSQLInsertAbono: String;
    function retornaSQLUpdateAbono: String;
    function exibeAbonoNoPeriodo(pIdPessoal, pIdServidor, pExercicio: String): Integer;
    procedure bloquearCampos;
    procedure desbloquearCampos;
    function carregarAbonoParaEdicao:boolean;


  end;

var
  frmUpdateAbonoAnual: TfrmUpdateAbonoAnual;

implementation

uses uDMPessoal, uDMConexao, ufLogs, uPesFuncoes, ufUpdateServidor,
  ufUpdateAbonoAnualGeral, uDmExibirTabelas, uDmFeriasAbonoAfastamento;

{$R *.dfm}

var Abono: TAbono;

function TfrmUpdateAbonoAnual.atualizarAbono: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        {case getFormQueChamou of
          // frmUpdateServidor
          1: SQL.Text := retornaSQLInsertFerias
             (frmUpdateServidor.lbl_IDP.Caption,
              frmUpdateServidor.lbl_IDS.Caption);

          // frmUpdateFeriasGeral
          2: SQL.Text := retornaSQLInsertFerias
             (frmUpdateFeriasGeral.qryPesquisa.FieldValues['idPessoal'],
              frmUpdateFeriasGeral.qryPesquisa.FieldValues['idServidor']);
        end;}

        SQL.Text := retornaSQLUpdateAbono;

        frmLogs.mmoLog.Lines.Add(SQL.Text);

        ExecSQL;

      end;
    Result := true
  except
    Result := false;
  end;

end;

procedure TfrmUpdateAbonoAnual.bloquearCampos;
begin
  edtExercicio.Enabled := false;
end;

procedure TfrmUpdateAbonoAnual.btnSairClick(Sender: TObject);
begin
  if btnSair.Focused then Close;
end;

function TfrmUpdateAbonoAnual.carregarAbonoExistente: boolean;
begin
  with Abono do
  begin
    //ShowMessage(idTipoParcela);
    edtProcessoSEI.Text := nProcessoSEI;
    edtDt_1.Text := Data_1;
    edtDt_2.Text := Data_2;
    edtDt_3.Text := Data_3;
    edtDt_4.Text := Data_4;
    edtDt_5.Text := Data_5;
  end


end;

procedure TfrmUpdateAbonoAnual.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir abono
    begin
      lblOperacao.Caption := 'INCLUSÃO DE ABONO ANUAL';
    end;
    2:      // Alterar abono
    begin
      lblOperacao.Caption :=  'ALTERAÇÃO DE ABONO ANUAL';

  {Case OPERACAO of
    1: lblOperacao.Caption := 'NOVA FUNÇÃO';
    2: lblOperacao.Caption := 'DESLIGAR FUNÇÃO';
    3: lblOperacao.Caption := 'EDITAR FUNÇÃO';

  end;}

    end;

  end;

  //ShowMessage('Configurando tabelas relacionadas');

end;

procedure TfrmUpdateAbonoAnual.desbloquearCampos;
begin
  edtExercicio.Enabled := true;
end;

function TfrmUpdateAbonoAnual.exibeAbonoNoPeriodo(pIdPessoal, pIdServidor,
  pExercicio: String): Integer;
var wSQL: String;
begin
  with qryAbonosNoPeriodo do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    'SELECT'
    + ' Abo.idPessoal, Abo.idExercicio,'
    + ' Abo.Dt_1, Abo.Dt_2, Abo.Dt_3, Abo.Dt_4, Abo.Dt_5,'
    + ' Abo.nProcessoSEI'

    + ' FROM tbAbono as Abo'

    + ' WHERE 1=1'
    + ' and Abo.idPessoal = ' + QuotedStr(pidPessoal)
    + ' AND Abo.idServidor = ' + QuotedStr(pidServidor)
    + ' AND Abo.idExercicio = ' + QuotedStr(pExercicio)
    + ' ORDER BY Abo.idExercicio desc';

    SQL.Add(wSQL);
    frmLogs.mmoLog.Lines.Add(wSQL);

    Active := true;
    Result := RecordCount;
  end;

end;

function TfrmUpdateAbonoAnual.getFormQueChamou: Integer;
begin
  Result := FormQueChamou;
end;

function TfrmUpdateAbonoAnual.incluirAbono: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        {case getFormQueChamou of
          // frmUpdateServidor
          1: SQL.Text := retornaSQLInsertFerias
             (frmUpdateServidor.lbl_IDP.Caption,
              frmUpdateServidor.lbl_IDS.Caption);

          // frmUpdateFeriasGeral
          2: SQL.Text := retornaSQLInsertFerias
             (frmUpdateFeriasGeral.qryPesquisa.FieldValues['idPessoal'],
              frmUpdateFeriasGeral.qryPesquisa.FieldValues['idServidor']);
        end;}

        SQL.Text := retornaSQLInsertAbono;

        frmLogs.mmoLog.Lines.Add(SQL.Text);

        ExecSQL;

      end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateAbonoAnual.jaExisteAbono(idPessoal, idServidor,
  idExercicio: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SELECT top 1 * from tbAbono'
    + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
    + ' AND idServidor = ' + QuotedStr(idServidor)
    + ' AND idExercicio = ' + QuotedStr(idExercicio);


    Active := true;

    if dmPessoal.qryExecSQL.RecordCount > 0 then
    begin
      with Abono do
      begin
        idPessoal := FieldValues['idPessoal'];
        idServidor := FieldValues['idServidor'];
        idExercicio := FieldValues['idExercicio'];

        if not FieldByName('nProcessoSEI').IsNull then
        nProcessoSEI := FieldValues['nProcessoSEI'];

        if not FieldByName('Dt_1').IsNull then
        Data_1 := FieldValues['Dt_1'];

        if not FieldByName('Dt_2').IsNull then
        Data_2 := FieldValues['Dt_2'];

        if not FieldByName('Dt_3').IsNull then
        Data_3 := FieldValues['Dt_3'];

        if not FieldByName('Dt_4').IsNull then
        Data_4 := FieldValues['Dt_4'];

        if not FieldByName('Dt_5').IsNull then
        Data_5 := FieldValues['Dt_5'];


        //ShowMessage(idPessoal + ', ' + idServidor + ', ' + idExercicio);

      end;
      Result := true
    end
    else Result := false;

  end

end;

function TfrmUpdateAbonoAnual.retornaSQLInsertAbono: String;
var SQL_Abono :String;
begin

  SQL_Abono :=

      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbAbono'
      + '(idPessoal, idExercicio, idServidor,'
      + ' nProcessoSEI, Dt_1, Dt_2, Dt_3, Dt_4, Dt_5'
      + ')'
      + ' VALUES ('
      + QuotedStr(idPessoal)   + ', '
      + QuotedStr(edtExercicio.Text) + ', '
      + QuotedStr(idServidor) + ', '
      + QuotedStr(Trim(edtProcessoSEI.Text)) + ', ';

      if edtDt_1.Text <> '' then
        SQL_Abono := SQL_Abono + QuotedStr(edtDt_1.Text) + ', '
      else
        SQL_Abono := SQL_Abono + 'NULL' + ', ';

      if edtDt_2.Text <> '' then
        SQL_Abono := SQL_Abono + QuotedStr(edtDt_2.Text) + ', '
      else
        SQL_Abono := SQL_Abono + 'NULL' + ', ';

      if edtDt_3.Text <> '' then
        SQL_Abono := SQL_Abono + QuotedStr(edtDt_3.Text) + ', '
      else
        SQL_Abono := SQL_Abono + 'NULL' + ', ';

      if edtDt_4.Text <> '' then
        SQL_Abono := SQL_Abono + QuotedStr(edtDt_4.Text) + ', '
      else
        SQL_Abono := SQL_Abono + 'NULL' + ', ';

      if edtDt_5.Text <> '' then
        SQL_Abono := SQL_Abono + QuotedStr(edtDt_5.Text) + ')'
      else
        SQL_Abono := SQL_Abono + 'NULL)';


  Result := SQL_Abono;


end;

function TfrmUpdateAbonoAnual.retornaSQLUpdateAbono: String;
var SQL_Abono: String;
begin
  SQL_Abono :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbAbono'
      + ' SET ';

      if edtDt_1.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_1 = ' + QuotedStr(edtDt_1.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_1 = NULL, ';

      if edtDt_2.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_2 = ' + QuotedStr(edtDt_2.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_2 = NULL, ';

      if edtDt_3.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_3 = ' + QuotedStr(edtDt_3.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_3 = NULL, ';

      if edtDt_4.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_4 = ' + QuotedStr(edtDt_4.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_4 = NULL, ';

      if edtDt_5.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_5 = ' + QuotedStr(edtDt_5.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_5 = NULL, ';


      SQL_Abono := SQL_Abono

      + ', nProcessoSEI = ' + QuotedStr(edtProcessoSEI.Text)

      + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
      + ' AND idServidor = ' + QuotedStr(idServidor)
      + ' AND idExercicio = ' + QuotedStr(edtExercicio.Text);


  Result := SQL_Abono;

end;

function TfrmUpdateAbonoAnual.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

function TfrmUpdateAbonoAnual.setFormQueChamou(Origem: String): Integer;
begin
  if Origem = 'frmUpdateServidor' then FormQueChamou := 1
  else if Origem = 'frmUpdateAbonoAnualGeral' then FormQueChamou := 2;

  //ShowMessage(Origem + ' : ' + IntToStr(FormQueChamou));
  Result := FormQueChamou;
end;

procedure TfrmUpdateAbonoAnual.edtExercicioExit(Sender: TObject);
var difAno: Integer; wMensagem: String;
begin
  if btnSair.Focused then Close
  else
  begin
    if edtExercicio.Text = '' then
    begin
      ShowMessage('É necessário informar o exercício.');
      edtExercicio.SetFocus;
    end
    else
    begin
      difAno := StrToInt(edtExercicio.Text) -  StrToInt(Copy(RetornaData(1),7,4));

      //ShowMessage('Data atual: ' + RetornaData(1));
      //ShowMessage(IntToStr(difAno));

      if (difAno > 2) or (difAno < -60) then
      begin
        ShowMessage('Atenção! O exercício informado é inválido. Deve estar entre os anos de '
        + IntToStr(StrToInt(Copy(RetornaData(1),7,4))-60)
        + ' e '
        + IntToStr(StrToInt(Copy(RetornaData(1),7,4))+2)
        );
        edtExercicio.SetFocus;
      end
      else
      begin
        exibeAbonoNoPeriodo(idPessoal, idServidor, edtExercicio.Text);

        if jaExisteAbono(idPessoal, idServidor, edtExercicio.Text)
        then
        begin
          wMensagem := 'Já existe um registro de abono nesse exercício para este servidor.' +
          chr(13) + 'Deseja alterar o registro já gravado?';

          if ConfirmaAcao(wMensagem, 3) = 1
          then
          begin
            //ShowMessage('Confirmado');
            setarOperacao(2);
            configurarOperacao;
            carregarAbonoExistente;
            bloquearCampos;
            edtProcessoSEI.SetFocus;
          end;
        end

      end;

    end;
  end
end;

procedure TfrmUpdateAbonoAnual.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  Case OPERACAO of
    1: lblOperacao.Caption := 'INCLUSÃO';
    2: lblOperacao.Caption := 'ALTERAÇÃO';
  end;

  lblFQC.Caption := IntToStr(getFormQueChamou);

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      idPessoal := frmUpdateServidor.lbl_IDP.Caption;
      idServidor := frmUpdateServidor.txtMatricula.Caption;
    end;

    // frmUpdateAbonoAnualGeral
    2:
    begin
      {idPessoal := frmUpdateAbonoAnualGeral.qryPesquisa.FieldValues['idPessoal'];
      idServidor := frmUpdateAbonoAnualGeral.qryPesquisa.FieldValues['idServidor'];}

      idPessoal := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      idServidor := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];

    end;

  end;

  edtExercicio.SetFocus;

  configurarOperacao;

end;

procedure TfrmUpdateAbonoAnual.edtExercicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TfrmUpdateAbonoAnual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
      frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateAbonoAnual.btnGravarClick(Sender: TObject);
var wMens, wOperacao: String;
begin
  wMens := 'Atenção! Confirma esta';

  case OPERACAO of //2
  // Inclusão
    1:
    begin
      wOperacao := 'inclusão';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;

        if incluirAbono then ShowMessage('Registro incluído com sucesso.');
      end;
    end;

  // Edição
    2:
    begin
      wOperacao := 'alteração';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;

        if atualizarAbono then ShowMessage('Registro alterado com sucesso.');

        desbloquearCampos;
      end;
    end
  end;

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //ShowMessage('1');
      dmExibirTabelas.qryAbonoServidor.Active := false;
      dmExibirTabelas.qryAbonoServidor.Active := true;
    end;

    // frmUpdateAbonoAnualGeral
    2:
    begin
      //ShowMessage('2');
      frmUpdateAbonoAnualGeral.tshRelacaoAbonosShow(Self);
    end;
  end;

  IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
  RetornaData(2),
  'tbAbono',
  'NULL',
  'TODOS',
  wOperacao + ' de abono: '
  + 'Matrícula: ' + idServidor
  + ' Nome: '
  //+ frmUpdateAbonoAnualGeral.txtNome.Caption
  + lblNome.Caption
  + ' Exercício: ' + edtExercicio.Text
  );


  frmUpdateAbonoAnual.Close;

end;

procedure TfrmUpdateAbonoAnual.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;
  qryAbonosNoPeriodo.Connection := DMConexao.conPessoal;
end;

procedure TfrmUpdateAbonoAnual.setarDadosServidor(Matricula, Nome,
  Cargo: String);
begin
  lblMatricula.Caption := Matricula;
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;                            

end;

function TfrmUpdateAbonoAnual.carregarAbonoParaEdicao: boolean;
begin
//
end;

end.
