unit uDMExcluirFeriasAbonoAfastamento;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmExcluirFeriasAbonoAfastamento = class(TDataModule)
    qryDelete: TADOQuery;
  private
    { Private declarations }
  public
    function excluirFerias(ID: Integer): boolean;
    function SQLDeleteFerias(ID: Integer): String;

    function excluirAbono(ID: Integer): boolean;
    function SQLDeleteAbono(ID: Integer): String;

  end;

var
  dmExcluirFeriasAbonoAfastamento: TdmExcluirFeriasAbonoAfastamento;

implementation

uses uDMConexao, ufLogs, uPesFuncoes;

{$R *.dfm}

{ TDMExcluirFeriasAbonoAfastamento }

function TdmExcluirFeriasAbonoAfastamento.excluirAbono(
  ID: Integer): boolean;
begin
  try
    with DMExcluirFeriasAbonoAfastamento.qryDelete do
    begin
      Connection := dmConexao.conPessoal;

      SQL.Text := SQLDeleteAbono(ID);
      ExecSQL;

      // A linha abaixo sempre deverá ficar abaixo do comando ExecSQL
      // pois não estava sendo executado
      // Obs: transferir para a função retornaSQlUpdateAbono
      // verificar todos os programas que executam ações SQL

      monitorarAcoesDaSessao
      ('ufUpdateAbonoAnual', 'Exclusão do abono (excluirAbono)', SQL.Text);
    end;
    Result := true    
  except
    Result := false;
  end;
end;

function TdmExcluirFeriasAbonoAfastamento.excluirFerias(
  ID: Integer): boolean;
begin
  try
      with DMExcluirFeriasAbonoAfastamento.qryDelete do
      begin
        Connection := dmConexao.conPessoal;

        SQL.Text := SQLDeleteFerias(ID);
        ExecSQL;

        frmLogs.mmoLog.Lines.Add(SQL.Text);
      end;
    Result := true
  except
    Result := false;
  end;
end;

function TdmExcluirFeriasAbonoAfastamento.SQLDeleteAbono(
  ID: Integer): String;
begin
  Result := ' DELETE FROM tbAbono'
          + ' WHERE ID = ' + IntToStr(ID);
end;

function TdmExcluirFeriasAbonoAfastamento.SQLDeleteFerias(
  ID: Integer): String;
begin
  Result := ' DELETE FROM tbFerias'
          + ' WHERE ID = ' + IntToStr(ID);
end;

end.
