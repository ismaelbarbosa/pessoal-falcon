{ ------------------------------------------------------------------------------
  Sistema: Pessoal
  Unit: uPesFuncoes
  Descri��o: biblioteca de fun��es do sistema
  Altera��es:

  10/09/2020:
  - Criada a unit
  - Inclu�da a fun��o
-------------------------------------------------------------------------------}

unit uPesFuncoes;

interface

uses Windows, SysUtils, StrUtils, Forms, Dialogs, Graphics, DateUtils, ADODB, Winsock,
IniFiles, cxMemo, cxDBEdit, Classes;

procedure monitorarAcoesDaSessao(pFonte, pAcao, pTexto: string);
procedure IncluirLog(pUsu, pDtAlt, pTabela, pChave, pIdPessoal, pIdServidor, pCampo, pTransacao: string);
function InserirZeros(Texto: string; Comprimento: integer): string;
function ConfirmaAcao(pMensagem: String; pMB: integer): integer;
function NomeComputador: string;
function RetornaData(pFormato: integer): string;
function CaracterSemAcento(prmCaracter: Char; prmNumeroOk: Boolean): Char;
function ConvStringToInt(pString : string) : string;
function diferencaEntreDatas(Inicio, Fim: String): Integer;
function GetIP:string;

implementation

uses uDMConexao, udmPessoal, PRG_utils, ufLogs;

procedure monitorarAcoesDaSessao(pFonte, pAcao, pTexto: string);
begin
  frmLogs.mmoLog.Lines.Add
  (
    'Data: ' + RetornaData(2)
    + chr(13)   + chr(13)
    + 'Fonte: ' + pFonte    + chr(13)
    + 'A��o: '  +  pAcao    + chr(13)
    + pTexto                + chr(13)
    + '------------------------------------------------------'
  );
end;

function GetIP:string;
//--> Declare a Winsock na clausula uses da unit
var
    WSAData: TWSAData;
    HostEnt: PHostEnt;
    Name:string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PChar(Name));
  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d',
    [Byte(h_addr^[0]),Byte(h_addr^[1]),
    Byte(h_addr^[2]),Byte(h_addr^[3])]);
  end;
    WSACleanup;
end;

function diferencaEntreDatas(Inicio, Fim: String): Integer;
var wSQL: String;
begin
   try
     with dmPessoal.qryExecSQL do
     begin

       wSQL := 'SET DATEFORMAT dmy'
//         + ' SELECT dias = DATEDIFF(hour, '
         + ' SELECT dias = DATEDIFF(day, '
         + QuotedStr(Inicio);

       if Fim = '' then
        wSQL := wSQL + ', GETDATE()'

       else
        wSQL := wSQL + ', ' + QuotedStr(Fim);

       wSQL := wSQL + ')';

       SQL.Text := wSQL;

       Open;

       //ShowMessage(wSQL);
       //ShowMessage(dmADO.qryExecSQL.FieldValues['dias']);
       Result := dmPessoal.qryExecSQL.FieldValues['dias'];
     end;
   except
      ShowMessage('N�o foi poss�vel realizar a verifica��o');
   end
end;

function ConvStringToInt(pString: string): string;
var i : integer;
    vNewString : string;
    vString : string[1];
    vChar : char;
begin
  vNewString := '';
  for i := 1 to length(pString) do
  begin
    vString := copy(pString,i,1);
    vChar := vString[1];
    case vChar of
    '0'..'9' : vNewString := vNewString + vChar;
    end;
  end;
  result := vNewString;
end;

procedure IncluirLog
(pUsu, pDtAlt, pTabela, pChave, pIdPessoal, pIdServidor, pCampo, pTransacao: string);
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
          + '(idUsuario, Data, Tabela, Chave, idPessoal, idServidor, Campo, Evento)'
          + ' Values ('
          + QuotedStr(pUsu)
          + ',' + QuotedStr(pDtAlt)
          + ',' + QuotedStr(pTabela)
          + ',' + QuotedStr(pChave)
          + ',' + QuotedStr(pIdPessoal)
          + ',' + QuotedStr(pIdServidor)
          + ',' + QuotedStr(pCampo)
          + ',' + QuotedStr(pTransacao)
          + ')';

     //ShowMessage(qryExecSQL.SQL.Text);

     qryExecSQL.ExecSQL;
     qryExecSQL.Close;
   end;
  except
     ShowMessage('Ocorreu um erro durante a tentativa de inclus�o do Log. Informe ao Suporte T�cnico.');
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
      (PChar(pMensagem),'Aten��o', MB
      + MB_ICONINFORMATION)
  of
    IDNO: Result := 0;
    IDYES: Result := 1;
    IDCANCEL: Result := 2;
  else
    begin
      ShowMessage('Op��o inv�lida');
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
    if not (wCar[1] in ['A'..'Z','0'..'9', '�', '�', '-',  '.', '/', #8, #9, #32, #11]) then prmCaracter := #0
    else prmCaracter := wCar[1];
  end
  else
  begin
    if not (wCar[1] in ['A'..'Z', '�', '�', '-', '.', #8, #9, #32, #11]) then prmCaracter := #0
    else prmCaracter := wCar[1];
  end;

  Result := prmCaracter;
end;


end.
