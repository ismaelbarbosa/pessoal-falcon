unit ufPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellApi,
  XPMenu, ImgList, Menus, ComCtrls, ExtCtrls, StdCtrls, Dialogs, DBCtrls, Wininet,
  PRG_Utils, uTLogin, dxGDIPlusClasses, cxStyles, IniFiles;

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
  TfrmPrincipal = class(TForm)
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    mnPrincipal: TMainMenu;
    mnCadastro: TMenuItem;
    N1: TMenuItem;
    sbmnSair: TMenuItem;
    imglstPessoal: TImageList;
    mnAjuda: TMenuItem;
    sbmnSobrePessoal: TMenuItem;
    Pesquisa: TMenuItem;
    sbmnPesPessoal: TMenuItem;
    sbmnPesUtente: TMenuItem;
    sbmnBloquear: TMenuItem;
    sbmnPesqPensionista: TMenuItem;
    xpmnPessoal: TXPMenu;
    sbmnIncluir: TMenuItem;
    sbmnIncluirServidor: TMenuItem;
    sbmnIncluirUtente: TMenuItem;
    sbmnIncluirPensionista: TMenuItem;
    mnIntranet: TMenuItem;
    sbmnConsulta: TMenuItem;
    sbmnConsulta_Aniversario: TMenuItem;
    sbmnConsulta_Ferias: TMenuItem;
    sbmnConsulta_Procurador: TMenuItem;
    sbmnConsulta_Ramal: TMenuItem;
    N2: TMenuItem;
    sbmnConsulta_Geral: TMenuItem;
    N3: TMenuItem;
    sbmnConteudo: TMenuItem;
    mnRelatorios: TMenuItem;
    mnFerias: TMenuItem;
    mnMensais: TMenuItem;
    mnAnuais: TMenuItem;
    mn_Aviso_Previo: TMenuItem;
    mnFuncionarios: TMenuItem;
    mnAbono: TMenuItem;
    mnAbonosMensais: TMenuItem;
    sbmnFolhaFrequencia: TMenuItem;
    N4: TMenuItem;
    sbmnFuncGeral: TMenuItem;
    sbmnFuncGrauInstrucao: TMenuItem;
    mnAbonoGeral: TMenuItem;
    mnAposentados: TMenuItem;
    mnPensionistas: TMenuItem;
    mn_Aviso_Previo_2via: TMenuItem;
    mn_Aviso_Previo_Mensal: TMenuItem;
    mnAfastamento: TMenuItem;
    mnSubstProcurador: TMenuItem;
    sbmnSubstProcTotalDias: TMenuItem;
    mnSubstProcCalculo: TMenuItem;
    mnFeriasAfastamento: TMenuItem;
    mnRequisitados: TMenuItem;
    pnlCentro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Image3: TImage;
    lblVersao: TLabel;
    Cedidos1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    mnuDesligados: TMenuItem;
    lblAmbiente: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbmnSairClick(Sender: TObject);
    procedure sbmnSobrePessoalClick(Sender: TObject);
    procedure sbmnPesPessoalClick(Sender: TObject);
    procedure sbmnPesUtenteClick(Sender: TObject);
    procedure sbmnBloquearClick(Sender: TObject);
    procedure sbmnPesqPensionistaClick(Sender: TObject);
    procedure sbmnIncluirServidorClick(Sender: TObject);
    procedure sbmnIncluirUtenteClick(Sender: TObject);
    procedure sbmnIncluirPensionistaClick(Sender: TObject);
    procedure sbmnConsulta_AniversarioClick(Sender: TObject);
    procedure sbmnConsulta_FeriasClick(Sender: TObject);
    procedure sbmnConsulta_ProcuradorClick(Sender: TObject);
    procedure sbmnConsulta_RamalClick(Sender: TObject);
    procedure sbmnConsulta_GeralClick(Sender: TObject);
    procedure mnMensaisClick(Sender: TObject);
    procedure mnAnuaisClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mnAbonosMensaisClick(Sender: TObject);
    procedure sbmnFolhaFrequenciaClick(Sender: TObject);
    procedure sbmnFuncGeralClick(Sender: TObject);
    procedure sbmnFuncGrauInstrucaoClick(Sender: TObject);
    procedure mnAbonoGeralClick(Sender: TObject);
    procedure mnPensionistasClick(Sender: TObject);
    procedure mnAposentadosClick(Sender: TObject);
    procedure mn_Aviso_Previo_2viaClick(Sender: TObject);
    procedure mn_Aviso_Previo_MensalClick(Sender: TObject);
    procedure mnAfastamentoClick(Sender: TObject);
    procedure mnSubstProcCalculoClick(Sender: TObject);
    procedure sbmnSubstProcTotalDiasClick(Sender: TObject);
    procedure mnFeriasAfastamentoClick(Sender: TObject);
    procedure mnRequisitadosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Cedidos1Click(Sender: TObject);
    procedure mnuDesligadosClick(Sender: TObject);

    procedure SalvarSessaoAtual;

  private
    { Private declarations }
    fUsuario : TUsuario;

    Lotacao: string;
    Lot_Descricao: string;
    //Gera uma mensagem se o usuário entrar com uma data inválida em
//qualquer um dos campos DateTime
    procedure DataInvalidaException(Sender:TObject; E:Exception);

  public
    { Public declarations }
    fLogin: TLogin;

    property Usuario: TUsuario read fUsuario;

    procedure Fornecer_IdLotacao(idLotacao: string);
    function Valor_IdLotacao: string;
    procedure Fornecer_Lot_Descricao(Descricao: string);
    function Valor_Lot_Descricao: string;

    function GetInetFile(const fileURL, FileName: String): boolean;

    procedure CentralizarForm;

    procedure ExibirPnlCentro;
    procedure OcultarPnlCentro;

  end;

var
  frmPrincipal: TfrmPrincipal;
var
  x: string;

implementation

uses ufSobrePessoal, udmPessoal, ufIncluir, ufServidor,
     ufPesqPessoal, ufUtente, ufCritPesqUtente, ufPesqUtente,
     ufPesqPensionista, ufPessoal_Intranet, ufRpt101, ufRpt102,
     ufRpt103, ufRpt104, ufrmRptRel_Funcionarios, ufRpt201,
     ufConf_Ferias_Mensais, uqrFrequencia30, ufFolha_Frequencia,
     uqrptGrauInstrucao, ufAbonoGeral, uqrptRelPensionistas,
  uqrptRelAposentados, ufRelAfastamento, udmPes_Relatorios,
  uqrptRelSubstProcNumDias, DateUtils, ufRelSubstProcurador,
  ufRelFeriasAfastamentos, ufrmqrptRelSubstProcNumDias , udmPesComplemento,
  ufFolhaDePonto, ufCedidos, ufExercicioExterno, ufCadastroInicial,
  ufIncluirServidor, ufEditarServidor, ufPesquisarServidor;

  //, ufServidoresDesligados;


{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

Application.OnException := DataInvalidaException;

Application.helpfile :=
extractfilepath(Application.ExeName) + 'Pessoal.hlp';


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

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SalvarSessaoAtual;

  Application.HelpCommand(HELP_QUIT, 0);

  Application.Terminate;
  xpmnPessoal.Active := false;
end;

procedure TfrmPrincipal.sbmnSairClick(Sender: TObject);
begin

Close;

end;

procedure TfrmPrincipal.Fornecer_IdLotacao(idLotacao: string);
begin

Lotacao := idLotacao;

end;

function TfrmPrincipal.Valor_IdLotacao: string;
begin

result := Lotacao;

end;

procedure TfrmPrincipal.Fornecer_Lot_Descricao(Descricao: string);
begin

Lot_Descricao := Descricao;

end;

function TfrmPrincipal.Valor_Lot_Descricao: string;
begin

result := Lot_Descricao;

end;

procedure TfrmPrincipal.sbmnSobrePessoalClick(Sender: TObject);
begin

Application.CreateForm(TfrmSobrePessoal,frmSobrePessoal);
frmSobrePessoal.ShowModal;

end;

procedure TfrmPrincipal.sbmnPesPessoalClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmPesquisarServidor, frmPesquisarServidor);


    with dmPessoal do
      begin
      cntPessoal.Connected := true;
      end;//with
    //
    // A coxeção com o banco passou a ser feita através da function conectarBanco
    // na criação do datamodule dmPessoal

    frmPesquisarServidor.CriadoPor := ufPesquisarServidor.cpfrmPrincipal;
    frmPesquisarServidor.ShowModal;
  finally
    frmPesquisarServidor.Free;
  end;//try

end;

procedure TfrmPrincipal.sbmnPesUtenteClick(Sender: TObject);
begin

Application.CreateForm(TfrmPesqUtente, frmPesqUtente);
with dmPessoal do
  begin
  cntPessoal.Connected := true;
  end;//with

frmPesqUtente.ShowModal;

end;

procedure TfrmPrincipal.DataInvalidaException(Sender: TObject;
  E: Exception);
begin

if (E.ClassType.ClassName = 'EConvertError') then//if1
   begin
   if Sender is TDBEdit then//if2
     begin
     if (Sender as TDBEdit).Text <> '  /  /    ' then//if3
      begin
      ShowMessage('Data inválida.');
      end//if3
     else
       begin
       (Sender as TDBEdit).Field.Clear;
       end;
     end;//if2
   end//if1
else Application.ShowException(E);


end;

procedure TfrmPrincipal.sbmnBloquearClick(Sender: TObject);
begin

Application.Minimize;

end;

procedure TfrmPrincipal.sbmnPesqPensionistaClick(Sender: TObject);
begin

Application.CreateForm(TfrmPesqPensionista, frmPesqPensionista);
with dmPessoal do
  begin
  cntPessoal.Connected := true;
  end;//with
frmPesqPensionista.ShowModal;

end;

procedure TfrmPrincipal.sbmnIncluirServidorClick(Sender: TObject);
begin

  with dmPessoal do
    begin
    //cntPessoal.Connected := true;  // conectar no evento OnCreate do DataModule
    end;//with

  //Application.CreateForm(TfrmIncluir, frmIncluir);

  //Application.CreateForm(TfrmCadastroInicial, frmCadastroInicial);

  Application.CreateForm(TfrmIncluirServidor, frmIncluirServidor);

  //frmIncluir.CriadoPor := cpfrmPrincipal;

  {frmIncluir.TipoUsuario := tuServidor;
  frmIncluir.ShowModal;}


  {with frmCadastroInicial do
  begin
    CriadoPor := cpfrmPrincipal;
    TipoUsuario := tuServidor;
    ShowModal;
  end;}


  with frmIncluirServidor do
  begin
    ShowModal;
  end

end;

procedure TfrmPrincipal.sbmnIncluirUtenteClick(Sender: TObject);
begin

{Application.CreateForm(TfrmIncluir, frmIncluir);
with dmPessoal do
  begin
  cntPessoal.Connected := true;
  end;//with

frmIncluir.TipoUsuario := tuUtente;
frmIncluir.ShowModal;}

end;

procedure TfrmPrincipal.sbmnIncluirPensionistaClick(Sender: TObject);
begin

{Application.CreateForm(TfrmIncluir, frmIncluir);
with dmPessoal do
  begin
  cntPessoal.Connected := true;
  end;//with

frmIncluir.TipoUsuario := tuPensionista;
frmIncluir.ShowModal;}

end;

procedure TfrmPrincipal.sbmnConsulta_AniversarioClick(Sender: TObject);
begin

Application.CreateForm(TfrmPessoal_Intranet, frmPessoal_Intranet);
frmPessoal_Intranet.wbbrwsPessoal_Intranet.Navigate('http://intranet.pg.df.gov.br/aniversario_consulta2.asp');
frmPessoal_Intranet.ShowModal;

end;

procedure TfrmPrincipal.sbmnConsulta_FeriasClick(Sender: TObject);
begin

Application.CreateForm(TfrmPessoal_Intranet, frmPessoal_Intranet);
frmPessoal_Intranet.wbbrwsPessoal_Intranet.Navigate('http://intranet.pg.df.gov.br/ferias_consulta2.asp');
frmPessoal_Intranet.ShowModal;

end;

procedure TfrmPrincipal.sbmnConsulta_ProcuradorClick(Sender: TObject);
begin

Application.CreateForm(TfrmPessoal_Intranet, frmPessoal_Intranet);
frmPessoal_Intranet.wbbrwsPessoal_Intranet.Navigate('http://intranet.pg.df.gov.br/procurador_consulta2.asp');
frmPessoal_Intranet.ShowModal;

end;

procedure TfrmPrincipal.sbmnConsulta_RamalClick(Sender: TObject);
begin

Application.CreateForm(TfrmPessoal_Intranet, frmPessoal_Intranet);
frmPessoal_Intranet.wbbrwsPessoal_Intranet.Navigate('http://intranet.pg.df.gov.br/ramal_consulta2.asp');
frmPessoal_Intranet.ShowModal;

end;

procedure TfrmPrincipal.sbmnConsulta_GeralClick(Sender: TObject);
begin

Application.CreateForm(TfrmPessoal_Intranet, frmPessoal_Intranet);
frmPessoal_Intranet.wbbrwsPessoal_Intranet.Navigate('http://intranet.pg.df.gov.br/');
frmPessoal_Intranet.ShowModal;

end;

procedure TfrmPrincipal.mnMensaisClick(Sender: TObject);
begin

Application.CreateForm(TfrmConf_Ferias_Mensais, frmConf_Ferias_Mensais);
frmConf_Ferias_Mensais.ShowModal;

end;

procedure TfrmPrincipal.mnAnuaisClick(Sender: TObject);
begin

Application.CreateForm(TfrmRpt102, frmRpt102);
frmRpt102.ShowModal;

end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
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

  with StatusBar1 do
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

  with lblAmbiente do
  begin
   if dmPessoal.Base = 2
   then Caption := 'DESENVOLVIMENTO'
   else
   if dmPessoal.Base = 1
   then Caption := 'PRODUÇÃO';
  end;



end;

procedure TfrmPrincipal.mnAbonosMensaisClick(Sender: TObject);
begin

Application.CreateForm(TfrmRpt201, frmRpt201);
frmRpt201.ShowModal;

end;

procedure TfrmPrincipal.sbmnFolhaFrequenciaClick(Sender: TObject);
begin

//ShellExecute(Application.Handle, 'open', PChar('http://pgsrv26/jsecurity/rest/auth/geraPDF?ano=2005&idPessoal=02822&superlotacao=UTEC&mes=01'), nil, nil, SW_SHOW);


//GetInetFile('http://pgsrv26/jsecurity/rest/auth/geraPDF?ano=2005&idPessoal=02822&superlotacao=UTEC&mes=01', 'c:\Sistemas\folhadeponto.pdf');


Application.CreateForm(TfrmFolhaDePonto, frmFolhaDePonto);
frmFolhaDePonto.ShowModal;
abort;

GetInetFile('http://pgsrv26/jsecurity/rest/auth/geraPDF?ano=2005&idPessoal=02822&superlotacao=UTEC&mes=01', '\\prg_server3\Sistemas\Atualiza\folhadeponto.pdf');


//ShellExecute(Handle,'Open','iexplore.exe', PChar('http://pgsrv26/jsecurity/rest/auth/geraPDF?ano=2005&idPessoal=02822&superlotacao=UTEC&mes=01'),'C:\Program Files\Internet Explorer\iexplore.exe', SW_SHOWNORMAL);

//ShellExecute(Handle,'Open','firefox.exe','www.forum.imasters.com.br','C:\Arquivos de programas\Mozilla Firefox', SW_SHOWNORMAL);

//"C:\Program Files\Internet Explorer\iexplore.exe"


//Application.CreateForm(TfrmFolhaFrequencia,frmFolhaFrequencia);
//frmFolhaFrequencia.ShowModal;

//ShellExecute(0, 'OPEN', PChar('http://pgsrv26/jsecurity/rest/auth/geraPDF?ano=2005&idPessoal=02822&superlotacao=UTEC&mes=01'), nil, nil, SW_SHOWNORMAL);


end;

procedure TfrmPrincipal.sbmnFuncGeralClick(Sender: TObject);
begin

Application.CreateForm(TfrmRptRel_Funcionarios, frmRptRel_Funcionarios);
frmRptRel_Funcionarios.ShowModal;

end;

procedure TfrmPrincipal.sbmnFuncGrauInstrucaoClick(Sender: TObject);
begin

Application.CreateForm(TqrptGrauInstrucao, qrptGrauInstrucao);
dmPessoal.cntPessoal.Connected := true;
qrptGrauInstrucao.qryGrauInstrucao.Active := true;
//qrptGrauInstrucao.lblUsuario.Caption := fLogin.Nome;

qrptGrauInstrucao.lblUsuario.Caption := Usuario.Nome;

qrptGrauInstrucao.Preview;
qrptGrauInstrucao.Free;

end;

procedure TfrmPrincipal.mnAbonoGeralClick(Sender: TObject);
begin

Application.CreateForm(TfrmAbonoGeral, frmAbonoGeral);
frmAbonoGeral.ShowModal;

end;

procedure TfrmPrincipal.mnPensionistasClick(Sender: TObject);
begin

Application.CreateForm(TqrptRelPensionistas, qrptRelPensionistas);
with dmPessoal do
begin
  if cntPessoal.Connected = false then
  cntPessoal.Connected := true;//if
end;//with

with qrptRelPensionistas do
begin
  qrptRelPensionistas.qryPensionistas.Active := true;
  qrptRelPensionistas.Preview;
  qrptRelPensionistas.Free;
end;//with2

end;

procedure TfrmPrincipal.mnAposentadosClick(Sender: TObject);
begin

Application.CreateForm(TqrptRelAposentados, qrptRelAposentados);
with dmPessoal do
begin
  if cntPessoal.Connected = false then
  cntPessoal.Connected := true;//if
end;//with

with qrptRelAposentados do
begin
  qrptRelAposentados.qryAposentados.Active := true;
  qrptRelAposentados.Preview;
  qrptRelAposentados.Free;
end;//with2

end;

procedure TfrmPrincipal.mn_Aviso_Previo_2viaClick(Sender: TObject);
begin

Application.CreateForm(TfrmRpt104, frmRpt104);
with frmRpt104 do
begin
  Caption := Caption + ' [2ª via]';
  ShowModal;
end;//with

end;

procedure TfrmPrincipal.mn_Aviso_Previo_MensalClick(Sender: TObject);
begin

Application.CreateForm(TfrmRpt104, frmRpt104);
with frmRpt104 do
begin
  Label2.Visible := false;
  edtIdServidor.Visible := false;
  lblNomeServidor.Visible := false;
  Panel4.Visible := false;
  btnSelServidor.Visible := false;
  Caption := Caption + ' [Mensal]';

  ShowModal;
end;//with

end;

procedure TfrmPrincipal.mnAfastamentoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelAfastamento, frmRelAfastamento);
  with frmRelAfastamento do
  begin
    ShowModal;
  end;//with
end;

procedure TfrmPrincipal.mnSubstProcCalculoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelSubstProcurador, frmRelSubstProcurador);

  with frmRelSubstProcurador do
  begin
    ShowModal;
  end;//with
end;

procedure TfrmPrincipal.sbmnSubstProcTotalDiasClick(Sender: TObject);
begin
  if not Assigned(frmqrptRelSubstProcNumDias) then Application.CreateForm(TfrmqrptRelSubstProcNumDias, frmqrptRelSubstProcNumDias);

  frmqrptRelSubstProcNumDias.ShowModal;

{Abort;

  dmPessoal.qryDataHora.Active := false;
  dmPessoal.qryDataHora.Active := true;

  with dmPes_Relatorios do
  begin
    qryRelTotalizSubstProcNumDias.Active := false;

    qryRelTotalizSubstProcNumDias.Parameters.ParamValues['idservidor'] := fLogin.Matricula;
    qryRelTotalizSubstProcNumDias.Parameters.ParamValues['nome'] := 'NumDeDias';
    qryRelTotalizSubstProcNumDias.Parameters.ParamValues['inicio'] :=
        dmPessoal.qryDataHora.FieldValues['datahora'].asString;
    qryRelTotalizSubstProcNumDias.Parameters.ParamValues['termino'] :=
        dmPessoal.qryDataHora.FieldValues['datahora'].asString;
    qryRelTotalizSubstProcNumDias.Parameters.ParamValues['ano'] :=
        YearOf(dmPessoal.qryDataHora.FieldValues['datahora']);
    qryRelTotalizSubstProcNumDias.Parameters.ParamValues['nome2'] := 'NumDeDias';

    qryRelTotalizSubstProcNumDias.Active := true;

    if not Assigned(qrptRelSubstProcNumDias) then//if1
    begin
      Application.CreateForm(TqrptRelSubstProcNumDias, qrptRelSubstProcNumDias);
      qrptRelSubstProcNumDias.Prepare;
    end;//if1
  end;

  qrptRelSubstProcNumDias.Preview;  }
end;

procedure TfrmPrincipal.mnFeriasAfastamentoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelFeriasAfastamentos, frmRelFeriasAfastamentos);
  with frmRelFeriasAfastamentos do
  begin
    ShowModal;
  end;//with
end;

procedure TfrmPrincipal.mnRequisitadosClick(Sender: TObject);
var
  nomePlanilha, caminhoPlanilha: string;

begin
  with frmServidor do//with1
  begin
   if CriaMensagem('Será criada uma planilha do Excel na pasta "RELATORIOS",' + #13 + #10 + 'que se encontra no interior da pasta de ' + //if1
                    'arquivos' + #13 + #10 + 'da GERENCIA DE GESTAO DE PESSOAS.' + #13 + #10 + 'Deseja continuar?', 'RELATÓRIO DE REQUISITADOS',
                    mtConfirmation, [mbYes, mbNo], 256) = 'SIM' then
   begin
    dmPes_Relatorios.sproc_CriaRelRequisitadosExcel.ExecProc;
    nomePlanilha := dmPes_Relatorios.sproc_CriaRelRequisitadosExcel.Parameters.ParamValues['@nomePlanilha'];
    caminhoPlanilha := dmPes_Relatorios.sproc_CriaRelRequisitadosExcel.Parameters.ParamValues['@caminhoPlanilha']; 
//  Delay(4000);
    if dmPes_Relatorios.sproc_CriaRelRequisitadosExcel.Parameters.ParamValues['@RETURN_VALUE'] = 0 then//if2
    begin
      if CriaMensagem('A planilha "' + nomePlanilha + '" foi criada com êxito.' + #13 + #10 + 'Deseja abri-la?', //if3
                        'PLANILHA CRIADA COM ÊXITO', mtInformation, [mbYes, mbNo], 256) = 'SIM' then
      begin
        ShellExecute(0, 'open', pchar(caminhoPlanilha + nomePlanilha), nil, nil, SW_SHOWNORMAL) ;
      end;//if3
    end//if2
    else
    begin
      CriaMensagem('Houve um erro na criação do relatório.' + #13 + #10 + 'Caso o problema persista entre em contato com o responsável pelo sistema.',
                    'ERRO NA CRIAÇÃO DO RELATÓRIO', mtError, [mbOK], 256);
    end;//if2
   end//if1;
  end;//with1
end;

function TfrmPrincipal.GetInetFile(const fileURL,
  FileName: String): boolean;
             const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array[1..BufferSize] of Byte;
  BufferLen: DWORD;
  f: File;
  sAppName: string;
begin
  Result:=False;
  sAppName := ExtractFileName(Application.ExeName);
  hSession := InternetOpen(
    PChar(sAppName),
    INTERNET_OPEN_TYPE_PRECONFIG,
    nil, nil, 0
  );
  try
    hURL := InternetOpenURL(hSession, PChar(fileURL), nil, 0, 0, 0);
    try
      AssignFile(f, FileName);
      Rewrite(f,1);
      repeat
        InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen);
        BlockWrite(f, Buffer, BufferLen)
      until BufferLen = 0;
      CloseFile(f);
      Result:=True;
    finally
      InternetCloseHandle(hURL)
    end
  finally
    InternetCloseHandle(hSession)
  end
end;


procedure TfrmPrincipal.CentralizarForm;
var
  ScreenNo: integer;
begin

  ScreenNo := 0;

  Self.Top := Screen.Monitors[ScreenNo].Top + ((Screen.Monitors[ScreenNo].Height div 2) - (Self.Height div 2));
  Self.Left := Screen.Monitors[ScreenNo].Left + ((Screen.Monitors[ScreenNo].Width div 2) - (Self.Width div 2));

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  CentralizarForm;

end;

procedure TfrmPrincipal.ExibirPnlCentro;
begin
  pnlCentro.Visible := true;
end;

procedure TfrmPrincipal.OcultarPnlCentro;
begin
  pnlCentro.Visible := false;
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  with pnlCentro do
  begin
    Top := ((frmPrincipal.ClientHeight div 2 -
    Height div 2) - (StatusBar1.Height)) + 10;

    Left := frmPrincipal.ClientWidth div 2 -
    Width div 2;
  end;
end;

procedure TfrmPrincipal.Cedidos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmExercicioExterno, frmExercicioExterno);
  frmExercicioExterno.ShowModal;
  frmExercicioExterno.Release;
  frmExercicioExterno := nil;
end;

procedure TfrmPrincipal.mnuDesligadosClick(Sender: TObject);
begin
{  Application.CreateForm(TfrmServidoresDesligados, frmServidoresDesligados);
  frmServidoresDesligados.ShowModal;
  frmServidoresDesligados.Release;
  frmServidoresDesligados := nil;}
end;

procedure TfrmPrincipal.SalvarSessaoAtual;
var
  IniFile  : TIniFile;
  LstUser, Caminho, wArq: string;
begin
  Caminho  := '\\Prg_Server3\Sistemas\Programas\UserPrefs\';
//  wArq := 'Sessao'+frmPrincipal.Sessao.idUsuario+'.INI';
  wArq := 'Sessao'+frmPrincipal.Usuario.CPF+'.INI';

  IniFile := TIniFile.Create(Caminho+wArq);

  //LstUser := frmPrincipal.Sessao.Nome;

  LstUser := frmPrincipal.Usuario.Nome;

  IniFile.WriteString('User','Nome',LstUser);
  IniFile.WriteDate('User', 'Data', Date);

  {
  IniFile.WriteString('frmCritPesq','edtProcesso',edtProcesso.Text);
  IniFile.WriteString('frmCritPesq','edtidAS',edtidAS.Text);
  IniFile.WriteString('frmCritPesq','edtidCE',edtidCE.Text);
  IniFile.WriteString('frmCritPesq','edtProtocoloSAJ',edtProtocoloSAJ.Text);
  IniFile.WriteString('frmCritPesq','edtCertidao',edtCertidao.Text);
  IniFile.WriteString('frmCritPesq','edtCDA',edtCDA.Text);
  IniFile.WriteString('frmCritPesq','edtParte',edtParte.Text);
  IniFile.WriteString('frmCritPesq','edtCPF',edtCPF.Text);
  }

  IniFile.Free;

end;

initialization
begin

end;

finalization
begin
end;


end.
