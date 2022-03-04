program CadastroServidor;

uses
  Forms,
  ufIncluirServidor in 'ufIncluirServidor.pas' {frmIncluirServidor},
  uPesFuncoes in 'Funcoes\uPesFuncoes.pas',
  uDmCadastroServidor in 'DataModules\uDmCadastroServidor.pas' {dmCadastroServidor: TDataModule},
  uDmTemporario in 'DataModules\uDmTemporario.pas' {dmTemporario: TDataModule},
  uDMPessoal in 'DataModules\uDMPessoal.pas' {dmPessoal: TDataModule},
  uDMConexao in 'DataModules\uDMConexao.pas' {DMConexao: TDataModule},
  PRG_utils in 'Objetos\PRG_utils.pas',
  ufPrincipal_20210412 in '..\Falcon\ufPrincipal_20210412.pas' {frmPrincipal_20210412},
  ufPesquisarServidor in 'PesquisarServidor\ufPesquisarServidor.pas' {frmPesquisarServidor},
  ufServidorDetalhe in 'PesquisarServidor\ufServidorDetalhe.pas' {frmServidorDetalhe},
  ufRelacaoProcuradores in 'Relacao_Procuradores\ufRelacaoProcuradores.pas' {frmRelacaoProcuradores},
  ufGerenciamentoFuncoes in 'ufGerenciamentoFuncoes.pas' {frmGerenciamentoFuncoes},
  udmPesComplemento in '..\Falcon\DataModules\udmPesComplemento.pas' {dmPesComplemento: TDataModule},
  ufPrincipal in '..\Falcon\ufPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TdmPessoal, dmPessoal);
  Application.CreateForm(TdmPesComplemento, dmPesComplemento);
  Application.CreateForm(TdmCadastroServidor, dmCadastroServidor);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmIncluirServidor, frmIncluirServidor);
  Application.CreateForm(TfrmGerenciamentoFuncoes, frmGerenciamentoFuncoes);
  Application.Run;
end.
