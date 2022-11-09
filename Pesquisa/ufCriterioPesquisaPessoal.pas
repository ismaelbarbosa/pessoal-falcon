unit ufCriterioPesquisaPessoal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, DB, cxDBEdit, StdCtrls, cxTextEdit, cxCheckBox,
  cxPC, Buttons, cxGroupBox, Menus, cxButtons;

type
  TfrmCriterioPesquisaPessoal = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    tshCampos: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    chkNome: TcxCheckBox;
    chkMatricula: TcxCheckBox;
    chkLotacao: TcxCheckBox;
    chkCargo: TcxCheckBox;
    chkFuncao: TcxCheckBox;
    chkCPF: TcxCheckBox;
    edtNome: TcxTextEdit;
    edtMatricula: TcxTextEdit;
    edtCPF: TcxTextEdit;
    mmoSQL: TMemo;
    edtFuncao: TcxDBTextEdit;
    edtLotacao: TcxDBTextEdit;
    edtCargo: TcxDBTextEdit;
    dsPessoal: TDataSource;
    btnPesquisar: TcxButton;
    btnSair: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure chkNomeClick(Sender: TObject);
    procedure chkMatriculaClick(Sender: TObject);
    procedure chkLotacaoClick(Sender: TObject);
    procedure chkCargoClick(Sender: TObject);
    procedure chkFuncaoClick(Sender: TObject);
    procedure chkCPFClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
  private
    FstrNome: string;
    FstrLotacao: string;
    FstrCargo: string;
    FstrFuncao: string;
    FstrMatricula: string;
    FstrCPF: string;

    // variáveis utilizadas para armazenar e recuperar dados da última pesquisa
    IniFile  : TIniFile;
    LstUser, LstEdtNome, lstEdtAS,
    lstidCE, lstProtocoloSAJ, lstCertidao, lstCDA, lstReu, lstAutor, lstParte,
    lstCPF: string;
    LstDate : TDateTime;


    procedure SetstrCargo(const Value: string);
    procedure SetstrCPF(const Value: string);
    procedure SetstrFuncao(const Value: string);
    procedure SetstrLotacao(const Value: string);
    procedure SetstrMatricula(const Value: string);
  public
    property strLotacao: string read FstrLotacao write SetstrLotacao;
    property strCargo: string read FstrCargo write SetstrCargo;
    property strFuncao: string read FstrFuncao write SetstrFuncao;
    property strMatricula: string read FstrMatricula write SetstrMatricula;
    property strCPF: string read FstrCPF write SetstrCPF;

    procedure habilitarEdit(Edit: TcxCustomEdit);
    procedure desabilitarEdit(Edit: TcxCustomEdit);

    procedure CarregarSessaoAnterior;
    procedure SalvarSessaoAtual;

  end;

var
  frmCriterioPesquisaPessoal: TfrmCriterioPesquisaPessoal;

implementation

uses uDMPessoal, ufSelLotacao, ufSelCargo, ufSelFuncao, uDmExibirTabelas,
  uPesFuncoes, ufPrincipal, uAmbiente, PRG_utils, uDMConexao, ufLogs,
  ufReadServidor;

{$R *.dfm}

procedure TfrmCriterioPesquisaPessoal.desabilitarEdit(Edit: TcxCustomEdit);
begin
  if Edit is TcxCustomEdit then
  begin
    with Edit as TcxCustomEdit do
    begin
      Enabled := false;
      Clear;
      Color := clBtnFace;
    end;
  end;
  if Edit is TcxDBTextEdit then//if2
  begin
  with Edit as TcxDBTextEdit do
    begin
    Enabled := false;
    Clear;
    Color := clBtnFace;
    end;
  end;

end;

procedure TfrmCriterioPesquisaPessoal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SalvarSessaoAtual;

  chkNome.Checked := false;
  chkLotacao.Checked := false;
  chkCargo.Checked := false;
  chkFuncao.Checked := false;

  desabilitarEdit(edtNome);
  desabilitarEdit(edtLotacao);
  desabilitarEdit(edtCargo);
  desabilitarEdit(edtFuncao);


  {
  with dmPessoal do
  begin
    if qryLotacao.Active = true then qryLotacao.Active := false;
    if qryCargo.Active = true then qryCargo.Active := false;
    if qryFuncao.Active = true then qryFuncao.Active := false;
  end;
  }
  
end;

procedure TfrmCriterioPesquisaPessoal.FormCreate(Sender: TObject);
begin

  KeyPreview := true;

  FstrNome := '';
  strLotacao := '';
  strCargo := '';
  strFuncao := '';
  strCPF := '';


  desabilitarEdit(edtNome);
  desabilitarEdit(edtMatricula);
  desabilitarEdit(edtLotacao);
  desabilitarEdit(edtCargo);
  desabilitarEdit(edtFuncao);
  desabilitarEdit(edtCPF);

  chkNomeClick(Nil);

  // CarregarSessaoAnterior;

end;

procedure TfrmCriterioPesquisaPessoal.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then btnSairClick(Sender)
  else if Key = VK_RETURN then btnPesquisarClick(Sender);

  if Shift = [ssCtrl] then
  begin
    if key = VK_F12
    then
    //mmoSQL.Visible := not mmoSQL.Visible;
    frmLogs.ShowModal;
  end
end;

procedure TfrmCriterioPesquisaPessoal.FormShow(Sender: TObject);
var
  ScreenNo: integer;
begin

  ScreenNo := 0;

  Self.Top := Screen.Monitors[ScreenNo].Top + ((Screen.Monitors[ScreenNo].Height div 2) - (Self.Height div 2));
  Self.Left := Screen.Monitors[ScreenNo].Left + ((Screen.Monitors[ScreenNo].Width div 2) - (Self.Width div 2));

end;

procedure TfrmCriterioPesquisaPessoal.habilitarEdit(Edit: TcxCustomEdit);
begin
  if Edit is TcxCustomEdit then
  begin
    with Edit as TcxCustomEdit do
    begin
      Enabled := true;
      //Clear;
      Color := clWindow;
      SetFocus;
    end;
  end;

  if Edit is TcxDBTextEdit then
  begin
  with Edit as TcxDBTextEdit do
    begin
    Enabled := true;
    //Clear;
    Color := clWindow;
    SetFocus;
    end;
  end;

end;

procedure TfrmCriterioPesquisaPessoal.SetstrCargo(const Value: string);
begin
  FstrCargo := Value;
end;

procedure TfrmCriterioPesquisaPessoal.SetstrCPF(const Value: string);
begin
  FstrCPF := Value;
end;

procedure TfrmCriterioPesquisaPessoal.SetstrFuncao(const Value: string);
begin
  FstrFuncao := Value;
end;

procedure TfrmCriterioPesquisaPessoal.SetstrLotacao(const Value: string);
begin
  FstrLotacao := Value;
end;

procedure TfrmCriterioPesquisaPessoal.SetstrMatricula(const Value: string);
begin
  FstrMatricula := Value;
end;

procedure TfrmCriterioPesquisaPessoal.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCriterioPesquisaPessoal.btnPesquisarClick(Sender: TObject);
var
  condicao, lblResultado: string;
  Resultado: Integer;
begin

  if chkNome.checked = true then chkNomeClick(Sender)
  else if chkMatricula.checked = true then chkMatriculaClick(Sender)
  else if chkCPF.checked = true then chkCPFClick(Sender)
  else if chkFuncao.checked = true then chkFuncaoClick(Sender)
  ;

  condicao :=
  FstrNome + strMatricula + strLotacao + strCargo + strFuncao + FstrCPF;

  frmLogs.mmoLog.Lines.Add(condicao);

  Resultado := dmPessoal.pesquisarPessoal(condicao);

  lblResultado := 'Resultado da pesquisa: ' + IntToStr(Resultado);

  if Resultado = 1 then
    lblResultado := lblResultado + ' registro encontrado'
  else
    lblResultado := lblResultado + ' registros encontrados';

  frmReadServidor.grdResultado.Caption := lblResultado;


  if Resultado > 0 then
  begin
    with dmExibirTabelas do
    begin
      if not ExibirTabelasRelacionadas
      then ShowMessage('Não foram exibidas todas as tabelas');
    end;

    //anmtPesqPessoal.Active := false;
    //anmtPesqPessoal.Visible := false;

    frmCriterioPesquisaPessoal.Close;
  end
  else
  ShowMessage('Não foi localizado nenhum registro para essa pesquisa.');
  
end;

procedure TfrmCriterioPesquisaPessoal.chkNomeClick(Sender: TObject);
begin
  if chkNome.Checked then
  begin
    desabilitarEdit(edtLotacao);
    desabilitarEdit(edtCargo);
    desabilitarEdit(edtFuncao);
    desabilitarEdit(edtMatricula);
    desabilitarEdit(edtCPF);

    chkLotacao.Checked := false;
    chkCargo.Checked := false;
    chkFuncao.Checked := false;
    chkMatricula.Checked := false;
    chkCPF.Checked := false;

    strLotacao := '';
    strCargo := '';
    strFuncao := '';
    strMatricula := '';
    strCPF := '';

    //FstrNome := ' and pes.nome like ''%' + edtNome.Text + '%'' ';

    FstrNome := ' AND ' + Gera_SQL(RemoveIndesejadas(edtNome.Text), 'pes.Nome');

    //ShowMessage(FstrNome);
    habilitarEdit(edtNome);
  end
  else
  begin
    desabilitarEdit(edtNome);
    FstrNome := '';
  end;  
end;

procedure TfrmCriterioPesquisaPessoal.chkMatriculaClick(Sender: TObject);
begin
  if chkMatricula.Checked then
  begin
    desabilitarEdit(edtLotacao);
    desabilitarEdit(edtCargo);
    desabilitarEdit(edtFuncao);
    desabilitarEdit(edtNome);
    desabilitarEdit(edtCPF);

    chkLotacao.Checked := false;
    chkCargo.Checked := false;
    chkFuncao.Checked := false;
    chkNome.Checked := false;
    chkCPF.Checked := false;

    strLotacao := '';
    strCargo := '';
    strFuncao := '';
    FstrNome := '';
    strCPF := '';

    strMatricula := ' and serv.idServidor like ''%' +
                   edtMatricula.Text + ''' ';

    habilitarEdit(edtMatricula);
  end
  else
  begin
    desabilitarEdit(edtMatricula);
    strMatricula := '';
  end;  
end;

procedure TfrmCriterioPesquisaPessoal.chkLotacaoClick(Sender: TObject);
begin
  if chkLotacao.Checked then
  begin
    desabilitarEdit(edtNome);
    desabilitarEdit(edtCargo);
    desabilitarEdit(edtFuncao);
    desabilitarEdit(edtMatricula);
    desabilitarEdit(edtCPF);

    chkNome.Checked := false;
    chkCargo.Checked := false;
    chkFuncao.Checked := false;
    chkMatricula.Checked := false;
    chkCPF.Checked := false;

    FstrNome := '';
    strCargo := '';
    strFuncao := '';
    strMatricula := '';
    strCPF := '';

    habilitarEdit(edtLotacao);

    Application.CreateForm(TfrmSelLotacao, frmSelLotacao);
    frmSelLotacao.CriadoPor := ufSelLotacao.cpfrmCritPesqPessoal;
    frmSelLotacao.ShowModal;

  end
  else
  begin
    desabilitarEdit(edtLotacao);
    strLotacao := '';
  end;

end;

procedure TfrmCriterioPesquisaPessoal.chkCargoClick(Sender: TObject);
begin
  if chkCargo.Checked then
  begin
    desabilitarEdit(edtNome);
    desabilitarEdit(edtLotacao);
    desabilitarEdit(edtFuncao);
    desabilitarEdit(edtMatricula);
    desabilitarEdit(edtCPF);

    chkNome.Checked := false;
    chkLotacao.Checked := false;
    chkFuncao.Checked := false;
    chkMatricula.Checked := false;
    chkCPF.Checked := false;

    FstrNome := '';
    strLotacao := '';
    strFuncao := '';
    strMatricula := '';
    strCPF := '';

    habilitarEdit(edtCargo);

    Application.CreateForm(TfrmSelCargo, frmSelCargo);
    frmSelCargo.CriadoPor := ufSelCargo.cpfrmCritPesqPessoal;
    frmSelCargo.ShowModal;
    ShowMessage(edtCargo.Text);

  end
  else
  begin
    desabilitarEdit(edtCargo);
    strCargo := '';
  end;

end;

procedure TfrmCriterioPesquisaPessoal.chkFuncaoClick(Sender: TObject);
begin
  if chkFuncao.Checked then
  begin
    desabilitarEdit(edtNome);
    desabilitarEdit(edtCargo);
    desabilitarEdit(edtLotacao);
    desabilitarEdit(edtMatricula);
    desabilitarEdit(edtCPF);

    chkNome.Checked := false;
    chkCargo.Checked := false;
    chkLotacao.Checked := false;
    chkMatricula.Checked := false;
    chkCPF.Checked := false;

    FstrNome := '';
    strCargo := '';
    strLotacao := '';
    strMatricula := '';
    strCPF := '';

    habilitarEdit(edtFuncao);

    Application.CreateForm(TfrmSelFuncao, frmSelFuncao);
    frmSelFuncao.CriadoPor := ufSelFuncao.cpfrmCritPesqPessoal;
    frmSelFuncao.ShowModal;

  end
  else
  begin
    desabilitarEdit(edtFuncao);
    strFuncao := '';
  end;

end;

procedure TfrmCriterioPesquisaPessoal.chkCPFClick(Sender: TObject);
begin
  if chkCPF.Checked then//if1
  begin
    desabilitarEdit(edtLotacao);
    desabilitarEdit(edtCargo);
    desabilitarEdit(edtFuncao);
    desabilitarEdit(edtNome);
    desabilitarEdit(edtMatricula);

    chkLotacao.Checked := false;
    chkCargo.Checked := false;
    chkFuncao.Checked := false;
    chkNome.Checked := false;
    chkMatricula.Checked := false;

    strLotacao := '';
    strCargo := '';
    strFuncao := '';
    strMatricula := '';
    FstrNome := '';

    strCPF := ' and pes.cpf LIKE ''%' +
                     edtCPF.Text + '%'' ';

    habilitarEdit(edtCPF);
  end
  else
  begin
    desabilitarEdit(edtCPF);
    strCPF := '';
  end;

end;

procedure TfrmCriterioPesquisaPessoal.FormActivate(Sender: TObject);
begin
  chkNome.Checked := true;

  edtNome.Text     := LstEdtNome;

end;

procedure TfrmCriterioPesquisaPessoal.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmCriterioPesquisaPessoal.CarregarSessaoAnterior;
var
  IniFile  : TIniFile;
  LstUser, Caminho, wArq: string;
begin
  Caminho  := APP_PATH + '\UserPrefs\';

  //wArq := 'Sessao'+frmPrincipal.Sessao.idUsuario+'.INI';
  wArq := 'Sessao.Pessoal' + DMConexao.getCPFUsuario + '.INI';

  IniFile := TIniFile.Create(Caminho+wArq);

  //se não houver último usuário retornará uma string vazia
  //se não houver data armazenada retornar a data atual

  LstUser := IniFile.ReadString('User','Last','');
  LstDate := IniFile.ReadDate('User', 'Date', Date);
  LstEdtNome  := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtNome','');
  {
  lstEdtAS        := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtidAS','');
  lstidCE         := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtidCE','');
  lstProtocoloSAJ := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtProtocoloSAJ','');
  lstCertidao     := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtCertidao','');
  lstCDA          := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtCDA','');
  lstReu          := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtReu','');
  lstAutor        := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtAutor','');
  lstParte        := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtParte','');
  lstCPF          := IniFile.ReadString('frmCriterioPesquisaPessoal', 'edtCPF','');
  }
  //ShowMessage(LstUser);

  IniFile.Free;
end;

procedure TfrmCriterioPesquisaPessoal.SalvarSessaoAtual;
var
  IniFile  : TIniFile;
  LstUser, Caminho, wArq: string;
begin
  // Caminho  := '\\Prg_Server3\Sistemas\Judicial\UserPrefs\';
  // wArq := 'Sessao'+frmPrincipal.Sessao.idUsuario+'.INI';

  Caminho  := APP_PATH + '\UserPrefs\';
  wArq := 'Sessao.Pessoal' + DMConexao.getCPFUsuario + '.INI';

  IniFile := TIniFile.Create(Caminho+wArq);

  LstUser := DMConexao.getNomeUsuario;  // frmPrincipal.Usuario.Nome;

  IniFile.WriteString('User','Last',LstUser);
  IniFile.WriteDate('User', 'Date', Date);

  //ShowMessage(edtNome.Text);

  IniFile.WriteString('frmCriterioPesquisaPessoal','edtNome',edtNome.Text);
  {
  IniFile.WriteString('frmCriterioPesquisaPessoal','edtidAS',edtidAS.Text);
  IniFile.WriteString('frmCriterioPesquisaPessoal','edtidCE',edtidCE.Text);
  IniFile.WriteString('frmCriterioPesquisaPessoal','edtProtocoloSAJ',edtProtocoloSAJ.Text);
  IniFile.WriteString('frmCriterioPesquisaPessoal','edtCertidao',edtCertidao.Text);
  IniFile.WriteString('frmCriterioPesquisaPessoal','edtCDA',edtCDA.Text);
  IniFile.WriteString('frmCriterioPesquisaPessoal','edtParte',edtParte.Text);
  IniFile.WriteString('frmCriterioPesquisaPessoal','edtCPF',edtCPF.Text);
  }

  IniFile.Free;

end;

end.
