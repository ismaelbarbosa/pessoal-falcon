unit ufUpdateFeriados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, StdCtrls, cxButtons, ExtCtrls,
  ADODB, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxRadioGroup;

type
  TfrmUpdateFeriados = class(TForm)
    pnlBotoes: TPanel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    btnNovo: TcxButton;
    cxGroupBox3: TcxGroupBox;
    grdRegistros: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    pnlRegistro: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    DBText21: TDBText;
    DBText27: TDBText;
    Label28: TLabel;
    txtIdFeriado: TDBText;
    qryFeriados: TADOQuery;
    dsFeriados: TDataSource;
    btnAlterar: TcxButton;
    pnlEditar: TPanel;
    btnGravar: TcxButton;
    edtData: TcxDateEdit;
    qryPesquisa: TADOQuery;
    rgpTipo: TcxRadioGroup;
    btnCancelar: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure rgpTipoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    OPERACAO: Integer;
  public
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;
    function exibirFeriados: Integer;
    function existeDataSelecionada: String;
    function incluirRegistro(vSQL: String): boolean;
    function alterarRegistro(vSQL: String): boolean;

    function retornaSQLInsertFeriado: String;
    function retornaSQLUpdateFeriado: String;

  end;

var
  frmUpdateFeriados: TfrmUpdateFeriados;

implementation

uses uDMConexao, ufPrincipal, uPesFuncoes, uDMPessoal, ufLogs;

{$R *.dfm}

{ TfrmUpdateFeriados }

function TfrmUpdateFeriados.exibirFeriados: Integer;
var wSQL: String;
begin
  with qryFeriados do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    'SELECT'
    + ' Fer.idFeriado, SUBSTRING(Fer.DtInicio,1,5) as DtInicio, Fer.DtTermino'
    + ', Fer.TipoDeAfastamento, year(getdate()) as Ano'
    + ' FROM tbFeriadosEAfastamentos as Fer'

    + ' WHERE 1=1'
    + ' ORDER BY SUBSTRING(DtInicio, 4,2), substring(DtInicio, 1,2)';

    SQL.Add(wSQL);
    Active := true;
    Result := RecordCount;
  end;

end;

procedure TfrmUpdateFeriados.FormActivate(Sender: TObject);
var Total: String;
begin
  lblOperacao.Caption := '';
  Total := IntToStr(exibirFeriados);
  Position := poScreenCenter;
end;

procedure TfrmUpdateFeriados.FormCreate(Sender: TObject);
begin
  qryFeriados.Connection := DMConexao.conPessoal;
  qryPesquisa.Connection := DMConexao.conPessoal;
  pnlEditar.Visible := false;
  rgpTipo.ItemIndex := 0;
end;

procedure TfrmUpdateFeriados.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateFeriados.btnNovoClick(Sender: TObject);
begin
  setarOperacao(1);
  configurarOperacao;
end;

function TfrmUpdateFeriados.existeDataSelecionada: String;
var wSQL: String;
begin
  with qryPesquisa do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    'SELECT'
    + ' Fer.idFeriado, SUBSTRING(Fer.DtInicio,1,5) as DtInicio, Fer.DtTermino, Fer.TipoDeAfastamento'
    + ' FROM tbFeriadosEAfastamentos as Fer'
    + ' WHERE 1=1'
    + ' AND SUBSTRING(Fer.DtInicio,1,5) = ' + QuotedStr(Copy(edtData.Text, 1,5));

    SQL.Add(wSQL);
    Active := true;

    if qryPesquisa.RecordCount > 0 then
      Result := FieldValues['DtInicio'] + ' - ' + FieldValues['TipoDeAfastamento']
    else
      Result := '0';
  end;

end;

procedure TfrmUpdateFeriados.edtDataExit(Sender: TObject);
var retorno: String;
begin
//
end;

procedure TfrmUpdateFeriados.btnGravarClick(Sender: TObject);
var acao, retorno, Total: String;
begin
  case OPERACAO of
  1: // Novo registro
    begin
      retorno := existeDataSelecionada;
      acao := 'Inclusão do ';

      case rgpTipo.ItemIndex of
        0: acao := acao + 'FERIADO:';
        1: acao := acao + 'FACULTATIVO:';
      end;

      if retorno <> '0' then
      begin
        ShowMessage('Já existe o seguinte registro para essa data:' + chr(13) + retorno);
        edtData.SetFocus;
      end
      else
      begin
        if ConfirmaAcao('Confirma a inclusão do registro?', 3) = 1
        then
        begin
          if incluirRegistro      // Tabela de Pessoal
          (retornaSQLInsertFeriado)
          then
            ShowMessage('Registro gravado')
          else
            ShowMessage('Registro não foi gravado');

          pnlEditar.Visible := false;
          pnlRegistro.Visible := true;
          exibirFeriados;
          grdRegistros.Visible := true;
          lblOperacao.Caption := '';
        end
      end;

    end;
  2: // Alterar registro
    begin
      acao := 'Alteração do : ';

      case rgpTipo.ItemIndex of
        0: acao := acao + 'FERIADO:';
        1: acao := acao + 'FACULTATIVO:';
      end;

      if ConfirmaAcao('Confirma a alteração do registro?', 3) = 1
      then
      begin
        if alterarRegistro      // Tabela de Pessoal
        (retornaSQLUpdateFeriado)
        then
          ShowMessage('Registro gravado')
        else
          ShowMessage('Registro não foi gravado');

        pnlEditar.Visible := false;
        pnlRegistro.Visible := true;
        exibirFeriados;
        grdRegistros.Visible := true;
        lblOperacao.Caption := '';
      end
    end
  end;

  IncluirLog
  (
  DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
  RetornaData(2),
  'tbFeriadosEAfastamentos',
  txtIdFeriado.Caption,
  'TODOS',
  acao
  + ' ID: ' + txtIdFeriado.Caption
  + ' Data: ' + Copy(edtData.Text, 1,6)
  );

  Total := IntToStr(exibirFeriados);

  pnlEditar.Visible := false;
  pnlRegistro.Visible := true;
  grdRegistros.Visible := true;
  btnNovo.Enabled := true;
  btnAlterar.Enabled := true;
  lblOperacao.Caption := '';

end;

procedure TfrmUpdateFeriados.btnAlterarClick(Sender: TObject);
begin
  if qryFeriados.RecordCount > 0 then
  begin

    setarOperacao(2);
    configurarOperacao;

    //ShowMessage(qryFeriados.FieldValues['DtInicio'] + '/' + IntToStr(qryFeriados.FieldValues['Ano']));
    edtData.Text := qryFeriados.FieldValues['DtInicio'] + '/' + IntToStr(qryFeriados.FieldValues['Ano']);

    if qryFeriados.FieldValues['TipoDeAfastamento'] = 'FERIADO'
    then
      rgpTipo.ItemIndex := 0
    else
    if qryFeriados.FieldValues['TipoDeAfastamento'] = 'FACULTATIVO'
    then
      rgpTipo.ItemIndex := 1;
  end
  else
  ShowMessage('Não há registros para serem alterados');
end;

procedure TfrmUpdateFeriados.rgpTipoClick(Sender: TObject);
begin
  //ShowMessage(rgpTipo.Properties.Items[rgpTipo.ItemIndex]);
  //ShowMessage(rgpTipo.Properties.Items[rgpTipo.ItemIndex]);
end;

procedure TfrmUpdateFeriados.btnCancelarClick(Sender: TObject);
begin
  pnlEditar.Visible := false;
  pnlRegistro.Visible := true;
  grdRegistros.Visible := true;
  btnNovo.Enabled := true;
  btnAlterar.Enabled := true;
  lblOperacao.Caption := '';
end;

function TfrmUpdateFeriados.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

procedure TfrmUpdateFeriados.configurarOperacao;
begin
  case OPERACAO of
    1:      // Novo
    begin
      lblOperacao.Caption := 'NOVO REGISTRO';
      pnlEditar.Visible := true;
      pnlRegistro.Visible := false;
      grdRegistros.Visible := false;

      btnNovo.Enabled := false;
      btnAlterar.Enabled := false;
    end;
    2:      // Alterar
    begin
      lblOperacao.Caption := 'EDITAR REGISTRO';
      pnlEditar.Visible := true;
      pnlRegistro.Visible := false;
      grdRegistros.Visible := false;
      btnNovo.Enabled := false;
      btnAlterar.Enabled := false;
    end;
  end;
  
  edtData.SetFocus;

end;

function TfrmUpdateFeriados.alterarRegistro(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateFeriados.incluirRegistro(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateFeriados.retornaSQLInsertFeriado: String;
var wSQL: String;
begin

  wSQL :=
      'SET DATEFORMAT dmy'
      + ' INSERT INTO '
      + ' tbFeriadosEAfastamentos'
      + '(DtInicio, DtTermino, TipoDeAfastamento)'
      + ' VALUES ('
      + QuotedStr(Copy(edtData.Text, 1,6))
      + ', ' + QuotedStr(Copy(edtData.Text, 1,6))
      + ', ' ;

      case rgpTipo.ItemIndex of
        0: wSQL := wSQL + QuotedStr('FERIADO');
        1: wSQL := wSQL + QuotedStr('FACULTATIVO');
      end;

      wSQL := wSQL + ')';

      Result := wSQL;

end;

function TfrmUpdateFeriados.retornaSQLUpdateFeriado: String;
var SQL_Feriado: String;
begin
  SQL_Feriado :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbFeriadosEAfastamentos'
      + ' SET '
      + ' DtInicio = '   + QuotedStr(Copy(edtData.Text, 1,6))
      + ', DtTermino = ' + QuotedStr(Copy(edtData.Text, 1,6))
      + ', TipoDeAfastamento =  ';

    case rgpTipo.ItemIndex of
      0: SQL_Feriado := SQL_Feriado + QuotedStr('FERIADO');
      1: SQL_Feriado := SQL_Feriado + QuotedStr('FACULTATIVO');
    end;

      SQL_Feriado := SQL_Feriado
      + ' WHERE idFeriado = ' + QuotedStr(txtIdFeriado.Caption);

  Result := SQL_Feriado;

end;

procedure TfrmUpdateFeriados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    case key of
      VK_F12:
      //mmoLog.Visible := not mmoLog.Visible;
      frmLogs.ShowModal;
    end
  end
end;

end.
