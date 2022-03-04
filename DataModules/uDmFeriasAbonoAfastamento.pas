unit uDmFeriasAbonoAfastamento;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmFeriasAbonoAfastamento = class(TDataModule)
    qryPesquisa: TADOQuery;
    dsPesquisa: TDataSource;
    qryFerias: TADOQuery;
    qryFeriasidPessoal: TStringField;
    qryFeriasidExercicio: TStringField;
    qryFeriasidPeriodo: TStringField;
    qryFeriasidParcela: TStringField;
    qryFeriasidTipoParcela: TStringField;
    qryFeriasDt_Inicio: TDateTimeField;
    qryFeriasDt_Termino: TDateTimeField;
    qryFeriasidServidor: TStringField;
    qryFeriasDt_InicioReagendamento: TDateTimeField;
    qryFeriasDt_TerminoReagendamento: TDateTimeField;
    qryFeriasObservacao: TStringField;
    qryFeriasnProcessoSEI: TStringField;
    qryFeriasidPeriodo_1: TStringField;
    qryFeriasdescricaoPeriodo: TStringField;
    qryFeriasidParcela_1: TStringField;
    qryFeriasdescricaoParcela: TStringField;
    qryFeriasidTipoParcela_1: TStringField;
    qryFeriasdescricaoTipo: TStringField;
    dsFerias: TDataSource;
    qryAfastamento: TADOQuery;
    qryAfastamentoidPessoal: TStringField;
    qryAfastamentoidServidor: TStringField;
    qryAfastamentoidExercicio: TStringField;
    qryAfastamentoDt_Inicio: TDateTimeField;
    qryAfastamentoDt_Termino: TDateTimeField;
    qryAfastamentoObservacao: TStringField;
    qryAfastamentonProcessoSEI: TStringField;
    qryAfastamentoidAfastamento: TStringField;
    qryAfastamentodescricaoAfastamento: TStringField;
    qryAfastamentoCodigo: TStringField;
    qryAfastamentoValido: TBooleanField;
    qryAfastamentoAbreviatura: TStringField;
    dsAfastamento: TDataSource;
    qryAbonoAnual: TADOQuery;
    qryAbonoAnualidPessoal: TStringField;
    qryAbonoAnualidExercicio: TStringField;
    qryAbonoAnualnProcessoSEI: TStringField;
    qryAbonoAnualDt_1: TDateTimeField;
    qryAbonoAnualDt_2: TDateTimeField;
    qryAbonoAnualDt_3: TDateTimeField;
    qryAbonoAnualDt_4: TDateTimeField;
    qryAbonoAnualDt_5: TDateTimeField;
    dsAbonoAnual: TDataSource;
    qryTipoAfastamento: TADOQuery;
    dsTipoAfastamento: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function retornarTipoAfastamento: boolean;
    function pesquisarPessoal(valor:String):Integer;
    function exibirFerias(idPessoal, idServidor: String): Integer;
    function exibirAbonos(idPessoal, idServidor: String): Integer;
    function exibirAfastamentos(idPessoal, idServidor: String): Integer;
  end;

var
  dmFeriasAbonoAfastamento: TdmFeriasAbonoAfastamento;

implementation

uses uDMConexao, PRG_utils, ufLogs;

{$R *.dfm}

procedure TdmFeriasAbonoAfastamento.DataModuleCreate(Sender: TObject);
begin
  with DMConexao do
  begin
    qryPesquisa.Connection        := conPessoal;
    qryFerias.Connection          := conPessoal;
    qryAfastamento.Connection     := conPessoal;
    qryTipoAfastamento.Connection := conPessoal;

    {qryLotacao.Connection := conPessoal;
    qryEspecialidade.Connection := conPessoal;
    qryFuncao.Connection := conPessoal;
    qryUF.Connection := conPessoal;
    qryEstadoCivil.Connection := conPessoal;
    qryGrauInstrucao.Connection := conPessoal;
    qryCurso.Connection := conPessoal;
    qryBanco.Connection := conPessoal;}
  end

end;

function TdmFeriasAbonoAfastamento.exibirAbonos(idPessoal,
  idServidor: String): Integer;
var wSQL: String;
begin
  with qryAbonoAnual do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    'SELECT'
    + ' Abo.idPessoal, Abo.idExercicio,'
    + ' Abo.nProcessoSEI,'
    + ' Abo.Dt_1, Abo.Dt_2, Abo.Dt_3, Abo.Dt_4, Abo.Dt_5'

    + ' FROM tbAbono as Abo'
    + ' WHERE 1=1'
    + ' and Abo.idPessoal = ' + QuotedStr(idPessoal)
    + ' AND Abo.idServidor = ' + QuotedStr(idServidor)
    + ' ORDER BY Abo.idExercicio desc';

    SQL.Add(wSQL);

    frmLogs.mmoLog.Lines.Add(wSQL);

    Active := true;
    Result := RecordCount;
  end;
end;

function TdmFeriasAbonoAfastamento.exibirAfastamentos(idPessoal,
  idServidor: String): Integer;
var wSQL: String;
begin
  with qryAfastamento do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    'SELECT'
    + ' Saf.idPessoal, Saf.idServidor, Saf.idExercicio,'
    + ' Saf.Dt_Inicio, Saf.Dt_Termino,'
    + ' Saf.Observacao,'
    + ' Saf.nProcessoSEI,'
    + ' Afa.idAfastamento, Afa.Descricao as descricaoAfastamento,'
    + ' Afa.Codigo, Afa.Valido, Afa.Abreviatura'
    + ' FROM tbServ_Afast as Saf'
    + ' LEFT JOIN tbAfastamento as Afa on Afa.idAfastamento = Saf.idAfastamento'
    + ' WHERE 1=1'
    + ' and Saf.idPessoal = ' + QuotedStr(idPessoal)
    + ' AND Saf.idServidor = ' + QuotedStr(idServidor)
    + ' ORDER BY Saf.idExercicio desc';

    SQL.Add(wSQL);
//    frmLogs .mmoSQL.Lines.Add(wSQL);
    Active := true;
    Result := RecordCount;

  end;
end;

function TdmFeriasAbonoAfastamento.exibirFerias(idPessoal,
  idServidor: String): Integer;
var wSQL: String;
begin
  with DMFeriasAbonoAfastamento.qryFerias do
  begin
    Active := false;
    SQL.Clear;
    wSQL :=

    {'SELECT idPessoal, idServidor, CONVERT(char(10), Dt_Inicio, 103) as Dt_Inicio'
    + ', CONVERT(char(10), Dt_Termino, 103) as Dt_Termino'
    + ', idPeriodo, idParcela, idTipoParcela'
    + ' FROM tbFerias fer '
    + ' WHERE idPessoal = ' + QuotedStr(idPessoal)
    + ' AND idServidor = ' + QuotedStr(idServidor);
    }

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
    + ' and Fer.idPessoal = ' + QuotedStr(idPessoal)
    + ' AND Fer.idServidor = ' + QuotedStr(idServidor)
    + ' ORDER BY Fer.idExercicio desc';

    SQL.Add(wSQL);

    Active := true;
    Result := RecordCount;
  end;

end;

function TdmFeriasAbonoAfastamento.pesquisarPessoal
(valor: String): Integer;
var wSQL: String;
begin
  with DMFeriasAbonoAfastamento.qryPesquisa do
  begin
    Active := false;
    SQL.Clear;
    wSQL := 'SELECT Nome, pes.idPessoal, ser.idServidor'
    + ', ser.idCargo, ser.idDesligamento, car.Descricao as Cargo, lot.Descricao as Lotacao'
    + ' FROM tbPessoal pes '
    + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
    + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
    + ' LEFT JOIN tbLotacao lot on lot.idLotacao = ser.idLotacao'
    + ' WHERE '

//    + ' Nome like ' + QuotedStr('%'+ edtPesquisa.Text + '%')

    + '('
    + Gera_SQL(RemoveIndesejadas(valor), 'pes.Nome')

    + ' OR '
//    + ' idServidor like ' + QuotedStr('%'+ edtPesquisa.Text + '%');

    + Gera_SQL(RemoveIndesejadas(valor), 'ser.idServidor')

    + ')'

    + ' AND (ser.idDesligamento is NULL or ser.idDesligamento = ' + QuotedStr('') + ')'

    + ' AND (ser.idCargo not in ('
    + QuotedStr('ESTNS')
    + ', '
    + QuotedStr('ESTNM')
    + '))'

    + ' ORDER BY pes.Nome';


    SQL.Add(wSQL);

    frmLogs.mmoLog.Lines.Add(wSQL);
    Active := true;
    Result := RecordCount;
  end;

end;

function TdmFeriasAbonoAfastamento.retornarTipoAfastamento: boolean;
begin
  try
    qryTipoAfastamento.Active := false;
    qryTipoAfastamento.SQL.Text :=

    'SELECT idAfastamento, Descricao, Abreviatura'
    + ' FROM tbAfastamento '
//    + ' WHERE nova_estrutura = ''1'' and ' + ' 1=1 '
    + ' ORDER BY Descricao';

    qryTipoAfastamento.Active := true;

   except
     Result := false;
  end;

  if qryTipoAfastamento.RecordCount > 0 then Result := true
  else Result := false;

end;

end.
