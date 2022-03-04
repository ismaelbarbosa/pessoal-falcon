unit ufGestaoCargoServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls;

type
  TfrmGestaoCargoServidor = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnNovoCargo: TcxButton;
    btnEditarCargo: TcxButton;
    btnGravarCargo: TcxButton;
    btnCancelarCargo: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGestaoCargoServidor: TfrmGestaoCargoServidor;

implementation

{$R *.dfm}

end.
