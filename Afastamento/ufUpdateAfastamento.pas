unit ufUpdateAfastamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxDropDownEdit, cxCalendar, cxMemo, cxMaskEdit, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox;

type
  TfrmUpdateAfastamento = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    gbxLancamento: TcxGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    lblNProcessoSEI: TLabel;
    lkpTipoAfastamento: TcxLookupComboBox;
    edtExercicio: TcxTextEdit;
    edtProcessoSEI: TcxMaskEdit;
    Label6: TLabel;
    Label3: TLabel;
    edtDt_Termino: TcxDateEdit;
    edtDt_Inicio: TcxDateEdit;
    lblObservacao1: TLabel;
    mmoObservacao: TcxMemo;
    pnlNome: TPanel;
    lblMatricula: TLabel;
    lblNome: TLabel;
    lblCargo: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpTipoAfastamentoExit(Sender: TObject);
    procedure mmoObservacaoExit(Sender: TObject);
  private
    OPERACAO: Integer;
    FormQueChamou: Integer;
    eProcurador: boolean;
    idPessoal, idServidor: String;
  public
    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;

    function setarOperacao(tipo: Integer):boolean;
    procedure setarDadosServidor(Matricula, Nome, Cargo: String);
    procedure configurarOperacao;

    function jaExisteAfastamento(idPessoal, idServidor, idExercicio: String):boolean;
    function carregarAfastamentoExistente:boolean;

    function executarSQL(pSQL: String):boolean;
    function retornaSQLInsertAfastamento: String;
    function retornaSQLUpdateAfastamento: String;
    function exibeAfastamentoNoPeriodo(pIdPessoal, pIdServidor, pExercicio: String): Integer;
    function carregarAfastamentoParaEdicao:boolean;


  end;

var
  frmUpdateAfastamento: TfrmUpdateAfastamento;

implementation

uses uDMPessoal, ufUpdateServidor, uDmFeriasAbonoAfastamento,
  uDmExibirTabelas, uDMConexao, PRG_utils, uPesFuncoes, ufLogs,
  ufUpdateAfastamentoGeral;

{$R *.dfm}

{ TfrmUpdateAfastamento }

function TfrmUpdateAfastamento.getFormQueChamou: Integer;
begin
  Result := FormQueChamou;
end;

function TfrmUpdateAfastamento.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

function TfrmUpdateAfastamento.setFormQueChamou(Origem: String): Integer;
begin
  if Origem = 'frmUpdateServidor' then FormQueChamou := 1
  else if Origem = 'frmUpdateAfastamentoGeral' then FormQueChamou := 2;

  Result := FormQueChamou;
end;

procedure TfrmUpdateAfastamento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateAfastamento.setarDadosServidor(Matricula, Nome,
  Cargo: String);
begin
  lblMatricula.Caption := Matricula;
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;
end;

procedure TfrmUpdateAfastamento.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  Case OPERACAO of
    1:
    begin
      lblOperacao.Caption := 'INCLUS�O';
      edtExercicio.SetFocus;
    end;
    2:
    begin
      lblOperacao.Caption := 'ALTERA��O';
      //rgpParcelada.SetFocus;
    end;
  end;

  lblFQC.Caption := IntToStr(getFormQueChamou);

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //ShowMessage('1');

      idPessoal := frmUpdateServidor.lbl_IDP.Caption;
//      idServidor := frmUpdateServidor.lbl_IDS.Caption;

      idServidor := frmUpdateServidor.txtMatricula.Caption;

      //ShowMessage(idPessoal + ', ' + idServidor);
    end;

    // frmUpdateAfastamentoGeral
    2:
    begin
      //ShowMessage('2');
      //idPessoal := frmUpdateFeriasGeral.qryPesquisa.FieldValues['idPessoal'];
      //idServidor := frmUpdateFeriasGeral.qryPesquisa.FieldValues['idServidor'];

      idPessoal := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      idServidor := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];

      //ShowMessage(idPessoal + ', ' + idServidor);
    end;
  end;

  configurarOperacao;

end;

procedure TfrmUpdateAfastamento.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir afastamento
      lblOperacao.Caption := 'INCLUS�O DE AFASTAMENTO';
    2:      // Alterar afastameto
      lblOperacao.Caption :=  'ALTERA��O DE AFASTAMENTO';
  end;
end;

procedure TfrmUpdateAfastamento.btnGravarClick(Sender: TObject);
var wMens, wOperacao: String;
begin
  wMens := 'Aten��o! Confirma esta';

  case OPERACAO of //2
  // Inclus�o
    1:
    begin
      wOperacao := 'inclus�o';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;
        //if incluirAfastamento then ShowMessage('Registro inclu�do com sucesso.');

        if executarSQL(retornaSQLInsertAfastamento)
        then ShowMessage('Registro inclu�do com sucesso.');
      end;
    end;

  // Edi��o
    2:
    begin
      wOperacao := 'altera��o';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;

        //if atualizarAfastamento then ShowMessage('Registro alterado com sucesso.');

        if executarSQL(retornaSQLUpdateAfastamento)
        then ShowMessage('Registro alterado com sucesso.');

        //desbloquearCampos;
      end;
    end
  end;

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //ShowMessage('1');
      dmExibirTabelas.qryAfastamentoServidor.Active := false;
      dmExibirTabelas.qryAfastamentoServidor.Active := true;
    end;

    // frmUpdateAfastamentoGeral
    2:
    begin
      //ShowMessage('2');
      frmUpdateAfastamentoGeral.tshRelacaoAfastamentosShow(Self);
    end;
  end;

  IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
  RetornaData(2),
  'tbAfastamento',
  'NULL',
  'TODOS',
  wOperacao + ' de afastamento: '
  + 'Matr�cula: ' + idServidor
  + ' Nome: '
  + lblNome.Caption
  + ' Exerc�cio: ' + edtExercicio.Text
  );

  frmUpdateAfastamento.Close;  

end;


function TfrmUpdateAfastamento.carregarAfastamentoExistente: boolean;
begin
//
end;

function TfrmUpdateAfastamento.exibeAfastamentoNoPeriodo(pIdPessoal,
  pIdServidor, pExercicio: String): Integer;
begin
//
end;

function TfrmUpdateAfastamento.jaExisteAfastamento(idPessoal, idServidor,
  idExercicio: String): boolean;
begin
//
end;

function TfrmUpdateAfastamento.retornaSQLInsertAfastamento: String;
var SQL_Afastamento :String;
begin

  SQL_Afastamento :=

      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbServ_Afast'
      + '(idPessoal, idExercicio, idAfastamento,'
      + ' nProcessoSEI, Dt_Inicio, Dt_Termino,'
      + ' Observacao, idServidor'
      + ')'
      + ' VALUES ('
      + QuotedStr(idPessoal)                    + ', '
      + QuotedStr(edtExercicio.Text)            + ', '
      + QuotedStr(lkpTipoAfastamento.EditValue) + ', '
      + QuotedStr(Trim(edtProcessoSEI.Text))    + ', '
      + QuotedStr(edtDt_Inicio.Text)            + ', '
      + QuotedStr(edtDt_Termino.Text)           + ', '
      + QuotedStr(TrimLeft(TrimRight(mmoObservacao.Text))) + ', '
      + QuotedStr(idServidor)
      + ')'
      ;

  Result := SQL_Afastamento;


end;

function TfrmUpdateAfastamento.retornaSQLUpdateAfastamento: String;
begin
//
end;

function TfrmUpdateAfastamento.executarSQL(pSQL: String): boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        SQL.Text := pSQL;

        frmLogs.mmoLog.Lines.Add(SQL.Text);

        ExecSQL;

      end;
    Result := true
  except
    Result := false;
  end;

end;

procedure TfrmUpdateAfastamento.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;
  //qryAbonosNoPeriodo.Connection := DMConexao.conPessoal;

  if not dmFeriasAbonoAfastamento.retornarTipoAfastamento
  then ShowMessage('A pesquisa falhou para o campo de tipo de afastamento');

end;

procedure TfrmUpdateAfastamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
      frmLogs.ShowModal;
  end

end;

procedure TfrmUpdateAfastamento.lkpTipoAfastamentoExit(Sender: TObject);
begin
  {if lkpTipoAfastamento.ItemIndex <> -1
  then
  ShowMessage(lkpTipoAfastamento.EditValue);}
end;

procedure TfrmUpdateAfastamento.mmoObservacaoExit(Sender: TObject);
begin
  ShowMessage(TrimRight(mmoObservacao.Text));
end;

function TfrmUpdateAfastamento.carregarAfastamentoParaEdicao: boolean;
begin
//
end;

end.
