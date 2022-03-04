unit ufUpdateTbLotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DB, ADODB, cxControls, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxGroupBox, cxMemo, cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup;

type
  TfrmUpdateTbLotacao = class(TForm)
    qryLotacao: TADOQuery;
    dsLotacao: TDataSource;
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    Timer1: TTimer;
    lblTotal: TLabel;
    Button1: TButton;
    btnNovaFuncao: TcxButton;
    pgcLotacao: TcxPageControl;
    tshRelacao: TcxTabSheet;
    tshCreateLotacao: TcxTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    btnGravar: TcxButton;
    Button2: TButton;
    tshEditarLotacao: TcxTabSheet;
    btnEditarFuncao: TcxButton;
    Panel2: TPanel;
    Label7: TLabel;
    cxButton1: TcxButton;
    Button3: TButton;
    gbxCargo: TcxGroupBox;
    lblLotacao: TLabel;
    edtLotacao: TcxTextEdit;
    grdLotacao: TcxGrid;
    grdLotacaoDBTableView1: TcxGridDBTableView;
    grdLotacaoDBTableView1Column1: TcxGridDBColumn;
    grdLotacaoDBTableView1Column2: TcxGridDBColumn;
    grdLotacaoDBTableView1Column3: TcxGridDBColumn;
    grdLotacaoDBTableView1Column4: TcxGridDBColumn;
    grdLotacaoDBTableView1Column5: TcxGridDBColumn;
    grdLotacaoDBTableView1Column6: TcxGridDBColumn;
    grdLotacaoDBTableView1Column7: TcxGridDBColumn;
    grdLotacaoDBTableView1Column8: TcxGridDBColumn;
    grdLotacaoLevel1: TcxGridLevel;
    Label6: TLabel;
    Label1: TLabel;
    edtDescricao: TcxTextEdit;
    Label3: TLabel;
    edtSigla: TcxTextEdit;
    Label5: TLabel;
    edtSala: TcxTextEdit;
    Label8: TLabel;
    edtRamal: TcxTextEdit;
    lblGrauInstrucao: TLabel;
    qrySuperLotacao: TADOQuery;
    dsSuperLotacao: TDataSource;
    lkpSuperLotacao: TcxLookupComboBox;
    mmoSQL: TcxMemo;
    rgpEstrutura: TcxRadioGroup;
    procedure btnSairClick(Sender: TObject);
    procedure edtLotacaoKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnNovaFuncaoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgpEstruturaClick(Sender: TObject);
  private
    { Private declarations }
  public
    function retornaSQL(valor:String): String;
    function retornaSQLInsertLotacao: String;
    function pesquisar: integer;
    function gerarIdLotacao: String;
    function retornarSuperLotacao: boolean;
    function gravar:boolean;
  end;

var
  frmUpdateTbLotacao: TfrmUpdateTbLotacao;

implementation

uses uDMPessoal, uPesFuncoes, PRG_utils, uDMConexao, ufPrincipal, ufLogs;

{$R *.dfm}

{ TfrmUpdateTbLotacao }

function TfrmUpdateTbLotacao.pesquisar: integer;
begin
  with qryLotacao do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(retornaSQL(edtLotacao.Text));
    Active := True;
  end;

  Result := qryLotacao.RecordCount;

end;

function TfrmUpdateTbLotacao.retornaSQL(valor:String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + 'CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
  + ' WHEN Nova_Estrutura = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS NovaEstrutura'


  + ', lota.ID'
  + ', lota.idLotacao'
  + ', lota.Descricao'
  + ', lota.Sigla'
  + ', lota.SuperLotacao'
  + ', lota.Sala'
  + ', lota.Ramal'
  + ', lota.Nova_Estrutura'

  + ' FROM tbLotacao as lota'

  + ' WHERE 1=1';

  case rgpEstrutura.ItemIndex of
  0: pesquisa := pesquisa + ' and lota.Nova_Estrutura = 1';
  1: pesquisa := pesquisa + ' and lota.Nova_Estrutura = 0';
  end;


  pesquisa := pesquisa
  
  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'Descricao','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'Sigla','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'idLotacao','AND')
  + ')'
  + ' ORDER BY lota.Descricao';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;

end;

procedure TfrmUpdateTbLotacao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateTbLotacao.edtLotacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;
end;

procedure TfrmUpdateTbLotacao.Timer1Timer(Sender: TObject);
var total: Integer;
begin
  if edtLotacao.Focused then
  lblTotal.Caption := InttoStr(pesquisar);

  {else if edtLotacao.Focused then
  pesquisar(edtLotacao.Text, 2);}

  Timer1.Enabled := false;

end;

procedure TfrmUpdateTbLotacao.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
  qryLotacao.Connection := DMConexao.conPessoal;
  qrySuperLotacao.Connection := DMConexao.conPessoal;
end;

function TfrmUpdateTbLotacao.gerarIdLotacao: String;
var VSQL, IDAtual, proximoID: String;
begin
  VSQL := 'SELECT MAX(RIGHT(idLotacao,4)) as maxID FROM tbLotacao WHERE LEFT(idLotacao, 8) = ''00000000''';

  with dmPessoal.qryExecSQL do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(VSQL);
    Active := True;
  end;

  IDAtual := IntToStr(StrToInt(dmPessoal.qryExecSQL.FieldValues['maxID'])+1);

  proximoID := StringOfChar('0', 12-length(IDAtual))+ IDAtual;

  Result := proximoID;

  ShowMessage(Result);

  //ShowMessage(inttostr(length(IntToStr((StrToInt(Result)+1)))));

  //ShowMessage(StringOfChar('0', 12-length(Result)));

end;

procedure TfrmUpdateTbLotacao.Button1Click(Sender: TObject);
begin
  ShowMessage(gerarIdLotacao);
end;

procedure TfrmUpdateTbLotacao.btnNovaFuncaoClick(Sender: TObject);
begin
  tshRelacao.Enabled := false;
  tshEditarLotacao.Enabled := false;
  pgcLotacao.ActivePageIndex := 1;
end;

function TfrmUpdateTbLotacao.retornarSuperLotacao: boolean;
begin
  try
    qrySuperLotacao.Active := false;
    qrySuperLotacao.SQL.Text :=

    'SELECT DISTINCT superlotacao FROM tbLotacao where superLotacao IS NOT NULL ORDER BY superlotacao';

    qrySuperLotacao.Active := true;

   except
     Result := false;
  end;

  if qrySuperLotacao.RecordCount > 0 then Result := true
  else Result := false;

end;

procedure TfrmUpdateTbLotacao.FormActivate(Sender: TObject);
begin
  if not retornarSuperLotacao
  then ShowMessage('A pesquisa falhou para o campo de SuperLotacao');

  lblTotal.Caption := InttoStr(pesquisar);
  
end;

procedure TfrmUpdateTbLotacao.btnGravarClick(Sender: TObject);
var wMens: String;
begin
  wMens := 'Atenção! Confirma a inclusão desta lotação?';

  if ConfirmaAcao(wMens,3) = 1 then
  begin

    if gravar then
    ShowMessage('Registro gravado com sucesso');

    // exibir lotações
  end;

end;

function TfrmUpdateTbLotacao.retornaSQLInsertLotacao: String;
begin
  Result :=
  'SET DATEFORMAT dmy'
  + ' INSERT INTO'
  + ' tbLotacao'
  + '(idLotacao, Descricao, Sigla, SuperLotacao, Sala, Ramal, Nova_Estrutura, Tramite, dtCriacao_Alteracao)'
  + ' VALUES ('
  + QuotedStr(gerarIdLotacao)
  + ', ' + QuotedStr(edtDescricao.Text)
  + ', ' + QuotedStr(edtSigla.Text)
  + ', ' + QuotedStr(lkpSuperLotacao.Text)
  + ', ' + QuotedStr(edtSala.Text)
  + ', ' + QuotedStr(edtRamal.Text)
  + ', ' + QuotedStr('1')
  + ', ' + QuotedStr('1')
  + ', ' + 'GETDATE()'
  + ')';

end;

function TfrmUpdateTbLotacao.gravar: boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text :=  retornaSQLInsertLotacao;

      mmoSQL.Lines.Add(SQL.Text);

      frmLogs.mmoLog.Lines.Add(SQL.Text);

      //ExecSQL;

    end;
    Result := true
  except
    Result := false;
  end;
end;

procedure TfrmUpdateTbLotacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //tshSQL.TabVisible := not tshSQL.TabVisible;
    //gbxSQL.Visible := not gbxSQL.Visible;

    //frmLogs.mmoLog.Visible := not frmLogs.mmoLog.Visible;

    frmLogs.ShowModal;
  end

end;

procedure TfrmUpdateTbLotacao.rgpEstruturaClick(Sender: TObject);
begin
  lblTotal.Caption := InttoStr(pesquisar);
end;

end.
