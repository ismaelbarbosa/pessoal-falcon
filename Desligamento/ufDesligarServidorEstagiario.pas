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
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnEditarMatricula: TcxButton;
    pnlNome: TPanel;
    txtNome: TDBText;
    lblNumeroRegistros: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    lblQtdServidores: TLabel;
    edtPesquisa: TcxTextEdit;
    qryPesquisa: TADOQuery;
    dsPesquisa: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    function pesquisarPessoal(condicao: String): integer;
    function retornaSQLPesquisaPessoal
    (condicao: String): String;
  end;

var
  frmDesligarServidorEstagiario: TfrmDesligarServidorEstagiario;

implementation

uses uDMConexao, PRG_utils, uPesFuncoes, ufLogs;

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
end;

procedure TfrmDesligarServidorEstagiario.FormActivate(Sender: TObject);
var
  condicao: string;
  Resultado: Integer;
begin
  condicao := ' AND 0=0';
  //+ Gera_SQL(RemoveIndesejadas('EST'), 'serv.idCargo');

  lblNumeroRegistros.Caption := 'N� de registros encontrados: ' +
  IntToStr(pesquisarPessoal(condicao));

  edtPesquisa.SetFocus;

end;

function TfrmDesligarServidorEstagiario.pesquisarPessoal(
  condicao: String): integer;
begin
  with qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(retornaSQLPesquisaPessoal(condicao));
    Active := True;
  end;

  Result := qryPesquisa.RecordCount;
end;

function TfrmDesligarServidorEstagiario.retornaSQLPesquisaPessoal(
  condicao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + ' CASE'
  + ' WHEN serv.idCargo != ''999999'' AND Dt_Deslig_Cargo IS NULL THEN ''ATIVO'''
  + ' WHEN serv.idCargo = ''999999'' AND Dt_Deslig_Cargo IS NOT NULL THEN ''DESLIGADO DA FUN��O'''
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



 // + ' serv.observacao,' -- Este campo n�o est� na table tbServidor do banco PGSRV19
 // + ' serv.idNucleo,' -- �dem acima
 // + ' serv.dtNucleoDistribuicao,' -- �dem acima

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
  + '  ELSE ' + QuotedStr('N�O INFORMADO')
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
  + ' AND serv.idDesligamento is NULL'

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
var condicao: String;
begin
  condicao := ' AND '
  + '('
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
  + ' OR '
  + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
  + ')';

  case Key of
    VK_RETURN: lblNumeroRegistros.Caption := IntToStr(pesquisarPessoal(condicao));
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end

end;

end.
