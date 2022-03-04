unit ufUpdateSubstituicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DB, ADODB, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, Provider, DBClient;

type
  TfrmUpdateSubstituicao = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    qryProcurador: TADOQuery;
    dsProcurador: TDataSource;
    lblProcuradorSubstituido: TLabel;
    lkpNome: TcxLookupComboBox;
    lblDtInicio1: TLabel;
    edtDtInicio: TcxDateEdit;
    Label1: TLabel;
    edtDtTermino: TcxDateEdit;
    lblTotalDias: TLabel;
    pnlNome: TPanel;
    lblNome: TLabel;
    lblCargo: TLabel;
    lblNProcessoSEI: TLabel;
    edtProcessoSEI: TcxMaskEdit;
    lblServidor: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtDtTerminoExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lkpNomeExit(Sender: TObject);
  private
    OPERACAO: Integer;
    FormQueChamou: Integer;
    idPessoal, idServidor: String;
  public
    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;
    procedure setarDadosServidor(Matricula, Nome, Cargo: String);

    function retornarProcuradores(exceto: String):boolean;
    function incluirSubstituicao: boolean;
    function retornaSQLInsertSubstituicao(idPessoalSubstituido, idPessoalSubstituto: String): String;
    function retornaSQLUpdateSubstituicao: String;
    function retornaSQLDeleteSubstituicao: String;

  end;

var
  frmUpdateSubstituicao: TfrmUpdateSubstituicao;

implementation

uses uDMConexao, PRG_utils, uPesFuncoes, uDmExibirTabelas,
  ufUpdateSubstituicaoGeral, uDMPessoal, ufLogs, ufUpdateServidor,
  uDmCadastroServidor;

{$R *.dfm}

procedure TfrmUpdateSubstituicao.FormCreate(Sender: TObject);
begin
  qryProcurador.Connection := DMConexao.conPessoal;
//  WindowState := wsMaximized;
  KeyPreview := true;
  dsProcurador.DataSet := qryProcurador;
end;

function TfrmUpdateSubstituicao.retornarProcuradores(exceto: String): boolean;
begin
  try
    qryProcurador.Active := false;
    qryProcurador.SQL.Text :=

    'SELECT pes.idPessoal, pes.Nome, ser.idCargo, car.Descricao as Cargo, lot.Descricao as Lotacao'
    + ' FROM tbPessoal pes'
    + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
    + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
    + ' LEFT JOIN tbLotacao lot on lot.idLotacao = ser.idLotacao'
    + ' WHERE 1=1'
    + ' AND pes.idPessoal !=' + QuotedStr(exceto)

    + ' AND ser.idDesligamento IS NULL'
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

    + 'Order by pes.Nome';

    qryProcurador.Active := true;

   except
     Result := false;
  end;

  if qryProcurador.RecordCount > 0 then Result := true
  else Result := false;

end;

procedure TfrmUpdateSubstituicao.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  lblFQC.Caption := IntToStr(getFormQueChamou);

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //eProcurador := dmPessoal.VerificarSeEProcurador
      (Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2));

      idPessoal := frmUpdateServidor.lbl_IDP.Caption;
      idServidor := frmUpdateServidor.txtMatricula.Caption;
    end;

    2:
    begin
      //eProcurador := dmPessoal.VerificarSeEProcurador
      //(Copy(frmUpdateFeriasGeral.qryPesquisa.FieldValues['idCargo'],1,2));

      idPessoal := frmUpdateSubstituicaoGeral.qryPesquisa.FieldValues['idPessoal'];
      idServidor := frmUpdateSubstituicaoGeral.qryPesquisa.FieldValues['idServidor'];
    end;
  end;

  if not retornarProcuradores(idPessoal)
  then ShowMessage('A pesquisa falhou para o campo de nome.');


  configurarOperacao;

end;

procedure TfrmUpdateSubstituicao.edtDtTerminoExit(Sender: TObject);
begin
  if edtDtInicio.Text = '' then
    ShowMessage('Informe a data de início')
  else if edtDtTermino.Text = '' then
    ShowMessage('Informe a data de término')
  else if diferencaEntreDatas(edtDtTermino.Text, edtDtInicio.Text) > 0 then
    ShowMessage('A data de término de ser posterior à data de início.')
  else
  begin
    lblTotalDias.Caption := 'Nº de dias: ' + IntToStr(diferencaEntreDatas(edtDtInicio.Text, edtDtTermino.Text)+1);
  end;
end;

procedure TfrmUpdateSubstituicao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateSubstituicao.btnGravarClick(Sender: TObject);
var wMens, wOperacao: String;
begin
  wMens := 'Atenção! Confirma esta';

  case OPERACAO of //2
  // Inclusão
    1:
    begin

      //ShowMessage('Inclusao');
      wOperacao := 'inclusão';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;

        if incluirSubstituicao then ShowMessage('Registro incluído com sucesso.');
      end;
    end;

  // Edição
    2:
    begin
      ShowMessage('Alteracao');
      wOperacao := 'alteração';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;


        //desbloquearCampos;
      end;
    end
  end;

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //dmExibirTabelas.qryFeriasServidor.Active := false;
      //dmExibirTabelas.qryFeriasServidor.Active := true;
    end;

    // frmUpdateSubstituicaoGeral
    2: frmUpdateSubstituicaoGeral.tshRelacaoSubstituicaoShow(Self);
  end;

  IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
  RetornaData(2),
  'tbSubstituicao',
  'NULL',
  'TODOS',
  wOperacao + ' de substituição de procurador: '
  + 'Matrícula: ' + idServidor
  + ' Nome: ' + lblNome.Caption
  + ' Data de início: ' + edtDtInicio.Text
  + ' - '
  + ' Data de término: ' + edtDtTermino.Text
  );


  // frmUpdateSubstituicao.Close;


end;

function TfrmUpdateSubstituicao.incluirSubstituicao: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        case getFormQueChamou of
          // frmUpdateServidor


          1: SQL.Text := retornaSQLInsertSubstituicao
             (
             //qryProcurador.FieldValues['idPessoal'],
             lkpNome.EditValue,
             frmUpdateServidor.lbl_IDP.Caption);


          // frmUpdateSubstituicaoGeral
          2: SQL.Text := retornaSQLInsertSubstituicao
             (
             //qryProcurador.FieldValues['idPessoal'],
             lkpNome.EditValue,
             frmUpdateSubstituicaoGeral.qryPesquisa.FieldValues['idPessoal']);
        end;

        if edtDtInicio.Text <> ''
        then
        begin
          ShowMessage(SQL.Text);

          frmLogs.mmoLog.Lines.Add(SQL.Text);

          ExecSQL;

          //mmoSQL.Text := SQL.Text;
        end;

      end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateSubstituicao.getFormQueChamou: Integer;
begin
  Result := FormQueChamou;
end;

function TfrmUpdateSubstituicao.setFormQueChamou(Origem: String): Integer;
begin
  if Origem = 'frmUpdateServidor' then FormQueChamou := 1
  else if Origem = 'frmUpdateSubstituicaoGeral' then FormQueChamou := 2;

  Result := FormQueChamou;
end;

function TfrmUpdateSubstituicao.retornaSQLDeleteSubstituicao: String;
begin

end;

function TfrmUpdateSubstituicao.retornaSQLInsertSubstituicao
(idPessoalSubstituido, idPessoalSubstituto: String): String;
var idSubstituicao, SQL_Ferias :String;
begin
  idSubstituicao := InserirZeros
  (dmCadastroServidor.GerarID('tbSubstProcurador', 'idSubstituicao'), 11);

  SQL_Ferias :=

      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbSubstProcurador'
      + '(idSubstituicao, idPessoalSubstituido, idPessoalSubstituto, '
      + ' nProcessoSEI, Dt_Inicio, Dt_Termino, '
      + ' Usuario, dt_Cadastramento, dt_Real'
      + ')'
      + ' VALUES ('
      + QuotedStr(idSubstituicao)   + ', '
      + QuotedStr(idPessoalSubstituido)   + ', '
      + QuotedStr(idPessoalSubstituto)    + ', '
      + QuotedStr(edtProcessoSEI.Text)    + ', '
      + QuotedStr(edtDtInicio.Text)       + ', '
      + QuotedStr(edtDtTermino.Text)      + ', '
      + QuotedStr(DMConexao.Usuario.CPF)  + ', '
      + QuotedStr(RetornaData(2)) + ', '
      + 'NULL'
      + ')';

      Result := SQL_Ferias;

end;

function TfrmUpdateSubstituicao.retornaSQLUpdateSubstituicao: String;
begin

end;

function TfrmUpdateSubstituicao.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateSubstituicao.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir substituição
    begin
      lblOperacao.Caption := 'INCLUSÃO DE SUBSTITUIÇÃO';
    end;
    2:      // Alterar substituição
    begin
      lblOperacao.Caption :=  'ALTERAÇÃO DE SUBSTITUIÇÃO';

  {Case OPERACAO of
    1: lblOperacao.Caption := 'NOVA FUNÇÃO';
    2: lblOperacao.Caption := 'DESLIGAR FUNÇÃO';
    3: lblOperacao.Caption := 'EDITAR FUNÇÃO';

  end;}

    end;

  end;

  //ShowMessage('Configurando tabelas relacionadas');

    //retornarFeriasTipoParcela(0);

    //ShowMessage('É Procurador');
    {with rgpPeriodo do
    begin
      {Buttons[0].Visible := false;
      Buttons[1].Visible := true;
      Buttons[2].Visible := true;

      Buttons[0].Enabled := false;
      Buttons[0].Font.Style := [fsStrikeOut];
      Buttons[1].Enabled := true;
      Buttons[2].Enabled := true;

      ItemIndex := 1;
    end;
    }

    {with rgpParcela do
    begin

      Buttons[0].Enabled := true;
      Buttons[1].Enabled := false;
      Buttons[2].Enabled := false;
      Buttons[3].Enabled := false;

    end}

end;

procedure TfrmUpdateSubstituicao.setarDadosServidor(Matricula, Nome,
  Cargo: String);
begin
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;
  lblServidor.Caption := Matricula
end;

procedure TfrmUpdateSubstituicao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    case key of
      VK_F12:
      frmLogs.ShowModal;
    end
  end
end;

procedure TfrmUpdateSubstituicao.lkpNomeExit(Sender: TObject);
begin
//  ShowMessage(qryProcurador.FieldValues['idPessoal']);
//  ShowMessage(lkpNome.EditValue);
end;

end.
