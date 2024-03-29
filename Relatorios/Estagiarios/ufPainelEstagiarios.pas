unit ufPainelEstagiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxPC, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, ADODB, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGridExportLink;

type
  TfrmPainelEstagiarios = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TcxButton;
    btnPesquisar: TcxButton;
    qryPesquisa: TADOQuery;
    dsPesqPessoal: TDataSource;
    dsqryMes: TDataSource;
    dsqryAno: TDataSource;
    grpbxOpcoes: TcxGroupBox;
    lblAno: TLabel;
    lblMes: TLabel;
    lblTotal: TLabel;
    lkpAno: TcxLookupComboBox;
    lkpMes: TcxLookupComboBox;
    rgpSituacao: TcxRadioGroup;
    grdEstagiarios: TcxGrid;
    tbvEstagiarios: TcxGridDBTableView;
    tbvEstagiariosDataPosse: TcxGridDBColumn;
    tbvEstagiariosdt_DesligCargo: TcxGridDBColumn;
    tbvEstagiariosNome: TcxGridDBColumn;
    tbvEstagiariosCargo: TcxGridDBColumn;
    tbvEstagiariosLotacao: TcxGridDBColumn;
    tbvEstagiariosColumn1: TcxGridDBColumn;
    tbvEstagiariosColumn2: TcxGridDBColumn;
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
    SaveDialogExportarExcel: TSaveDialog;
    btnExportar: TcxButton;
    tbvEstagiariosColumn3: TcxGridDBColumn;
    tbvEstagiariosColumn4: TcxGridDBColumn;
    tbvEstagiariosColumn5: TcxGridDBColumn;
    tbvEstagiariosColumn6: TcxGridDBColumn;
    tbvEstagiariosColumn7: TcxGridDBColumn;
    tbvEstagiariosColumn8: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure rgpSituacaoClick(Sender: TObject);
    procedure lkpMesClick(Sender: TObject);
    procedure lkpAnoClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisar: Integer;
    function SQLPesquisa(Status: Integer): String;
  end;

var
  frmPainelEstagiarios: TfrmPainelEstagiarios;

implementation

uses uDMConexao, uDmExibirTabelas;

{$R *.dfm}

procedure TfrmPainelEstagiarios.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;

  qryPesquisa.Connection := DMConexao.conPessoal;
  dsqryMes.DataSet := dmExibirTabelas.qryMes;
  dsqryAno.DataSet := dmExibirTabelas.qryAno;

  dmExibirTabelas.qryAno.Active := true;
  dmExibirTabelas.qryMes.Active := true;
  dmExibirTabelas.qryDataHora.Active := true;

  lkpAno.ItemIndex := 1;
  lkpMes.ItemIndex := dmExibirTabelas.qryDataHora.FieldValues['Mes']-1;

  lkpAno.Enabled := false;
  lkpMes.Enabled := false;
end;

procedure TfrmPainelEstagiarios.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmPainelEstagiarios.pesquisar: Integer;
begin
  with qryPesquisa do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(SQLPesquisa(rgpSituacao.ItemIndex));
    Active := True;
  end;

  Result := qryPesquisa.RecordCount;
end;

function TfrmPainelEstagiarios.SQLPesquisa(Status: Integer): String;
var SQL: String;
begin
  SQL := 'SET DATEFORMAT dmy'
  + ' SELECT '
  + ' pes.Nome, ser.idCargo, car.descricao as Cargo, lot.Sigla, lot.descricao as Lotacao'
  + ', convert(char(10), dt_PosseCargo, 103) as dt_PosseCargo'
  + ', convert(char(10), dt_Deslig_Cargo, 103) as dt_DesligCargo'

  + ', Dt_InicioContrato1_Estagiario'
  + ', Dt_TerminoContrato1_Estagiario'
  + ', Dt_InicioContrato2_Estagiario'
  + ', Dt_TerminoContrato2_Estagiario'
  + ', Dt_InicioContrato3_Estagiario'
  + ', Dt_TerminoContrato3_Estagiario'
  + ', Dt_InicioContrato4_Estagiario'
  + ', Dt_TerminoContrato4_Estagiario'


//  + ', convert(char(10), dbo.F_InicioPrimeiroAfastamento(pes.idPessoal), 103) as dtInicio1'
//  + ', convert(char(10), dbo.F_InicioPrimeiroAfastamento(pes.idPessoal)+ 30, 103) as dtTermino1'
//--, convert(char(10), dbo.F_TerminoPrimeiroAfastamento(pes.idPessoal), 103)'
//  + ', convert(char(10), dbo.F_InicioSegundoAfastamento(pes.idPessoal), 103)'
//--, convert(char(10), dbo.F_TerminoSegundoAfastamento(pes.idPessoal), 103)'
//  + ', convert(char(10), dbo.F_InicioTerceiroAfastamento(pes.idPessoal), 103)'
//--, convert(char(10), dbo.F_TerminoTerceiroAfastamento(pes.idPessoal), 103)'
//  + ', convert(char(10), dbo.F_InicioQuartoAfastamento(pes.idPessoal), 103)'
//--, convert(char(10), dbo.F_TerminoQuartoAfastamento(pes.idPessoal), 103)'

  + ' FROM tbPessoal pes'
  + ' INNER JOIN tbServidor ser on ser.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' LEFT JOIN tbLotacao lot ON lot.idLotacao = ser.idLotacao'

  + ' WHERE ser.idCargo LIKE ' + QuotedStr('EST%');

  case Status of
    0: //admitidos
      begin
        SQL := SQL
        + ' AND idDesligamento is NULL' 
        + ' ORDER BY dt_PosseCargo DESC, pes.nome';
      end;
    1: //admitidos
      begin
        SQL := SQL
        + ' AND YEAR(dt_PosseCargo) = ' + QuotedStr(lkpAno.Text)
        + ' AND month(dt_PosseCargo) = ' + QuotedStr(lkpMes.EditValue)
        + ' ORDER BY dt_PosseCargo DESC, pes.nome';
      end;
    2: // desligados;
      begin
        SQL := SQL
        + ' AND YEAR(dt_Deslig_Cargo) = ' + QuotedStr(lkpAno.Text)
        + ' AND month(dt_Deslig_Cargo) = ' + QuotedStr(lkpMes.EditValue)
        + ' ORDER BY dt_Deslig_Cargo DESC, pes.nome';
      end;
  end;

  Result := SQL;
end;

procedure TfrmPainelEstagiarios.rgpSituacaoClick(Sender: TObject);
begin
  case rgpSituacao.ItemIndex of
  0:
    begin
      lkpAno.Enabled := false;
      lkpMes.Enabled := false;
    end;
  1,2:
    begin
      lkpAno.Enabled := true;
      lkpMes.Enabled := true;
    end;
  end;

  lblTotal.Caption := 'Total de registros: ' +
  FormatFloat(',0', pesquisar);
end;

procedure TfrmPainelEstagiarios.lkpMesClick(Sender: TObject);
begin
  lblTotal.Caption := 'Total de registros: ' +
  FormatFloat(',0', pesquisar);
end;

procedure TfrmPainelEstagiarios.lkpAnoClick(Sender: TObject);
begin
  lblTotal.Caption := 'Total de registros: ' +
  FormatFloat(',0', pesquisar);
end;

procedure TfrmPainelEstagiarios.btnExportarClick(Sender: TObject);
var
  FileExt: String;
begin
    if SaveDialogExportarExcel.Execute then//if2
    begin
    FileExt := LowerCase(ExtractFileExt(SaveDialogExportarExcel.FileName));
//      DiretorioParecer := ExtractFilePath(OpenDlgAnexarParecer.FileName);
      ExportGridToExcel(SaveDialogExportarExcel.FileName, grdEstagiarios, True, True, False, 'xls');

      ShowMessage('A pesquisa atual foi exportada com �xito para o arquivo "' + SaveDialogExportarExcel.FileName + ' ".');
    end//if2
    else ShowMessage('N�o foi poss�vel exportar o arquivo.');

end;

end.
