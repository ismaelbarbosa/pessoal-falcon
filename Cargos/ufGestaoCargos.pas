unit ufGestaoCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxLabel, cxDBLabel, DBCtrls, cxPC, ADODB;

type
  TfrmGestaoCargos = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnNovo: TcxButton;
    btnEditar: TcxButton;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    grdCargos: TcxGrid;
    grdCargosDBTableView1: TcxGridDBTableView;
    grdCargosDBTableView1Column1: TcxGridDBColumn;
    grdCargosDBTableView1Column2: TcxGridDBColumn;
    grdCargosDBTableView1Column3: TcxGridDBColumn;
    grdCargosDBTableView1Column4: TcxGridDBColumn;
    grdCargosDBTableView1Column5: TcxGridDBColumn;
    grdCargosLevel1: TcxGridLevel;
    qryCargo: TADOQuery;
    dsCargo: TDataSource;
    lblOperacao: TLabel;
    gbxPesquisarCargo: TcxGroupBox;
    lblLotacao: TLabel;
    lblTotalCargo: TLabel;
    edtPesquisaCargo: TcxTextEdit;
    pnlReadCargo: TPanel;
    Label14: TLabel;
    DBText1: TDBText;
    Label18: TLabel;
    txtCarreira: TDBText;
    txtCargo: TDBText;
    txtIdCargo: TDBText;
    txtVagas_Prev: TDBText;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cxDBLabel2: TcxDBLabel;
    pnlUpdateCargo: TPanel;
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
    Timer1: TTimer;
    qryCargoCarreira: TADOQuery;
    dsCargoCarreira: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaCargoKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    OPERACAO: Integer;
    Mens: Array of String;
    Campos: Array of String;
  public
    procedure setarCampos;
    function CamposVazios(Campos: Array of String;
         Mensagens: Array of String): Boolean;

    function exibirCargos: integer;
    function exibirCargoCarreira: boolean;

    function retornaSQLCargos(valor:String): String;
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;

    function incluirCargo(vSQL: String): boolean;
    function alterarCargo(vSQL: String): boolean;
    function retornaSQLCreateCargo: String;
    function retornaSQLUpdateCargo: String;

  end;

var
  frmGestaoCargos: TfrmGestaoCargos;

implementation

uses uDMConexao, PRG_utils, ufLogs, uPesFuncoes, uDMPessoal;

{$R *.dfm}

procedure TfrmGestaoCargos.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmGestaoCargos.exibirCargos: integer;
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

procedure TfrmGestaoCargos.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  qryCargo.Connection := DMConexao.conPessoal;
  edtVagas_Prev.Properties.MaxValue := 200;

  setarOperacao(3);
  configurarOperacao;

  Setlength(Campos, 4);
  Mens := VarArrayof(['<Carreira>','<Descrição do cargo>','<Código do cargo>','<Número de vagas>']);
end;

function TfrmGestaoCargos.retornaSQLCargos(valor: String): String;
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

procedure TfrmGestaoCargos.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  exibirCargoCarreira;

  lblTotalCargo.Caption := InttoStr(exibirCargos);

  if (gbxPesquisarCargo.Visible) and (edtPesquisaCargo.Visible)
  then edtPesquisaCargo.SetFocus;

end;

procedure TfrmGestaoCargos.btnNovoClick(Sender: TObject);
begin
  setarOperacao(1);
  configurarOperacao;
end;

procedure TfrmGestaoCargos.configurarOperacao;
begin
  case OPERACAO of
    1:      // Novo cargo
    begin
      lblOperacao.Caption := 'NOVO CARGO';

      pnlReadCargo.Visible := false;
      pnlUpdateCargo.Visible := true;
      gbxPesquisarCargo.Visible := false;

      btnNovo.Enabled := false;
      btnEditar.Enabled := false;
      btnGravar.Enabled := true;
      btnCancelar.Enabled := true;
      edtVagas_Prev.Enabled := true;

      edtDescricao.SetFocus;
    end;
    2:      // Editar cargo
    begin
      lblOperacao.Caption := 'EDIÇÃO';

      pnlReadCargo.Visible := false;
      pnlUpdateCargo.Visible := true;
      gbxPesquisarCargo.Visible := false;

      btnNovo.Enabled := false;
      btnEditar.Enabled := false;
      btnGravar.Enabled := true;
      btnCancelar.Enabled := true;
      edtVagas_Prev.Enabled := true;

      grdCargos.Enabled := false;

      //edtVagas_Prev.SetFocus;

    end;
    3:      // Consultar cargo (read)
    begin
      lblOperacao.Caption := 'CONSULTA';

      pnlReadCargo.Visible := true;
      pnlUpdateCargo.Visible := false;
      gbxPesquisarCargo.Visible := true;

      pnlUpdateCargo.Visible := false;
      grdCargos.Enabled := true;

      edtVagas_Prev.Enabled := false;
      btnNovo.Enabled := true;
      btnEditar.Enabled := true;
      btnGravar.Enabled := false;
      btnCancelar.Enabled := false;

      //edtVagas_Prev.SetFocus;

    end
  end;

end;

function TfrmGestaoCargos.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmGestaoCargos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmGestaoCargos.edtPesquisaCargoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;
end;

procedure TfrmGestaoCargos.Timer1Timer(Sender: TObject);
begin
  if edtPesquisaCargo.Focused then
  lblTotalCargo.Caption := InttoStr(exibirCargos);

  Timer1.Enabled := false;
end;

procedure TfrmGestaoCargos.btnGravarClick(Sender: TObject);
var acao, retorno, Total: String;
begin
  setarCampos;

  if not CamposVazios(Campos, Mens) then
  begin
    if ConfirmaAcao('Confirma a alteração do registro?', 3) = 1
    then
    begin
      case OPERACAO of
        1:  // Inclusão
        begin
          ShowMessage('Inclusão');
          if incluirCargo(retornaSQLCreateCargo)
          then
            ShowMessage('Registro incluído com sucesso')
          else
            ShowMessage('Registro não foi incluído');
        end;
        2:  // Edição
        begin
          if alterarCargo
          (retornaSQLUpdateCargo)
          then
            ShowMessage('Registro alterado com sucesso')
          else
            ShowMessage('Registro não foi alterado');
        end;
      end;
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

    setarOperacao(3);
    configurarOperacao;

  end

end;

procedure TfrmGestaoCargos.setarCampos;
begin
  Campos[0] := lkpCargoCarreira.Text;
  Campos[1] := edtDescricao.Text;
  Campos[2] := edtIdCargo.Text;
  Campos[3] := edtVagas_Prev.Text;
end;

function TfrmGestaoCargos.CamposVazios(Campos,
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

function TfrmGestaoCargos.alterarCargo(vSQL: String): boolean;
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

function TfrmGestaoCargos.incluirCargo(vSQL: String): boolean;
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

function TfrmGestaoCargos.retornaSQLCreateCargo: String;
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

function TfrmGestaoCargos.retornaSQLUpdateCargo: String;
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

function TfrmGestaoCargos.exibirCargoCarreira: boolean;
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

end.
