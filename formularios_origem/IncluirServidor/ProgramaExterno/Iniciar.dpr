program Iniciar;

uses
  Dialogs, Forms,
  ufIniciar in 'ufIniciar.pas' {Form1};

{$R *.res}

begin

if ParamStr(1) <> 'MinhaSenha' then
begin
  { Para usar ShowMessage, coloque Dialogs no uses }
  ShowMessage('Execute este programa atrav�s de IncluiServidor.EXE');
  Halt; { Finaliza }
end;

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
