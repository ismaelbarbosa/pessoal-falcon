unit ufSelCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DB, ADODB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxButtons, cxGroupBox, cxTextEdit;

type
  CriadoPor = (cpfrmServidor, cpfrmUtente, cpfrmCritPesqPessoal, cpNenhum);
  TfrmSelCargo = class(TForm)
    tmrSelCargo: TTimer;
    qryCargo: TADOQuery;
    dsCargo: TDataSource;
    grpbxSelCargoBotoes: TcxGroupBox;
    btnOK: TcxButton;
    btnCancela: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    gbxCargo: TcxGroupBox;
    lblLotacao: TLabel;
    edtCargo: TcxTextEdit;
    procedure tmrSelCargoTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtCargoChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdCargoDblClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCriadoPor: CriadoPor;
    pesquisa: string;
    procedure SetCriadoPor(const Value: CriadoPor);
  public
    { Public declarations }
    property CriadoPor: CriadoPor read FCriadoPor write SetCriadoPor;
  end;

var
  frmSelCargo: TfrmSelCargo;

implementation

uses udmPessoal,
//ufServidor, ufCritPesqPessoal,
ufCriterioPesquisaPessoal, uDMConexao;

var
SQL_Param, SQL: string;

{$R *.dfm}

{ TfrmSelCargo }

procedure TfrmSelCargo.SetCriadoPor(const Value: CriadoPor);
begin

FCriadoPor := Value;

end;

procedure TfrmSelCargo.tmrSelCargoTimer(Sender: TObject);
begin

with dmPessoal do
  begin
  case frmSelCargo.CriadoPor of
    cpfrmServidor, cpfrmCritPesqPessoal: begin
       pesquisa := 'select tbcargo.idcargo, tbcargo.descricao, tbcargo.sigla ' +
                   'From tbcargo ' +
                   'Where tbcargo.Habilitado = 1 and tbcargo.descricao like ' +
                   QuotedStr(Trim(AnsiUpperCase(edtCargo.Text) + '%'));
       end;//cpfrmServidor
    end;//case
  qryCargo.Active := False;
  qryCargo.Sql.Clear;
  qryCargo.Sql.Add(pesquisa);
  qryCargo.Active := True;
  end;//with

tmrSelCargo.Enabled := false;

end;

procedure TfrmSelCargo.FormActivate(Sender: TObject);
begin

SQL_Param :=  'Select tbcargo.idCargo, tbcargo.Descricao ' +
              'from tbCargo ' +
              'where tbcargo.Habilitado = 1 and tbcargo.idCargo = :idCargo;';

SQL := 'select tbcargo.idcargo, tbcargo.descricao ' +
       'From tbcargo where tbcargo.Habilitado = 1 ';

with dmPessoal do
  begin
  case CriadoPor of
  cpfrmServidor, cpfrmUtente, cpfrmCritPesqPessoal:
   begin
   qryCargo.Active := false;
   qryCargo.SQL.Clear;
   qryCargo.SQL.Add(SQL);
   qryCargo.Active := true;
   end;//cpfrmServidor, cpfrmUtente, cpfrmCritPesqPessoal
  else
   begin
   qryCargo.Active := false;
   qryCargo.SQL.Clear;
   qryCargo.SQL.Add(SQL_Param);
   qryCargo.Active := true;
   end;//else
  end;//case
  end;//with

end;

procedure TfrmSelCargo.edtCargoChange(Sender: TObject);
begin

tmrSelCargo.Enabled := true;

end;

procedure TfrmSelCargo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_return then btnOKClick(Sender)
else if key = vk_escape then btnCancelaClick(Sender);

end;

procedure TfrmSelCargo.dbgrdCargoDblClick(Sender: TObject);
begin

btnOKClick(Sender);

end;

procedure TfrmSelCargo.btnOKClick(Sender: TObject);
begin

  //verifica qual formul�rio que criou o frmSelCargo
  case frmSelCargo.CriadoPor of
  cpfrmCritPesqPessoal:
  begin
  //with dmPessoal do
  //begin
    //frmCritPesqPessoal.strCargo :=
    frmCriterioPesquisaPessoal.strCargo :=
    ' and serv.idcargo = ' +
    QuotedStr(qryCargo.FieldValues['idcargo']);

    frmCriterioPesquisaPessoal.edtCargo.Text := qryCargo.FieldValues['descricao'];
    end;//with
  //end;//cpfrmCritPesqPessoal

  {
  cpfrmServidor:
  begin
    with dmPessoal do
    begin
    qryPessoal.FieldValues['idCargo'] :=
    qryCargo.FieldValues['idcargo'];
    end;//with
    frmServidor.edtidCargo.SetFocus;
    //faz com que o pr�ximo controle receba o foco
    PostMessage(frmServidor.HANDLE, WM_NEXTDLGCTL, 0, 0);
  end;//cpfrmServidor
  }

end;//case

Close;

end;

procedure TfrmSelCargo.btnCancelaClick(Sender: TObject);
begin

{with dmPessoal do
  begin
  qryCargo.Active := false;
  qryCargo.SQL.Clear;
  qryCargo.SQL.Add(SQL_Param);
  qryCargo.Parameters.ParamValues['idcargo'] :=
  qryPessoal.FieldValues['idcargo'];
  qryCargo.Active := true;
  end;//with
}

Close;

end;

procedure TfrmSelCargo.FormCreate(Sender: TObject);
begin
  qryCargo.Connection := DMConexao.conPessoal;

  if FCriadoPor = null then FCriadoPor := cpNenhum;

end;

end.
