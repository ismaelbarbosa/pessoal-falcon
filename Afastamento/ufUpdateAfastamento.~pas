unit ufUpdateAfastamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxDropDownEdit, cxCalendar, cxMemo, cxMaskEdit, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, DB, ADODB, ComCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TAfastamento = record
    idPessoal, idServidor,
    idExercicio, idAfastamento,
    processoSEI,
    dtInicio, dtTermino,
    observacao, ID
    : Array[0..1] of String;
end;

type
  TfrmUpdateAfastamento = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    gbxLancamento: TcxGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    lblNProcessoSEI: TLabel;
    lkpTipoAfastamento: TcxLookupComboBox;
    edtExercicio: TcxTextEdit;
    edtProcessoSEI: TcxMaskEdit;
    Label6: TLabel;
    Label3: TLabel;
    edtDt_Termino: TcxDateEdit;
    edtDt_Inicio: TcxDateEdit;
    lblObservacao1: TLabel;
    mmoObservacao: TcxMemo;
    pnlNome: TPanel;
    lblNome: TLabel;
    lblCargo: TLabel;
    qryAfastamentoNoPeriodo: TADOQuery;
    dsAfastamentoNoPeriodo: TDataSource;
    lbl_ID: TLabel;
    lblMatricula: TLabel;
    barStatus: TStatusBar;
    dsFeriasAfastamentosAbonos: TDataSource;
    cxGroupBox1: TcxGroupBox;
    tbvFAA: TcxGridDBTableView;
    lvlFAA: TcxGridLevel;
    grdFAA: TcxGrid;
    tbcDt_Inicio: TcxGridDBColumn;
    tbcDt_Termino: TcxGridDBColumn;
    tbcTabela: TcxGridDBColumn;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpTipoAfastamentoExit(Sender: TObject);
    procedure mmoObservacaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDt_InicioExit(Sender: TObject);
    procedure edtDt_TerminoExit(Sender: TObject);
  private
    OPERACAO: Integer;
    FormQueChamou: Integer;
    eProcurador: boolean;
    //idPessoal, idServidor, idExercicio, idAfastamento, ID: String;

  public
    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;

    function setarOperacao(tipo: Integer):boolean;
    procedure setarDadosServidor(Matricula, Nome, Cargo: String);
    procedure configurarOperacao;

    function jaExisteAfastamento(idPessoal, idServidor, idExercicio: String):boolean;
    function carregarAfastamento
    (idExercicio, ProcessoSEI, idAfastamento,
    dtInicio, dtTermino, Observacao, ID: String):boolean;

    function SQLInsertAfastamento: String;
    function SQLUpdateAfastamento: String;
    function setarRegistroAGravar: boolean;

    function excluirAfastamento(ID: String): boolean;

    procedure setarBarraDeStatus(pOperacao, pFormQueChamou, pFQC, pMatricula, pID: String);

    function dataConcomitante(data: String): boolean;

  end;

var
  frmUpdateAfastamento: TfrmUpdateAfastamento;

implementation

uses uDMPessoal, ufUpdateServidor, uDmFeriasAbonoAfastamento,
  uDmExibirTabelas, uDMConexao, PRG_utils, uPesFuncoes, ufLogs,
  ufUpdateAfastamentoGeral, uDmCadastroServidor;

{$R *.dfm}

var EstadoEdicao, RegistroAGravar: TAfastamento;

{ TfrmUpdateAfastamento }

function TfrmUpdateAfastamento.getFormQueChamou: Integer;
begin
  Result := FormQueChamou;
end;

function TfrmUpdateAfastamento.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

function TfrmUpdateAfastamento.setFormQueChamou(Origem: String): Integer;
begin
  if Origem = 'frmUpdateServidor' then FormQueChamou := 1
  else if Origem = 'frmUpdateAfastamentoGeral' then FormQueChamou := 2;

  Result := FormQueChamou;
end;

procedure TfrmUpdateAfastamento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateAfastamento.setarDadosServidor(Matricula, Nome,
  Cargo: String);
begin
  lblMatricula.Caption := Matricula;
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;
end;

procedure TfrmUpdateAfastamento.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  Case OPERACAO of
    1:
    begin
      lblOperacao.Caption := 'INCLUSÃO';
      edtExercicio.SetFocus;
    end;
    2:
    begin
      lblOperacao.Caption := 'ALTERAÇÃO';
      //rgpParcelada.SetFocus;
    end;
  end;

  lblFQC.Caption := IntToStr(getFormQueChamou);


  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //ShowMessage('1');

      RegistroAGravar.idPessoal[0] := frmUpdateServidor.lbl_IDP.Caption;
      RegistroAGravar.idServidor[0] := frmUpdateServidor.edtidServidor.Text;  // bloquear a edição

      if OPERACAO = 2 then
      RegistroAGravar.ID[0] := dmExibirTabelas.qryAfastamentoServidor.FieldValues['ID'];

//      RegistroAGravar.idServidor[0] := frmUpdateServidor.lbl_IDS.Caption; // Erro

//      idServidor := frmUpdateServidor.txtMatricula.Caption;
//      idExercicio := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idExercicio'];
//      idTipoAfastamento := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idAfastamento'];


      //ShowMessage(idPessoal + ', ' + idServidor);
    end;

    // frmUpdateAfastamentoGeral
    2:
    begin
      //ShowMessage('2');

      RegistroAGravar.idPessoal[0] := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      RegistroAGravar.idServidor[0] := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];

      if OPERACAO = 2 then
      RegistroAGravar.ID[0] := DMFeriasAbonoAfastamento.qryAfastamento.FieldValues['ID'];

      //ShowMessage(RegistroAGravar.ID[0]);


//      idPessoal := dmPessoal.qryPesquisa.FieldValues['idPessoal'];
      //idServidor := dmPessoal.qryPesquisa.FieldValues['idServidor'];

      //idPessoal := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      //idServidor := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];
      //ID := DMFeriasAbonoAfastamento.qryAfastamento.FieldValues['ID'];
      //ShowMessage(ID);

      //idExercicio := dmFeriasAbonoAfastamento.qryAfastamento.FieldValues['idExercicio'];
      //idAfastamento := dmFeriasAbonoAfastamento.qryAfastamento.FieldValues['idAfastamento'];

      //idExercicio := edtExercicio.Text;
      //idAfastamento := lkpTipoAfastamento.EditValue;

      //ShowMessage(idPessoal + ', ' + idServidor);
    end;
  end;

  configurarOperacao;

end;

procedure TfrmUpdateAfastamento.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir afastamento
      lblOperacao.Caption := 'INCLUSÃO DE AFASTAMENTO';
    2:      // Alterar afastameto
      lblOperacao.Caption :=  'ALTERAÇÃO DE AFASTAMENTO';
  end;
end;

procedure TfrmUpdateAfastamento.btnGravarClick(Sender: TObject);
var wMens, wOperacao, wEvento: String;
    Registro_Setado: boolean;
begin
  {ShowMessage('lbl_ID = ' + QuotedStr(lbl_ID.Caption));
  ShowMessage('ID = ' + QuotedStr(RegistroAGravar.ID[0]));}

  // setar os valores do registro a ser gravado

  if setarRegistroAGravar then
  Registro_Setado := true;

  wMens := 'Atenção! Confirma esta';

  case OPERACAO of //2
  // Inclusão
    1:
    begin
      wOperacao := 'inclusão';
      wMens := wMens + ' ' + wOperacao + '?';

      //if ConfirmaAcao(wMens,3) = 1 then
      //begin
        //edtNomeExit(Self);
        //setarCampos;
        //if incluirAfastamento then ShowMessage('Registro incluído com sucesso.');

        if dmCadastroServidor.executarSQL(SQLInsertAfastamento)
        then ShowMessage('Registro incluído com sucesso.');
      //end;
    end;

  // Edição
    2:
    begin
      wOperacao := 'alteração';
      wMens := wMens + ' ' + wOperacao + '?';

      //if ConfirmaAcao(wMens,3) = 1 then
      //begin
        //edtNomeExit(Self);
        //setarCampos;

        //if atualizarAfastamento then ShowMessage('Registro alterado com sucesso.');


/////////////////////////////////////////////////////////////////////
{
    with dmCadastroServidor, RegistroAGravar do
    begin
      if dmCadastroServidor.executarSQL(SQLUpdateDados
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

}
///////////////////////////////////////////////////////////////////////


        if dmCadastroServidor.executarSQL(SQLUpdateAfastamento)
        then ShowMessage('Registro alterado com sucesso.');

        //ShowMessage(lkpTipoAfastamento.EditValue);

        //desbloquearCampos;
      //end;
    end
  end;

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //ShowMessage('1');
      dmExibirTabelas.qryAfastamentoServidor.Active := false;
      dmExibirTabelas.qryAfastamentoServidor.Active := true;
    end;

    // frmUpdateAfastamentoGeral
    2:
    begin
      //ShowMessage('2');
      frmUpdateAfastamentoGeral.tshRelacaoAfastamentosShow(Self);
    end;
  end;
/////////////

  wEvento := UpperCase(wOperacao)+ ' de afastamento.';

  if lkpTipoAfastamento.EditValue <> ''
  then
  wEvento := wEvento + ' '
  + lkpTipoAfastamento.EditValue
  + ' - ' + lkpTipoAfastamento.Text;

  if edtExercicio.Text <> ''
  then wEvento := wEvento
  + ', Exercício: ' + edtExercicio.Text;

  if edtDt_Inicio.Text <> '' then
  wEvento := wEvento
  + ', Data de início: ' + edtDt_Inicio.Text;

  if edtDt_Termino.Text <> '' then
  wEvento := wEvento
  + ', Data de término: ' + edtDt_Termino.Text;

  IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
  RetornaData(2),
  'tbAfastamento',
  //'NULL',
  {dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
  dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
  dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],}
  RegistroAGravar.idPessoal[0],
  RegistroAGravar.idPessoal[0],
  RegistroAGravar.idServidor[0],
  'TODOS',
  wEvento
  );

////////////////

  {IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
  RetornaData(2),
  'tbAfastamento',
  //'NULL',
  RegistroAGravar.ID[0],
  RegistroAGravar.idPessoal[0],
  RegistroAGravar.idServidor[0],
  'TODOS',
  UpperCase(wOperacao) + ' de afastamento: '
  + 'Afastamento: ' + RegistroAGravar.idServidor[0]
  + ' Nome: '
  + lblNome.Caption
  + ' Exercício: ' + edtExercicio.Text
  );
  }
  frmUpdateAfastamento.Close;

end;


function TfrmUpdateAfastamento.carregarAfastamento
(idExercicio, ProcessoSEI, idAfastamento,
 dtInicio, dtTermino, Observacao, ID: String): boolean;
begin
  edtExercicio.Text := idExercicio;
  edtProcessoSEI.Text := ProcessoSEI;
  lkpTipoAfastamento.EditValue := idAfastamento;
  edtDt_Inicio.Text := dtInicio;
  edtDt_Termino.Text := dtTermino;
  mmoObservacao.Text := Observacao;
  lbl_ID.Caption := ID;
end;


function TfrmUpdateAfastamento.jaExisteAfastamento(idPessoal, idServidor,
  idExercicio: String): boolean;
begin
//
end;

function TfrmUpdateAfastamento.SQLInsertAfastamento: String;
var SQL_Afastamento :String;
begin

  SQL_Afastamento :=

      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbServ_Afast'
      + '(idPessoal, idExercicio, idAfastamento,'
      + ' nProcessoSEI, Dt_Inicio, Dt_Termino,'
      + ' Observacao, idServidor'
      + ')'
      + ' VALUES (';

      {+ QuotedStr(idPessoal)                    + ', '
      + QuotedStr(edtExercicio.Text)            + ', '
      + QuotedStr(lkpTipoAfastamento.EditValue) + ', '
      + QuotedStr(Trim(edtProcessoSEI.Text))    + ', '
      + QuotedStr(edtDt_Inicio.Text)            + ', '
      + QuotedStr(edtDt_Termino.Text)           + ', '
      + QuotedStr(TrimLeft(TrimRight(mmoObservacao.Text))) + ', '
      + QuotedStr(idServidor)}

//////////////////////////

      with RegistroAGravar do
      begin
        SQL_Afastamento := SQL_Afastamento
          + QuotedStr(idPessoal[0]);

        if idExercicio[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', ' + QuotedStr(idExercicio[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', NULL';

        if idAfastamento[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', ' + QuotedStr(idAfastamento[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', NULL';

        if processoSEI[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', ' +  QuotedStr(processoSEI[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', NULL';

        if dtInicio[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', ' +  QuotedStr(dtInicio[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', NULL';

        if dtTermino[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', ' +  QuotedStr(dtTermino[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', NULL';

        if observacao[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', ' +  QuotedStr(observacao[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', NULL';

        //ShowMessage(idServidor[0]);

        if idServidor[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', ' +  QuotedStr(idServidor[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', NULL';

        SQL_Afastamento := SQL_Afastamento
        + ')'
        ;
      end;

  monitorarAcoesDaSessao
  ('frmUpdateAfastamento', 'retornaSQLInsertAfastamento', SQL_Afastamento);

  Result := SQL_Afastamento;

end;

function TfrmUpdateAfastamento.SQLUpdateAfastamento: String;
var SQL_Afastamento: String;
begin
  with RegistroAGravar do
  begin
    //ShowMessage(QuotedStr(ID[0]));

    SQL_Afastamento :=
        'SET DATEFORMAT dmy'
        + ' UPDATE tbServ_Afast'
        + ' SET ';

        if idExercicio[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ' idExercicio = ' + QuotedStr(idExercicio[0])
        else SQL_Afastamento := SQL_Afastamento
          + ' idExercicio = NULL';

        if dtInicio[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', Dt_Inicio = ' + QuotedStr(dtInicio[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', Dt_Inicio = NULL';

        if dtTermino[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', Dt_Termino = ' + QuotedStr(dtTermino[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', Dt_Termino = NULL';

        if processoSEI[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', nProcessoSEI = ' + QuotedStr(processoSEI[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', nProcessoSEI = NULL';

        if observacao[0] <> ''
        then SQL_Afastamento := SQL_Afastamento
          + ', observacao = ' + QuotedStr(observacao[0])
        else SQL_Afastamento := SQL_Afastamento
          + ', observacao = NULL';

        SQL_Afastamento := SQL_Afastamento

        + ' WHERE ID = ' + QuotedStr(ID[0]);


        //ShowMessage(SQL_Afastamento);
  end;

  monitorarAcoesDaSessao
  ('frmUpdateAfastamento', 'retornaSQLUpdateAfastamento', SQL_Afastamento);

  Result := SQL_Afastamento;

end;

procedure TfrmUpdateAfastamento.FormCreate(Sender: TObject);
begin
  dsFeriasAfastamentosAbonos.DataSet := dmFeriasAbonoAfastamento.qryFeriasAfastamentosAbonos;
  tbvFAA.DataController.DataSource := dsFeriasAfastamentosAbonos;

  WindowState := wsMaximized;
  KeyPreview := true;
  lbl_ID.Caption := '';
  lkpTipoAfastamento.Properties.ListSource := dmFeriasAbonoAfastamento.dsTipoAfastamento;
  //qryAbonosNoPeriodo.Connection := DMConexao.conPessoal;

  if not dmFeriasAbonoAfastamento.retornarTipoAfastamento
  then ShowMessage('A pesquisa falhou para o campo de tipo de afastamento');
  
end;

procedure TfrmUpdateAfastamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
      frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateAfastamento.lkpTipoAfastamentoExit(Sender: TObject);
begin
  {if lkpTipoAfastamento.ItemIndex <> -1
  then
  ShowMessage(lkpTipoAfastamento.EditValue);}
end;

procedure TfrmUpdateAfastamento.mmoObservacaoExit(Sender: TObject);
begin
//  ShowMessage(TrimRight(mmoObservacao.Text));
end;

function TfrmUpdateAfastamento.setarRegistroAGravar: boolean;
var registro: String;
begin
  // Setar variáveis para tabela tbDados

  with RegistroAGravar do
  begin
    {
    idPessoal[0] :=
    idServidor
    ID
    }
    if edtExercicio.Text <> Null
    then idExercicio[0]  := edtExercicio.Text
    else idExercicio[0] := '';

//    if edtProcessoSEI.Text <> Null
    if Trim(edtProcessoSEI.Text) <> ''
    then processoSEI[0] :=  edtProcessoSEI.Text
    else processoSEI[0] := '';

    if lkpTipoAfastamento.Text <> Null
    then idAfastamento[0] := lkpTipoAfastamento.EditValue
    else idAfastamento[0] := '';

    if edtDt_Inicio.Text <> Null
    then dtInicio[0] :=  edtDt_Inicio.Text
    else dtInicio[0] := '';

    if edtDt_Termino.Text <> Null
    then dtTermino[0] :=  edtDt_Termino.Text
    else dtTermino[0] := '';

    if mmoObservacao.Text <> Null
    then observacao[0] := Trim(mmoObservacao.Text)
    else observacao[0] := '';

  end;

  with RegistroAGravar do
  begin
    registro := lblNome.Caption + chr(13) + dtInicio[0] + chr(13);
  end;

  monitorarAcoesDaSessao('ufUpdateServidor', 'setarRegistroAGravar', registro);

  Result := true;

end;

function TfrmUpdateAfastamento.excluirAfastamento(ID: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;

      SQL.Text := ' DELETE FROM tbServ_Afast'
      + ' WHERE ID = ' + QuotedStr(ID);

      ExecSQL;

      // A linha abaixo sempre deverá ficar abaixo do comando ExecSQL
      // pois não estava sendo executado
      // Obs: transferir para a função retornaSQlUpdateAbono
      // verificar todos os programas que executam ações SQL

      monitorarAcoesDaSessao
      ('ufUpdateAbonoAnual', 'Exclusão do abono (excluirAbono)', SQL.Text);
    end;
    Result := true

  except
    Result := false;
  end;            
end;

procedure TfrmUpdateAfastamento.setarBarraDeStatus(pOperacao, pFormQueChamou, pFQC, pMatricula, pID: String);
begin
  with barStatus do
  begin
    Panels[0].Text := pOperacao;
    Panels[1].Text := pFormQueChamou;
  end
end;

procedure TfrmUpdateAfastamento.FormShow(Sender: TObject);
begin
  setarBarraDeStatus(lblOperacao.Caption, lblFQC.Caption, '', '', '');
end;

procedure TfrmUpdateAfastamento.edtDt_InicioExit(Sender: TObject);
var idPessoal, idServidor : String;
begin
  if btnSair.Focused then Close
  else
  dataConcomitante(edtDt_Inicio.Text);
end;

procedure TfrmUpdateAfastamento.edtDt_TerminoExit(Sender: TObject);
begin
  if btnSair.Focused then Close
  else
  dataConcomitante(edtDt_Termino.Text);
end;

function TfrmUpdateAfastamento.dataConcomitante(data: String): boolean;
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

    // frmUpdateAfastamentoGeral
    2:
    begin
      //ShowMessage('2');
      idPessoal := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      idServidor := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];
    end;
  end;

  if dmFeriasAbonoAfastamento.exibirFAANoPeriodo(idPessoal,idServidor, data) > 0
  then ShowMessage('Existem outros afastamentos ou abonos ou férias concomitantes com esta data. '
  + chr(13) + 'Vide relação abaixo.');

  Result := true;
end;

end.
