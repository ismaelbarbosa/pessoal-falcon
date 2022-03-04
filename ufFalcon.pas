unit ufFalcon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TfrmFalcon = class(TForm)
    Label1: TLabel;
    mnPrincipal: TMainMenu;
    mnCadastro: TMenuItem;
    sbmnIncluir: TMenuItem;
    sbmnIncluirServidor: TMenuItem;
    sbmnIncluirUtente: TMenuItem;
    sbmnIncluirPensionista: TMenuItem;
    Cedidos1: TMenuItem;
    Pesquisa: TMenuItem;
    sbmnPesPessoal: TMenuItem;
    sbmnPesUtente: TMenuItem;
    sbmnPesqPensionista: TMenuItem;
    N1: TMenuItem;
    sbmnBloquear: TMenuItem;
    sbmnSair: TMenuItem;
    mnRelatorios: TMenuItem;
    mnFerias: TMenuItem;
    mnMensais: TMenuItem;
    mnAnuais: TMenuItem;
    mn_Aviso_Previo: TMenuItem;
    mn_Aviso_Previo_2via: TMenuItem;
    mn_Aviso_Previo_Mensal: TMenuItem;
    mnAbono: TMenuItem;
    mnAbonoGeral: TMenuItem;
    mnAbonosMensais: TMenuItem;
    mnFuncionarios: TMenuItem;
    sbmnFuncGeral: TMenuItem;
    sbmnFuncGrauInstrucao: TMenuItem;
    mnuDesligados: TMenuItem;
    mnRequisitados: TMenuItem;
    mnAposentados: TMenuItem;
    mnPensionistas: TMenuItem;
    mnAfastamento: TMenuItem;
    mnFeriasAfastamento: TMenuItem;
    mnSubstProcurador: TMenuItem;
    sbmnSubstProcTotalDias: TMenuItem;
    mnSubstProcCalculo: TMenuItem;
    N4: TMenuItem;
    sbmnFolhaFrequencia: TMenuItem;
    mnIntranet: TMenuItem;
    sbmnConsulta: TMenuItem;
    sbmnConsulta_Aniversario: TMenuItem;
    sbmnConsulta_Ferias: TMenuItem;
    sbmnConsulta_Procurador: TMenuItem;
    sbmnConsulta_Ramal: TMenuItem;
    N2: TMenuItem;
    sbmnConsulta_Geral: TMenuItem;
    mnAjuda: TMenuItem;
    sbmnConteudo: TMenuItem;
    N3: TMenuItem;
    sbmnSobrePessoal: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFalcon: TfrmFalcon;

implementation

{$R *.dfm}

end.
