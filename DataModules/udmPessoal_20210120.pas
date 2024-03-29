unit udmPessoal_20210120;

interface

uses
  SysUtils, Classes, DB, ADODB, DBXpress, FMTBcd, SqlExpr, Dialogs;

type
  TdmPessoal_20210120 = class(TDataModule)
    procedure qryPessoalAfterOpen(DataSet: TDataSet);
    procedure qryidPessoalAfterOpen(DataSet: TDataSet);
    procedure qryPesqCPFAfterOpen(DataSet: TDataSet);
    procedure qryPesquisaAfterOpen(DataSet: TDataSet);
    procedure qryPessoalUtenteAfterOpen(DataSet: TDataSet);
    procedure qryPesquisaUtenteAfterOpen(DataSet: TDataSet);
    procedure qryPessoalPensionistaAfterOpen(DataSet: TDataSet);
    procedure qryPesqPensionistaAfterOpen(DataSet: TDataSet);
    procedure strprocPesq_Folha_FrequenciaAfterOpen(DataSet: TDataSet);
    procedure qryPesquisaAfterScroll(DataSet: TDataSet);
    procedure qryPessoalAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPessoal_20210120: TdmPessoal_20210120;

implementation

uses ufServidor, udmPesComplemento, Variants, ufPesqPessoal;

{$R *.dfm}

procedure TdmPessoal_20210120.qryPessoalAfterOpen(DataSet: TDataSet);
begin
  qryPessoal.FieldByName('Dt_NomeacaoCargo').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_NomeacaoCargoDODF').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_PosseCargo').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_Deslig_Cargo').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_Deslig_CargoDODF').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_ExercicioCargo').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_Falecimento').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_NomeacaoFuncao').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_NomeacaoFuncaoDODF').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_PosseFuncao').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_ExercicioFuncao').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_Deslig_Funcao').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_Deslig_FuncaoDODF').EditMask := '99/99/9999;1;_';  
  qryPessoal.FieldByName('CI_Emissao').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('TE_Emissao').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_Nascimento').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_FimRequisicao').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_PromocaoCategoria2').EditMask := '99/99/9999;1;_';
    qryPessoal.FieldByName('Dt_PromocaoSubProcurador').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_PrimeiroExercicioGDF').EditMask := '99/99/9999;1;_';

  qryPessoal.FieldByName('Dt_InicioContrato1_Estagiario').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_TerminoContrato1_Estagiario').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_InicioContrato2_Estagiario').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_TerminoContrato2_Estagiario').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_InicioContrato3_Estagiario').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_TerminoContrato3_Estagiario').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_InicioContrato4_Estagiario').EditMask := '99/99/9999;1;_';
  qryPessoal.FieldByName('Dt_TerminoContrato4_Estagiario').EditMask := '99/99/9999;1;_';

  qryPessoal.FieldByName('CPF').EditMask := '999.999.999-99;0;_';
  qryPessoal.FieldByName('idUsuario').EditMask := '999.999.999-99;0;_';
  qryPessoal.FieldByName('CEP').EditMask := '99.999-999;0;_';
end;

procedure TdmPessoal_20210120.qryidPessoalAfterOpen(DataSet: TDataSet);
begin

qryidPessoal.FieldByName('CPF').EditMask := '999.999.999-99;0;_';

end;

procedure TdmPessoal_20210120.qryPesqCPFAfterOpen(DataSet: TDataSet);
begin

qryPesqCPF.FieldByName('CPF').EditMask := '999.999.999-99;0;_';

end;

procedure TdmPessoal_20210120.qryPesquisaAfterOpen(DataSet: TDataSet);
begin

qryPesquisa.FieldByName('CPF').EditMask := '999.999.999-99;0;_';
qryPesquisa.FieldByName('idusuario').EditMask := '999.999.999-99;0;_';

qryHist_Funcoes.Active := false;

qryHist_Funcoes.Parameters.ParamValues['idservidor'] :=
  qryPesquisa.FieldValues['idservidor'];

qryHist_Funcoes.Active := true;

end;

procedure TdmPessoal_20210120.qryPessoalUtenteAfterOpen(DataSet: TDataSet);
begin

qryPessoalUtente.FieldByName('CPF').EditMask := '999.999.999-99;0;_';
qryPessoalUtente.FieldByName('Dt_Nascimento').EditMask := '99/99/9999;1;_';
qryPessoalUtente.FieldByName('DtAdmissao').EditMask := '99/99/9999;1;_';
qryPessoalUtente.FieldByName('DtDesligamento').EditMask := '99/99/9999;1;_';

end;

procedure TdmPessoal_20210120.qryPesquisaUtenteAfterOpen(DataSet: TDataSet);
begin

qryPesquisaUtente.FieldByName('CPF').EditMask := '999.999.999-99;0;_';

end;

procedure TdmPessoal_20210120.qryPessoalPensionistaAfterOpen(DataSet: TDataSet);
begin

qryPessoalPensionista.FieldByName('CPF').EditMask := '999.999.999-99;0;_';
qryPessoalPensionista.FieldByName('Dt_Nascimento').EditMask := '99/99/9999;1;_';
qryPessoalPensionista.FieldByName('Dt_Falecimento').EditMask := '99/99/9999;1;_';
qryPessoalPensionista.FieldByName('Dt_Concessao').EditMask := '99/99/9999;1;_';
qryPessoalPensionista.FieldByName('Dt_DODF').EditMask := '99/99/9999;1;_';
qryPessoalPensionista.FieldByName('CI_Emissao').EditMask := '99/99/9999;1;_';
qryPessoalPensionista.FieldByName('TE_Emissao').EditMask := '99/99/9999;1;_';


end;

procedure TdmPessoal_20210120.qryPesqPensionistaAfterOpen(DataSet: TDataSet);
begin

qryPesqPensionista.FieldByName('CPF').EditMask := '999.999.999-99;0;_';

end;

procedure TdmPessoal_20210120.strprocPesq_Folha_FrequenciaAfterOpen(
  DataSet: TDataSet);
begin

//strprocPesq_Folha_Frequencia.FieldByName('idservidor').EditMask :=
//'999999999-9;0;_';

end;

procedure TdmPessoal_20210120.qryPesquisaAfterScroll(DataSet: TDataSet);
begin

qryHist_Funcoes.Active := false;

qryHist_Funcoes.Parameters.ParamValues['idservidor'] :=
  qryPesquisa.FieldValues['idservidor'];

qryHist_Funcoes.Active := true;


  if dmPesComplemento.TranspostoCarreiraProcurador(VarToStr(qryPesquisa.FieldValues['idPessoal'])) = true then
  begin
    frmPesqPessoal.lblPrimeiroExercicioGDF.Visible := true;
    frmPesqPessoal.edtPrimeiroExercicioGDF.Visible := true;
    frmPesqPessoal.lblDt_ExercicioCargo.Caption := 'Exerc�cio PGDF';
  end
  else
  begin
    frmPesqPessoal.lblPrimeiroExercicioGDF.Visible := false;
    frmPesqPessoal.edtPrimeiroExercicioGDF.Visible := false;
    frmPesqPessoal.lblDt_ExercicioCargo.Caption := 'Exerc�cio';
  end;

end;

procedure TdmPessoal_20210120.qryPessoalAfterPost(DataSet: TDataSet);
begin
  if frmServidor.edtidLotacao.Text <> frmServidor.fIdLotacaoInicial then//if1
  begin
    with dmPesComplemento do
    begin
      qryHist_Lotacao.Active := false;
      qryHist_Lotacao.Parameters.ParamValues['idpes'] := qryPessoal.FieldValues['idpessoal'];
      qryHist_Lotacao.Parameters.ParamValues['idserv'] := qryPessoal.FieldValues['idservidor'];
      qryHist_Lotacao.Active := true;
      qryHist_Lotacao.Insert;
      qryHist_Lotacao.FieldValues['idpessoal'] := qryPessoal.FieldValues['idpessoal'];
      qryHist_Lotacao.FieldValues['idservidor'] := qryPessoal.FieldValues['idservidor'];
      qryHist_Lotacao.FieldValues['idlotacao'] := frmServidor.edtidLotacao.Text;
      qryHist_Lotacao.FieldValues['dt_Lotacao'] := frmServidor.fDataLotacao;

      qryHist_Lotacao.Post;
    end;//with
  end;//if1

  frmServidor.fIdLotacaoInicial := frmServidor.edtidLotacao.Text;
end;

end.
