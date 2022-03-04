unit ufSelLotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ADODB, Menus, cxButtons;

type
  CriadoPor = (cpfrmServidor, cpfrmCritPesqPessoal, cpfrmUtente,
               cpfrmCritPesqUtente, cpNenhum);
  TfrmSelLotacao = class(TForm)
    tmrSelLotacao: TTimer;
    gbxLotacao: TcxGroupBox;
    grpbxSelLotacaoBotoes: TcxGroupBox;
    lblLotacao: TLabel;
    edtLotacao: TcxTextEdit;
    lblDataLotacao: TLabel;
    dtEdtDataLotacao: TcxDateEdit;
    qryLotacao: TADOQuery;
    dsLotacao: TDataSource;
    btnOK: TcxButton;
    btnCancela: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure tmrSelLotacaoTimer(Sender: TObject);
    procedure edtLotacaoChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure dbgrdLotacaoDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
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
  frmSelLotacao: TfrmSelLotacao;

implementation

uses udmPessoal
{
, ufServidor, ufCritPesqPessoal, ufUtente, ufCritPesqUtente,
  DateUtils,
}
  , ufCriterioPesquisaPessoal,
  ufPrincipal, uDMConexao;

var
SQL_Param, SQL: string;

{$R *.dfm}

procedure TfrmSelLotacao.tmrSelLotacaoTimer(Sender: TObject);
begin

//with dmPessoal do
//  begin
  pesquisa := ' Select tblotacao.idlotacao, tblotacao.sigla, ' +
             'tblotacao.descricao, tbLotacao.Sala, tbLotacao.Ramal ' +
             'from tblotacao ' +
             'where tblotacao.nova_estrutura = ''1'' and ' +
             'tblotacao.descricao like ' +
             QuotedStr(Trim(AnsiUpperCase(edtLotacao.Text) + '%')) +
             'Order by tbLotacao.Descricao';
  qryLotacao.Active := false;
  qryLotacao.SQL.Clear;
  qryLotacao.SQL.Add(pesquisa);
  qryLotacao.Active := true;
//end;//with

tmrSelLotacao.Enabled := false;

end;

procedure TfrmSelLotacao.edtLotacaoChange(Sender: TObject);
begin

  tmrSelLotacao.Enabled := true;

end;

procedure TfrmSelLotacao.btnOKClick(Sender: TObject);
begin
  Case CriadoPor of
  cpfrmCritPesqPessoal:
  begin
    with dmPessoal do
      begin
        with frmCriterioPesquisaPessoal do
        begin
          strLotacao :=
          //frmCritPesqPessoal.strLotacao :=
          ' and serv.idlotacao = ' +
          QuotedStr(qryLotacao.FieldValues['idlotacao']);

          edtLotacao.Text := frmSelLotacao.qryLotacao.FieldValues['descricao'];
          ShowMessage(frmSelLotacao.qryLotacao.FieldValues['descricao']);

        end;

      end;//with2
  end;//cpfrmCritPesqPessoal

  {
  cpfrmServidor:
  begin
    with dmPessoal do
      begin
      edtLotacao.SetFocus;

      if (dtEdtDataLotacao.Visible = true) then
      begin
        if (dtEdtDataLotacao.EditValue <> Null)  then
        begin
          frmServidor.fDataLotacao := dtEdtDataLotacao.EditValue;
        end
        else frmServidor.fDataLotacao := Today;
      end;


      frmServidor.edtSala.Text := qryLotacao.FieldValues['Sala'];
      frmServidor.edtRamal.Text := qryLotacao.FieldValues['Ramal'];
      qryPessoal.FieldValues['idLotacao'] :=
      qryLotacao.FieldValues['idLotacao'];
      frmServidor.txtLotacao.Caption :=
      qryLotacao.FieldValues['Descricao'];
    //faz com que o próximo controle receba o foco
      frmServidor.edtidLotacao.SetFocus;
      PostMessage(frmServidor.HANDLE, WM_NEXTDLGCTL, 0, 0);
  end;//with1
  end;//cpfrmServidor

  cpfrmUtente:
  begin
    with dmPessoal do
      begin
      qryPessoalUtente.FieldValues['idLotacao'] :=
      qryLotacao.FieldValues['idLotacao'];
      frmUtente.txtLotacao.Caption :=
      qryLotacao.FieldValues['Descricao'];
      end;//with3
    end;//cpfrmUtente

  cpfrmCritPesqUtente:
  begin
    with dmPessoal do
     begin
     frmCritPesqUtente.strLotacao :=
     ' and ut.idlotacao = ' +
     QuotedStr(qryLotacao.FieldValues['idlotacao']);
     end;//with4
    end;//cpfrmCritPesqUtente

  }
  
  end;//case


  
  Close;

end;

procedure TfrmSelLotacao.btnCancelaClick(Sender: TObject);
begin
{
case CriadoPor of
 cpfrmServidor:
 begin
 with dmPessoal do
   begin
   qryLotacao.Active := false;
   qryLotacao.SQL.Clear;
   qryLotacao.SQL.Add(SQL_Param);
   qryLotacao.Parameters.ParamValues['idlotacao'] :=
   qryPessoal.FieldValues['idlotacao'];
   qryLotacao.Active := true;
   end;//with
 end;//cpfrmServidor
 cpfrmUtente:
 begin
 with dmPessoal do
   begin
   qryLotacao.Active := false;
   qryLotacao.SQL.Clear;
   qryLotacao.SQL.Add(SQL_Param);
   qryLotacao.Parameters.ParamValues['idlotacao'] :=
   qryPessoalUtente.FieldValues['idlotacao'];
   qryLotacao.Active := true;
   end;//with
 end;//cpfrmUtente
 cpfrmCritPesqUtente, cpfrmCritPesqPessoal:
 begin
 with dmPessoal do
   begin
   qryLotacao.Active := false;
   qryLotacao.SQL.Clear;
   qryLotacao.SQL.Add(SQL_Param);
   qryLotacao.Parameters.ParamValues['idlotacao'] := '';
   qryLotacao.Active := true;
   end;//with
 end;//cpfrmServidor

end;//case
}

Close;

end;

procedure TfrmSelLotacao.dbgrdLotacaoDblClick(Sender: TObject);
begin

btnOKClick(Sender);

end;

procedure TfrmSelLotacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then btnOKClick(Sender)
  else if key = vk_escape then btnCancelaClick(Sender);
end;

procedure TfrmSelLotacao.FormCreate(Sender: TObject);
begin
  qryLotacao.Connection := DMConexao.conPessoal;

  if CriadoPor = null then CriadoPor := cpNenhum;

  SQL_Param :=  'SELECT tblotacao.idlotacao, tblotacao.Descricao, '
             +  ' tbLotacao.Sala, tbLotacao.Ramal, '
             +  'tblotacao.sigla '
             +  'FROM tblotacao '
             +  'WHERE tblotacao.idlotacao = :idlotacao;';

  SQL := 'SELECT tblotacao.idlotacao, tblotacao.descricao, tblotacao.sigla, tbLotacao.Sala, tbLotacao.Ramal ' +
         'FROM tblotacao';

    case CriadoPor of
    cpfrmServidor, cpfrmUtente, cpfrmCritPesqPessoal:
     begin
       qrylotacao.Active := false;
       qrylotacao.SQL.Clear;
       qrylotacao.SQL.Add(SQL);
       qrylotacao.Active := true;
     end;//cpfrmServidor, cpfrmUtente, cpfrmCritPesqPessoal
    else
     begin
       qryLotacao.Active := false;
       qryLotacao.SQL.Clear;
       qryLotacao.SQL.Add(SQL_Param);
       qryLotacao.Active := true;
     end;
    end; 
end;

procedure TfrmSelLotacao.SetCriadoPor(const Value: CriadoPor);
begin

FCriadoPor := Value;

end;

procedure TfrmSelLotacao.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  tmrSelLotacao.Enabled := true;
end;

procedure TfrmSelLotacao.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  btnOKClick(Sender);
end;

end.
