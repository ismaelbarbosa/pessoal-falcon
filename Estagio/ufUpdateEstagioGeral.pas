unit ufUpdateEstagioGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxPC, DBCtrls, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, ADODB;

type
  TEstagio = record
    idPessoal, idServidor,
    Dt_InicioContrato1_Estagiario,
    Dt_TerminoContrato1_Estagiario,
    Dt_InicioContrato2_Estagiario,
    Dt_TerminoContrato2_Estagiario,
    Dt_InicioContrato3_Estagiario,
    Dt_TerminoContrato3_Estagiario,
    Dt_InicioContrato4_Estagiario,
    Dt_TerminoContrato4_Estagiario,
    Supervisor_Estagiario,
    TurnoEstagio,
    Semestre,
    InstituicaoEnsino,
    observacao
    : Array[0..1] of String;
end;

type
  TfrmUpdateEstagioGeral = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    txtCargo: TDBText;
    txtLotacao: TDBText;
    pgcEstagiario: TcxPageControl;
    tshRelacaoEstagiarios: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    lblQtdServidores: TLabel;
    edtPesquisa: TcxTextEdit;
    grdServidores: TcxGrid;
    tbvServidores: TcxGridDBTableView;
    tvcMatricula: TcxGridDBColumn;
    tvcNome: TcxGridDBColumn;
    tvcTurnoEstagio: TcxGridDBColumn;
    tvcSemestre: TcxGridDBColumn;
    grdServidoresLevel1: TcxGridLevel;
    tshDadosDoEstagio: TcxTabSheet;
    Timer1: TTimer;
    pnlDadosEstagio: TPanel;
    Label14: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    edtSupervisor_Estagiario: TcxTextEdit;
    edtDt_InicioContrato1_Estagiario: TcxDateEdit;
    edtDt_InicioContrato2_Estagiario: TcxDateEdit;
    edtDt_InicioContrato3_Estagiario: TcxDateEdit;
    edtDt_InicioContrato4_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato1_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato2_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato3_Estagiario: TcxDateEdit;
    edtDt_TerminoContrato4_Estagiario: TcxDateEdit;
    edtInstituicaoEnsino: TcxTextEdit;
    edtTurnoEstagio: TcxTextEdit;
    edtSemestre: TcxTextEdit;
    mmoObservacao_Estagio: TcxMemo;
    dsPesquisa: TDataSource;
    tvcInstituicaoEnsino: TcxGridDBColumn;
    tvcSupervisor: TcxGridDBColumn;
    tvcDt_InicioContrato1_Estagiario: TcxGridDBColumn;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    grdAfastamentos: TcxGrid;
    tbvAfastamentos: TcxGridDBTableView;
    tvcDescricaoAfastamento: TcxGridDBColumn;
    tvcDataInicio: TcxGridDBColumn;
    tvcDataTermino: TcxGridDBColumn;
    tvcExercicio: TcxGridDBColumn;
    tvcCodigo: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    lvlAfastamentos: TcxGridLevel;
    dsAfastamentoServidor: TDataSource;
    qryAfastamentoServidor: TADOQuery;
    btnGravar: TcxButton;
    Label2: TLabel;
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure tshDadosDoEstagioShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure tbvServidoresKeyPress(Sender: TObject; var Key: Char);
    procedure tbvServidoresDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbvServidoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    function carregarDados:boolean;
    function setarRegistroAGravar: boolean;
    procedure focarNaEdicao;
    procedure focarNaPesquisa;
    function exibirAfastamentos: Integer;
    procedure habilitaPnlDadosEstagio;
    procedure desabilitaPnlDadosEstagio;
  end;

var
  frmUpdateEstagioGeral: TfrmUpdateEstagioGeral;

implementation

uses uDMEstagiario, PRG_utils, uPesFuncoes, uDmCadastroServidor, ufLogs,
  uDMConexao;

{$R *.dfm}

var EstadoEdicao, RegistroAGravar: TEstagio;

function TfrmUpdateEstagioGeral.carregarDados: boolean;
begin
  with DMEstagiario.qryPesquisa do
  begin
    if FieldByName('Supervisor_Estagiario').IsNull
    then edtSupervisor_Estagiario.Text := ''
    else edtSupervisor_Estagiario.Text := Trim(FieldValues['Supervisor_Estagiario']);

    // Manter o valor do campo <> no registro EstadoEdicao
//    EstadoEdicao.Supervisor_Estagiario[0]   := Trim(edtSupervisor_Estagiario.Text);



    if FieldByName('Dt_InicioContrato1_Estagiario').IsNull
    then edtDt_InicioContrato1_Estagiario.Text := ''
    else edtDt_InicioContrato1_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato1_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato1_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato1_Estagiario[0]   := Trim(edtDt_InicioContrato1_Estagiario.Text);

    if FieldByName('Dt_InicioContrato2_Estagiario').IsNull
    then edtDt_InicioContrato2_Estagiario.Text := ''
    else edtDt_InicioContrato2_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato2_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato2_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato2_Estagiario[0]   := Trim(edtDt_InicioContrato2_Estagiario.Text);

    if FieldByName('Dt_InicioContrato3_Estagiario').IsNull
    then edtDt_InicioContrato3_Estagiario.Text := ''
    else edtDt_InicioContrato3_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato3_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato3_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato3_Estagiario[0]   := Trim(edtDt_InicioContrato3_Estagiario.Text);

    if FieldByName('Dt_InicioContrato4_Estagiario').IsNull
    then edtDt_InicioContrato4_Estagiario.Text := ''
    else edtDt_InicioContrato4_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato4_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato4_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato4_Estagiario[0]   := Trim(edtDt_InicioContrato4_Estagiario.Text);


    if FieldByName('Dt_TerminoContrato1_Estagiario').IsNull
    then edtDt_TerminoContrato1_Estagiario.Text := ''
    else edtDt_TerminoContrato1_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato1_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato1_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato1_Estagiario[0]   := Trim(edtDt_TerminoContrato1_Estagiario.Text);


    if FieldByName('Dt_TerminoContrato2_Estagiario').IsNull
    then edtDt_TerminoContrato2_Estagiario.Text := ''
    else edtDt_TerminoContrato2_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato2_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato2_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato2_Estagiario[0]   := Trim(edtDt_TerminoContrato2_Estagiario.Text);

    if FieldByName('Dt_TerminoContrato3_Estagiario').IsNull
    then edtDt_TerminoContrato3_Estagiario.Text := ''
    else edtDt_TerminoContrato3_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato3_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato3_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato3_Estagiario[0]   := Trim(edtDt_TerminoContrato3_Estagiario.Text);

    if FieldByName('Dt_TerminoContrato4_Estagiario').IsNull
    then edtDt_TerminoContrato4_Estagiario.Text := ''
    else edtDt_TerminoContrato4_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato4_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato4_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato4_Estagiario[0]   := Trim(edtDt_TerminoContrato4_Estagiario.Text);

    if FieldByName('Supervisor_Estagiario').IsNull
    then edtSupervisor_Estagiario.Text := ''
    else edtSupervisor_Estagiario.Text := Trim(FieldValues['Supervisor_Estagiario']);

    // Manter o valor do campo Supervisor_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Supervisor_Estagiario[0]   := Trim(edtSupervisor_Estagiario.Text);

    if FieldByName('InstituicaoEnsino').IsNull
    then edtInstituicaoEnsino.Text := ''
    else edtInstituicaoEnsino.Text := Trim(FieldValues['InstituicaoEnsino']);

    // Manter o valor do campo Supervisor_Estagiario no registro EstadoEdicao
//    EstadoEdicao.InstituicaoEnsino[0]   := Trim(edtInstituicaoEnsino.Text);


    if FieldByName('TurnoEstagio').IsNull
    then edtTurnoEstagio.Text := ''
    else edtTurnoEstagio.Text := Trim(FieldValues['TurnoEstagio']);

    // Manter o valor do campo TurnoEstagio no registro EstadoEdicao
//    EstadoEdicao.TurnoEstagio[0]   := Trim(edtTurnoEstagio.Text);

    if FieldByName('Semestre').IsNull
    then edtSemestre.Text := ''
    else edtSemestre.Text := Trim(FieldValues['Semestre']);

    // Manter o valor do campo Semestre no registro EstadoEdicao
//    EstadoEdicao.Semestre[0]   := Trim(edtSemestre.Text);

    if FieldByName('Observacao').IsNull
    then mmoObservacao_Estagio.Text := ''
    else mmoObservacao_Estagio.Text := Trim(FieldValues['Observacao']);

    // Manter o valor do campo <> no registro EstadoEdicao
//    EstadoEdicao.observacao[0]   := Trim(mmoObservacao_Estagio.Text);
  end;

end;

procedure TfrmUpdateEstagioGeral.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmUpdateEstagioGeral.Timer1Timer(Sender: TObject);
var condicao: String;
resultado: Integer;
begin
  if length(Trim(edtPesquisa.Text)) > 3 then
  begin
    condicao := ' AND '
    + '('
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
    + ' OR '
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
    + ')';

    resultado := DMEstagiario.pesquisarEstagiarios(condicao);

    case resultado of
      0:
      begin
        desabilitaPnlDadosEstagio;
        //focarNaEdicao;
      end;
      1:
      begin
        habilitaPnlDadosEstagio;
        focarNaEdicao;
      end;
    end;

    if resultado > 1 then habilitaPnlDadosEstagio;

    lblQtdServidores.Caption := IntToStr(resultado);


    Timer1.Enabled := false;
  end;
end;

procedure TfrmUpdateEstagioGeral.FormCreate(Sender: TObject);
begin
  qryAfastamentoServidor.Connection := DMConexao.conPessoal;
  KeyPreview := true;
  WindowState := wsMaximized;
  dsPesquisa.DataSet := DMEstagiario.qryPesquisa;
  tbvServidores.DataController.DataSource := dsPesquisa;

  pgcEstagiario.ActivePage := tshRelacaoEstagiarios;

  Timer1.Enabled := false;
end;

procedure TfrmUpdateEstagioGeral.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Timer1.Enabled := true;
end;

procedure TfrmUpdateEstagioGeral.FormActivate(Sender: TObject);
begin
  edtPesquisa.SetFocus;
end;

procedure TfrmUpdateEstagioGeral.tshDadosDoEstagioShow(Sender: TObject);
begin
  with dmEstagiario.qryPesquisa do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      carregarDados;
      exibirAfastamentos;
    end
    else
    begin
      ShowMessage('Não foi selecionado um estagiário');
      pgcEstagiario.ActivePage := tshRelacaoEstagiarios;
    end;
  end;
end;

procedure TfrmUpdateEstagioGeral.btnGravarClick(Sender: TObject);
var Registro_Setado: boolean;
    resultado : integer;
begin
  if setarRegistroAGravar then
  Registro_Setado := true;

  with RegistroAGravar do
  begin
    // lembrar que o ExecSQL do dmCadastroServidor está desabilitado
    if dmCadastroServidor.executarSQL
    (
      dmEstagiario.SQLUpdateEstagio
      (
      idPessoal[0], idServidor[0],
      Dt_InicioContrato1_Estagiario[0],
      Dt_TerminoContrato1_Estagiario[0],
      Dt_InicioContrato2_Estagiario[0],
      Dt_TerminoContrato2_Estagiario[0],
      Dt_InicioContrato3_Estagiario[0],
      Dt_TerminoContrato3_Estagiario[0],
      Dt_InicioContrato4_Estagiario[0],
      Dt_TerminoContrato4_Estagiario[0],
      Supervisor_Estagiario[0],
      TurnoEstagio[0],
      Semestre[0],
      InstituicaoEnsino[0],
      observacao[0]
      )
    )
    then
    begin
      ShowMessage('O registro foi alterado com sucesso');
      dmEstagiario.qryPesquisa.Active := false;
      focarNaPesquisa;
    end
    else
      ShowMessage('O registro NÃO pôde ser alterado');
  end;

end;

function TfrmUpdateEstagioGeral.setarRegistroAGravar: boolean;
var registro: String;
begin
  // Setar variáveis para tabela tbDados

  with RegistroAGravar do
  begin
    idPessoal[0]  := DMEstagiario.qryPesquisa.FieldValues['idPessoal'];
    idServidor[0] := DMEstagiario.qryPesquisa.FieldValues['idServidor'];

    //1
    if edtSupervisor_Estagiario.Text <> Null
    then Supervisor_Estagiario[0] := Trim(edtSupervisor_Estagiario.Text)
    else Supervisor_Estagiario[0] := '';
    //2
    if edtDt_InicioContrato1_Estagiario.Text <> Null
    then Dt_InicioContrato1_Estagiario[0] := Trim(edtDt_InicioContrato1_Estagiario.Text)
    else Dt_InicioContrato1_Estagiario[0] := '';
    //3
    if edtDt_InicioContrato2_Estagiario.Text <> Null
    then Dt_InicioContrato2_Estagiario[0] := Trim(edtDt_InicioContrato2_Estagiario.Text)
    else Dt_InicioContrato2_Estagiario[0] := '';
    //4
    if edtDt_InicioContrato3_Estagiario.Text <> Null
    then Dt_InicioContrato3_Estagiario[0] := Trim(edtDt_InicioContrato3_Estagiario.Text)
    else Dt_InicioContrato3_Estagiario[0] := '';
    //5
    if edtDt_InicioContrato4_Estagiario.Text <> Null
    then Dt_InicioContrato4_Estagiario[0] := Trim(edtDt_InicioContrato4_Estagiario.Text)
    else Dt_InicioContrato4_Estagiario[0] := '';
    //6
    if edtDt_TerminoContrato1_Estagiario.Text <> Null
    then Dt_TerminoContrato1_Estagiario[0] := Trim(edtDt_TerminoContrato1_Estagiario.Text)
    else Dt_TerminoContrato1_Estagiario[0] := '';
    //7
    if edtDt_TerminoContrato2_Estagiario.Text <> Null
    then Dt_TerminoContrato2_Estagiario[0] := Trim(edtDt_TerminoContrato2_Estagiario.Text)
    else Dt_TerminoContrato2_Estagiario[0] := '';
    //8
    if edtDt_TerminoContrato3_Estagiario.Text <> Null
    then Dt_TerminoContrato3_Estagiario[0] := Trim(edtDt_TerminoContrato3_Estagiario.Text)
    else Dt_TerminoContrato3_Estagiario[0] := '';
    //9
    if edtDt_TerminoContrato4_Estagiario.Text <> Null
    then Dt_TerminoContrato4_Estagiario[0] := Trim(edtDt_TerminoContrato4_Estagiario.Text)
    else Dt_TerminoContrato4_Estagiario[0] := '';
    //10
    if edtInstituicaoEnsino.Text <> Null
    then InstituicaoEnsino[0] := Trim(edtInstituicaoEnsino.Text)
    else InstituicaoEnsino[0] := '';
    //11
    if edtTurnoEstagio.Text <> Null
    then TurnoEstagio[0] := Trim(edtTurnoEstagio.Text)
    else TurnoEstagio[0] := '';
    //12
    if mmoObservacao_Estagio.Text <> Null
    then observacao[0] := Trim(mmoObservacao_Estagio.Text)
    else observacao[0] := '';
    //13
    if edtSemestre.Text <> Null
    then Semestre[0] := Trim(edtSemestre.Text)
    else Semestre[0] := '';
  end;

  with RegistroAGravar do
  begin
    registro := txtNome.Caption + chr(13) + Supervisor_Estagiario[0] + chr(13);
  end;

  monitorarAcoesDaSessao('ufUpdateEstagioGeral', 'setarRegistroAGravar', registro);

  Result := true;                                                     
end;

procedure TfrmUpdateEstagioGeral.focarNaEdicao;
begin
  pgcEstagiario.ActivePage := tshDadosDoEstagio;
  //edtDt_InicioContrato1_Estagiario.SetFocus;
  pnlDadosEstagio.SetFocus;
end;

procedure TfrmUpdateEstagioGeral.tbvServidoresKeyPress(Sender: TObject;
  var Key: Char);
begin
//
end;

procedure TfrmUpdateEstagioGeral.tbvServidoresDblClick(Sender: TObject);
begin
  focarNaEdicao;
end;

procedure TfrmUpdateEstagioGeral.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  if Key = VK_ESCAPE then btnSairClick(Sender);

  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    frmLogs.ShowModal;
  end
end;

procedure TfrmUpdateEstagioGeral.tbvServidoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then focarNaEdicao;
end;

procedure TfrmUpdateEstagioGeral.focarNaPesquisa;
begin
  pgcEstagiario.ActivePage := tshRelacaoEstagiarios;
  Panel1.SetFocus;
  edtPesquisa.SetFocus;
  edtPesquisa.Clear;
end;

procedure TfrmUpdateEstagioGeral.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmUpdateEstagioGeral.exibirAfastamentos: Integer;
var SQL_Afastamento: String;
begin
  SQL_Afastamento := 'SELECT'
      + ' tbafastamento.idafastamento, tbafastamento.descricao,'
      + ' tbAfastamento.Codigo,'
      + ' tbserv_afast.idpessoal, tbserv_afast.idafastamento,'
      + ' tbserv_afast.dt_inicio, tbserv_afast.dt_termino, tbserv_afast.idExercicio,'
      + ' tbserv_afast.nProcessoSEI,'
      + ' tbserv_afast.Observacao'

      + ' FROM tbafastamento'
      + ' INNER JOIN tbserv_afast'
      + ' ON tbserv_afast.idafastamento = tbafastamento.idafastamento'

      + ' WHERE'
      + ' tbserv_afast.idpessoal = ' + DMEstagiario.qryPesquisa.FieldValues['idpessoal']
      + ' and tbafastamento.idafastamento not in (' + QuotedStr('721') + ')'

      + ' ORDER BY tbserv_afast.dt_inicio DESC;';

  with qryAfastamentoServidor do
  begin
    Active := false;
    SQL.Text := SQL_Afastamento;
    Active := true;
    Result := RecordCount;
  end;
end;

procedure TfrmUpdateEstagioGeral.desabilitaPnlDadosEstagio;
begin
  pnlDadosEstagio.Enabled := false;
end;

procedure TfrmUpdateEstagioGeral.habilitaPnlDadosEstagio;
begin
  pnlDadosEstagio.Enabled := true;
end;

end.
