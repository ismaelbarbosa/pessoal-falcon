unit uDMPessoal;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmPessoal = class(TDataModule)
    qryExecSQL: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPessoal: TdmPessoal;

implementation

{$R *.dfm}

end.
