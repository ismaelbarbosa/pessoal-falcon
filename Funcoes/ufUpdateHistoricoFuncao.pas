unit ufUpdateHistoricoFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, DB,
  ADODB, cxMemo, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBCtrls;

type
  TfrmUpdateHistoricoFuncao = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    lblDt_NomeacaoFuncao: TLabel;
    lblDt_NomeacaoFuncaoDODF: TLabel;
    lblFuncao: TLabel;
    lblDt_PosseFunca: TLabel;
    lblDt_ExercicioFuncao: TLabel;
    lblDtDeslig_Funcao: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    lblSimbolo: TLabel;
    lkpFuncao: TcxLookupComboBox;
    edtDtNomeacaoFuncao: TcxDateEdit;
    edtDtPosseFuncao: TcxDateEdit;
    edtDtNomeacaoFuncaoDODF: TcxDateEdit;
    edtDtExercicioFuncao: TcxDateEdit;
    edtDtDesligFuncao: TcxDateEdit;
    edtDtDesligFuncaoDODF: TcxDateEdit;
    qryFuncao: TADOQuery;
    dsFuncao: TDataSource;
    txtIDHistorico: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    function retornarFuncao: boolean;
    function setarOperacao(tipo: Integer):boolean;
    function carregarDados:boolean;
    procedure configurarOperacao;
    function gravarHistorico
    (ID, idPessoal, idServidor, idFuncao
    , Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF, Dt_PosseFuncao
    , Dt_ExercicioFuncao, Dt_Deslig_Funcao, Dt_Deslig_FuncaoDODF: String):boolean;

  end;

var
  frmUpdateHistoricoFuncao: TfrmUpdateHistoricoFuncao;

implementation

uses uDmExibirTabelas, uDMConexao, ufUpdateServidor, ufUpdateFuncao,
  uDmCadastroServidor, uPesFuncoes, ufLogs;

{$R *.dfm}

{ TfrmUpdateHistoricoFuncao }

function TfrmUpdateHistoricoFuncao.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateHistoricoFuncao.FormActivate(Sender: TObject);
var wOK: boolean;
begin
  if carregarDados then
  wOK := true
  else wOk := false;

  Case OPERACAO of
    1: lblOperacao.Caption := 'NOVO HISTÓRICO';
    2: lblOperacao.Caption := 'ATUALIZAR HISTÓRICO';
  end;

  configurarOperacao;

  if not retornarFuncao
  then ShowMessage('A pesquisa falhou para o campo de função');

  lkpFuncao.Text := dmExibirTabelas.qryHistoricoFuncoes.FieldValues['Descricao'];


end;

function TfrmUpdateHistoricoFuncao.carregarDados: boolean;
begin
  with dmExibirTabelas.qryHistoricoFuncoes do
  begin
    txtIDHistorico.Caption         := FieldValues['IDHistorico'];

    {if FieldByName('dt_nascimento').IsNull
    then edtDtNascimento.Text := ''
    else edtDtNascimento.Text := Trim(FieldValues['dt_nascimento']);}
    
  end;
end;

procedure TfrmUpdateHistoricoFuncao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateHistoricoFuncao.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
  Height := 230;
  lblSimbolo.Caption := '';

  qryFuncao.Connection := DMConexao.conPessoal;

end;

function TfrmUpdateHistoricoFuncao.retornarFuncao: boolean;
var vSQL: String;
begin
  try
    qryFuncao.Active := false;
    vSQL :=
    'SELECT tbFuncao.idFuncao, tbFuncao.Descricao, tbFuncao.idDFG '

    + ', CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
    + ' WHEN Nova_Estrutura = 0 THEN ''NÃO'''
    + ' ELSE ''-'' END AS NovaEstrutura'

    + ' FROM tbFuncao ';

    {
    if OPERACAO = 1 // 'NOVA FUNÇÃO'

    then
    vSQL := vSQL
    + 'Where '
    + ' tbFuncao.Nova_Estrutura = 1 ';
    }

    vSQL := vSQL
    + 'Order by tbFuncao.Descricao';

    frmLogs.mmoLog.Lines.Add(vSQL);

    qryFuncao.SQL.Text := vSQL;
    qryFuncao.Active := true;

   except
     Result := false;
  end;

  if qryFuncao.RecordCount > 0 then Result := true
  else Result := false;

end;

procedure TfrmUpdateHistoricoFuncao.configurarOperacao;
begin
  case OPERACAO of
    1:      // Novo histórico
    begin
      lkpFuncao.Enabled := true;
      edtDtNomeacaoFuncao.Enabled := true;
      edtDtNomeacaoFuncaoDODF.Enabled := true;
      edtDtPosseFuncao.Enabled := true;
      edtDtExercicioFuncao.Enabled := true;
      edtDtDesligFuncao.Enabled := false;
      edtDtDesligFuncaoDODF.Enabled := false;
    end;
    2:      // Atualizar histórico
    begin
      lkpFuncao.Enabled := false;
      edtDtNomeacaoFuncao.Enabled := true;
      edtDtNomeacaoFuncaoDODF.Enabled := true;
      edtDtPosseFuncao.Enabled := true;
      edtDtExercicioFuncao.Enabled := true;
      edtDtDesligFuncao.Enabled := true;
      edtDtDesligFuncaoDODF.Enabled := true;
    end
  end;

end;

procedure TfrmUpdateHistoricoFuncao.btnGravarClick(Sender: TObject);
begin

  if gravarHistorico(txtIDHistorico.Caption,
  frmUpdateServidor.lbl_IDP.Caption,
  frmUpdateServidor.txtMatricula.Caption,
  lkpFuncao.EditValue,
  edtDtNomeacaoFuncao.Text,
  edtDtNomeacaoFuncaoDODF.Text,
  edtDtPosseFuncao.Text,
  edtDtExercicioFuncao.Text,
  edtDtDesligFuncao.Text,
  edtDtDesligFuncaoDODF.Text
  )
  then
  begin
    IncluirLog
    (
    DMConexao.Usuario.CPF,
    RetornaData(2),
    'tbHist_Funcao',
    frmUpdateServidor.lbl_IDP.Caption,
    frmUpdateServidor.lbl_IDP.Caption,
    frmUpdateServidor.txtMatricula.Caption,
    'TODOS',
    'Alteração do histórico da função: '
    + 'ID: ' + txtIDHistorico.Caption
    );

    ShowMessage('Histórico alterado com sucesso');
  end;

  dmExibirTabelas.ExibirHistoricoFuncoes(frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption, 100, 0);

end;

function TfrmUpdateHistoricoFuncao.gravarHistorico
(ID, idPessoal, idServidor, idFuncao, Dt_NomeacaoFuncao,
  Dt_NomeacaoFuncaoDODF, Dt_PosseFuncao, Dt_ExercicioFuncao,
  Dt_Deslig_Funcao, Dt_Deslig_FuncaoDODF: String): boolean;
var SQL_Historico: String;
begin

  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Historico := 'SET DATEFORMAT DMY';

    if OPERACAO = 1 then   // Novo histórico
    begin
      SQL_Historico := SQL_Historico
      + ' INSERT INTO tbHist_Funcao'
      + ' idPessoal = ' + QuotedStr(Trim(idPessoal))
      + ' idServidor = ' + QuotedStr(Trim(idServidor))
      + ' idFuncao = ' + QuotedStr(Trim(idFuncao));

      if Dt_NomeacaoFuncao <> '' then
        SQL_Historico := SQL_Historico + ', Dt_NomeacaoFuncao = '
        + QuotedStr(Dt_NomeacaoFuncao)
      else
        SQL_Historico := SQL_Historico + ', Dt_NomeacaoFuncao = NULL';

      if Dt_NomeacaoFuncaoDODF <> '' then
        SQL_Historico := SQL_Historico + ', Dt_NomeacaoFuncaoDODF = '
        + QuotedStr(Dt_NomeacaoFuncaoDODF)
      else
        SQL_Historico := SQL_Historico + ', Dt_NomeacaoFuncaoDODF = NULL';

      if Dt_PosseFuncao <> '' then
        SQL_Historico := SQL_Historico + ', Dt_PosseFuncao = '
        + QuotedStr(Dt_PosseFuncao)
      else
        SQL_Historico := SQL_Historico + ', Dt_PosseFuncao = NULL';

      if Dt_ExercicioFuncao <> '' then
        SQL_Historico := SQL_Historico + ', Dt_ExercicioFuncao = '
        + QuotedStr(Dt_ExercicioFuncao)
      else
        SQL_Historico := SQL_Historico + ', Dt_ExercicioFuncao = NULL';

      SQL_Historico := SQL_Historico +
      ', Dt_Deslig_Funcao = NULL, Dt_Deslig_FuncaoDODF = NULL';

    end

    else if OPERACAO = 2 then // Atualizar histórico
    begin
      SQL_Historico := SQL_Historico
      + ' UPDATE tbHist_Funcao'
      + ' SET ';
      SQL_Historico := SQL_Historico
      + ' Dt_NomeacaoFuncao = ' + QuotedStr(Trim(Dt_NomeacaoFuncao));
      SQL_Historico := SQL_Historico
      + ', Dt_NomeacaoFuncaoDODF = ' + QuotedStr(Trim(Dt_NomeacaoFuncaoDODF));
      SQL_Historico := SQL_Historico
      + ', Dt_PosseFuncao = ' + QuotedStr(Trim(Dt_PosseFuncao));
      SQL_Historico := SQL_Historico
      + ', Dt_ExercicioFuncao = ' + QuotedStr(Trim(Dt_ExercicioFuncao));
      SQL_Historico := SQL_Historico
      + ', Dt_Deslig_Funcao = ' + QuotedStr(Trim(Dt_Deslig_Funcao));
      SQL_Historico := SQL_Historico
      + ', Dt_Deslig_FuncaoDODF = ' + QuotedStr(Trim(Dt_Deslig_FuncaoDODF));
      SQL_Historico := SQL_Historico
      + ' WHERE ID = ' + QuotedStr(Trim(ID));
    end;

    SQL.Text := SQL_Historico;

    try
      ExecSQL;
      Result := true;
    except
      Result := false;
    end

  end;

  frmLogs.mmoLog.Lines.Add('Gravar histórico da função' + chr(13) + RetornaData(3) + chr(13) + SQL_Historico);

end;

end.
