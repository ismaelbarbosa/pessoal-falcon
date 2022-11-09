unit ufRelAbonoMensal;

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
  TfrmRelAbonoMensal = class(TForm)
    pnlBotoes: TPanel;
    Label21: TLabel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    btnPesquisar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    lblAno: TLabel;
    lblMes: TLabel;
    lkpAno: TcxLookupComboBox;
    lkpMes: TcxLookupComboBox;
    dsAno: TDataSource;
    dsMes: TDataSource;
    dsAbonoAnual: TDataSource;
    grdAbonos: TcxGrid;
    tbvAbonos: TcxGridDBTableView;
    tbcIdServidor: TcxGridDBColumn;
    tbcNome: TcxGridDBColumn;
    tbcExercicio: TcxGridDBColumn;
    tbcDt_1: TcxGridDBColumn;
    tbcDt_2: TcxGridDBColumn;
    tbcDt_3: TcxGridDBColumn;
    tbcDt_4: TcxGridDBColumn;
    tbcDt_5: TcxGridDBColumn;
    tbcSigla: TcxGridDBColumn;
    lvlAbonos: TcxGridLevel;
    Label1: TLabel;
    edtSiglaOrgao: TcxTextEdit;
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
  frmRelAbonoMensal: TfrmRelAbonoMensal;

implementation

uses uDmExibirTabelas, uDMRelatorios, ufPrincipal, uRptAbonoMensal, ufLogs,
  uPesFuncoes;

{$R *.dfm}

procedure TfrmRelAbonoMensal.FormCreate(Sender: TObject);
begin
  dmRelatorios.qryAbonoAnual.Active := False;
  
  dsAbonoAnual.DataSet := DMRelatorios.qryAbonoAnual;
  tbvAbonos.DataController.DataSource := dsAbonoAnual;

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
end;

procedure TfrmRelAbonoMensal.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelAbonoMensal.btnPesquisarClick(Sender: TObject);
var sqlAbono: string;
begin
  {if not ChecaMes(edtMes.Text) then
  begin
    ShowMessage('Mês Inválido');
    edtMes.SetFocus;
  end
  else
  if not ChecaAno(edtAno.Text) then
  begin
    ShowMessage('Ano Inválido');
    edtAno.SetFocus;
  end
  else
  begin}

    sqlAbono := 'SET DATEFORMAT dmy ' +
            ' SELECT ' +
            ' tbServidor.idServidor, tbPessoal.Nome,' +
            ' tbAbono.idExercicio, ' +
            ' tblotacao.sigla, tblotacao.descricao,' +
            '''dt_1''= CASE WHEN MONTH(tbAbono.dt_1) =:prmmdt1 ' +
            ' AND YEAR(tbabono.dt_1) =:prmadt1 THEN tbAbono.dt_1 ' +
            ' ELSE NULL END, ' +
            '''dt_2''= CASE WHEN MONTH(tbAbono.dt_2) =:prmmdt2 ' +
            ' AND YEAR(tbabono.dt_2) =:prmadt2 then tbAbono.dt_2 ' +
            ' ELSE NULL END, ' +
            '''dt_3''= CASE WHEN MONTH(tbAbono.dt_3) =:prmmdt3 ' +
            ' AND YEAR(tbabono.dt_3) =:prmadt3 then tbAbono.dt_3 ' +
            ' ELSE NULL END, ' +
            '''dt_4''= CASE WHEN MONTH(tbAbono.dt_4) =:prmmdt4 ' +
            ' AND YEAR(tbabono.dt_4)=:prmadt4 then tbAbono.dt_4 ' +
            ' ELSE NULL END, ' +
            '''dt_5''= CASE WHEN MONTH(tbAbono.dt_5) =:prmmdt5 ' +
            ' AND YEAR(tbabono.dt_5) =:prmadt5 then tbAbono.dt_5 ' +
            ' ELSE NULL END ' +
            ' FROM tbAbono' +
            ' LEFT JOIN tbPessoal   ON tbPessoal.idPessoal  = tbAbono.idPessoal'  +
            ' LEFT JOIN tbServidor  ON tbServidor.idPessoal = tbPessoal.idPessoal' +
            ' LEFT JOIN tblotacao   ON tbservidor.idlotacao = tblotacao.idlotacao' +
            ' WHERE ' +
            //tbServidor.idPessoal = tbPessoal.idPessoal ' +
            //' AND tbAbono.idPessoal = tbPessoal.idPessoal AND' +
            ' ((month(dt_1) =:prmMes1 AND year(dt_1) =:prmAno1) ' +
            ' OR (month(dt_2) =:prmMes2 AND year(dt_2) =:prmAno2) ' +
            ' OR (month(dt_3) =:prmMes3 AND year(dt_3) =:prmAno3) ' +
            ' OR (month(dt_4) =:prmMes4 AND year(dt_4) =:prmAno4) ' +
            ' OR (month(dt_5) =:prmMes5 AND year(dt_5) =:prmAno5)) ' +

            ' AND tbLotacao.Sigla like ' + QuotedStr('%' + edtSiglaOrgao.Text + '%') +

            ' ORDER BY' +
            ' tblotacao.sigla,' +
            ' tblotacao.descricao';

    {case RadioGroup2.ItemIndex of
      0: wSQL := wSQL + ' Order by tbServidor.idServidor';
      1: wSQL := wSQL + ' Order by Nome';
    end;}

    with DMRelatorios.qryAbonoAnual do
    begin
      Active := False;
      Sql.Clear;
      Sql.Add(sqlAbono);

      try
        Parameters.ParamByName('prmMes1').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmMes2').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmMes3').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmMes4').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmMes5').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmmdt1').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmmdt2').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmmdt3').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmmdt4').Value  := Trim(lkpMes.EditValue);
        Parameters.ParamByName('prmmdt5').Value  := Trim(lkpMes.EditValue);

        Parameters.ParamByName('prmAno1').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmAno2').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmAno3').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmAno4').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmAno5').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmadt1').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmadt2').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmadt3').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmadt4').Value  := Trim(lkpAno.Text);
        Parameters.ParamByName('prmadt5').Value  := Trim(lkpAno.Text);

        sqlAbono := SQL.Text;

        Active := True;


      //  Imprimir;

      except
        on EDatabaseError do
          ShowMessage('Erro - banco de dados');
      end;
    end;
end;

procedure TfrmRelAbonoMensal.btnImprimirClick(Sender: TObject);
begin
  if not DMRelatorios.qryAbonoAnual.Active
  then btnPesquisarClick(Nil);
  exibirRelatorio;
end;

procedure TfrmRelAbonoMensal.exibirRelatorio;
begin
// exibir e retirar da memória
  Application.CreateForm(TrptAbonoMensal, rptAbonoMensal);
  with rptAbonoMensal do
  begin
    DataSet := DMRelatorios.qryAbonoAnual;
    lblMes.Caption := lkpMes.Text + '/' + lkpAno.Text;

{   QRLabel17.Caption := frmPrincipal.fLogin.Matricula
                      + ' - '
                      + frmPrincipal.fLogin.Nome;}

//    QRLabel11.Caption := frmPrincipal.Sessao.Matricula + ' - ' + frmPrincipal.Sessao.Nome;

    Screen.Cursor := crDefault;

    TitleBand1.ParentFont := true;
    ColumnHeaderBand1.ParentFont := false;
    DetailBand1.ParentFont := true;
    PageFooterBand1.ParentFont := true;

    {case RadioGroup1.ItemIndex of
      0:
      begin
        qRpt201.Font.Color := clBlack;
        ColumnHeaderBand1.Font.Color := clBlack;
      end;
      1:
      begin
        qRpt201.Font.Color := clNavy;
        ColumnHeaderBand1.Font.Color := clNavy;
      end;
    end;
    }
    
    Preview;
    Free;
  end;
//  frmPrincipal.XPMenu1.Active := true;


end;

procedure TfrmRelAbonoMensal.edtSiglaOrgaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

end.
