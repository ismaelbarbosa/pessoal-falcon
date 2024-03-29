{*-------------------------------------------------------------------------
Descreve a classe TLogin.

@Author jcl
@Version ??/??/???? 1.0.0.0
==========================================================================}
unit uTLogin;

interface

uses
Forms, Dialogs, ufrmLogin, SUIEdit, SUIForm;

type
  {TLogin interface}
{*-------------------------------------------------------------------------
Cria o formul�rio de Login da aplica��o.

@Todo Implementar um m�dulo que crie um menu na aplica��o do Desenvolvedor
que habilite o Gestor a cadastrar usu�rios e senhas p/ os sistemas sob
sua responsabilidade.
==========================================================================}
  TLogin = class (TObject)
  private
    { Private declarations }
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'Versao'.
Vers�o do aplicativo em Delphi.
==========================================================================}
    fVersao: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'idUsuario'.
CPF do usu�rio que logou.
@Todo Mudar o seu nome para 'fCPF'
==========================================================================}
    fidUsuario: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'Nome'.
==========================================================================}
    fNome: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'Matr�cula'.
==========================================================================}
    fMatricula: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'idLotacao'.
==========================================================================}
    fidLotacao: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'Lotacao'.
==========================================================================}
    fLotacao: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'idAplicacao'.
==========================================================================}
    fidAplicacao: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'idPrivilegio'.
==========================================================================}
    fidPrivilegio: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'Privilegio'.
==========================================================================}
    fPrivilegio: string;
{*-------------------------------------------------------------------------
Armazena o valor utilizado pela propriedade 'Aplicacao'.
==========================================================================}
    fAplicacao: string;
  public
{*-------------------------------------------------------------------------
Retorna o CPF do usu�rio que logou no aplicativo. Somente leitura.
@Todo Mudar o seu nome para 'CPF'
==========================================================================}
    property idUsuario: string read fidUsuario;
{*-------------------------------------------------------------------------
Retorna o Nome do usu�rio que logou no aplicativo. Somente leitura.
==========================================================================}
    property Nome: string read fNome;
{*-------------------------------------------------------------------------
Retorna a Matr�cula do usu�rio que logou no aplicativo. Somente leitura.
==========================================================================}
    property Matricula: string read fMatricula;
{*-------------------------------------------------------------------------
Retorna o c�digo da lota��o do usu�rio que logou no aplicativo.
Somente leitura.
==========================================================================}
    property idLotacao: string read fidLotacao;
{*-------------------------------------------------------------------------
Retorna a descri��o da lota��o do usu�rio que logou no aplicativo.
Somente leitura.
==========================================================================}
    property Lotacao: string read fLotacao;
{*-------------------------------------------------------------------------
Retorna o c�digo da aplica��o atual (001 = Pessoal, 002 = Judicial, etc).
Somente leitura.
==========================================================================}
    property idAplicacao: string read fidAplicacao;
{*-------------------------------------------------------------------------
Retorna o c�digo do privil�gio do usu�rio que logou no aplicativo
(01 = GESTOR, 02 = ADMINISTRADOR, etc). Somente leitura.
==========================================================================}
    property idPrivilegio: string read fidPrivilegio;
{*-------------------------------------------------------------------------
Retorna a descri��o do privil�gio do usu�rio que logou no aplicativo
(GESTOR, ADMINISTRADOR, etc). Somente leitura.
@Todo Criar uma propriedade que retorne a descri��o dos privil�gios com
acentos, '�' etc.
==========================================================================}
    property Privilegio: string read fPrivilegio;
{*-------------------------------------------------------------------------
Retorna a descri��o da aplica��o atual (PESSOAL, JUDICIAL, etc).
Somente leitura.
@Todo Criar uma propriedade que retorne a descri��o das aplica��es com
acentos, '�' etc.
==========================================================================}
    property Aplicacao: string read fAplicacao;
{*-------------------------------------------------------------------------
Armazena a vers�o do aplicativo desenvolvido em Delphi (Judicial,
Atendimento etc.).
==========================================================================}
    property Versao: string read fVersao;
    constructor Create;
  end;
  {TLogin fim interface}

implementation

uses PRG_utils;

{TLogin implementation}
constructor TLogin.Create;
var
fLogin: TfrmLogin;
begin

if Conectado = false then
begin
  Application.Terminate;
end;//if

fLogin := TfrmLogin.Create(Application);
fLogin.Color := Application.MainForm.Color;
fLogin.ShowModal;

fidUsuario := fLogin.fAcesso.idUsuario;
fNome := fLogin.fAcesso.Nome;
fMatricula := fLogin.fAcesso.Matricula;
fidLotacao := fLogin.fAcesso.idLotacao;
fLotacao := fLogin.fAcesso.Lotacao;
fidAplicacao := fLogin.fAcesso.idAplicacao;
fAplicacao := fLogin.fAcesso.Aplicacao;
fidPrivilegio := fLogin.fAcesso.idPrivilegio;
fPrivilegio := fLogin.fAcesso.Privilegio;
fVersao := Versao_do_Sistema;

fLogin.Free;

end;
{TLogin fim implementation}


end.
