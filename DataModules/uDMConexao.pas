unit uDMConexao;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, Forms, Variants;

// Criação da classe TUser para retornar o servidor que está logado

type
  TUsuario  = record
    ID        : string;
    Nome      : string;
    CPF       : string;
    Matricula : string;
    Aplicacao : string;
    idLotacao : string;
    Lotacao   : string;
    SuperLotacao: string;
    Sala      : string;
    Ramal     : string;
    idPrivilegio: string;
    Privilegio: string;
end;//TUsuario

//var Usuario : TUsuario;

type
  TDMConexao = class(TDataModule)
    conPessoal: TADOConnection;
    strDadosUsuarioLogado: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
//    fUsuario : TUsuario;

  public
    //property Usuario: TUsuario read fUsuario;

    Usuario : TUsuario;
    MAQUINA, BASE, SERVIDOR, USER, PASSWORD: String;

    //Base: Integer;

    function ConectarBanco(Banco: string): boolean;
    function SetarUsuarioLogado: boolean;
    function getNomeServidor: String;
    function getBaseDados: String;

    // Métodos para o objeto Usuário

    procedure setCPFUsuario(CPF: String);
    procedure setUsuario(ID: String; Nome: String; Matricula: String; idLotacao: String;
                         Lotacao: String; idPrivilegio: String; Privilegio: String;
                         SuperLotacao: String);
    function getCPFUsuario: String;
    function getIDUsuario: String;
    function getNomeUsuario: String;
    function getMatriculaUsuario: String;
    function getidLotacao: String;
    function getLotacao: String;
    function getSuperLotacao: String;
    function getIdPrivilegioUsuario: string;
    function getPrivilegioUsuario: string;
//    function getTipoUsuario: TTipoUsuario;

    // fim métodos objeto Usuário

  end;

var
  DMConexao: TDMConexao;

implementation

uses PRG_utils, uPesFuncoes;

{$R *.dfm}

function TDMConexao.ConectarBanco(Banco: string): boolean;
var STRINGCONEXAO: string;
begin
  MAQUINA := NomeComputador;

  if Banco = 'Pessoal' then
  begin
    if (MAQUINA = 'SUTIC0341154?')
    or (MAQUINA = 'SUTIC1276156')
    or (MAQUINA = 'SUTIC034609')
    then
    begin
      //ShowMessage('Máquina de desenvolvimento');
      BASE      := '2';
      SERVIDOR  := 'PGSRV19';
      USER      := 'sa';
      PASSWORD  := '3253389';
    end                                        
    else
    begin
      //ShowMessage('Máquina de produção');
      BASE      := '1';
      SERVIDOR  := 'PRG_SERVER3';
      USER      := 'PESSOAL';
      PASSWORD  := 'NhiD90oH';
    end;

    {Provider=SQLOLEDB.1;Password=NhiD90oH;Persist Security Info=True;User ID=PESSOAL;Initial Catalog=dbPessoal;
    Data Source=PRG_SERVER3;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation
    ID=SUTIC1276156;Use Encryption for Data=False;Tag with column collation when possible=False}

    STRINGCONEXAO := 'Provider=SQLOLEDB.1;Password=' + PASSWORD + ';'
      + 'Persist Security Info=True;User ID=' + USER + ';'
      + 'Initial Catalog=dbPessoal;Data Source=' + SERVIDOR + ';'
      + 'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;'
      + 'Workstation ID=' + MAQUINA + ';'
      + 'Use Encryption for Data=False;'
      + 'Tag with column collation when possible=False';


      conPessoal.Connected := false;
      conPessoal.ConnectionString := STRINGCONEXAO;

    try
      with conPessoal do
      begin
        Connected := true
      end;
      Result := true;
    except
      Result := false;
    end;

  end;

end;

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  if not conectarBanco('Pessoal')
  then
  begin
    ShowMessage('Ocorreu um erro na tentativa de acessar o banco de Pessoal');
    Application.Terminate;
  end
  else
  begin
    //Showmessage('Banco Pessoal conectado com sucesso.');
    if not SetarUsuarioLogado then
      ShowMessage('Erro na identificação do usuário');
    //else ShowMessage('Usuário identificado')
  end;

end;

function TDMConexao.getBaseDados: String;
begin
  Result := BASE;
end;

function TDMConexao.getCPFUsuario: String;
begin
  Result := InserirZeros(Usuario.CPF, 11);
end;

function TDMConexao.getidLotacao: String;
begin
  Result := Usuario.idLotacao;
end;

function TDMConexao.getIdPrivilegioUsuario: string;
begin
  Result := Usuario.idPrivilegio;
end;

function TDMConexao.getIDUsuario: String;
begin
  Result := Usuario.ID;
end;

function TDMConexao.getLotacao: String;
begin
  Result := Usuario.Lotacao;
end;

function TDMConexao.getMatriculaUsuario: String;
begin
  Result := Usuario.Matricula;
end;

function TDMConexao.getNomeServidor: String;
begin
  Result := SERVIDOR;
end;

function TDMConexao.getNomeUsuario: String;
begin
  Result := Usuario.Nome;
end;

function TDMConexao.getPrivilegioUsuario: string;
begin
  Result := Usuario.Privilegio;
end;

function TDMConexao.getSuperLotacao: String;
begin
  Result := Usuario.SuperLotacao;
end;

function TDMConexao.SetarUsuarioLogado: boolean;
var x: string;
begin
  try
    strDadosUsuarioLogado.Connection := conPessoal;

    if Nome_do_Usuario_Logado = 'gesol' then
      begin

        x:= InputBox('Atenção','Entre com o nome do usuário','');
        strDadosUsuarioLogado.Parameters.ParamValues['@Login'] := x;

      end else
      begin
        strDadosUsuarioLogado.Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
      end; //if gesol


    strDadosUsuarioLogado.Active := false;
    //   strDadosUsuarioLogado.Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
    strDadosUsuarioLogado.Parameters.ParamValues['@idAplicacao'] := '001';
    strDadosUsuarioLogado.ExecProc;
    strDadosUsuarioLogado.Active := true;


    if strDadosUsuarioLogado.RecordCount = 0 then//if2
    begin
      ShowMessage('Você não está cadastrado para utilizar esta aplicação.');
      Application.Terminate;
      Abort;

      strDadosUsuarioLogado.Active := false;
      strDadosUsuarioLogado.Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
      strDadosUsuarioLogado.Parameters.ParamValues['@idAplicacao'] := Null;
      strDadosUsuarioLogado.ExecProc;
      strDadosUsuarioLogado.Active := true;

      with Usuario do
      begin
        Nome := strDadosUsuarioLogado.FieldValues['NOME'];
        CPF := strDadosUsuarioLogado.FieldValues['CPF'];
        Matricula := strDadosUsuarioLogado.FieldValues['MATRICULA'];
        Aplicacao := NullAsStringValue;
        Privilegio := 'PESQUISA';
        idLotacao := strDadosUsuarioLogado.FieldValues['idLOTACAO'];
        Lotacao := strDadosUsuarioLogado.FieldValues['LOTACAO'];
        Sala := strDadosUsuarioLogado.FieldValues['SALA'];
        Ramal := strDadosUsuarioLogado.FieldValues['RAMAL'];


      {fUsuario.Nome := strDadosUsuarioLogado.FieldValues['NOME'];
      fUsuario.CPF := strDadosUsuarioLogado.FieldValues['CPF'];
      fUsuario.Matricula := strDadosUsuarioLogado.FieldValues['MATRICULA'];
      fUsuario.Aplicacao := NullAsStringValue;
      fUsuario.Privilegio := 'PESQUISA';
      fUsuario.idLotacao := strDadosUsuarioLogado.FieldValues['idLOTACAO'];
      fUsuario.Lotacao := strDadosUsuarioLogado.FieldValues['LOTACAO'];
      fUsuario.Sala := strDadosUsuarioLogado.FieldValues['SALA'];
      fUsuario.Ramal := strDadosUsuarioLogado.FieldValues['RAMAL'];
      }

      end;

    end//if2
    else
    begin
      {fUsuario.Nome := strDadosUsuarioLogado.FieldValues['NOME'];
      fUsuario.CPF := strDadosUsuarioLogado.FieldValues['CPF'];
      fUsuario.Matricula := strDadosUsuarioLogado.FieldValues['MATRICULA'];
      fUsuario.Aplicacao := strDadosUsuarioLogado.FieldValues['APLICACAO'];
      fUsuario.Privilegio := strDadosUsuarioLogado.FieldValues['PRIVILEGIO'];
      fUsuario.idLotacao := strDadosUsuarioLogado.FieldValues['idLOTACAO'];
      fUsuario.Lotacao := strDadosUsuarioLogado.FieldValues['LOTACAO'];
      fUsuario.Sala := strDadosUsuarioLogado.FieldValues['SALA'];
      fUsuario.Ramal := strDadosUsuarioLogado.FieldValues['RAMAL'];}

      with Usuario do
      begin
        Nome := strDadosUsuarioLogado.FieldValues['NOME'];
        CPF := strDadosUsuarioLogado.FieldValues['CPF'];
        Matricula := strDadosUsuarioLogado.FieldValues['MATRICULA'];
        Aplicacao := NullAsStringValue;
        Privilegio := 'PESQUISA';
        idLotacao := strDadosUsuarioLogado.FieldValues['idLOTACAO'];
        Lotacao := strDadosUsuarioLogado.FieldValues['LOTACAO'];
        Sala := strDadosUsuarioLogado.FieldValues['SALA'];
        Ramal := strDadosUsuarioLogado.FieldValues['RAMAL'];

        //ShowMessage(Nome);
      end;


    end;//if2

    Result := true;
  except
    Result := false;
  end;

end;

procedure TDMConexao.setCPFUsuario(CPF: String);
begin
  Usuario.CPF  := CPF;
end;

procedure TDMConexao.setUsuario(ID, Nome, Matricula, idLotacao, Lotacao,
  idPrivilegio, Privilegio, SuperLotacao: String);
begin
  Usuario.ID := ID;
  Usuario.Nome := Nome;
  Usuario.Matricula := Matricula;
  Usuario.idLotacao := idLotacao;
  Usuario.Lotacao := Lotacao;
  Usuario.idPrivilegio := idPrivilegio;
  Usuario.Privilegio := Privilegio;
  Usuario.SuperLotacao := SuperLotacao;
end;

end.
