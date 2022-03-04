unit ufSelOrgaoExercicioExterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DB, ADODB, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmSelOrgaoExercicioExterno = class(TForm)
    pnlBotoes: TPanel;
    btnSelecionar: TcxButton;
    qryOrgaoExercicioExterno: TADOQuery;
    dsOrgaoExercicioExterno: TDataSource;
    Timer1: TTimer;
    gbxPesquiaOrgaoExterno: TcxGroupBox;
    lblLotacao: TLabel;
    edtDescricaoOrgao: TcxTextEdit;
    grdOrgaoExterno: TcxGrid;
    grdOrgaoExternoDBTableView1: TcxGridDBTableView;
    grdOrgaoExternoDBTableView1Column2: TcxGridDBColumn;
    grdOrgaoExternoDBTableView1Column3: TcxGridDBColumn;
    grdOrgaoExternoLevel1: TcxGridLevel;
    btnNovoOrgao: TcxButton;
    gbxNovoOrgao: TcxGroupBox;
    Label1: TLabel;
    edtDescricao: TcxTextEdit;
    Label2: TLabel;
    edtSigla: TcxTextEdit;
    btnGravar: TcxButton;
    btnCancela: TcxButton;
    btnSair: TcxButton;
    qryNovoOrgao: TADOQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure edtDescricaoOrgaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoOrgaoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisar(parametro: String; campo: Integer): integer;
    function incluirNovoOrgao:boolean;
  end;

var
  frmSelOrgaoExercicioExterno: TfrmSelOrgaoExercicioExterno;

implementation

uses uPesFuncoes, PRG_utils, ufUpdateExercicioExterno;

{$R *.dfm}

function TfrmSelOrgaoExercicioExterno.pesquisar(parametro: String;
  campo: Integer): integer;
var vSQL: String;
begin
  with qryOrgaoExercicioExterno do
  begin
    Active := false;
    SQL.Clear;

    vSQL := 'SELECT idOrgaoExercicioExterno'
    + ', descricao as descricaoOrgao, Sigla'
    + ' FROM tbOrgaoExercicioExterno oee'
    + ' WHERE 1=1'
    + ' AND (' ;

    vSQL := vSQL
    + Gera_SQL(RemoveIndesejadas(parametro),'oee.descricao','AND')
    + ' OR  ' + Gera_SQL(RemoveIndesejadas(parametro),'oee.sigla','AND')
    + ')'

    + ' ORDER BY oee.descricao';

    SQL.Text := vSQL;

    Active := true;
  end;

  Result := qryOrgaoExercicioExterno.RecordCount;

end;

procedure TfrmSelOrgaoExercicioExterno.Timer1Timer(Sender: TObject);
begin
  if edtDescricaoOrgao.Focused then
  pesquisar(edtDescricaoOrgao.Text, 1);

  Timer1.Enabled := false;

end;

procedure TfrmSelOrgaoExercicioExterno.edtDescricaoOrgaoKeyPress(
  Sender: TObject; var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;
end;

procedure TfrmSelOrgaoExercicioExterno.btnCancelaClick(Sender: TObject);
begin
  gbxNovoOrgao.Visible := false;
  gbxPesquiaOrgaoExterno.Visible := true;
  edtDescricaoOrgao.SetFocus;
end;

procedure TfrmSelOrgaoExercicioExterno.btnSelecionarClick(Sender: TObject);
begin
  frmUpdateExercicioExterno.lkpOrgaoEE.Text :=
  qryOrgaoExercicioExterno.FieldValues['descricaoOrgao'];
  btnSairClick(Self);
end;

procedure TfrmSelOrgaoExercicioExterno.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSelOrgaoExercicioExterno.btnNovoOrgaoClick(Sender: TObject);
begin
  gbxNovoOrgao.Visible := true;
  gbxPesquiaOrgaoExterno.Visible := false;
  edtDescricao.SetFocus;
end;

procedure TfrmSelOrgaoExercicioExterno.btnGravarClick(Sender: TObject);
begin
// gravar aqui
  if (edtDescricao.Text = '') or (edtSigla.Text = '') then
  ShowMessage('O nome do orgão e a sigla devem ser preenchidos')
  else
  begin
    if incluirNovoOrgao then
    ShowMessage('Registro inclúido com sucesso');


    pesquisar('', 1);

    //if
    frmUpdateExercicioExterno.retornarOrgaoEE;
    //then ShowMessage('A pesquisa falhou para o campo de órgãos');


    gbxNovoOrgao.Visible := false;
    gbxPesquiaOrgaoExterno.Visible := true;
    edtDescricaoOrgao.SetFocus;
  end

end;

function TfrmSelOrgaoExercicioExterno.incluirNovoOrgao: boolean;
var vSQL: String;
begin
  try
    with qryNovoOrgao do
    begin
      Active := false;
      SQL.Clear;

      vSQL := 'INSERT INTO tbOrgaoExercicioExterno'
      + '(descricao, Sigla, dtCriacaoAlteracao)'
      + ' VALUES (' + QuotedStr(Trim(edtDescricao.Text))
      + ', ' + QuotedStr(Trim(edtSigla.Text))
      + ', GETDATE()'
      + ')';

      SQL.Text := vSQL;

      ExecSQL
    end;

    Result := true;
  except
    Result := false
  end

end;

end.
