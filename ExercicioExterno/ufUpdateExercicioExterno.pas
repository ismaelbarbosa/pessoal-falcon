unit ufUpdateExercicioExterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DB, ADODB, cxControls, cxContainer,
  cxEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo;

type
  TfrmUpdateExercicioExterno = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    qryOrgaoExercicioExterno: TADOQuery;
    dsOrgaoExercicioExterno: TDataSource;
    lblDt_NomeacaoFuncao: TLabel;
    lblFuncao: TLabel;
    lblDt_PosseFunca: TLabel;
    lblDtDeslig_Funcao: TLabel;
    lkpOrgaoEE: TcxLookupComboBox;
    edtDtNomeacao: TcxDateEdit;
    edtDtPosse: TcxDateEdit;
    edtDtTermino: TcxDateEdit;
    btnSelecionarOEE: TcxButton;
    Label1: TLabel;
    edtDtInicio: TcxDateEdit;
    mmoSQL: TcxMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSelecionarOEEClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    function retornarOrgaoEE: boolean;
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;

    function exercicioEstaNoHistorico
    (idPessoal, idServidor, idOrgaoExercicioExterno, dt_Nomeacao: String):boolean;

    function gravarExercicio
    (idPessoal, idServidor, idOrgaoExercicioExterno
    , dt_Nomeacao, dt_Posse, dt_Inicio, dt_Termino: String):boolean;

    function registrarHistoricoExercicio
    (idPessoal, idServidor, idOrgaoExercicioExterno
    , dt_Nomeacao, dt_Posse, dt_Inicio, dt_Termino: String):boolean;

  end;

var
  frmUpdateExercicioExterno: TfrmUpdateExercicioExterno;

implementation

uses uDMConexao, ufSelOrgaoExercicioExterno, ufUpdateServidor,
  uDmExibirTabelas, uDmCadastroServidor, uPesFuncoes;

{$R *.dfm}

{ TfrmUpdateExercicioExterno }

procedure TfrmUpdateExercicioExterno.configurarOperacao;
begin
  case OPERACAO of
    1:      // Novo exerc�cio
    begin
      lkpOrgaoEE.Enabled := true;
      edtDtNomeacao.Enabled := true;
      edtDtPosse.Enabled := true;
      edtDtInicio.Enabled := true;
      edtDtTermino.Enabled := false;
    end;
    2:      // Desligar exerc�cio
    begin
      lkpOrgaoEE.Enabled := false;
      edtDtNomeacao.Enabled := false;
      edtDtPosse.Enabled := false;
      edtDtInicio.Enabled := false;
      edtDtTermino.Enabled := true;
    end
  end;

end;

function TfrmUpdateExercicioExterno.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateExercicioExterno.FormCreate(Sender: TObject);
begin
  qryOrgaoExercicioExterno.Connection := DMConexao.conPessoal;
end;

function TfrmUpdateExercicioExterno.retornarOrgaoEE: boolean;
var vSQL: String;
begin
  try
    with qryOrgaoExercicioExterno do
    begin
      Active := false;

      vSQL :=
      'SELECT idOrgaoExercicioExterno, descricao as descricaoOrgao, Sigla'
      + ' FROM tbOrgaoExercicioExterno'
      + ' Order by Descricao';

      SQL.Text := vSQL;
      Active := true;
    end;
   except
     Result := false;
  end;

  if qryOrgaoExercicioExterno.RecordCount > 0 then Result := true
  else Result := false;      
end;

procedure TfrmUpdateExercicioExterno.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  Case OPERACAO of
    1: lblOperacao.Caption := 'NOVO EXERC�CIO';
    2: lblOperacao.Caption := 'DESLIGAR EXERC�CIO';
  end;

  //edtExercicio.SetFocus;

  configurarOperacao;

  if not retornarOrgaoEE
  then ShowMessage('A pesquisa falhou para o campo de �rg�os');

end;

procedure TfrmUpdateExercicioExterno.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateExercicioExterno.btnSelecionarOEEClick(
  Sender: TObject);
begin
  Application.CreateForm(TfrmSelOrgaoExercicioExterno, frmSelOrgaoExercicioExterno);

  frmSelOrgaoExercicioExterno.ShowModal;
  frmSelOrgaoExercicioExterno.Release;
  frmSelOrgaoExercicioExterno := nil;

end;

procedure TfrmUpdateExercicioExterno.btnGravarClick(Sender: TObject);
begin
  case OPERACAO of
  1: // Novo exercicio
    begin
      if edtDtNomeacao.Text = '' then
      ShowMessage('Informe a data de nomea��o no exerc�cio')
      else
      begin
        if gravarExercicio(
        frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption,
        lkpOrgaoEE.EditValue,
        edtDtNomeacao.Text,
        edtDtPosse.Text,
        edtDtInicio.Text,
        edtDtPosse.Text
        )
        then ShowMessage('Exerc�cio externo registrado com sucesso');

        IncluirLog
        (
        DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
        RetornaData(2),
        'tbServidor, tbHist_ExercicioExterno',
        frmUpdateServidor.lbl_IDP.Caption,
        'idOrgaoExercicioExterno',
        'Altera��o do exerc�cio externo'
        + ', Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
        + ', Nome: ' + frmUpdateServidor.edtNome.Text
        + ', Exerc�cio novo: ' + lkpOrgaoEE.Text
        );

        frmUpdateExercicioExterno.Close;
      end

    end;
  2: // Desligar exerc�cio
    begin
      if edtDtTermino.Text = '' then
      ShowMessage('Informe a data de t�rmino do exerc�cio')
      else
      begin
        if exercicioEstaNoHistorico(frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption,
        IntToStr(lkpOrgaoEE.EditValue),
        edtDtNomeacao.Text)
        then ShowMessage('Exerc�cio j� se encontra no hist�rico')
        else
        begin
          if registrarHistoricoExercicio(
          frmUpdateServidor.lbl_IDP.Caption,
          frmUpdateServidor.txtMatricula.Caption,
          IntToStr(lkpOrgaoEE.EditValue),
          edtDtNomeacao.Text,
          edtDtPosse.Text,
          edtDtInicio.Text,
          edtDtTermino.Text
          )
          then
          begin
            IncluirLog
            (
              DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
              RetornaData(2),
              'tbHist_ExercicioExterno',
              frmUpdateServidor.lbl_IDP.Caption,
              'dt_TerminoExercicioExterno',
              'Registrado hist�rico do exerc�cio externo'
              + ', Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
              + ', Nome: ' + frmUpdateServidor.edtNome.Text
              + ', �rgao de exerc�cio anterior: ' + lkpOrgaoEE.Text
            );

          end
          else
          ShowMessage('Houve uma falha no registro do hist�rico');

        end;

        if gravarExercicio(
        frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption,
        IntToStr(lkpOrgaoEE.EditValue),
        edtDtNomeacao.Text,
        edtDtPosse.Text,
        edtDtInicio.Text,
        edtDtPosse.Text
        )
        then
        begin
          IncluirLog
          (
            DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
            RetornaData(2),
            'tbServidor',
            frmUpdateServidor.lbl_IDP.Caption,
            'TODOS',
            'Desligamento do exerc�cio externo: '
            + 'Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
            + ' Nome: ' + frmUpdateServidor.edtNome.Text
            + ' �rgao de exerc�cio anterior: '
            + lkpOrgaoEE.Text
          );
          ShowMessage('Exerc�cio externo alterado com sucesso');
        end
        else
        ShowMessage('Houve uma falha na altera��o do exerc�cio externo');
      end
    end;
  end;

  with dmExibirTabelas.qryHistoricoExercicioExterno do
  begin
    Active := false;
    Active := true;
  end


  //dmExibirTabelas.ExibirHistoricoFuncoes(frmUpdateServidor.txtIdPessoal.Caption,
  //      frmUpdateServidor.txtMatricula.Caption, 100, 0);

end;

function TfrmUpdateExercicioExterno.exercicioEstaNoHistorico(idPessoal,
  idServidor, idOrgaoExercicioExterno,
  dt_Nomeacao: String): boolean;
begin
  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SET DATEFORMAT dmy'
    + ' SELECT ID from tbHist_ExercicioExterno'
    + ' WHERE idPesSoal = ' + QuotedStr(Trim(idPessoal))
    + ' AND idServidor = ' + QuotedStr(Trim(idServidor))
    + ' AND idOrgaoExercicioExterno = ' + QuotedStr(Trim(idOrgaoExercicioExterno))
    + ' AND dt_Nomeacao = ' + QuotedStr(Trim(dt_Nomeacao));

    mmoSQL.Text := SQL.Text;
    //ShowMessage(SQL.Text);
    Active := true;

    if dmCadastroServidor.qryExecSQL.RecordCount = 0
    then result := false
    else result := true;

  end

end;

function TfrmUpdateExercicioExterno.gravarExercicio(idPessoal, idServidor,
  idOrgaoExercicioExterno, dt_Nomeacao, dt_Posse,
  dt_Inicio, dt_Termino: String):boolean;
var SQL_Exercicio: string;
begin

  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Exercicio := 'SET DATEFORMAT DMY'
    + ' UPDATE tbServidor'
    + ' SET ';


    if OPERACAO = 1 then   // Novo exerc�cio
    begin
      SQL_Exercicio := SQL_Exercicio
      + ' idOrgaoExercicioExterno = ' + QuotedStr(Trim(idOrgaoExercicioExterno));

      if dt_Nomeacao <> '' then
        SQL_Exercicio := SQL_Exercicio + ', Dt_NomeacaoExercicioExterno = '
        + QuotedStr(dt_Nomeacao)
      else
        SQL_Exercicio := SQL_Exercicio + ', Dt_NomeacaoExercicioExterno = NULL';

      if dt_Posse <> '' then
        SQL_Exercicio := SQL_Exercicio + ', Dt_PosseExercicioExterno = '
        + QuotedStr(dt_Posse)
      else
        SQL_Exercicio := SQL_Exercicio + ', Dt_PosseExercicioExterno = NULL';

      if dt_Inicio <> '' then
        SQL_Exercicio := SQL_Exercicio + ', Dt_InicioExercicioExterno = '
        + QuotedStr(dt_Inicio)
      else
        SQL_Exercicio := SQL_Exercicio + ', Dt_InicioExercicioExterno = NULL';

      SQL_Exercicio := SQL_Exercicio +
      ', Dt_TerminoExercicioExterno= NULL';

    end

    else if OPERACAO = 2 then // Desligar fun��o
    begin
      SQL_Exercicio := SQL_Exercicio + ' idOrgaoExercicioExterno = NULL';
      SQL_Exercicio := SQL_Exercicio + ', Dt_NomeacaoExercicioExterno = NULL';
      SQL_Exercicio := SQL_Exercicio + ', Dt_PosseExercicioExterno = NULL';
      SQL_Exercicio := SQL_Exercicio + ', Dt_InicioExercicioExterno = NULL';
      SQL_Exercicio := SQL_Exercicio + ', Dt_TerminoExercicioExterno = NULL';
    end;


    SQL_Exercicio := SQL_Exercicio
    + ' WHERE idPessoal = ' + QuotedStr(Trim(idPessoal))
    + ' AND idServidor = ' + QuotedStr(Trim(idServidor));

    SQL.Text := SQL_Exercicio;

    ExecSQL;

  end;

  Result := true;

  mmoSQL.Text := SQL_Exercicio;


end;

function TfrmUpdateExercicioExterno.registrarHistoricoExercicio(idPessoal,
  idServidor, idOrgaoExercicioExterno,
  dt_Nomeacao, dt_Posse, dt_Inicio, dt_Termino: String): boolean;
var SQL_Historico: string;
begin
  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Historico := 'SET DATEFORMAT DMY'
    + ' INSERT INTO tbHist_ExercicioExterno'
    + ' (idPessoal, idServidor, idOrgaoExercicioExterno, dt_Nomeacao'
    + ', dt_Posse, dt_Inicio, dt_Termino) '
    + ' VALUES( '
    + QuotedStr(Trim(idPessoal))
    + ', ' + QuotedStr(Trim(idServidor))
    + ', ' + QuotedStr(Trim(idOrgaoExercicioExterno));


      if dt_Nomeacao <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Dt_Nomeacao))
      else
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(RetornaData(1));

      if dt_Posse <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(dt_Posse))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';

      if dt_Inicio <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(dt_Inicio))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';

      if dt_Termino <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(dt_Termino))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';


        SQL_Historico := SQL_Historico + ')';

    SQL.Text := SQL_Historico;


    try
      ExecSQL;
      Result := true;
    except
      Result := false;
    end; 

    mmoSQL.Text := SQL_Historico;

  end;
end;

end.
