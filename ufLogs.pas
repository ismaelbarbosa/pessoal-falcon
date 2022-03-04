unit ufLogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo;

type
  TfrmLogs = class(TForm)
    mmoLog: TcxMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogs: TfrmLogs;

implementation

{$R *.dfm}

procedure TfrmLogs.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

end.
