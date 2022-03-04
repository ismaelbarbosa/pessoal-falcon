unit ufUpdateAfastamentoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxPC, cxMemo, DBCtrls;

type
  TfrmUpdateAfastamentoGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    pgcAfastamento: TcxPageControl;
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
    tshRelacaoAfastamentos: TcxTabSheet;
    Panel2: TPanel;
    lblQtdAfastamentos: TLabel;
    btnIncluirAfastamento: TcxButton;
    btnEditarAfastamento: TcxButton;
    btnExcluirAfastamento: TcxButton;
    grdFerias: TcxGrid;
    tbvAfastamento: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    grdAfastamento: TcxGridLevel;
    tvcIdAfastamento: TcxGridDBColumn;
    tvcDescricaoAfastamento: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure tshRelacaoAfastamentosShow(Sender: TObject);
    procedure btnIncluirAfastamentoClick(Sender: TObject);
    procedure btnEditarAfastamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
  //
  end;

var
  frmUpdateAfastamentoGeral: TfrmUpdateAfastamentoGeral;

implementation

uses uDMConexao, uPesFuncoes, PRG_utils, ufUpdateAfastamento, ufPrincipal,
  uDmFeriasAbonoAfastamento;

{$R *.dfm}

procedure TfrmUpdateAfastamentoGeral.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;

  tbvServidores.DataController.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  tbvAfastamento.DataController.DataSource := DMFeriasAbonoAfastamento.dsAfastamento;

  txtNome.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtCargo.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;
  txtLotacao.DataSource := DMFeriasAbonoAfastamento.dsPesquisa;

end;

procedure TfrmUpdateAfastamentoGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end
end;

procedure TfrmUpdateAfastamentoGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateAfastamentoGeral.FormActivate(Sender: TObject);
begin
  pgcAfastamento.ActivePageIndex := 0;
  edtPesquisa.SetFocus;
  lblQtdServidores.Caption := '0';
  lblQtdAfastamentos.Caption := '0';
end;

procedure TfrmUpdateAfastamentoGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateAfastamentoGeral.btnPesquisarClick(Sender: TObject);
begin
//  lblQtdServidores.Caption := IntToStr(pesquisarPessoal(edtPesquisa.Text));
  lblQtdServidores.Caption := IntToStr(DMFeriasAbonoAfastamento.pesquisarPessoal(edtPesquisa.Text));
end;

procedure TfrmUpdateAfastamentoGeral.tshRelacaoAfastamentosShow(
  Sender: TObject);
begin
  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      lblQtdAfastamentos.Caption := 'Total de registros: '
      + IntToStr(DMFeriasAbonoAfastamento.exibirAfastamentos(FieldValues['idPessoal'], FieldValues['idServidor']));
    end;
  end;
end;

procedure TfrmUpdateAfastamentoGeral.btnIncluirAfastamentoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAfastamento, frmUpdateAfastamento);
  frmUpdateAfastamento.setarOperacao(1);

  with DMFeriasAbonoAfastamento do
  begin
    frmUpdateAfastamento.setarDadosServidor
    (qryPesquisa.FieldValues['idServidor'],
     qryPesquisa.FieldValues['Nome'],
     qryPesquisa.FieldValues['Cargo']);
  end;


  frmUpdateAfastamento.setFormQueChamou('frmUpdateAfastamentoGeral');

  frmUpdateAfastamento.ShowModal;
  frmUpdateAfastamento.Release;
  frmUpdateAfastamento := nil;

end;

procedure TfrmUpdateAfastamentoGeral.btnEditarAfastamentoClick(
  Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAfastamento, frmUpdateAfastamento);
  frmUpdateAfastamento.setarOperacao(2);

  {with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    frmUpdateFerias.exibeFeriasNoPeriodo
    (FieldValues['idPessoal'],
    FieldValues['idServidor'],
    FieldValues['idExercicio']);
  end;
  }
  frmUpdateAfastamento.configurarOperacao;

  //frmUpdateAfastamento.carregarAfastamentoExistente;


  //frmUpdateAfastamento.bloquearCampos;
  //frmUpdateFerias.edtProcessoSEI.SetFocus;


  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    frmUpdateAfastamento.setarDadosServidor
    (FieldValues['idServidor'],
     FieldValues['Nome'],
     FieldValues['Cargo']);
  end;

  frmUpdateAfastamento.setFormQueChamou('frmUpdateAfastamentoGeral');

  frmUpdateAfastamento.ShowModal;
  frmUpdateAfastamento.Release;
  frmUpdateAfastamento := nil;


end;

end.
