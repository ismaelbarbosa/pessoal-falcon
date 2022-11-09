{
  Sistema: Pessoal
  Unit: ufPrincipal
  Descrição: formulário principal do Sistema Pessoal

  Data        Log de alterações
  22/12/2021  XYZ


  A fazer:
  1 - retirar todos os blocos try except quando se criar formulários

}

unit ufPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons, ComCtrls, dxGDIPlusClasses, ExtCtrls,
  cxStyles, Wininet;

type
  TSessao = record
    Banco,
    idUsuario,
    idPessoal,
    Nome,
    Matricula,
    idLotacao,
    Lotacao,
    SuperLotacao,
    idAplicacao,
    Aplicacao,
    idPrivilegio,
    Privilegio,
    Versao_Sistema_Operacional,
    Versao : string;
    //constructor Create;
    //destructor Destroy; Reintroduce;
end;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    mnuPesquisar: TMenuItem;
    Sair1: TMenuItem;
    mnuIncluirServidor: TMenuItem;
    mnuExercicioExterno: TMenuItem;
    pnlCentro: TPanel;
    lblVersao: TLabel;
    StyleRepsitory: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    barStatus: TStatusBar;
    Consultas1: TMenuItem;
    Ocupantesdecargosemcomisso1: TMenuItem;
    Registrosnabasededados1: TMenuItem;
    mnuTabelaLotacoes: TMenuItem;
    mnuFerias: TMenuItem;
    mnuAbonoAnual: TMenuItem;
    Relatrios1: TMenuItem;
    Folhadefrequncia1: TMenuItem;
    mnuAfastamentos: TMenuItem;
    mnuSubstituicoes: TMenuItem;
    Relaodepessoal1: TMenuItem;
    Nomesforadolivro1: TMenuItem;
    mnuFeriadosEAfastamentos: TMenuItem;
    mnuGerenciamentoDeCargos: TMenuItem;
    Panel1: TPanel;
    pnlPerfilUsuario: TPanel;
    lblNome: TLabel;
    lblLotacao: TLabel;
    lblPrivilegio: TLabel;
    lblIP: TLabel;
    lblID: TLabel;
    lblIdLotacao: TLabel;
    mnuCargos: TMenuItem;
    mnuVagas: TMenuItem;
    mnuServidores: TMenuItem;
    mnuSubstProcuradoresTotal: TMenuItem;
    mnuSubstProcuradoresCalculo: TMenuItem;
    mnuAlterarMatriculasestagirios: TMenuItem;
    DesligarServidorEstagirio1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    mnuDadosdoEstagio: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mnuRelatorioPersonalizado: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    mnuRelatorioAfastamentos: TMenuItem;
    mnuRelAbonoMensal: TMenuItem;
    mnuRelAbonoGeral: TMenuItem;
    Image1: TImage;
    pnlOld: TPanel;
    Label3: TLabel;
    Image3: TImage;
    Image2: TImage;
    N8: TMenuItem;
    Painelestagirios1: TMenuItem;
    abeladefunes1: TMenuItem;
    Manutenodetabelas1: TMenuItem;
    mnuFeriasAfastamentosProcuradores: TMenuItem;
    Frias1: TMenuItem;
    Friasanuais1: TMenuItem;
    Desenvolvimento1: TMenuItem;
    AtualizarIDdosupervisordeestgio1: TMenuItem;
    AtualizarIDdaespecialidade1: TMenuItem;
    mnuPromocaoProcuradores: TMenuItem;
    N1: TMenuItem;
    Operaesrealizadasnabasededadosdepessoal1: TMenuItem;
    Especialidades1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure mnuIncluirServidorClick(Sender: TObject);
    procedure mnuPesquisarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Ocupantesdecargosemcomisso1Click(Sender: TObject);
    procedure Registrosnabasededados1Click(Sender: TObject);
    procedure mnuTabelaLotacoesClick(Sender: TObject);
    procedure mnuFeriasClick(Sender: TObject);
    procedure mnuAbonoAnualClick(Sender: TObject);
    procedure Folhadefrequncia1Click(Sender: TObject);
    procedure mnuAfastamentosClick(Sender: TObject);
    procedure mnuSubstituicoesClick(Sender: TObject);
    procedure Relaodepessoal1Click(Sender: TObject);
    procedure Nomesforadolivro1Click(Sender: TObject);
    procedure mnuFeriadosEAfastamentosClick(Sender: TObject);
    procedure mnuCargosClick(Sender: TObject);
    procedure mnuVagasClick(Sender: TObject);
    procedure mnuServidoresClick(Sender: TObject);
    procedure mnuSubstProcuradoresCalculoClick(Sender: TObject);
    procedure mnuSubstProcuradoresTotalClick(Sender: TObject);
    procedure mnuAlterarMatriculasestagiriosClick(Sender: TObject);
    procedure DesligarServidorEstagirio1Click(Sender: TObject);
    procedure mnuDadosdoEstagioClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mnuRelatorioPersonalizadoClick(Sender: TObject);
    procedure mnuRelatorioAfastamentosClick(Sender: TObject);
    procedure mnuRelAbonoMensalClick(Sender: TObject);
    procedure mnuRelAbonoGeralClick(Sender: TObject);
    procedure Admissodeestagirios1Click(Sender: TObject);
    procedure Desligmentodeestagirios1Click(Sender: TObject);
    procedure Painelestagirios1Click(Sender: TObject);
    procedure abeladefunes1Click(Sender: TObject);
    procedure mnuFeriasAfastamentosProcuradoresClick(Sender: TObject);
    procedure Frias1Click(Sender: TObject);
    procedure Friasanuais1Click(Sender: TObject);
    procedure AtualizarIDdosupervisordeestgio1Click(Sender: TObject);
    procedure mnuPromocaoProcuradoresClick(Sender: TObject);
    procedure Operaesrealizadasnabasededadosdepessoal1Click(
      Sender: TObject);
    procedure Especialidades1Click(Sender: TObject);
  private
    //fUsuario : TUsuario;
  public
    Sessao: TSessao;
    //property Usuario: TUsuario read fUsuario;
    function GetInetFile(const fileURL, FileName: String): boolean;
    function setarUsuario20211222:boolean;
    procedure ExibeMensagemInicial;
    function RetornaUltimaMD: string;
    function ExisteUsuarioEArquivoMD(pIdUsuario, pNomeArquivo: string): boolean;
    function IncluirUsuarioEArquivoMD
    (pIdUsuario, pNomeArquivo: string): boolean;
    function UsuarioQuerExibir(pIdUsuario, pNomeArquivo: string): boolean;

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uDMConexao, ufCreateServidor, ufReadServidor, uDMPessoal, PRG_utils,
  ufOcupantesCargosEmComissao, ufRegistrosBanco, ufUpdateTbLotacao,
  ufUpdateFeriasGeral, ufUpdateAbonoAnualGeral, ufFolhaDePonto,
  ufUpdateAfastamento, ufUpdateAfastamentoGeral, ufUpdateSubstituicaoGeral,
  ufRptRelacaoPessoal, ufRptNomesForaDoLivro, ufUpdateFeriados,
  ufUpdateCargos, uPesFuncoes, ufGestaoCargos, ufGestaoVagas,
  ufGestaoCargoServidor, ufRelSubstituicaoProcurador,
  ufRelSubstituicaoProcuradorNumDias,
  ufReadEstagiarios, ufDesligarServidorEstagiario, ufUpdateEstagioGeral,
  ufMensagemHTML, ufLogs, ufRelatorioPersonalizado, ufRelAfastamento,
  ufRelAbonoGeral, ufRelAbonoMensal, ufRptAdmissaoEstagiarios,
  ufRptDesligamentoEstagiarios, ufPainelEstagiarios, ufUpdateTbFuncao,
  ufRelFeriasAfastamentosProcuradores, ufRptFeriasMensais,
  ufRptFeriasAnuais, ufAtualizarIDSupervisorEstagio, ufPromocaoProcurador,
  ufReadRegistrosLog, ufUpdateTbEspecialidade;

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
//  WindowState := wsMaximized;

  KeyPreview := true;
//Application.OnException := DataInvalidaException;


  Formato_Data_dd_MM_yyyy;


  Height := 700;
  Width := 1040;
  //Left := -4;
  //Top := -4;

  with DMConexao do
  begin

/// 22/12/2021


  with Sessao do
  begin
    Banco        := DMConexao.conPessoal.DefaultDatabase+'.dbo.';
    idUsuario    := DMConexao.getCPFUsuario;            // fLogin.idUsuario;

    //idUsuario := '04075687198';

    Nome         := DMConexao.getNomeUsuario;           // fLogin.Nome;
    Matricula    := DMConexao.getMatriculaUsuario;      // fLogin.Matricula;
    idLotacao    := DMConexao.getidLotacao;             // fLogin.idLotacao;
    Lotacao      := DMConexao.getLotacao;               // fLogin.Lotacao;
    SuperLotacao := DMConexao.getSuperLotacao;
    idPrivilegio := DMConexao.getIdPrivilegioUsuario;   // fLogin.idPrivilegio;
    Privilegio   := DMConexao.getPrivilegioUsuario;     // fLogin.Privilegio;
    Versao       := Versao_do_Sistema;
//    TipoUsuario  := DMConexao.getTipoUsuario;


//ShowMessage(Nome + ' ' + idUsuario + ' ' + Matricula);

    lblNome.Caption       := Nome + ' (' + idUsuario + ')';
    lblIdLotacao.Caption  := idLotacao;
    lblLotacao.Caption    := {Trim(idLotacao) + ' - ' +} Lotacao;

    lblPrivilegio.Caption := Privilegio;
    lblIP.Caption         := 'Endereço IP: ' + GetIP;
    lblID.Caption         := DMConexao.getIDUsuario;

    barStatus.Panels[1].Text := 'BASE 1 - PRODUÇÃO';
  end;
  end;
  lblVersao.Caption := 'Versão: ' + Sessao.Versao;

  with barStatus do
  begin
   if DMConexao.BASE = '2'
   then Panels[0].Text := 'BASE 2 - DESENVOLVIMENTO'
   else
   if DMConexao.Base = '1'
   then Panels[0].Text := 'BASE 1 - PRODUÇÃO';

   Panels[1].Text := DateToStr(Now) ;
  end;

  //ExibeMensagemInicial;

  {
  if Length(lblNome.Caption) > Length(lblLotacao.Caption) then
  pnlPerfilUsuario.Width := Length(lblNome.Caption) * 7 + 50
  else pnlPerfilUsuario.Width := Length(lblLotacao.Caption) * 7 + 50;
  }
  //ShowMessage(frmPrincipal.Sessao.SuperLotacao);

/// 22/12/2021

  if diferencaEntreDatas(RetornaData(1), '24/02/2022') > 90
  then mnuAlterarMatriculasestagirios.Visible := false;

end;

procedure TfrmPrincipal.mnuIncluirServidorClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCreateServidor, frmCreateServidor);
  frmCreateServidor.setarOperacao(1); // Inclusão de novo registro
  frmCreateServidor.ShowModal;
  frmCreateServidor.Release;
  frmCreateServidor := nil;
end;

procedure TfrmPrincipal.mnuPesquisarClick(Sender: TObject);
begin
  Application.CreateForm(TfrmReadServidor, frmReadServidor);
  frmReadServidor.ShowModal;
  frmReadServidor.Release;
  frmReadServidor := nil;
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  with pnlCentro do
  begin
    Top := ((frmPrincipal.ClientHeight div 2 -
    Height div 2)) + 10;

    Left := frmPrincipal.ClientWidth div 2 -
    Width div 2;
  end;

end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
var HOST: String;
begin
  WindowState := wsMinimized;
  WindowState := wsMaximized;

//if not Assigned(fLogin) then//if0
//  begin
//  fLogin := TLogin.Create;
{  Caption := Caption + '    (Usuário: ' + trim(fLogin.Nome) +
             '  -  Matrícula: ' + fLogin.Matricula + ')';}

  Caption := Caption + '    (Usuário: ' + trim(DMConexao.getNomeUsuario) +
             '  -  Matrícula: ' + DMConexao.getMatriculaUsuario + ')';

  {
  with BarStatus do
  begin
    Panels[0].Text := fLogin.Matricula;
    Panels[0].Width := 65;
    Panels[1].Text := fLogin.Nome;
    Panels[1].Width := 630;
    Panels[2].Text := fLogin.Privilegio;
    Panels[2].Width := 75;
  end;//with
  }

//  end;//if0

  //  Versao       := Versao_do_Sistema;

  lblVersao.Caption := 'Versão: ' + Versao_do_Sistema;

   if DMConexao.getBaseDados = '2'
   then HOST := 'DESENVOLVIMENTO' + ' (' + DMConexao.getNomeServidor + ')'
   else
   if DMConexao.getBaseDados = '1'
   then HOST := 'PRODUÇÃO';

   barStatus.Panels[0].Text := HOST;

   //ShowMessage(fUsuario.Nome);

   //lblNome.Caption       := fUsuario.Nome + ' (' + fUsuario.CPF + ')';


  // ExibeMensagemInicial;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Ocupantesdecargosemcomisso1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmOcupantesCargosEmComissao, frmOcupantesCargosEmComissao);
  frmOcupantesCargosEmComissao.ShowModal;
  frmOcupantesCargosEmComissao.Release;
  frmOcupantesCargosEmComissao := nil;
end;

procedure TfrmPrincipal.Registrosnabasededados1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRegistrosBanco, frmRegistrosBanco);
  frmRegistrosBanco.ShowModal;
  frmRegistrosBanco.Release;
  frmRegistrosBanco := nil;

end;

procedure TfrmPrincipal.mnuTabelaLotacoesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateTbLotacao, frmUpdateTbLotacao);
  frmUpdateTbLotacao.setarOperacao(3); // Consulta
  frmUpdateTbLotacao.ShowModal;
  frmUpdateTbLotacao.Release;
  frmUpdateTbLotacao := nil;
end;

procedure TfrmPrincipal.mnuFeriasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFeriasGeral, frmUpdateFeriasGeral);
  frmUpdateFeriasGeral.ShowModal;
  frmUpdateFeriasGeral.Release;
  frmUpdateFeriasGeral := nil;
end;

procedure TfrmPrincipal.mnuAbonoAnualClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAbonoAnualGeral, frmUpdateAbonoAnualGeral);
  frmUpdateAbonoAnualGeral.ShowModal;
  frmUpdateAbonoAnualGeral.Release;
  frmUpdateAbonoAnualGeral := nil;
end;

procedure TfrmPrincipal.Folhadefrequncia1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmFolhaDePonto, frmFolhaDePonto);
  frmFolhaDePonto.ShowModal;
  abort;

  GetInetFile('http://pgsrv26/jsecurity/rest/auth/geraPDF?ano=2005&idPessoal=02822&superlotacao=UTEC&mes=01', '\\prg_server3\Sistemas\Atualiza\folhadeponto.pdf');

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

procedure TfrmPrincipal.mnuAfastamentosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateAfastamentoGeral, frmUpdateAfastamentoGeral);
  frmUpdateAfastamentoGeral.ShowModal;
  frmUpdateAfastamentoGeral.Release;
  frmUpdateAfastamentoGeral := nil;
end;

procedure TfrmPrincipal.mnuSubstituicoesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateSubstituicaoGeral, frmUpdateSubstituicaoGeral);
  frmUpdateSubstituicaoGeral.ShowModal;
  frmUpdateSubstituicaoGeral.Release;
  frmUpdateSubstituicaoGeral := nil;
end;

procedure TfrmPrincipal.Relaodepessoal1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRptRelacaoPessoal, frmRptRelacaoPessoal);
  frmRptRelacaoPessoal.ShowModal;
  frmRptRelacaoPessoal.Release;
  frmRptRelacaoPessoal := nil; 
end;

procedure TfrmPrincipal.Nomesforadolivro1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRptNomesForaDoLivro, frmRptNomesForaDoLivro);
  frmRptNomesForaDoLivro.ShowModal;
  frmRptNomesForaDoLivro.Release;
  frmRptNomesForaDoLivro := nil;
end;

procedure TfrmPrincipal.mnuFeriadosEAfastamentosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateFeriados, frmUpdateFeriados);
  frmUpdateFeriados.ShowModal;
  frmUpdateFeriados.Release;
  frmUpdateFeriados := nil;
end;

function TfrmPrincipal.setarUsuario20211222: boolean;
begin

// Esta função foi criada apenas para histórico pois foi substituída pela
// validação utilizada no sistema judicial


{    with DMConexao.strDadosUsuarioLogado do
    begin
      Active := false;
      Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
      Parameters.ParamValues['@idAplicacao'] := '001';
      ExecProc;
      Active := true;

      if RecordCount = 0 then//if2
      begin
        ShowMessage('Você não está cadastrado para utilizar esta aplicação.');
        Application.Terminate;
        Abort;

        Active := false;
        Parameters.ParamValues['@Login'] := Nome_do_Usuario_Logado;
        Parameters.ParamValues['@idAplicacao'] := Null;
        ExecProc;
        Active := true;

        fUsuario.Nome := FieldValues['NOME'];
        fUsuario.CPF := FieldValues['CPF'];
        fUsuario.Matricula := FieldValues['MATRICULA'];
        fUsuario.Aplicacao := NullAsStringValue;
        fUsuario.Privilegio := 'PESQUISA';
        fUsuario.idLotacao := FieldValues['idLOTACAO'];
        fUsuario.Lotacao := FieldValues['LOTACAO'];
        fUsuario.Sala := FieldValues['SALA'];
        fUsuario.Ramal := FieldValues['RAMAL'];
      end//if2
      else
      begin
        fUsuario.Nome := FieldValues['NOME'];
        fUsuario.CPF := FieldValues['CPF'];
        fUsuario.Matricula := FieldValues['MATRICULA'];
        fUsuario.Aplicacao := FieldValues['APLICACAO'];
        fUsuario.Privilegio := FieldValues['PRIVILEGIO'];
        fUsuario.idLotacao := FieldValues['idLOTACAO'];
        fUsuario.Lotacao := FieldValues['LOTACAO'];
        fUsuario.Sala := FieldValues['SALA'];
        fUsuario.Ramal := FieldValues['RAMAL'];
      end;//if2

    end;

}

  Result := true;

end;

procedure TfrmPrincipal.mnuCargosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmGestaoCargos, frmGestaoCargos);
//  frmGestaoCargos.setarOperacaoCargo(3);
  frmGestaoCargos.ShowModal;
  frmGestaoCargos.Release;
  frmGestaoCargos := nil;
end;

procedure TfrmPrincipal.mnuVagasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmGestaoVagas, frmGestaoVagas);
//  frmGestaoCargos.setarOperacaoCargo(3);
  frmGestaoVagas.ShowModal;
  frmGestaoVagas.Release;
  frmGestaoVagas := nil;
end;

procedure TfrmPrincipal.mnuServidoresClick(Sender: TObject);
begin
  Application.CreateForm(TfrmGestaoCargoServidor, frmGestaoCargoServidor);
//  frmGestaoCargos.setarOperacaoCargo(3);
  frmGestaoCargoServidor.ShowModal;
  frmGestaoCargoServidor.Release;
  frmGestaoCargoServidor := nil;

end;

procedure TfrmPrincipal.mnuSubstProcuradoresCalculoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelSubstituicaoProcurador, frmRelSubstituicaoProcurador);
  frmRelSubstituicaoProcurador.ShowModal;
end;

procedure TfrmPrincipal.mnuSubstProcuradoresTotalClick(Sender: TObject);
begin
  if not Assigned(frmRelSubstituicaoProcuradorNumDias) then
  Application.CreateForm(TfrmRelSubstituicaoProcuradorNumDias, frmRelSubstituicaoProcuradorNumDias);

  frmRelSubstituicaoProcuradorNumDias.ShowModal;

end;

procedure TfrmPrincipal.mnuAlterarMatriculasestagiriosClick(
  Sender: TObject);
begin
  Application.CreateForm(TfrmReadEstagiarios, frmReadEstagiarios);
  frmReadEstagiarios.ShowModal;
  frmReadEstagiarios.Release;
  frmReadEstagiarios := nil;
end;

procedure TfrmPrincipal.DesligarServidorEstagirio1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmDesligarServidorEstagiario, frmDesligarServidorEstagiario);
  frmDesligarServidorEstagiario.ShowModal;
  frmDesligarServidorEstagiario.Release;
  frmDesligarServidorEstagiario := nil;
end;

procedure TfrmPrincipal.mnuDadosdoEstagioClick(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateEstagioGeral, frmUpdateEstagioGeral);
  frmUpdateEstagioGeral.ShowModal;
  frmUpdateEstagioGeral.Release;
  frmUpdateEstagioGeral := nil;
end;

procedure TfrmPrincipal.ExibeMensagemInicial;
var APP_PATH, wMaquina, wUsuario, wCaminho, wArquivo, wFile, wExibe: string;

begin
  wMaquina := NomeComputador;

  if (wMaquina = 'T-NUSIS03-VM')
  then
   APP_PATH := 'C:\Projetos\PGDF\Delphi\Judicial'
  else
   APP_PATH := '\\prg_server3\Sistemas\Judicial';

  wUsuario := Sessao.idUsuario;

  wCaminho := APP_PATH +  '\Mensagem\';

  //ShowMessage(wCaminho);

  wArquivo := RetornaUltimaMD;
  wFile := wCaminho + wArquivo;

  //ShowMessage(wFile);

  if FileExists(wCaminho + wArquivo)
  then
  begin

    //ShowMessage('Existe');
    {
    if not ExisteUsuarioMD(wUsuario) // Incluir Usuário e setar wExibe para 1
    then
    begin
      ShowMessage('Entrei no 1º bloco');
      if IncluirUsuarioMD(frmPrincipal.Sessao.idUsuario, wArquivo)
      then
        wExibe := '1'
      else
      begin
        ShowMessage('Ocorreu um erro na exibição da mensagem diária. Por gentileza, informe ao suporte técnico.');
        wExibe := '0';
      end
    end;
    }

    if not ExisteUsuarioEArquivoMD(wUsuario, wArquivo)
    then
    begin
      //ShowMessage('Entrei no 2º bloco');
      if IncluirUsuarioEArquivoMD(wUsuario, wArquivo)
      then
      begin
        wExibe := '1';
        //ShowMessage('Exibe setado para 1');
      end
      else
      begin
        ShowMessage('Ocorreu um erro na exibição da mensagem diária. Por gentileza, informe ao suporte técnico.');
        wExibe := '0';
      end
    end;

    if UsuarioQuerExibir(wUsuario, wArquivo) then
    begin
      wExibe := '1';
      //ShowMessage('Usuário quer Exibir');
    end
    else wExibe := '0';

    if wExibe = '1' then
    begin
      {if not Assigned(frmMensagem) then
      begin
        frmMensagem := TfrmMensagem.Create(Self);
        frmMensagem.mmoMensage.Lines.LoadFromFile(wCaminho + wArquivo);
        frmMensagem.StatusBar1.Panels[0].Text := wArquivo;

        frmMensagem.ShowModal;
        frmMensagem.Free;
        frmMensagem := Nil;
      end;
      }

      if not Assigned(frmMensagemHTML) then
      begin
        frmMensagemHTML := TfrmMensagemHTML.Create(Self);
        with frmMensagemHTML do
        begin
          WebBrowser1.Navigate(wFile);
          StatusBar1.Panels[0].Text := wArquivo;
          //WindowState := wsMaximized;
          Position := poScreenCenter;
          ShowModal;
          Free;
          frmMensagemHTML := Nil;
        end;
      end;
    end;
  end
  //else ShowMessage('Não existe');

end;

function TfrmPrincipal.RetornaUltimaMD: string;
begin
  try
   with dmPessoal.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;
     SQL.Text := 'Select NomeArquivo ' + ' from tbUltimaMD';
     Open;
     if RecordCount > 0 then
        Result := FieldValues['NomeArquivo']
     else Result := '';
   end;
  finally
   dmPessoal.qryExecSQL.Close;
  end;
end;

function TfrmPrincipal.ExisteUsuarioEArquivoMD(pIdUsuario,
  pNomeArquivo: string): boolean;
begin
  try
   with dmPessoal.qryExecSQL do
   begin
     Connection := DMConexao.conPessoal;

     SQL.Text := 'Set Dateformat dmy '
     + ' Select idUsuario '
     + ' from tbMensagemDiaria'
     + ' where idUsuario = '      + QuotedStr(pIdUsuario)
     + ' and NomeArquivo = '      + QuotedStr(pNomeArquivo);

     Open;

     if RecordCount = 0 then
       Result := false
     else
       Result := true;
   end;
  finally
   dmPessoal.qryExecSQL.Close;
  end;
end;

function TfrmPrincipal.IncluirUsuarioEArquivoMD(pIdUsuario,
  pNomeArquivo: string): boolean;
begin
  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := DMConexao.conPessoal;
      SQL.Text :=
          'Set dateformat dmy'
          + ' Insert into '               + frmPrincipal.Sessao.Banco
          + 'tbMensagemDiaria values ('   + QuotedStr(pIdUsuario)
          + ', '                          + QuotedStr(pNomeArquivo)
          + ', '                          + QuotedStr('1')
          + ')';

      //ShowMessage(sql.Text);

      //Open;
      ExecSQL;
    end;
    Result := true;
  except
    Result := false;
  end;
end;

function TfrmPrincipal.UsuarioQuerExibir(pIdUsuario,
  pNomeArquivo: string): boolean;
begin
   try
     with dmPessoal.qryExecSQL do
     begin
       Connection := DMConexao.conPessoal;

       SQL.Text := 'Select idUsuario, Exibe '
       + ' from tbMensagemDiaria'
       + ' where idUsuario = '    + QuotedStr(pIdUsuario)
       + ' and NomeArquivo = '    + QuotedStr(pNomeArquivo);

       Open;

       if FieldByName('Exibe').AsString = '0' then
       begin
         Result := false;
         //ShowMessage('Não');
       end
       else
       begin
         Result := true;
         //ShowMessage('SIM');
       end
     end;                  
   finally
     dmPessoal.qryExecSQL.Close;
   end;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    frmLogs.ShowModal;
  end
end;

procedure TfrmPrincipal.mnuRelatorioPersonalizadoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelatorioPersonalizado, frmRelatorioPersonalizado);
  frmRelatorioPersonalizado.ShowModal;
  frmRelatorioPersonalizado.Release;
  frmRelatorioPersonalizado := nil;
end;

procedure TfrmPrincipal.mnuRelatorioAfastamentosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelAfastamento, frmRelAfastamento);
  with frmRelAfastamento do
  begin
    ShowModal;
  end;
end;

procedure TfrmPrincipal.mnuRelAbonoMensalClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelAbonoMensal, frmRelAbonoMensal);
  with frmRelAbonoMensal do
  begin
    ShowModal;
  end;
end;

procedure TfrmPrincipal.mnuRelAbonoGeralClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelAbonoGeral, frmRelAbonoGeral);
  with frmRelAbonoGeral do
  begin
    ShowModal;
  end;
end;

procedure TfrmPrincipal.Admissodeestagirios1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRptAdmissaoEstagiarios, frmRptAdmissaoEstagiarios);
  frmRptAdmissaoEstagiarios.ShowModal;
  frmRptAdmissaoEstagiarios.Release;
  frmRptAdmissaoEstagiarios := nil;
end;

procedure TfrmPrincipal.Desligmentodeestagirios1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRptDesligamentoEstagiarios, frmRptDesligamentoEstagiarios);
  frmRptDesligamentoEstagiarios.ShowModal;
  frmRptDesligamentoEstagiarios.Release;
  frmRptDesligamentoEstagiarios := nil;
end;

procedure TfrmPrincipal.Painelestagirios1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPainelEstagiarios, frmPainelEstagiarios);
  frmPainelEstagiarios.ShowModal;
  frmPainelEstagiarios.Release;
  frmPainelEstagiarios := nil;
end;

procedure TfrmPrincipal.abeladefunes1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmUpdateTbFuncao, frmUpdateTbFuncao);
  frmUpdateTbFuncao.ShowModal;
  frmUpdateTbFuncao.Release;
  frmUpdateTbFuncao := nil;
end;

procedure TfrmPrincipal.mnuFeriasAfastamentosProcuradoresClick(
  Sender: TObject);
begin
  Application.CreateForm(TfrmRelFeriasAfastamentosProcuradores, frmRelFeriasAfastamentosProcuradores);
  with frmRelFeriasAfastamentosProcuradores do
  begin
    ShowModal;
  end;
end;

procedure TfrmPrincipal.Frias1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRptFeriasMensais, frmRptFeriasMensais);
  with frmRptFeriasMensais do
  begin
    ShowModal;
  end;
end;

procedure TfrmPrincipal.Friasanuais1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRptFeriasAnuais, frmRptFeriasAnuais);
  with frmRptFeriasAnuais do
  begin
    ShowModal;
  end;
end;

procedure TfrmPrincipal.AtualizarIDdosupervisordeestgio1Click(
  Sender: TObject);
begin
  Application.CreateForm(TfrmAtualizarIDSupervisorEstagio, frmAtualizarIDSupervisorEstagio);
  frmAtualizarIDSupervisorEstagio.ShowModal;
  frmAtualizarIDSupervisorEstagio.Release;
  frmAtualizarIDSupervisorEstagio := nil;
end;

procedure TfrmPrincipal.mnuPromocaoProcuradoresClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPromocaoProcurador, frmPromocaoProcurador);
  frmPromocaoProcurador.ShowModal;
  frmPromocaoProcurador.Release;
  frmPromocaoProcurador := nil;
end;

procedure TfrmPrincipal.Operaesrealizadasnabasededadosdepessoal1Click(
  Sender: TObject);
begin
  Application.CreateForm(TfrmReadRegistrosLog, frmReadRegistrosLog);
  frmReadRegistrosLog.ShowModal;
  frmReadRegistrosLog.Release;
  frmReadRegistrosLog := nil;
end;

procedure TfrmPrincipal.Especialidades1Click(Sender: TObject);
begin
//  Abort;

  Application.CreateForm(TfrmUpdateTbEspecialidade, frmUpdateTbEspecialidade);
//  frmUpdateTbEspecialidade.setarOperacao(3); // Consulta
  frmUpdateTbEspecialidade.ShowModal;
  frmUpdateTbEspecialidade.Release;
  frmUpdateTbEspecialidade := nil;

end;

end.
