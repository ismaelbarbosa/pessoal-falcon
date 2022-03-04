unit ufUpdateTabelaLotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, DB, ADODB;

type
  TfrmUpdateTabelaLotacao = class(TForm)
    qryLotacao: TADOQuery;
    dsLotacao: TDataSource;
    pnlBotoes: TPanel;
    Label2: TLabel;
    lblOperacao: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpdateTabelaLotacao: TfrmUpdateTabelaLotacao;

implementation

{$R *.dfm}

end.
