unit uDmExibirTabelas;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, Variants;

type
  TPessoal = record
    idPessoal,
    idServidor,
    IDS,
    nome,
    cpf,
    idCargo, Cargo
    : Array[0..1] of String;
end;

type
  TdmExibirTabelas = class(TDataModule)
    qryHistoricoFuncoes: TADOQuery;
    qryHistoricoLotacoes: TADOQuery;
    qryFeriasServidor: TADOQuery;
    dsPessoal: TDataSource;
    qryAbonoServidor: TADOQuery;
    qryAfastamentoServidor: TADOQuery;
    qryTelefonesServidor: TADOQuery;
    qryFeriasTipoParcela: TADOQuery;
    qryHistoricoExercicioExterno: TADOQuery;
    qryTotalDiasSubstituidos: TADOQuery;
    qryProcuradorSubstituido: TADOQuery;
    qryLogHistorico: TADOQuery;
    qryBanco: TADOQuery;
    qryCurso: TADOQuery;
    qryAno: TADOQuery;
    qryMes: TADOQuery;
    qryDataHora: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function ExibirTabelasRelacionadas: Boolean;
    function ExibirHistoricoFuncoes(pidPessoal, pidServidor: String; pTop, pOrdem: integer): Integer;

    function ExibirHistoricoLotacoes(pidPessoal, pidServidor: String; pTop, pOrdem: integer): Integer;
    function ExibirSubstituicoes(pidPessoal: String; pTop, pOrdem: integer): Integer;

    function setarCabecalhoPessoal
    (pidPessoal, pidServidor, pIDS, pNome, pCPF, pidCargo, pCargo: String): boolean;

    function retornaNomeCabecalho: String;

  end;

var
  dmExibirTabelas: TdmExibirTabelas;

implementation

uses udmPessoal, uDMConexao, ufUpdateServidor, ufLogs, uPesFuncoes;

{$R *.dfm}

var CabecalhoPessoal: TPessoal;


{ TdmExibirTabelas }

function TdmExibirTabelas.ExibirHistoricoFuncoes(pidPessoal, pidServidor: String; pTop,
  pOrdem: integer): Integer;
var wSQL : String;
begin
  with qryHistoricoFuncoes do
  begin
    Active := false;
    {
    wSQL:= 'SELECT ';

    if pTop > 1 then
      wSQL := wSQL + ' TOP ' + IntToStr(pTop);

    wSQL := wSQL
    + ' CONVERT(char(10), dt_NomeacaoFuncao, 103),'
    + ' CONVERT(char(10), dt_NomeacaoFuncaoDODF, 103),'
    + ' CONVERT(char(10), dt_PosseFuncao, 103),'
    + ' CONVERT(char(10), dt_ExercicioFuncao, 103),'
    + ' CONVERT(char(10), dt_Deslig_Funcao, 103),'
    + ' CONVERT(char(10), dt_Deslig_FuncaoDODF, 103),'
    + ' idDFG, Descricao, ID as IDHistorico, *'
    + ' FROM tbHist_Funcao his'
    + ' LEFT JOIN tbFuncao fun on fun.idFuncao = his.idFuncao'
    + ' WHERE his.idPessoal = ' + QuotedStr(pidPessoal)
    + ' AND  his.idServidor = ' + QuotedStr(pidServidor)
    + ' order by his.dt_NomeacaoFuncao desc ';

    SQL.Text := wSQL;

    //frmUpdateServidor.Memo1.Text := SQL.Text;
    }

    Active := true;

    Result := qryHistoricoFuncoes.RecordCount;

  end;

end;

procedure TdmExibirTabelas.DataModuleCreate(Sender: TObject);
begin
  qryAno.Connection := DMConexao.conPessoal;
  qryMes.Connection := DMConexao.conPessoal;
  qryDataHora.Connection := DMConexao.conPessoal;

  qryTelefonesServidor.DataSource         := dsPessoal;
  qryFeriasServidor.DataSource            := dsPessoal;
  qryAbonoServidor.DataSource             := dsPessoal;
  qryAfastamentoServidor.DataSource       := dsPessoal;
  qryHistoricoFuncoes.DataSource          := dsPessoal;
  qryHistoricoLotacoes.DataSource         := dsPessoal;
  qryHistoricoExercicioExterno.DataSource := dsPessoal;
  qryTotalDiasSubstituidos.DataSource     := dsPessoal;
  qryProcuradorSubstituido.DataSource     := dsPessoal;
  qryLogHistorico.DataSource              := dsPessoal;
  qryBanco.DataSource                     := dsPessoal;
  qryCurso.DataSource                     := dsPessoal;

  qryTelefonesServidor.Connection         := DMConexao.conPessoal;
  qryFeriasServidor.Connection            := DMConexao.conPessoal;
  qryAbonoServidor.Connection             := DMConexao.conPessoal;
  qryAfastamentoServidor.Connection       := DMConexao.conPessoal;
  qryHistoricoFuncoes.Connection          := DMConexao.conPessoal;
  qryHistoricoLotacoes.Connection         := DMConexao.conPessoal;
  qryFeriasTipoParcela.Connection         := DMConexao.conPessoal;
  qryHistoricoExercicioExterno.Connection := DMConexao.conPessoal;
  qryTotalDiasSubstituidos.Connection     := DMConexao.conPessoal;
  qryProcuradorSubstituido.Connection     := DMConexao.conPessoal;
  qryLogHistorico.Connection              := DMConexao.conPessoal;
  qryBanco.Connection                     := DMConexao.conPessoal;
  qryCurso.Connection                     := DMConexao.conPessoal;
end;

function TdmExibirTabelas.ExibirHistoricoLotacoes(pidPessoal, pidServidor: String; pTop,
  pOrdem: integer): Integer;
var wSQL : String;
begin
  with qryHistoricoLotacoes do
  begin
    Active := false;

{    wSQL:= 'SELECT ';

    if pTop > 1 then
      wSQL := wSQL + ' TOP ' + IntToStr(pTop);

    wSQL := wSQL
    + ' CONVERT(char(10), dt_lotacao, 103),'
    + ' lot.Descricao,'
    + ' lot.Sigla,'
    + ' lot.Sala,'
    + ' lot.Ramal'
    + ' FROM tbHist_Lotacao his'
    + ' LEFT JOIN tbLotacao lot on lot.idLotacao = his.idLotacao'

    + ' WHERE his.idPessoal = ' + pidPessoal
    + ' AND  his.idServidor = ' + pidServidor

    + ' order by his.dt_Lotacao desc ';

    SQL.Text := wSQL;

    Active := true;
}
    Active := true;
    Result := qryHistoricoLotacoes.RecordCount;

  end;


end;

function TdmExibirTabelas.ExibirSubstituicoes(pidPessoal: String; pTop,
  pOrdem: integer): Integer;
var wSQL : String;
begin
  //ShowMessage('ok');
  with qryProcuradorSubstituido do
  begin
    Active := false;

    wSQL:= 'SELECT ';

    if pTop > 1 then
      wSQL := wSQL + ' TOP ' + IntToStr(pTop);

    wSQL := wSQL

    + ' pes.Nome, subst.*,  ndias = (DATEDIFF(DAY, subst.dt_inicio, subst. dt_termino)+1)'
    + ' FROM tbsubstprocurador subst'
    + ' INNER JOIN tbPessoal pes on pes.idPessoal = subst.idPessoalSubstituido'
    + ' WHERE '
//    + ' subst.idpessoalsubstituto = :procsubstituto'
//    ' IDPESSOALSUBSTITUTO = :idPessoal

    + ' IDPESSOALSUBSTITUTO = ' + QuotedStr(pidPessoal)
    + ' ORDER BY subst.dt_inicio desc, subst.dt_termino desc';

    frmLogs.mmoLog.Lines.Add(wSQL);

    SQL.Text := wSQL;

    Active := true;

    Result := qryProcuradorSubstituido.RecordCount;

  end;

end;

function TdmExibirTabelas.ExibirTabelasRelacionadas: Boolean;
begin
  try
    qryTelefonesServidor.Active         := true;
    qryFeriasServidor.Active            := true;
    qryAbonoServidor.Active             := true;
    qryAfastamentoServidor.Active       := true;
    qryHistoricoFuncoes.Active          := true;
    qryHistoricoLotacoes.Active         := true;
    qryHistoricoExercicioExterno.Active := true;
    qryTotalDiasSubstituidos.Active     := true;
    qryLogHistorico.Active              := true;
    qryBanco.Active                     := true;
    qryCurso.Active                     := true;

    qryProcuradorSubstituido.Active     := true;
    
    //ShowMessage(qryProcSubstituto.SQL.Text);

    //ExibirSubstituicoes(frmUpdateServidor.lbl_IDP.Caption, 100, 0);

    //ShowMessage(dmPessoal.qryPesquisa.FieldValues['idPessoal']);
    //ExibirSubstituicoes(dmPessoal.qryPesquisa.FieldValues['idPessoal'], 100, 0);

    Result := true

  except
    Result := false
  end;

end;

function TdmExibirTabelas.setarCabecalhoPessoal
    (pidPessoal, pidServidor, pIDS, pNome, pCPF, pidCargo, pCargo: String): boolean;
var registro: String;
begin
  with CabecalhoPessoal do
  begin
    if (pidPessoal <> Null) and (pidPessoal <> '')
    then idPessoal[0]  := pidPessoal
    else idPessoal[0] := '';

    if (pidServidor <> Null) and (pidServidor <> '')
    then idServidor[0]  := pidServidor
    else idServidor[0] := '';

    if (pIDS <> Null) and (pIDS <> '')
    then IDS[0]  := pIDS
    else IDS[0] := '';

    if (pNome <> Null) and (pNome <> '')
    then nome[0]  := pNome
    else nome[0] := '';

    //ShowMessage(nome[0]);

    if (pCPF <> Null) and (pCPF <> '')
    then cpf[0]  := pCPF
    else cpf[0] := '';

    if (pidCargo <> Null) and (pidCargo <> '')
    then idCargo[0]  := pidCargo
    else idCargo[0] := '';

    if (pCargo <> Null) and (pCargo <> '')
    then Cargo[0]  := pCargo
    else Cargo[0] := '';
  end;

  with CabecalhoPessoal do
  begin
    //registro := pNome[0] + chr(13) + pidCargo[0] + chr(13);
  end;

  monitorarAcoesDaSessao('uDmExibirTabelas', 'setarCabecalhoPessoal', registro);

  Result := true;
end;

function TdmExibirTabelas.retornaNomeCabecalho: String;
begin
  ShowMessage(CabecalhoPessoal.Nome[0]);
  Result := CabecalhoPessoal.Nome[0];
end;

end.
