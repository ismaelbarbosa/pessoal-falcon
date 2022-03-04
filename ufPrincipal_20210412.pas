unit ufPrincipal_20210412;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxGDIPlusClasses, ExtCtrls, StdCtrls;

type
  TUsuario  = record
    Nome      : string;
    CPF       : string;
    Matricula : string;
    Aplicacao : string;
    Privilegio: string;
    idLotacao : string;
    Lotacao   : string;
    Sala      : string;
    Ramal     : string;
  end;//TUsuario
  
type
  TfrmPrincipal_20210412 = class(TForm)
    barServidor: TStatusBar;
    pnlCentro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Image3: TImage;
    lblVersao: TLabel;
    lblAmbiente: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    fUsuario : TUsuario;
  public
    property Usuario: TUsuario read fUsuario;
  end;

var
  frmPrincipal_20210412: TfrmPrincipal_20210412;

  x: string;

implementation

uses uDMConexao, PRG_utils, udmPesComplemento, uDMPessoal;

{$R *.dfm}

procedure TfrmPrincipal_20210412.FormCreate(Sender: TObject);
begin
{  with barServidor do
  begin
    Panels[2].Text := DMConexao.Usuario.Nome;
    Panels[3].Text := DMConexao.getNomeServidor;
  end;
}

//Application.OnException := DataInvalidaException;

//Application.helpfile := extractfilepath(Application.ExeName) + 'Pessoal.hlp';


Formato_Data_dd_MM_yyyy;


Height := 700;
Width := 1040;
//Left := -4;
//Top := -4;

  with dmPesComplemento do
  begin

{
//if (Nome_do_Usuario_Logado = '2238969') or (Nome_do_Usuario_Logado = '2261014') then
//begin
dmPessoal.cntPessoal.Connected := false;
dmPessoal.cntPessoal.ConnectionString := '';
dmPessoal.cntPessoal.ConnectionString :=
  'Provider=SQLOLEDB.1;Password=NhiD90oH;Persist Security Info=True;User ID=PESSOAL;Initial Catalog=dbPessoal;Data Source=pgsrv19';
//end;
}

    if Nome_do_Usuario_Logado = 'gesol' then
      begin

            x:= InputBox('Atenção','Entre com o nome do usuário','');
            SProc_DadosUsuarioLogado.Parameters.ParamValues['@Login'] := x;

      end else
      begin
         SProc_DadosUsuarioLogado.Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
      end; //if gesol


    SProc_DadosUsuarioLogado.Active := false;
 //   SProc_DadosUsuarioLogado.Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
    SProc_DadosUsuarioLogado.Parameters.ParamValues['@idAplicacao'] := '001';
    SProc_DadosUsuarioLogado.ExecProc;
    SProc_DadosUsuarioLogado.Active := true;


    if SProc_DadosUsuarioLogado.RecordCount = 0 then//if2
    begin
      ShowMessage('Você não está cadastrado para utilizar esta aplicação.');
      Application.Terminate;
      Abort;

      SProc_DadosUsuarioLogado.Active := false;
      SProc_DadosUsuarioLogado.Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
      SProc_DadosUsuarioLogado.Parameters.ParamValues['@idAplicacao'] := Null;
      SProc_DadosUsuarioLogado.ExecProc;
      SProc_DadosUsuarioLogado.Active := true;

      fUsuario.Nome := SProc_DadosUsuarioLogado.FieldValues['NOME'];
      fUsuario.CPF := SProc_DadosUsuarioLogado.FieldValues['CPF'];
      fUsuario.Matricula := SProc_DadosUsuarioLogado.FieldValues['MATRICULA'];
      fUsuario.Aplicacao := NullAsStringValue;
      fUsuario.Privilegio := 'PESQUISA';
      fUsuario.idLotacao := SProc_DadosUsuarioLogado.FieldValues['idLOTACAO'];
      fUsuario.Lotacao := SProc_DadosUsuarioLogado.FieldValues['LOTACAO'];
      fUsuario.Sala := SProc_DadosUsuarioLogado.FieldValues['SALA'];
      fUsuario.Ramal := SProc_DadosUsuarioLogado.FieldValues['RAMAL'];
    end//if2
    else
    begin
      fUsuario.Nome := SProc_DadosUsuarioLogado.FieldValues['NOME'];
      fUsuario.CPF := SProc_DadosUsuarioLogado.FieldValues['CPF'];
      fUsuario.Matricula := SProc_DadosUsuarioLogado.FieldValues['MATRICULA'];
      fUsuario.Aplicacao := SProc_DadosUsuarioLogado.FieldValues['APLICACAO'];
      fUsuario.Privilegio := SProc_DadosUsuarioLogado.FieldValues['PRIVILEGIO'];
      fUsuario.idLotacao := SProc_DadosUsuarioLogado.FieldValues['idLOTACAO'];
      fUsuario.Lotacao := SProc_DadosUsuarioLogado.FieldValues['LOTACAO'];
      fUsuario.Sala := SProc_DadosUsuarioLogado.FieldValues['SALA'];
      fUsuario.Ramal := SProc_DadosUsuarioLogado.FieldValues['RAMAL'];
    end;//if2

  end;//with
  
end;

procedure TfrmPrincipal_20210412.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;

//if not Assigned(fLogin) then//if0
//  begin
//  fLogin := TLogin.Create;

{  Caption := Caption + '    (Usuário: ' + trim(fLogin.Nome) +
             '  -  Matrícula: ' + fLogin.Matricula + ')';}

  Caption := Caption + '    (Usuário: ' + trim(Usuario.Nome) +
             '  -  Matrícula: ' + Usuario.Matricula + ')';

{  with StatusBar1 do
  begin
    Panels[0].Text := fLogin.Matricula;
    Panels[0].Width := 65;
    Panels[1].Text := fLogin.Nome;
    Panels[1].Width := 630;
    Panels[2].Text := fLogin.Privilegio;
    Panels[2].Width := 75;
  end;//with}

  with barServidor do
  begin
    Panels[0].Text := Usuario.Matricula;
    Panels[0].Width := 120;
    Panels[1].Width := 400;
    Panels[2].Width := 150;

//if (Nome_do_Usuario_Logado = '2238969') or (Nome_do_Usuario_Logado = '2261014') then
    Panels[1].Text := Usuario.Nome;
//     + '           [BASE DE DESENVOLVIMENTO (pgsrv19)]';
//else Panels[1].Text := Usuario.Nome;

    Panels[1].Width := 630;
    Panels[2].Text := Usuario.Privilegio;
    Panels[2].Width := 75;
  end;//with
//  end;//if0

  //  Versao       := Versao_do_Sistema;

  lblVersao.Caption := 'Versão: ' + Versao_do_Sistema;

  {with lblAmbiente do
  begin
   if dmPessoal.Base = 2
   then Caption := 'DESENVOLVIMENTO'
   else
   if dmPessoal.Base = 1
   then Caption := 'PRODUÇÃO';
  end;}

end;

initialization
begin
//
end;

finalization
begin
//
end;

end.

