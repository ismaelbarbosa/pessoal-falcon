unit ufReadRegistrosLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  cxTextEdit, cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB;

type
  TfrmReadRegistrosLog = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    Button1: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox12: TcxGroupBox;
    Label20: TLabel;
    lblQtdServidores: TLabel;
    edtPesquisa: TcxTextEdit;
    Timer1: TTimer;
    qryPesquisa: TADOQuery;
    dsPesquisa: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    function pesquisarRegistros(condicao: String): integer;
    function SQLPesquisa
    (condicao: String): String;

  end;

var
  frmReadRegistrosLog: TfrmReadRegistrosLog;

implementation

uses PRG_utils, uPesFuncoes, uDMConexao;

{$R *.dfm}

procedure TfrmReadRegistrosLog.FormCreate(Sender: TObject);
begin
  qryPesquisa.Connection := DMConexao.conPessoal;
  WindowState := wsMaximized;
  
end;

function TfrmReadRegistrosLog.pesquisarRegistros(
  condicao: String): integer;
begin
  with qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLPesquisa(condicao));
    Active := True;
  end;

  Result := qryPesquisa.RecordCount;

end;

function TfrmReadRegistrosLog.SQLPesquisa(condicao: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '

  + ' pes.idpessoal, pes.cpf, pes.nome,'

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

  + ' serv.observacao,'

  + ' serv.dt_InicioExercicioExterno,'
  + ' serv.dt_TerminoExercicioExterno,'
  + ' serv.dt_NomeacaoExercicioExterno,'
  + ' serv.dt_PosseExercicioExterno,'

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
  + ' LEFT JOIN tbDesligamento as desl ON desl.idDesligamento = serv.idDesligamento'

  + ' WHERE 1=1'
  + ' AND LTRIM(Nome) not like ' + QuotedStr('')

//  +  FstrNome + strMatricula + strLotacao + strCargo + strFuncao

  + ' ' + condicao

  + ' ORDER BY pes.nome, Dt_ExercicioCargo desc';

  monitorarAcoesDaSessao
  ('uDMPessoal', 'Retorna SQL da pesquisa do servidor (retornaSQLPesquisaServidor)', pesquisa);

  Result := pesquisa;

end;

procedure TfrmReadRegistrosLog.Timer1Timer(Sender: TObject);
var condicao: String;
resultado: Integer;
begin
  if length(Trim(edtPesquisa.Text)) > 3 then
  begin
    condicao := ' AND '
    + '('
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.Nome')
    + ' OR '
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'pes.CPF')
    + ' OR '
    + Gera_SQL(RemoveIndesejadas(edtPesquisa.Text), 'serv.idServidor')
    + ')';

    resultado := pesquisarRegistros(condicao);

    if resultado > 0 then
    begin
      //
    end
    else
    ShowMessage('Não foram localizados registros para o critério de pesquisa');

    lblQtdServidores.Caption := IntToStr(resultado);

    Timer1.Enabled := false;
  end;

end;

procedure TfrmReadRegistrosLog.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Timer1.Enabled := true;
end;

end.
