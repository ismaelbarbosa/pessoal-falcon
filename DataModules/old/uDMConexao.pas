unit uDMConexao;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMConexao = class(TDataModule)
    conPessoal: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{$R *.dfm}

end.
