unit udmPesComplemento;

interface

uses
  SysUtils, Classes, DB, ADODB, FMTBcd, SqlExpr, Variants;

type
  TdmPesComplemento = class(TDataModule)
    qryFeriasInserir: TADOQuery;
    qryFeriasExibir: TADOQuery;
    dsqryFeriasInserir: TDataSource;
    dsqryFeriasExibir: TDataSource;
    qrySelPeriodo: TADOQuery;
    dsqrySelPeriodo: TDataSource;
    dsqrySelParcela: TDataSource;
    qrySelParcela: TADOQuery;
    qrySelTipoParcela: TADOQuery;
    dsqrySelTipoParcela: TDataSource;
    qryFeriasDuplicadas: TSQLQuery;
    cmdExcluiFerias: TADOCommand;
    qryPesqFerias: TADOQuery;
    dsqryPesqFerias: TDataSource;
    cmdExcluiAbono: TADOCommand;
    qryAbonoInserir: TADOQuery;
    dsqryAbonoInserir: TDataSource;
    qryAbonoExibir: TADOQuery;
    dsqryAbonoExibir: TDataSource;
    qryPesqAbono: TADOQuery;
    dsqryPesqAbono: TDataSource;
    qryAbonoDuplicado: TSQLQuery;
    qryAfastamentoInserir: TADOQuery;
    dsqryAfastamentoInserir: TDataSource;
    qryAfastamentoExibir: TADOQuery;
    dsqryAfastamentoExibir: TDataSource;
    qrySelAfastamento: TADOQuery;
    dsqrySelAfastamento: TDataSource;
    qryAfastamentoDuplicado: TSQLQuery;
    qryPesqAfastamento: TADOQuery;
    dsqryPesqAfastamento: TDataSource;
    qryPesqCargo: TADOQuery;
    dsqryPesqCargo: TDataSource;
    qryPesqLotacao: TADOQuery;
    dsqryPesqLotacao: TDataSource;
    qryPesqFuncao: TADOQuery;
    dsqryPesqFuncao: TDataSource;
    dsqryPesqDesligamento: TDataSource;
    qryPesqDesligamento: TADOQuery;
    qryPesqEstadoCivil: TADOQuery;
    dsqryPesqEstadoCivil: TDataSource;
    qrySelGrauInstrucao: TADOQuery;
    dsqrySelGrauInstrucao: TDataSource;
    qrySelCurso: TADOQuery;
    dsqrySelCurso: TDataSource;
    qryMax_CF_Num: TADOQuery;
    qryMaxCF_Proc_Num: TADOQuery;
    qrySubstProcurador: TADOQuery;
    dsqrySubstProcurador: TDataSource;
    qryHist_Lotacao: TADOQuery;
    dsqryHist_Lotacao: TDataSource;
    sproc_DataDisponivel: TADOStoredProc;
    SProc_DadosUsuarioLogado: TADOStoredProc;
    qryRetornaAfastamentosEFeriasCoincidentes: TADOQuery;
    dsqryRetornaAfastamentosEFeriasCoincidentes: TDataSource;
    qryTranspostoCarreiraProcurador: TADOQuery;
    procedure qryFeriasInserirAfterOpen(DataSet: TDataSet);
    procedure qryFeriasExibirAfterOpen(DataSet: TDataSet);
    procedure qryAbonoInserirAfterOpen(DataSet: TDataSet);
    procedure qryAbonoExibirAfterOpen(DataSet: TDataSet);
    procedure qryPesqFeriasAfterOpen(DataSet: TDataSet);
    procedure qryPesqAbonoAfterOpen(DataSet: TDataSet);
    procedure qryAfastamentoInserirAfterOpen(DataSet: TDataSet);
    procedure qryAfastamentoExibirAfterOpen(DataSet: TDataSet);
    procedure qryPesqAfastamentoAfterOpen(DataSet: TDataSet);
    procedure qryFeriasInserirAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function TranspostoCarreiraProcurador(idPessoal: string): boolean;
  end;

var
  dmPesComplemento: TdmPesComplemento;

implementation

uses udmPessoal;

{$R *.dfm}

procedure TdmPesComplemento.qryFeriasInserirAfterOpen(DataSet: TDataSet);
begin

qryFeriasInserir.FieldByName('Dt_Inicio').EditMask := '99/99/9999;1;_';
qryFeriasInserir.FieldByName('Dt_Termino').EditMask := '99/99/9999;1;_';
qryFeriasInserir.FieldByName('Dt_InicioReagendamento').EditMask := '99/99/9999;1;_';
qryFeriasInserir.FieldByName('Dt_TerminoReagendamento').EditMask := '99/99/9999;1;_';
qryFeriasInserir.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryFeriasExibirAfterOpen(DataSet: TDataSet);
begin

qryFeriasExibir.FieldByName('Dt_Inicio').EditMask := '99/99/9999;1;_';
qryFeriasExibir.FieldByName('Dt_Termino').EditMask := '99/99/9999;1;_';
qryFeriasExibir.FieldByName('Dt_InicioReagendamento').EditMask := '99/99/9999;1;_';
qryFeriasExibir.FieldByName('Dt_TerminoReagendamento').EditMask := '99/99/9999;1;_';
qryFeriasExibir.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryAbonoInserirAfterOpen(DataSet: TDataSet);
begin

qryAbonoInserir.FieldByName('Dt_1').EditMask := '99/99/9999;1;_';
qryAbonoInserir.FieldByName('Dt_2').EditMask := '99/99/9999;1;_';
qryAbonoInserir.FieldByName('Dt_3').EditMask := '99/99/9999;1;_';
qryAbonoInserir.FieldByName('Dt_4').EditMask := '99/99/9999;1;_';
qryAbonoInserir.FieldByName('Dt_5').EditMask := '99/99/9999;1;_';
qryAbonoInserir.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryAbonoExibirAfterOpen(DataSet: TDataSet);
begin

qryAbonoExibir.FieldByName('Dt_1').EditMask := '99/99/9999;1;_';
qryAbonoExibir.FieldByName('Dt_2').EditMask := '99/99/9999;1;_';
qryAbonoExibir.FieldByName('Dt_3').EditMask := '99/99/9999;1;_';
qryAbonoExibir.FieldByName('Dt_4').EditMask := '99/99/9999;1;_';
qryAbonoExibir.FieldByName('Dt_5').EditMask := '99/99/9999;1;_';
qryAbonoExibir.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryPesqFeriasAfterOpen(DataSet: TDataSet);
begin

qryPesqFerias.FieldByName('Dt_Inicio').EditMask := '99/99/9999;1;_';
qryPesqFerias.FieldByName('Dt_Termino').EditMask := '99/99/9999;1;_';
qryPesqFerias.FieldByName('Dt_InicioReagendamento').EditMask := '99/99/9999;1;_';
qryPesqFerias.FieldByName('Dt_TerminoReagendamento').EditMask := '99/99/9999;1;_';
qryPesqFerias.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';



end;

procedure TdmPesComplemento.qryPesqAbonoAfterOpen(DataSet: TDataSet);
begin

qryPesqAbono.FieldByName('Dt_1').EditMask := '99/99/9999;1;_';
qryPesqAbono.FieldByName('Dt_2').EditMask := '99/99/9999;1;_';
qryPesqAbono.FieldByName('Dt_3').EditMask := '99/99/9999;1;_';
qryPesqAbono.FieldByName('Dt_4').EditMask := '99/99/9999;1;_';
qryPesqAbono.FieldByName('Dt_5').EditMask := '99/99/9999;1;_';
qryPesqAbono.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryAfastamentoInserirAfterOpen(
  DataSet: TDataSet);
begin

qryAfastamentoInserir.FieldByName('Dt_inicio').EditMask := '99/99/9999;1;_';
qryAfastamentoInserir.FieldByName('Dt_termino').EditMask := '99/99/9999;1;_';
qryAfastamentoInserir.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryAfastamentoExibirAfterOpen(
  DataSet: TDataSet);
begin

qryAfastamentoExibir.FieldByName('Dt_inicio').EditMask := '99/99/9999;1;_';
qryAfastamentoExibir.FieldByName('Dt_termino').EditMask := '99/99/9999;1;_';
qryAfastamentoExibir.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryPesqAfastamentoAfterOpen(DataSet: TDataSet);
begin

qryPesqAfastamento.FieldByName('Dt_inicio').EditMask := '99/99/9999;1;_';
qryPesqAfastamento.FieldByName('Dt_termino').EditMask := '99/99/9999;1;_';
qryPesqAfastamento.FieldByName('nProcessoSEI').EditMask := '99999-99999999/9999-99;0;_';

end;

procedure TdmPesComplemento.qryFeriasInserirAfterInsert(DataSet: TDataSet);
begin

qryFeriasInserir.FieldValues['abono'] := false;
qryFeriasInserir.FieldValues['decimo'] := false;
qryFeriasInserir.FieldValues['antecipacao'] := false;

end;

function TdmPesComplemento.TranspostoCarreiraProcurador(
  idPessoal: string): boolean;
begin

  qryTranspostoCarreiraProcurador.Active := false;
  qryTranspostoCarreiraProcurador.Parameters.ParamValues['idpessoal'] := idPessoal;
  qryTranspostoCarreiraProcurador.Active := true;

  if qryTranspostoCarreiraProcurador.RecordCount > 0 then Result := True
  else Result := False;

end;

end.
