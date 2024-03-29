unit ufRelAbonoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, StdCtrls,
  cxButtons, ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmRelAbonoGeral = class(TForm)
    pnlBotoes: TPanel;
    Label21: TLabel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    btnPesquisar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    grdAbonos: TcxGrid;
    tbvAbonos: TcxGridDBTableView;
    lvlAbonos: TcxGridLevel;
    dsAno: TDataSource;
    dsAbonoAnual: TDataSource;
    tbcNome: TcxGridDBColumn;
    tbcIdServidor: TcxGridDBColumn;
    tbcDt_1: TcxGridDBColumn;
    tbcDt_2: TcxGridDBColumn;
    tbcDt_3: TcxGridDBColumn;
    tbcDt_4: TcxGridDBColumn;
    tbcDt_5: TcxGridDBColumn;
    tbcSigla: TcxGridDBColumn;
    tbcExercicio: TcxGridDBColumn;
    Label1: TLabel;
    edtSiglaOrgao: TcxTextEdit;
    lblAno: TLabel;
    lkpAno: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtSiglaOrgaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure exibirRelatorio;
  end;

var
  frmRelAbonoGeral: TfrmRelAbonoGeral;

implementation

uses uDmExibirTabelas, ufPrincipal, uDMRelatorios, uRptAbonoGeral,
  uPesFuncoes;

{$R *.dfm}

procedure TfrmRelAbonoGeral.FormCreate(Sender: TObject);
begin
  dmRelatorios.qryAbonoAnual.Active := False;

  dsAbonoAnual.DataSet := DMRelatorios.qryAbonoAnual;
  tbvAbonos.DataController.DataSource := dsAbonoAnual;

  with dmExibirTabelas do
  begin
    dsAno.DataSet := qryAno;
    qryAno.Active := true;

    lkpAno.ItemIndex := 1;
  end;

  WindowState := wsMaximized;
end;

procedure TfrmRelAbonoGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelAbonoGeral.btnPesquisarClick(Sender: TObject);
var sqlAbono: string;
begin

{if not AnoValido(edtAno.Text) then
   begin
   edtAno.SetFocus;
   edtAno.SelectAll;
   end//if1
else}
   //begin

   sqlAbono := 'SET DATEFORMAT dmy ' +
          ' SELECT tbServidor.idServidor, tbPessoal.Nome,' +
          ' tbAbono.idExercicio, tbabono.dt_1, tbabono.dt_2,' +
          ' tbabono.dt_3, tbabono.dt_4, tbabono.dt_5,' +
          ' tblotacao.sigla, tblotacao.descricao' +
          ' FROM tbAbono' +
          ' LEFT JOIN tbPessoal   ON tbPessoal.idPessoal  = tbAbono.idPessoal'  +
          ' LEFT JOIN tbServidor  ON tbServidor.idPessoal = tbPessoal.idPessoal' +
          ' LEFT JOIN tblotacao   ON tbservidor.idlotacao = tblotacao.idlotacao' +
          ' WHERE ' +
          ' tbservidor.iddesligamento is null' +
          ' AND ((year(dt_1) = :prmAno1) OR (year(dt_2) = :prmAno2)' +
          ' OR (year(dt_3) = :prmAno3) OR (year(dt_4) = :prmAno4)' +
          ' OR (year(dt_5) = :prmAno5))' +
          ' AND tbLotacao.Sigla like ' + QuotedStr('%' + edtSiglaOrgao.Text + '%') +
          ' GROUP BY ' +
          ' tblotacao.sigla,' +
          ' tblotacao.descricao, ' +
          ' tbServidor.idServidor,tbPessoal.Nome,tbAbono.idExercicio,' +
          ' tbabono.dt_1, tbabono.dt_2, tbabono.dt_3, tbabono.dt_4,' +
          ' tbabono.dt_5 ';


   //if dmPessoal.cntPessoal.Connected = false
   //then dmPessoal.cntPessoal.Connected := true;

   //with qrptAbonoGeral do
   //  begin
     //Application.CreateForm(TqrptAbonoGeral, qrptAbonoGeral);

     with DMRelatorios.qryAbonoAnual do
     begin
       Active := false;
       SQL.Clear;
       SQL.Add(sqlAbono);
       Parameters.ParamValues['prmAno1'] := lkpAno.Text;
       Parameters.ParamValues['prmAno2'] := lkpAno.Text;
       Parameters.ParamValues['prmAno3'] := lkpAno.Text;
       Parameters.ParamValues['prmAno4'] := lkpAno.Text;
       Parameters.ParamValues['prmAno5'] := lkpAno.Text;
       Active := true;

//     qrptAbonoGeral.lblReferencia.Caption := edtAno.Text;
//     qrptAbonoGeral.lblEmitidoPor.Caption :=
//     frmPrincipal.fLogin.Matricula + ' - ' + frmPrincipal.fLogin.Nome;
//     frmPrincipal.Usuario.Matricula + ' - ' + frmPrincipal.Usuario.Nome;
//     qrptAbonoGeral.Preview;
//     qrptAbonoGeral.Free;

     end
   //  end;//with
   //end;//else


end;

procedure TfrmRelAbonoGeral.btnImprimirClick(Sender: TObject);
begin
  if not DMRelatorios.qryAbonoAnual.Active
  then btnPesquisarClick(Nil);
  exibirRelatorio;
end;

procedure TfrmRelAbonoGeral.exibirRelatorio;
begin
// exibir e retirar da mem�ria

  Application.CreateForm(TrptAbonoGeral, rptAbonoGeral);
  with rptAbonoGeral do
  begin
    DataSet := DMRelatorios.qryAbonoAnual;

    lblReferencia.Caption := lkpAno.Text;
    Preview;
    Free;

    {TitleBand1.ParentFont := true;
    ColumnHeaderBand1.ParentFont := false;
    DetailBand1.ParentFont := true;
    PageFooterBand1.ParentFont := true;
    }
  end;
end;

procedure TfrmRelAbonoGeral.edtSiglaOrgaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

end.
