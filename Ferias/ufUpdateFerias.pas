unit ufUpdateFerias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxCheckBox, cxTextEdit, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, cxButtons, cxGroupBox, ExtCtrls, DBCtrls, Mask, Buttons, cxMemo,
  cxRadioGroup, DB, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB;


type
  TFerias = record
    idPessoal,
    idServidor,
    idExercicio,
    idPeriodo,
    idParcela,
    idTipoParcela,
    nProcessoSEI,
    Parcelada,
    Dt_Inicio,
    Dt_Termino,
    Dt_Altera,
    DT_InicioReagendamento,
    DT_TerminoReagendamento,
    Observacao : String;
end;

type
  TfrmUpdateFerias = class(TForm)
    gbxOperacao: TcxGroupBox;
    lblModoDesc: TLabel;
    lblModo: TLabel;
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    gbxLancamento: TcxGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    lkpTipoParcela: TcxLookupComboBox;
    edtExercicio: TcxTextEdit;
    chkAntecipacao: TcxCheckBox;
    lblNProcessoSEI: TLabel;
    rgpPeriodo: TcxRadioGroup;
    dsFeriasTipoParcela: TDataSource;
    edtProcessoSEI: TcxMaskEdit;
    lblOperacao: TLabel;
    mmoSQL: TcxMemo;
    lblFQC: TLabel;
    gbxFeriasNoPeriodo: TcxGroupBox;
    qryFeriasNoPeriodo: TADOQuery;
    dsFeriasNoPeriodo: TDataSource;
    grdFerias: TcxGrid;
    grdFeriasDBTableView1: TcxGridDBTableView;
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
    grdFeriasLevel1: TcxGridLevel;
    gbxPrimeiraParcela: TcxGroupBox;
    lblDt_TerminoPrimeira: TLabel;
    lblDtTermino1: TLabel;
    lblDtInicio1: TLabel;
    edtDtInicioPrimeira: TcxDateEdit;
    lblDt_InicioReagend1: TLabel;
    edtDt_InicioReagendamentoPrimeira: TcxDateEdit;
    lblDt_TerminoReagend1: TLabel;
    edtDt_TerminoReagendamentoPrimeira: TcxDateEdit;
    lblObservacao1: TLabel;
    mmoObservacaoPrimeira: TcxMemo;
    rgpParcelada: TcxRadioGroup;
    gbxSegundaParcela: TcxGroupBox;
    lblDt_TerminoSegunda: TLabel;
    lblDtTermino2: TLabel;
    lblDtInicio2: TLabel;
    lblDt_InicioReagend2: TLabel;
    lblDt_TerminoReagend2: TLabel;
    lblObservacao2: TLabel;
    edtDtInicioSegunda: TcxDateEdit;
    edtDt_InicioReagendamentoSegunda: TcxDateEdit;
    edtDt_TerminoReagendamentoSegunda: TcxDateEdit;
    mmoObservacaoSegunda: TcxMemo;
    gbxTerceiraParcela: TcxGroupBox;
    lblDt_TerminoTerceira: TLabel;
    lblDtTermino3: TLabel;
    lblDtInicio3: TLabel;
    lblDt_InicioReagend3: TLabel;
    lblDt_TerminoReagend3: TLabel;
    lblObservacao3: TLabel;
    edtDtInicioTerceira: TcxDateEdit;
    edtDt_InicioReagendamentoTerceira: TcxDateEdit;
    edtDt_TerminoReagendamentoTerceira: TcxDateEdit;
    mmoObservacaoTerceira: TcxMemo;
    qryRetornaAfastamentosEFeriasCoincidentes: TADOQuery;
    dsqryRetornaAfastamentosEFeriasCoincidentes: TDataSource;
    tvcIdTipoParcela: TcxGridDBColumn;
    pnlNome: TPanel;
    lblMatricula: TLabel;
    lblNome: TLabel;
    lblCargo: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxMemo1: TcxMemo;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lkpTipoParcelaExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtDtInicioPrimeiraExit(Sender: TObject);
    procedure edtExercicioKeyPress(Sender: TObject; var Key: Char);
    procedure edtDtInicioPrimeiraEnter(Sender: TObject);
    procedure edtExercicioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgpParcelaClick(Sender: TObject);
    procedure rgpParcelaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgpParceladaClick(Sender: TObject);
    procedure rgpParceladaExit(Sender: TObject);
    procedure edtDtInicioSegundaExit(Sender: TObject);
    procedure lkpTipoParcelaClick(Sender: TObject);
    procedure edtDtInicioTerceiraExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    OPERACAO: Integer;
    FormQueChamou: Integer;
    eProcurador: boolean;
    idPessoal, idServidor: String;
  public
    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;
    procedure setarDadosServidor(Matricula, Nome, Cargo: String);

    function setarOperacao(tipo: Integer):boolean;
    function retornaDataTermino(Data: TDate; TipoParcela: String; Parcela: Integer): TDate;
    procedure configurarOperacao;
    function retornarFeriasTipoParcela(idxParcela: Integer): boolean;
    function incluirFerias: boolean;
    function atualizarFerias: boolean;
    function excluirFeriasDoExercicio: boolean;
    function jaExisteFerias(idPessoal, idServidor, idExercicio: String):boolean;

    function carregarFeriasParaEdicao:boolean;

    function retornaSQLInsertFerias(parcela: Integer): String;
    function retornaSQLUpdateFerias: String;
    function retornaSQLDeleteFerias: String;

    function exibeFeriasNoPeriodo(pIdPessoal, pIdServidor, pExercicio: String): Integer;
    procedure bloquearCampos;
    procedure desbloquearCampos;

    procedure setarGrupoPrimeira(modo:Integer);
    procedure setarGrupoSegunda(modo:Integer);
    procedure setarGrupoTerceira(modo:Integer);

    procedure limparGrupoPrimeira;
    procedure limparGrupoSegunda;
    procedure limparGrupoTerceira;

    procedure setarGruposSegundaETerceira(modo:Integer);

    function HaAfastamentosOuFeriasCoincidentes
    (dtInicio, dtTermino, dtInicioAtual, dtTerminoAtual: TDate; codigoAfastamento: string): boolean;

  end;

var
  frmUpdateFerias: TfrmUpdateFerias;

implementation

uses uDMPessoal, uDmExibirTabelas, PRG_utils, uPesFuncoes, uDMConexao,
  ufLogs, ufUpdateServidor, ufUpdateFeriasGeral, uDmFeriasAbonoAfastamento;

{$R *.dfm}

var Ferias: TFerias;

procedure TfrmUpdateFerias.btnSairClick(Sender: TObject);
begin
  if btnSair.Focused then Close;
end;

procedure TfrmUpdateFerias.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  rgpParceladaClick(Self);

  Case OPERACAO of
    1:
    begin
      lblOperacao.Caption := 'INCLUSÃO';
      edtExercicio.SetFocus;
    end;
    2:
    begin
      lblOperacao.Caption := 'ALTERAÇÃO';
      rgpParcelada.SetFocus;
    end;
  end;

  lblFQC.Caption := IntToStr(getFormQueChamou);

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      //ShowMessage('1');
      eProcurador := dmPessoal.VerificarSeEProcurador
      (Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2));

      idPessoal := frmUpdateServidor.lbl_IDP.Caption;
//      idServidor := frmUpdateServidor.lbl_IDS.Caption;

      idServidor := frmUpdateServidor.txtMatricula.Caption;

      //ShowMessage(idPessoal + ', ' + idServidor);
    end;

    // frmUpdateFeriasGeral
    2:
    begin
      eProcurador := dmPessoal.VerificarSeEProcurador
      //(Copy(frmUpdateFeriasGeral.qryPesquisa.FieldValues['idCargo'],1,2));
      (Copy(DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idCargo'],1,2));

      {idPessoal := frmUpdateFeriasGeral.qryPesquisa.FieldValues['idPessoal'];
      idServidor := frmUpdateFeriasGeral.qryPesquisa.FieldValues['idServidor'];}

      idPessoal := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      idServidor := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];

      //ShowMessage(idPessoal + ', ' + idServidor);

    end;

  end;

  configurarOperacao;

  setarGrupoPrimeira(2);
  setarGrupoSegunda(2);
  setarGrupoTerceira(2);

end;

function TfrmUpdateFerias.retornaDataTermino(Data: TDate; TipoParcela: String; Parcela: Integer): TDate;
var aSomar: integer;
begin

  aSomar := 0;

  {case Parcela of
    0: ShowMessage('Zero');
    1: ShowMessage('Um');
    2: ShowMessage('Dois');
    3: ShowMessage('Três');
  end;}

  if TipoParcela = 'U'  then  aSomar := 29
  else if TipoParcela = 'A' then aSomar := 14
  else if TipoParcela = 'D' then aSomar := 9
  else
  begin
    case Parcela of
      1:
      begin
        if TipoParcela = 'B' then aSomar := 9
        else if TipoParcela = 'C' then aSomar := 19
        else if TipoParcela = 'E' then aSomar := 10
        else if TipoParcela = 'F' then aSomar := 11
        else if TipoParcela = 'G' then aSomar := 12
        else if TipoParcela = 'H' then aSomar := 13
        else if TipoParcela = 'I' then aSomar := 15
        else if TipoParcela = 'J' then aSomar := 16
        else if TipoParcela = 'K' then aSomar := 17
        else if TipoParcela = 'L' then aSomar := 18;
      end;

      2:
      begin
        if TipoParcela = 'B' then aSomar := 19
        else if TipoParcela = 'C' then aSomar := 9
        else if TipoParcela = 'E' then aSomar := 18
        else if TipoParcela = 'F' then aSomar := 17
        else if TipoParcela = 'G' then aSomar := 16
        else if TipoParcela = 'H' then aSomar := 15
        else if TipoParcela = 'I' then aSomar := 13
        else if TipoParcela = 'J' then aSomar := 12
        else if TipoParcela = 'K' then aSomar := 11
        else if TipoParcela = 'L' then aSomar := 10;
      end;
    end;
  end;

  Result := Data + aSomar;

end;

function TfrmUpdateFerias.retornarFeriasTipoParcela(idxParcela: Integer): boolean;
var wSQL: String;
begin
  with dmExibirTabelas do
  begin
    try
      qryFeriasTipoParcela.Active := false;

      if eProcurador then
      begin
        qryFeriasTipoParcela.SQL.Clear;

        wSQL := 'SELECT * FROM tbFeriasTipoParcela'
        + ' WHERE idTipoParcela in ('
        + QuotedStr('U')
        + ') ORDER BY idTipoParcela ';

        qryFeriasTipoParcela.SQL.Text := wSQL;
      end
      else
      begin
        qryFeriasTipoParcela.SQL.Clear;

        wSQL := 'SELECT * FROM tbFeriasTipoParcela'
        + ' WHERE idTipoParcela in (';

        case idxParcela of
          0 : wSQL := wSQL + QuotedStr('U');
          1 : wSQL := wSQL + QuotedStr('A')
                     + ',' + QuotedStr('B')
                     + ',' + QuotedStr('C') // adicionada a pedido da Aline (verificar)
                     + ',' + QuotedStr('D')
                     + ',' + QuotedStr('E')
                     + ',' + QuotedStr('F')
                     + ',' + QuotedStr('G')
                     + ',' + QuotedStr('H') // adicionada de I até L, a pedido da Aline (verificar);

                     + ',' + QuotedStr('I')
                     + ',' + QuotedStr('J')
                     + ',' + QuotedStr('K')
                     + ',' + QuotedStr('L');


          2 : wSQL := wSQL + QuotedStr('A')
                     + ',' + QuotedStr('D')
                     + ',' + QuotedStr('D')
                     + ',' + QuotedStr('I')
                     + ',' + QuotedStr('J')
                     + ',' + QuotedStr('K')
                     + ',' + QuotedStr('L');

          3 : wSQL := wSQL + QuotedStr('D');
        end;


        wSQL := wSQL + ') ORDER BY idTipoParcela ';

        frmLogs.mmoLog.Lines.Add(wSQL);
        //ShowMessage(wSQL);


        qryFeriasTipoParcela.SQL.Text := wSQL;
      end;

      qryFeriasTipoParcela.Active := true;

     except
       ShowMessage('Não foi possível realizar a pesquisa do Tipo de parcela de férias.');
    end;

    if qryFeriasTipoParcela.RecordCount > 0 then Result := true
    else Result := false;
  end;

end;

procedure TfrmUpdateFerias.lkpTipoParcelaExit(Sender: TObject);
begin
  lkpTipoParcelaClick(Nil);
end;

function TfrmUpdateFerias.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateFerias.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir férias
    begin
      lblOperacao.Caption := 'INCLUSÃO DE FÉRIAS';
    end;
    2:      // Alterar férias
    begin
      lblOperacao.Caption :=  'ALTERAÇÃO DE FÉRIAS';

  {Case OPERACAO of
    1: lblOperacao.Caption := 'NOVA FUNÇÃO';
    2: lblOperacao.Caption := 'DESLIGAR FUNÇÃO';
    3: lblOperacao.Caption := 'EDITAR FUNÇÃO';

  end;}

    end;

  end;

  //ShowMessage('Configurando tabelas relacionadas');

  if eProcurador
  then
  begin
    retornarFeriasTipoParcela(0);

    //ShowMessage('É Procurador');
    with rgpPeriodo do
    begin
      {Buttons[0].Visible := false;
      Buttons[1].Visible := true;
      Buttons[2].Visible := true;}

      Buttons[0].Enabled := false;
      Buttons[0].Font.Style := [fsStrikeOut];
      Buttons[1].Enabled := true;
      Buttons[2].Enabled := true;

      ItemIndex := 1;
    end;

    {with rgpParcela do
    begin

      Buttons[0].Enabled := true;
      Buttons[1].Enabled := false;
      Buttons[2].Enabled := false;
      Buttons[3].Enabled := false;

    end}

  end
  else
  begin
    //ShowMessage('Não é  Procurador');

    retornarFeriasTipoParcela(1); // (rgpParcela.ItemIndex);

    with rgpPeriodo do
    begin
      {Buttons[0].Visible := true;
      Buttons[1].Visible := false;
      Buttons[2].Visible := false;}

      Buttons[0].Enabled := true;
      Buttons[1].Enabled := false;
      Buttons[2].Enabled := false;   

      ItemIndex := 0;
    end;
  end;    
end;

procedure TfrmUpdateFerias.btnGravarClick(Sender: TObject);
var wMens, wOperacao: String;
begin
  wMens := 'Atenção! Confirma esta';

  case OPERACAO of //2
  // Inclusão
    1:
    begin
      wOperacao := 'inclusão';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;

        if incluirFerias then ShowMessage('Registro incluído com sucesso.');
      end;
    end;

  // Edição
    2:
    begin
      wOperacao := 'alteração';
      wMens := wMens + ' ' + wOperacao + '?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin
        //edtNomeExit(Self);
        //setarCampos;

        if excluirFeriasDoExercicio then
        begin
          //ShowMessage('Férias excluídas');
          if incluirFerias then ShowMessage('Registro incluído com sucesso.');
        //if atualizarFerias then ShowMessage('Registro alterado com sucesso.');
        end;

        desbloquearCampos;
      end;
    end
  end;

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      dmExibirTabelas.qryFeriasServidor.Active := false;
      dmExibirTabelas.qryFeriasServidor.Active := true;
    end;

    // frmUpdateFeriasGeral
    2: frmUpdateFeriasGeral.tshRelacaoFeriasShow(Self);
  end;

  IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
  RetornaData(2),
  'tbFerias',
  'NULL',
  'TODOS',
  wOperacao + ' de férias: '
  + 'Matrícula: ' + idServidor
  + ' Nome: ' + lblNome.Caption
  + ' Data de início: ' + edtDtInicioPrimeira.Text
  + ' - '
  + ' Data de término: ' + lblDt_TerminoPrimeira.Caption
  );


  frmUpdateFerias.Close;

end;

function TfrmUpdateFerias.atualizarFerias: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        {case getFormQueChamou of
          // frmUpdateServidor
          1: SQL.Text := retornaSQLInsertFerias
             (frmUpdateServidor.lbl_IDP.Caption,
              frmUpdateServidor.lbl_IDS.Caption);

          // frmUpdateFeriasGeral
          2: SQL.Text := retornaSQLInsertFerias
             (frmUpdateFeriasGeral.qryPesquisa.FieldValues['idPessoal'],
              frmUpdateFeriasGeral.qryPesquisa.FieldValues['idServidor']);
        end;}

        SQL.Text := retornaSQLUpdateFerias;

        frmLogs.mmoLog.Lines.Add(SQL.Text);

        ExecSQL;

        mmoSQL.Text := SQL.Text;
      end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateFerias.incluirFerias: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        {case getFormQueChamou of
          // frmUpdateServidor
          1: SQL.Text := retornaSQLInsertFerias
             (frmUpdateServidor.lbl_IDP.Caption,
              frmUpdateServidor.lbl_IDS.Caption);

          // frmUpdateFeriasGeral
          2: SQL.Text := retornaSQLInsertFerias
             (frmUpdateFeriasGeral.qryPesquisa.FieldValues['idPessoal'],
              frmUpdateFeriasGeral.qryPesquisa.FieldValues['idServidor']);
        end;}

        if edtDtInicioPrimeira.Text <> ''
        then
        begin
          //ShowMessage('Primeira OK');
          SQL.Text := retornaSQLInsertFerias(1);

          frmLogs.mmoLog.Lines.Add(SQL.Text);

          ExecSQL;

          mmoSQL.Text := SQL.Text;
        end;

        if edtDtInicioSegunda.Text <> ''
        then
        begin
          //ShowMessage('Segunda OK');
          SQL.Text := retornaSQLInsertFerias(2);

          frmLogs.mmoLog.Lines.Add(SQL.Text);

          ExecSQL;

          mmoSQL.Text := SQL.Text;
        end;

        if edtDtInicioTerceira.Text <> ''
        then
        begin
          //ShowMessage('Terceira OK');
          SQL.Text := retornaSQLInsertFerias(3);

          frmLogs.mmoLog.Lines.Add(SQL.Text);

          ExecSQL;

          mmoSQL.Text := SQL.Text;
        end

      end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateFerias.retornaSQLInsertFerias(parcela: Integer): String;
var SQL_Ferias :String;
begin

  SQL_Ferias :=

      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbFerias'
      + '(idPessoal, idExercicio, idPeriodo, idParcela, idTipoParcela, idServidor,'
      + ' nProcessoSEI, Parcelada, Dt_Inicio, Dt_Termino, Abono, Decimo,'
      + ' Antecipacao, Dt_InicioReagendamento, Dt_TerminoReagendamento,'
      + ' Observacao'
      + ')'
      + ' VALUES ('
      + QuotedStr(idPessoal)   + ', '
      + QuotedStr(edtExercicio.Text) + ', ';

      case rgpPeriodo.ItemIndex of
        0: SQL_Ferias := SQL_Ferias + QuotedStr('U');
        1: SQL_Ferias := SQL_Ferias + QuotedStr('1');
        2: SQL_Ferias := SQL_Ferias + QuotedStr('2');
      end;

      SQL_Ferias := SQL_Ferias + ', ';

      {case rgpParcela.ItemIndex of
        0: SQL_Ferias := SQL_Ferias + QuotedStr('U');
        1: SQL_Ferias := SQL_Ferias + QuotedStr('1');
        2: SQL_Ferias := SQL_Ferias + QuotedStr('2');
        3: SQL_Ferias := SQL_Ferias + QuotedStr('3');
      end;
      }

      case parcela of
        1: // primeira ou integral
        begin
          if rgpParcelada.ItemIndex = 0 // parcelada
          then SQL_Ferias := SQL_Ferias + QuotedStr('1')
          else
          if rgpParcelada.ItemIndex = 1 // integral
          then SQL_Ferias := SQL_Ferias + QuotedStr('U')
        end;
        2: SQL_Ferias := SQL_Ferias + QuotedStr('2');
        3: SQL_Ferias := SQL_Ferias + QuotedStr('3');
      end;

      SQL_Ferias := SQL_Ferias + ', ';

      SQL_Ferias := SQL_Ferias + QuotedStr(lkpTipoParcela.EditValue) + ', '
      + QuotedStr(idServidor) + ', '
      + QuotedStr(Trim(edtProcessoSEI.Text)) + ', ';

      if rgpParcelada.ItemIndex = 1 then // integral
        SQL_Ferias := SQL_Ferias + '''0'''
      else
      if rgpParcelada.ItemIndex = 0 then // parcelada
        SQL_Ferias := SQL_Ferias + '''1''';


      SQL_Ferias := SQL_Ferias + ', ';

      case parcela of
        1: // primeira ou integral
        begin
          SQL_Ferias := SQL_Ferias
          + QuotedStr(edtDtInicioPrimeira.Text) + ', '
          + QuotedStr(lblDt_TerminoPrimeira.Caption) + ', '
        end;
        2:
        begin
          SQL_Ferias := SQL_Ferias
          + QuotedStr(edtDtInicioSegunda.Text) + ', '
          + QuotedStr(lblDt_TerminoSegunda.Caption) + ', '
        end;
        3:
        begin
          SQL_Ferias := SQL_Ferias
          + QuotedStr(edtDtInicioTerceira.Text) + ', '
          + QuotedStr(lblDt_TerminoTerceira.Caption) + ', '
        end;
      end;

      //Abono, Decimo, Antecipacao

      SQL_Ferias := SQL_Ferias
      + QuotedStr('0') + ', ' + QuotedStr('0') + ', ' + QuotedStr('0') + ', ';


      case parcela of
        1: // primeira ou integral
        begin
          if edtDt_InicioReagendamentoPrimeira.Text <> '' then
            SQL_Ferias := SQL_Ferias + QuotedStr(edtDt_InicioReagendamentoPrimeira.Text) + ', '
          else
            SQL_Ferias := SQL_Ferias + 'NULL, ';

          if edtDt_TerminoReagendamentoPrimeira.Text <> '' then
            SQL_Ferias := SQL_Ferias + QuotedStr(edtDt_TerminoReagendamentoPrimeira.Text) + ', '
          else
            SQL_Ferias := SQL_Ferias + 'NULL, ';

          SQL_Ferias := SQL_Ferias + QuotedStr(mmoObservacaoPrimeira.Text) + ')';
        end;
        2:
        begin
          if edtDt_InicioReagendamentoSegunda.Text <> '' then
            SQL_Ferias := SQL_Ferias + QuotedStr(edtDt_InicioReagendamentoSegunda.Text) + ', '
          else
            SQL_Ferias := SQL_Ferias + 'NULL, ';

          if edtDt_TerminoReagendamentoSegunda.Text <> '' then
            SQL_Ferias := SQL_Ferias + QuotedStr(edtDt_TerminoReagendamentoSegunda.Text) + ', '
          else
            SQL_Ferias := SQL_Ferias + 'NULL, ';

          SQL_Ferias := SQL_Ferias + QuotedStr(mmoObservacaoSegunda.Text) + ')';
        end;
        3:
        begin
          if edtDt_InicioReagendamentoTerceira.Text <> '' then
            SQL_Ferias := SQL_Ferias + QuotedStr(edtDt_InicioReagendamentoTerceira.Text) + ', '
          else
            SQL_Ferias := SQL_Ferias + 'NULL, ';

          if edtDt_TerminoReagendamentoTerceira.Text <> '' then
            SQL_Ferias := SQL_Ferias + QuotedStr(edtDt_TerminoReagendamentoTerceira.Text) + ', '
          else
            SQL_Ferias := SQL_Ferias + 'NULL, ';

          SQL_Ferias := SQL_Ferias + QuotedStr(mmoObservacaoTerceira.Text) + ')';
        end;
      end;                                                          

  Result := SQL_Ferias;

end;

function TfrmUpdateFerias.retornaSQLUpdateFerias: String;
var SQL_Ferias: String;
begin
  SQL_Ferias :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbFerias'
      + ' SET '
      + ' Dt_Inicio = ' + QuotedStr(edtDtInicioPrimeira.Text)
      + ', Dt_Termino = ' + QuotedStr(lblDt_TerminoPrimeira.Caption)
      + ', Abono = ' + QuotedStr('0')
      + ', Decimo = ' + QuotedStr('0')
      + ', Antecipacao = ' + QuotedStr('0');


      if edtDt_InicioReagendamentoPrimeira.Text <> '' then
        SQL_Ferias := SQL_Ferias + ', Dt_InicioReagendamento = ' + QuotedStr(edtDt_InicioReagendamentoPrimeira.Text)
      else
        SQL_Ferias := SQL_Ferias + ', Dt_InicioReagendamento = NULL, ';


      if edtDt_TerminoReagendamentoPrimeira.Text <> '' then
        SQL_Ferias := SQL_Ferias + ', Dt_TerminoReagendamento = ' + QuotedStr(edtDt_TerminoReagendamentoPrimeira.Text)
      else
        SQL_Ferias := SQL_Ferias + ', Dt_TerminoReagendamento = NULL';

      SQL_Ferias := SQL_Ferias

      + ', Observacao = ' + QuotedStr(mmoObservacaoPrimeira.Text)
      + ', nProcessoSEI = ' + QuotedStr(edtProcessoSEI.Text)

      + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
      + ' AND idServidor = ' + QuotedStr(idServidor)
      + ' AND idExercicio = ' + QuotedStr(edtExercicio.Text)
      + ' AND idPeriodo = ';

      case rgpPeriodo.ItemIndex of
        0: SQL_Ferias := SQL_Ferias + QuotedStr('U');
        1: SQL_Ferias := SQL_Ferias + QuotedStr('1');
        2: SQL_Ferias := SQL_Ferias + QuotedStr('2');
      end;

      SQL_Ferias := SQL_Ferias +  ' AND idParcela = ';

{      case rgpParcela.ItemIndex of
        0: SQL_Ferias := SQL_Ferias + QuotedStr('U');
        1: SQL_Ferias := SQL_Ferias + QuotedStr('1');
        2: SQL_Ferias := SQL_Ferias + QuotedStr('2');
        3: SQL_Ferias := SQL_Ferias + QuotedStr('3');
      end;
}



  Result := SQL_Ferias;

end;

procedure TfrmUpdateFerias.edtDtInicioPrimeiraExit(Sender: TObject);
begin
  if edtDtInicioPrimeira.Text = '' then
  begin
    ShowMessage('Informe a data de início.');
    //edtDtInicioPrimeira.SetFocus;
    Abort;
  end
  else
  begin

    lblDt_TerminoPrimeira.Caption := DateToStr
    (retornaDataTermino(StrToDate(edtDtInicioPrimeira.Text), lkpTipoParcela.EditValue, 1));

    if HaAfastamentosOuFeriasCoincidentes
    (StrToDate(edtDtInicioPrimeira.Text),     StrToDate(lblDt_TerminoPrimeira.Caption),
     StrToDate(edtDtInicioPrimeira.Text),
     StrToDate(lblDt_TerminoPrimeira.Caption),
     '594') = true then
    begin
      edtDtInicioPrimeira.SetFocus;
      Abort;
    end
    else
    begin
      if edtDtInicioSegunda.Enabled then
      edtDtInicioSegunda.SetFocus
      else btnGravar.SetFocus;
    end;

  end;
end;

procedure TfrmUpdateFerias.edtExercicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then key := #0;
end;

function TfrmUpdateFerias.jaExisteFerias
(idPessoal, idServidor, idExercicio: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SELECT top 1 * from tbFerias'
    + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
    + ' AND idServidor = ' + QuotedStr(idServidor)
    + ' AND idExercicio = ' + QuotedStr(idExercicio);


    Active := true;

    if dmPessoal.qryExecSQL.RecordCount > 0 then
    begin
      with Ferias do
      begin
        idPessoal := FieldValues['idPessoal'];
        idServidor := FieldValues['idServidor'];
        idExercicio := FieldValues['idExercicio'];

        idTipoParcela := FieldValues['idTipoParcela'];
        nProcessoSEI := FieldValues['nProcessoSEI'];

        if not FieldByName('Dt_Inicio').IsNull then
        Dt_Inicio := FieldValues['Dt_Inicio'];

        if not FieldByName('Dt_Termino').IsNull then
        Dt_Termino := FieldValues['Dt_Termino'];

        if not FieldByName('Dt_InicioReagendamento').IsNull then
        DT_InicioReagendamento := FieldValues['Dt_InicioReagendamento'];

        if not FieldByName('Dt_TerminoReagendamento').IsNull then
        DT_TerminoReagendamento := FieldValues['Dt_TerminoReagendamento'];

        if not FieldByName('Observacao').IsNull then
        Observacao := FieldValues['Observacao'];

        //ShowMessage(idPessoal + ', ' + idServidor + ', ' + idExercicio);

      end;
      Result := true
    end
    else Result := false;

  end
end;

function TfrmUpdateFerias.setFormQueChamou(Origem:String): Integer;
begin
  if Origem = 'frmUpdateServidor' then FormQueChamou := 1
  else if Origem = 'frmUpdateFeriasGeral' then FormQueChamou := 2;

  Result := FormQueChamou;
end;

function TfrmUpdateFerias.getFormQueChamou: Integer;
begin
  Result := FormQueChamou;
end;

procedure TfrmUpdateFerias.edtDtInicioPrimeiraEnter(Sender: TObject);
var wPeriodo, wParcela, wMensagem: String;
begin
  if lkpTipoParcela.ItemIndex = -1 then
  begin
    ShowMessage('É necessário selecionar o tipo de parcela primeiro');
    lkpTipoParcela.SetFocus;
  end
  else
  begin
    case rgpPeriodo.ItemIndex of
     0: wPeriodo := 'U';
     1: wPeriodo := '1';
     2: wPeriodo := '2';
    end;

{    case rgpParcela.ItemIndex of
     0: wParcela := 'U';
     1: wParcela := '1';
     2: wParcela := '2';
     3: wParcela := '3';
    end;
}
    {if jaExisteFerias(idPessoal, idServidor, edtExercicio.Text, wPeriodo, wParcela)
    then
    begin
      wMensagem := 'Esse período de férias já existe para este servidor.' +
      chr(13) + 'Deseja alterar o registro de férias já gravado?';

      if ConfirmaAcao(wMensagem, 3) = 1
      then
      begin
        //ShowMessage('Confirmado');
        setarOperacao(2);
      end;
    end}

  end;

end;

procedure TfrmUpdateFerias.edtExercicioExit(Sender: TObject);
var difAno: Integer;
    wMensagem: String;
begin
  if btnSair.Focused then Close
  else
  begin
    if edtExercicio.Text = '' then
    begin
      ShowMessage('É necessário informar o exercício.');
      edtExercicio.SetFocus;
    end
    else
    begin
      difAno := StrToInt(edtExercicio.Text) -  StrToInt(Copy(RetornaData(1),7,4));

      //ShowMessage('Data atual: ' + RetornaData(1));
      //ShowMessage(IntToStr(difAno));

      if (difAno > 2) or (difAno < -60) then
      begin
        ShowMessage('Atenção! O exercício informado é inválido. Deve estar entre os anos de '
        + IntToStr(StrToInt(Copy(RetornaData(1),7,4))-60)
        + ' e '
        + IntToStr(StrToInt(Copy(RetornaData(1),7,4))+2)
        );
        edtExercicio.SetFocus;
      end
      else
      begin
        {case getFormQueChamou of
          // frmUpdateServidor
          1: exibeFeriasNoPeriodo(frmUpdateServidor.lbl_IDP.Caption,
              frmUpdateServidor.lbl_IDS.Caption, edtExercicio.Text);

          // frmUpdateFeriasGeral
          2: exibeFeriasNoPeriodo
             (frmUpdateFeriasGeral.qryPesquisa.FieldValues['idPessoal'],
              frmUpdateFeriasGeral.qryPesquisa.FieldValues['idServidor'], edtExercicio.Text);
        end;}

///

        if jaExisteFerias(idPessoal, idServidor, edtExercicio.Text)
        then
        begin
          exibeFeriasNoPeriodo(idPessoal, idServidor, edtExercicio.Text);

          wMensagem := 'Esse período de férias já existe para este servidor.' +
          chr(13) + 'Deseja alterar o registro de férias já gravado?';

          if ConfirmaAcao(wMensagem, 3) = 1
          then
          begin
            //ShowMessage('Confirmado');
            setarOperacao(2);
            configurarOperacao;
            carregarFeriasParaEdicao;
            bloquearCampos;
            edtProcessoSEI.SetFocus;
          end;
        end;
      end;
    end;
  end
end;

function TfrmUpdateFerias.exibeFeriasNoPeriodo(pIdPessoal, pIdServidor,
  pExercicio: String): Integer;
var wSQL: String;
begin
  with qryFeriasNoPeriodo do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    'SELECT'
    + ' Fer.idPessoal, Fer.idExercicio, Fer.idPeriodo, Fer.idParcela,'
    + ' Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino, Fer.idServidor,'
    + ' Fer.Dt_InicioReagendamento, Fer.Dt_TerminoReagendamento,'
    + ' Fer.Observacao,'
    + ' Fer.nProcessoSEI,'

    + ' Per.idPeriodo, Per.descricao as descricaoPeriodo,'
    + ' Par.idParcela, Par.descricao as descricaoParcela,'
    + ' Tipo.idTipoParcela, Tipo.descricao as descricaoTipo'

    + ' FROM tbFerias as Fer'
    + ' INNER JOIN tbFeriasPeriodo as Per on Per.idPeriodo = Fer.idPeriodo'
    + ' INNER JOIN tbFeriasParcela as Par on Par.idParcela = Fer.idParcela'
    + ' INNER JOIN tbFeriasTipoParcela as Tipo on Tipo.idTipoParcela = Fer.idTipoParcela'

    + ' WHERE 1=1'
    + ' and Fer.idPessoal = ' + QuotedStr(pidPessoal)
    + ' AND Fer.idServidor = ' + QuotedStr(pidServidor)
    + ' AND Fer.idExercicio = ' + QuotedStr(pExercicio)
    + ' ORDER BY Fer.idExercicio desc';

    SQL.Add(wSQL);
    mmoSQL.Lines.Add(wSQL);
    Active := true;
    Result := RecordCount;
  end;
end;

procedure TfrmUpdateFerias.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;
  qryFeriasNoPeriodo.Connection := DMConexao.conPessoal;
  qryRetornaAfastamentosEFeriasCoincidentes.Connection := DMConexao.conPessoal;
end;

procedure TfrmUpdateFerias.rgpParcelaClick(Sender: TObject);
begin
//  ShowMessage(IntToStr(rgpParcela.ItemIndex));
  retornarFeriasTipoParcela(1); //(rgpParcela.ItemIndex);
end;

procedure TfrmUpdateFerias.rgpParcelaExit(Sender: TObject);
var wPeriodo, wParcela, wMensagem: String;
begin
  case rgpPeriodo.ItemIndex of
   0: wPeriodo := 'U';
   1: wPeriodo := '1';
   2: wPeriodo := '2';
  end;

  {case rgpParcela.ItemIndex of
   0:
   begin
     wParcela := 'U';
     lkpTipoParcela.EditValue := wParcela;
     edtProcessoSEI.SetFocus;
   end;
   1: wParcela := '1';
   2: wParcela := '2';
   3: wParcela := '3';
  end;
  }

  if jaExisteFerias(idPessoal, idServidor, edtExercicio.Text)
  then
  begin
    wMensagem := 'Esse período de férias já existe para este servidor.' +
    chr(13) + 'Deseja alterar o registro de férias já gravado?';

    if ConfirmaAcao(wMensagem, 3) = 1
    then
    begin
      //ShowMessage('Confirmado');
      setarOperacao(2);
      configurarOperacao;
      carregarFeriasParaEdicao;
      bloquearCampos;
      edtProcessoSEI.SetFocus;
    end;
  end
end;

function TfrmUpdateFerias.carregarFeriasParaEdicao: boolean;
begin
  {with Ferias do
  begin
    //ShowMessage(idTipoParcela);
    lkpTipoParcela.EditValue := idTipoParcela;
    edtProcessoSEI.Text := nProcessoSEI;
    edtDtInicioPrimeira.Text := Dt_Inicio;
    lblDt_TerminoPrimeira.Caption := Dt_Termino;
    edtDt_InicioReagendamentoPrimeira.Text := Dt_InicioReagendamento;
    edtDt_TerminoReagendamentoPrimeira.Text := DT_TerminoReagendamento;
    mmoObservacaoPrimeira.Text := Observacao;
  end}

  qryFeriasNoPeriodo.Open;
  qryFeriasNoPeriodo.First;

  with qryFeriasNoPeriodo do
  begin //1
    while not Eof do
    begin //2

      { ' Fer.idPessoal, Fer.idExercicio, Fer.idPeriodo, Fer.idParcela,'
      + ' Fer.idTipoParcela, Fer.Dt_Inicio, Fer.Dt_Termino, Fer.idServidor,'
      + ' Fer.Dt_InicioReagendamento, Fer.Dt_TerminoReagendamento,'
      + ' Fer.Observacao,'
      + ' Fer.nProcessoSEI,'

      + ' Per.idPeriodo, Per.descricao as descricaoPeriodo,'
      + ' Par.idParcela, Par.descricao as descricaoParcela,'
      + ' Tipo.idTipoParcela, Tipo.descricao as descricaoTipo'}

      if (FieldValues['idParcela'] = 'U') or (FieldValues['idParcela'] = '1')
      then
      begin
        //ShowMessage('Primeira ou única');

        setarGrupoPrimeira(1);

        edtExercicio.Text := qryFeriasNoPeriodo.FieldValues['idExercicio'];

        lkpTipoParcela.EditValue := qryFeriasNoPeriodo.FieldValues['idTipoParcela'];

        if not FieldByName('nProcessoSEI').IsNull then
        edtProcessoSEI.Text := qryFeriasNoPeriodo.FieldValues['nProcessoSEI'];

        if not FieldByName('Dt_Inicio').IsNull then
        edtDtInicioPrimeira.Text := qryFeriasNoPeriodo.FieldValues['Dt_Inicio'];

        if not FieldByName('Dt_Termino').IsNull then
        lblDt_TerminoPrimeira.Caption := qryFeriasNoPeriodo.FieldValues['Dt_Termino'];

        if not FieldByName('Dt_InicioReagendamento').IsNull then
        edtDt_InicioReagendamentoPrimeira.Text := qryFeriasNoPeriodo.FieldValues['Dt_InicioReagendamento'];

        if not FieldByName('Dt_TerminoReagendamento').IsNull then
        edtDt_TerminoReagendamentoPrimeira.Text := qryFeriasNoPeriodo.FieldValues['DT_TerminoReagendamento'];

        if not FieldByName('Observacao').IsNull then
        mmoObservacaoPrimeira.Text := qryFeriasNoPeriodo.FieldValues['Observacao'];

      end

      else if (FieldValues['idParcela'] = '2')
      then
      begin
        //ShowMessage('Segunda parcela');

        setarGrupoSegunda(1);

        if not FieldByName('Dt_Inicio').IsNull then
        edtDtInicioSegunda.Text := qryFeriasNoPeriodo.FieldValues['Dt_Inicio'];

        if not FieldByName('Dt_Termino').IsNull then
        lblDt_TerminoSegunda.Caption := qryFeriasNoPeriodo.FieldValues['Dt_Termino'];

        if not FieldByName('Dt_InicioReagendamento').IsNull then
        edtDt_InicioReagendamentoSegunda.Text := qryFeriasNoPeriodo.FieldValues['Dt_InicioReagendamento'];

        if not FieldByName('Dt_TerminoReagendamento').IsNull then
        edtDt_TerminoReagendamentoSegunda.Text := qryFeriasNoPeriodo.FieldValues['DT_TerminoReagendamento'];

        if not FieldByName('Observacao').IsNull then
        mmoObservacaoSegunda.Text := qryFeriasNoPeriodo.FieldValues['Observacao'];

      end

      else if (FieldValues['idParcela'] = '3')
      then
      begin
        //ShowMessage('Terceira parcela');

        setarGrupoTerceira(1);

        if not FieldByName('Dt_Inicio').IsNull then
        edtDtInicioTerceira.Text := qryFeriasNoPeriodo.FieldValues['Dt_Inicio'];

        if not FieldByName('Dt_Termino').IsNull then
        lblDt_TerminoTerceira.Caption := qryFeriasNoPeriodo.FieldValues['Dt_Termino'];

        if not FieldByName('Dt_InicioReagendamento').IsNull then
        edtDt_InicioReagendamentoTerceira.Text := qryFeriasNoPeriodo.FieldValues['Dt_InicioReagendamento'];

        if not FieldByName('Dt_TerminoReagendamento').IsNull then
        edtDt_TerminoReagendamentoTerceira.Text := qryFeriasNoPeriodo.FieldValues['DT_TerminoReagendamento'];

        if not FieldByName('Observacao').IsNull then
        mmoObservacaoTerceira.Text := qryFeriasNoPeriodo.FieldValues['Observacao'];

        //ShowMessage('3');
        //ShowMessage(FieldByName('Dt_Inicio').AsString);
      end;

      qryFeriasNoPeriodo.Next;

    end; //2
  end //1
end;

procedure TfrmUpdateFerias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //mmoSQL.Visible := not mmoSQL.Visible;
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateFerias.bloquearCampos;
begin
  edtExercicio.Enabled := false;
  rgpPeriodo.Enabled := false;
//  lkpTipoParcela.Enabled := false;
end;

procedure TfrmUpdateFerias.desbloquearCampos;
begin
  edtExercicio.Enabled := true;
  rgpPeriodo.Enabled := true;
  lkpTipoParcela.Enabled := true;
end;

procedure TfrmUpdateFerias.rgpParceladaClick(Sender: TObject);
begin
  case rgpParcelada.ItemIndex of
    0: // parcelada
    begin
      retornarFeriasTipoParcela(1);
      setarGrupoPrimeira(1);
      setarGrupoSegunda(1); // habilitar a segunda parcela
      setarGrupoTerceira(1); // habilitar a terceira parcela

      lkpTipoParcela.SetFocus;
    end;
    1: // integral
    begin
      retornarFeriasTipoParcela(0);
      //setarGrupoPrimeira(1);
      setarGrupoSegunda(2); // desabilitar a segunda parcela
      setarGrupoTerceira(2); // desabilitar a terceira parcela
///
      lkpTipoParcela.EditValue := 'U';
      lkpTipoParcelaExit(Nil);
      edtProcessoSEI.SetFocus;
////
    end
  end;

end;

procedure TfrmUpdateFerias.rgpParceladaExit(Sender: TObject);
begin
  rgpParceladaClick(Nil);
end;

procedure TfrmUpdateFerias.setarGruposSegundaETerceira(modo:Integer);
var i : integer;
begin
  case modo of
    1: // habilita segunda
    begin
      gbxSegundaParcela.Enabled := true;
      edtDtInicioSegunda.Enabled := true;
      edtDt_InicioReagendamentoSegunda.Enabled := true;
      edtDt_TerminoReagendamentoSegunda.Enabled := true;
      mmoObservacaoSegunda.Enabled := true;

      lblDtInicio2.Enabled := true;
      lblDtTermino2.Enabled := true;
      lblDt_TerminoSegunda.Enabled := true;
      lblDt_InicioReagend2.Enabled := true;
      lblDt_TerminoReagend2.Enabled := true;
      lblObservacao2.Enabled := true;
    end;

    2: // desabilita segunda
    begin
      gbxSegundaParcela.Enabled := false;
      edtDtInicioSegunda.Enabled := false;
      edtDt_InicioReagendamentoSegunda.Enabled := false;
      edtDt_TerminoReagendamentoSegunda.Enabled := false;
      mmoObservacaoSegunda.Enabled := false;

      lblDtInicio2.Enabled := false;
      lblDtTermino2.Enabled := false;
      lblDt_TerminoSegunda.Enabled := false;
      lblDt_InicioReagend2.Enabled := false;
      lblDt_TerminoReagend2.Enabled := false;
      lblObservacao2.Enabled := false;
    end;

    3: // habilita terceira
    begin
      gbxTerceiraParcela.Enabled := true;
      edtDtInicioTerceira.Enabled := true;
      edtDt_InicioReagendamentoTerceira.Enabled := true;
      edtDt_TerminoReagendamentoTerceira.Enabled := true;
      mmoObservacaoTerceira.Enabled := true;

      lblDtInicio3.Enabled := true;
      lblDtTermino3.Enabled := true;
      lblDt_TerminoTerceira.Enabled := true;
      lblDt_InicioReagend3.Enabled := true;
      lblDt_TerminoReagend3.Enabled := true;
      lblObservacao3.Enabled := true;
    end;

    4: // desabilita terceira
    begin
      gbxTerceiraParcela.Enabled := false;
      edtDtInicioTerceira.Enabled := false;
      edtDt_InicioReagendamentoTerceira.Enabled := false;
      edtDt_TerminoReagendamentoTerceira.Enabled := false;
      mmoObservacaoTerceira.Enabled := false;

      lblDtInicio3.Enabled := false;
      lblDtTermino3.Enabled := false;
      lblDt_TerminoTerceira.Enabled := false;
      lblDt_InicioReagend3.Enabled := false;
      lblDt_TerminoReagend3.Enabled := false;
      lblObservacao3.Enabled := false;
    end;

  end;
end;

procedure TfrmUpdateFerias.edtDtInicioSegundaExit(Sender: TObject);
begin
  if edtDtInicioSegunda.Text = '' then
  begin
    ShowMessage('Informe a data de início da segunda parcela.');
    //edtDtInicioSegunda.SetFocus;
    Abort;
  end
  else
  begin
    lblDt_TerminoSegunda.Caption := DateToStr
    (retornaDataTermino(StrToDate(edtDtInicioSegunda.Text), lkpTipoParcela.EditValue, 2));

    if HaAfastamentosOuFeriasCoincidentes
    (StrToDate(edtDtInicioSegunda.Text), StrToDate(lblDt_TerminoSegunda.Caption),
     StrToDate(edtDtInicioSegunda.Text), StrToDate(lblDt_TerminoSegunda.Caption),
     '594') = true then
    begin
      edtDtInicioSegunda.SetFocus;
      Abort;
    end
    else
    begin
      if edtDtInicioTerceira.Enabled then
      edtDtInicioTerceira.SetFocus
      else btnGravar.SetFocus;
    end;
  end;
end;

function TfrmUpdateFerias.HaAfastamentosOuFeriasCoincidentes(dtInicio,
  dtTermino, dtInicioAtual, dtTerminoAtual: TDate;
  codigoAfastamento: string): boolean;
begin
//  with dmPesComplemento, dmPessoal do
//  begin

    qryRetornaAfastamentosEFeriasCoincidentes.Active := false;
    qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['idPessoal'] := idPessoal;
    //qryPessoal.FieldValues['idPessoal'];
    qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['DT_INICIO'] := dtInicio;
    qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['DT_TERMINO'] := dtTermino;
    qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['codigoAfastamento'] := codigoAfastamento;

    {if Query.State in [dsEdit] then qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['DT_INICIOATUAL'] := dtInicioAtual;
    if Query.State in [dsInsert] then qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['DT_INICIOATUAL'] := Null;

    if Query.State in [dsEdit] then qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['DT_TERMINOATUAL'] := dtTerminoAtual;
    if Query.State in [dsInsert] then qryRetornaAfastamentosEFeriasCoincidentes.Parameters.ParamValues['DT_TERMINOATUAL'] := Null;
    }
    qryRetornaAfastamentosEFeriasCoincidentes.Active := true;

    if qryRetornaAfastamentosEFeriasCoincidentes.RecordCount > 0 then
    begin
      if Messagedlg('O período que está sendo marcado coincide com o seguinte período: ' +
                      DateTimeToStr(qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['DT_INICIO']) + ' a ' +
                      DateTimeToStr(qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['DT_TERMINO']) + ' (' + qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['CODIGO'] +
                      ' - ' + qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['TipoDeAfastamento'] + ').' + ' Deseja gravá-lo mesmo assim? ', mtError, [mbOk, mbCancel], 0) = mrOk then
      begin
        Result := false;
      end
      else
      begin
        Result := true;
      end;
{
      ShowMessage('O período que está sendo marcado coincide com o seguinte período: ' +
      DateTimeToStr(qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['DT_INICIO']) + ' a ' +
      DateTimeToStr(qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['DT_TERMINO']) + ' (' + qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['CODIGO'] +
      ' - ' + qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['TipoDeAfastamento'] + ').');
}

    end//if
    else
    begin
      Result := false;
    end;
    qryRetornaAfastamentosEFeriasCoincidentes.Active := false;
//  end;//with

end;

procedure TfrmUpdateFerias.setarGrupoPrimeira(modo: Integer);
var i : integer;
begin
  case modo of
    1: // habilita primeira
    begin
      gbxPrimeiraParcela.Enabled := true;
      edtDtInicioPrimeira.Enabled := true;
      edtDt_InicioReagendamentoPrimeira.Enabled := true;
      edtDt_TerminoReagendamentoPrimeira.Enabled := true;
      mmoObservacaoPrimeira.Enabled := true;

      lblDtInicio1.Enabled := true;
      lblDtTermino1.Enabled := true;
      lblDt_TerminoPrimeira.Enabled := true;
      lblDt_InicioReagend1.Enabled := true;
      lblDt_TerminoReagend1.Enabled := true;
      lblObservacao1.Enabled := true;
    end;

    2: // desabilita primeira
    begin
      gbxPrimeiraParcela.Enabled := false;
      edtDtInicioPrimeira.Enabled := false;
      edtDt_InicioReagendamentoPrimeira.Enabled := false;
      edtDt_TerminoReagendamentoPrimeira.Enabled := false;
      mmoObservacaoPrimeira.Enabled := false;

      lblDtInicio1.Enabled := false;
      lblDtTermino1.Enabled := false;
      lblDt_TerminoPrimeira.Enabled := false;
      lblDt_InicioReagend1.Enabled := false;
      lblDt_TerminoReagend1.Enabled := false;
      lblObservacao1.Enabled := false;
    end;
  end;

end;

procedure TfrmUpdateFerias.setarGrupoSegunda(modo: Integer);
begin
  case modo of
    1: // habilita segunda
    begin
      gbxSegundaParcela.Enabled := true;
      edtDtInicioSegunda.Enabled := true;
      edtDt_InicioReagendamentoSegunda.Enabled := true;
      edtDt_TerminoReagendamentoSegunda.Enabled := true;
      mmoObservacaoSegunda.Enabled := true;

      lblDtInicio2.Enabled := true;
      lblDtTermino2.Enabled := true;
      lblDt_TerminoSegunda.Enabled := true;
      lblDt_InicioReagend2.Enabled := true;
      lblDt_TerminoReagend2.Enabled := true;
      lblObservacao2.Enabled := true;
    end;

    2: // desabilita segunda
    begin
      gbxSegundaParcela.Enabled := false;
      edtDtInicioSegunda.Enabled := false;
      edtDt_InicioReagendamentoSegunda.Enabled := false;
      edtDt_TerminoReagendamentoSegunda.Enabled := false;
      mmoObservacaoSegunda.Enabled := false;

      lblDtInicio2.Enabled := false;
      lblDtTermino2.Enabled := false;
      lblDt_TerminoSegunda.Enabled := false;
      lblDt_InicioReagend2.Enabled := false;
      lblDt_TerminoReagend2.Enabled := false;
      lblObservacao2.Enabled := false;
    end;
  end;

end;

procedure TfrmUpdateFerias.setarGrupoTerceira(modo: Integer);
begin
  case modo of
    1: // habilita terceira
    begin
      gbxTerceiraParcela.Enabled := true;
      edtDtInicioTerceira.Enabled := true;
      edtDt_InicioReagendamentoTerceira.Enabled := true;
      edtDt_TerminoReagendamentoTerceira.Enabled := true;
      mmoObservacaoTerceira.Enabled := true;

      lblDtInicio3.Enabled := true;
      lblDtTermino3.Enabled := true;
      lblDt_TerminoTerceira.Enabled := true;
      lblDt_InicioReagend3.Enabled := true;
      lblDt_TerminoReagend3.Enabled := true;
      lblObservacao3.Enabled := true;
    end;

    2: // desabilita terceira
    begin
      //ShowMessage('desabilita 3');
      gbxTerceiraParcela.Enabled := false;
      edtDtInicioTerceira.Enabled := false;
      edtDt_InicioReagendamentoTerceira.Enabled := false;
      edtDt_TerminoReagendamentoTerceira.Enabled := false;
      mmoObservacaoTerceira.Enabled := false;

      lblDtInicio3.Enabled := false;
      lblDtTermino3.Enabled := false;
      lblDt_TerminoTerceira.Enabled := false;
      lblDt_InicioReagend3.Enabled := false;
      lblDt_TerminoReagend3.Enabled := false;
      lblObservacao3.Enabled := false;
    end;
  end;

end;

procedure TfrmUpdateFerias.lkpTipoParcelaClick(Sender: TObject);
begin
  //limparGrupoPrimeira;


  if lkpTipoParcela.EditValue = 'U' then
  begin
    setarGrupoPrimeira(1);
    setarGrupoSegunda(2); // desabilitar
    setarGrupoTerceira(2); // desabilitar

    limparGrupoSegunda;
    limparGrupoTerceira;
  end
  else if lkpTipoParcela.EditValue = 'D' then
  begin
    setarGrupoPrimeira(1);
    setarGrupoSegunda(1); // habilitar
    setarGrupoTerceira(1); // habilitar
  end
  else
  begin
    setarGrupoPrimeira(1);
    setarGrupoSegunda(1); // habilitar
    setarGrupoTerceira(2); // desabilitar
    limparGrupoTerceira;
  end

end;

procedure TfrmUpdateFerias.edtDtInicioTerceiraExit(Sender: TObject);
begin
  if edtDtInicioTerceira.Text = '' then
  begin
    ShowMessage('Informe a data de início da terceira parcela.');
    //edtDtInicioTerceira.SetFocus;
    Abort;
  end
  else
  begin
    lblDt_TerminoTerceira.Caption := DateToStr
    (retornaDataTermino(StrToDate(edtDtInicioTerceira.Text), lkpTipoParcela.EditValue, 3));

    if HaAfastamentosOuFeriasCoincidentes
    (StrToDate(edtDtInicioTerceira.Text), StrToDate(lblDt_TerminoTerceira.Caption),
     StrToDate(edtDtInicioTerceira.Text), StrToDate(lblDt_TerminoTerceira.Caption),
     '594') = true then
    begin
      edtDtInicioTerceira.SetFocus;
      Abort;
    end
    else btnGravar.SetFocus;
  end;
end;

procedure TfrmUpdateFerias.limparGrupoSegunda;
begin
  edtDtInicioSegunda.Clear;
  lblDt_TerminoSegunda.Caption := '__/__/____';
  edtDt_InicioReagendamentoSegunda.Clear;
  edtDt_TerminoReagendamentoSegunda.Clear;
  mmoObservacaoSegunda.Clear;
end;

procedure TfrmUpdateFerias.limparGrupoTerceira;
begin
  edtDtInicioTerceira.Clear;
  lblDt_TerminoTerceira.Caption := '__/__/____';

  edtDt_InicioReagendamentoTerceira.Clear;
  edtDt_TerminoReagendamentoTerceira.Clear;
  mmoObservacaoTerceira.Clear;
end;

procedure TfrmUpdateFerias.Button1Click(Sender: TObject);
begin
  limparGrupoSegunda;
end;

procedure TfrmUpdateFerias.limparGrupoPrimeira;
begin
  edtDtInicioPrimeira.Clear;
  lblDt_TerminoPrimeira.Caption := '__/__/____';
  edtDt_InicioReagendamentoPrimeira.Clear;
  edtDt_TerminoReagendamentoPrimeira.Clear;
  mmoObservacaoPrimeira.Clear;
end;

function TfrmUpdateFerias.excluirFeriasDoExercicio: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        SQL.Text := retornaSQLDeleteFerias;

        frmLogs.mmoLog.Lines.Add(SQL.Text);

        ExecSQL;

        mmoSQL.Text := SQL.Text;
      end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateFerias.retornaSQLDeleteFerias: String;
var SQL_Ferias: String;
begin
  SQL_Ferias :=
        ' DELETE FROM tbFerias'
      + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
      + ' AND idServidor = ' + QuotedStr(idServidor)
      + ' AND idExercicio = ' + QuotedStr(edtExercicio.Text);

  Result := SQL_Ferias;
end;

procedure TfrmUpdateFerias.setarDadosServidor(Matricula, Nome, Cargo: String);
begin
  lblMatricula.Caption := Matricula;
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;                             
end;

end.
