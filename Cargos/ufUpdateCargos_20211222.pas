unit ufUpdateCargos_20211222;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxMemo, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, cxRadioGroup, cxTextEdit, cxPC,
  StdCtrls, cxButtons, ExtCtrls, ADODB, cxCalendar, DBCtrls, cxDBEdit,
  cxSpinEdit, cxLabel, cxDBLabel;

type
  TfrmUpdateCargos_20211222 = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    pgcTabelas: TcxPageControl;
    tshCargos: TcxTabSheet;
    tshVagas: TcxTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    Button2: TButton;
    qryCargo: TADOQuery;
    dsCargo: TDataSource;
    Timer1: TTimer;
    pnlCargos: TPanel;
    tshServidores: TcxTabSheet;
    tshHistorico: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label5: TLabel;
    edtVagaCargo: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnNovoVaga: TcxButton;
    gbxEditarVaga: TcxGroupBox;
    Label7: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    btnGravarNovaVaga: TcxButton;
    Label6: TLabel;
    qryCargoVaga: TADOQuery;
    dsCargoVaga: TDataSource;
    Label8: TLabel;
    edtLei: TcxTextEdit;
    edtData: TcxDateEdit;
    Label9: TLabel;
    edtQtdVagas: TcxSpinEdit;
    Timer2: TTimer;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    lblTotalVagas: TLabel;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    grdCargos: TcxGrid;
    grdCargosDBTableView1: TcxGridDBTableView;
    grdCargosDBTableView1Column1: TcxGridDBColumn;
    grdCargosDBTableView1Column2: TcxGridDBColumn;
    grdCargosDBTableView1Column3: TcxGridDBColumn;
    grdCargosDBTableView1Column4: TcxGridDBColumn;
    grdCargosDBTableView1Column5: TcxGridDBColumn;
    grdCargosLevel1: TcxGridLevel;
    pnlBotoesCargo: TPanel;
    lblOperacaoCargo: TLabel;
    btnNovoCargo: TcxButton;
    btnEditarCargo: TcxButton;
    btnGravarCargo: TcxButton;
    btnCancelarCargo: TcxButton;
    qryCargoCarreira: TADOQuery;
    dsCargoCarreira: TDataSource;
    pgcCRCargo: TcxPageControl;
    tshCreateUpdateCargo: TcxTabSheet;
    pnlUpdateCargo: TPanel;
    Label28: TLabel;
    txtIdCargo: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    lblVagasDisponiveis: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxMemo1: TcxMemo;
    cxDBLabel1: TcxDBLabel;
    lkpCargoCarreira: TcxLookupComboBox;
    edtDescricao: TcxTextEdit;
    edtIdCargo: TcxTextEdit;
    edtVagas_Prev: TcxSpinEdit;
    mmoSQL: TcxMemo;
    tshReadCargo: TcxTabSheet;
    pnlReadCargo: TPanel;
    Label14: TLabel;
    DBText1: TDBText;
    Label18: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxTabSheet4: TcxTabSheet;
    gbxPesquisarCargo: TcxGroupBox;
    lblLotacao: TLabel;
    lblTotalCargo: TLabel;
    edtPesquisaCargo: TcxTextEdit;
    txtCarreira: TDBText;
    txtCargo: TDBText;
    txtIdCargo_: TDBText;
    txtVagas_Prev: TDBText;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    btnGerenciarCargos: TcxButton;
    btnGerenciarVagas: TcxButton;
    btnGerenciarNomeacoes: TcxButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarCargoClick(Sender: TObject);
    procedure edtPesquisaCargoKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditarCargoClick(Sender: TObject);
    procedure btnGravarNovaVagaClick(Sender: TObject);
    procedure edtVagaCargoKeyPress(Sender: TObject; var Key: Char);
    procedure Timer2Timer(Sender: TObject);
    procedure qryCargoCalcFields(DataSet: TDataSet);
    procedure dsCargoDataChange(Sender: TObject; Field: TField);
    procedure btnCancelarCargoClick(Sender: TObject);
    procedure btnNovoCargoClick(Sender: TObject);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdCargoExit(Sender: TObject);
    procedure btnGerenciarCargosClick(Sender: TObject);
    procedure btnGerenciarVagasClick(Sender: TObject);
    procedure btnGerenciarNomeacoesClick(Sender: TObject);
  private
    OPERACAO_CARGO: Integer;
    Mens: Array of String;
    Campos: Array of String;
  public
    function exibirCargos: integer;
    function exibirVagasPorCargo : integer;
    function retornaSQLCargos(valor:String): String;
    function retornaSQLVagas(valor:String): String;
    function retornarCargoCarreira: boolean;
    function incluirCargo(vSQL: String): boolean;
    function alterarCargo(vSQL: String): boolean;
    function retornaSQLCreateCargo: String;
    function retornaSQLUpdateCargo: String;
    function incluirVaga(vSQL: String): boolean;
    function retornaSQLInsertVaga: String;
    function existeIdCargo(idCargo: String): boolean;

    function setarOperacaoCargo(tipo: Integer):boolean;
    procedure configurarOperacaoCargo;

    function carregarDados:boolean;

    function CamposVazios(Campos: Array of String;
         Mensagens: Array of String): Boolean;

    procedure setarCampos;

    procedure setarAbasTabelas(Operacao: Integer);
    procedure setarAbasCargo(Operacao: Integer);

  end;

var
  frmUpdateCargos_20211222: TfrmUpdateCargos_20211222;

implementation

uses PRG_utils, ufLogs, uDMConexao, uDMPessoal, uPesFuncoes;

{$R *.dfm}

function TfrmUpdateCargos_20211222.exibirCargos: integer;
begin
  with qryCargo do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(retornaSQLCargos(edtPesquisaCargo.Text));
    Active := True;
  end;

  Result := qryCargo.RecordCount;
end;

function TfrmUpdateCargos_20211222.retornaSQLCargos(valor: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + 'CASE WHEN Habilitado = 1 THEN ''SIM'''
  + ' WHEN Habilitado = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS Habilitado'


  + ', car.ID, car.idCargo'
  + ', car.idCargoCarreira'
  + ', car.Descricao as Cargo'
  + ', car.Vagas_Prev'
  + ', car.Vagas_Ocup'
  + ', cc.Descricao as Carreira'
  + ', dbo.F_QtdVagasOcupadasCargo(car.idCargo'
  + ') as QtdVagas'

  + ' FROM tbCargo as car'

  + ' LEFT JOIN tbCargoCarreira cc on cc.idCargoCarreira = car.idCargoCarreira'

  + ' WHERE (1=1'
  + ' AND Habilitado = 1'
  + ' AND Carreira_PRG = 1';


  pesquisa := pesquisa

  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'car.Descricao','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'idCargo','AND')
  + ')'
  + ')'
  + ' OR '
  + ' Habilitado = 1'
  + ' AND Carreira_PRG = 1';


  pesquisa := pesquisa

  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'cc.Descricao','AND')
  + ')'

  + ' ORDER BY car.Descricao';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;


end;

procedure TfrmUpdateCargos_20211222.Timer1Timer(Sender: TObject);
begin
  if edtPesquisaCargo.Focused then
  lblTotalCargo.Caption := InttoStr(exibirCargos);

  {else if edtLotacao.Focused then
  pesquisar(edtLotacao.Text, 2);}

  Timer1.Enabled := false;

end;

procedure TfrmUpdateCargos_20211222.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  //edtExercicio.SetFocus;

  retornarCargoCarreira;

  lblTotalCargo.Caption := InttoStr(exibirCargos);
  lblTotalVagas.Caption := InttoStr(exibirVagasPorCargo);

  if (gbxPesquisarCargo.Visible) and (edtPesquisaCargo.Visible)
  then edtPesquisaCargo.SetFocus;
end;

procedure TfrmUpdateCargos_20211222.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  qryCargo.Connection := DMConexao.conPessoal;
  qryCargoVaga.Connection := DMConexao.conPessoal;
  edtVagas_Prev.Properties.MaxValue := 200;

  setarOperacaoCargo(3);
  configurarOperacaoCargo;

  setarAbasTabelas(0);

  Setlength(Campos, 4);
  Mens := VarArrayof(['<Carreira>','<Descrição do cargo>','<Código do cargo>','<Número de vagas>']);

end;

procedure TfrmUpdateCargos_20211222.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    case key of
    VK_F12:
    frmLogs.ShowModal;
    VK_F11:
      begin
        gbxPesquisarCargo.Visible := not gbxPesquisarCargo.Visible;
        if gbxPesquisarCargo.Visible then edtPesquisaCargo.SetFocus;
      end
    end;
  end
end;

procedure TfrmUpdateCargos_20211222.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmUpdateCargos_20211222.alterarCargo(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      frmLogs.mmoLog.Lines.Add(SQL.Text);
      ShowMessage(vSQL);
      //ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateCargos_20211222.retornaSQLUpdateCargo: String;
var SQL_Cargo: String;
begin
  SQL_Cargo :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbCargo'
      + ' SET '
      + ' Vagas_Prev = '   + QuotedStr(edtVagas_Prev.Text);

      SQL_Cargo := SQL_Cargo
      + ' WHERE idCargo = ' + QuotedStr(txtIdCargo.Caption);

  Result := SQL_Cargo;

end;

procedure TfrmUpdateCargos_20211222.btnGravarCargoClick(Sender: TObject);
var acao, retorno, Total: String;
begin
  setarCampos;

  if not CamposVazios(Campos, Mens) then
  begin
    if ConfirmaAcao('Confirma a alteração do registro?', 3) = 1
    then
    begin

    case OPERACAO_CARGO of //2
    // Inclusão

    1:
    begin
      ShowMessage('Inclusão');
      if incluirCargo(retornaSQLCreateCargo)
      then
        ShowMessage('Registro incluído com sucesso')
      else
        ShowMessage('Registro não foi incluído');
    end;

    // Edição
    2:
    begin
      if alterarCargo
      (retornaSQLUpdateCargo)
      then
        ShowMessage('Registro alterado com sucesso')
      else
        ShowMessage('Registro não foi alterado');
    end;
    end;


      //pnlRegistro.Visible := true;
      //exibirFeriados;
      //grdRegistros.Visible := true;
      //lblOperacaoCargo.Caption := '';
    end;

    {IncluirLog
    (
    DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
    RetornaData(2),
    'tbFeriadosEAfastamentos',
    txtIdFeriado.Caption,
    'TODOS',
    acao
    + ' ID: ' + txtIdFeriado.Caption
    + ' Data: ' + Copy(edtData.Text, 1,6)
    );

    Total := IntToStr(exibirFeriados);

    pnlEditar.Visible := false;
    pnlRegistro.Visible := true;
    grdRegistros.Visible := true;
    btnNovo.Enabled := true;
    btnAlterar.Enabled := true;
    lblOperacao.Caption := '';
    }

    lblTotalCargo.Caption := InttoStr(exibirCargos);

    setarOperacaoCargo(3);
    configurarOperacaoCargo;

  end



end;

procedure TfrmUpdateCargos_20211222.edtPesquisaCargoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;
end;

procedure TfrmUpdateCargos_20211222.btnEditarCargoClick(Sender: TObject);
begin
  //lblOperacaoCargo.Caption := 'EDITAR REGISTRO';
  //pnlRegistro.Visible := false;

  setarOperacaoCargo(2);
  configurarOperacaoCargo;
  carregarDados;

  setarAbasTabelas(1);
  setarAbasCargo(1);
end;

procedure TfrmUpdateCargos_20211222.btnGravarNovaVagaClick(Sender: TObject);
var i: Integer;
begin
  if ConfirmaAcao('Confirma a inclusão?',3) = 1
  then
  begin
    for i := 1 to edtQtdVagas.Value do
    begin
      ShowMessage(IntToStr(i));

      if incluirVaga      // Tabela de Pessoal
      (retornaSQLInsertVaga)
      then
        ShowMessage('Registro gravado')
      else
        ShowMessage('Registro não foi gravado');

      //pnlEditar.Visible := false;
      //exibirFeriados;
      //grdRegistros.Visible := true;
      lblOperacaoCargo.Caption := '';

    end;
  end
end;

function TfrmUpdateCargos_20211222.incluirVaga(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateCargos_20211222.retornaSQLInsertVaga: String;
var wSQL: String;
begin

  wSQL :=
      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbCargoVaga'
      + '(idCargo, dt_Criacao, Lei)'
      + ' VALUES ('
      + QuotedStr(qryCargo.FieldValues['idCargo'])
      + ', ' + QuotedStr(edtData.Text)
      + ', ' + QuotedStr(edtLei.Text) + ')';

  Result := wSQL;

end;

function TfrmUpdateCargos_20211222.exibirVagasPorCargo: integer;
begin
  with qryCargoVaga do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(retornaSQLVagas(edtVagaCargo.Text));
    Active := True;
  end;

  Result := qryCargoVaga.RecordCount;
end;

function TfrmUpdateCargos_20211222.retornaSQLVagas(valor: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + 'CASE WHEN car.Habilitado = 1 THEN ''SIM'''
  + ' WHEN car.Habilitado = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS Habilitado'


  + ', car.ID, car.idCargo'
  + ', car.Descricao'
  + ', car.Vagas_Prev'
  + ', car.Vagas_Ocup'
  + ', vag.idCargoVaga'
  + ', vag.dt_Criacao'
  + ', vag.Lei'
  + ', dbo.F_QtdVagasOcupadasCargo(car.idCargo'
  + ') as QtdVagas'

  + ' FROM tbCargo as car'
  + ' INNER JOIN tbCargoVaga vag on vag.idCargo = car.idCargo'

  + ' WHERE 1=1';

//sidkdkaik  a duja djdjdj

  pesquisa := pesquisa

  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'car.Descricao','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'car.idCargo','AND')
  + ')'
  + ' ORDER BY car.Descricao';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;

end;

procedure TfrmUpdateCargos_20211222.edtVagaCargoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer2.Enabled := true;
end;

procedure TfrmUpdateCargos_20211222.Timer2Timer(Sender: TObject);
begin
  if edtVagaCargo.Focused then
  lblTotalVagas.Caption := InttoStr(exibirVagasPorCargo);

  {else if edtLotacao.Focused then
  pesquisar(edtLotacao.Text, 2);}

  Timer2.Enabled := false;

end;

procedure TfrmUpdateCargos_20211222.qryCargoCalcFields(DataSet: TDataSet);
begin
//
end;

procedure TfrmUpdateCargos_20211222.dsCargoDataChange(Sender: TObject;
  Field: TField);
var vTotal: Integer;
begin
  if (not qryCargo.FieldByName('Vagas_Prev').IsNull)
  and (qryCargo.FieldValues['Vagas_Prev'] > 0)
  then
  begin
    if not qryCargo.FieldByName('QtdVagas').IsNull
    then
    vTotal := qryCargo.FieldValues['Vagas_Prev'] - qryCargo.FieldValues['QtdVagas']
  end

  else vTotal := 0;
  lblVagasDisponiveis.Caption := IntToStr(vTotal);

  // realizar o teste da ação de total menos o número de vagas disponjjd djuja djdjau
  // djjaujd duj ajdjduja ajdujdkdk
end;

procedure TfrmUpdateCargos_20211222.configurarOperacaoCargo;
begin
  case OPERACAO_CARGO of
    1:      // Novo cargo
    begin
      lblOperacaoCargo.Caption := 'NOVO CARGO';

      //tshCreateUpdateCargo.SetFocus;
      //lkpCargoCarreira.SetFocus;

      btnNovoCargo.Enabled := false;
      btnEditarCargo.Enabled := false;
      btnGravarCargo.Enabled := true;
      btnCancelarCargo.Enabled := true;
      //edtVagas_Prev.Enabled := true;


      pnlUpdateCargo.Visible := true;
      ShowMessage('Visível');

    end;
    2:      // Editar cargo
    begin
      lblOperacaoCargo.Caption := 'EDIÇÃO';

      btnNovoCargo.Enabled := false;
      btnEditarCargo.Enabled := false;
      btnGravarCargo.Enabled := true;
      btnCancelarCargo.Enabled := true;
      //edtVagas_Prev.Enabled := true;

      //pnlUpdateCargo.Visible := true;

      grdCargos.Enabled := false;

      //edtVagas_Prev.SetFocus;

    end;
    3:      // Consultar cargo (read)
    begin
      lblOperacaoCargo.Caption := 'CONSULTA';

      //pnlUpdateCargo.Visible := false;
      grdCargos.Enabled := true;
      pnlBotoesCargo.Visible := false;
      edtVagas_Prev.Enabled := false;
      btnNovoCargo.Enabled := true;
      btnEditarCargo.Enabled := true;
      btnGravarCargo.Enabled := false;
      btnCancelarCargo.Enabled := false;

      //setarAbasTabelas(1);
      setarAbasCargo(3);

    end                 
  end;
end;

function TfrmUpdateCargos_20211222.setarOperacaoCargo(tipo: Integer): boolean;
begin
  OPERACAO_CARGO := tipo;
  Result := true;
end;

procedure TfrmUpdateCargos_20211222.btnCancelarCargoClick(Sender: TObject);
begin
  setarOperacaoCargo(3);
  configurarOperacaoCargo; 
end;

procedure TfrmUpdateCargos_20211222.btnNovoCargoClick(Sender: TObject);
begin
  setarOperacaoCargo(1);
  configurarOperacaoCargo;

  setarAbasTabelas(1);
  setarAbasCargo(1);
end;

function TfrmUpdateCargos_20211222.retornarCargoCarreira: boolean;
var wSQL: String;
begin
  qryCargoCarreira.Active := false;

    try
      qryCargoCarreira.Active := false;

      qryCargoCarreira.SQL.Clear;

      wSQL := 'SELECT * FROM tbCargoCarreira'
      + ' ORDER BY Descricao';

      //ShowMessage(wSQL);

      qryCargoCarreira.SQL.Text := wSQL;
      qryCargoCarreira.Active := true;

     except
       ShowMessage('Não foi possível realizar a pesquisa das carreiras.');
    end;

    if qryCargoCarreira.RecordCount > 0 then Result := true
    else Result := false;
end;

function TfrmUpdateCargos_20211222.carregarDados: boolean;
begin
  with qryCargo do
  begin

    //lbl_IDP.Caption         := FieldValues['idPessoal'];
    //lbl_IDS.Caption         := FieldValues['ID'];

    if FieldByName('Cargo').IsNull
    then edtDescricao.Text := ''
    else edtDescricao.Text := Trim(FieldValues['Cargo']);

    if FieldByName('idCargo').IsNull
    then edtIdCargo.Text := ''
    else edtIdCargo.Text := Trim(FieldValues['idCargo']);

    if FieldByName('Vagas_Prev').IsNull
    then edtVagas_Prev.Text := ''
    else edtVagas_Prev.Text := Trim(FieldValues['Vagas_Prev']);

    if FieldByName('Carreira').IsNull
    then lkpCargoCarreira.Text := ''
    else lkpCargoCarreira.Text := Trim(FieldValues['Carreira']);

    {

  , car.ID, car.idCargo
  , car.Descricao as Cargo
  , idCargoCarreira
  , car.Vagas_Prev
  , car.Vagas_Ocup
  , cc.Descricao as Carreira
  , idCargoCarreira
  , dbo.F_QtdVagasOcupadasCargo(car.idCargo) as QtdVagas


    }
  end;

  //SetarAlteracaoDesfeita;
  //setarCorPadrao;

end;

function TfrmUpdateCargos_20211222.incluirCargo(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      frmLogs.mmoLog.Lines.Add(SQL.Text);
      ShowMessage(vSQL);
      //ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateCargos_20211222.retornaSQLCreateCargo: String;
var SQL_Cargo: String;
begin

  SQL_Cargo :=
      'SET DATEFORMAT dmy'
      + ' INSERT INTO tbCargo'
      + '(idCargo, idCargoCarreira, Descricao, Vagas_Prev,'
      + ' Habilitado, dtCriacao_Alteracao'
      + ')'

      + ' VALUES ('
      + QuotedStr(edtIdCargo.Text)   + ', '
      + QuotedStr(edtDescricao.Text)   + ', '
      + QuotedStr(lkpCargoCarreira.EditValue) + ', '
      + QuotedStr(edtVagas_Prev.Text) + ', '
      + '1'  + ', '
      + RetornaData(1)
      + ')'
      ;

  Result := SQL_Cargo;


end;

procedure TfrmUpdateCargos_20211222.edtDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateCargos_20211222.edtIdCargoExit(Sender: TObject);
begin
  if existeIdCargo(edtIdCargo.Text) then
  ShowMessage('Já existe um cargo com esse código');
end;

function TfrmUpdateCargos_20211222.existeIdCargo(idCargo: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    Active := false;
    SQL.Text := 'SELECT idCargo from tbCargo where idCargo = '
    + QuotedStr(idCargo);
    Active := true;
    case dmPessoal.qryExecSQL.RecordCount of
      0: result := false;
      1: result := true;
    end
  end
end;

function TfrmUpdateCargos_20211222.CamposVazios(Campos,
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

procedure TfrmUpdateCargos_20211222.setarCampos;
begin
  Campos[0] := lkpCargoCarreira.Text;
  Campos[1] := edtDescricao.Text;
  Campos[2] := edtIdCargo.Text;
  Campos[3] := edtVagas_Prev.Text;
end;

procedure TfrmUpdateCargos_20211222.setarAbasTabelas(Operacao: Integer);
begin
  case Operacao of
    0: // nenhuma
    begin
      pgcTabelas.Pages[0].Enabled:=false;
      pgcTabelas.Pages[1].Enabled:=false;
      pgcTabelas.Pages[2].Enabled:=false;
      pgcTabelas.Pages[3].Enabled:=false;

      pgcTabelas.ActivePageIndex := 0;

      //tshCargos.Visible := false;
    end;
    1: // apenas Cargo
    begin
      pgcTabelas.Pages[0].Enabled:=true;
      pgcTabelas.Pages[1].Enabled:=false;
      pgcTabelas.Pages[2].Enabled:=false;
      pgcTabelas.Pages[3].Enabled:=false;

      pgcTabelas.ActivePageIndex := 0;
      pnlBotoesCargo.Visible := true;

      btnGerenciarCargos.Enabled := false;
      btnGerenciarVagas.Enabled := true;
      btnGerenciarNomeacoes.Enabled := true;
    end;
    2: // apenas Vagas
    begin
      pgcTabelas.Pages[0].Enabled:=false;
      pgcTabelas.Pages[1].Enabled:=true;
      pgcTabelas.Pages[2].Enabled:=false;
      pgcTabelas.Pages[3].Enabled:=false;

      pgcTabelas.ActivePageIndex := 1;

      btnGerenciarCargos.Enabled := true;
      btnGerenciarVagas.Enabled := false;
      btnGerenciarNomeacoes.Enabled := true;

    end;
    3: // apenas Nomeaçoes
    begin
      pgcTabelas.Pages[0].Enabled:=false;
      pgcTabelas.Pages[1].Enabled:=false;
      pgcTabelas.Pages[2].Enabled:=true;
      pgcTabelas.Pages[3].Enabled:=true;

      pgcTabelas.ActivePageIndex := 2;

      btnGerenciarCargos.Enabled := true;
      btnGerenciarVagas.Enabled := true;
      btnGerenciarNomeacoes.Enabled := false;

    end;
  end;
end;

procedure TfrmUpdateCargos_20211222.setarAbasCargo(Operacao: Integer);
begin
  case Operacao of
  1:
  begin
    with pgcCRCargo do
    begin
      Pages[0].TabVisible:=false;
      Pages[2].TabVisible:=false;
    end;
  end;
  2:
  begin
    with pgcCRCargo do
    begin
      Pages[0].TabVisible:=true;
      Pages[2].TabVisible:=true;
    end;
  end;
  3:
  begin
    with pgcCRCargo do
    begin
      Pages[1].TabVisible:=false;
      Pages[2].TabVisible:=false;
    end;
  end;
  end;

end;

procedure TfrmUpdateCargos_20211222.btnGerenciarCargosClick(Sender: TObject);
begin
  setarAbasTabelas(1);
end;

procedure TfrmUpdateCargos_20211222.btnGerenciarVagasClick(Sender: TObject);
begin
  setarAbasTabelas(2);
end;

procedure TfrmUpdateCargos_20211222.btnGerenciarNomeacoesClick(Sender: TObject);
begin
  setarAbasTabelas(3);
end;

end.
