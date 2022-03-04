unit uDmTemporario;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, ADODB, SqlExpr, DB;

type
  TdmTemporario = class(TDataModule)
    qryidPessoal_MaxADO: TADOQuery;
    qryDataHoraADO: TADOQuery;
    qryPessoal: TADOQuery;
    dsqryPessoal: TDataSource;
    dsqryCargo: TDataSource;
    qryCargo: TADOQuery;
    qryFuncao: TADOQuery;
    dsqryFuncao: TDataSource;
    dsqryLotacao: TDataSource;
    qryLotacao: TADOQuery;
    qryEstadoCivil: TADOQuery;
    dsqryEstadoCivil: TDataSource;
    dsqryDesligamento: TDataSource;
    qryDesligamento: TADOQuery;
    cntPesqPessoal: TSQLConnection;
    qryPesqCPF: TSQLQuery;
    qryDataHora: TSQLQuery;
    qryidPessoal_Max: TSQLQuery;
    qryBanco: TADOQuery;
    dsqryBanco: TDataSource;
    qryUF_Natural: TADOQuery;
    dsqryUF_Natural: TDataSource;
    qryUF_End: TADOQuery;
    dsqryUF_End: TDataSource;
    qryUF_CI: TADOQuery;
    dsqryUF_CI: TDataSource;
    qryUF_TE: TADOQuery;
    dsqryUF_TE: TDataSource;
    qryidPessoal: TADOQuery;
    dsqryidPessoal: TDataSource;
    qryPesq_idServidor: TSQLQuery;
    qryidPessoal_Servidor: TADOQuery;
    qryidPessoal_Dados: TADOQuery;
    qryTelInserir: TADOQuery;
    qryTelExibir: TADOQuery;
    dsqryTelInserir: TDataSource;
    dsqryTelExibir: TDataSource;
    qryTelDuplicado: TSQLQuery;
    qrySelTipoTel: TADOQuery;
    dsqrySelTipoTel: TDataSource;
    cmdExcluiTel: TADOCommand;
    qryPesqPensionista: TADOQuery;
    dsqryPesqPensionista: TDataSource;
    qryPesquisa: TADOQuery;
    dsqryPesquisa: TDataSource;
    cmdExcluiServidor: TADOCommand;
    qryPesqTelefone: TADOQuery;
    dsqryPesqTelefone: TDataSource;
    qryidPessoal_Utente: TADOQuery;
    qryPessoalUtente: TADOQuery;
    dsqryPessoalUtente: TDataSource;
    qryPesquisaUtente: TADOQuery;
    dsqryPesquisaUtente: TDataSource;
    qryPesqUtLotacao: TADOQuery;
    dsqryPesqUtLotacao: TDataSource;
    qryPessoalPensionista: TADOQuery;
    qryidPessoal_Pens_Dados: TADOQuery;
    qryidPessoal_Pensionista: TADOQuery;
    dsqryPessoalPensionista: TDataSource;
    cmdExcluiUtente: TADOCommand;
    qryPesqTelPensionista: TADOQuery;
    dsqryPesqTelPensionista: TDataSource;
    strprocPesqCPF: TADOStoredProc;
    strprocPesq_idServidor: TADOStoredProc;
    strprocPesq_Matr_Ferias: TADOStoredProc;
    strprocPesq_Folha_Frequencia: TADOStoredProc;
    qryFolha_Frequencia: TADOQuery;
    qryPesqFolhaFreq: TADOQuery;
    dsqryPesqFolhaFreq: TDataSource;
    dsqryHist_Funcoes: TDataSource;
    qryHist_Funcoes: TADOQuery;
    cntPessoalOld: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTemporario: TdmTemporario;

implementation

{$R *.dfm}

end.
