unit ufRptDesligamentoEstagiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, StdCtrls,
  cxButtons, ExtCtrls, DB, ADODB, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmRptDesligamentoEstagiarios = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    grpbxOpcoes: TcxGroupBox;
    lblAno: TLabel;
    lblMes: TLabel;
    lkpAno: TcxLookupComboBox;
    lkpMes: TcxLookupComboBox;
    lblTotal: TLabel;
    qryPesquisa: TADOQuery;
    dsPesqPessoal: TDataSource;
    dsqryAno: TDataSource;
    dsqryMes: TDataSource;
    grdEstagiarios: TcxGrid;
    tbvEstagiarios: TcxGridDBTableView;
    tbvEstagiariosDataPosse: TcxGridDBColumn;
    tbvEstagiariosNome: TcxGridDBColumn;
    tbvEstagiariosCargo: TcxGridDBColumn;
    tbvEstagiariosLotacao: TcxGridDBColumn;
    tvRelPersonalizadoFerias: TcxGridDBTableView;
    tvRelPersonalizadoFeriasNOME: TcxGridDBColumn;
    tvRelPersonalizadoFeriasCPF: TcxGridDBColumn;
    tvRelPersonalizadoFeriasMATRICULA: TcxGridDBColumn;
    tvRelPersonalizadoFeriasTIPOAFASTAMENTO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasSIGLACARGO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasEXERCICIO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasPERIODO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasTIPO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasPARCELA: TcxGridDBColumn;
    tvRelPersonalizadoFeriasDT_INICIO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasDT_TERMINO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasSIGLALOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasSIGLA: TcxGridDBColumn;
    tvRelPersonalizadoFeriasLOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasSUPERLOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasCARGO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasFUNCAO: TcxGridDBColumn;
    tvRelPersonalizadoFeriasNProcessoSEI: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePonto: TcxGridDBTableView;
    tvRelEncaminhamentoFolhasDePontoNOME: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoMATRICULA: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoSIGLA: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoLOTACAO: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoSUPERLOTACAO: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoSITUACAOSERVIDOR: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoSITUACAOLOTACAO: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoDATAPOSSEFUNCAO: TcxGridDBColumn;
    tvRelEncaminhamentoFolhasDePontoREQUISITADO: TcxGridDBColumn;
    lvlEstagiarios: TcxGridLevel;
    tbvEstagiariosdt_DesligCargo: TcxGridDBColumn;
    tbvEstagiariosColumn1: TcxGridDBColumn;
    tbvEstagiariosColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure lkpMesClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisar: Integer;
    function SQLPesquisa: String;
  end;

var
  frmRptDesligamentoEstagiarios: TfrmRptDesligamentoEstagiarios;

implementation

uses uDMConexao, uDmExibirTabelas;

{$R *.dfm}

procedure TfrmRptDesligamentoEstagiarios.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;

  qryPesquisa.Connection := DMConexao.conPessoal;
  dsqryMes.DataSet := dmExibirTabelas.qryMes;
  dsqryAno.DataSet := dmExibirTabelas.qryAno;

  dmExibirTabelas.qryAno.Active := true;
  dmExibirTabelas.qryMes.Active := true;
  dmExibirTabelas.qryDataHora.Active := true;

  lkpAno.ItemIndex := 1;
  lkpMes.ItemIndex := dmExibirTabelas.qryDataHora.FieldValues['Mes']-2;
end;

function TfrmRptDesligamentoEstagiarios.pesquisar: Integer;
begin
  with qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLPesquisa);
    Active := True;
  end;

  Result := qryPesquisa.RecordCount;
end;

function TfrmRptDesligamentoEstagiarios.SQLPesquisa: String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '
  + ' pes.Nome, ser.idCargo, car.descricao as Cargo, lot.Sigla, lot.descricao as Lotacao'
  + ', convert(char(10), dt_PosseCargo, 103) as dt_PosseCargo'
  + ', convert(char(10), dt_Deslig_Cargo, 103) as dt_DesligCargo'
  + ', convert(char(10), dbo.F_InicioPrimeiroAfastamento(pes.idPessoal), 103) as dtInicio1'
  + ', convert(char(10), dbo.F_InicioPrimeiroAfastamento(pes.idPessoal)+ 30, 103) as dtTermino1'
//--, convert(char(10), dbo.F_TerminoPrimeiroAfastamento(pes.idPessoal), 103)'
  + ', convert(char(10), dbo.F_InicioSegundoAfastamento(pes.idPessoal), 103)'
//--, convert(char(10), dbo.F_TerminoSegundoAfastamento(pes.idPessoal), 103)'
  + ', convert(char(10), dbo.F_InicioTerceiroAfastamento(pes.idPessoal), 103)'
//--, convert(char(10), dbo.F_TerminoTerceiroAfastamento(pes.idPessoal), 103)'
  + ', convert(char(10), dbo.F_InicioQuartoAfastamento(pes.idPessoal), 103)'
//--, convert(char(10), dbo.F_TerminoQuartoAfastamento(pes.idPessoal), 103)'
  + ' FROM tbPessoal pes'
  + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' LEFT JOIN tbLotacao lot ON lot.idLotacao = ser.idLotacao'

  + ' WHERE ser.idCargo LIKE ' + QuotedStr('EST%')
  + ' AND YEAR(dt_Deslig_Cargo) = ' + QuotedStr(lkpAno.Text)
  + ' AND month(dt_Deslig_Cargo) = ' + QuotedStr(lkpMes.EditValue)

  + ' ORDER BY dt_Deslig_Cargo DESC';

  Result := pesquisa;

end;

procedure TfrmRptDesligamentoEstagiarios.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRptDesligamentoEstagiarios.lkpMesClick(Sender: TObject);
begin
  lblTotal.Caption := 'Total de registros: ' +
  FormatFloat(',0', pesquisar);
end;

end.
