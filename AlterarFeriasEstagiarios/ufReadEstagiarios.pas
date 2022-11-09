unit ufReadEstagiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  Menus, DBCtrls, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxTextEdit;

type
  TfrmReadEstagiarios = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnEditarMatricula: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    lblNumeroRegistros: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    edtPesquisa: TcxTextEdit;
    dsPesquisa: TDataSource;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEditarMatriculaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    //
  end;

var
  frmReadEstagiarios: TfrmReadEstagiarios;

implementation

uses uDMConexao, ufLogs, uPesFuncoes, PRG_utils, ufPrincipal,
  ufUpdateMatriculaEstagiario, ufCreateServidor, uDMEstagiario;

{$R *.dfm}

procedure TfrmReadEstagiarios.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
  WindowState := wsMaximized;
  Timer1.Enabled := false;

  dsPesquisa.DataSet := DMEstagiario.qryPesquisa;
end;


procedure TfrmReadEstagiarios.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  if Key = VK_ESCAPE then btnSairClick(Sender)
//  else if Key = VK_RETURN then btnPesquisarClick(Sender);

  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //mmoSQL.Visible := not mmoSQL.Visible;
    frmLogs.ShowModal;
  end

end;

procedure TfrmReadEstagiarios.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReadEstagiarios.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var condicao: String;
begin
  condicao := ' AND '
  + '('
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
  + ' OR '
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
  + ')';

  case Key of
    //VK_RETURN: lblNumeroRegistros.Caption := IntToStr(pesquisarEstagiarios(condicao));
    VK_RETURN: lblNumeroRegistros.Caption := IntToStr(DMEstagiario.pesquisarEstagiarios(condicao));
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end
end;

procedure TfrmReadEstagiarios.btnEditarMatriculaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateMatriculaEstagiario, frmUpdateMatriculaEstagiario);
  frmUpdateMatriculaEstagiario.ShowModal;
  frmUpdateMatriculaEstagiario.Release;
  frmUpdateMatriculaEstagiario := nil;
end;

procedure TfrmReadEstagiarios.FormActivate(Sender: TObject);
begin
  edtPesquisa.SetFocus;
end;

procedure TfrmReadEstagiarios.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  btnEditarMatriculaClick(Nil);
end;

procedure TfrmReadEstagiarios.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
  btnEditarMatriculaClick(Nil);
end;

procedure TfrmReadEstagiarios.Timer1Timer(Sender: TObject);
var
  condicao: string;
  Resultado: Integer;
begin
  condicao := ' AND ' +
  Gera_SQL(RemoveIndesejadas('EST'), 'serv.idCargo')
  +  ' AND (' + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
  +  ' OR ' + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
  +  ')'

  ;
  lblNumeroRegistros.Caption := IntToStr(DMEstagiario.pesquisarEstagiarios(condicao));
  Timer1.Enabled := false;
end;

procedure TfrmReadEstagiarios.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmReadEstagiarios.edtPesquisaPropertiesChange(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

end.
