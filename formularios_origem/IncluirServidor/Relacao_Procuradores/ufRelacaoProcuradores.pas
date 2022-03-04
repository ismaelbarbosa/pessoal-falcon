unit ufRelacaoProcuradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmRelacaoProcuradores = class(TForm)
    qryProcurador: TADOQuery;
    Panel1: TPanel;
    lblQtdProcurador: TLabel;
    dsProcurador: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    qryFerias: TADOQuery;
    dsFerias: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisarProcurador:integer;
  end;

var
  frmRelacaoProcuradores: TfrmRelacaoProcuradores;

implementation

uses uDMConexao;

{$R *.dfm}

procedure TfrmRelacaoProcuradores.FormCreate(Sender: TObject);
begin
  lblQtdProcurador.Caption := IntToStr(pesquisarProcurador);
end;

function TfrmRelacaoProcuradores.pesquisarProcurador: integer;
begin
  with qryProcurador do
  begin
    Connection := DMConexao.conPessoal;
    SQL.Text := 'SELECT pes.idPessoal, ser.idServidor, pes.Nome, car.Descricao as Cargo, * FROM tbPessoal pes'
              + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
              + ' INNER JOIN tbCargo car on car.idCargo = ser.idCargo'
              + ' WHERE ser.idCargo in (''PA0000'', ''PB0000'', ''SP0000'')'
              + ' ORDER BY nome';

    Active := true;

    Result := RecordCount;
    
  end;
end;

end.
