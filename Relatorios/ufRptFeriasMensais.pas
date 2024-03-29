unit ufRptFeriasMensais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxGroupBox, StdCtrls, cxButtons, ExtCtrls,
  Grids, DBGrids, cxRadioGroup;

type
  TfrmRptFeriasMensais = class(TForm)
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
    grdFeriasMensais: TcxGrid;
    tbvFeriasMensais: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    tvcExercicio: TcxGridDBColumn;
    tvcPeriodo: TcxGridDBColumn;
    tvcParcela: TcxGridDBColumn;
    tvcTipo: TcxGridDBColumn;
    lvlFeriasMensais: TcxGridLevel;
    dsAno: TDataSource;
    dsMes: TDataSource;
    rdgrpOrdenadoPor: TRadioGroup;
    rdgrpTipo: TRadioGroup;
    dsRel_Conf_Fer_Mens: TDataSource;
    rdgrpFonte: TRadioGroup;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tbvAbono: TcxGridDBColumn;
    lblTotal: TLabel;
    rgpSituacao: TcxRadioGroup;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure rgpSituacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure imprimir;
  end;

var
  frmRptFeriasMensais: TfrmRptFeriasMensais;

implementation

uses uDMRelatorios, uDmExibirTabelas, ufPrincipal,
  uRptRel_Conf_Ferias_Mensais, ADODB;

{$R *.dfm}

procedure TfrmRptFeriasMensais.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRptFeriasMensais.FormCreate(Sender: TObject);
begin
  dsRel_Conf_Fer_Mens.DataSet := DMRelatorios.qryRel_Conf_Fer_Mens;
  tbvFeriasMensais.DataController.DataSource := dsRel_Conf_Fer_Mens;

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

  lblTotal.Caption := '0';

  WindowState := wsMaximized;
end;

procedure TfrmRptFeriasMensais.btnPesquisarClick(Sender: TObject);
var
sql: string;
begin
  //Abort;

  if not Assigned(rptRel_Conf_Ferias_Mensais) then//if5
  begin
    Application.CreateForm(TrptRel_Conf_Ferias_Mensais, rptRel_Conf_Ferias_Mensais);
    rptRel_Conf_Ferias_Mensais.Prepare;
  end;

  sql := ' Set DateFormat DMY ' +
                'SELECT  tbLotacao.sigla, tblotacao.descricao, ' +
                'tbPessoal.Nome,	substring(idCargo,1,2) as Cargo, ' +
                'tbServidor.idServidor, tbFerias.idExercicio, ' +

                'ABONO= case when Abono = 0 then ''N�O'' ' +
                'when Abono = 1 then ''SIM'' ' +
                'end, ' +

                'ADI= case when Antecipacao = 0 then ''N�O'' ' +
                'when Antecipacao = 1 then ''SIM'' ' +
                'end, ' +

                'PER = case when idPeriodo = ''U'' then ''UNI'' ' +
                'when idPeriodo = ''1'' then ''1�'' ' +
                'when idPeriodo = ''2'' then ''2�'' ' +
                'else ''---'' ' +
                'end, ' +
                'PAR = case when idParcela = ''U'' then ''UNI'' ' +
                'when idParcela = ''1'' then ''1�'' ' +
                'when idParcela = ''2'' then ''2�'' ' +
                'when idParcela = ''3'' then ''3�'' ' +                
                'else ''---''end, ' +
                'TIPO = case when idTipoParcela = ''U'' then ''30'' ' +
                'when idTipoParcela = ''A'' then ''15/15'' ' +
                'when idTipoParcela = ''B'' then ''10/20'' ' +
                'when idTipoParcela = ''C'' then ''20/10'' ' +
                'when idTipoParcela = ''D'' then ''10/10/10'' ' +
                'when idTipoParcela = ''E'' then ''11/19'' ' +
                'when idTipoParcela = ''F'' then ''12/18'' ' +
                'when idTipoParcela = ''G'' then ''13/17'' ' +
                'when idTipoParcela = ''H'' then ''14/16'' ' +
                'when idTipoParcela = ''I'' then ''16/14'' ' +
                'when idTipoParcela = ''J'' then ''17/13'' ' +
                'when idTipoParcela = ''K'' then ''18/12'' ' +
                'when idTipoParcela = ''L'' then ''19/11'' ' +
                'else ''---'' ' +
                'end, ' +
                'tbFerias.dt_inicio, tbFerias.dt_termino ' +
                'FROM tbLotacao, tbPessoal, tbServidor, tbFerias ' +
                'where tbLotacao.idLotacao = tbServidor.idLotacao and ' +
                'tbservidor.idpessoal = tbpessoal.idpessoal and ' +
                'tbPessoal.idPessoal = tbFerias.idPessoal and ' +
                'tbServidor.idServidor = tbFerias.idServidor and ' +
                'month(tbFerias.dt_inicio) = :prmMes and ' +
                'year(tbFerias.dt_Inicio) = :prmAno ';


                 case rgpSituacao.ItemIndex of
                 0: begin
                    sql := sql +
                    'and idDesligamento is NULL ';
                    end;//0
                 1: begin
                    sql := sql +
                    'and idDesligamento is NOT NULL ';
                    end;
                 end;

if rdgrpTipo.ItemIndex = 0 then
   begin
   case rdgrpOrdenadoPor.ItemIndex of
   0: begin
      sql := sql +
      'order by tbservidor.idservidor, tbpessoal.nome ';
      end;//0
   1: begin
      sql := sql +
      'order by tbpessoal.nome, tbservidor.idservidor ';
      end;//1
   end;//case
   end//if
else
   begin
   case rdgrpOrdenadoPor.ItemIndex of
   0: begin
      sql := sql +
      'order by tblotacao.descricao, tbservidor.idservidor, ' +
      'tbpessoal.nome ';
      end;//0
   1: begin
      sql := sql +
      'order by tblotacao.descricao, tbpessoal.nome, ' +
      'tbservidor.idservidor ';
      end;//1
   end;//case
   end;//else

   with dmRelatorios do
     begin
     qryRel_Conf_Fer_Mens.Active := false;
     qryRel_Conf_Fer_Mens.SQL.Clear;
     qryRel_Conf_Fer_Mens.SQL.Add(sql);
     qryRel_Conf_Fer_Mens.Parameters.ParamValues['prmMes'] := lkpMes.EditValue;
     qryRel_Conf_Fer_Mens.Parameters.ParamValues['prmAno'] := lkpAno.EditValue;
     qryRel_Conf_Fer_Mens.Active := true;

     //Application.CreateForm(TqrptRel_Conf_Ferias_Mensais, qrptRel_Conf_Ferias_Mensais);

     case rdgrpTipo.ItemIndex of
       0:
       begin
       rptRel_Conf_Ferias_Mensais.ReportTitle :=
       'RELA��O DE F�RIAS MENSAL'; //Relat�rio Mensal de F�rias';
       end;//0
     end;//case

     end;//with


     lblTotal.Caption := 'Total de registros: ' + IntToStr(dmRelatorios.qryRel_Conf_Fer_Mens.RecordCount);

end;

procedure TfrmRptFeriasMensais.btnImprimirClick(Sender: TObject);
begin
  if dmRelatorios.qryRel_Conf_Fer_Mens.Active = false
  then btnPesquisarClick(Nil);

  imprimir;
end;

procedure TfrmRptFeriasMensais.imprimir;
begin
  dmRelatorios.qryRel_Conf_Fer_Mens.DisableControls;

  if not Assigned(rptRel_Conf_Ferias_Mensais) then
  begin
    Application.CreateForm(TrptRel_Conf_Ferias_Mensais, rptRel_Conf_Ferias_Mensais);
    rptRel_Conf_Ferias_Mensais.Prepare;
  end;

  rptRel_Conf_Ferias_Mensais.lblReferencia.Caption :=
  lkpMes.EditText + '/' + lkpAno.EditText;
  //     rptRel_Conf_Ferias_Mensais.lblEmitidoPor.Caption :=
  //     frmPrincipal.fLogin.Matricula + ' - ' + frmPrincipal.fLogin.Nome;
  //     frmPrincipal.Sessao.Matricula + ' - ' + frmPrincipal.Sessao.Nome;
  rptRel_Conf_Ferias_Mensais.Preview;
  //rptRel_Conf_Ferias_Mensais.Free;

  dmRelatorios.qryRel_Conf_Fer_Mens.EnableControls;

end;

procedure TfrmRptFeriasMensais.rgpSituacaoClick(Sender: TObject);
begin
  btnPesquisarClick(Nil); 
end;

end.
