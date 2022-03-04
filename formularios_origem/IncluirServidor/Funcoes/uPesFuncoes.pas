{ ------------------------------------------------------------------------------
  Sistema: Pessoal
  Unit: uPesFuncoes
  Descrição: biblioteca de funções do sistema
  Alterações:

  10/09/2020:
  - Criada a unit
  - Incluída a função
-------------------------------------------------------------------------------}

unit uPesFuncoes;

interface

uses Windows, SysUtils, StrUtils, Forms, Dialogs, Graphics, DateUtils, ADODB, Winsock,
IniFiles, cxMemo, cxDBEdit, Classes;

procedure IncluirLog(pUsu, pDtAlt, pTabela, pChave, pCampo, pTransacao: string);
function InserirZeros(Texto: string; Comprimento: integer): string;
function ConfirmaAcao(pMensagem: String; pMB: integer): integer;
function NomeComputador: string;
function RetornaData(pFormato: integer): string;
function CaracterSemAcento(prmCaracter: Char; prmNumeroOk: Boolean): Char;

implementation

uses uDMConexao, udmPessoal, PRG_utils;

procedure IncluirLog
(pUsu, pDtAlt, pTabela, pChave, pCampo, pTransacao: string);
var wIdLog: string;
begin
  try
//   wIdLog := InserirZeros(
//              dmADO.GerarID('tbLog','idLog'),9);

   with dmPessoal do
   begin
     qryExecSQL.Connection := dmConexao.conPessoal;

     qryExecSQL.SQL.Text :=
          'Set dateformat dmy'
          + ' Insert into '
          + 'tbLog'
          + '(idUsuario, Data, Tabela, Chave, Campo, Transacao)'
          + ' Values ('
          + QuotedStr(pUsu)
          + ',' + QuotedStr(pDtAlt)
          + ',' + QuotedStr(pTabela)
          + ',' + QuotedStr(pChave)
          + ',' + QuotedStr(pCampo)
          + ',' + QuotedStr(pTransacao)
          + ')';

     //ShowMessage(SQL.Text);

     qryExecSQL.ExecSQL;
     qryExecSQL.Close;
   end;
  except
     ShowMessage('Ocorreu um erro durante a tentativa de inclusão do Log. Informe ao Suporte Técnico.');
  end;
end;

function InserirZeros(Texto: string; Comprimento: integer): string;
var
cont: integer;
formato: string;
begin

SetLength(formato,Comprimento);
for cont := 0 to (Comprimento - 1) do formato[cont] := '0';

Result := concat((copy(formato,1,Comprimento - length(trim(Texto)))),trim(Texto));

end;//fim InserirZeros


function ConfirmaAcao(pMensagem: String; pMB: integer): integer;
var mb: integer;
begin
  case pMB of
    3: MB := MB_YESNOCANCEL;
    2: MB := MB_YESNO;
  else
    MB := MB_YESNOCANCEL;
  end;

  case Application.MessageBox
      (PChar(pMensagem),'Atenção', MB
      + MB_ICONINFORMATION)
  of
    IDNO: Result := 0;
    IDYES: Result := 1;
    IDCANCEL: Result := 2;
  else
    begin
      ShowMessage('Opção inválida');
      Result := 999;
    end;
  end
end;


function NomeComputador: string;
var
lpBuffer : PChar;
nSize    : DWord;
const
Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
// Retorna o nome do computador
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;


function RetornaData(pFormato: integer): string;
var
  vSQL : string;
begin
   try
     with dmPessoal.qryExecSQL do
     begin
         Connection := DMConexao.conPessoal;
         vSQL := 'Set dateformat dmy';

          if pFormato = 1 then // Apenas data
            vSQL := vSQL + ' ' + ' Select convert(char(11),getdate(),103) as ' +
              'Data'

          else if pFormato = 2 then // Data e hora
            vSQL := vSQL + ' Select convert(char(11),getdate(),103)'
              + '+ convert(char(8),getdate(),108) as Data'

          else if pFormato = 3 then // Apenas hora
            vSQL := vSQL + ' Select convert(char(11),getdate(),108) as Data';

         SQL.Text := vSQL;
         ExecSQL();
         Open;
         Result := FieldValues['Data'];
     end;
   finally
     dmPessoal.qryExecSQL.Close;
   end;
end;

function CaracterSemAcento(prmCaracter: Char; prmNumeroOk: Boolean): Char;
var wCar: String[1];
begin
  wCar := prmCaracter;
  wCar := AnsiUpperCase(RemoveAcento(AnsiReplaceText(wCar,'.','')));

  if prmNumeroOk then
  begin
    if not (wCar[1] in ['A'..'Z','0'..'9', 'ª', 'º', '-',  '.', '/', #8, #9, #32, #11]) then prmCaracter := #0
    else prmCaracter := wCar[1];
  end
  else
  begin
    if not (wCar[1] in ['A'..'Z', 'ª', 'º', '-', '.', #8, #9, #32, #11]) then prmCaracter := #0
    else prmCaracter := wCar[1];
  end;

  Result := prmCaracter;
end;


end.
