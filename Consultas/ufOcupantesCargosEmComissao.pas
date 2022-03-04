unit ufOcupantesCargosEmComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, StdCtrls, cxButtons, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, cxPC, cxContainer, cxGroupBox, DBCtrls;

type
  TfrmOcupantesCargosEmComissao = class(TForm)
    qryComissionados: TADOQuery;
    dsComissionados: TDataSource;
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    pgcSituacao: TcxPageControl;
    tshCargosComissionados: TcxTabSheet;
    tshExercicioExterno: TcxTabSheet;
    pnlCargosComissionados: TPanel;
    pnlExercicioExterno: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnExportarCargos: TcxButton;
    qryExercicioExterno: TADOQuery;
    dsExercicioExterno: TDataSource;
    txtNome: TDBText;
    lblMatricula: TLabel;
    txtMatricula: TDBText;
    cxGroupBox1: TcxGroupBox;
    lblTotalCargosComissionados: TLabel;
    lblTotalExercicioExterno: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label29: TLabel;
    DBText29: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText4: TDBText;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    Label6: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisarCargosComissionados: integer;
    function pesquisarExercicioExterno: integer;

  end;

var
  frmOcupantesCargosEmComissao: TfrmOcupantesCargosEmComissao;

implementation

uses uDMConexao, ufPrincipal;

{$R *.dfm}

procedure TfrmOcupantesCargosEmComissao.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

function TfrmOcupantesCargosEmComissao.pesquisarCargosComissionados: integer;
begin
  with qryComissionados do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SELECT Nome, ser.idServidor, fun.descricao as Funcao, idDFG, '
    + ' car.descricao as Cargo, ser.Especialidade, '
    + ' ser.Especialidade, lot.descricao as Lotacao, lot.SuperLotacao,'
    + ' convert(char(10), ser.dt_PosseFuncao, 103) as dataPosse,'
    + ' convert(char(10), ser.dt_deslig_funcao, 103) as dataDesligamento,'
    + ' convert(char(10), dt_deslig_funcaoDODF, 103) as dataDesligamentoDODF'
    + ' from tbFuncao fun'
    + ' inner join tbServidor ser on ser.idFuncao = fun.idFuncao'
    + ' inner join tbPessoal pes on pes.idPessoal = ser.idPessoal'
    + ' left join tbCargo car on car.idCargo = ser.idCargo'
    + ' left join tbLotacao lot on lot.idLotacao = fun.idLotacao'
    + ' where idDesligamento is  null'
    + ' and fun.Nova_Estrutura = 1'
    + ' order by Nome';
    Active := true;
  end;

  Result := qryComissionados.RecordCount;

end;

procedure TfrmOcupantesCargosEmComissao.FormActivate(Sender: TObject);
begin
  pgcSituacao.ActivePage := tshCargosComissionados;
  lblTotalCargosComissionados.Caption := IntToStr(pesquisarCargosComissionados);
  lblTotalExercicioExterno.Caption := IntToStr(pesquisarExercicioExterno);
end;

procedure TfrmOcupantesCargosEmComissao.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmOcupantesCargosEmComissao.pesquisarExercicioExterno: integer;
begin
  with qryExercicioExterno do
  begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'SELECT Nome, ser.idServidor,'
    + ' car.descricao as Cargo, ser.Especialidade,'
    + ' ser.Especialidade, lot.descricao as Lotacao,'
	  + ' ser.idOrgaoExercicioexterno, oee.descricao as OrgaoEmExercicio,'
    + ' convert(char(10), ser.dt_PosseFuncao, 103) as dataInicioExercicioExterno,'
	  + ' convert(char(10), ser.dt_TerminoExercicioExterno, 103) as dataTerminoExercicioExterno'
    + ' from tbServidor ser'
    + ' inner join tbPessoal pes on pes.idPessoal = ser.idPessoal'
    + ' left join tbCargo car on car.idCargo = ser.idCargo'
    + ' left join tbLotacao lot on lot.idLotacao = ser.idLotacao'
	  + ' left join tbOrgaoExercicioExterno oee on oee.idOrgaoExercicioExterno = ser.idOrgaoExercicioexterno'
    + ' where ser.idOrgaoExercicioExterno is not null'
    + ' and idDesligamento is  null'
    + ' order by Nome';

    Active := true;
  end;

  Result := qryExercicioExterno.RecordCount;

end;

end.
