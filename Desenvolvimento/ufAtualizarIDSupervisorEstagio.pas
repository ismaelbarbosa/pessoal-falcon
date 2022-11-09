unit ufAtualizarIDSupervisorEstagio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Menus, cxContainer, cxTextEdit, cxMemo, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmAtualizarIDSupervisorEstagio = class(TForm)
    qryEstagiario: TADOQuery;
    grdEstagiarioDBTableView1: TcxGridDBTableView;
    grdEstagiarioLevel1: TcxGridLevel;
    grdEstagiario: TcxGrid;
    dsEstagiario: TDataSource;
    grdEstagiarioDBTableView1Column1: TcxGridDBColumn;
    grdEstagiarioDBTableView1Column2: TcxGridDBColumn;
    grdEstagiarioDBTableView1Column3: TcxGridDBColumn;
    qrySupervidor: TADOQuery;
    cxMemo1: TcxMemo;
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnAtualizar: TcxButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    function retornarEstagiarios: integer;
    function retornarIdSupervisor(Supervisor: String): String;
  end;

var
  frmAtualizarIDSupervisorEstagio: TfrmAtualizarIDSupervisorEstagio;

implementation

uses uDMConexao, DateUtils;

{$R *.dfm}

procedure TfrmAtualizarIDSupervisorEstagio.FormCreate(Sender: TObject);
begin
  qryEstagiario.Connection := DMConexao.conPessoal;
  qrySupervidor.Connection := DMConexao.conPessoal;
end;

function TfrmAtualizarIDSupervisorEstagio.retornarEstagiarios: integer;
begin
  with qryEstagiario do
  begin
    Active := false;
    SQL.Text := 'SELECT pes.nome, ser.idCargo, ser.Supervisor_Estagiario'
    + ' FROM tbPessoal pes'
    + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
    + ' WHERE Supervisor_Estagiario is not NULL AND LTRIM(Supervisor_Estagiario) <> ''''';

    Active := true;
  end;
end;

procedure TfrmAtualizarIDSupervisorEstagio.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;

  retornarEstagiarios;
end;

function TfrmAtualizarIDSupervisorEstagio.retornarIdSupervisor(
  Supervisor: String): String;
begin
  with qrySupervidor do
  begin
    Active := false;
    SQL.Text := 'SELECT idPessoal'
    + ' FROM tbPessoal pes'
    + ' WHERE nome = ' + QuotedStr(Supervisor);

    Active := true;

    if RecordCount = 1 then Result := FieldValues['idPessoal']
    else Result := '';
  end;
end;

procedure TfrmAtualizarIDSupervisorEstagio.btnAtualizarClick(
  Sender: TObject);
var ordem: Integer;
begin
  ordem := 1;
  qryEstagiario.First;
  
  while not qryEstagiario.Eof do
  begin
    ordem := ordem + 1;
    cxMemo1.Lines.Add(IntToStr(ordem)
    + ' - ' + qryEstagiario.FieldValues['Nome']
    + ' - ' + retornarIdSupervisor(qryEstagiario.FieldValues['Supervisor_Estagiario']));

    qryEstagiario.Next;
  end;
end;

procedure TfrmAtualizarIDSupervisorEstagio.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
