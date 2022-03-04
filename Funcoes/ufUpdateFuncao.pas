unit ufUpdateFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit,
  StdCtrls, Menus, cxButtons, ExtCtrls, DBCtrls, cxMemo, DB, ADODB;

type
  TfrmUpdateFuncao = class(TForm)
    lblDt_NomeacaoFuncao: TLabel;
    lblDt_NomeacaoFuncaoDODF: TLabel;
    lblFuncao: TLabel;
    lblDt_PosseFunca: TLabel;
    lblDt_ExercicioFuncao: TLabel;
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    lblDtDeslig_Funcao: TLabel;
    lkpFuncao: TcxLookupComboBox;
    edtDtNomeacaoFuncao: TcxDateEdit;
    edtDtPosseFuncao: TcxDateEdit;
    edtDtNomeacaoFuncaoDODF: TcxDateEdit;
    edtDtExercicioFuncao: TcxDateEdit;
    edtDtDesligFuncao: TcxDateEdit;
    Label1: TLabel;
    edtDtDesligFuncaoDODF: TcxDateEdit;
    Label31: TLabel;
    txtidFuncao: TDBText;
    txtFuncao: TDBText;
    Label32: TLabel;
    txtDtNomeacaoFuncao: TDBText;
    lblDt_PosseFuncao: TLabel;
    Label3: TLabel;
    txtDtDesligFuncao: TDBText;
    Label33: TLabel;
    txtDtExercicioFuncao: TDBText;
    Label4: TLabel;
    txtDtNomeacaFuncaoDODF: TDBText;
    txtDtPosseFuncao: TDBText;
    Label5: TLabel;
    txtDtDesligFuncaoDODF: TDBText;
    btnSelecionarFuncoes: TcxButton;
    lblOperacao: TLabel;
    btnGravarHistorico: TcxButton;
    qryFuncao: TADOQuery;
    dsFuncao: TDataSource;
    Label6: TLabel;
    lblSimbolo: TLabel;
    mmoObservacao: TcxMemo;
    Label7: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSelecionarFuncoesClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarHistoricoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lkpFuncaoExit(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    function retornarFuncao: boolean;
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;

    function funcaoEstaNoHistorico
    (idPessoal, idServidor, idFuncao, dt_NomeacaoFuncao: String):boolean;

    function gravarFuncao
    (idPessoal, idServidor, idFuncao
    , Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF, Dt_PosseFuncao
    , Dt_ExercicioFuncao, Dt_Deslig_Funcao, Dt_Deslig_FuncaoDODF: String):boolean;

    function registrarHistoricoFuncao
    (idPessoal, idServidor, idFuncao
    , Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF, Dt_PosseFuncao
    , Dt_ExercicioFuncao, Dt_Deslig_Funcao, Dt_Deslig_FuncaoDODF, Observacao: String):boolean;

  end;

var
  frmUpdateFuncao: TfrmUpdateFuncao;

implementation

uses uDmCadastroServidor, ufUpdateServidor, ufSelFuncaoCadastro,
  uDmExibirTabelas, uDMConexao, uPesFuncoes, ufLogs;

{$R *.dfm}

{ TfrmUpdateFuncao }

function TfrmUpdateFuncao.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateFuncao.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  Case OPERACAO of
    1:
    begin
      lblOperacao.Caption := 'NOVA FUN��O';
      Height := 260;
    end;
    2:
    begin
      lblOperacao.Caption := 'DESLIGAR FUN��O';
      Height := 380;
    end;
    3:
    begin
      lblOperacao.Caption := 'EDITAR FUN��O';
      Height := 260;
    end;
  end;

  //edtExercicio.SetFocus;

  configurarOperacao;

  if not retornarFuncao
  then ShowMessage('A pesquisa falhou para o campo de fun��o');

end;

procedure TfrmUpdateFuncao.configurarOperacao;
begin
  case OPERACAO of
    1:      // Nova fun��o
    begin
      lkpFuncao.Enabled := true;
      edtDtNomeacaoFuncao.Enabled := true;
      edtDtNomeacaoFuncaoDODF.Enabled := true;
      edtDtPosseFuncao.Enabled := true;
      edtDtExercicioFuncao.Enabled := true;
      edtDtDesligFuncao.Enabled := false;
      edtDtDesligFuncaoDODF.Enabled := false;

      mmoObservacao.Visible := false;

    end;
    2:      // Desligar fun��o
    begin
      lkpFuncao.Enabled := false; //Properties.ReadOnly := true;
      edtDtNomeacaoFuncao.Enabled := false;
      edtDtNomeacaoFuncaoDODF.Enabled := false;
      edtDtPosseFuncao.Enabled := false;
      edtDtExercicioFuncao.Enabled := false;
      edtDtDesligFuncao.Enabled := true;
      edtDtDesligFuncaoDODF.Enabled := true;

      mmoObservacao.Visible := true;

    end;
    3:      // Editar fun��o
    begin
      lkpFuncao.Enabled := true; //Properties.ReadOnly := true;
      edtDtNomeacaoFuncao.Enabled := true;
      edtDtNomeacaoFuncaoDODF.Enabled := true;
      edtDtPosseFuncao.Enabled := true;
      edtDtExercicioFuncao.Enabled := true;
      edtDtDesligFuncao.Enabled := false;
      edtDtDesligFuncaoDODF.Enabled := false;

      mmoObservacao.Visible := false;

    end

  end;
end;

function TfrmUpdateFuncao.gravarFuncao
    (idPessoal, idServidor, idFuncao
    , Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF, Dt_PosseFuncao
    , Dt_ExercicioFuncao, Dt_Deslig_Funcao, Dt_Deslig_FuncaoDODF: String):boolean;
var SQL_Funcao: string;
begin

  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Funcao := 'SET DATEFORMAT DMY'
    + ' UPDATE tbServidor'
    + ' SET ';

    //ShowMessage(IntToStr(operacao));

    if (OPERACAO = 1) or (OPERACAO = 3)  then   // Nova fun��o
    begin
      //if OPERACAO = 1 then
      SQL_Funcao := SQL_Funcao
      + ' idFuncao = ' + QuotedStr(Trim(idFuncao))
      + ', ';

      if Dt_NomeacaoFuncao <> '' then
        SQL_Funcao := SQL_Funcao + ' Dt_NomeacaoFuncao = '
        + QuotedStr(Dt_NomeacaoFuncao)
      else
        SQL_Funcao := SQL_Funcao + ' Dt_NomeacaoFuncao = NULL';

      if Dt_NomeacaoFuncaoDODF <> '' then
        SQL_Funcao := SQL_Funcao + ', Dt_NomeacaoFuncaoDODF = '
        + QuotedStr(Dt_NomeacaoFuncaoDODF)
      else
        SQL_Funcao := SQL_Funcao + ', Dt_NomeacaoFuncaoDODF = NULL';

      if Dt_PosseFuncao <> '' then
        SQL_Funcao := SQL_Funcao + ', Dt_PosseFuncao = '
        + QuotedStr(Dt_PosseFuncao)
      else
        SQL_Funcao := SQL_Funcao + ', Dt_PosseFuncao = NULL';

      if Dt_ExercicioFuncao <> '' then
        SQL_Funcao := SQL_Funcao + ', Dt_ExercicioFuncao = '
        + QuotedStr(Dt_ExercicioFuncao)
      else
        SQL_Funcao := SQL_Funcao + ', Dt_ExercicioFuncao = NULL';

      SQL_Funcao := SQL_Funcao +
      ', Dt_Deslig_Funcao = NULL, Dt_Deslig_FuncaoDODF = NULL';

      {if mmoObservacao.Text <> '' then
        SQL_Funcao := SQL_Funcao + ', Observacao = '
        + QuotedStr(mmoObservacao.Text);}

    end

    else if OPERACAO = 2 then // Desligar fun��o
    begin
      SQL_Funcao := SQL_Funcao + ' idFuncao = NULL';
      SQL_Funcao := SQL_Funcao + ', Dt_NomeacaoFuncao = NULL';
      SQL_Funcao := SQL_Funcao + ', Dt_NomeacaoFuncaoDODF = NULL';
      SQL_Funcao := SQL_Funcao + ', Dt_PosseFuncao = NULL';
      SQL_Funcao := SQL_Funcao + ', Dt_ExercicioFuncao = NULL';
      SQL_Funcao := SQL_Funcao + ', Dt_Deslig_Funcao = NULL';
      SQL_Funcao := SQL_Funcao + ', Dt_Deslig_FuncaoDODF = NULL';

      //SQL_Funcao := SQL_Funcao + ', Observacao = '   + QuotedStr(mmoObservacao.Text); ???????????????????

    end;


    SQL_Funcao := SQL_Funcao
    + ' WHERE idPessoal = ' + QuotedStr(Trim(idPessoal))
    + ' AND idServidor = ' + QuotedStr(Trim(idServidor));

    SQL.Text := SQL_Funcao;

    frmLogs.mmoLog.Lines.Add('Atualiza��o da fun��o' + chr(13) + RetornaData(3) + SQL_Funcao);

    ExecSQL;

  end;

  Result := true;

end;

procedure TfrmUpdateFuncao.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmUpdateFuncao.registrarHistoricoFuncao
    (idPessoal, idServidor, idFuncao
    , Dt_NomeacaoFuncao, Dt_NomeacaoFuncaoDODF, Dt_PosseFuncao
    , Dt_ExercicioFuncao, Dt_Deslig_Funcao, Dt_Deslig_FuncaoDODF
    , Observacao: String):boolean;
var SQL_Historico: string;
begin
  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Historico := 'SET DATEFORMAT DMY'
    + ' INSERT INTO tbHist_Funcao'
    + ' (idPessoal, idServidor, idFuncao, dt_NomeacaoFuncao'
    + ', dt_NomeacaoFuncaoDODF, dt_PosseFuncao, dt_ExercicioFuncao'
    + ', dt_Deslig_Funcao, dt_Deslig_FuncaoDODF, dtHistorico, Observacao) '
    + ' VALUES( '
    + QuotedStr(Trim(idPessoal))
    + ', ' + QuotedStr(Trim(idServidor))
    + ', ' + QuotedStr(Trim(idFuncao));

//    + ', ' + QuotedStr(Trim(Dt_NomeacaoFuncao))

      if Dt_NomeacaoFuncao <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Dt_NomeacaoFuncao))
      else
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(RetornaData(1));

        //+ ', GETDATE()';
        //+ ', NULL';

//    + ', ' + QuotedStr(Trim(Dt_NomeacaoFuncaoDODF))

      if Dt_NomeacaoFuncaoDODF <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Dt_NomeacaoFuncaoDODF))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';

//    + ', ' + QuotedStr(Trim(Dt_PosseFuncao))

      if Dt_PosseFuncao <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Dt_PosseFuncao))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';

//    + ', ' + QuotedStr(Trim(Dt_ExercicioFuncao))
      if Dt_PosseFuncao <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Dt_PosseFuncao))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';


//    + ', ' + QuotedStr(Trim(Dt_Deslig_Funcao))
      if Dt_Deslig_Funcao <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Dt_Deslig_Funcao))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';

//    + ', ' + QuotedStr(Trim(Dt_Deslig_FuncaoDODF))
      if Dt_Deslig_FuncaoDODF <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Dt_Deslig_FuncaoDODF))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';

        SQL_Historico := SQL_Historico + ', GETDATE()';

      if Observacao <> '' then
        SQL_Historico := SQL_Historico
        + ', ' + QuotedStr(Trim(Observacao))
      else
        SQL_Historico := SQL_Historico
        + ', NULL';

    SQL_Historico := SQL_Historico  + ')';


    SQL.Text := SQL_Historico;

    try
      ExecSQL;
      Result := true;
    except
      Result := false;
    end;

    frmLogs.mmoLog.Lines.Add('Inclus�o do hist�rico da fun��o' + chr(13) + RetornaData(3) + SQL_Historico);

  end;

end;

procedure TfrmUpdateFuncao.btnGravarClick(Sender: TObject);
begin //1
  case OPERACAO of //2
  1: // Nova fun��o
    begin //3
      if edtDtNomeacaoFuncao.Text = '' then
      ShowMessage('Informe a data de nomea��o na fun��o')
      else
      begin //4
        if gravarFuncao(
        frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption,  // trocar por ID (tbServidor)
        lkpFuncao.EditValue, // esse valor � correto na inclus�o mas pode variar no desligmento pois h� registros com a mesma descri��o
        edtDtNomeacaoFuncao.Text,
        edtDtNomeacaoFuncaoDODF.Text,
        edtDtPosseFuncao.Text,
        edtDtExercicioFuncao.Text,
        edtDtDesligFuncao.Text,
        edtDtDesligFuncaoDODF.Text
        )
        then ShowMessage('Fun��o alterada com sucesso');

        IncluirLog
        (
        DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
        RetornaData(2),
        'tbServidor, tbHist_Funcao',
        frmUpdateServidor.lbl_IDP.Caption,
        'TODOS',
        'Altera��o da fun��o: '
        + 'Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
        + ' Nome: ' + frmUpdateServidor.edtNome.Text
        + ' Fun��o nova: ' + FloatToStr(lkpFuncao.editValue)
        + ' - ' +  lkpFuncao.Text
        );

        frmUpdateFuncao.Close;

      end //4

    end; //3
  2: // Desligar fun��o
    begin //5
      if edtDtDesligFuncao.Text = '' then
      ShowMessage('Informe a data de desligamento na fun��o')
      else
      begin //6
        if funcaoEstaNoHistorico(frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption, // trocar por ID (tbServidor)
        lkpFuncao.EditValue,
        edtDtNomeacaoFuncao.Text)
        then ShowMessage('Func�o j� se encontra no hist�rico')
        else
        begin //7
          //ShowMessage('Func�o n�o se encontra no hist�rico');

          if registrarHistoricoFuncao(
          frmUpdateServidor.lbl_IDP.Caption,
          frmUpdateServidor.txtMatricula.Caption,   // trocar por ID (tbServidor)
          frmUpdateServidor.txtidFuncao.Caption, //lkpFuncao.EditValue,
          edtDtNomeacaoFuncao.Text,
          edtDtNomeacaoFuncaoDODF.Text,
          edtDtPosseFuncao.Text,
          edtDtExercicioFuncao.Text,
          edtDtDesligFuncao.Text,
          edtDtDesligFuncaoDODF.Text,
          mmoObservacao.Text
          )
          then
          begin //8
            IncluirLog
            (
              DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
              RetornaData(2),
              'tbHist_Funcao',
              frmUpdateServidor.lbl_IDP.Caption,
              'TODOS',
              'Registrado hist�rico da fun��o: '
              + 'Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
              + ' Nome: ' + frmUpdateServidor.edtNome.Text
              + ' Fun��o anterior: '
              + frmUpdateServidor.txtidFuncao.Caption

              // lkpFuncao.editValue
              + ' - '
              +  lkpFuncao.Text
            );

            //ShowMessage('Hist�rico registrado com sucesso');
            //dmExibirTabelas.qryHistoricoFuncoes.CursorLocation := clUseServer;
            //dmExibirTabelas.qryHistoricoFuncoes.Refresh; -- d� erro
          end //8
          else
          ShowMessage('Houve uma falha no registro do hist�rico');

        end; //7

        if gravarFuncao(
        frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption,
        frmUpdateServidor.txtidFuncao.Caption, // lkpFuncao.EditValue,
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
            DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
            RetornaData(2),
            'tbServidor',
            frmUpdateServidor.lbl_IDP.Caption,
            'TODOS',
            'Desligamento da fun��o: '
            + 'Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
            + ' Nome: ' + frmUpdateServidor.edtNome.Text
            + ' Fun��o anterior: '
            + frmUpdateServidor.txtidFuncao.Caption //+ lkpFuncao.editValue
            + ' - '
            +  lkpFuncao.Text
          );
          ShowMessage('Fun��o alterada com sucesso');
        end
        else
        ShowMessage('Houve uma falha na altera��o da fun��o');


        //frmUpdateFuncao.Close;

      end //6
    end; //5

// editar in�cio

  3: // Editar fun��o
    begin //9
      if edtDtExercicioFuncao.Text = '' then
      ShowMessage('Informe a data de exerc�cio na fun��o')
      else
      begin //10
        {if gravarFuncao(
        frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption,
        frmUpdateServidor.txtidFuncao.Caption, // lkpFuncao.EditValue,
        edtDtNomeacaoFuncao.Text,
        edtDtNomeacaoFuncaoDODF.Text,
        edtDtPosseFuncao.Text,
        edtDtExercicioFuncao.Text,
        edtDtDesligFuncao.Text,
        edtDtDesligFuncaoDODF.Text}

        if gravarFuncao(
        frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption,  // trocar por ID (tbServidor)
        lkpFuncao.EditValue, // esse valor � correto na inclus�o mas pode variar no desligmento pois h� registros com a mesma descri��o
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
            DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
            RetornaData(2),
            'tbServidor',
            frmUpdateServidor.lbl_IDP.Caption,
            'TODOS',
            'Edi��o da fun��o: '
            + 'Matr�cula: ' + frmUpdateServidor.txtMatricula.Caption
            + ' Nome: ' + frmUpdateServidor.edtNome.Text
            + ' Fun��o corrigida: '
            + frmUpdateServidor.txtidFuncao.Caption //+ lkpFuncao.editValue
            + ' - '
            +  lkpFuncao.Text
          );
          ShowMessage('Fun��o alterada com sucesso');
        end
        else
        ShowMessage('Houve uma falha na altera��o da fun��o');


        //frmUpdateFuncao.Close;

      end //10
    end; //9

// editar fim

  end; //2

  dmExibirTabelas.ExibirHistoricoFuncoes(frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption, 100, 0);

end; //1

procedure TfrmUpdateFuncao.btnSelecionarFuncoesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSelFuncaoCadastro, frmSelFuncaoCadastro);

  frmSelFuncaoCadastro.ShowModal;
  frmSelFuncaoCadastro.Release;
  frmSelFuncaoCadastro := nil;

end;

procedure TfrmUpdateFuncao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateFuncao.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
  Height := 370;
  lblSimbolo.Caption := '';
  
  qryFuncao.Connection := DMConexao.conPessoal;
end;

procedure TfrmUpdateFuncao.btnGravarHistoricoClick(Sender: TObject);
begin
  if registrarHistoricoFuncao(
  frmUpdateServidor.lbl_IDP.Caption,
  frmUpdateServidor.txtMatricula.Caption,
  lkpFuncao.EditValue,
  edtDtNomeacaoFuncao.Text,
  edtDtNomeacaoFuncaoDODF.Text,
  edtDtPosseFuncao.Text,
  edtDtExercicioFuncao.Text,
  edtDtDesligFuncao.Text,
  edtDtDesligFuncaoDODF.Text,
  mmoObservacao.Text
  )
  then ShowMessage('Hist�rico registrado com sucesso');
end;

procedure TfrmUpdateFuncao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmUpdateServidor.refreshDados;
  dmExibirTabelas.ExibirHistoricoFuncoes(frmUpdateServidor.lbl_IDP.Caption,
        frmUpdateServidor.txtMatricula.Caption, 100, 0);
end;

function TfrmUpdateFuncao.retornarFuncao: boolean;
var vSQL: String;
begin
  try
    qryFuncao.Active := false;
    vSQL :=
    'SELECT tbFuncao.id, tbFuncao.idFuncao, tbFuncao.Descricao'
    + ', tbFuncao.idDFG '

    + ', CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
    + ' WHEN Nova_Estrutura = 0 THEN ''N�O'''
    + ' ELSE ''-'' END AS NovaEstrutura'

    + ' FROM tbFuncao ';

    if (OPERACAO = 1) // 'NOVA FUN��O'
    or (OPERACAO = 3) // 'EDITAR FUN��O'

    then
    vSQL := vSQL
    + 'Where '
    + ' tbFuncao.Nova_Estrutura = 1 ';

    vSQL := vSQL
    + 'Order by tbFuncao.Descricao';

    //ShowMessage(vSQL);
    
    qryFuncao.SQL.Text := vSQL;
    qryFuncao.Active := true;

   except
     Result := false;
  end;

  if qryFuncao.RecordCount > 0 then Result := true
  else Result := false;

end;

procedure TfrmUpdateFuncao.lkpFuncaoExit(Sender: TObject);
var valor: String;
begin

  if Trim(lkpFuncao.Text) <> '' then
  begin
    with lkpFuncao.Properties.Grid.DataController do
    valor := Values[FocusedRecordIndex, 0];

    lblSimbolo.Caption := valor;
  end;
end;

function TfrmUpdateFuncao.funcaoEstaNoHistorico(idPessoal, idServidor,
  idFuncao, dt_NomeacaoFuncao: String): boolean;
begin
  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SET DATEFORMAT dmy'
    + ' SELECT ID from tbHist_Funcao'
    + ' WHERE idPesSoal = ' + QuotedStr(Trim(idPessoal))
    + ' AND idServidor = ' + QuotedStr(Trim(idServidor))
    + ' AND idFuncao = ' + QuotedStr(Trim(idFuncao))
    + ' AND dt_NomeacaoFuncao = ' + QuotedStr(Trim(dt_NomeacaoFuncao));

    frmLogs.mmoLog.Lines.Add('Verificar se a fun��o est� no hist�rico' + chr(13) + RetornaData(3) + SQL.Text);

    Active := true;

    if dmCadastroServidor.qryExecSQL.RecordCount = 0
    then result := false
    else result := true;

  end
end;

end.