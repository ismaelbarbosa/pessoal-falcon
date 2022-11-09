unit ufUpdateTbEspecialidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxPC, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, cxTextEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ADODB, cxMemo;

type
  TfrmUpdateTbEspecialidade = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    Button1: TButton;
    btnNovaEspecialidade: TcxButton;
    btnEditarEspecialidade: TcxButton;
    pgcEspecialidades: TcxPageControl;
    tshRelacao: TcxTabSheet;
    tshCreateUpdate: TcxTabSheet;
    gbxCargo: TcxGroupBox;
    lblLotacao: TLabel;
    lblTotal: TLabel;
    edtPesquisa: TcxTextEdit;
    Label9: TLabel;
    grdEspecialidade: TcxGrid;
    grdEspecialidadeDBTableView1: TcxGridDBTableView;
    grdEspecialidadeDBTableView1Column1: TcxGridDBColumn;
    grdEspecialidadeDBTableView1Column3: TcxGridDBColumn;
    grdEspecialidadeLevel1: TcxGridLevel;
    Panel3: TPanel;
    Label10: TLabel;
    lblTotalServidores: TLabel;
    grdServidores: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Timer1: TTimer;
    qryEspecialidade: TADOQuery;
    dsEspecialidade: TDataSource;
    qryServidores: TADOQuery;
    dsServidores: TDataSource;
    btnDetalhar: TcxButton;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    Panel1: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    lblidEspecialidade: TLabel;
    btnGravar: TcxButton;
    edtDescricao: TcxTextEdit;
    mmoSQL: TcxMemo;
    btnCancelar: TcxButton;
    procedure btnSairClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure dsEspecialidadeDataChange(Sender: TObject; Field: TField);
    procedure btnNovaEspecialidadeClick(Sender: TObject);
    procedure btnEditarEspecialidadeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    procedure limparCampos;

    function setarOperacao(tipo: Integer):boolean;

    function pesquisarEspecialidade: integer;
    function pesquisarServidores: integer;

    function SQLEspecialidade(valor:String): String;
    function SQLServidores(idEspecialidade: String): String;
    function SQLInsertEspecialidade: String;
    function SQLUpdateEspecialidade: String;

    function insertEspecialidade: boolean;
    function updateEspecialidade:boolean;

    function carregarDadosEspecialidade:boolean;


  end;

var
  frmUpdateTbEspecialidade: TfrmUpdateTbEspecialidade;

implementation

uses PRG_utils, uPesFuncoes, uDMConexao, ufPrincipal, uDMPessoal, ufLogs;

{$R *.dfm}

procedure TfrmUpdateTbEspecialidade.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateTbEspecialidade.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  Timer1.Enabled := true;  
end;

function TfrmUpdateTbEspecialidade.pesquisarEspecialidade: integer;
begin
  with qryEspecialidade do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLEspecialidade(edtPesquisa.Text));
    Active := True;
  end;

  Result := qryEspecialidade.RecordCount;
end;

function TfrmUpdateTbEspecialidade.SQLEspecialidade(valor: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + ' esp.idEspecialidade, '
  + ' esp.Descricao'

  + ' FROM tbEspecialidade as esp'

  + ' WHERE 1=1';


  pesquisa := pesquisa

  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'Descricao','AND')
  //+ ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'Sigla','AND')
  //+ ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'idLotacao','AND')
  + ')'
  + ' ORDER BY esp.Descricao';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;

end;

function TfrmUpdateTbEspecialidade.SQLInsertEspecialidade: String;
begin
  Result :=
  'SET DATEFORMAT dmy'
  + ' INSERT INTO tbEspecialidade (Descricao)'
  + ' VALUES ('
  + QuotedStr(edtDescricao.Text)
  + ')';
end;

function TfrmUpdateTbEspecialidade.SQLServidores(idEspecialidade: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + 'CASE WHEN Nova_Estrutura = 1 THEN ''SIM'''
  + ' WHEN Nova_Estrutura = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS NovaEstrutura'

  + ', lot.idLotacao, lot.Sigla, nome, lot.Descricao as Lotacao, car.Descricao as Cargo'
  + ', pes.idPessoal, ser.idServidor'
  + ', esp.Descricao as Especialidade'
  + ' FROM tbPessoal pes'
  + ' LEFT JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
  + ' INNER JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' LEFT JOIN tbLotacao lot on lot.idLotacao = ser.idLotacao'
  + ' LEFT JOIN tbEspecialidade esp on esp.idEspecialidade = ser.idEspecialidade'
  + ' WHERE esp.idEspecialidade = ' + QuotedStr(idEspecialidade)

  + ' AND idDesligamento is NULL';

  pesquisa := pesquisa

  + ' ORDER BY pes.Nome';

  mmoSQL.Text := pesquisa;
  Result := pesquisa;

end;

function TfrmUpdateTbEspecialidade.SQLUpdateEspecialidade: String;
begin
  Result :=
  'SET DATEFORMAT dmy'
  + ' UPDATE tbEspecialidade'
  + ' SET'
  + ' Descricao = ' + QuotedStr(edtDescricao.Text)
  + ' WHERE idEspecialidade = '  + QuotedStr(lblidEspecialidade.Caption);
end;

procedure TfrmUpdateTbEspecialidade.Timer1Timer(Sender: TObject);
begin
  if pesquisarEspecialidade <> 0 then
  begin
    lblTotal.Caption := InttoStr(pesquisarEspecialidade);
    btnDetalharClick(Nil);
  end;

  Timer1.Enabled := false;
end;

procedure TfrmUpdateTbEspecialidade.FormCreate(Sender: TObject);
begin
  KeyPreview := true;

  qryEspecialidade.Connection := DMConexao.conPessoal;
  qryServidores.Connection := DMConexao.conPessoal;

  {edtIdLotacao.Properties.MaxLength := 12;
  edtDescricao.Properties.MaxLength := 200;
  edtSigla.Properties.MaxLength := 50;
  edtSala.Properties.MaxLength := 6;
  edtRamal.Properties.MaxLength := 4;}

  setarOperacao(3);
  tshCreateUpdate.Enabled := false;

  btnNovaEspecialidade.Enabled := true;
  btnEditarEspecialidade.Enabled := true;

  pgcEspecialidades.ActivePageIndex := 0;
end;

procedure TfrmUpdateTbEspecialidade.btnDetalharClick(Sender: TObject);
begin
  lblTotalServidores.Caption := InttoStr(pesquisarServidores);
end;

function TfrmUpdateTbEspecialidade.pesquisarServidores: integer;
begin
  with qryServidores do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLServidores(qryEspecialidade.FieldValues['idEspecialidade']));
    Active := True;
  end;

  Result := qryServidores.RecordCount;
end;

procedure TfrmUpdateTbEspecialidade.dsEspecialidadeDataChange(
  Sender: TObject; Field: TField);
begin
  if (qryEspecialidade.Active) and (qryEspecialidade.RecordCount <> 0)
  then btnDetalharClick(Nil); //lblTotal.Caption <> '0'
end;

procedure TfrmUpdateTbEspecialidade.btnNovaEspecialidadeClick(
  Sender: TObject);
begin
  setarOperacao(1);

  tshRelacao.Enabled := false;
  tshCreateUpdate.Enabled := true;

  btnNovaEspecialidade.Enabled := false;
  btnEditarEspecialidade.Enabled := false;

  pgcEspecialidades.ActivePageIndex := 1;
end;

function TfrmUpdateTbEspecialidade.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;

  case OPERACAO of
    1: lblOperacao.Caption := 'INCLUSÃO'; 
    2: lblOperacao.Caption := 'ALTERAÇÃO';
    3: lblOperacao.Caption := 'CONSULTA';
  end;

  Result := true;
end;

procedure TfrmUpdateTbEspecialidade.btnEditarEspecialidadeClick(Sender: TObject);
begin
  // Habilitar a tabsheet de edição
  setarOperacao(2);

  tshRelacao.Enabled := false;
  tshCreateUpdate.Enabled := true;
  //tshEditarLotacao.Enabled := true;
  pgcEspecialidades.ActivePageIndex := 1;

  btnNovaEspecialidade.Enabled := false;
  btnEditarEspecialidade.Enabled := false;

  // Carregar dados para o formulário

  carregarDadosEspecialidade;
  
  // Setar o modo para edição

end;

function TfrmUpdateTbEspecialidade.carregarDadosEspecialidade: boolean;
begin
  with qryEspecialidade do
  begin

    if FieldByName('idEspecialidade').IsNull
    then
    begin
      ShowMessage('Erro crítico. Chave da lotação é nula');
      Abort;
    end
    else lblidEspecialidade.Caption := Trim(FieldValues['idEspecialidade']);

    if FieldByName('descricao').IsNull
    then edtDescricao.Text := ''
    else edtDescricao.Text := Trim(FieldValues['descricao']);

  end;
end;

procedure TfrmUpdateTbEspecialidade.FormActivate(Sender: TObject);
begin
  lblOperacao.Caption := 'CONSULTA';

  pgcEspecialidades.ActivePageIndex := 0;
  if tshRelacao.Visible then edtPesquisa.SetFocus;

  Timer1.Enabled := true;
end;

procedure TfrmUpdateTbEspecialidade.btnGravarClick(Sender: TObject);
var wMens: String;
begin
  if Trim(edtDescricao.Text) = '' then
  begin
    ShowMessage('A descrição da especialidade deve ser informada.');
    edtDescricao.SetFocus;
    Abort;
  end;

  case OPERACAO of
    // Inclusão de especialidade
    1:
    begin
      //ShowMessage('Inclusão');
      wMens := 'Atenção! Confirma a inclusão desta especialidade?';

      if ConfirmaAcao(wMens,3) = 1 then
      begin

        if insertEspecialidade then
        begin
          IncluirLog
          (
          DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
          RetornaData(2),
          'tbEspecialidade',
          QuotedStr(lblidEspecialidade.Caption),
          'NULL',
          'NULL',
          'TODOS',
          'Inclusão da especialidade: '
          + 'Nova especialidade: ' + edtDescricao.Text
          );

          limparCampos;

          ShowMessage('Registro gravado com sucesso');
        end



        // exibir especialidade
      end;

    end;
    2:
    begin
      wMens := 'Atenção! Confirma a alteração desta especialidade?';
      //ShowMessage('Alteração');

      if ConfirmaAcao(wMens,3) = 1 then
      begin

        if updateEspecialidade then
        begin
          IncluirLog
          (
          DMConexao.Usuario.CPF,  // antes era função do frmPrincipal
          RetornaData(2),
          'tbEspecialidade',
          QuotedStr(lblidEspecialidade.Caption),
          'NULL',
          'NULL',
          'TODOS',
          'Alteração da especialidade: '
          + 'Especialidade atual: ' + edtDescricao.Text
          );

          ShowMessage('Registro gravado com sucesso');
        end

        // exibir especialidade
      end;                     
    end
  end;

  edtPesquisa.Text := edtDescricao.Text;
  Timer1.Enabled := true;

  btnCancelarClick(Nil);
end;

function TfrmUpdateTbEspecialidade.insertEspecialidade: boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text :=  SQLInsertEspecialidade;

      mmoSQL.Lines.Add(SQL.Text);

      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

function TfrmUpdateTbEspecialidade.updateEspecialidade: boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := dmConexao.conPessoal;
      SQL.Text :=  SQLUpdateEspecialidade;

      mmoSQL.Lines.Add(SQL.Text);

      frmLogs.mmoLog.Lines.Add(SQL.Text);

      ExecSQL;
    end;
    Result := true
  except
    Result := false;
  end;
end;

procedure TfrmUpdateTbEspecialidade.limparCampos;
var i: Integer;
begin
  for i:= 0 to ComponentCount -1 do
  begin
    if (Components[i] is TcxTextEdit) then
    begin
      if (Components[i].Name <> 'edtCPF') // campos que serão mantidos
      and (Components[i].Name <> 'outroCampoASerMantido')
      then
      TcxTextEdit(Components[i]).Clear;
    end;
  end;  
end;

procedure TfrmUpdateTbEspecialidade.edtDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
  edtPesquisa.Text := edtDescricao.Text;  
  Timer1.Enabled := true;
end;

procedure TfrmUpdateTbEspecialidade.btnCancelarClick(Sender: TObject);
begin
  limparCampos;

  setarOperacao(3);

  tshRelacao.Enabled := true;
  tshCreateUpdate.Enabled := false;

  btnNovaEspecialidade.Enabled := true;
  btnEditarEspecialidade.Enabled := true;

  pgcEspecialidades.ActivePageIndex := 0;

end;

end.


