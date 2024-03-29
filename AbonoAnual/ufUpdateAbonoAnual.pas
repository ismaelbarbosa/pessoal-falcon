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
    Data_5, ID : String;
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
    edtDt_1: TcxDateEdit;
    edtExercicio: TcxTextEdit;
    edtProcessoSEI: TcxMaskEdit;
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
    pnlNome: TPanel;
    lblMatricula: TLabel;
    lblNome: TLabel;
    lblCargo: TLabel;
    cxGroupBox1: TcxGroupBox;
    grdFAA: TcxGrid;
    tbvFAA: TcxGridDBTableView;
    tbcDt_Inicio: TcxGridDBColumn;
    tbcDt_Termino: TcxGridDBColumn;
    tbcTabela: TcxGridDBColumn;
    lvlFAA: TcxGridLevel;
    dsFeriasAfastamentosAbonos: TDataSource;
    lblNProcessoSEI: TLabel;
    lbl_ID: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure edtExercicioExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtExercicioKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDt_1Exit(Sender: TObject);
    procedure edtDt_2Exit(Sender: TObject);
    procedure edtDt_3Exit(Sender: TObject);
    procedure edtDt_4Exit(Sender: TObject);
    procedure edtDt_5Exit(Sender: TObject);
    procedure edtProcessoSEIExit(Sender: TObject);
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

    function existeAbono(idPessoal, idServidor, idExercicio: String):boolean;
    function carregarAbonoExistente:boolean;

    function SQLInsertAbono: String;
    function SQLUpdateAbono: String;

    procedure bloquearCampos;
    procedure desbloquearCampos;
    function carregarAbonoParaEdicao(ID, idExercicio, ProcessoSEI, dt_1, dt_2, dt_3, dt_4, dt_5: String):boolean;

    function dataConcomitante(data: String): boolean;

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
      SQL.Text := SQLUpdateAbono;

      ExecSQL;

      // A linha abaixo sempre dever� ficar abaixo do comando ExecSQL
      // pois n�o estava sendo executado
      // Obs: transferir para a fun��o retornaSQlUpdateAbono
      // verificar todos os programas que executam a��es SQL

      monitorarAcoesDaSessao
      ('ufUpdateAbonoAnual', 'Atualiza��o do abono (atualizarAbono)', SQL.Text);
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

    lbl_ID.Caption := ID;
  end
end;

procedure TfrmUpdateAbonoAnual.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir abono
    begin
      lblOperacao.Caption := 'INCLUS�O DE ABONO ANUAL';
    end;
    2:      // Alterar abono
    begin
      lblOperacao.Caption :=  'ALTERA��O DE ABONO ANUAL';

  {Case OPERACAO of
    1: lblOperacao.Caption := 'NOVA FUN��O';
    2: lblOperacao.Caption := 'DESLIGAR FUN��O';
    3: lblOperacao.Caption := 'EDITAR FUN��O';

  end;}

    end;

  end;

  //ShowMessage('Configurando tabelas relacionadas');

end;

procedure TfrmUpdateAbonoAnual.desbloquearCampos;
begin
  edtExercicio.Enabled := true;
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
        SQL.Text := SQLInsertAbono;

        ExecSQL;
      end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateAbonoAnual.existeAbono(idPessoal, idServidor,
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

function TfrmUpdateAbonoAnual.SQLInsertAbono: String;
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

  monitorarAcoesDaSessao
  ('ufrmUpdateAbonoAnual', 'SQL da inclus�o do abono', SQL_Abono);
end;

function TfrmUpdateAbonoAnual.SQLUpdateAbono: String;
var SQL_Abono: String;
begin
  SQL_Abono :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbAbono'
      + ' SET ';

      if edtExercicio.Text <> '' then
        SQL_Abono := SQL_Abono + 'idExercicio = ' + QuotedStr(edtExercicio.Text)
      else
        SQL_Abono := SQL_Abono + 'idExercicio = NULL';

      if edtDt_1.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_1 = ' + QuotedStr(edtDt_1.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_1 = NULL';

      if edtDt_2.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_2 = ' + QuotedStr(edtDt_2.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_2 = NULL';

      if edtDt_3.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_3 = ' + QuotedStr(edtDt_3.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_3 = NULL';

      if edtDt_4.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_4 = ' + QuotedStr(edtDt_4.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_4 = NULL';

      if edtDt_5.Text <> '' then
        SQL_Abono := SQL_Abono + ', Dt_5 = ' + QuotedStr(edtDt_5.Text)
      else
        SQL_Abono := SQL_Abono + ', Dt_5 = NULL';


      SQL_Abono := SQL_Abono

      + ', nProcessoSEI = ' + QuotedStr(edtProcessoSEI.Text)

      + ' WHERE ID = ' + QuotedStr(lbl_ID.Caption);

      {+ ' idPessoal = ' + QuotedStr(idPessoal)
      + ' AND idServidor = '  + QuotedStr(idServidor)
      + ' AND idExercicio = ' + QuotedStr(edtExercicio.Text)}

      
  Result := SQL_Abono;

  monitorarAcoesDaSessao
  ('ufrmUpdateAbonoAnual', 'SQL da altera��o do abono', SQL_Abono);
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
      ShowMessage('� necess�rio informar o exerc�cio.');
      edtExercicio.SetFocus;
    end
    else
    begin
      difAno := StrToInt(edtExercicio.Text) -  StrToInt(Copy(RetornaData(1),7,4));

      //ShowMessage('Data atual: ' + RetornaData(1));
      //ShowMessage(IntToStr(difAno));

      if (difAno > 2) or (difAno < -60) then
      begin
        ShowMessage('Aten��o! O exerc�cio informado � inv�lido. Deve estar entre os anos de '
        + IntToStr(StrToInt(Copy(RetornaData(1),7,4))-60)
        + ' e '
        + IntToStr(StrToInt(Copy(RetornaData(1),7,4))+2)
        );
        edtExercicio.SetFocus;
      end
      else
      begin
        {exibeAbonoNoPeriodo(idPessoal, idServidor, edtExercicio.Text);

        if jaExisteAbono(idPessoal, idServidor, edtExercicio.Text)
        then
        begin
          wMensagem := 'J� existe um registro de abono nesse exerc�cio para este servidor.' +
          chr(13) + 'Deseja alterar o registro j� gravado?';

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
        }
      end;

    end;
  end
end;

procedure TfrmUpdateAbonoAnual.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  {  -- � feito pela fun��o configurarOpercao
  Case OPERACAO of
    1: lblOperacao.Caption := 'INCLUS�O';
    2: lblOperacao.Caption := 'ALTERA��O';
  end;
  }
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
      //edtExercicio.Text := dmFeriasAbonoAfastamento.qryAbonoAnual.FieldValues['idExercicio'];
    end;

  end;

  //edtExercicio.SetFocus;

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
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Aten��o! Confirma esta';

  case OPERACAO of //2
  // Inclus�o
    1:
    begin
      wOperacao := 'inclus�o';
      wMens := wMens + ' ' + wOperacao + '?';

      //if ConfirmaAcao(wMens,3) = 1 then
      //begin
        //edtNomeExit(Self);
        //setarCampos;

        if incluirAbono then ShowMessage('Registro inclu�do com sucesso.');
      //end;
    end;

  // Edi��o
    2:
    begin
      wOperacao := 'altera��o';
      wMens := wMens + ' ' + wOperacao + '?';

      //if ConfirmaAcao(wMens,3) = 1 then
      //begin
        //edtNomeExit(Self);
        //setarCampos;

        if atualizarAbono then ShowMessage('Registro alterado com sucesso.');

        desbloquearCampos;
      //end;
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

  ////////////////


    IncluirLog
    (
    DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
    RetornaData(2),
    'tbAbono',
    'NULL',
    idPessoal,
    idServidor,
    'TODOS',
    UpperCase(wOperacao)+ ' de abono.'
    + ' Exerc�cio: ' + edtExercicio.Text
    + ', Datas: '
    + edtDt_1.Text + ', '
    + edtDt_2.Text + ', '
    + edtDt_3.Text + ', '
    + edtDt_4.Text + ', '
    + edtDt_5.Text
    );

  ///////////////

  frmUpdateAbonoAnual.Close;

end;

procedure TfrmUpdateAbonoAnual.FormCreate(Sender: TObject);
begin
  dsFeriasAfastamentosAbonos.DataSet := dmFeriasAbonoAfastamento.qryFeriasAfastamentosAbonos;
  tbvFAA.DataController.DataSource := dsFeriasAfastamentosAbonos;

  WindowState := wsMaximized;
  KeyPreview := true;
  qryAbonosNoPeriodo.Connection := DMConexao.conPessoal;

  edtProcessoSEI.Properties.MaxLength := 19;
end;

procedure TfrmUpdateAbonoAnual.setarDadosServidor(Matricula, Nome,
  Cargo: String);
begin
  lblMatricula.Caption := Matricula;
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;                            

end;

function TfrmUpdateAbonoAnual.carregarAbonoParaEdicao
(ID, idExercicio, ProcessoSEI, dt_1, dt_2, dt_3, dt_4, dt_5: String)
: boolean;
begin
  lbl_ID.Caption := ID;

  edtExercicio.Text := idExercicio;
  edtProcessoSEI.Text := ProcessoSEI;
  edtDt_1.Text := dt_1;
  edtDt_2.Text := dt_2;
  edtDt_3.Text := dt_3;
  edtDt_4.Text := dt_4;
  edtDt_5.Text := dt_5;

  {
  if not FieldByName('Observacao').IsNull then
  mmoObservacaoPrimeira.Text := qryFeriasNoPeriodo.FieldValues['Observacao'];
  }
end;

procedure TfrmUpdateAbonoAnual.edtDt_1Exit(Sender: TObject);
begin
  if btnSair.Focused then Close
  else
  dataConcomitante(edtDt_1.Text);
end;

function TfrmUpdateAbonoAnual.dataConcomitante(data: String): boolean;
var idPessoal, idServidor : String;
begin
  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //ShowMessage('1');
      idPessoal := frmUpdateServidor.lbl_IDP.Caption;
      idServidor := frmUpdateServidor.edtidServidor.Text;
    end;

    // frmUpdateAbonoGeral
    2:
    begin
      //ShowMessage('2');
      idPessoal := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      idServidor := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];
    end;
  end;

  if dmFeriasAbonoAfastamento.exibirFAANoPeriodo(idPessoal,idServidor, data) > 0
  then ShowMessage('Existem outros afastamentos ou abonos ou f�rias concomitantes com esta data. '
  + chr(13) + 'Vide rela��o abaixo.');

  Result := true;
end;

procedure TfrmUpdateAbonoAnual.edtDt_2Exit(Sender: TObject);
begin
  if btnSair.Focused then Close
  else
  dataConcomitante(edtDt_2.Text);
end;

procedure TfrmUpdateAbonoAnual.edtDt_3Exit(Sender: TObject);
begin
  if btnSair.Focused then Close
  else
  dataConcomitante(edtDt_3.Text);
end;

procedure TfrmUpdateAbonoAnual.edtDt_4Exit(Sender: TObject);
begin
  if btnSair.Focused then Close
  else
  dataConcomitante(edtDt_4.Text);
end;

procedure TfrmUpdateAbonoAnual.edtDt_5Exit(Sender: TObject);
begin
  if btnSair.Focused then Close
  else
  dataConcomitante(edtDt_5.Text);
end;

procedure TfrmUpdateAbonoAnual.edtProcessoSEIExit(Sender: TObject);
var SEI: String;
begin
  SEI := InserirZeros(edtProcessoSEI.Text, 19);

  //1234567890123456789

  {edtProcessoSEI.Text := copy(SEI,1,5) + '-'
  + copy(SEI,6,8) + '/'
  + copy(SEI,14,4) + '-'
  + copy(SEI,17,3);}

  //edtProcessoSEI.Properties.EditMask := '00000-00000000/0000-00;0;_'

  edtProcessoSEI.Text := SEI;

  //ShowMessage(edtProcessoSEI.Text);

    //00000-00000000/0000-00;0;_
  //edtProcessoSEI.Text := '12345-67890123/4567-89';
  //edtProcessoSEI.Text := InserirZeros(edtProcessoSEI.Text, 19);

end;

end.
