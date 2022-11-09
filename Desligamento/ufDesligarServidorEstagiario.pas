unit ufDesligarServidorEstagiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, cxContainer, ADODB, cxTextEdit, DBCtrls, StdCtrls,
  cxButtons, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmDesligarServidorEstagiario = class(TForm)
    grdPesquisa: TcxGrid;
    tbvPesquisa: TcxGridDBTableView;
    tvcNome: TcxGridDBColumn;
    tvcMatricula: TcxGridDBColumn;
    tvcCargo: TcxGridDBColumn;
    tvcLotacao: TcxGridDBColumn;
    lvlPesquisa: TcxGridLevel;
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnDesligar: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    lblNumeroRegistros: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    edtPesquisa: TcxTextEdit;
    qryPesquisa: TADOQuery;
    dsPesquisa: TDataSource;
    Timer1: TTimer;
    tvcDtDesligamentoCargo: TcxGridDBColumn;
    tvcFormaDesligamento: TcxGridDBColumn;
    StyleRepository: TcxStyleRepository;
    stlAtivo: TcxStyle;
    stlRequisitado: TcxStyle;
    stlDesligadoCargo: TcxStyle;
    stlDesligadoFuncao: TcxStyle;
    stlDesligado: TcxStyle;
    tvcStatus: TcxGridDBColumn;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDesligarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure tbvPesquisaStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    function pesquisarPessoal(condicao: String): integer;
    function SQLPesquisaPessoal
    (condicao: String): String;
  end;

var
  frmDesligarServidorEstagiario: TfrmDesligarServidorEstagiario;

implementation

uses uDMConexao, PRG_utils, uPesFuncoes, ufLogs, ufUpdateDesligamento,
  ufReadServidor;

{$R *.dfm}

procedure TfrmDesligarServidorEstagiario.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDesligarServidorEstagiario.FormCreate(Sender: TObject);
begin
  qryPesquisa.Connection := DMConexao.conPessoal;

  KeyPreview := true;
  WindowState := wsMaximized;
  Timer1.Enabled := false;
end;

procedure TfrmDesligarServidorEstagiario.FormActivate(Sender: TObject);
//var  condicao: string;  Resultado: Integer;
begin
  {condicao := ' AND 0=0';
  //+ Gera_SQL(RemoveIndesejadas('EST'), 'serv.idCargo');

  lblNumeroRegistros.Caption := 'Nº de registros encontrados: ' +
  IntToStr(pesquisarPessoal(condicao));
  }

  edtPesquisa.SetFocus;

end;

function TfrmDesligarServidorEstagiario.pesquisarPessoal(
  condicao: String): integer;
begin
  with qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLPesquisaPessoal(condicao));
    Active := True;
  end;

  Result := qryPesquisa.RecordCount;
end;

function TfrmDesligarServidorEstagiario.SQLPesquisaPessoal(
  condicao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + ' CASE'
  + ' WHEN serv.idCargo != ''999999'' AND Dt_Deslig_Cargo IS NULL THEN ''ATIVO'''
  + ' WHEN serv.idCargo = ''999999'' AND Dt_Deslig_Cargo IS NOT NULL THEN ''DESLIGADO DA FUNÇÃO'''
  + ' WHEN serv.Requisitado = 1 THEN ''REQUISITADO'''
  + ' WHEN serv.Dt_Deslig_Cargo is NOT NULL THEN ''DESLIGADO DO CARGO'''
  + ' ELSE ''-'''
  + ' END AS Status'


//  + ' serv.idUsuario, pes1.Nome AS Operador, '
  + ', Operador=dbo.F_RetornaOperador(serv.idUsuario)'
  + ', OEE.Descricao as ExercicioExterno, OEE.Sigla as siglaOrgaoExterno'
  + ', PES.IDPESSOAL, PES.CPF, PES.NOME,'

  + ' pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'

  //+ ' serv.*,' -- tabela Servidor

  + ' serv.idServidor,'
  + ' serv.ID,'
  + ' serv.Matr_Origem,'
  + ' serv.idCargo,'
  + ' serv.Especialidade,'
  + ' serv.idFuncao,'
  + ' fun.idDFG as SimboloDFG,'
  + ' fun.id as idFun,'
  + ' serv.idLotacao,'
  + ' serv.CF_Num,'
  + ' serv.Ramal,'
  + ' serv.Sala,'
  + ' serv.Classe,'
  + ' serv.Padrao,'
  + ' serv.Dt_NomeacaoCargo,'
  + ' serv.Dt_NomeacaoCargoDODF,'
  + ' serv.Dt_PosseCargo,'
  + ' serv.Dt_ExercicioCargo,'
  + ' serv.Dt_PrimeiroExercicioGDF,'
  + ' serv.Dt_Deslig_Cargo,'
  + ' serv.Dt_Deslig_CargoDODF,'
  + ' serv.Dt_NomeacaoFuncao,'
  + ' serv.Dt_NomeacaoFuncaoDODF,'
  + ' serv.Dt_PosseFuncao,'
  + ' serv.Dt_ExercicioFuncao,'
  + ' serv.Dt_Deslig_Funcao,'
  + ' serv.Dt_Deslig_FuncaoDODF,'
  + ' serv.Dt_Falecimento,'
  + ' serv.Dt_Digitacao,'
  + ' serv.Requisitado,'
  + ' serv.OrgaoDeOrigem,'
  + ' serv.Dt_FimRequisicao,'
  + ' serv.AuxTransporte,'
  + ' serv.idDesligamento,'
  + ' serv.idUsuario,'
  + ' serv.CargaHoraria,'
  + ' serv.Dt_PromocaoCategoria2,'
  + ' serv.Dt_PromocaoSubProcurador,'
  + ' serv.AverbacaoGDF,'
  + ' serv.AverbacaoServPublico,'
  + ' serv.Dt_InicioContrato1_Estagiario,'
  + ' serv.Dt_TerminoContrato1_Estagiario,'
  + ' serv.Dt_InicioContrato2_Estagiario,'
  + ' serv.Dt_TerminoContrato2_Estagiario,'
  + ' serv.Dt_InicioContrato3_Estagiario,'
  + ' serv.Dt_TerminoContrato3_Estagiario,'
  + ' serv.Dt_InicioContrato4_Estagiario,'
  + ' serv.Dt_TerminoContrato4_Estagiario,'
  + ' serv.Supervisor_Estagiario,'
  + ' serv.DtNovaEstrutura,'
  + ' serv.CaminhoFollhaDePonto,'
  + ' serv.TurnoEstagio,'
  + ' serv.Semestre,'
  + ' serv.InstituicaoEnsino,'

  + ' serv.dt_InicioExercicioExterno,'
  + ' serv.dt_TerminoExercicioExterno,'
  + ' serv.dt_NomeacaoExercicioExterno,'
  + ' serv.dt_PosseExercicioExterno,'



 // + ' serv.observacao,' -- Este campo não está na table tbServidor do banco PGSRV19
 // + ' serv.idNucleo,' -- ídem acima
 // + ' serv.dtNucleoDistribuicao,' -- ídem acima

  //+ ' dados.*,' -- tabela Dados

  + ' dados.Endereco,'
  + ' dados.Bairro,'
  + ' dados.Cidade,'
  + ' dados.UF,'
  + ' dados.CEP,'
  + ' dados.CI_Num,'
  + ' dados.CI_UF,'
  + ' dados.CI_Emissao,'
  + ' dados.Nacionalidade,'
  + ' dados.Naturalidade,'
  + ' dados.Natural_UF,'
  + ' dados.Pis_Pasep,'
  + ' dados.TE_Num,'
  + ' dados.TE_Zona,'
  + ' dados.TE_Secao,'
  + ' dados.TE_UF,'
  + ' dados.TE_Emissao,'
  + ' dados.Pai,'
  + ' dados.Mae,'
  + ' dados.idEstadoCivil, '

  + ' CASE'
  + '  WHEN civil.Descricao != ' + QuotedStr('') + ' THEN civil.Descricao'
  + '  ELSE ' + QuotedStr('NÃO INFORMADO')
  + ' END AS EstadoCivil ,'

  + ' dados.Conjuge,'
  + ' dados.idBanco,'
  + ' dados.Agencia,'
  + ' dados.Conta,'
  + ' dados.OAB_Num,'
  + ' dados.OAB_Secao,'
  + ' dados.Aspro_Opc,'
  + ' dados.Grau,'
  + ' dados.Curso,'
  + ' dados.TipoSanguineo,'
  + ' dados.Email,'

  + ' lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descricaoLotacao,'
  + ' car.descricao as descricaoCargo,'
  + ' fun.descricao as descricaoFuncao,'
  + ' desl.descricao as desligamento'

  + ' FROM tbPessoal as pes'
  + ' LEFT JOIN tbServidor as serv ON serv.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbDados as dados ON dados.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbLotacao as lot ON lot.idLotacao = serv.idLotacao'
  + ' LEFT JOIN tbCargo as car ON car.idCargo = serv.idCargo'
  + ' LEFT JOIN tbFuncao as fun ON fun.idFuncao = serv.idFuncao'
  + ' LEFT JOIN tbEstadoCivil as civil ON civil.idEstadoCivil = dados.idEstadoCivil'
  + ' LEFT JOIN tbDesligamento as desl ON desl.idDesligamento = serv.idDesligamento'
  + ' LEFT JOIN tbOrgaoExercicioExterno oee'
  + ' ON oee.idOrgaoExercicioExterno = serv.idOrgaoExercicioExterno'
//  + ' LEFT JOIN tbPessoal as pes1 on pes1.CPF = serv.idUsuario'

  + ' WHERE 1=1'
  + ' AND LTRIM(Nome) not like ' + QuotedStr('')
//  + ' AND serv.idDesligamento is NULL'

//  +  FstrNome + strMatricula + strLotacao + strCargo + strFuncao

  + ' ' + condicao

  + ' ORDER BY pes.nome;';

  frmLogs.mmoLog.Lines.Add(pesquisa);

  Result := pesquisa;

end;

procedure TfrmDesligarServidorEstagiario.FormKeyDown(Sender: TObject;
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

procedure TfrmDesligarServidorEstagiario.edtPesquisaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
//var condicao: String;
begin
  {condicao := ' AND '
  + '('
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
  + ' OR '
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
  + ')';

  case Key of
    VK_RETURN: lblNumeroRegistros.Caption :=
    'Nº de registros localizados: ' + IntToStr(pesquisarPessoal(condicao));
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end
  }

  Timer1.Enabled := true;

end;

procedure TfrmDesligarServidorEstagiario.btnDesligarClick(
  Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateDesligamento, frmUpdateDesligamento);
  frmUpdateDesligamento.setFormQueChamou('frmDesligarServidorEstagiario');

  if Copy(qryPesquisa.FieldValues['descricaoCargo'],1,3) = 'EST'
  then
    frmUpdateDesligamento.setarSeEstagiario(true)
  else
    frmUpdateDesligamento.setarSeEstagiario(false);

  frmUpdateDesligamento.setarDadosServidor
  (
    qryPesquisa.FieldValues['idPessoal'],
    qryPesquisa.FieldValues['ID'],
    qryPesquisa.FieldValues['idServidor'],
    qryPesquisa.FieldValues['Nome'],
    qryPesquisa.FieldValues['descricaoCargo']
  );  

  // carregar dados (data de desligamento e forma de desligamento

  frmUpdateDesligamento.lkpFormaDesligamento.EditValue := qryPesquisa.FieldValues['idDesligamento'];
  frmUpdateDesligamento.edtDataDesligamento.EditValue := qryPesquisa.FieldValues['dt_Deslig_Cargo'];
  frmUpdateDesligamento.edtDataDesligamentoDODF.EditValue := qryPesquisa.FieldValues['dt_Deslig_CargoDODF'];
                                                                                  
  frmUpdateDesligamento.ShowModal;
  frmUpdateDesligamento.Release;
  frmUpdateDesligamento := Nil;
end;

procedure TfrmDesligarServidorEstagiario.edtPesquisaKeyPress(
  Sender: TObject; var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;


procedure TfrmDesligarServidorEstagiario.Timer1Timer(Sender: TObject);
var condicao: String;
begin
  condicao := ' AND '
  + '('
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
  + ' OR '
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
  + ')';


  lblNumeroRegistros.Caption := IntToStr(pesquisarPessoal(condicao));
  Timer1.Enabled := false;
end;

procedure TfrmDesligarServidorEstagiario.tbvPesquisaStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin

  with StyleRepository do
  begin
    stlAtivo.TextColor:= clBlack;
    stlRequisitado.TextColor := clGreen;
    stlDesligadoCargo.TextColor := clRed;
    stlDesligadoFuncao.TextColor := clBlue;
    stlDesligado.TextColor := clRed;
  end;

  //Ativos

  if
  (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
  (ARecord.Values[tvcStatus.Index] = 'ATIVO')
  then
  begin
  AStyle := stlAtivo;
  end;

  //Requisitados

  if (ARecord is TcxGridDataRow)
  //And Not (ARecord.Selected)
  And (ARecord.Values[tvcStatus.Index] = 'REQUISITADO')
  then
  begin
  AStyle := stlRequisitado;
  end;

  //Inativos

  if (ARecord is TcxGridDataRow)
  //And Not (ARecord.Selected)
  And (ARecord.Values[tvcStatus.Index] = 'DESLIGADO DO CARGO')
  then
  begin
    //AStyle := stlDesligadoCargo;
    AStyle := stlDesligado;
  end;

  //Desligados da função (comissionados)

  if (ARecord is TcxGridDataRow)
  //And Not (ARecord.Selected)
  And (ARecord.Values[tvcStatus.Index] = 'DESLIGADO DA FUNÇÃO')
  then
  begin
    //AStyle := stlDesligadoFuncao;
    AStyle := stlDesligado;
  end;


end;

end.
