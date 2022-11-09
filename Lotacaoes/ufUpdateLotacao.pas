unit ufUpdateLotacao;

// Em 14/06/2021 foram criados os campos dt_Termino e ID na tabela
// tbHist_Lotacao. O campo ID será utilizado como chave para a alteração
// de algum registro nessa tabela.
// O campo dt_Termino deverá substituir o atual campo dt_Lotacao
// quando a versão anterior do sistema for desativada
// pois naquela versão o registro do término da lotação e feito naquele compo

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, DB, ADODB, cxMemo, DBCtrls;

type
  TfrmUpdateLotacao = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    lblLotacaoNova: TLabel;
    lblDt_NomeacaoFuncao: TLabel;
    edtDtLotacao: TcxDateEdit;
    lkpLotacao: TcxLookupComboBox;
    qryLotacao: TADOQuery;
    dsLotacao: TDataSource;
    mmoSQL: TcxMemo;
    Label14: TLabel;
    txtLotacaoAnterior: TDBText;
    txtIdLotacao: TDBText;
    btnSelLotacao: TcxButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtDtLotacaoExit(Sender: TObject);
    procedure btnSelLotacaoClick(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    function mesmaLotacao:boolean;

    function retornarLotacao: boolean;

    function diaAnterior(Data:TDateTime):TDateTime;

    function setarOperacao(tipo: Integer):boolean;

    procedure configurarOperacao;

    function lotacaoEstaNoHistorico
    (idPessoal, idServidor, idLotacao: String):boolean;

    function gravarLotacao
    (idPessoal, idServidor, idLotacao, Dt_Lotacao: String):boolean;

    function registrarHistoricoLotacao
    (idPessoal, idServidor, idLotacao, Dt_Lotacao: String):boolean;

  end;

var
  frmUpdateLotacao: TfrmUpdateLotacao;

implementation

uses uDMConexao, uDmCadastroServidor, ufUpdateServidor, uPesFuncoes,
  uDmExibirTabelas, Math, uDMPessoal, ufCriterioPesquisaPessoal,
  ufSelLotacao, ufCreateServidor;

{$R *.dfm}

procedure TfrmUpdateLotacao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateLotacao.configurarOperacao;
begin
  case OPERACAO of
    1:      // Nova lotação
    begin
      lkpLotacao.Enabled := true;
      edtDtLotacao.Enabled := true;
    end;
  end;

end;

function TfrmUpdateLotacao.gravarLotacao(idPessoal, idServidor, idLotacao,
  Dt_Lotacao: String): boolean;
var SQL_Lotacao: string;
begin

  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Lotacao := 'SET DATEFORMAT DMY'
    + ' UPDATE tbServidor'
    + ' SET ';

    //ShowMessage(IntToStr(operacao));

    if (OPERACAO = 1) or (OPERACAO = 3)  then   // Nova lotação
    begin
      //if OPERACAO = 1 then
      SQL_Lotacao := SQL_Lotacao
      + ' idLotacao = ' + QuotedStr(Trim(idLotacao))
      ;
    end;

    SQL_Lotacao := SQL_Lotacao
    + ' WHERE idPessoal = ' + QuotedStr(Trim(idPessoal))
    + ' AND idServidor = ' + QuotedStr(Trim(idServidor));

    SQL.Text := SQL_Lotacao;

    ShowMessage(SQL_Lotacao);

    ExecSQL;

  end;

  Result := true;

  mmoSQL.Text := SQL_Lotacao;
end;

function TfrmUpdateLotacao.lotacaoEstaNoHistorico(idPessoal, idServidor,
  idLotacao: String): boolean;
begin
//
end;

function TfrmUpdateLotacao.registrarHistoricoLotacao(idPessoal, idServidor,
  idLotacao, Dt_Lotacao: String): boolean;
var SQL_Historico: string;
begin
  with dmCadastroServidor.qryExecSQL do
  begin
    Active := false;
    SQl.Clear;
    SQL_Historico := 'SET DATEFORMAT DMY'
    + ' INSERT INTO tbHist_Lotacao'
    + ' (idPessoal, idServidor, idLotacao, dt_Lotacao) '
    + ' VALUES( '
    + QuotedStr(Trim(idPessoal))
    + ', ' + QuotedStr(Trim(idServidor))
    + ', ' + QuotedStr(Trim(idLotacao));

    if Dt_Lotacao <> '' then
      SQL_Historico := SQL_Historico
      + ', ' + QuotedStr(Trim(Dt_Lotacao)) + ')'
    else
      SQL_Historico := SQL_Historico
      + ', NULL)';


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

function TfrmUpdateLotacao.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateLotacao.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  Case OPERACAO of
    1: lblOperacao.Caption := 'NOVA LOTAÇÃO';
  end;

  configurarOperacao;

  if not retornarLotacao
  then ShowMessage('A pesquisa falhou para o campo de lotação');

end;

function TfrmUpdateLotacao.retornarLotacao: boolean;
var vSQL: String;
begin
  try
    qryLotacao.Active := false;
    vSQL :=
    'SELECT id, idLotacao, Descricao,'
    + ' Sigla, SuperLotacao, Sala, Ramal'

    + ', CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
    + ' WHEN Nova_Estrutura = 0 THEN ''NÃO'''
    + ' ELSE ''-'' END AS NovaEstrutura'

    + ' FROM tbLotacao ';

    if (OPERACAO = 1) // 'NOVA LOTAÇÃO'
    or (OPERACAO = 3) // 'EDITAR LOTAÇÃO'

    then
    vSQL := vSQL
    + 'Where '
    + ' tbLotacao.Nova_Estrutura = 1 ';

    vSQL := vSQL
    + 'Order by tbLotacao.Descricao';

    //ShowMessage(vSQL);

    qryLotacao.SQL.Text := vSQL;
    qryLotacao.Active := true;


   except
     Result := false;
  end;

  if qryLotacao.RecordCount > 0 then Result := true
  else Result := false;


end;

procedure TfrmUpdateLotacao.FormCreate(Sender: TObject);
begin
  KeyPreview := true;

  qryLotacao.Connection := DMConexao.conPessoal;
end;

procedure TfrmUpdateLotacao.btnGravarClick(Sender: TObject);
var condicao, idAlteracaoNN, idLotacaoAnt: String;
resultado : integer;
begin

  if mesmaLotacao then
  ShowMessage('A lotação selecionada é a mesma da atual. Selecione uma lotação diferente.')
  else
  begin
    case OPERACAO of //2
    1: // Nova lotação
      begin //3
        if edtDtLotacao.Text = '' then
        ShowMessage('Informe a data de lotação')
        else
        begin //4
          idLotacaoAnt := txtIdLotacao.Caption;
          if gravarLotacao(
          frmUpdateServidor.lbl_IDP.Caption,
          frmUpdateServidor.txtMatricula.Caption,  // trocar por ID (tbServidor)
          lkpLotacao.EditValue, // esse valor é correto na inclusão mas pode variar no desligmento pois há registros com a mesma descrição
          edtDtLotacao.Text,
          )
          then
          begin
            if registrarHistoricoLotacao(
            frmUpdateServidor.lbl_IDP.Caption,
            frmUpdateServidor.txtMatricula.Caption,   // trocar por ID (tbServidor)
            txtIdLotacao.Caption, //lkpFuncao.EditValue,
            DateToStr(diaAnterior(edtDtLotacao.EditValue))
            )
            then
            begin //8
              IncluirLog
              (
              DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
              RetornaData(2),
              'tbServidor, tbHist_Lotacao',
              frmUpdateServidor.lbl_IDP.Caption,
              frmUpdateServidor.lbl_IDP.Caption,
              frmUpdateServidor.txtMatricula.Caption,
              'TODOS',
              'Alteração da lotação: '
              + 'Matrícula: ' + frmUpdateServidor.txtMatricula.Caption
              + ' Nome: ' + frmUpdateServidor.edtNome.Text
              + ' Lotação nova: ' + FloatToStr(lkpLotacao.editValue)
              + ' - ' +  lkpLotacao.Text
              );

              ShowMessage('Lotação alterada com sucesso');

              dmExibirTabelas.ExibirHistoricoLotacoes
              (frmUpdateServidor.lbl_IDP.Caption,
               frmUpdateServidor.txtMatricula.Caption, 100, 0);

              // Exibir os dados do servidor após a atualização
              resultado :=
              dmPessoal.pesquisarPessoal
              (' AND pes.idPessoal = ' + QuotedStr(frmUpdateServidor.lbl_IDP.Caption)
              + ' AND serv.idServidor = ' + QuotedStr(frmUpdateServidor.txtMatricula.Caption));

              //frmUpdateLotacao.Close;

            end; //8

            // Criar um registro na tabela tbCamposAltServ

            idAlteracaoNN := InserirZeros(dmCadastroServidor.GerarID('tbCamposAltServ','idAlteracao'),12);

            dmCadastroServidor.registrarNotificaNupro
            (frmCreateServidor.SQLInsertNotificaNupro(idAlteracaoNN, '', frmUpdateServidor.txtMatricula.Caption,
            '', '', '', '', '', '', '', '', '', '', '', '',
            Trim(idLotacaoAnt), Trim(lkpLotacao.EditValue), DMConexao.Usuario.CPF, RetornaData(2)));
            
          end
        end //4
      end; //3
    end; //2
  end
end;

function TfrmUpdateLotacao.mesmaLotacao: boolean;
begin
  if lkpLotacao.EditingValue <> Null
  then if lkpLotacao.EditingValue = frmUpdateServidor.DBText11.Caption
  then Result := true
  else Result := false;
end;

function TfrmUpdateLotacao.diaAnterior(Data: TDateTime): TDateTime;
begin
  with dmPessoal.qryExecSQL do
  begin
    SQL.Clear;
    SQL.Text := 'SELECT convert(datetime,'
    + QuotedStr(DateToStr(Data))
    + ') -1 as diaAnterior';
    Active := true;

    Result := FieldValues['diaAnterior'];
  end
end;

procedure TfrmUpdateLotacao.edtDtLotacaoExit(Sender: TObject);
begin
  //ShowMessage(edtDtLotacao.Text);
  //ShowMessage(DateToStr(diaAnterior(StrToDate(edtDtLotacao.Text))));
end;

procedure TfrmUpdateLotacao.btnSelLotacaoClick(Sender: TObject);
var wIdLotacao: String;
begin
  if not Assigned(frmSelLotacao) then
  frmSelLotacao := TfrmSelLotacao.Create(Application);
  try
    frmSelLotacao.ShowModal;
    if frmSelLotacao.qryLotacao.Active then
    begin
      wIdLotacao := frmSelLotacao.retornaIdLotacao;
      if wIdLotacao <> '' then
      begin
        lkpLotacao.EditValue  := wIdLotacao;
        //edtIdAcao.SetFocus;
      end;
    end;
  finally
    frmSelLotacao.Release;
    frmSelLotacao := nil;
  end;  
end;

end.
