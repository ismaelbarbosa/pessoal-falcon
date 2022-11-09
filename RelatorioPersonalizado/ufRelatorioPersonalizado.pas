unit ufRelatorioPersonalizado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxMaskEdit, ADODB, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, cxRadioGroup, StdCtrls, cxButtons

///

///
  , cxGridExportLink, ActnList, cxGridStrs,  cxCalendar, cxDBExtLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDBLookupComboBox, cxDropDownEdit,
  cxDBFilterControl,
  cxButtonEdit, cxFilterControlDialog, cxFilterControlStrs, cxFilterConsts, cxEditConsts,
  cxProgressBar, cxDBProgressBar,
  cxTextEdit,
  cxFilterControl;
///

type
  TfrmRelatorioPersonalizado = class(TForm)
    grpbxPesquisa: TcxGroupBox;
    btnExportar: TcxButton;
    edtPesquisar: TEdit;
    btnEmitirRelatorio: TcxButton;
    rdgrpSelecionaRelatorio_Old: TRadioGroup;
    rgpSelecionaRelatorio: TcxRadioGroup;
    grpbxRelPersonalizado: TcxGroupBox;
    grdRelPersonalizado: TcxGrid;
    tvRelPersonalizadoServidor: TcxGridDBTableView;
    tvRelPersonalizadoServidorSITUACAOSERVIDOR: TcxGridDBColumn;
    tvRelPersonalizadoServidorNOME: TcxGridDBColumn;
    tvRelPersonalizadoServidorMATRICULA: TcxGridDBColumn;
    tvRelPersonalizadoServidorCPF: TcxGridDBColumn;
    tvRelPersonalizadoServidorSIGLA: TcxGridDBColumn;
    tvRelPersonalizadoServidorLOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorSIGLALOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorSUPERLOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorCARGO: TcxGridDBColumn;
    tvRelPersonalizadoServidorFUNCAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorSITUACAOLOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorESPECIALIDADE: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATANOMEACAOCARGO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATANOMEACAOCARGODODF: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATAPOSSECARGO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATAEXERCICIOCARGO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATADESLIGAMENTOCARGO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATADESLIGAMENTOCARGODODF: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATANOMEACAOFUNCAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATANOMEACAOFUNCAODODF: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATAPOSSEFUNCAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATAEXERCICIOFUNCAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATADESLIGAMENTOFUNCAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATADESLIGAMENTOFUNCAODODF: TcxGridDBColumn;
    tvRelPersonalizadoServidorPAI: TcxGridDBColumn;
    tvRelPersonalizadoServidorMAE: TcxGridDBColumn;
    tvRelPersonalizadoServidorPISPASEP: TcxGridDBColumn;
    tvRelPersonalizadoServidorTIPOSANG: TcxGridDBColumn;
    tvRelPersonalizadoServidorNATURALIDADE: TcxGridDBColumn;
    tvRelPersonalizadoServidorUF: TcxGridDBColumn;
    tvRelPersonalizadoServidorDATANASCIMENTO: TcxGridDBColumn;
    tvRelPersonalizadoServidorIDENTIDADE: TcxGridDBColumn;
    tvRelPersonalizadoServidorREQUISITADO: TcxGridDBColumn;
    tvRelPersonalizadoServidorOAB: TcxGridDBColumn;
    tvRelPersonalizadoServidorOAB_SECAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorEMAIL: TcxGridDBColumn;
    tvRelPersonalizadoServidorCODIGOLOTACAO: TcxGridDBColumn;
    tvRelPersonalizadoServidorTIPODESLIGAMENTO: TcxGridDBColumn;
    tvRelPersonalizadoServidorCARGAHORARIA: TcxGridDBColumn;
    tvRelPersonalizadoServidorRAMAL: TcxGridDBColumn;
    tvRelPersonalizadoServidorSALA: TcxGridDBColumn;
    tvRelPersonalizadoServidorSIGLACARGO: TcxGridDBColumn;
    tvRelPersonalizadoServidorOrgaoDeOrigem: TcxGridDBColumn;
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
    lvgrdRelPersonalizadoServidor: TcxGridLevel;
    SaveDialog1: TSaveDialog;
    SaveDialogExportarExcel: TSaveDialog;
    tmrPesqPessoal: TTimer;
    qryPesqPessoal: TADOQuery;
    dsPesqPessoal: TDataSource;
    btnSair: TcxButton;
    rgpSituacao: TcxRadioGroup;
    lblTotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure rgpSelecionaRelatorioClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    function pesquisar: Integer;
  end;

var
  frmRelatorioPersonalizado: TfrmRelatorioPersonalizado;

implementation

uses uDMConexao;

{$R *.dfm}

procedure TfrmRelatorioPersonalizado.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  qryPesqPessoal.Connection := DMConexao.conPessoal;

  {qryPesqPessoal.Active := false;
  qryPesqPessoal.Parameters.ParamValues['tipoRelatorio'] := 'SERVIDOR';
  qryPesqPessoal.Active := true;}
end;

procedure TfrmRelatorioPersonalizado.rgpSelecionaRelatorioClick(
  Sender: TObject);
begin
  lblTotal.Caption := 'Total de registros: ' +
  FormatFloat(',0', pesquisar);
end;

procedure TfrmRelatorioPersonalizado.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelatorioPersonalizado.btnExportarClick(Sender: TObject);
var
  FileExt: String;
begin
    if SaveDialogExportarExcel.Execute then//if2
    begin
    FileExt := LowerCase(ExtractFileExt(SaveDialogExportarExcel.FileName));
//      DiretorioParecer := ExtractFilePath(OpenDlgAnexarParecer.FileName);
      ExportGridToExcel(SaveDialogExportarExcel.FileName, grdRelPersonalizado, True, True, False, 'xls');

      ShowMessage('A pesquisa atual foi exportada com êxito para o arquivo "' + SaveDialogExportarExcel.FileName + ' ".');
    end//if2
    else ShowMessage('Não foi possível exportar o arquivo.');


end;

function TfrmRelatorioPersonalizado.pesquisar: Integer;
begin
  case rgpSelecionaRelatorio.ItemIndex of
  0: begin
      qryPesqPessoal.Active := False;
      qryPesqPessoal.Parameters.ParamValues['tipoRelatorio'] := 'SERVIDOR';

      case rgpSituacao.ItemIndex of
      0: qryPesqPessoal.Parameters.ParamValues['Ativos'] := 1;
      1: qryPesqPessoal.Parameters.ParamValues['Ativos'] := 0;
      2: qryPesqPessoal.Parameters.ParamValues['Ativos'] := 3;
      end;

      if lvgrdRelPersonalizadoServidor.GridView <> tvRelPersonalizadoServidor then
      begin
        lvgrdRelPersonalizadoServidor.GridView := tvRelPersonalizadoServidor;
      end;

      tvRelPersonalizadoServidor.Controller.Customization := true;
      tvRelPersonalizadoServidor.Controller.CustomizationForm.Left := 5;
      tvRelPersonalizadoServidor.Controller.CustomizationForm.Top := grdRelPersonalizado.Top + tvRelPersonalizadoServidor.Controller.CustomizationForm.Height-50;
      tvRelPersonalizadoServidor.Controller.CustomizationForm.Left := Screen.Width - tvRelPersonalizadoServidor.Controller.CustomizationForm.Width-10;
     end;
  1: begin
      qryPesqPessoal.Active := False;
      qryPesqPessoal.Parameters.ParamValues['tipoRelatorio'] := 'FERIAS';

      if lvgrdRelPersonalizadoServidor.GridView <> tvRelPersonalizadoFerias then
      begin
        lvgrdRelPersonalizadoServidor.GridView := tvRelPersonalizadoFerias;
      end;

      tvRelPersonalizadoFerias.Controller.Customization := true;
      tvRelPersonalizadoFerias.Controller.CustomizationForm.Left := 5;
      tvRelPersonalizadoFerias.Controller.CustomizationForm.Top := grdRelPersonalizado.Top + tvRelPersonalizadoFerias.Controller.CustomizationForm.Height-50;
      tvRelPersonalizadoFerias.Controller.CustomizationForm.Left := Screen.Width - tvRelPersonalizadoFerias.Controller.CustomizationForm.Width-10;
     end;
  end;//case

  qryPesqPessoal.Active := true;

  Result := qryPesqPessoal.recordcount;

  //ShowMessage(inttostr(qryPesqPessoal.recordcount));
end;

procedure TfrmRelatorioPersonalizado.FormActivate(Sender: TObject);
begin
  lblTotal.Caption := 'Total de registros: ' +
  FormatFloat(',0', pesquisar);
end;

end.
