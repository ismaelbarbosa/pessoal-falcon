{*-------------------------------------------------------------------------
 Rotinas gen�ricas para os sistemas da PGDF.
 Re�ne os objetos necess�rios aos sistemas da PGDF, em especial os
respons�veis pelo Login dos sistemas constru�dos em Delphi.

@Author jcl
@Version ??/??/???? 1.0.0.0
@Todo Remover todas as classes aqui descritas.
@Todo Definir cada classe em uma Unit separada (ver com o Alexis)
===========================================================================}
unit PRG_utils;

interface

uses
  SysUtils, Windows, Classes, Dialogs, DB, ADODB, StdCtrls, Forms,
  Messages;

type
{*-------------------------------------------------------------------------
Tipo que serve para informar � fun��o 'MetodoVigenere' do objeto
'TCriptografia' qual a opera��o (criptografar: 'toCripto' ou
descriptografar: 'toDecripto') a ser efetuada com a string passada pelo
par�metro 'ATexto'.

@See MetodoVigenere
===========================================================================}
  TTipoOperacao = (toCripto, toDecripto);

  {TCriptografia interface}
{*-------------------------------------------------------------------------
Respons�vel pela criptografia das senhas dos sistemas.

@Todo Procurar uma maneira (algoritmo, componente) que permita uma
encripta��o mais forte
===========================================================================}
  TCriptografia = class (TObject)
  private
    { Private declarations }
{*-------------------------------------------------------------------------
Armazena o valor da propriedade 'Senha_Criptografada'.
===========================================================================}
    fSenha_Criptografada: string;
{*-------------------------------------------------------------------------
Passa o valor da chave utilizada para criptografar ao 'MetodoVigenere'.
Repete a opera��o, com  valores diferentes, por tr�s vezes.

@Param ATexto String a ser criptografada
@Return A string 'ATexto' criptografada
@See MetodoVigenere
===========================================================================}
    function Criptografar(const ATexto: Variant): string;
{*-------------------------------------------------------------------------
Criptografa ou descriptografa uma string ('ASenha') tendo por base uma
chave ('ATexto').

@Param ATexto string a ser criptografada
@Param ASenha chave a ser utilizada como base para criptografar 'ATexto'
@Param AOperacao Tipo de opera��o a ser realizada ('toCripto' ou 'toDecripto')
@Return A string 'ATexto' criptografada
===========================================================================}
    function MetodoVigenere(const ATexto: string; ASenha: string; AOperacao:
            TTipoOperacao): string;
{*-------------------------------------------------------------------------
Utiliza o m�todo 'Criptografar' para atribuir um valor ao campo
'fSenha_Criptografada'.

@Param Value String a ser armazenada no campo 'fSenha_Criptografada'
@See Criptografar
===========================================================================}
    procedure SetSenha(Value: string);
  public
    { Public declarations }
{*-------------------------------------------------------------------------
Cria o objeto 'TCriptografia e passa o valor do par�metro
'para_Criptografar' ao campo 'fSenha_Criptografada'.

@Param para_Criptografar String a ser armazenada no campo 'fSenha_Criptografada'
@See Criptografar
@See SetSenha
===========================================================================}
    constructor Create(para_Criptografar: string);
{*-------------------------------------------------------------------------
Recebe uma string e passa-a para o campo 'fSenha_Criptografada' atrav�s do
m�todo 'SetSenha'.
Retorna o valor armazenado em 'fSenha_Criptografada'.
@See SetSenha
===========================================================================}
    property Senha_Criptografada: string read fSenha_Criptografada write
             SetSenha;
  end;
  {TCriptografia fim interface}

  {TAcesso interface}
{*-------------------------------------------------------------------------
 Respons�vel pela conex�o ao banco de dados onde est�o armazenadas as
senhas dos sistemas.
 Mapeia os valores armazenados nas tabelas para os campos 'Nome',
'idUsuario', 'Matricula', 'idLotacao', 'Lotacao', 'idPrivilegio',
'Privilegio', 'idAplicacao', 'Aplicacao', 'idEmpresa'.
===========================================================================}
  TAcesso = class (TObject)
  private
    { Private declarations }
    fConexao: TCustomConnection;
    fStrProc_Acesso: TDataSet;
    fNome: string;
    fidUsuario: string;
    fMatricula: string;
    fidLotacao: string;
    fLotacao: string;
    fidPrivilegio: string;
    fPrivilegio: string;
    fidAplicacao: string;
    fAplicacao: string;
    fidEmpresa: string;
    fCriptografia: TCriptografia;
    function Conectar: boolean;
  public
    { Public declarations }
    property idUsuario: string read fidUsuario;
    property Nome: string read fNome;
    property Matricula: string read fMatricula;
    property idLotacao: string read fidLotacao;
    property Lotacao: string read fLotacao;
    property idAplicacao: string read fidAplicacao;
    property idPrivilegio: string read fidPrivilegio;
    property Privilegio: string read fPrivilegio;
    property Aplicacao: string read fAplicacao;
    function Logar(CPF, Senha, codAplicacao: string): boolean;
  end;
  {TAcesso fim interface}

  {Utilidades interface}
const
//*****************diret�rios e arquivos no servidor*********************
serv_Sistemas =//diret�rio de backup em Sistemas_jcl
'\\Prg_server3\Sistemas\Sistemas_jcl\Sistemas';
serv_PRG_utilsDCU_Atualiza =
'\\Prg_server3\Sistemas\Atualiza\Tarja_Amarela\Objetos\PRG_utils.dcu';
serv_uTLoginDCU_Atualiza =
'\\Prg_server3\Sistemas\Atualiza\Tarja_Amarela\Objetos\uTLogin.dcu';
serv_ufrmLoginDCU_Atualiza =
'\\Prg_server3\Sistemas\Atualiza\Tarja_Amarela\Objetos\ufrmLogin.dcu';
serv_ufrmLoginDFM_Atualiza =
'\\Prg_server3\Sistemas\Atualiza\Tarja_Amarela\Objetos\ufrmLogin.dfm';
serv_frmLoginRES_Atualiza =
'\\Prg_server3\Sistemas\Atualiza\Tarja_Amarela\Objetos\frmLogin.res';

//***********diret�rios e arquivos na m�quina do desenvolvedor*************
Tarja_Amarela =//diret�rio na m�quina do desenvolvedor
'C:\Sistemas\Tarja_Amarela';
PRG_utilsDCU_Tarja =//na pasta Tarja_Amarela do desenvolvedor
'C:\Sistemas\Tarja_Amarela\Objetos\PRG_utils.dcu';
uTLoginDCU_Tarja =//na pasta Tarja_Amarela do desenvolvedor
'C:\Sistemas\Tarja_Amarela\Objetos\uTLogin.dcu';
ufrmLoginDCU_Tarja =//na pasta Tarja_Amarela do desenvolvedor
'C:\Sistemas\Tarja_Amarela\Login\ufrmLogin.dcu';
ufrmLoginDFM_Tarja =//na pasta Tarja_Amarela do desenvolvedor
'C:\Sistemas\Tarja_Amarela\Login\ufrmLogin.dfm';
frmLoginRES_Tarja =//na pasta Tarja_Amarela do desenvolvedor
'C:\Sistemas\Tarja_Amarela\Login\frmLogin.res';
frmLoginRES_Obj =//na pasta Objetos do desenvolvedor
'C:\Sistemas\Objetos\frmLogin.res';
ufrmLoginDFM_Obj =//na pasta Objetos do desenvolvedor
'C:\Sistemas\Objetos\ufrmLogin.dfm';
ufrmLoginDCU_Obj =//na pasta Objetos do desenvolvedor
'C:\Sistemas\Objetos\ufrmLogin.dcu';
uTLoginDCU_Obj =//na pasta Objetos do desenvolvedor
'C:\Sistemas\Objetos\uTLogin.dcu';
PRG_utilsDCU_Obj =//na pasta Objetos do desenvolvedor
'C:\Sistemas\Objetos\PRG_utils.dcu';

type
  TResultMens = (Salvar, NSalvar, Cancelar, Excluir, NInsEdit);
var
diretorio_de_Backup: string;

function CamposVazios(Campos: Array of TCustomEdit;
         Mensagens: Array of string): Boolean;
procedure Delay(msecs: integer);
procedure Oculta_Barra_de_Tarefas;
procedure Mostra_Barra_de_Tarefas;
function Verifica_Conexao: boolean;
procedure Formato_Data_dd_MM_yyyy;
function InserirZeros(Texto: string; Comprimento: integer): string;
function ModoTabela(Tabela: TDataSet): TResultMens;
function ModoTabelaGravar(Tabela: TDataSet): TResultMens;
function ModoTabelaDesfaz(Tabela: TDataSet): TResultMens;
function ModoTabelaExcluir(Tabela: TDataSet): TResultMens;
function RemoveEspaco(Texto : string) : string;
function RemoveAcento(Str: string): string;
function MesValido(Mes: string): boolean;
function AnoValido(Ano: string): boolean;
function Mes_por_Extenso(Mes: string): string;
function CPF_valido(cpf: string): boolean;
function RemoveIndesejadas(Texto: string): string;
function Gera_SQL(Texto, Campo: string): string; overload;
function Gera_SQL(Texto, Campo, operador: string): string; overload;
//faz um backup do diret�rio atual e cria uma chave no registro do Windows
//contendo o caminho de backup do usu�rio atual
function Backup_da_Pasta_do_Sistema(sistema: string): Boolean;
//abre a janela do Windows para selecionar um diret�rio
function DirectorySelect(const Title: string; const Flag: integer): string;
//copia um diret�rio inteiro
function Copiar_Diretorio(origem, destino: string): boolean;
//copia um arquivo
procedure Copiar_Arquivo(origem, destino: string; Flags: Integer);overload;
procedure Copiar_Arquivo(origem, destino: string);overload;
//retorna a data de um arquivo dado
function Data_do_Arquivo(Arquivo: string): TDateTime;
//verifica se as datas dos arquivos s�o diferentes
//retorna false se as datas forem diferentes
function Compara_Datas(Arquivo1, Arquivo2: string): boolean;
//centraliza a janela de sele��o do diret�rio
function BrowseDialogCallBack(Wnd: HWND; uMsg: UINT; lParam,
         lpData: LPARAM): integer stdcall;
function LongToShortPath(Long: string): string;
function Travar_Estacao_XP: boolean;
function Versao_do_Sistema: string;
function Versao_do_Sistema_Operacional: string;
function Nome_do_Computador: string;
function Conectado: boolean;
function Nome_do_Usuario_Logado: string;
function Nome_do_Sistema_EXE: string;
function Nome_do_Sistema: string;
function Caminho_do_Sistema: string;
function Nome_e_Caminho_do_Sistema: string;
  {fim Utilidades interface}

implementation

uses Variants, Math, StrUtils, Registry, ShellAPI, Controls,
     ShlObj;

{TCriptografia implementation}
constructor TCriptografia.Create(para_Criptografar: string);
begin

  SetSenha(para_Criptografar);

end;

function TCriptografia.Criptografar(const ATexto: Variant): string;
var
  Resultado1, Resultado2: string;
begin

  Resultado1 := MetodoVigenere(ATexto,'NOVEMBRO',toCripto);
  Resultado2 := MetodoVigenere(Resultado1,'AARARAAMARELAFALARA',toCripto);
  Result := MetodoVigenere(Resultado2,'QUALQUERCOISA',toCripto);

end;

function TCriptografia.MetodoVigenere(const ATexto: string; ASenha: string;
        AOperacao: TTipoOperacao): string;

  {Rotina criptogr�fica pelo m�todo Vigenere
  ATexto: string, texto a ser processado
  ASenha: string, a senha que dever� ser utilizada para o processo
  AOperacao: TTipoOperacao, identifica a operacao desejada
  Result: string, texto processado}
  const{Tabela de Vigenere} aLetras: array['A'..'Z','A'..'Z'] of char =
        ('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'BCDEFGHIJKLMNOPQRSTUVWXYZA',
         'CDEFGHIJKLMNOPQRSTUVWXYZAB', 'DEFGHIJKLMNOPQRSTUVWXYZABC',
         'EFGHIJKLMNOPQRSTUVWXYZABCD', 'FGHIJKLMNOPQRSTUVWXYZABCDE',
         'GHIJKLMNOPQRSTUVWXYZABCDEF', 'HIJKLMNOPQRSTUVWXYZABCDEFG',
         'IJKLMNOPQRSTUVWXYZABCDEFGH', 'JKLMNOPQRSTUVWXYZABCDEFGHI',
         'KLMNOPQRSTUVWXYZABCDEFGHIJ', 'LMNOPQRSTUVWXYZABCDEFGHIJK',
         'MNOPQRSTUVWXYZABCDEFGHIJKL', 'NOPQRSTUVWXYZABCDEFGHIJKLM',
         'OPQRSTUVWXYZABCDEFGHIJKLMN', 'PQRSTUVWXYZABCDEFGHIJKLMNO',
         'QRSTUVWXYZABCDEFGHIJKLMNOP', 'RSTUVWXYZABCDEFGHIJKLMNOPQ',
         'STUVWXYZABCDEFGHIJKLMNOPQR', 'TUVWXYZABCDEFGHIJKLMNOPQRS',
         'UVWXYZABCDEFGHIJKLMNOPQRST', 'VWXYZABCDEFGHIJKLMNOPQRSTU',
         'WXYZABCDEFGHIJKLMNOPQRSTUV', 'XYZABCDEFGHIJKLMNOPQRSTUVW',
         'YZABCDEFGHIJKLMNOPQRSTUVWX', 'ZABCDEFGHIJKLMNOPQRSTUVWXY');
  var
  nKey: integer;//Indica a posi��o de ASenha(letra)
  nInd: integer;//Indica a posi��o de ATexto(letra)
  cSenha: string;//Auxiliar com a senha
  cTextoFinal: string;//Texto final
  //Efetua a criptografia
  function Code(ALetra, AChave: char): char;
  begin
    //Como a tabela s� tem mai�sculas, � necess�rio efetuar uma verifica��o
    if ALetra in ['a'..'z'] then
       Result := lowercase(aLetras[AChave,uppercase(ALetra)[1]])[1]
    else Result := aLetras[AChave, ALetra];
  end;
  //Efetua a descriptografia
  function Decode(ALetra,AChave: char): char;
  var
  cAux: char;//Usado para acessar a tabela Vigenere
  begin
  Result := Aletra;
  //La�o para localiza��o da letra
  for cAux := 'A' to 'Z' do
    if ALetras[cAux,AChave] = uppercase(ALetra) then
      begin
      //Como a tabela s� tem mai�sculas, � necess�rio efetuar uma verifica��o
      if uppercase(ALetra) = ALetra then
        Result := aLetras[cAux,'A']
      else Result := lowercase(aLetras[cAux,'A'])[1];
      break;
      end;
    end;

begin
  //Caso a senha seja vazia, n�o faz nada
  if ASenha = '' then
    begin
    Result := ATexto;
    exit;
    end;
  //Inicia
  Result := '';
  cTextoFinal := ATexto;
  nKey := 1;
  cSenha := uppercase(ASenha);
  //La�o para percorrer o texto bruto/criptografado
  for nInd := 1 to length(ATexto) do
    begin
    //Verifica se a letra est� na faixa da tabela de Vigenere
    if ATexto[nInd] in ['a'..'z','A'..'Z'] then
      begin
      if AOperacao = toDecripto then
        Result := Result + Decode(ATexto[nInd], cSenha[nKey])
      else Result := Result + Code(ATexto[nInd],cSenha[nKey]);
      //Desloca para o pr�ximo caracter da senha e
      //caso a senha seja menor que o texto bruto
      //repete-a novamente
      inc(nKey);
      if nKey > length(ASenha) then nKey := 1;
      end
      else Result := Result + ATexto[nInd];
    end;

end;

procedure TCriptografia.SetSenha(Value: string);
begin

  fSenha_Criptografada := Criptografar(Value);

end;
{TCriptografia fim implementation}

{TAcesso implementation}

function TAcesso.Conectar: boolean;
begin

//Criando o componente TADOConnection para acesso ao banco de dados
fConexao := TADOConnection.Create(nil);
//Conectando ao banco de dados
with fConexao as TADOConnection do
begin
  ConnectionString := 'Provider=SQLOLEDB.1;Password=3253389;' +
                      'Persist Security Info=True;User ID=sa;' +
                      'Initial Catalog=dbPessoal;' +
//                      'Data Source=10.8.1.4;';
                      'Data Source=prg_server3;';
  LoginPrompt := false;
  try
    Open;
    Result := true;
  except
    ShowMessage('N�o foi poss�vel efetuar a conex�o ao banco de ' +
                 'dados.' + #13 + #10 +
                 'Tente novamente. ' + #13 + #10 +
                 'Caso o problema persista entre em ' + #13 + #10 +
                 ' contato com o N�cleo de Suporte ao Usu�rio.');
    Result := false;
  end;//try
end;//with

end;

function TAcesso.Logar(CPF, Senha, codAplicacao: string): boolean;
begin

Result := false;

if Conectar = true then//if0
begin
  //Criando o componente TSQLQuery para acesso � tabela
  fStrProc_Acesso := TADOStoredProc.Create(nil);
  with fStrProc_Acesso as TADOStoredProc do//with1
  begin
    Connection := fConexao as TADOConnection;
    ProcedureName := 'Acesso;1';

    Active := false;
    Parameters.Refresh;

    Parameters.ParamValues['@TipoUsuario'] := 'serv';
    Parameters.ParamValues['@CPF'] := CPF;
    Parameters.ParamValues['@idAplicacao'] := codAplicacao;

    Active := true;

    if IsEmpty = false then//if1
    begin
      fCriptografia := TCriptografia.Create(Senha);

      if FieldValues['Senha'] = fCriptografia.Senha_Criptografada then//if2
      begin
        fidUsuario := FieldValues['cpf'];
        fNome := FieldValues['nome'];
        if FieldValues['idservidor'] <> null
        then fMatricula := FieldValues['idservidor']
        else fMatricula := 'N�o informada';
        fidLotacao := FieldValues['idlotacao'];
        fLotacao := FieldValues['descricao'];
        FidPrivilegio := FieldValues['idprivilegio'];
        fPrivilegio := FieldValues['Privilegio'];
        fidAplicacao := FieldValues['idaplicacao'];
        fAplicacao := FieldValues['aplicacao'];
        fStrProc_Acesso.Active := false;
        //EM TESTE
        fCriptografia.Free;
        fStrProc_Acesso.Free;
        fConexao.Close;
        fConexao.Free;
        //EM TESTE

        Result := true;
      end//if2
      else//if2
      begin
        Result := false;
        //EM TESTE
        fCriptografia.Free;
        fStrProc_Acesso.Free;
        fConexao.Close;
        fConexao.Free;
        //EM TESTE
      end;//if2
    end//if1
    else//if1
    begin
      Active := false;
      Parameters.Refresh;

      Parameters.ParamValues['@TipoUsuario'] := 'utnt';
      Parameters.ParamValues['@CPF'] := CPF;
      Parameters.ParamValues['@idAplicacao'] := codAplicacao;

      Active := true;

      if IsEmpty = false then//if3
      begin
        fCriptografia := TCriptografia.Create(Senha);

        if FieldValues['Senha'] = fCriptografia.Senha_Criptografada then//if4
        begin
          fidUsuario := FieldValues['cpf'];
          fNome := FieldValues['nome'];
          if FieldValues['idMatricula'] <> null
          then fMatricula := FieldValues['idMatricula']
          else fMatricula := 'N�o informada';
          if FieldValues['idEmpresa'] <> null
          then fidEmpresa := FieldValues['idEmpresa']
          else fidEmpresa := '999';
          fidLotacao := FieldValues['idlotacao'];
          fLotacao := FieldValues['descricao'];
          fidPrivilegio := FieldValues['idprivilegio'];
          fPrivilegio := FieldValues['Privilegio'];
          fidAplicacao := FieldValues['idaplicacao'];
          fAplicacao := FieldValues['aplicacao'];

          fStrProc_Acesso.Active := false;
          //EM TESTE
          fCriptografia.Free;
          fStrProc_Acesso.Free;
          fConexao.Close;
          fConexao.Free;
          //EM TESTE

          Result := true;
        end//if4
        else//if4
        begin
          Result := false;
          //EM TESTE
          fCriptografia.Free;
          fStrProc_Acesso.Free;
          fConexao.Close;
          fConexao.Free;
          //EM TESTE
        end;//if4
      end//if3
      else//if3
      begin
        Result := false;
        //EM TESTE
        fCriptografia.Free;
        fStrProc_Acesso.Free;
        fConexao.Close;
        fConexao.Free;
        //EM TESTE
      end;//if3
    end;//if1
  end;//with1
end//if0

end;



{TAcesso fim implementation}

{Utilidades implementation}
function CamposVazios(Campos: Array of TCustomEdit;
         Mensagens: Array of string): Boolean;
var
cont: integer;
begin

Result := false;

if Length(Campos) <> Length(Mensagens) then//if1
begin
  MessageDlg('O n�mero de Mensagens deve ser igual ao n�mero de Campos', mtError,[mbOK],0);
  Halt;
end
else//if1
begin
  for cont := 0 to high(Campos) do
  begin
    if trim(Campos[cont].Text) = '' then//if2
    begin
      Result := true;
      ShowMessage('Preencha o campo ' + Mensagens[cont]);
      Campos[cont].SetFocus;
      Break;
    end//if2
    else Result := false;//if2
  end;//for
end;//if1

end;//fim Campos Vazios

function DirectorySelect(const Title: string; const Flag: integer): string;
var
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  Result:='';
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  with BrowseInfo do begin
    hwndOwner := Application.MainForm.Handle;
    pszDisplayName := @DisplayName;
    lpszTitle := PChar(Title);
    ulFlags := Flag;
    lpfn := BrowseDialogCallBack;
  end;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;

end;//fim DirectorySelect

function Copiar_Diretorio(origem, destino: string): boolean;
var
FOS :TSHFileOpStruct;
begin

try
  with FOS do
  begin
    Wnd := Application.Handle;
    wFunc := FO_COPY;
    pFrom := PAnsiChar(origem);
    pTo := PAnsiChar(destino);

    diretorio_de_Backup := pTo;

    fFlags := FOF_NoConfirmMkDir;
  end;//with FOS
  SHFileOperation(FOS);

  Result := true;
except
  Result := false;
  ShowMessage('Falha ao fazer o backup do Sistema.');
end;//try

end;//fim Copiar_Diretorio

procedure Copiar_Arquivo(origem, destino: string; Flags: Integer);
var
  shellinfo: TSHFileOpStructA;
begin
  with shellinfo do
  begin
    wnd   := Application.Handle;
    wFunc := Flags;
    pFrom := PChar(origem);
    pTo   := PChar(destino);
  end;
  SHFileOperation(shellinfo);

end;//fim Copiar_Arquivo com flag

procedure Copiar_Arquivo(origem, destino: string);
Var
S, T: TFileStream;
Begin
S := TFileStream.Create( origem, fmOpenRead );
try
T := TFileStream.Create( destino, fmOpenWrite or fmCreate );
try
T.CopyFrom(S, S.Size ) ;
finally
T.Free;
end;
finally
S.Free;
end;
end;
//fim Copiar_Arquivo

function Data_do_Arquivo(Arquivo: string): TDateTime;
begin

Result := filedatetodatetime(fileage(Arquivo));

end;//fim Data_do_Arquivo

function Compara_Datas(Arquivo1, Arquivo2: string): boolean;
begin

result := false;

if (copy(datetimetostr(Data_do_Arquivo(Arquivo1)),1,16)) <>
   (copy(datetimetostr(Data_do_Arquivo(Arquivo2)),1,16)) then
   result := false
else result := true;

end;//fim Verifica_Datas

function BrowseDialogCallBack(Wnd: HWND; uMsg: UINT; lParam,
         lpData: LPARAM): integer stdcall;
var
  wa, rect : TRect;
  dialogPT : TPoint;
begin
  //center in work area
  if uMsg = BFFM_INITIALIZED then
  begin
    wa := Screen.WorkAreaRect;
    GetWindowRect(Wnd, Rect);
    dialogPT.X := ((wa.Right-wa.Left) div 2) -
                  ((rect.Right-rect.Left) div 2);
    dialogPT.Y := ((wa.Bottom-wa.Top) div 2) -
                  ((rect.Bottom-rect.Top) div 2);
    MoveWindow(Wnd,
               dialogPT.X,
               dialogPT.Y,
               Rect.Right - Rect.Left,
               Rect.Bottom - Rect.Top,
               True);
  end;

  Result := 0;
end;//fim BrowseDialogCallBack

procedure Delay(msecs: integer);
var
FirstTickCount:longint;
begin

FirstTickCount:=GetTickCount;
repeat
Application.ProcessMessages;
until ((GetTickCount-FirstTickCount) >= Longint(msecs));

end;//fim Delay

procedure Oculta_Barra_de_Tarefas;
begin

ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);

end;//fim Oculta_Barra_de_Tarefas

procedure Mostra_Barra_de_Tarefas;
begin

ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_RESTORE);

end;//fim Mostra_Barra_de_Tarefas

function Verifica_Conexao: boolean;
var
User : Array[0..254] of char;
Size : Cardinal;
begin

Result := false;
//Testa se o usu�rio est� conectado � rede.
Size := 255;
if not (GetUserName(user,size)) then
begin
Result := false;
Messagedlg('O computador n�o est� conectado � rede. Conecte-o e tente novamente.',
            mtError, [mbOk],0);
Halt;
end//if
else Result := true;

end;//fim Verifica_Conexao

procedure Formato_Data_dd_MM_yyyy;
var
LCID:Int64;
begin

//Configura a data para 4 d�gitos.
lcid:=getsystemdefaultlcid;
SetLocaleInfo(lcid,LOCALE_SSHORTDATE,'dd/MM/yyyy');
PostMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0,0);

end;//fim Formato_Data_dd_MM_yyyy

function InserirZeros(Texto: string; Comprimento: integer): string;
var
cont: integer;
formato: string;
begin

SetLength(formato,Comprimento);
for cont := 0 to (Comprimento - 1) do formato[cont] := '0';

Result := concat((copy(formato,1,Comprimento - length(trim(Texto)))),trim(Texto));

end;//fim InserirZeros

function ModoTabela(Tabela: TDataSet): TResultMens;
begin

if Tabela.State in [dsInsert, dsEdit] then//if1
   begin
   case Application.MessageBox('Deseja salvar as altera��es feitas?', 'Salvar altera��es',
                              MB_YESNOCANCEL + MB_DEFBUTTON1) of
      6 : Result := Salvar;
      7 : Result := NSalvar;
   else Result := Cancelar;
   end;//case
   end
else Result := NInsEdit;//if1

end;//fim ModoTabela

function ModoTabelaGravar(Tabela: TDataSet): TResultMens;
begin

if Tabela.State in [dsInsert,dsEdit] then//if1
   begin
   if Application.MessageBox('Deseja salvar o Cadastro atual?',//if2
      'Gravar altera��es',MB_OKCANCEL + MB_DEFBUTTON1) = 1 then Result := Salvar
   else Result := Cancelar;//if2
   end
else Result := NInsEdit;//if1

end;//fim ModoTabelaGravar

function ModoTabelaDesfaz(Tabela: TDataSet): TResultMens;
begin

if Tabela.State in [dsInsert,dsEdit] then//if1
   begin
   if Application.MessageBox('Deseja cancelar as altera��es feitas?',//if2
      'Cancelar altera��es',MB_OKCANCEL + MB_DEFBUTTON1) = 1 then Result := Cancelar
   else Result := Salvar;//if2
   end
else Result := NInsEdit;//if1

end;//fim ModoTabelaDesfaz

function ModoTabelaExcluir(Tabela: TDataSet): TResultMens;
begin

if Tabela.State in [dsInsert,dsEdit] then//if1
   begin
   if Application.MessageBox('Deseja excluir o registro atual?',//if2
      'Excluir registro',MB_OKCANCEL + MB_DEFBUTTON1) = 1 then Result := Excluir
   else Result := Cancelar;//if2
   end
else Result := NInsEdit;//if1

end;//ModoTabelaExcluir

function RemoveEspaco(Texto : string) : string;
var tam, pos1 : integer;
begin
  Texto := Trim(Texto);
  tam := length(Texto);
  while true do
  begin
    pos1 := pos('  ', Texto);  // dois espa�os
    if pos1 = 0 then break;
    Texto := copy(Texto,1,pos1) +
                   copy(Texto,pos1+2,tam);
  end;
  result := Texto;
end;//fim RemoveEspaco

function RemoveAcento(Str: string): string;
const
ComAcento = '���������������������������,';
SemAcento = 'aaeouaoaeoucuAAEOUAOAEIOUCU ';
var x: integer;
begin

for x := 1 to length(str) do
   if pos(str[x],ComAcento) <> 0 then
   str[x] := SemAcento[pos(str[x],ComAcento)];

Result := str;

end;//RemoveAcento

function MesValido(Mes: string): boolean;
begin

if (StrToInt(Mes) = 0) or (StrToInt(Mes) > 12) or (Mes = '') then
  begin
  Result := false;
  ShowMessage('M�s inv�lido.');
  end
else Result := true;

end;//fim MesValido

function AnoValido(Ano: string): boolean;
begin

if Length(Ano) < 4 then
   begin
   Result := false;
   ShowMessage('Ano inv�lido.');
   end
else Result := true;

end;//fim AnoValido

function Mes_por_Extenso(Mes: string): string;
var
MesInteiro: Integer;
begin

if Mes = '' then Mes := '0';
MesInteiro := StrToInt(Mes);

if not (MesInteiro in [0..12]) then MesInteiro := 0;

case MesInteiro of
  0 : Result := '';
  1 : Result := 'JANEIRO';
  2 : Result := 'FEVEREIRO';
  3 : Result := 'MAR�O';
  4 : Result := 'ABRIL';
  5 : Result := 'MAIO';
  6 : Result := 'JUNHO';
  7 : Result := 'JULHO';
  8 : Result := 'AGOSTO';
  9 : Result := 'SETEMBRO';
 10 : Result := 'OUTUBRO';
 11 : Result := 'NOVEMBRO';
 12 : Result := 'DEZEMBRO';
end;//case

end;//fim Mes_por_Extenso

function CPF_valido(cpf: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(cpf[1]);
  n2:=StrToInt(cpf[2]);
  n3:=StrToInt(cpf[3]);
  n4:=StrToInt(cpf[4]);
  n5:=StrToInt(cpf[5]);
  n6:=StrToInt(cpf[6]);
  n7:=StrToInt(cpf[7]);
  n8:=StrToInt(cpf[8]);
  n9:=StrToInt(cpf[9]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1:=11-(d1 mod 11);
  if d1>=10 then
     d1:=0;
     d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
     d2:=11-(d2 mod 11);
     if d2>=10 then
        d2:=0;
        calculado:=inttostr(d1)+inttostr(d2);
        digitado:=cpf[10]+cpf[11];
        if calculado=digitado then
                 result:=true
           else
                 result:=false;

end;//fim CPF_valido

function RemoveIndesejadas(Texto: string): string;
begin

Texto := AnsiReplaceText(Texto,' do ' ,' ');
Texto := AnsiReplaceText(Texto,' da ',' ');
Texto := AnsiReplaceText(Texto,' dos ',' ');
Texto := AnsiReplaceText(Texto,' das ',' ');
Texto := AnsiReplaceText(Texto,' de ',' ');

Result := Texto;

end;//fim RemoveIndesejadas

function Gera_SQL(Texto, Campo: string): string;
begin

Result := '(' + Campo + ' like ''%' +
            AnsiReplaceText(trim(Texto),' ','%'' and ' +
            Campo + ' like ''%') + '%'')';

end;//fim Gera_SQL

function Gera_SQL(Texto, Campo, operador: string): string;
begin

Result := '(' + Campo + ' like ''%' +
              AnsiReplaceText(trim(Texto),' ', '%''' + ' ' + operador + ' ' +
              Campo + ' like ''%') + '%'')';

end;//fim Gera_SQL com operador

function Backup_da_Pasta_do_Sistema(sistema: string): Boolean;
var
FOS :TSHFileOpStruct;
Reg: TRegistry;
dest: string;//para verificar se foi selecionada alguma pasta
begin

Reg:=TRegistry.create;
with Reg do
begin
  rootkey:= HKEY_LOCAL_MACHINE;
  Openkey('SOFTWARE\Tarja_Amarela' , true);
//verifica a exist�ncia de uma chave no registro contendo o caminho p/
//o diret�rio de backup
  if KeyExists(sistema) then//if1
  begin
    OpenKey(sistema, false);

    case Application.MessageBox(PAnsiChar('Deseja fazer o backup em: ' +
                                ReadString('Diretorio_de_Backup') + '?'),
                                'Backup do Sistema',
                                MB_YESNOCANCEL + MB_DEFBUTTON1) of
      6:  begin
            Copiar_Diretorio((copy(Caminho_do_Sistema,1,
                             length(Caminho_do_Sistema) - 1)),
                             (ReadString('Diretorio_de_Backup')));
          end;//6
      7:  begin
            dest := (PAnsiChar(DirectorySelect('Selecione um ' +
                             'diret�rio para backup', BIF_RETURNONLYFSDIRS)));

            Copiar_Diretorio((copy(Caminho_do_Sistema,1,
                             length(Caminho_do_Sistema) - 1)),
                             (dest));

            if (dest) <> '' then//if
            begin
              WriteString('Diretorio_de_Backup', diretorio_de_Backup);
              CloseKey;
            end;//if
          end;//7
    end;//case

    CloseKey;
  end//if1
  else//if1
  begin
    OpenKey(sistema, true);

    Copiar_Diretorio((copy(Caminho_do_Sistema,1,
                     length(Caminho_do_Sistema) - 1)),
                     (PAnsiChar(DirectorySelect('Selecione um ' +
                     'diret�rio para backup', BIF_RETURNONLYFSDIRS))));

    WriteString('Diretorio_de_Backup', diretorio_de_Backup);
    CloseKey;
  end;//if1

Free;

end;//with Reg

end;//fim Backup_da_Pasta_do_Sistema

function LongToShortPath(Long: string): string;
//retorna um caminho com a formata��o para nomes curtos do DOS
var
ActualLength: Longint;
begin

SetLength(Result, Length(Long) + 1);
ActualLength := GetShortPathName(PChar(Long), PChar(Result), Length(Result));
SetLength(Result, ActualLength);

end;//fim LongToShortPath

function Travar_Estacao_XP: boolean;
type 
  TLockWorkStation = function: Boolean; 
var 
  hUser32: HMODULE; 
  LockWorkStation: TLockWorkStation; 
begin
  Result := false;
  // Here we import the function from USER32.DLL 
  hUser32 := GetModuleHandle('USER32.DLL'); 
  if hUser32 <> 0 then//if1
  begin
    @LockWorkStation := GetProcAddress(hUser32, 'LockWorkStation');
    if @LockWorkStation <> nil then//if2
    begin
      LockWorkStation;
      Result := True;
    end;//if2
  end;//if1

end;//fim Travar_Estacao_XP

function Versao_do_Sistema: string;
CONST
  VAR_FILE_INFO = '\VarFileInfo\Translation';
  STRING_FILE_INFO = '\StringFileInfo\';
  FILE_VERSION = 'FileVersion';
VAR
  iVersionInfoSize: integer;
  dwHandle: dWord;
  strVersionInfoBuffer: string;
  iVersionValueSize: cardinal;
  pTranslationTable: pLongInt;
  strVersionValue: string;
  pVersionValue: pChar;
  FCurrentVersion: string;

    function QueryValue(ValueStr: String): String;
      Begin
        IF VerQueryValue(PChar(strVersionInfoBuffer),
                                   PChar(strVersionValue + ValueStr),
                                   Pointer(pVersionValue),
                                   iVersionValueSize)
        THEN
           Result := String(pVersionValue)
        ELSE
           Result := FCurrentVersion;
      end;
begin
  iVersionInfoSize :=GetFileVersionInfoSize(
                                PChar(Application.ExeName),
                                dwHandle);
  IF iVersionInfoSize > 0 THEN
    Begin
      SetLength(strVersionInfoBuffer, iVersionInfoSize);
      IF GetFileVersionInfo(PChar(Application.ExeName),dwHandle,
                                      iVersionInfoSize,
                                     PChar(strVersionInfoBuffer))
      THEN
         IF VerQueryValue(PChar(strVersionInfoBuffer),
                                    PChar(VAR_FILE_INFO),
                                    Pointer(pTranslationTable),
                                    iVersionValueSize)
         THEN
            strVersionValue := Format('%s%.4x%.4x%s',
                                                   [STRING_FILE_INFO,
                                                   LoWord(pTranslationTable^),
                                                    HiWord(pTranslationTable^),'\']);
    End;

  try
  Result := QueryValue(FILE_VERSION);
  except
  Result := 'N�o informada'
  end;//try

end;//fim Versao_do_Sistema

function Versao_do_Sistema_Operacional: string;
var
  VerInfo: TOsversionInfo;
  PlatformId, VersionNumber: string;
  Reg: TRegistry;
begin
  VerInfo.dwOSVersionInfoSize := SizeOf(VerInfo);
  GetVersionEx(VerInfo);
  // Detect platform
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  case VerInfo.dwPlatformId of
    VER_PLATFORM_WIN32s:
      begin
        // Registry (Huh? What registry?)
        PlatformId := 'Windows 3.1';
      end;
    VER_PLATFORM_WIN32_WINDOWS:
      begin
        // Registry
        Reg.OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion', False);
        PlatformId    := Reg.ReadString('ProductName');
        VersionNumber := Reg.ReadString('VersionNumber');
      end;
    VER_PLATFORM_WIN32_NT:
      begin
        // Registry
        Reg.OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion', False);
        PlatformId    := Reg.ReadString('ProductName');
        VersionNumber := Reg.ReadString('CurrentVersion');
      end;
  end;
  Reg.Free;

  try
  Result := PlatformId + ' (version ' + VersionNumber + ')';
  except
  Result := 'Vers�o do Sistema Operacional. Erro!';
  end;//try

end;//fim Versao_do_Sistema_Operacional

function Nome_do_Computador: string;
var
buffer: array[0..MAX_COMPUTERNAME_LENGTH + 1] of Char;
Size: Cardinal;
begin

Size := MAX_COMPUTERNAME_LENGTH + 1;
Windows.GetComputerName(@buffer, Size);

try
Result := StrPas(buffer);
except
Result := 'Nome do computador. Erro!';
end;//try

end;//fim Nome_do_Computador

function Conectado: boolean;
var
User : Array[0..254] of char;
Size : Cardinal;
begin

//Testa se o usu�rio est� conectado � rede.
Size := 255;
if not (GetUserName(user,size)) then
begin
Messagedlg('O computador n�o est� conectado � rede. Conecte-o e tente novamente.',
            mtError, [mbOk],0);
Result := false;
end//if
else Result := true;

end;//fim Conectado

function Nome_do_Usuario_Logado: string;
var
UserName    : string;
UserNameLen : Dword;
begin

UserNameLen := 255;
SetLength(userName, UserNameLen);
if GetUserName(PChar(UserName), UserNameLen) then
  Result := Copy(UserName,1,UserNameLen - 1)
else
  Result := 'Desconhecido';

end;//fim Nome_do_Usuario_Logado

function Nome_do_Sistema_EXE: string;
begin

Result := ExtractFileName(Application.ExeName);

end;//fim Nome_do_Sistema_EXE

function Nome_do_Sistema: string;
begin

Result := AnsiReplaceText(ExtractFileName(Application.ExeName), '.exe', '');

end;//fim Nome_do_Sistema

function Caminho_do_Sistema: string;
begin

Result := ExtractFilePath(Application.ExeName);

end;//fim Caminho_do_Sistema

function Nome_e_Caminho_do_Sistema: string;
begin

Result := Application.ExeName;

end;//fim Nome_e_Caminho_do_Sistema

{fim Utilidades implementation}

end.

