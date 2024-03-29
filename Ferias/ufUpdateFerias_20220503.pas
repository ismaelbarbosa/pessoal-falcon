unit ufUpdateFerias_20220503;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxGroupBox, cxRadioGroup, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxMemo,
  cxCalendar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ADODB;

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
  TfrmUpdateFerias_20220503 = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    pnlNome: TPanel;
    lblMatricula: TLabel;
    lblNome: TLabel;
    lblCargo: TLabel;
    gbxLancamento: TcxGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    lblNProcessoSEI: TLabel;
    lkpTipoParcela: TcxLookupComboBox;
    edtExercicio: TcxTextEdit;
    rgpPeriodo: TcxRadioGroup;
    edtProcessoSEI: TcxMaskEdit;
    rgpParcelada: TcxRadioGroup;
    cxGroupBox2: TcxGroupBox;
    gbxPrimeiraParcela: TcxGroupBox;
    lblDt_TerminoPrimeira: TLabel;
    lblDtTermino1: TLabel;
    lblDtInicio1: TLabel;
    lblObservacao1: TLabel;
    edtDtInicioPrimeira: TcxDateEdit;
    mmoObservacaoPrimeira: TcxMemo;
    gbxSegundaParcela: TcxGroupBox;
    lblDt_TerminoSegunda: TLabel;
    lblDtTermino2: TLabel;
    lblDtInicio2: TLabel;
    lblObservacao2: TLabel;
    edtDtInicioSegunda: TcxDateEdit;
    mmoObservacaoSegunda: TcxMemo;
    gbxTerceiraParcela: TcxGroupBox;
    lblDt_TerminoTerceira: TLabel;
    lblDtTermino3: TLabel;
    lblDtInicio3: TLabel;
    lblObservacao3: TLabel;
    edtDtInicioTerceira: TcxDateEdit;
    mmoObservacaoTerceira: TcxMemo;
    gbxFeriasNoPeriodo: TcxGroupBox;
    grdFerias: TcxGrid;
    tbvFerias: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcPeriodo: TcxGridDBColumn;
    tvcParcela: TcxGridDBColumn;
    tvcTipoParcela: TcxGridDBColumn;
    tvcIdTipoParcela: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcDt_InicioReagendamento: TcxGridDBColumn;
    tvcDt_TerminoReagendamento: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    lvlFerias: TcxGridLevel;
    dsFeriasTipoParcela: TDataSource;
    gbxReagendamentoTerceira: TcxGroupBox;
    lblDt_InicioReagend3: TLabel;
    edtDt_InicioReagendamentoTerceira: TcxDateEdit;
    lblDt_TerminoReagend3: TLabel;
    edtDt_TerminoReagendamentoTerceira: TcxDateEdit;
    gbxReagendamentoSegunda: TcxGroupBox;
    lblDt_InicioReagend2: TLabel;
    lblDt_TerminoReagend2: TLabel;
    gbxReagendamentoPrimeira: TcxGroupBox;
    lblDt_InicioReagend1: TLabel;
    lblDt_TerminoReagend1: TLabel;
    edtDt_InicioReagendamentoPrimeira: TcxDateEdit;
    edtDt_TerminoReagendamentoPrimeira: TcxDateEdit;
    edtDt_TerminoReagendamentoSegunda: TcxDateEdit;
    edtDt_InicioReagendamentoSegunda: TcxDateEdit;
    qryRetornaAfastamentosEFeriasCoincidentes: TADOQuery;
    dsqryRetornaAfastamentosEFeriasCoincidentes: TDataSource;
    qryFeriasNoPeriodo: TADOQuery;
    dsFeriasNoPeriodo: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rgpParceladaClick(Sender: TObject);
    procedure lkpTipoParcelaExit(Sender: TObject);
    procedure lkpTipoParcelaClick(Sender: TObject);
    procedure edtExercicioExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtDtInicioPrimeiraEnter(Sender: TObject);
    procedure edtDtInicioPrimeiraExit(Sender: TObject);
    procedure edtExercicioKeyPress(Sender: TObject; var Key: Char);
    procedure edtDtInicioSegundaExit(Sender: TObject);
  private
    OPERACAO: Integer;
    formQueChamou: Integer;
    eProcurador: boolean;
    idPessoal, idServidor : String;
  public
    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;

    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;
    procedure setarDadosServidor(Matricula, Nome, Cargo: String);

    function retornaDataTermino(Data: TDate; TipoParcela: String; Parcela: Integer): TDate;
    function HaAfastamentosOuFeriasCoincidentes
    (dtInicio, dtTermino, dtInicioAtual, dtTerminoAtual: TDate; codigoAfastamento: string): boolean;

    function retornarFeriasTipoParcela(idxParcela: Integer): boolean;
    function exibeFeriasNoPeriodo(pIdPessoal, pIdServidor, pExercicio, pPeriodo: String): Integer;
    function carregarFeriasParaEdicao:boolean;
    function incluirFerias: boolean;
    function excluirFeriasDoExercicio: boolean;
    function jaExisteFerias(idPessoal, idServidor, idExercicio: String):boolean;

    function sqlInsertFerias(parcela: Integer): String;
    function sqlUpdateFerias: String;
    function sqlDeleteFerias: String;

    procedure setarGrupoPrimeira(modo:Integer);
    procedure setarGrupoSegunda(modo:Integer);
    procedure setarGrupoTerceira(modo:Integer);

    procedure limparGrupoPrimeira;
    procedure limparGrupoSegunda;
    procedure limparGrupoTerceira;

    procedure bloquearCampos;
    procedure desbloquearCampos;
  end;

var
  frmUpdateFerias_20220503: TfrmUpdateFerias_20220503;

implementation

uses uDmExibirTabelas, ufLogs, uDmFeriasAbonoAfastamento, uPesFuncoes,
  uDMExcluirFeriasAbonoAfastamento, ufUpdateFeriasGeral, uDMConexao,
  uDMPessoal, ufUpdateServidor;

{$R *.dfm}

{ TfrmUpdateFerias }

var Ferias, RegistroAGravar: TFerias;

procedure TfrmUpdateFerias_20220503.bloquearCampos;
begin
  edtExercicio.Enabled := false;
  rgpPeriodo.Enabled := false;
  lkpTipoParcela.Enabled := false;
end;

function TfrmUpdateFerias_20220503.carregarFeriasParaEdicao: boolean;
begin
  with dmFeriasAbonoAfastamento.qryFeriasNoPeriodo do
  begin
    Open;
    First;

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


      if FieldByName('idPeriodo').AsString = 'U' then
      begin
        rgpPeriodo.ItemIndex := 0;
        //ShowMessage(FieldByName('idPeriodo').AsString);
      end
      else if FieldByName('idPeriodo').AsString = '1' then
      begin
        rgpPeriodo.ItemIndex := 1;
        //ShowMessage(FieldByName('idPeriodo').AsString);
      end
      else if FieldByName('idPeriodo').AsString = '2' then
      begin
        rgpPeriodo.ItemIndex := 2;
        //ShowMessage(FieldByName('idPeriodo').AsString);
      end;


      //edtExercicio.Text := FieldValues['idExercicio'];
      //edtProcessoSEI.Text := FieldValues['nProcessoSEI'];

      if not FieldByName('idExercicio').IsNull then
      edtExercicio.Text := FieldValues['idExercicio'];

      if not FieldByName('nProcessoSEI').IsNull then
      edtProcessoSEI.Text := FieldValues['nProcessoSEI'];


      if (FieldValues['idParcela'] = 'U') or (FieldValues['idParcela'] = '1')
      then
      begin

        //ShowMessage('Primeira ou �nica');

        setarGrupoPrimeira(1);

        //ShowMessage('lkptipoparcela');

        lkpTipoParcela.EditValue := FieldValues['idTipoParcela'];

        //showMessage(lkpTipoParcela.EditValue);

        if not FieldByName('Dt_Inicio').IsNull then
        edtDtInicioPrimeira.Text := FieldValues['Dt_Inicio'];

        {if not FieldByName('Dt_Termino').IsNull then
        lblDt_TerminoPrimeira.Caption := FieldValues['Dt_Termino'];}

        // o retorno da data final n�a ser� mais o que estava gravado
        // e sim o c�lculo baseado no tipo de parcela

        lblDt_TerminoPrimeira.Caption := DateToStr
        (retornaDataTermino(StrToDate
        (edtDtInicioPrimeira.Text), lkpTipoParcela.EditValue, 1));

        if not FieldByName('Dt_InicioReagendamento').IsNull then
        edtDt_InicioReagendamentoPrimeira.Text := FieldValues['Dt_InicioReagendamento'];

        if not FieldByName('Dt_TerminoReagendamento').IsNull then
        edtDt_TerminoReagendamentoPrimeira.Text := FieldValues['DT_TerminoReagendamento'];

        if not FieldByName('Observacao').IsNull then
        mmoObservacaoPrimeira.Text := FieldValues['Observacao'];

      end

      else if (FieldValues['idParcela'] = '2')
      then
      begin
        //ShowMessage('Segunda parcela');

        setarGrupoSegunda(1);

        if not FieldByName('Dt_Inicio').IsNull then
        edtDtInicioSegunda.Text := FieldValues['Dt_Inicio'];

        {if not FieldByName('Dt_Termino').IsNull then
        lblDt_TerminoSegunda.Caption := FieldValues['Dt_Termino'];}

        // o retorno da data final n�a ser� mais o que estava gravado
        // e sim o c�lculo baseado no tipo de parcela

        lblDt_TerminoSegunda.Caption := DateToStr
        (retornaDataTermino(StrToDate
        (edtDtInicioSegunda.Text), lkpTipoParcela.EditValue, 1));

        if not FieldByName('Dt_InicioReagendamento').IsNull then
        edtDt_InicioReagendamentoSegunda.Text := FieldValues['Dt_InicioReagendamento'];

        if not FieldByName('Dt_TerminoReagendamento').IsNull then
        edtDt_TerminoReagendamentoSegunda.Text := FieldValues['DT_TerminoReagendamento'];

        if not FieldByName('Observacao').IsNull then
        mmoObservacaoSegunda.Text := FieldValues['Observacao'];

      end

      else if (FieldValues['idParcela'] = '3')
      then
      begin
        //ShowMessage('Terceira parcela');

        setarGrupoTerceira(1);

        if not FieldByName('Dt_Inicio').IsNull then
        edtDtInicioTerceira.Text := FieldValues['Dt_Inicio'];

        {if not FieldByName('Dt_Termino').IsNull then
        lblDt_TerminoTerceira.Caption := FieldValues['Dt_Termino'];}

        // o retorno da data final n�a ser� mais o que estava gravado
        // e sim o c�lculo baseado no tipo de parcela

        lblDt_TerminoTerceira.Caption := DateToStr
        (retornaDataTermino(StrToDate
        (edtDtInicioTerceira.Text), lkpTipoParcela.EditValue, 1));


        if not FieldByName('Dt_InicioReagendamento').IsNull then
        edtDt_InicioReagendamentoTerceira.Text := FieldValues['Dt_InicioReagendamento'];

        if not FieldByName('Dt_TerminoReagendamento').IsNull then
        edtDt_TerminoReagendamentoTerceira.Text := FieldValues['DT_TerminoReagendamento'];

        if not FieldByName('Observacao').IsNull then
        mmoObservacaoTerceira.Text := FieldValues['Observacao'];

        //ShowMessage('3');
        //ShowMessage(FieldByName('Dt_Inicio').AsString);
      end;

      Next;

    end;
  end;
end;

procedure TfrmUpdateFerias_20220503.configurarOperacao;
begin
  case OPERACAO of
    1:      // Incluir f�rias
    begin
      lblOperacao.Caption := 'INCLUS�O DE F�RIAS';
    end;
    2:      // Alterar f�rias
    begin
      lblOperacao.Caption :=  'ALTERA��O DE F�RIAS';
    end;
  end;

  //ShowMessage('Configurando tabelas relacionadas');

  if eProcurador
  then
  begin
    case OPERACAO of
      1: retornarFeriasTipoParcela(0); // Inclus�o
      2: retornarFeriasTipoParcela(1); // Altera��o
    end;


    //ShowMessage('� Procurador');
    with rgpPeriodo do
    begin
      {Buttons[0].Visible := false;
      Buttons[1].Visible := true;
      Buttons[2].Visible := true;}

      Buttons[0].Enabled := false;
      Buttons[0].Font.Style := [fsStrikeOut];
      Buttons[1].Enabled := true;
      Buttons[2].Enabled := true;

      // se o modo for de inclus�o, setar para o �ndice 0, se for edi��o esse valor vir� da fun��o carregarFeriasParaEdicao
      // N�o setar esse valor pois vir� da fun��o carregarFeriasParaEdicao
      if OPERACAO = 1
      then ItemIndex := 1;
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
    //ShowMessage('N�o �  Procurador');

    //retornarFeriasTipoParcela(0);
    case OPERACAO of
      1: retornarFeriasTipoParcela(0); // Inclus�o
      2: retornarFeriasTipoParcela(1); // Altera��o
    end;

    //retornarFeriasTipoParcela(1); // (rgpParcela.ItemIndex);

    with rgpPeriodo do
    begin
      {Buttons[0].Visible := true;
      Buttons[1].Visible := false;
      Buttons[2].Visible := false;}

      Buttons[0].Enabled := true;
      Buttons[1].Enabled := false;
      Buttons[2].Enabled := false;

      if OPERACAO = 1 then
      ItemIndex := 0;
      // N�o setar esse valor na edi��o pois vir� da fun��o carregarFeriasParaEdiacao
    end;
  end;
end;

procedure TfrmUpdateFerias_20220503.desbloquearCampos;
begin
  edtExercicio.Enabled := true;
  rgpPeriodo.Enabled := true;
  lkpTipoParcela.Enabled := true;
end;

function TfrmUpdateFerias_20220503.exibeFeriasNoPeriodo(pIdPessoal, pIdServidor,
  pExercicio, pPeriodo: String): Integer;
var wSQL: String;
begin
  with dmFeriasAbonoAfastamento.qryFeriasNoPeriodo do
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
    + ' and Fer.idPessoal = '   + QuotedStr(pidPessoal)
    + ' AND Fer.idServidor = '  + QuotedStr(pidServidor)
    + ' AND Fer.idExercicio = ' + QuotedStr(pExercicio)
    + ' AND Fer.idPeriodo = '   + QuotedStr(pPeriodo)
    + ' ORDER BY Fer.idExercicio desc';

    SQL.Add(wSQL);
    //mmoSQL.Lines.Add(wSQL);
    Active := true;
    Result := RecordCount;

    monitorarAcoesDaSessao('ufUpdateFerias', 'exibeFeriasNoPeriodo', wSQL);
  end;

end;

function TfrmUpdateFerias_20220503.retornarFeriasTipoParcela(
  idxParcela: Integer): boolean;
var wSQL: String;
begin
  with dmExibirTabelas do
  begin
    try
      qryFeriasTipoParcela.Active := false;

      if eProcurador then
      begin

        ShowMessage('� procurador');

        qryFeriasTipoParcela.SQL.Clear;

        wSQL := 'SELECT * FROM tbFeriasTipoParcela'
        + ' WHERE idTipoParcela in (';

        case idxParcela of
          0 : wSQL := wSQL + QuotedStr('U');
          1 : wSQL := wSQL + QuotedStr('A');
        end;

        wSQL := wSQL + ') ORDER BY idTipoParcela ';

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
                     + ',' + QuotedStr('H') // adicionada de I at� L, a pedido da Aline (verificar);

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

        qryFeriasTipoParcela.SQL.Text := wSQL;
      end;

      qryFeriasTipoParcela.Active := true;

      monitorarAcoesDaSessao('ufUpdateFerias', 'retornarFeriasTipoParcela',
      wSQL);

     except
       ShowMessage('N�o foi poss�vel realizar a pesquisa do Tipo de parcela de f�rias.');
    end;

    if qryFeriasTipoParcela.RecordCount > 0 then Result := true
    else Result := false;
  end;
end;

procedure TfrmUpdateFerias_20220503.setarDadosServidor(Matricula, Nome, Cargo: String);
begin
  {lblMatricula.Caption := '';
  lblNome.Caption := dmExibirTabelas.retornaNomeCabecalho;
  lblCargo.Caption := ''; //Cargo;
  }
  lblMatricula.Caption := Matricula;
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;
end;

procedure TfrmUpdateFerias_20220503.setarGrupoPrimeira(modo: Integer);
begin
  case modo of
    1: // habilita primeira
    begin
      gbxPrimeiraParcela.Enabled := true;
      gbxReagendamentoPrimeira.Enabled := true;
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
      gbxPrimeiraParcela.Enabled                  := false;
      gbxReagendamentoPrimeira.Enabled            := false;
      edtDtInicioPrimeira.Enabled                 := false;
      edtDt_InicioReagendamentoPrimeira.Enabled   := false;
      edtDt_TerminoReagendamentoPrimeira.Enabled  := false;
      mmoObservacaoPrimeira.Enabled               := false;

      lblDtInicio1.Enabled          := false;
      lblDtTermino1.Enabled         := false;
      lblDt_TerminoPrimeira.Enabled := false;
      lblDt_InicioReagend1.Enabled  := false;
      lblDt_TerminoReagend1.Enabled := false;
      lblObservacao1.Enabled        := false;
    end;
  end;
end;

procedure TfrmUpdateFerias_20220503.setarGrupoSegunda(modo: Integer);
begin
  case modo of
    1: // habilita segunda
    begin
      gbxSegundaParcela.Enabled := true;
      gbxReagendamentoSegunda.Enabled := true;
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
      gbxReagendamentoSegunda.Enabled := false;
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

procedure TfrmUpdateFerias_20220503.setarGrupoTerceira(modo: Integer);
begin
  case modo of
    1: // habilita terceira
    begin
      gbxTerceiraParcela.Enabled := true;
      gbxReagendamentoTerceira.Enabled := true;
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
      gbxReagendamentoTerceira.Enabled := false;
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

function TfrmUpdateFerias_20220503.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

function TfrmUpdateFerias_20220503.setFormQueChamou(Origem: String): Integer;
begin
  if Origem = 'frmUpdateServidor'
  then
    formQueChamou := 1
  else
  if Origem = 'frmUpdateFeriasGeral'
  then
    formQueChamou := 2;

  Result := formQueChamou;
end;

procedure TfrmUpdateFerias_20220503.FormCreate(Sender: TObject);
begin
  qryFeriasNoPeriodo.Connection := DMConexao.conPessoal;
  qryRetornaAfastamentosEFeriasCoincidentes.Connection := DMConexao.conPessoal;

  //setarDadosServidor();
  WindowState := wsMaximized;
  KeyPreview := true;
  dsFeriasTipoParcela.DataSet := dmExibirTabelas.qryFeriasTipoParcela;
  lkpTipoParcela.Properties.DataController.DataSource := dsFeriasTipoParcela;

  tbvFerias.DataController.DataSource := dsFeriasNoPeriodo;
end;

procedure TfrmUpdateFerias_20220503.btnGravarClick(Sender: TObject);
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

        if incluirFerias then ShowMessage('Registro inclu�do com sucesso.');
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

        if excluirFeriasDoExercicio then
        begin
          //ShowMessage('F�rias exclu�das');
          if incluirFerias then ShowMessage('Registro inclu�do com sucesso.');
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
  DMConexao.Usuario.CPF,  // antes era fun��o do frmPrincipal
  RetornaData(2),
  'tbFerias',
  'NULL',
  idPessoal,
  idServidor,
  'TODOS',
  wOperacao + ' de f�rias: '
  + 'Matr�cula: ' + idServidor
  + ' Nome: ' + lblNome.Caption
  + ' Data de in�cio: ' + edtDtInicioPrimeira.Text
  + ' - '
  + ' Data de t�rmino: ' + lblDt_TerminoPrimeira.Caption
  );


  frmUpdateFerias.Close;


end;

function TfrmUpdateFerias_20220503.incluirFerias: boolean;
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
          SQL.Text := sQLInsertFerias(1);

          ExecSQL;

          monitorarAcoesDaSessao('ufUpdateFerias', 'fun��o incluirFerias()', SQL.Text);
        end;

        if edtDtInicioSegunda.Text <> ''
        then
        begin
          //ShowMessage('Segunda OK');
          SQL.Text := sqlInsertFerias(2);

          ExecSQL;

          monitorarAcoesDaSessao('ufUpdateFerias', 'fun��o incluirFerias()', SQL.Text);
        end;

        if edtDtInicioTerceira.Text <> ''
        then
        begin
          //ShowMessage('Terceira OK');
          SQL.Text := sqlInsertFerias(3);

          ExecSQL;

          monitorarAcoesDaSessao('ufUpdateFerias', 'fun��o incluirFerias()', SQL.Text);
        end

      end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateFerias_20220503.excluirFeriasDoExercicio: boolean;
begin
  try
      with dmPessoal.qryExecSQL do
      begin
        Connection := dmConexao.conPessoal;

        SQL.Text := sqlDeleteFerias;
        ExecSQL;

        monitorarAcoesDaSessao('ufUpdateFerias', 'fun��o excluirFeriasDoExercicio()', SQL.Text);
      end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateFerias_20220503.getFormQueChamou: Integer;
begin
  Result := formQueChamou;
end;

function TfrmUpdateFerias_20220503.sqlDeleteFerias: String;
var SQL_Ferias, pPeriodo: String;
begin
  case rgpPeriodo.ItemIndex of
    0: pPeriodo := 'U';
    1: pPeriodo := '1';
    2: pPeriodo := '2';
  end;

  SQL_Ferias :=
        ' DELETE FROM tbFerias'
      + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
      + ' AND idServidor = '  + QuotedStr(idServidor)
      + ' AND idExercicio = ' + QuotedStr(edtExercicio.Text)
      + ' AND idPeriodo = '   + QuotedStr(pPeriodo);

  Result := SQL_Ferias;
end;

function TfrmUpdateFerias_20220503.sqlInsertFerias(parcela: Integer): String;
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

function TfrmUpdateFerias_20220503.sqlUpdateFerias: String;
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

procedure TfrmUpdateFerias_20220503.FormActivate(Sender: TObject);
begin
  if OPERACAO = 1 then lkpTipoParcela.EditValue := 'U';

  Position := poScreenCenter;
  //if edtExercicio.Enabled then edtExercicio.SetFocus;

//  rgpParceladaClick(Self);

  { -- -- � feito pela fun��o configurarOpercao
  Case OPERACAO of
    1:
    begin
      lblOperacao.Caption := 'INCLUS�O';
      edtExercicio.SetFocus;
    end;
    2:
    begin
      lblOperacao.Caption := 'ALTERA��O';
      rgpParcelada.SetFocus;
    end;
  end;
  }
  lblFQC.Caption := IntToStr(getFormQueChamou);

  case getFormQueChamou of
    // frmUpdateServidor
    1:
    begin
      eProcurador := dmPessoal.VerificarSeEProcurador
      (Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2));

      idPessoal := frmUpdateServidor.lbl_IDP.Caption;
      idServidor := frmUpdateServidor.txtMatricula.Caption;
    end;

    // frmUpdateFeriasGeral
    2:
    begin
      eProcurador := dmPessoal.VerificarSeEProcurador
      //(Copy(frmUpdateFeriasGeral.qryPesquisa.FieldValues['idCargo'],1,2));
      (Copy(DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idCargo'],1,2));

      idPessoal := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idPessoal'];
      idServidor := DMFeriasAbonoAfastamento.qryPesquisa.FieldValues['idServidor'];
    end;
  end;

  configurarOperacao;

  {setarGrupoPrimeira(2);
  setarGrupoSegunda(2);
  setarGrupoTerceira(2);}            
  
  if rgpPeriodo.Enabled then
  rgpPeriodo.SetFocus;
end;

procedure TfrmUpdateFerias_20220503.rgpParceladaClick(Sender: TObject);
begin
  //ShowMessage('Clicado');

  case rgpParcelada.ItemIndex of
    0: // parcelada
    begin
      retornarFeriasTipoParcela(1);
      setarGrupoPrimeira(1);
      setarGrupoSegunda(1); // habilitar a segunda parcela
      setarGrupoTerceira(1); // habilitar a terceira parcela

      lkpTipoParcela.EditValue := 'A';
      lkpTipoParcelaExit(Nil);
      //edtExercicio.SetFocus;
     // lkpTipoParcela.SetFocus;
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
      //edtExercicio.SetFocus;
////
    end
  end;
end;

procedure TfrmUpdateFerias_20220503.lkpTipoParcelaExit(Sender: TObject);
begin
  lkpTipoParcelaClick(Nil);
end;

procedure TfrmUpdateFerias_20220503.lkpTipoParcelaClick(Sender: TObject);
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

procedure TfrmUpdateFerias_20220503.limparGrupoPrimeira;
begin
  edtDtInicioPrimeira.Clear;
  lblDt_TerminoPrimeira.Caption := '__/__/____';
  edtDt_InicioReagendamentoPrimeira.Clear;
  edtDt_TerminoReagendamentoPrimeira.Clear;
  mmoObservacaoPrimeira.Clear;
end;

procedure TfrmUpdateFerias_20220503.limparGrupoSegunda;
begin
  edtDtInicioSegunda.Clear;
  lblDt_TerminoSegunda.Caption := '__/__/____';
  edtDt_InicioReagendamentoSegunda.Clear;
  edtDt_TerminoReagendamentoSegunda.Clear;
  mmoObservacaoSegunda.Clear;
end;

procedure TfrmUpdateFerias_20220503.limparGrupoTerceira;
begin
  edtDtInicioTerceira.Clear;
  lblDt_TerminoTerceira.Caption := '__/__/____';

  edtDt_InicioReagendamentoTerceira.Clear;
  edtDt_TerminoReagendamentoTerceira.Clear;
  mmoObservacaoTerceira.Clear;
end;

procedure TfrmUpdateFerias_20220503.edtExercicioExit(Sender: TObject);
var difAno: Integer;
    wMensagem, pPeriodo: String;
begin
  if btnSair.Focused then Close
  else
  begin
    //rgpParceladaClick(Self);

    if edtExercicio.Text <> '' then
    begin
      difAno := StrToInt(edtExercicio.Text) -  StrToInt(Copy(RetornaData(1),7,4));

      //ShowMessage('Data atual: ' + RetornaData(1));
      //ShowMessage(IntToStr(difAno));

      if (difAno > 2) or (difAno < -60) then
      begin
        ShowMessage('Aten��o! O exerc�cio informado � inv�lido. Deve estar entre os anos de '
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
          case rgpPeriodo.ItemIndex of
            0: pPeriodo := 'U';
            1: pPeriodo := '1';
            2: pPeriodo := '2';
          end;

          exibeFeriasNoPeriodo(idPessoal, idServidor, edtExercicio.Text, pPeriodo);

          wMensagem := 'Esse per�odo de f�rias j� existe para este servidor.' +
          chr(13) + 'Deseja alterar o registro de f�rias j� gravado?';

          if ConfirmaAcao(wMensagem, 3) = 1
          then
          begin
            //ShowMessage('Confirmado');
            setarOperacao(2);
            configurarOperacao;
            carregarFeriasParaEdicao;
            //bloquearCampos;
            edtProcessoSEI.SetFocus;
          end;
        end;
      end;
    end
    else
    begin
      //ShowMessage('� necess�rio informar o exerc�cio.');
      //edtExercicio.SetFocus;
    end
  end  
end;

function TfrmUpdateFerias_20220503.jaExisteFerias(idPessoal, idServidor,
  idExercicio: String): boolean;
begin
  with dmPessoal.qryExecSQL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SELECT top 1 * from tbFerias'
              + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
              + ' AND idServidor  = '  + QuotedStr(idServidor)
              + ' AND idExercicio = ' + QuotedStr(idExercicio);

    Active := true;

    if dmPessoal.qryExecSQL.RecordCount > 0 then
    begin
      with Ferias do
      begin
        idPessoal    := FieldValues['idPessoal'];
        idServidor   := FieldValues['idServidor'];
        idExercicio  := FieldValues['idExercicio'];

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

procedure TfrmUpdateFerias_20220503.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateFerias_20220503.edtDtInicioPrimeiraEnter(Sender: TObject);
var wPeriodo, wParcela, wMensagem: String;
begin
  if lkpTipoParcela.ItemIndex = -1 then
  begin
    ShowMessage('� necess�rio selecionar o tipo de parcela primeiro');
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
      wMensagem := 'Esse per�odo de f�rias j� existe para este servidor.' +
      chr(13) + 'Deseja alterar o registro de f�rias j� gravado?';

      if ConfirmaAcao(wMensagem, 3) = 1
      then
      begin
        //ShowMessage('Confirmado');
        setarOperacao(2);
      end;
    end}
  end;
end;

procedure TfrmUpdateFerias_20220503.edtDtInicioPrimeiraExit(Sender: TObject);
begin
  if edtDtInicioPrimeira.Text = '' then
  begin
    ShowMessage('Informe a data de in�cio.');
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

function TfrmUpdateFerias_20220503.retornaDataTermino(Data: TDate;
  TipoParcela: String; Parcela: Integer): TDate;
var aSomar: integer;
begin

  aSomar := 0;

  {case Parcela of
    0: ShowMessage('Zero');
    1: ShowMessage('Um');
    2: ShowMessage('Dois');
    3: ShowMessage('Tr�s');
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

function TfrmUpdateFerias_20220503.HaAfastamentosOuFeriasCoincidentes(dtInicio,
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
      if Messagedlg('O per�odo que est� sendo marcado coincide com o seguinte per�odo: ' +
                      DateTimeToStr(qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['DT_INICIO']) + ' a ' +
                      DateTimeToStr(qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['DT_TERMINO']) + ' (' + qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['CODIGO'] +
                      ' - ' + qryRetornaAfastamentosEFeriasCoincidentes.FieldValues['TipoDeAfastamento'] + ').' + ' Deseja grav�-lo mesmo assim? ', mtError, [mbOk, mbCancel], 0) = mrOk then
      begin
        Result := false;
      end
      else
      begin
        Result := true;
      end;
{
      ShowMessage('O per�odo que est� sendo marcado coincide com o seguinte per�odo: ' +
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

procedure TfrmUpdateFerias_20220503.edtExercicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TfrmUpdateFerias_20220503.edtDtInicioSegundaExit(Sender: TObject);
begin
  if edtDtInicioSegunda.Text = '' then
  begin
    ShowMessage('Informe a data de in�cio da segunda parcela.');
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

end.
