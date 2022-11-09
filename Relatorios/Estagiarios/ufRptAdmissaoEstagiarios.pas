unit ufRptAdmissaoEstagiarios;

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
  TfrmRptAdmissaoEstagiarios = class(TForm)
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
    tbvEstagiariosNome: TcxGridDBColumn;
    tbvEstagiariosDataPosse: TcxGridDBColumn;
    tbvEstagiariosCargo: TcxGridDBColumn;
    tbvEstagiariosLotacao: TcxGridDBColumn;
    procedure lkpMesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisar: Integer;
    function SQLPesquisa: String;
  end;

var
  frmRptAdmissaoEstagiarios: TfrmRptAdmissaoEstagiarios;

implementation

uses uDMConexao, uDmExibirTabelas;

{$R *.dfm}

procedure TfrmRptAdmissaoEstagiarios.lkpMesClick(Sender: TObject);
begin
  lblTotal.Caption := 'Total de registros: ' +
  FormatFloat(',0', pesquisar);
end;

function TfrmRptAdmissaoEstagiarios.pesquisar: Integer;
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

procedure TfrmRptAdmissaoEstagiarios.FormCreate(Sender: TObject);
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

function TfrmRptAdmissaoEstagiarios.SQLPesquisa: String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT '
  + ' pes.Nome, ser.idCargo, car.descricao as Cargo, lot.descricao as Lotacao'
  + ' , convert(char(10), dt_PosseCargo, 103) as dt_PosseCargo'
  + ' FROM tbPessoal pes'
  + ' INNER JOIN tbServidor ser ON ser.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbCargo car ON car.idCargo = ser.idCargo'
  + ' LEFT JOIN tbLotacao lot ON lot.idLotacao = ser.idLotacao'
  + ' WHERE ser.idCargo LIKE ' + QuotedStr('EST%')
  + ' AND YEAR(dt_PosseCargo) = ' + QuotedStr(lkpAno.Text)
  + ' AND month(dt_PosseCargo) = ' + QuotedStr(lkpMes.EditValue)
  + ' ORDER BY dt_PosseCargo DESC, pes.nome';

  //monitorarAcoesDaSessao
  //('uDMPessoal', 'Retorna SQL da pesquisa do servidor (retornaSQLPesquisaServidor)', pesquisa);

  Result := pesquisa;

end;

procedure TfrmRptAdmissaoEstagiarios.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
