unit ufRptFeriasAnuais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxButtons, cxRadioGroup;

type
  TfrmRptFeriasAnuais = class(TForm)
    pnlBotoes: TPanel;
    Label21: TLabel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    btnPesquisar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    lblAno: TLabel;
    lkpAno: TcxLookupComboBox;
    grdFeriasAnuais: TcxGrid;
    tbvFeriasAnuais: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    tvcExercicio: TcxGridDBColumn;
    tvcPeriodo: TcxGridDBColumn;
    tbvAbono: TcxGridDBColumn;
    tvcParcela: TcxGridDBColumn;
    tvcTipo: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    lvlFeriasAnuais: TcxGridLevel;
    dsAno: TDataSource;
    dsFeriasAnuais: TDataSource;
    rgpOrdem: TcxRadioGroup;
    tvcLotacao: TcxGridDBColumn;
    Memo1: TMemo;
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure rgpOrdemClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisarFerias(idExercicio: String): Integer;
    procedure imprimir;

  end;

var
  frmRptFeriasAnuais: TfrmRptFeriasAnuais;

implementation

uses uDMRelatorios, uDmExibirTabelas, uDMPessoal, uRptRelFeriasAnuais;

{$R *.dfm}

procedure TfrmRptFeriasAnuais.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRptFeriasAnuais.btnPesquisarClick(Sender: TObject);
var wSQL: String;
begin

  wSQL := 'SET DATEFORMAT DMY'

  + '  SELECT tbLotacao.SuperLotacao, tbLotacao.idLotacao, tbLotacao.descricao as Lotacao, '
  + ' tbPessoal.Nome,'
  + ' substring(idCargo,1,2) as Cargo,'
  + ' tbServidor.idServidor,'
  + ' tbFerias.idPessoal, tbFerias.idExercicio,'

  + ' ABONO= case when Abono = 0 then ''NÃO'' '
  + ' when Abono = 1 then ''SIM'' '
  + ' end, '

  + '  ADI= CASE WHEN tbFerias.dt_inicio is null then '  + QuotedStr('')
  + '  WHEN Antecipacao = 0 then ' + QuotedStr('NÃO')
  + '  WHEN Antecipacao = 1 then ' + QuotedStr('SIM')
  + '  END ,'

  + '  PER = CASE when idPeriodo = ' + QuotedStr('U') + ' then ' + QuotedStr('UNI')
  + '  WHEN idPeriodo = ''1'' then ' + QuotedStr('1º')
  + '  WHEN idPeriodo = ''2'' then ' + QuotedStr('2º')
  + '  else ' + QuotedStr('---')
  + '  end,'

  + ' PAR = CASE WHEN idParcela = ''U'' then' + QuotedStr('UNI')
  + ' WHEN idParcela = ''1'' then' + QuotedStr('1ª')
  + ' WHEN idParcela = ''2'' then' + QuotedStr('2ª')
  + ' WHEN idParcela = ''3'' then' + QuotedStr('3ª')
  + ' else ''---'' end,'

  + ' TIPO = CASE WHEN idTipoParcela = ''U'' then ' + QuotedStr('30')
  + ' WHEN idTipoParcela = ''A'' then ' + QuotedStr('15/15')
  + ' WHEN idTipoParcela = ''B'' then ' + QuotedStr('10/20')
  + ' WHEN idTipoParcela = ''C'' then ' + QuotedStr('20/10')
  + ' WHEN idTipoParcela = ''D'' then ' + QuotedStr('10/10/10')
  + ' WHEN idTipoParcela = ''E'' then ' + QuotedStr('11/19')
  + ' WHEN idTipoParcela = ''F'' then ' + QuotedStr('12/18')
  + ' WHEN idTipoParcela = ''G'' then ' + QuotedStr('13/17')
  + ' WHEN idTipoParcela = ''H'' then ' + QuotedStr('14/16')
  + ' WHEN idTipoParcela = ''I'' then ' + QuotedStr('16/14')
  + ' WHEN idTipoParcela = ''J'' then ' + QuotedStr('17/13')
  + ' WHEN idTipoParcela = ''K'' then ' + QuotedStr('18/12')
  + ' WHEN idTipoParcela = ''L'' then ' + QuotedStr('19/11')
  + ' end,'

  + ' tbFerias.dt_inicio, tbFerias.dt_termino'

  + ' FROM tbFerias'

  + ' INNER JOIN tbPessoal ON tbPessoal.idPessoal = tbFerias.idPessoal'
  + ' INNER JOIN tbServidor ON tbServidor.idServidor = tbFerias.idServidor'
  + ' LEFT JOIN tbLotacao ON tbLotacao.idLotacao = tbServidor.idLotacao'

  + ' WHERE'
  + ' tbServidor.idDesligamento is null'
  //+ ' and tbLotacao.idLotacao =:"idLotacao"
  + ' and idExercicio in'

  + '(' + QuotedStr(lkpAno.Text) + ','
  + QuotedStr(IntToStr(StrToInt(lkpAno.Text)+1))
  +')';

  {CASE rgpLotacao.ItemIndex of
  //1: wSQL := wSQL + ' Order by tbLotacao.idLotacao';
  0: wSQL := wSQL + ' Order by tbLotacao.Descricao';
  1: wSQL := wSQL + ' Order by tbLotacao.SuperLotacao, tbLotacao.Descricao';
  end;}

  wSQL := wSQL + ' Order by tbLotacao.SuperLotacao, tbLotacao.Descricao';

  CASE rgpOrdem.ItemIndex of
  0: wSQL := wSQL + ', tbServidor.idServidor, tbFerias.idExercicio, tbFerias.idPeriodo, tbFerias.idParcela, tbFerias.Dt_Inicio';
  1: wSQL := wSQL + ', tbPessoal.Nome, tbFerias.idExercicio, tbFerias.idPeriodo, tbFerias.idParcela, tbFerias.Dt_Inicio';
  end;


  Memo1.Lines.Add(wSQL);

  with dmRelatorios do
   begin
   qryFeriasAnuais.Active := false;
   qryFeriasAnuais.SQL.Clear;
   qryFeriasAnuais.SQL.Add(wSQL);
   qryFeriasAnuais.Active := true;

   //Application.CreateForm(TqrptRel_Conf_Ferias_Mensais, qrptRel_Conf_Ferias_Mensais);

   {case rdgrpTipo.ItemIndex of
     0:
     begin
     rptRel_Conf_Ferias_Mensais.ReportTitle :=
     'Relatório Mensal de Férias';
     end;//0
   end;//case
   }
   end;//with

end;

function TfrmRptFeriasAnuais.pesquisarFerias(idExercicio: String): Integer;
begin
  dsFeriasAnuais.DataSet := DMRelatorios.qryFeriasAnuais;
  tbvFeriasAnuais.DataController.DataSource := dsFeriasAnuais;

  with dmExibirTabelas do
  begin
    dsAno.DataSet := qryAno;

    qryAno.Active := true;
    //qryDataHora.Active := true;

    lkpAno.ItemIndex := 1;
  end;

  WindowState := wsMaximized;
end;

procedure TfrmRptFeriasAnuais.FormCreate(Sender: TObject);
begin
  dsFeriasAnuais.DataSet := DMRelatorios.qryFeriasAnuais;
  tbvFeriasAnuais.DataController.DataSource := dsFeriasAnuais;

  with dmExibirTabelas do
  begin
    dsAno.DataSet := qryAno;

    qryAno.Active := true;
    qryDataHora.Active := true;

    lkpAno.ItemIndex := 1;
  end;

  WindowState := wsMaximized;

end;

procedure TfrmRptFeriasAnuais.btnImprimirClick(Sender: TObject);
begin
  if dmRelatorios.qryFeriasAnuais.Active = false
  then btnPesquisarClick(Nil);

  imprimir;
end;

procedure TfrmRptFeriasAnuais.rgpOrdemClick(Sender: TObject);
begin
  btnPesquisarClick(Nil);
end;

procedure TfrmRptFeriasAnuais.imprimir;
begin
  dmRelatorios.qryFeriasAnuais.DisableControls;

  if not Assigned(rptRelFeriasAnuais) then
  begin
    Application.CreateForm(TrptRelFeriasAnuais, rptRelFeriasAnuais);
    rptRelFeriasAnuais.Prepare;
  end;

  rptRelFeriasAnuais.lblReferencia.Caption :=  lkpAno.EditText + ' E ' + IntToStr(StrToInt(lkpAno.EditText)+1);
  //     rptRel_Conf_Ferias_Mensais.lblEmitidoPor.Caption :=
  //     frmPrincipal.fLogin.Matricula + ' - ' + frmPrincipal.fLogin.Nome;
  //     frmPrincipal.Sessao.Matricula + ' - ' + frmPrincipal.Sessao.Nome;

  rptRelFeriasAnuais.Preview;
  //rptRelFeriasAnuais.Free;

  dmRelatorios.qryFeriasAnuais.EnableControls;
end;

end.
