unit ufRelAfastamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxCheckBox, cxGroupBox, StdCtrls, cxButtons, ExtCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DB, Grids, DBGrids, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmRelAfastamento = class(TForm)
    pnlBotoes: TPanel;
    Label21: TLabel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    btnPesquisar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    chkProcurador: TcxCheckBox;
    chkServidor: TcxCheckBox;
    lblAno: TLabel;
    lblMes: TLabel;
    lkpAno: TcxLookupComboBox;
    lkpMes: TcxLookupComboBox;
    dsAno: TDataSource;
    dsMes: TDataSource;
    tbvAfastamentos: TcxGridDBTableView;
    lvlAfastamentos: TcxGridLevel;
    grdAfastamentos: TcxGrid;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    tvcTipoDeAfastamento: TcxGridDBColumn;
    tvcDataInicio: TcxGridDBColumn;
    tvcDataTermino: TcxGridDBColumn;
    tvcDias: TcxGridDBColumn;
    dsRelAfastamento: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure chkServidorClick(Sender: TObject);
    procedure chkProcuradorClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lkpAnoPropertiesChange(Sender: TObject);
    procedure lkpMesPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAfastamento: TfrmRelAfastamento;

implementation

uses uPesFuncoes, uDmExibirTabelas, uDMRelatorios, uRptRelAfastamento;

{$R *.dfm}

procedure TfrmRelAfastamento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelAfastamento.FormCreate(Sender: TObject);
begin
  dsRelAfastamento.DataSet := DMRelatorios.sprRelAfastamento;
  tbvAfastamentos.DataController.DataSource := dsRelAfastamento;

  with dmExibirTabelas do
  begin
    dsMes.DataSet := qryMes;
    dsAno.DataSet := qryAno;

    qryAno.Active := true;
    qryMes.Active := true;
    qryDataHora.Active := true;

    lkpAno.ItemIndex := 1;
    lkpMes.ItemIndex := qryDataHora.FieldValues['Mes']-1;
  end;

  WindowState := wsMaximized;
  chkServidor.Checked := true;
  chkProcurador.Checked := true;
end;

procedure TfrmRelAfastamento.btnPesquisarClick(Sender: TObject);
begin
  //edtMesExit(Sender);

  {if edtAno.Text = '' then
  begin
    ShowMessage('Preencha o Ano.');
    edtAno.SetFocus;

    Abort;
  end;//if}

  with DMRelatorios do
  begin
    sprRelAfastamento.Active := false;

    if (chkProcurador.Checked = true) and (chkServidor.Checked = true) then//if1
    begin
      with sprRelAfastamento do
      begin
        Parameters.ParamValues['@mes'] := VarToStr(lkpMes.EditValue); //StrToInt(edtMes.Text);
        Parameters.ParamValues['@ano'] := VarToStr(lkpAno.EditValue); //StrToInt(edtAno.Text);
        Parameters.ParamValues['@tipo'] := 'ambos';
      end;
    end
    else if (chkProcurador.Checked = true) and (chkServidor.Checked = false) then//if2
    begin
      with sprRelAfastamento do
      begin
        Parameters.ParamValues['@mes'] := VarToStr(lkpMes.EditValue); //StrToInt(edtMes.Text);
        Parameters.ParamValues['@ano'] := VarToStr(lkpAno.EditValue); //StrToInt(edtAno.Text);
        Parameters.ParamValues['@tipo'] := 'procurador';
      end;
    end
    else if (chkProcurador.Checked = false) and (chkServidor.Checked = true) then//if3
    begin
      with sprRelAfastamento do
      begin
        Parameters.ParamValues['@mes'] := VarToStr(lkpMes.EditValue); //StrToInt(edtMes.Text);
        Parameters.ParamValues['@ano'] := VarToStr(lkpAno.EditValue); //StrToInt(edtAno.Text);
        Parameters.ParamValues['@tipo'] := 'servidor';
      end;
    end
    else if (chkProcurador.Checked = false) and (chkServidor.Checked = false) then//if4
    begin
      ShowMessage('Selecione o tipo PROCURADOR, SERVIDOR ou ambos.');

      Abort;
    end;//if4

    sprRelAfastamento.ExecProc;
    sprRelAfastamento.Active := true;
  end;
end;

procedure TfrmRelAfastamento.chkServidorClick(Sender: TObject);
begin
  btnPesquisarClick(Nil);
end;

procedure TfrmRelAfastamento.chkProcuradorClick(Sender: TObject);
begin
  btnPesquisarClick(Nil);
end;

procedure TfrmRelAfastamento.btnImprimirClick(Sender: TObject);
begin
  if not Assigned(rptRelAfastamento) then//if5
  begin
    Application.CreateForm(TrptRelAfastamento, rptRelAfastamento);
    rptRelAfastamento.Prepare;
  end;//if5

//    qRptRelAfastamento.PrinterSettings.Copies := nCopias;
//    qRptRelAfastamento.Print;

  rptRelAfastamento.Preview;
end;

procedure TfrmRelAfastamento.lkpAnoPropertiesChange(Sender: TObject);
begin
  DMRelatorios.sprRelAfastamento.Active := false;
end;

procedure TfrmRelAfastamento.lkpMesPropertiesChange(Sender: TObject);
begin
  DMRelatorios.sprRelAfastamento.Active := false;
end;

end.
