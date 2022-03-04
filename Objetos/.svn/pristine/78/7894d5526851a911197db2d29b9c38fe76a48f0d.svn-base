unit uTLogin;

interface

uses
Forms, Dialogs, ufrmLogin;

type
  {TLogin interface}
  TLogin = class (TObject)
  private
    { Private declarations }
    fVersao: string;
    fidUsuario: string;
    fNome: string;
    fMatricula: string;
    fidLotacao: string;
    fLotacao: string;
    fidAplicacao: string;
    fidPrivilegio: string;
    fPrivilegio: string;
    fAplicacao: string;
  public
    property idUsuario: string read fidUsuario;
    property Nome: string read fNome;
    property Matricula: string read fMatricula;
    property idLotacao: string read fidLotacao;
    property Lotacao: string read fLotacao;
    property idAplicacao: string read fidAplicacao;
    property idPrivilegio: string read fidPrivilegio;
    property Privilegio: string read fPrivilegio;
    property Aplicacao: string read fAplicacao;
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
