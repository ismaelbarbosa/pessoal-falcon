program Pessoal;

uses
  Forms,
  ufPrincipal in 'ufPrincipal.pas' {frmPrincipal},
  ufFalcon in 'ufFalcon.pas' {frmFalcon},
  uDMConexao in 'DataModules\uDMConexao.pas' {dmConexao: TDataModule},
  uPesFuncoes in 'Funcoes\uPesFuncoes.pas',
  uDMPessoal in 'DataModules\uDMPessoal.pas' {dmPessoal: TDataModule},
  uDmCadastroServidor in 'DataModules\uDmCadastroServidor.pas' {dmCadastroServidor: TDataModule},
  ufReadServidor in 'CRUD\ufReadServidor.pas' {frmReadServidor},
  ufCreateServidor in 'CRUD\ufCreateServidor.pas' {frmCreateServidor},
  ufCriterioPesquisaPessoal in 'Pesquisa\ufCriterioPesquisaPessoal.pas' {frmCriterioPesquisaPessoal},
  PRG_utils in 'Objetos\PRG_Utils.pas',
  udmPesComplemento in 'DataModules\udmPesComplemento.pas',
  uDmExibirTabelas in 'DataModules\uDmExibirTabelas.pas' {dmExibirTabelas: TDataModule},
  ufSelLotacao in 'FormSelTabela\ufSelLotacao.pas' {frmSelLotacao},
  ufSelCargo in 'FormSelTabela\ufSelCargo.pas' {frmSelCargo},
  ufSelFuncao in 'FormSelTabela\ufSelFuncao.pas' {frmSelFuncao},
  ufUpdateServidor in 'CRUD\ufUpdateServidor.pas' {frmUpdateServidor},
  ufOcupantesCargosEmComissao in 'Consultas\ufOcupantesCargosEmComissao.pas' {frmOcupantesCargosEmComissao},
  ufUpdateFerias in 'Ferias\ufUpdateFerias.pas' {frmUpdateFerias},
  ufUpdateFuncao in 'Funcoes\ufUpdateFuncao.pas' {frmUpdateFuncao},
  ufSelFuncaoCadastro in 'FormSelTabela\ufSelFuncaoCadastro.pas' {frmSelFuncaoCadastro},
  ufUpdateLotacao in 'Lotacaoes\ufUpdateLotacao.pas' {frmUpdateLotacao},
  uAmbiente in 'Funcoes\uAmbiente.pas',
  ufUpdateHistoricoFuncao in 'Funcoes\ufUpdateHistoricoFuncao.pas' {frmUpdateHistoricoFuncao},
  ufUpdateExercicioExterno in 'ExercicioExterno\ufUpdateExercicioExterno.pas' {frmUpdateExercicioExterno},
  ufSelOrgaoExercicioExterno in 'FormSelTabela\ufSelOrgaoExercicioExterno.pas' {frmSelOrgaoExercicioExterno},
  ufLogs in 'ufLogs.pas' {frmLogs},
  ufRegistrosBanco in 'ufRegistrosBanco.pas' {frmRegistrosBanco},
  ufUpdateTbLotacao in 'Lotacaoes\ufUpdateTbLotacao.pas' {frmUpdateTbLotacao},
  ufUpdateFeriasGeral in 'Ferias\ufUpdateFeriasGeral.pas' {frmUpdateFeriasGeral},
  ufUpdateAbonoAnual in 'AbonoAnual\ufUpdateAbonoAnual.pas' {frmUpdateAbonoAnual},
  ufUpdateAbonoAnualGeral in 'AbonoAnual\ufUpdateAbonoAnualGeral.pas' {frmUpdateAbonoAnualGeral},
  ufFolhaDePonto in 'Relatorios\ufFolhaDePonto.pas' {frmFolhaDePonto},
  ufUpdateAfastamentoGeral in 'Afastamento\ufUpdateAfastamentoGeral.pas' {frmUpdateAfastamentoGeral},
  ufUpdateAfastamento in 'Afastamento\ufUpdateAfastamento.pas' {frmUpdateAfastamento},
  ufUpdateSubstituicaoGeral in 'Substituicoes\ufUpdateSubstituicaoGeral.pas' {frmUpdateSubstituicaoGeral},
  ufRptRelacaoPessoal in 'Relatorios\ufRptRelacaoPessoal.pas' {frmRptRelacaoPessoal},
  ufUpdateSubstituicao in 'Substituicoes\ufUpdateSubstituicao.pas' {frmUpdateSubstituicao},
  ufRptNomesForaDoLivro in 'Relatorios\ufRptNomesForaDoLivro.pas' {frmRptNomesForaDoLivro},
  ufUpdateFeriados in 'FeriasEAfastamentos\ufUpdateFeriados.pas' {frmUpdateFeriados},
  ufGestaoCargos in 'Cargos\ufGestaoCargos.pas' {frmGestaoCargos},
  ufGestaoVagas in 'Cargos\ufGestaoVagas.pas' {frmGestaoVagas},
  ufGestaoCargoServidor in 'Cargos\ufGestaoCargoServidor.pas' {frmGestaoCargoServidor},
  ufRelSubstituicaoProcurador in '..\Original_Teams\Sistema_de_Pessoal\Relatorios\SubstituicaoProcuradores\ufRelSubstituicaoProcurador.pas' {frmRelSubstituicaoProcurador},
  ufRelSubstituicaoProcuradorNumDias in '..\Original_Teams\Sistema_de_Pessoal\Relatorios\SubstituicaoProcuradores\ufRelSubstituicaoProcuradorNumDias.pas' {frmRelSubstituicaoProcuradorNumDias},
  uRptSubstituicaoProcuradorNumDias in 'Relatorios\uRptSubstituicaoProcuradorNumDias.pas' {rptSubstituicaoProcuradorNumDias: TQuickRep},
  ufReadEstagiarios in 'AlterarFeriasEstagiarios\ufReadEstagiarios.pas' {frmReadEstagiarios},
  ufUpdateMatriculaEstagiario in 'AlterarFeriasEstagiarios\ufUpdateMatriculaEstagiario.pas' {frmUpdateMatriculaEstagiario},
  uDmFeriasAbonoAfastamento in 'DataModules\uDmFeriasAbonoAfastamento.pas' {dmFeriasAbonoAfastamento: TDataModule},
  ufDesligarServidorEstagiario in 'Desligamento\ufDesligarServidorEstagiario.pas' {frmDesligarServidorEstagiario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmPessoal, dmPessoal);
  Application.CreateForm(TdmCadastroServidor, dmCadastroServidor);
  Application.CreateForm(TdmExibirTabelas, dmExibirTabelas);
  Application.CreateForm(TdmFeriasAbonoAfastamento, dmFeriasAbonoAfastamento);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogs, frmLogs);
  Application.Run;
end.
