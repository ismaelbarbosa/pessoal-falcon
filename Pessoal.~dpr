program Pessoal;

uses
  Forms,
  ufPrincipal in 'ufPrincipal.pas' {frmPrincipal},
  uDMConexao in 'DataModules\uDMConexao.pas' {dmConexao: TDataModule},
  uPesFuncoes in 'Funcoes\uPesFuncoes.pas',
  uDMPessoal in 'DataModules\uDMPessoal.pas' {dmPessoal: TDataModule},
  uDmCadastroServidor in 'DataModules\uDmCadastroServidor.pas' {dmCadastroServidor: TDataModule},
  ufReadServidor in 'CRUD\ufReadServidor.pas' {frmReadServidor},
  ufCriterioPesquisaPessoal in 'Pesquisa\ufCriterioPesquisaPessoal.pas' {frmCriterioPesquisaPessoal},
  PRG_utils in 'Objetos\PRG_Utils.pas',
  udmPesComplemento in 'DataModules\udmPesComplemento.pas',
  uDmExibirTabelas in 'DataModules\uDmExibirTabelas.pas' {dmExibirTabelas: TDataModule},
  ufSelLotacao in 'FormSelTabela\ufSelLotacao.pas' {frmSelLotacao},
  ufSelCargo in 'FormSelTabela\ufSelCargo.pas' {frmSelCargo},
  ufSelFuncao in 'FormSelTabela\ufSelFuncao.pas' {frmSelFuncao},
  ufUpdateServidor in 'CRUD\ufUpdateServidor.pas' {frmUpdateServidor},
  ufOcupantesCargosEmComissao in 'Consultas\ufOcupantesCargosEmComissao.pas' {frmOcupantesCargosEmComissao},
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
  ufDesligarServidorEstagiario in 'Desligamento\ufDesligarServidorEstagiario.pas' {frmDesligarServidorEstagiario},
  ufUpdateDadosEstagio in 'Estagio\ufUpdateDadosEstagio.pas' {frmUpdateDadosEstagio},
  ufUpdateDesligamento in 'Desligamento\ufUpdateDesligamento.pas' {frmUpdateDesligamento},
  ufCreateServidor in 'CRUD\ufCreateServidor.pas' {frmCreateServidor},
  ufSelecionaFuncao in 'FormSelTabela\ufSelecionaFuncao.pas' {frmSelecionaFuncao},
  ufUpdateEstagioGeral in 'Estagio\ufUpdateEstagioGeral.pas' {frmUpdateEstagioGeral},
  uDMEstagiario in 'DataModules\uDMEstagiario.pas' {dmEstagiario: TDataModule},
  ufMensagemHTML in 'Help\ufMensagemHTML.pas' {frmMensagemHTML},
  ufUpdateTelefone in 'Telefones\ufUpdateTelefone.pas' {frmUpdateTelefone},
  ufRelatorioPersonalizado in 'RelatorioPersonalizado\ufRelatorioPersonalizado.pas' {frmRelatorioPersonalizado},
  uDMExcluirFeriasAbonoAfastamento in 'DataModules\uDMExcluirFeriasAbonoAfastamento.pas' {dmExcluirFeriasAbonoAfastamento: TDataModule},
  uDMRelatorios in 'DataModules\uDMRelatorios.pas' {dmRelatorios: TDataModule},
  ufRelAfastamento in 'Relatorios\Afastamentos\ufRelAfastamento.pas' {frmRelAfastamento},
  uRptRelAfastamento in 'Relatorios\Afastamentos\uRptRelAfastamento.pas' {rptRelAfastamento: TQuickRep},
  ufRelAbonoGeral in 'Relatorios\Abonos\ufRelAbonoGeral.pas' {frmRelAbonoGeral},
  ufRelAbonoMensal in 'Relatorios\Abonos\ufRelAbonoMensal.pas' {frmRelAbonoMensal},
  uRptAbonoMensal in 'Relatorios\Abonos\uRptAbonoMensal.pas' {rptAbonoMensal: TQuickRep},
  uRptAbonoGeral in 'Relatorios\Abonos\uRptAbonoGeral.pas' {RptAbonoGeral: TQuickRep},
  ufUpdateFerias_20220513 in 'Ferias\ufUpdateFerias_20220513.pas' {frmUpdateFerias_20220513},
  ufUpdateFerias in 'Ferias\ufUpdateFerias.pas' {frmUpdateFerias},
  ufRptAdmissaoEstagiarios in 'Relatorios\Estagiarios\ufRptAdmissaoEstagiarios.pas' {frmRptAdmissaoEstagiarios},
  ufRptDesligamentoEstagiarios in 'Relatorios\Estagiarios\ufRptDesligamentoEstagiarios.pas' {frmRptDesligamentoEstagiarios},
  ufPainelEstagiarios in 'Relatorios\Estagiarios\ufPainelEstagiarios.pas' {frmPainelEstagiarios},
  ufUpdateTbFuncao in 'Funcoes\ufUpdateTbFuncao.pas' {frmUpdateTbFuncao},
  ufRelFeriasAfastamentosProcuradores in 'Relatorios\FeriasAfastamentosProcuradores\ufRelFeriasAfastamentosProcuradores.pas' {frmRelFeriasAfastamentosProcuradores},
  uRptRelFeriasAfastamentos in 'Relatorios\FeriasAfastamentosProcuradores\uRptRelFeriasAfastamentos.pas' {rptRelFeriasAfastamentos: TQuickRep},
  ufRptFeriasMensais in 'Relatorios\ufRptFeriasMensais.pas' {frmRptFeriasMensais},
  uRptRel_Conf_Ferias_Mensais in 'Relatorios\Ferias\uRptRel_Conf_Ferias_Mensais.pas' {rptRel_Conf_Ferias_Mensais: TQuickRep},
  ufRptFeriasAnuais in 'Relatorios\Ferias\ufRptFeriasAnuais.pas' {frmRptFeriasAnuais},
  ufUpdateTbEspecialidade in 'Especialidades\ufUpdateTbEspecialidade.pas' {frmUpdateTbEspecialidade},
  ufAtualizarIDSupervisorEstagio in 'Desenvolvimento\ufAtualizarIDSupervisorEstagio.pas' {frmAtualizarIDSupervisorEstagio},
  ufPromocaoProcurador in 'PromocaoProcurador\ufPromocaoProcurador.pas' {frmPromocaoProcurador},
  ufReadRegistrosLog in 'RegistrosLog\ufReadRegistrosLog.pas' {frmReadRegistrosLog},
  uRptRelFeriasAnuais in 'Relatorios\Ferias\uRptRelFeriasAnuais.pas' {rptRelFeriasAnuais: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmPessoal, dmPessoal);
  Application.CreateForm(TdmCadastroServidor, dmCadastroServidor);
  Application.CreateForm(TdmExibirTabelas, dmExibirTabelas);
  Application.CreateForm(TdmFeriasAbonoAfastamento, dmFeriasAbonoAfastamento);
  Application.CreateForm(TdmEstagiario, dmEstagiario);
  Application.CreateForm(TdmRelatorios, dmRelatorios);
  Application.CreateForm(TdmExcluirFeriasAbonoAfastamento, dmExcluirFeriasAbonoAfastamento);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogs, frmLogs);
  Application.Run;
end.
