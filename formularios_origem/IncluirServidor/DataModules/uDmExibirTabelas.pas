unit uDmExibirTabelas;

interface

uses
  SysUtils, Classes, DB, ADODB;


type
  TdmExibirTabelas = class(TDataModule)
    qryHistoricoFuncoes: TADOQuery;
    qryHistoricoLotacoes: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function ExibirHistoricoFuncoes(pidPessoal, pidServidor: String; pTop, pOrdem: integer): Integer;
    function ExibirHistoricoLotacoes(pidPessoal, pidServidor: String; pTop, pOrdem: integer): Integer;

  end;

var
  dmExibirTabelas: TdmExibirTabelas;

implementation

uses udmPessoal;

{$R *.dfm}

{ TdmExibirTabelas }

function TdmExibirTabelas.ExibirHistoricoFuncoes(pidPessoal, pidServidor: String; pTop,
  pOrdem: integer): Integer;
var wSQL : String;
begin
  with qryHistoricoFuncoes do
  begin
    Active := false;
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
    + ' idDFG, Descricao, *'
    + ' FROM tbHist_Funcao his'
    + ' LEFT JOIN tbFuncao fun on fun.idFuncao = his.idFuncao'
    + ' WHERE his.idPessoal = ' + pidPessoal
    + ' AND  his.idServidor = ' + pidServidor
    + ' order by his.dt_NomeacaoFuncao desc ';

    SQL.Text := wSQL;

    Active := true;

    Result := qryHistoricoFuncoes.RecordCount;

  end;

end;

procedure TdmExibirTabelas.DataModuleCreate(Sender: TObject);
begin
  qryHistoricoFuncoes.Connection := dmPessoal.cntPessoal;
  qryHistoricoLotacoes.Connection := dmPessoal.cntPessoal;
end;

function TdmExibirTabelas.ExibirHistoricoLotacoes(pidPessoal, pidServidor: String; pTop,
  pOrdem: integer): Integer;
var wSQL : String;
begin
  with qryHistoricoLotacoes do
  begin
    Active := false;
    wSQL:= 'SELECT ';

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

    Result := qryHistoricoLotacoes.RecordCount;

  end;


end;

end.
