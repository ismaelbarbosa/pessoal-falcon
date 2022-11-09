unit ufFolhaDePonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, StdCtrls,
  cxButtons, ExtCtrls, DB, ADODB, cxProgressBar, ShellApi;

type
  TfrmFolhaDePonto = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    lblFQC: TLabel;
    btnSair: TcxButton;
    btnGerar: TcxButton;
    grpbxOpcoes: TcxGroupBox;
    lblAno: TLabel;
    lblMes: TLabel;
    lblLotacao: TLabel;
    lblServidor: TLabel;
    lkpAno: TcxLookupComboBox;
    lkpMes: TcxLookupComboBox;
    lkpSuperLotacao: TcxLookupComboBox;
    lkpServidor: TcxLookupComboBox;
    dsqryMes: TDataSource;
    dsqryAno: TDataSource;
    qryLotacao: TADOQuery;
    qryServidor: TADOQuery;
    dsqryServidor: TDataSource;
    dsqryLotacao: TDataSource;
    pgbrPonto: TcxProgressBar;

    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lkcmbbxServidorPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFolhaDePonto: TfrmFolhaDePonto;

implementation

uses uDMPessoal, uDMConexao, ufPrincipal, uDmExibirTabelas;

{$R *.dfm}

procedure TfrmFolhaDePonto.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFolhaDePonto.FormCreate(Sender: TObject);
begin
  qryLotacao.Connection := DMConexao.conPessoal;
  qryServidor.Connection := DMConexao.conPessoal;

  dsqryMes.DataSet := dmExibirTabelas.qryMes;
  dsqryAno.DataSet := dmExibirTabelas.qryAno;
  
  dmExibirTabelas.qryAno.Active := true;
  dmExibirTabelas.qryMes.Active := true;
  dmExibirTabelas.qryDataHora.Active := true;

  qryLotacao.Active := true;
  qryServidor.Active := true;

  lkpAno.ItemIndex := 1;
  lkpMes.ItemIndex := dmExibirTabelas.qryDataHora.FieldValues['Mes']-1;

end;

procedure TfrmFolhaDePonto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmExibirTabelas.qryAno.Active := false;
  dmExibirTabelas.qryMes.Active := false;
  dmExibirTabelas.qryDataHora.Active := false;

  qryLotacao.Active := false;
  qryServidor.Active := false;
end;

procedure TfrmFolhaDePonto.btnGerarClick(Sender: TObject);
var
  URL, Pasta, Arquivo: String;
  i: integer;
begin

  if (lkpSuperLotacao.EditingText = '') and (lkpServidor.EditingText = '') then
  begin
    ShowMessage('Preencha o campo Lotação Principal ou o campo Servidor.');
    lkpSuperLotacao.SetFocus;

    Abort;
  end;

  if (lkpServidor.ItemIndex <> null) and (lkpServidor.EditText <> '') then
  begin
    lkpSuperLotacao.Clear;

    Application.ProcessMessages;
  end;


  pgbrPonto.Position := 0;
  pgbrPonto.Update;

  for i := 0 to 50 do
  begin
    pgbrPonto.Position := i;
    pgbrPonto.Update;
    Sleep( 50 );
  end;


  URL := 'http://pgsrv08/jsecurity/rest/auth/geraPDF?ano=' + vartostr(lkpAno.EditValue) + '&idPessoal=' +
          vartostr(lkpServidor.EditValue) + '&superlotacao=' + vartostr(lkpSuperLotacao.EditValue) + '&mes=' + vartostr(lkpMes.EditValue);


  Application.ProcessMessages;

  for i := 51 to 80 do
  begin
    pgbrPonto.Position := i;
    pgbrPonto.Update;
    Sleep( 70 );
  end;


  Application.ProcessMessages;

//  Pasta:= '\\prg_server3\Sistemas\Atualiza\FolhaDePonto_' + vartostr(lkcmbbxServidor.Text) + vartostr(lkcmbbxSuperLotacao.EditValue) + '_' +
//            vartostr(lkcmbbxMes.EditValue) + '_' + VarToStr(lkcmbbxAno.EditValue) + '.pdf';


  //Pasta := '\\pgsrv05\UAG\U-DIGEP\GEGEP 2015\FOLHAS DE PONTO';

  Pasta := 'C:\temp';

  if DirectoryExists(Pasta) then
  begin
    Arquivo := Pasta + '\FolhaDePonto_' + vartostr(lkpServidor.Text) + vartostr(lkpSuperLotacao.EditValue) + '_' +
              vartostr(lkpMes.EditValue) + '_' + VarToStr(lkpAno.EditValue) + '.pdf';


    if frmPrincipal.GetInetFile(URL, Arquivo) = false then ShowMessage('Falha ao tentar baixar a folha de ponto. Entre em contato com o Desenvolvedor.');

    Application.ProcessMessages;

    for i := 81 to 99 do
    begin
      pgbrPonto.Position := i;
      pgbrPonto.Update;
      Sleep( 100 );
    end;

    Application.ProcessMessages;

    pgbrPonto.Position := 100;
    pgbrPonto.Update;


    ShellExecute(Handle, nil, PChar(Arquivo), nil, nil, SW_SHOWNORMAL);

    Application.ProcessMessages;

  end
  else
  begin
    if Messagedlg('A pasta "' + Pasta + '" não existe, deseja criá-la?', mtError, [mbOk, mbCancel], 0) = mrOk then
    begin
    if CreateDir(Pasta) then
    begin
      Arquivo := Pasta + '\FolhaDePonto_' + vartostr(lkpServidor.Text) + vartostr(lkpSuperLotacao.EditValue) + '_' +
                vartostr(lkpMes.EditValue) + '_' + VarToStr(lkpAno.EditValue) + '.pdf';


      frmPrincipal.GetInetFile(URL, Arquivo);


      Application.ProcessMessages;


      for i := 81 to 99 do
      begin
        pgbrPonto.Position := i;
        pgbrPonto.Update;
        Sleep( 100 );
      end;

      Application.ProcessMessages;

      pgbrPonto.Position := 100;
      pgbrPonto.Update;


      ShellExecute(Handle, nil, PChar(Arquivo), nil, nil, SW_SHOWNORMAL);
    end
    else ShowMessage('Erro ao tentar criar a pasta. Código do erro: ' + IntToStr(GetLastError) + #13 + #10 + 'Favor criar a pasta "' + Pasta + '" manualmente.');

  end;

  end;

  abort;

end;

procedure TfrmFolhaDePonto.FormActivate(Sender: TObject);
begin
  lkpSuperLotacao.SetFocus;
end;

procedure TfrmFolhaDePonto.FormShow(Sender: TObject);
var
  ScreenNo: integer;
begin
  ScreenNo := 0;

  Self.Top := Screen.Monitors[ScreenNo].Top + ((Screen.Monitors[ScreenNo].Height div 2) - (Self.Height div 2));
  Self.Left := Screen.Monitors[ScreenNo].Left + ((Screen.Monitors[ScreenNo].Width div 2) - (Self.Width div 2));
end;

procedure TfrmFolhaDePonto.lkcmbbxServidorPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (lkpServidor.ItemIndex <> null) and (lkpServidor.EditText <> '') then
  begin
//    ShowMessage(IntToStr(lkcmbbxServidor.ItemIndex));

    lkpSuperLotacao.Clear;
  end;
end;

end.
