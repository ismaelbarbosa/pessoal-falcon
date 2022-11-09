unit ufUpdateSubstituicaoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DB, ADODB, cxControls, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxPC,
  cxMemo, DBCtrls, Grids, DBGrids;

type
  TfrmUpdateSubstituicaoGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    qryPesquisa: TADOQuery;
    dsPesquisa: TDataSource;
    pnlNome: TPanel;
    txtNome: TDBText;
    DBText1: TDBText;
    DBText3: TDBText;
    mmoSQL: TcxMemo;
    pgcSubstituicoes: TcxPageControl;
    tshRelacaoProcuradores: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    edtPesquisa: TcxTextEdit;
    grdServidores: TcxGrid;
    tbvProcuradores: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    grdServidoresLevel1: TcxGridLevel;
    tshRelacaoSubstituicao: TcxTabSheet;
    pnlCRUDSubstituicao: TPanel;
    lblQtdServidores: TLabel;
    btnIncluirSubstituicao: TcxButton;
    btnEditarFerias: TcxButton;
    btnExcluirFerias: TcxButton;
    grdSubstituicoes: TcxGrid;
    grdSubstituicoesDBTableView1: TcxGridDBTableView;
    tvcProcuradorSubstituido: TcxGridDBColumn;
    tvcProcuradorInicio: TcxGridDBColumn;
    tvcProcuradorTermino: TcxGridDBColumn;
    tvcProcuradorNdias: TcxGridDBColumn;
    tvcProcuradorNProcessoSEI: TcxGridDBColumn;
    grdSubstituicoesLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    tvcAno: TcxGridDBColumn;
    tvcTotalDias: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsTotalDiasSubstituidos: TDataSource;
    dsProcuradorSubstituido: TDataSource;
    qryTotalDiasSubstituidos: TADOQuery;
    qryProcuradorSubstituido: TADOQuery;
    DBText2: TDBText;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure tshRelacaoSubstituicaoShow(Sender: TObject);
    procedure btnIncluirSubstituicaoClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnExcluirFeriasClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisarPessoal(valor:String):Integer;
    function exibirTotalDiasSubstituidos(idPessoal, idServidor: String): Integer;
    function ExibirSubstituicoes(pidPessoal: String; pTop, pOrdem: integer): Integer;

    procedure habilitaRelacaoSubstituicao;
    procedure desabilitaRelacaoSubstituicao;
  end;

var
  frmUpdateSubstituicaoGeral: TfrmUpdateSubstituicaoGeral;

implementation

uses uDMConexao, PRG_utils, uPesFuncoes, ufPrincipal, ufUpdateSubstituicao,
  uDmExibirTabelas, ufLogs;

{$R *.dfm}

procedure TfrmUpdateSubstituicaoGeral.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;
  qryPesquisa.Connection := DMConexao.conPessoal;

  qryTotalDiasSubstituidos.Connection := DMConexao.conPessoal;
  qryProcuradorSubstituido.Connection := DMConexao.conPessoal;

//  dsTotalDiasSubstituidos.DataSet := dmExibirTabelas.qryTotalDiasSubstituidos;
//  dsProcuradorSubstituido.DataSet := dmExibirTabelas.qryProcuradorSubstituido;

  dsTotalDiasSubstituidos.DataSet := qryTotalDiasSubstituidos;
  dsProcuradorSubstituido.DataSet := qryProcuradorSubstituido;

  tshRelacaoSubstituicao.Enabled := false;
end;

procedure TfrmUpdateSubstituicaoGeral.FormActivate(Sender: TObject);
begin
  pgcSubstituicoes.ActivePageIndex := 0;
  edtPesquisa.SetFocus;
  lblQtdServidores.Caption := '0';
end;

procedure TfrmUpdateSubstituicaoGeral.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //mmoSQL.Visible := not mmoSQL.Visible;
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateSubstituicaoGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Timer1.Enabled := true;

  {case Key of
    VK_RETURN:
    begin
      if IntToStr(pesquisarPessoal(edtPesquisa.Text)) = '0' then ShowMessage('A pesquisa n�o localizou procuradores com esse nome ou matr�cula.');
    end;

    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end}
end;

function TfrmUpdateSubstituicaoGeral.pesquisarPessoal(
  valor: String): Integer;
var wSQL: String;
begin
  with qryPesquisa do
  begin
    Active := false;
    SQL.Clear;
    wSQL := 'SELECT Nome, pes.idPessoal, ser.idServidor'
    + ', ser.idCargo, ser.idDesligamento, car.Descricao as Cargo, lot.Descricao as Lotacao'
    + ' FROM tbPessoal pes '
    + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
    + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
    + ' LEFT JOIN tbLotacao lot on lot.idLotacao = ser.idLotacao'
    + ' WHERE '

//    + ' Nome like ' + QuotedStr('%'+ edtPesquisa.Text + '%')

    + '('
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')

    + ' OR '
//    + ' idServidor like ' + QuotedStr('%'+ edtPesquisa.Text + '%');

    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'ser.idServidor')

    + ')'

    + ' AND (ser.idDesligamento is NULL or ser.idDesligamento = ' + QuotedStr('') + ')'

    + ' AND (LEFT(ser.idCargo,2) in ('
    + QuotedStr('PA') + ', '
    + QuotedStr('PB') + ', '
    + QuotedStr('PF') + ', '
    + QuotedStr('SP') + ', '
    + QuotedStr('JS') + ', '
    + QuotedStr('JA') + ', '
    + QuotedStr('JB') + ', '
    + QuotedStr('SJ')

    + '))'

    + ' ORDER BY pes.Nome';


    SQL.Add(wSQL);
    mmoSQL.Lines.Add(wSQL);
    Active := true;
    Result := RecordCount;
  end;

end;

procedure TfrmUpdateSubstituicaoGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateSubstituicaoGeral.btnPesquisarClick(Sender: TObject);
begin
  if IntToStr(pesquisarPessoal(edtPesquisa.Text)) = '0' then ShowMessage('A pesquisa n�o localizou procuradores com esse nome ou matr�cula.');
end;

procedure TfrmUpdateSubstituicaoGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmUpdateSubstituicaoGeral.exibirTotalDiasSubstituidos(idPessoal,
  idServidor: String): Integer;
var wSQL: String;
begin
//  with qryTotalDiasSubstituidos do
  with qryTotalDiasSubstituidos do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    'SELECT'

    + ' ANOINICIO AS ANO,'
    + ' TOTALDEDIASSUBSTITUIDOS AS ' + QuotedStr('TOTAL DE DIAS')
    + ' FROM vwSubstituicaoProcurador120DiasTotalDeDias'
    + ' WHERE (ANOINICIO = YEAR(GETDATE()) OR'
    + ' ANOINICIO = YEAR(GETDATE())-1 OR'
    + ' ANOINICIO = YEAR(GETDATE())-2 OR'
    + ' ANOINICIO = YEAR(GETDATE())-3) AND'

//    ' IDPESSOALSUBSTITUTO = :idPessoal

    + ' IDPESSOALSUBSTITUTO = ' + QuotedStr(idPessoal)
    + ' ORDER BY ANOINICIO DESC';

    SQL.Add(wSQL);
    frmLogs.mmoLog.Lines.Add(wSQL);
    Active := true;
    Result := RecordCount;
  end;

end;

procedure TfrmUpdateSubstituicaoGeral.tshRelacaoSubstituicaoShow(
  Sender: TObject);
begin
  if (qryPesquisa.Active) and (qryPesquisa.RecordCount > 0) then
  begin
    lblQtdServidores.Caption := 'Total de registros: ' +
    IntToStr(exibirTotalDiasSubstituidos(qryPesquisa.FieldValues['idPessoal']
    , qryPesquisa.FieldValues['idServidor']));

    //dmExibirTabelas.exibirProcuradorSubstituido(qryPesquisa.FieldValues['idPessoal'],
    //qryPesquisa.FieldValues['idServidor']);

    //ShowMessage(qryPesquisa.FieldValues['idPessoal']);

//    dmExibirTabelas.ExibirSubstituicoes(qryPesquisa.FieldValues['idPessoal'], 1000, 0);

    ExibirSubstituicoes(qryPesquisa.FieldValues['idPessoal'], 1000, 0);

  end;
end;

procedure TfrmUpdateSubstituicaoGeral.btnIncluirSubstituicaoClick(
  Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateSubstituicao, frmUpdateSubstituicao);
  frmUpdateSubstituicao.setarOperacao(1);

  frmUpdateSubstituicao.setarDadosServidor
  (qryPesquisa.FieldValues['idServidor'],
   qryPesquisa.FieldValues['Nome'],
   qryPesquisa.FieldValues['Cargo']);

  frmUpdateSubstituicao.setFormQueChamou('frmUpdateSubstituicaoGeral');

  frmUpdateSubstituicao.ShowModal;
  frmUpdateSubstituicao.Release;
  frmUpdateSubstituicao := nil;

end;

function TfrmUpdateSubstituicaoGeral.ExibirSubstituicoes(
  pidPessoal: String; pTop, pOrdem: integer): Integer;
var wSQL : String;
begin
  //ShowMessage('ok');
  with qryProcuradorSubstituido do
  begin
    Active := false;

    wSQL:= 'SELECT ';

    if pTop > 1 then
      wSQL := wSQL + ' TOP ' + IntToStr(pTop);

    wSQL := wSQL

    + ' pes.Nome, subst.*,  ndias = (DATEDIFF(DAY, subst.dt_inicio, subst. dt_termino)+1)'
    + ' FROM tbsubstprocurador subst'
    + ' INNER JOIN tbPessoal pes on pes.idPessoal = subst.idPessoalSubstituido'
    + ' WHERE '
//    + ' subst.idpessoalsubstituto = :procsubstituto'
//    ' IDPESSOALSUBSTITUTO = :idPessoal

    + ' IDPESSOALSUBSTITUTO = ' + QuotedStr(pidPessoal)
    + ' ORDER BY subst.dt_inicio desc, subst.dt_termino desc';

    frmLogs.mmoLog.Lines.Add(wSQL);

    SQL.Text := wSQL;

    Active := true;

    Result := qryProcuradorSubstituido.RecordCount;

  end;

end;

procedure TfrmUpdateSubstituicaoGeral.Timer1Timer(Sender: TObject);
var resultado: Integer;
begin
  if length(Trim(edtPesquisa.Text)) > 3 then
  begin
    resultado := pesquisarPessoal(edtPesquisa.Text);

    //  if IntToStr(pesquisarPessoal(edtPesquisa.Text)) = '0' then ShowMessage('A pesquisa n�o localizou procuradores com esse nome ou matr�cula.');

    case resultado of
      0:
      begin
        desabilitaRelacaoSubstituicao;
        //focarNaEdicao;
      end;
      1:
      begin
        habilitaRelacaoSubstituicao;
        //focarNaEdicao;
        pgcSubstituicoes.ActivePage := tshRelacaoSubstituicao;
        pnlCRUDSubstituicao.SetFocus;
      end;
    end;

    if resultado > 1 then habilitaRelacaoSubstituicao;

    lblQtdServidores.Caption := IntToStr(resultado);


    Timer1.Enabled := false;
  end;
end;

procedure TfrmUpdateSubstituicaoGeral.desabilitaRelacaoSubstituicao;
begin
  tshRelacaoSubstituicao.Enabled := false;
end;

procedure TfrmUpdateSubstituicaoGeral.habilitaRelacaoSubstituicao;
begin
  tshRelacaoSubstituicao.Enabled := true;
end;

procedure TfrmUpdateSubstituicaoGeral.btnExcluirFeriasClick(
  Sender: TObject);
var wMens, wOperacao, wEvento: String;
begin
  wMens := 'Aten��o! Confirma esta';
  wOperacao := 'exclus�o';
  wMens := wMens + ' ' + wOperacao + '?';

  if ConfirmaAcao(wMens, 3) = 1 then
  begin
    //ShowMessage(qryProcuradorSubstituido.FieldValues['idSubstituicao']);

    if frmUpdateSubstituicao.excluirAfastamento
    (qryProcuradorSubstituido.FieldValues['idSubstituicao'])
    then
    begin
      ShowMessage('Registro exclu�do.');

      wEvento := UpperCase(wOperacao)+ ' de substitui��o.';

      with qryProcuradorSubstituido do
      begin
        if not FieldByName('Dt_Inicio').IsNull then
        wEvento := wEvento
        + ', Data de in�cio: ' + DateToStr(FieldValues['Dt_Inicio']);

        if not FieldByName('Dt_Termino').IsNull then
        wEvento := wEvento
        + ', Data de t�rmino: ' + DateToStr(FieldValues['Dt_Termino']);
      end;


      IncluirLog
      // usu�rio, data, tabela, chave, idPessoal, idServidor, Campo, Transa��o
      (
      DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
      RetornaData(2),
      'tbAfastamento',
      //'NULL',
      qryProcuradorSubstituido.FieldValues['idSubstituicao'],
      qryProcuradorSubstituido.FieldValues['idPessoal'],
      'NULL',
      'TODOS',
      wEvento
      );

      //ShowMessage('Registrado no log de altera��es.');
    end;


    frmUpdateSubstituicaoGeral.tshRelacaoSubstituicaoShow(Self);

  end
end;

end.
