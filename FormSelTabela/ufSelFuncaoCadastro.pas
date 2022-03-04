unit ufSelFuncaoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, StdCtrls, cxButtons, cxGroupBox,
  ExtCtrls;

type
  TfrmSelFuncaoCadastro = class(TForm)
    qryFuncao: TADOQuery;
    dsComissionados: TDataSource;
    gbxFuncao: TcxGroupBox;
    lblLotacao: TLabel;
    edtFuncao: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Timer1: TTimer;
    Label1: TLabel;
    edtLotacao: TcxTextEdit;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    pnlBotoes: TPanel;
    btnSelecionar: TcxButton;
    btnCancela: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure edtFuncaoKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure edtFuncaoEnter(Sender: TObject);
    procedure edtLotacaoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisar(parametro: String; campo: Integer): integer;
  end;

var
  frmSelFuncaoCadastro: TfrmSelFuncaoCadastro;

implementation

uses uDMConexao, ufUpdateFuncao, uPesFuncoes, PRG_utils;

{$R *.dfm}

{ TfrmSelFuncaoCadastro }

function TfrmSelFuncaoCadastro.pesquisar(parametro: String; campo: Integer): integer;
var vSQL: String;
begin
  with qryFuncao do
  begin
    Active := false;
    SQL.Clear;

    vSQL := 'SELECT fun.descricao as Funcao, idDFG'
    + ', lot.descricao as Lotacao, lot.Sigla, pes.Nome'
    + ' FROM tbFuncao fun'
    + ' LEFT JOIN tbLotacao lot on lot.idLotacao = fun.idLotacao'
    + ' LEFT JOIN tbServidor ser on ser.idFuncao = fun.idFuncao'
    + ' LEFT JOIN tbPessoal pes on pes.idPessoal = ser.idPessoal'
    + ' WHERE fun.Nova_Estrutura = 1'

    + ' AND (';

    if campo = 1
    then
    vSQL := vSQL
    + Gera_SQL(RemoveIndesejadas(parametro),'fun.descricao','AND')
//    + ' OR  ' + Gera_SQL(RemoveIndesejadas(parametro),'lot.descricao','AND')
    + ')'

    else if campo = 2
    then
    vSQL := vSQL
    + Gera_SQL(RemoveIndesejadas(parametro),'lot.descricao','AND')
    + ' OR  ' + Gera_SQL(RemoveIndesejadas(parametro),'lot.Sigla','AND')
    + ')';

    vSQL := vSQL
    + ' ORDER BY lot.idLotacao, fun.descricao';

    SQL.Text := vSQL;
    
    Active := true;
  end;

  Result := qryFuncao.RecordCount;

end;

procedure TfrmSelFuncaoCadastro.FormActivate(Sender: TObject);
var total: Integer;
begin
  total := pesquisar('',1);
end;

procedure TfrmSelFuncaoCadastro.edtFuncaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;
end;

procedure TfrmSelFuncaoCadastro.Timer1Timer(Sender: TObject);
begin
  if edtFuncao.Focused then
  pesquisar(edtFuncao.Text, 1)

  else if edtLotacao.Focused then
  pesquisar(edtLotacao.Text, 2);

  Timer1.Enabled := false;
end;

procedure TfrmSelFuncaoCadastro.edtFuncaoEnter(Sender: TObject);
begin
  edtLotacao.Clear;
end;

procedure TfrmSelFuncaoCadastro.edtLotacaoEnter(Sender: TObject);
begin
  edtFuncao.Clear;
end;

procedure TfrmSelFuncaoCadastro.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmSelFuncaoCadastro.btnSelecionarClick(Sender: TObject);
begin
  frmUpdateFuncao.lkpFuncao.Text := qryFuncao.FieldValues['Funcao'];
  btnCancelaClick(Self);
end;

procedure TfrmSelFuncaoCadastro.btnCancelaClick(Sender: TObject);
begin
  Close;
end;

end.
