unit ufMensagemHTML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ComCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmMensagemHTML = class(TForm)
    WebBrowser1: TWebBrowser;
    StatusBar1: TStatusBar;
    pnlTopo: TPanel;
    chkExibir: TCheckBox;
    btnSair: TcxButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure FimMensagemInicial;
  end;

var
  frmMensagemHTML: TfrmMensagemHTML;

implementation

uses uDMConexao, uDMPessoal, ufPrincipal, PRG_utils, uPesFuncoes;

{$R *.dfm}

procedure TfrmMensagemHTML.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMensagemHTML.FimMensagemInicial;
var wUsuario, wNomeArquivo: string;
begin
  wUsuario := frmPrincipal.Sessao.idUsuario;
  wNomeArquivo := StatusBar1.Panels[0].Text;

  try
    with dmPessoal.qryExecSQL do
    begin
      Connection := DMConexao.conPessoal;
      SQL.Text :=
          'Set dateformat dmy'
          + ' Update'
          + ' '
          //+ frmPrincipal.Sessao.Banco
          + Trim('tbMensagemDiaria')
          + ' set Exibe = '         + QuotedStr('0')
          + ' Where idUsuario = '   + QuotedStr(wUsuario)
          + ' and NomeArquivo = '   + QuotedStr(wNomeArquivo);

      ExecSQL;
      Close;
    end;
  except
    ShowMessage('A atualização da mensagem não pôde ser realizada. Por gentileza, informe ao suporte técnico.')
  end;      
end;

procedure TfrmMensagemHTML.FormClose(Sender: TObject;
  var Action: TCloseAction);
var wMens: string;
begin
  wMens := 'Atenção! Você deseja exibir esta mensagem da próxima vez que entrar no sistema?';
  if ConfirmaAcao(wMens,2) = 0 then FimMensagemInicial;

end;

end.
