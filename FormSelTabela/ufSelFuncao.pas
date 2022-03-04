unit ufSelFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxContainer, Menus, cxButtons, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit;

type
  CriadoPor = (cpfrmServidor, cpfrmCritPesqPessoal, cpNenhum);
  TfrmSelFuncao = class(TForm)
    grpbxResultado: TGroupBox;
    dbgrdFuncao: TDBGrid;
    tmrSelFuncao: TTimer;
    qryFuncao: TADOQuery;
    dsCargo: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    grpbxSelFuncaoBotoes: TcxGroupBox;
    btnOK: TcxButton;
    btnCancela: TcxButton;
    gbxFuncao: TcxGroupBox;
    lblLotacao: TLabel;
    edtFuncao: TcxTextEdit;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure tmrSelFuncaoTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtFuncaoChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdFuncaoDblClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    pesquisa: string;
    FCriadoPor: CriadoPor;
    procedure SetCriadoPor(const Value: CriadoPor);
  public
    { Public declarations }
    property CriadoPor: CriadoPor read FCriadoPor write SetCriadoPor;
  end;

var
  frmSelFuncao: TfrmSelFuncao;

implementation

uses udmPessoal,
//ufServidor, ufCritPesqPessoal,
ufCriterioPesquisaPessoal, uDMConexao;

var
SQL_Param, SQL: string;

{$R *.dfm}

procedure TfrmSelFuncao.tmrSelFuncaoTimer(Sender: TObject);
begin

with dmPessoal do
  begin

  pesquisa :=
' declare @pes as varchar(100) ' +
' set @pes = ' + QuotedStr('%' + Trim(AnsiUpperCase(edtFuncao.Text) + '%')) +
' select tbfuncao.idfuncao, tbfuncao.descricao, tbfuncao.idDFG ' +
' From tbfuncao ' +
' where tbfuncao.Nova_Estrutura = 1 and ((tbfuncao.descricao like @pes) OR (tbfuncao.idfuncao like @pes)) ';



 {
  pesquisa := 'select tbfuncao.idfuncao, tbfuncao.descricao, tbfuncao.idDFG ' +
              'From tbfuncao ' +
              'where tbfuncao.descricao like ' +
              QuotedStr(Trim(AnsiUpperCase(edtFuncao.Text) + '%'));
}
  qryFuncao.Active := False;
  qryFuncao.Sql.Clear;
  qryFuncao.Sql.Add(pesquisa);
  qryFuncao.Active := True;
  end;//with

tmrSelFuncao.Enabled := false;

end;

procedure TfrmSelFuncao.FormActivate(Sender: TObject);
begin

SQL_Param :=  'Select tbfuncao.idfuncao, tbfuncao.Descricao, tbfuncao.idDFG ' +
              'from tbfuncao ' +
              'where tbfuncao.idfuncao = :idfuncao;';

SQL := 'select tbfuncao.idfuncao, tbfuncao.descricao, tbfuncao.idDFG ' +
       'From tbfuncao ';

//with dmPessoal do
//  begin
  case CriadoPor of
  cpfrmServidor, cpfrmCritPesqPessoal:
   begin
   qryFuncao.Active := false;
   qryFuncao.SQL.Clear;
   qryFuncao.SQL.Add(SQL);
   qryFuncao.Active := true;
   end;//cpfrmServidor, cpfrmCritPesqPessoal
  else
   begin
   qryFuncao.Active := false;
   qryFuncao.SQL.Clear;
   qryFuncao.SQL.Add(SQL_Param);
   qryFuncao.Active := true;
   end;//else
  end;//case
//  end;//with

end;

procedure TfrmSelFuncao.edtFuncaoChange(Sender: TObject);
begin

tmrSelFuncao.Enabled := true;

end;

procedure TfrmSelFuncao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_return then btnOKClick(Sender)
else if key = vk_escape then btnCancelaClick(Sender);

end;

procedure TfrmSelFuncao.dbgrdFuncaoDblClick(Sender: TObject);
begin

btnOKClick(Sender);

end;

procedure TfrmSelFuncao.btnOKClick(Sender: TObject);
begin

case CriadoPor of
cpfrmCritPesqPessoal:
begin
  with dmPessoal do
    begin
    //frmCritPesqPessoal.strFuncao :=
    frmCriterioPesquisaPessoal.strFuncao :=
    ' and serv.idfuncao = ' +
    QuotedStr(qryFuncao.FieldValues['idfuncao']);
    end;//with
  end;//cpfrmCritPesqPessoal
end;//case

{cpfrmServidor:
begin
with dmPessoal do
begin
  qryPessoal.FieldValues['idfuncao'] :=
  qryFuncao.FieldValues['idfuncao'];
  frmServidor.txtFuncao.Caption :=
  qryFuncao.FieldValues['descricao'];
  end;//with
  frmServidor.edtidFuncao.SetFocus;
  //faz com que o pr�ximo controle receba o foco
  PostMessage(frmServidor.HANDLE, WM_NEXTDLGCTL, 0, 0);
end;//cpfrmServidor
}

Close;

end;

procedure TfrmSelFuncao.btnCancelaClick(Sender: TObject);
begin
{
with dmPessoal do
  begin
  qryFuncao.Active := false;
  qryFuncao.SQL.Clear;
  qryFuncao.SQL.Add(SQL_Param);
  qryFuncao.Parameters.ParamValues['idfuncao'] :=
  qryPessoal.FieldValues['idfuncao'];
  qryFuncao.Active := true;
  end;//with
}
Close;

end;

procedure TfrmSelFuncao.SetCriadoPor(const Value: CriadoPor);
begin

FCriadoPor := Value;

end;

procedure TfrmSelFuncao.FormCreate(Sender: TObject);
begin
  qryFuncao.Connection := DMConexao.conPessoal;

  if FCriadoPor = null then FCriadoPor := cpNenhum;

end;

end.