unit ufUpdateDesligamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxButtons, cxGroupBox,
  cxCalendar, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, ExtCtrls,
  DB, ADODB, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmUpdateDesligamento = class(TForm)
    cxGroupBox1: TcxGroupBox;
    txtidFuncao: TDBText;
    txtFuncao: TDBText;
    Label32: TLabel;
    txtDtNomeacaoFuncao: TDBText;
    lblDt_PosseFuncao: TLabel;
    lblDtDeslig_Funcao: TLabel;
    txtDtDesligFuncao: TDBText;
    Label33: TLabel;
    txtDtExercicioFuncao: TDBText;
    lblDt_NomeacaoFuncaoDODF: TLabel;
    txtDtNomeacaFuncaoDODF: TDBText;
    txtDtPosseFuncao: TDBText;
    Label5: TLabel;
    txtDtDesligFuncaoDODF: TDBText;
    txtDFG: TDBText;
    txtIdFun: TDBText;
    Label7: TLabel;
    btnDesligarFuncao: TcxButton;
    btnNovaFuncao: TcxButton;
    Button1: TButton;
    btnEditarHistorico: TcxButton;
    btnExcluirFuncao: TcxButton;
    btnEditarFuncao: TcxButton;
    qryTipoDesligamento: TADOQuery;
    dsTipoAfastamento: TDataSource;
    pnlBotoes: TPanel;
    Label3: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    cxGroupBox2: TcxGroupBox;
    btnDesligarCargo: TcxButton;
    Label1: TLabel;
    lkpFormaDesligamento: TcxLookupComboBox;
    pnlNome: TPanel;
    lblMatricula: TLabel;
    lblNome: TLabel;
    lblCargo: TLabel;
    Label11: TLabel;
    edtDataDesligamento: TcxDateEdit;
    Label2: TLabel;
    edtDataDesligamentoDODF: TcxDateEdit;
    Label19: TLabel;
    lbl_IDS: TLabel;
    Label34: TLabel;
    lbl_IDP: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnDesligarCargoClick(Sender: TObject);
  private
    eEstagiario: boolean;
    FormQueChamou: Integer;
  public
    function retornarTipoAfastamento: integer;
    function retornaSQLDesligarCargo: String;
    function desligarCargo(vSQL: String): boolean;

    procedure setarDadosServidor(idPessoal, ID, Matricula, Nome, Cargo: String);
    procedure setarSeEstagiario(valor: boolean);

    function setFormQueChamou(Origem:String):Integer;
    function getFormQueChamou:Integer;
  end;

var
  frmUpdateDesligamento: TfrmUpdateDesligamento;

implementation

uses uDMConexao, ufLogs, uPesFuncoes, uDMPessoal, uDmCadastroServidor,
  ufCreateServidor;

{$R *.dfm}

procedure TfrmUpdateDesligamento.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
  qryTipoDesligamento.Connection     := DMConexao.conPessoal;
end;

function TfrmUpdateDesligamento.retornarTipoAfastamento: integer;
var wSQL: String;
begin
//  with dmExibirTabelas do
//  begin
    try
      qryTipoDesligamento.Active := false;

      if eEstagiario then
      begin
        qryTipoDesligamento.SQL.Clear;

        wSQL := 'SELECT * FROM tbDesligamento'
        + ' WHERE idDesligamento in ('
        + QuotedStr('EC')
        + ', '
        + QuotedStr('EAP')
        + ') ORDER BY Descricao';

        qryTipoDesligamento.SQL.Text := wSQL;
      end
      else
      begin
        qryTipoDesligamento.SQL.Clear;

        wSQL := 'SELECT * FROM tbDesligamento'
        + ' WHERE idDesligamento not in ('
        + QuotedStr('EC')
        + ') ORDER BY Descricao';

        frmLogs.mmoLog.Lines.Add(wSQL);
        qryTipoDesligamento.SQL.Text := wSQL;
      end;

      qryTipoDesligamento.Active := true;

     except
       ShowMessage('N�o foi poss�vel realizar a pesquisa do Tipo de desligamento.');
    end;

    Result := qryTipoDesligamento.RecordCount;

//  end;
end;

procedure TfrmUpdateDesligamento.FormKeyDown(Sender: TObject;
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

procedure TfrmUpdateDesligamento.FormActivate(Sender: TObject);
begin
  retornarTipoAfastamento;
  lkpFormaDesligamento.SetFocus;
  lblFQC.Caption := IntToStr(getFormQueChamou);
end;

procedure TfrmUpdateDesligamento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateDesligamento.setarDadosServidor(idPessoal, ID,
Matricula, Nome, Cargo: String);
begin
  lblMatricula.Caption := Matricula;
  lblNome.Caption := Nome;
  lblCargo.Caption := Cargo;

  lbl_IDP.Caption := idPessoal;
  lbl_IDS.Caption := ID;
end;

procedure TfrmUpdateDesligamento.btnDesligarCargoClick(Sender: TObject);
var idAlteracaoNN: String;
begin
  if ConfirmaAcao('Confirma o desligamento?', 3) = 1 then
  begin
    if desligarCargo(retornaSQLDesligarCargo)
    then
    begin
      // registrar notifica nupro

      idAlteracaoNN := InserirZeros(dmCadastroServidor.GerarID('tbCamposAltServ','idAlteracao'),12);

      dmCadastroServidor.registrarNotificaNupro
      (frmCreateServidor.SQLInsertNotificaNupro(idAlteracaoNN, '', '',
      '', '', '', edtDataDesligamento.Text, '', '', '', '', '', '', '', '',
      '', '', DMConexao.Usuario.CPF, RetornaData(2)));

      ShowMessage('Desligamento realizado');
    end
    else
      ShowMessage('Houve uma falha no desligamento');
  end;

  frmUpdateDesligamento.Close;
end;

function TfrmUpdateDesligamento.desligarCargo(vSQL: String): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text := vSQL;
      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;

end;

function TfrmUpdateDesligamento.retornaSQLDesligarCargo: String;
var SQL_Desligar: String;
begin

  SQL_Desligar :=
      'SET DATEFORMAT dmy'
      + ' UPDATE tbServidor'
      + ' SET '
      + ' idDesligamento = '        + QuotedStr(Trim(lkpFormaDesligamento.EditValue))
      + ', dt_Deslig_Cargo = '      + QuotedStr(edtDataDesligamento.Text)
      + ', dt_Deslig_CargoDODF = '  + QuotedStr(edtDataDesligamentoDODF.Text);

      ;

      SQL_Desligar := SQL_Desligar
      + ' WHERE idPessoal = ' + QuotedStr(lbl_IDP.Caption)
      + ' AND idServidor = ' + QuotedStr(lblMatricula.Caption);
      //+ ' AND idServidor = ' + QuotedStr(lbl_IDS.Caption);

      //ShowMessage(SQL_Desligar);
  Result := SQL_Desligar;

  monitorarAcoesDaSessao('frmUpdateDesligamento', 'Instru��o SQL', SQL_Desligar);
end;

procedure TfrmUpdateDesligamento.setarSeEstagiario(valor: boolean);
begin
  eEstagiario:= valor;
end;

function TfrmUpdateDesligamento.getFormQueChamou: Integer;
begin
  Result := FormQueChamou;
end;

function TfrmUpdateDesligamento.setFormQueChamou(Origem: String): Integer;
begin
  if Origem = 'frmUpdateServidor'
  then
    FormQueChamou := 1
  else
  if Origem = 'frmDesligarServidorEstagiario'
  then
    FormQueChamou := 2;

  Result := FormQueChamou;
end;

end.