unit ufUpdateAbonoAnualGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ADODB, cxMemo, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, StdCtrls, cxPC, cxButtons, ExtCtrls;

type
  TfrmUpdateAbonoAnualGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    pgcAbono: TcxPageControl;
    tshRelacaoServidores: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    lblQtdServidores: TLabel;
    edtPesquisa: TcxTextEdit;
    grdServidores: TcxGrid;
    tbvServidores: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    grdServidoresLevel1: TcxGridLevel;
    tshRelacaoAbonos: TcxTabSheet;
    pnlCRUDAbonos: TPanel;
    lblQtdAbonos: TLabel;
    btnIncluirAbono: TcxButton;
    btnEditarAbono: TcxButton;
    btnExcluirAbono: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    grdAbonoAnual: TcxGrid;
    tbvAbonoAnual: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcDt_1: TcxGridDBColumn;
    tvcDt_2: TcxGridDBColumn;
    tvcDt_3: TcxGridDBColumn;
    tvcDt_4: TcxGridDBColumn;
    tvcDt_5: TcxGridDBColumn;
    grdAbonoAnualLevel1: TcxGridLevel;
    Timer1: TTimer;
    Label2: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure tbvServidoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirAbonoClick(Sender: TObject);
    procedure tshRelacaoAbonosShow(Sender: TObject);
    procedure btnEditarAbonoClick(Sender: TObject);
    procedure edtPesquisaPropertiesChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnExcluirAbonoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure habilitaRelacaoAbonos;
    procedure desabilitaRelacaoAbonos;
  end;

var
  frmUpdateAbonoAnualGeral: TfrmUpdateAbonoAnualGeral;

implementation

uses uDMConexao, PRG_utils, uPesFuncoes, ufUpdateAbonoAnual, ufLogs,
  ufPrincipal, uDmFeriasAbonoAfastamento, uDMExcluirFeriasAbonoAfastamento;

{$R *.dfm}

procedure TfrmUpdateAbonoAnualGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateAbonoAnualGeral.btnPesquisarClick(Sender: TObject);
begin
  lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
end;

procedure TfrmUpdateAbonoAnualGeral.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  tbvServidores.DataController.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  tbvAbonoAnual.DataController.DataSource := DMFeriasAbonoAfastamento.dsAbonoAnual;

  txtNome.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtCargo.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtLotacao.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;

  tshRelacaoAbonos.Enabled := false;
end;

procedure TfrmUpdateAbonoAnualGeral.FormActivate(Sender: TObject);
begin
  pgcAbono.ActivePageIndex := 0;
  edtPesquisa.SetFocus;
  lblQtdServidores.Caption := '0';
  lblQtdAbonos.Caption := '0';
end;

procedure TfrmUpdateAbonoAnualGeral.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateAbonoAnualGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Timer1.Enabled := true;
  {case Key of
    VK_RETURN: lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end}
end;

procedure TfrmUpdateAbonoAnualGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateAbonoAnualGeral.tbvServidoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN
  then pgcAbono.ActivePageIndex := 1;
end;

procedure TfrmUpdateAbonoAnualGeral.btnIncluirAbonoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAbonoAnual, frmUpdateAbonoAnual);
  frmUpdateAbonoAnual.setarOperacao(1);

  with DMFeriasAbonoAfastamento do
  begin
    frmUpdateAbonoAnual.setarDadosServidor
    (qryPesquisa.FieldValues['idServidor'],
     qryPesquisa.FieldValues['Nome'],
     qryPesquisa.FieldValues['Cargo']);
  end;

  frmUpdateAbonoAnual.setFormQueChamou('frmUpdateAbonoAnualGeral');

  frmUpdateAbonoAnual.ShowModal;
  frmUpdateAbonoAnual.Release;
  frmUpdateAbonoAnual := nil;

end;

procedure TfrmUpdateAbonoAnualGeral.tshRelacaoAbonosShow(Sender: TObject);
begin
  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      lblQtdAbonos.Caption := 'Total de registros: '
      + IntToStr(DMFeriasAbonoAfastamento.exibirAbonos(FieldValues['idPessoal'], FieldValues['idServidor']));
    end;
  end;
end;

procedure TfrmUpdateAbonoAnualGeral.btnEditarAbonoClick(Sender: TObject);
var ID, idExercicio, ProcessoSEI, dt_1, dt_2, dt_3, dt_4, dt_5: String;
begin
  Application.CreateForm(TfrmUpdateAbonoAnual, frmUpdateAbonoAnual);
  frmUpdateAbonoAnual.setarOperacao(2);


  with dmFeriasAbonoAfastamento.qryAbonoAnual do
  begin
    ID := FieldValues['ID'];

    idExercicio := FieldValues['idExercicio'];

    if not FieldByName('nProcessoSEI').IsNull then
    ProcessoSEI := FieldValues['nProcessoSEI']
    //  else ProcessoSEI := ''
    ;
    if not FieldByName('Dt_1').IsNull then
    dt_1 := FieldValues['Dt_1'];

    if not FieldByName('Dt_2').IsNull then
    dt_2 := FieldValues['Dt_2'];

    if not FieldByName('Dt_3').IsNull then
    dt_3 := FieldValues['Dt_3'];

    if not FieldByName('Dt_4').IsNull then
    dt_4 := FieldValues['Dt_4'];

    if not FieldByName('Dt_5').IsNull then
    dt_5 := FieldValues['Dt_5'];
  end;


  frmUpdateAbonoAnual.configurarOperacao;
  frmUpdateAbonoAnual.carregarAbonoParaEdicao(ID, idExercicio, ProcessoSEI, dt_1, dt_2, dt_3, dt_4, dt_5);

  //frmUpdateAbonoAnual.bloquearCampos;
  //frmUpdateAbonoAnual.edtProcessoSEI.SetFocus;


  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    frmUpdateAbonoAnual.setarDadosServidor
    (FieldValues['idServidor'],
     FieldValues['Nome'],
     FieldValues['Cargo']);
  end;

  frmUpdateAbonoAnual.setFormQueChamou('frmUpdateAbonoAnualGeral');

  frmUpdateAbonoAnual.ShowModal;
  frmUpdateAbonoAnual.Release;
  frmUpdateAbonoAnual := nil;
end;

procedure TfrmUpdateAbonoAnualGeral.edtPesquisaPropertiesChange(
  Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TfrmUpdateAbonoAnualGeral.Timer1Timer(Sender: TObject);
var resultado: Integer;
begin
  //lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
  //Timer1.Enabled := false;

  if length(Trim(edtPesquisa.Text)) > 3 then
  begin

    resultado := DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text);

    case resultado of
      0:
      begin
        desabilitaRelacaoAbonos;
        //focarNaEdicao;
      end;
      1:
      begin
        habilitaRelacaoAbonos;
        //focarNaEdicao;
        pgcAbono.ActivePage := tshRelacaoAbonos;
        pnlCRUDAbonos.SetFocus;
      end;
    end;

    if resultado > 1 then habilitaRelacaoAbonos;

    lblQtdServidores.Caption := IntToStr(resultado);

    Timer1.Enabled := false;
  end;
end;

procedure TfrmUpdateAbonoAnualGeral.btnExcluirAbonoClick(Sender: TObject);
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Atenção! Confirma esta';
  wOperacao := 'exclusão';
  wMens := wMens + ' ' + wOperacao + '?';

  if ConfirmaAcao(wMens, 3) = 1 then
  begin
    wEvento := UpperCase(wOperacao)+ ' de abono.'
    + ' Exercício: ' + dmFeriasAbonoAfastamento.qryAbonoAnual.FieldValues['idExercicio']
    + ' Datas: ';

    with dmFeriasAbonoAfastamento.qryAbonoAnual do
    begin
      if not FieldByName('Dt_1').IsNull then
      wEvento := wEvento + DateToStr(FieldValues['dt_1']);

      if not FieldByName('Dt_2').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_2']);

      if not FieldByName('Dt_3').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_3']);

      if not FieldByName('Dt_4').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_4']);

      if not FieldByName('Dt_5').IsNull then
      wEvento := wEvento + ', ' + DateToStr(FieldValues['dt_5']);
    end;

    if DMExcluirFeriasAbonoAfastamento.excluirAbono
    (dmFeriasAbonoAfastamento.qryAbonoAnual.FieldValues['ID'])
    then
    begin
      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbAbono',
      //'NULL',
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],
      'TODOS',
      wEvento
      );

      ShowMessage('Registro excluído.');
    end;

    frmUpdateAbonoAnualGeral.tshRelacaoAbonosShow(Self);

    //frmUpdateAbonoAnualGeral.Close;
  end

end;

procedure TfrmUpdateAbonoAnualGeral.desabilitaRelacaoAbonos;
begin
  tshRelacaoAbonos.Enabled := false;
end;

procedure TfrmUpdateAbonoAnualGeral.habilitaRelacaoAbonos;
begin
  tshRelacaoAbonos.Enabled := true;
end;

end.
