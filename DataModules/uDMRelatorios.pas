unit uDMRelatorios;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmRelatorios = class(TDataModule)
    sprRelAfastamento: TADOStoredProc;
    qryAbonoAnual: TADOQuery;
    sprRelAfastamentoProcuradores: TADOStoredProc;
    qryRel_Conf_Fer_Mens: TADOQuery;
    qryFeriasAnuais: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatorios: TdmRelatorios;

implementation

uses uDMConexao;

{$R *.dfm}

procedure TdmRelatorios.DataModuleCreate(Sender: TObject);
begin
  sprRelAfastamento.Connection  := DMConexao.conPessoal;
  qryAbonoAnual.Connection      := DMConexao.conPessoal;
  qryRel_Conf_Fer_Mens.Connection := DMConexao.conPessoal;
  qryFeriasAnuais.Connection := DMConexao.conPessoal;
end;

end.
