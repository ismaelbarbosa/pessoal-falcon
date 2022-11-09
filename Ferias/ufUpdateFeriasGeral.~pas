unit ufUpdateFeriasGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxContainer, StdCtrls, cxTextEdit, cxMemo, Menus, cxButtons,
  cxPC, DBCtrls;

type
  TfrmUpdateFeriasGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    pgcFerias: TcxPageControl;
    tshRelacaoServidores: TcxTabSheet;
    tshRelacaoFerias: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    edtPesquisa: TcxTextEdit;
    grdServidores: TcxGrid;
    tbvServidores: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    grdServidoresLevel1: TcxGridLevel;
    pnlCRUDFerias: TPanel;
    grdFerias: TcxGrid;
    tbvFerias: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcPeriodo: TcxGridDBColumn;
    tvcParcela: TcxGridDBColumn;
    tvcTipoParcela: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcDt_InicioReagendamento: TcxGridDBColumn;
    tvcDt_TerminoReagendamento: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    lvlFerias: TcxGridLevel;
    pnlNome: TPanel;
    txtNome: TDBText;
    tvcCargo: TcxGridDBColumn;
    lblQtdFerias: TLabel;
    lblQtdServidores: TLabel;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    btnIncluirFerias: TcxButton;
    btnEditarFerias: TcxButton;
    btnExcluirFerias: TcxButton;
    tvcIdTipoParcela: TcxGridDBColumn;
    Timer1: TTimer;
    Label2: TLabel;
    tbvID: TcxGridDBColumn;
    DBText1: TDBText;
    txtIdExercicio: TDBText;
    txtDescricaoPeriodo: TDBText;
    txtdescricaoParcela: TDBText;
    txtDescricaoTipo: TDBText;
    txtIdTipoParcela: TDBText;
    txtDt_Inicio: TDBText;
    txtDt_Termino: TDBText;
    txtNProcessoSEI: TDBText;
    txtDt_InicioReagendamento: TDBText;
    txtDt_TerminoReagendamento: TDBText;
    txtObservacao: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    txtAbonoPecuniario: TDBText;
    tvcAbonoPecuniario: TcxGridDBColumn;
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure tshRelacaoFeriasShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirFeriasClick(Sender: TObject);
    procedure tbvServidoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEditarFeriasClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtPesquisaPropertiesChange(Sender: TObject);
    procedure btnExcluirFeriasClick(Sender: TObject);
    procedure tbvServidoresDblClick(Sender: TObject);
    procedure tbvFeriasDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure habilitaRelacaoFerias;
    procedure desabilitaRelacaoFerias;
  end;

var
  frmUpdateFeriasGeral: TfrmUpdateFeriasGeral;

implementation

uses uDMConexao, DateUtils, uDmExibirTabelas, ufPrincipal, PRG_utils,
  uPesFuncoes, ufUpdateFerias, uDmFeriasAbonoAfastamento, ufLogs,
  uDMExcluirFeriasAbonoAfastamento;

{$R *.dfm}

procedure TfrmUpdateFeriasGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: btnPesquisarClick(Sender);
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end
end;


procedure TfrmUpdateFeriasGeral.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  tbvServidores.DataController.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  tbvFerias.DataController.DataSource := DMFeriasAbonoAfastamento.dsFerias;

  txtNome.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtCargo.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtLotacao.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;


  tshRelacaoFerias.Enabled := false;
  if not DMFeriasAbonoAfastamento.qryPesquisa.Active
  then
    tshRelacaoFerias.Enabled := false;
end;

procedure TfrmUpdateFeriasGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateFeriasGeral.btnPesquisarClick(Sender: TObject);
begin
  lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
end;

procedure TfrmUpdateFeriasGeral.tshRelacaoFeriasShow(Sender: TObject);
begin
  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      lblQtdFerias.Caption := 'Total de registros: '
      + IntToStr(DMFeriasAbonoAfastamento.exibirFerias(FieldValues['idPessoal'],
      FieldValues['idServidor']));
    end;
  end;
end;

procedure TfrmUpdateFeriasGeral.FormActivate(Sender: TObject);
begin
  pgcFerias.ActivePageIndex := 0;
  edtPesquisa.SetFocus;
  lblQtdServidores.Caption := '0';
  lblQtdFerias.Caption := '0';
end;

procedure TfrmUpdateFeriasGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateFeriasGeral.btnIncluirFeriasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFerias, frmUpdateFerias);
  frmUpdateFerias.setarOperacao(1);

  with DMFeriasAbonoAfastamento do
  begin
    frmUpdateFerias.setarDadosServidor
    (qryPesquisa.FieldValues['idServidor'],
     qryPesquisa.FieldValues['Nome'],
     qryPesquisa.FieldValues['Cargo']);
  end;

  frmUpdateFerias.setFormQueChamou('frmUpdateFeriasGeral');

  frmUpdateFerias.ShowModal;
  frmUpdateFerias.Release;
  frmUpdateFerias := nil; 
end;

procedure TfrmUpdateFeriasGeral.tbvServidoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN
  then pgcFerias.ActivePageIndex := 1;
end;

procedure TfrmUpdateFeriasGeral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateFeriasGeral.btnEditarFeriasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFerias, frmUpdateFerias);
  frmUpdateFerias.setarOperacao(2);
//  frmUpdateFerias.configurarOperacao;

  //with DMFeriasAbonoAfastamento.qryPesquisa do
  //begin

    frmUpdateFerias.exibeFeriasNoPeriodo
    (DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
    DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],
    DMFeriasAbonoAfastamento.qryFerias.FieldValues['idExercicio'],
    DMFeriasAbonoAfastamento.qryFerias.FieldValues['idPeriodo']
    );

  //end;

  frmUpdateFerias.carregarFeriasParaEdicao;
  frmUpdateFerias.carregarAbonoPecuniario;


 // frmUpdateFerias.bloquearCampos;
  //frmUpdateFerias.edtProcessoSEI.SetFocus;


  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    frmUpdateFerias.setarDadosServidor
    (FieldValues['idServidor'],
     FieldValues['Nome'],
     FieldValues['Cargo']);


    {dmExibirTabelas.setarCabecalhoPessoal
    ('', DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],
     '', DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['Nome'],
     '', '', DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['Cargo']);}

  end;

  frmUpdateFerias.setFormQueChamou('frmUpdateFeriasGeral');

  frmUpdateFerias.ShowModal;
  frmUpdateFerias.Release;
  frmUpdateFerias := nil;
end;

procedure TfrmUpdateFeriasGeral.Timer1Timer(Sender: TObject);
var resultado: Integer;
begin

  if length(Trim(edtPesquisa.Text)) > 3 then
  begin
    {

  lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
  Timer1.Enabled := false;

  habilitaRelacaoAfastamentos;
  //focarNaEdicao;
  pgcAfastamento.ActivePage := tshRelacaoAfastamentos;
  pnlCRUDAfastamento.SetFocus;

    }
    resultado := DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text);
    
    case resultado of
      0:
      begin
        desabilitaRelacaoFerias;
        //focarNaEdicao;
      end;
      1:
      begin
        habilitaRelacaoFerias;
        //focarNaEdicao;
        pgcFerias.ActivePage := tshRelacaoFerias;
        pnlCRUDFerias.SetFocus;
      end;
    end;

    if resultado > 1 then habilitaRelacaoFerias;

    lblQtdServidores.Caption := IntToStr(resultado);

    Timer1.Enabled := false;
  end;

end;

procedure TfrmUpdateFeriasGeral.edtPesquisaPropertiesChange(
  Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TfrmUpdateFeriasGeral.desabilitaRelacaoFerias;
begin
  tshRelacaoFerias.Enabled := false;
end;

procedure TfrmUpdateFeriasGeral.habilitaRelacaoFerias;
begin
  tshRelacaoFerias.Enabled := true;
end;

procedure TfrmUpdateFeriasGeral.btnExcluirFeriasClick(Sender: TObject);
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Atenção! Confirma esta';
  wOperacao := 'exclusão';
  wMens := wMens + ' ' + wOperacao + '?';

  if ConfirmaAcao(wMens, 3) = 1 then
  begin
    with dmFeriasAbonoAfastamento.qryFerias do
    begin
      wEvento := UpperCase(wOperacao)+ ' de férias.'
      + ' Exercício: ' + dmFeriasAbonoAfastamento.qryFerias.FieldValues['idExercicio']
      + ' Data de início: ';

      if not FieldByName('Dt_Inicio').IsNull then
      wEvento := wEvento + DateToStr(FieldValues['Dt_Inicio'])

      + ', Data de término: ';

      if not FieldByName('Dt_Termino').IsNull then
      wEvento := wEvento + DateToStr(FieldValues['Dt_Termino']);
    end;

    if DMExcluirFeriasAbonoAfastamento.excluirFerias
    (dmFeriasAbonoAfastamento.qryFerias.FieldValues['ID'])
    then
    begin
      ShowMessage('Registro excluído.');

      IncluirLog
      (
      DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
      RetornaData(2),
      'tbFerias',
      //'NULL',
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'],
      dmFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'],
      'TODOS',
      wEvento
      );

      ShowMessage('Registrado no log de alterações.');
    end;


    frmUpdateFeriasGeral.tshRelacaoFeriasShow(Self);
  end
end;

procedure TfrmUpdateFeriasGeral.tbvServidoresDblClick(Sender: TObject);
begin
  pgcFerias.ActivePage := tshRelacaoFerias;
end;

procedure TfrmUpdateFeriasGeral.tbvFeriasDblClick(Sender: TObject);
begin
  btnEditarFeriasClick(Nil);
end;

procedure TfrmUpdateFeriasGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMFeriasAbonoAfastamento.qryPesquisa.Active := false;
end;

end.
