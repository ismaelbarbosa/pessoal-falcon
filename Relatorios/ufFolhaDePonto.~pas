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
    lkcmbbxAno: TcxLookupComboBox;
    lkcmbbxMes: TcxLookupComboBox;
    lkcmbbxSuperLotacao: TcxLookupComboBox;
    lkcmbbxServidor: TcxLookupComboBox;
    qryAno: TADOQuery;
    qryMes: TADOQuery;
    dsqryMes: TDataSource;
    dsqryAno: TDataSource;
    qryLotacao: TADOQuery;
    qryServidor: TADOQuery;
    dsqryServidor: TDataSource;
    dsqryLotacao: TDataSource;
    qryDataHora: TADOQuery;
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

uses uDMPessoal, uDMConexao, ufPrincipal;

{$R *.dfm}

procedure TfrmFolhaDePonto.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFolhaDePonto.FormCreate(Sender: TObject);
begin
  qryAno.Connection := DMConexao.conPessoal;
  qryMes.Connection := DMConexao.conPessoal;
  qryLotacao.Connection := DMConexao.conPessoal;
  qryServidor.Connection := DMConexao.conPessoal;
  qryDataHora.Connection := DMConexao.conPessoal;

  qryAno.Active := true;
  qryMes.Active := true;
  qryLotacao.Active := true;
  qryServidor.Active := true;
  qryDataHora.Active := true;

  lkcmbbxAno.ItemIndex := 1;
  lkcmbbxMes.ItemIndex := qryDataHora.FieldValues['Mes']-1;

end;

procedure TfrmFolhaDePonto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryAno.Active := false;
  qryMes.Active := false;
  qryLotacao.Active := false;
  qryServidor.Active := false;
  qryDataHora.Active := false;
end;

procedure TfrmFolhaDePonto.btnGerarClick(Sender: TObject);
var
  URL, Pasta, Arquivo: String;
  i: integer;
begin

  if (lkcmbbxSuperLotacao.EditingText = '') and (lkcmbbxServidor.EditingText = '') then
  begin
    ShowMessage('Preencha o campo Lotação Principal ou o campo Servidor.');
    lkcmbbxSuperLotacao.SetFocus;

    Abort;
  end;

  if (lkcmbbxServidor.ItemIndex <> null) and (lkcmbbxServidor.EditText <> '') then
  begin
    lkcmbbxSuperLotacao.Clear;

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


  URL := 'http://pgsrv08/jsecurity/rest/auth/geraPDF?ano=' + vartostr(lkcmbbxAno.EditValue) + '&idPessoal=' +
          vartostr(lkcmbbxServidor.EditValue) + '&superlotacao=' + vartostr(lkcmbbxSuperLotacao.EditValue) + '&mes=' + vartostr(lkcmbbxMes.EditValue);


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
    Arquivo := Pasta + '\FolhaDePonto_' + vartostr(lkcmbbxServidor.Text) + vartostr(lkcmbbxSuperLotacao.EditValue) + '_' +
              vartostr(lkcmbbxMes.EditValue) + '_' + VarToStr(lkcmbbxAno.EditValue) + '.pdf';


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
      Arquivo := Pasta + '\FolhaDePonto_' + vartostr(lkcmbbxServidor.Text) + vartostr(lkcmbbxSuperLotacao.EditValue) + '_' +
                vartostr(lkcmbbxMes.EditValue) + '_' + VarToStr(lkcmbbxAno.EditValue) + '.pdf';


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
  lkcmbbxSuperLotacao.SetFocus;
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
  if (lkcmbbxServidor.ItemIndex <> null) and (lkcmbbxServidor.EditText <> '') then
  begin
//    ShowMessage(IntToStr(lkcmbbxServidor.ItemIndex));

    lkcmbbxSuperLotacao.Clear;
  end;
end;

end.
