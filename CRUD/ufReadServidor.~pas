unit ufReadServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, Grids, DBGrids, cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxMaskEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBCtrls, cxPC, cxSplitter, cxCheckBox, cxDBEdit;

type
  TfrmReadServidor = class(TForm)
    pnlBotoes: TPanel;
    btnAbrir: TcxButton;
    btnSair: TcxButton;
    btnNovo: TcxButton;
    btnPesquisar: TcxButton;
    grdResultado: TcxGroupBox;
    splPesqPessoal: TcxSplitter;
    pgcPessoal: TcxPageControl;
    tshDadosFuncionais: TcxTabSheet;
    gbxDadosFuncionais: TcxGroupBox;
    lblCargo: TLabel;
    lblClasse: TLabel;
    lblPadrao: TLabel;
    lblLotacao: TLabel;
    txtCargo: TDBText;
    txtidCargo: TDBText;
    txtClasse: TDBText;
    txtPadrao: TDBText;
    txtidLotacao: TDBText;
    lblEspecialidade: TLabel;
    edtEspecialidade: TDBText;
    txtLotSigla: TDBText;
    lblDt_Nomeacao: TLabel;
    lblDt_PosseCargo: TLabel;
    lblDt_Deslig_Cargo: TLabel;
    lblDt_ExercicioCargo: TLabel;
    lblDesligamento: TLabel;
    lblDt_Falecimento: TLabel;
    txtLotacao: TDBText;
    txtDesligamento: TDBText;
    txtDt_NomeacaoCargo: TDBText;
    txtDt_Falecimento: TDBText;
    txtDt_ExercicioCargo: TDBText;
    txtDt_PosseCargo: TDBText;
    txtidDesligamento: TDBText;
    txtDt_DesligamentoCargo: TDBText;
    lblPrimeiroExercicioGDF: TLabel;
    edtPrimeiroExercicioGDF: TDBText;
    txtExercicioExterno: TDBText;
    Label1: TLabel;
    lblFuncao: TLabel;
    lblRamal: TLabel;
    lblSala: TLabel;
    lblDt_NomeacaoFuncao: TLabel;
    lblDt_ExercicioFuncao: TLabel;
    lblDt_PosseFuncao: TLabel;
    lblDt_Digitacao: TLabel;
    lblUsuario: TLabel;
    txtUsuario: TDBText;
    txtDt_Digitacao: TDBText;
    txtFuncao: TDBText;
    txtRamal: TDBText;
    txtSala: TDBText;
    txtidFuncao: TDBText;
    txtNomeacaoFuncao: TDBText;
    txtDt_ExercicioFuncao: TDBText;
    txtDt_PosseFuncao: TDBText;
    lblDtDeslig_Funcao: TLabel;
    txtDtDeslig_Funcao: TDBText;
    lblCargaHoraria: TLabel;
    txtCargaHoraria: TDBText;
    tshFuncoes: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    tshDadosPessoais: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    lblNascimento: TLabel;
    lblNaturalidade: TLabel;
    lblPai: TLabel;
    lblEstadoCivil: TLabel;
    lblUF: TLabel;
    lblMae: TLabel;
    lblConjuge: TLabel;
    txtUF_Natural: TDBText;
    txtidEstadoCivil: TDBText;
    txtDt_Nascimento: TDBText;
    txtNaturalidade: TDBText;
    txtPai: TDBText;
    txtMae: TDBText;
    txtConjuge: TDBText;
    lblBairro: TLabel;
    lblEndereco: TLabel;
    txtEndereco: TDBText;
    txtBairro: TDBText;
    lblCidade: TLabel;
    lblUFEndereco: TLabel;
    txtUF_End: TDBText;
    txtCidade: TDBText;
    lblCEP: TLabel;
    txtCEP: TDBText;
    txtEstadoCivil: TDBText;
    lblGrauInstrucao: TLabel;
    txtGrauInstrucao: TDBText;
    lblCurso: TLabel;
    txtCurso: TDBText;
    lblTipoSanguineo: TLabel;
    txtTipoSanguineo: TDBText;
    tshDocumentos: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    lblRG: TLabel;
    lblCPF: TLabel;
    lblTitulo: TLabel;
    lblCI_UF: TLabel;
    lblCI_Emissao: TLabel;
    lblZona: TLabel;
    lblSecao: TLabel;
    txtUF_CI: TDBText;
    txtCI_Num: TDBText;
    txtCI_Emissao: TDBText;
    txtCPF: TDBText;
    txtTE_Num: TDBText;
    txtTE_Zona: TDBText;
    txtTE_Secao: TDBText;
    lblTE_UF: TLabel;
    lblTE_Emissao: TLabel;
    lblPis_Pasep: TLabel;
    txtUF_TE: TDBText;
    txtTE_Emissao: TDBText;
    txtPIS_PASEP: TDBText;
    lblBanco: TLabel;
    lblAgencia: TLabel;
    txtBanco: TDBText;
    lblConta: TLabel;
    txtAgencia: TDBText;
    txtConta: TDBText;
    lblOAB: TLabel;
    lblOAB_Secao: TLabel;
    txtOAB: TDBText;
    txtOAB_Secao: TDBText;
    chckbxAspro_Opc: TDBCheckBox;
    tshTelefones: TcxTabSheet;
    cxGroupBox9: TcxGroupBox;
    tshFerias: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    tshAbonoAnual: TcxTabSheet;
    cxGroupBox6: TcxGroupBox;
    tshAfastamento: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    tshRelatorioPersonalizado: TcxTabSheet;
    cxGroupBox8: TcxGroupBox;
    grpbxPesquisa: TcxGroupBox;
    btnExportar: TcxButton;
    edtPesquisar: TEdit;
    btnEmitirRelatorio: TcxButton;
    rdgrpSelecionaRelatorio: TRadioGroup;
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
    dsPesquisa: TDataSource;
    tbvPessoal: TcxGridDBTableView;
    grdPessoalLevel1: TcxGridLevel;
    grdPessoal: TcxGrid;
    tvcNome: TcxGridDBColumn;
    tbvPessoalColumn2: TcxGridDBColumn;
    tbvPessoalColumn3: TcxGridDBColumn;
    tbvPessoalColumn4: TcxGridDBColumn;
    tbvPessoalColumn5: TcxGridDBColumn;
    tbvPessoalColumn6: TcxGridDBColumn;
    StyleRepository: TcxStyleRepository;
    stlAtivo: TcxStyle;
    stlRequisitado: TcxStyle;
    stlDesligadoCargo: TcxStyle;
    stlDesligadoFuncao: TcxStyle;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    dsFeriasServidor: TDataSource;
    pnlNome: TPanel;
    txtNome: TDBText;
    dsAbonoServidor: TDataSource;
    dsAfastamentoServidor: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    tbvPessoalColumn7: TcxGridDBColumn;
    txtOrgaoDeOrigem: TDBText;
    Label4: TLabel;
    dsHistoricoFuncoes: TDataSource;
    dsHistoricoLotacoes: TDataSource;
    grdHistoricoFuncoes: TcxGrid;
    tbvHistoricoFuncoes: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    dsTelefonesServidor: TDataSource;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    tvcStatus: TcxGridDBColumn;
    btnStatus: TcxButton;
    btnFlag: TcxButton;
    txtDFG: TDBText;
    Panel1: TPanel;
    Image2: TImage;
    lblRequisitado: TLabel;
    lblDeslig_Cargo: TLabel;
    lblDeslig_Funcao: TLabel;
    Label3: TLabel;
    lblAtivo: TLabel;
    Image4: TImage;
    Image1: TImage;
    Image3: TImage;
    tbvHistoricoFuncoesColumn1: TcxGridDBColumn;
    tshExercicioExterno: TcxTabSheet;
    tshLotacoes: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    dsHistoricoExercicioExterno: TDataSource;
    txtSiglaOrgaoExterno: TDBText;
    grdFerias: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    tvcExercicio: TcxGridDBColumn;
    tvcPeriodo: TcxGridDBColumn;
    tvcParcela: TcxGridDBColumn;
    tvcTipoParcela: TcxGridDBColumn;
    tvcDt_Inicio: TcxGridDBColumn;
    tvcDt_Termino: TcxGridDBColumn;
    tvcProcessoSEI: TcxGridDBColumn;
    tvcDt_InicioReagendamento: TcxGridDBColumn;
    tvcDt_TerminoReagendamento: TcxGridDBColumn;
    tvcObservacao: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid7: TcxGrid;
    grdFeriasDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    tvcDt_1: TcxGridDBColumn;
    tvcDt_2: TcxGridDBColumn;
    tvcDt_3: TcxGridDBColumn;
    tvcDt_4: TcxGridDBColumn;
    tvcDt_5: TcxGridDBColumn;
    grdFeriasLevel1: TcxGridLevel;
    dsTotalDiasSubstituidos: TDataSource;
    dsProcuradorSubstituido: TDataSource;
    txtMatricula: TDBText;
    Label2: TLabel;
    tshSubstituicao: TcxTabSheet;
    cxGroupBox10: TcxGroupBox;
    cxGrid8: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    grdSubstituicoes: TcxGrid;
    tvSubstProcurador: TcxGridDBTableView;
    tvSubstProcuradorColumn1: TcxGridDBColumn;
    tvSubstProcuradorinicio: TcxGridDBColumn;
    tvSubstProcuradortermino: TcxGridDBColumn;
    tvSubstProcuradorndias: TcxGridDBColumn;
    tvSubstProcuradornProcessoSEI: TcxGridDBColumn;
    lvSubstProcurador: TcxGridLevel;
    tbvHistoricoFuncoesColumn2: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure dbgrdPesquisaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnAbrirClick(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    function abrirDataSources:boolean;
    function fecharDataSources:boolean;
    procedure tbvPessoalDblClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReadServidor: TfrmReadServidor;

implementation

uses udmPesComplemento, uDMPessoal, ufCriterioPesquisaPessoal, ufPrincipal,
  uDmExibirTabelas, ufUpdateServidor, ufCreateServidor, ufLogs;

var
SQL_Cargo, SQL_Lotacao, SQL_Desligamento,
 SQL_Funcao, SQL_EstadoCivil: string;
indice_dbgrdPesquisa: integer;

{$R *.dfm}

procedure TfrmReadServidor.FormActivate(Sender: TObject);
begin
  SQL_Cargo :=  'Select tbcargo.idCargo, tbcargo.Descricao ' +
                'from tbCargo ' +
                'where tbcargo.idCargo = :idCargo;';

  SQL_Lotacao :=  'Select tblotacao.idlotacao, tblotacao.Descricao, ' +
                  'tblotacao.sigla ' +
                  'from tblotacao ' +
                  'where tblotacao.idlotacao = :idlotacao;';

  SQL_Desligamento :=  'Select tbdesligamento.iddesligamento, ' +
                       'tbdesligamento.Descricao ' +
                       'from tbdesligamento ' +
                       'where tbdesligamento.iddesligamento = :iddesligamento;';

  SQL_Funcao :=  'Select tbfuncao.idfuncao, tbfuncao.Descricao, tbfuncao.idDFG ' +
                'from tbfuncao ' +
                'where tbfuncao.idfuncao = :idfuncao;';

  SQL_EstadoCivil :=  'Select tbestadocivil.idestadocivil, ' +
                      'tbestadocivil.Descricao ' +
                      'from tbestadocivil ' +
                      'where tbestadocivil.idestadocivil = :idestadocivil;';
end;

procedure TfrmReadServidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
var OK: boolean;
begin

  if fecharDataSources
  then OK := true;

end;

procedure TfrmReadServidor.FormCreate(Sender: TObject);
begin
  KeyPreview := true;

  indice_dbgrdPesquisa := 0;

  pgcPessoal.ActivePageIndex := 0;
  {
  qryPesqPessoal.Active := false;
  qryPesqPessoal.Parameters.ParamValues['tipoRelatorio'] := 'SERVIDOR';
  qryPesqPessoal.Active := true;
  }

  if not abrirDataSources then
  begin
    ShowMessage('Falha nos datasources');
    Abort;
  end;

   {
   qryPesqTelefone.Active := true;
   qryPesqFerias.Active := true;
   qryPesqAbono.Active := true;
   qryPesqAfastamento.Active := true;
   qryPesqCargo.Active := true;
   qryPesqLotacao.Active := true;
   qryPesqFuncao.Active := true;
   qryPesqDesligamento.Active := true;
   qryPesqEstadoCivil.Active := true;
   }

   {
    if TranspostoCarreiraProcurador(qryPesquisa.FieldValues['idPessoal']) = true then
    begin
      lblPrimeiroExercicioGDF.Visible := true;
      edtPrimeiroExercicioGDF.Visible := true;
      lblDt_ExercicioCargo.Caption := 'Exercício PGDF'
    end
    else
    begin
      lblPrimeiroExercicioGDF.Visible := false;
      edtPrimeiroExercicioGDF.Visible := false;
      lblDt_ExercicioCargo.Caption := 'Exercício'
    end;
   }

end;

procedure TfrmReadServidor.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReadServidor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then btnSairClick(Sender)
  else if Key = VK_RETURN then btnPesquisarClick(Sender);

  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //mmoSQL.Visible := not mmoSQL.Visible;
    frmLogs.ShowModal;
  end
end;

procedure TfrmReadServidor.btnPesquisarClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCriterioPesquisaPessoal, frmCriterioPesquisaPessoal);
  frmCriterioPesquisaPessoal.ShowModal;
end;

procedure TfrmReadServidor.dbgrdPesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

{if odd(dbgrdPesquisa.DataSource.DataSet.RecNo) then
    dbgrdPesquisa.Canvas.Font.Color := clBlue
  else dbgrdPesquisa.Canvas.Font.Color := clRed;
  dbgrdPesquisa.DefaultDrawDataCell(Rect, dbgrdPesquisa.columns[datacol].field, state);}

{with dmPesComplemento, dmPessoal do
  begin
  if qryPesquisa.FieldValues['iddesligamento'] <> null then//if1
     begin
//     dbgrdPesquisa.Canvas.Brush.Color := clCream;
     dbgrdPesquisa.Canvas.Font.Color := clRed;
     end//if1
  else if qryPesquisa.FieldValues['dt_deslig_funcao'] <> null then//if2
     begin
//     dbgrdPesquisa.Canvas.Brush.Color := clSilver;
     dbgrdPesquisa.Canvas.Font.Color := clBlue;
     end//if2
  else if qryPesquisa.FieldValues['Requisitado'] = True then//if3
     begin
//     dbgrdPesquisa.Canvas.Brush.Color := clSilver;
     dbgrdPesquisa.Canvas.Font.Color := clGreen;
     end;//if3

  dbgrdPesquisa.DefaultDrawDataCell(Rect, dbgrdPesquisa.columns[datacol].field, state);
  end;//with

if gdFocused in State then
 with (Sender as TDBGrid).Canvas do
 begin
   Brush.Color:= clSkyBlue;
   FillRect(Rect);
   TextOut(Rect.Left, Rect.Top, column.Field.AsString);
 end;//with
}
end;


// cxStyleRepository
// stlAtivo, stlRequisitado, stlDesligadoCargo e stlDesligadoFuncao
//cxGrid1DBTableView1StylesGetContentStyle

procedure TfrmReadServidor.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin

  with StyleRepository do
  begin
    stlAtivo.TextColor:= clBlack;
    stlRequisitado.TextColor := clGreen;
    stlDesligadoCargo.TextColor := clRed;
    stlDesligadoFuncao.TextColor := clBlue;
  end;

  //Ativos

  if
  (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
  (ARecord.Values[tvcStatus.Index] = 'ATIVO')
  then
  begin
  AStyle := stlAtivo;
  end;

  //Requisitados

  if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
  (ARecord.Values[tvcStatus.Index] = 'REQUISITADO')
  then
  begin
  AStyle := stlRequisitado;
  end;

  //Inativos

  if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
  (ARecord.Values[tvcStatus.Index] = 'DESLIGADO DO CARGO')
  then
  begin
  AStyle := stlDesligadoCargo;
  end;

  //Desligados da função (comissionados)

  if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
  (ARecord.Values[tvcStatus.Index] = 'DESLIGADO DA FUNÇÃO')
  then
  begin
  AStyle := stlDesligadoFuncao;
  end;

end;

procedure TfrmReadServidor.btnAbrirClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateServidor, frmUpdateServidor);
  frmUpdateServidor.ShowModal;
  frmUpdateServidor.Release;
  frmUpdateServidor := nil;  
end;

procedure TfrmReadServidor.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
//  if not dmPessoal.qryPesquisa.FieldByName('idCargo').IsNull then
//  showMessage(dmPessoal.qryPesquisa.FieldValues['idCargo']);

  if not dmPessoal.qryPesquisa.FieldByName('Status').IsNull then
  btnStatus.Caption := dmPessoal.qryPesquisa.FieldValues['Status'];

  btnStatus.Colors.DefaultText := clWhite;

  with btnStatus do
  begin
    if Caption = 'ATIVO'
    then  Colors.Default := clBlack
    else if Caption = 'REQUISITADO'
    then
      Colors.Default := clGreen
    else if Caption = 'DESLIGADO DO CARGO'
    then
      Colors.Default := clRed
    else if Caption = 'DESLIGADO DA FUNÇÃO'
    then
      Colors.Default := clBlue
    else if Caption = '-'
    then
    begin
      Colors.Default := clInfoBk;
      Colors.DefaultText := clBlack;
    end;
  end;

  if not dmPessoal.qryPesquisa.FieldByName('idCargo').IsNull then
  begin
    if dmPessoal.VerificarSeEProcurador(Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2))
    then
      tshSubstituicao.TabVisible := true
    else tshSubstituicao.TabVisible := false;
  end;
end;

function TfrmReadServidor.abrirDataSources: boolean;
begin
  try
    {dsTelefonesServidor.DataSet := dmExibirTabelas.qryTelefonesServidor;
    dsFeriasServidor.DataSet := dmExibirTabelas.qryFeriasServidor;
    dsAbonoServidor.DataSet := dmExibirTabelas.qryAbonoServidor;
    dsAfastamentoServidor.DataSet := dmExibirTabelas.qryAfastamentoServidor;
    dsHistoricoFuncoes.DataSet := dmExibirTabelas.qryHistoricoFuncoes;
    dsHistoricoLotacoes.DataSet := dmExibirTabelas.qryHistoricoLotacoes;
    }

    with dmPessoal
    //, dmPesComplemento
    do
    begin
      dsPesquisa.DataSet := qryPesquisa;
      qryPesquisa.Active := true;
    end;

    with dmExibirTabelas do
    begin
      dsTelefonesServidor.DataSet   := qryTelefonesServidor;
      dsFeriasServidor.DataSet      := qryFeriasServidor;
      dsAbonoServidor.DataSet       := qryAbonoServidor;
      dsAfastamentoServidor.DataSet := qryAfastamentoServidor;
      dsHistoricoFuncoes.DataSet    := qryHistoricoFuncoes;
      dsHistoricoLotacoes.DataSet   := qryHistoricoLotacoes;
      dsHistoricoExercicioExterno.DataSet := qryHistoricoExercicioExterno;

      dsTotalDiasSubstituidos.DataSet := qryTotalDiasSubstituidos;
      dsProcuradorSubstituido.DataSet := qryProcuradorSubstituido;
    end;

    Result := true;
  except
    Result := false;
  end;
end;

function TfrmReadServidor.fecharDataSources: boolean;
begin
  with dmPessoal, //dmPesComplemento
  dmExibirTabelas do
  begin
    qryPesquisa.Active := false;

    {qryFeriasServidor.Active := true;
    qryAbonoServidor.Active := true;
    qryAfastamentoServidor.Active := true;}

{
    qryPesqTelefone.Active := false;
    qryPesqFerias.Active := false;
    qryPesqAbono.Active := false;
    qryPesqAfastamento.Active := false;
    qryPesqCargo.Active := false;
    qryPesqLotacao.Active := false;
    qryPesqFuncao.Active := false;
    qryPesqDesligamento.Active := false;
    qryPesqEstadoCivil.Active := false;
}

  end;

  with dmExibirTabelas do
  begin
    qryFeriasServidor.Active := false;
    qryAbonoServidor.Active := false;
    qryAfastamentoServidor.Active := false;
    qryTelefonesServidor.Active := false;
    qryHistoricoLotacoes.Active := false;
    qryHistoricoFuncoes.Active := false;
  end;

end;

procedure TfrmReadServidor.tbvPessoalDblClick(Sender: TObject);
begin
  btnAbrirClick(Nil);
end;

procedure TfrmReadServidor.btnNovoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCreateServidor, frmCreateServidor);
  frmCreateServidor.setarOperacao(1); // Inclusão de novo registro
  frmCreateServidor.ShowModal;
  frmCreateServidor.Release;
  frmCreateServidor := nil;
end;

end.
