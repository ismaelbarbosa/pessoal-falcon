unit uAmbiente;

interface

var APP_PATH : string;
    wMaquina: string;

implementation

uses PRG_Utils, uPesFuncoes;

begin

  wMaquina := NomeComputador;

  if (wMaquina = 'T-NUSIS03-VM')
  then
   APP_PATH := 'C:\Projetos\PGDF\Delphi\Judicial'
  else
   APP_PATH := '\\prg_server3\Sistemas\Judicial';

end.