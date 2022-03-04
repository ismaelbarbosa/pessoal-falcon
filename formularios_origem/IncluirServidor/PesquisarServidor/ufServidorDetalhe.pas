unit ufServidorDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, ExtCtrls, cxPC;

type
  TfrmServidorDetalhe = class(TForm)
    pgcPessoal: TcxPageControl;
    tshDadosFuncionais: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    txtCargo: TDBText;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    edtNome: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    lblStatus: TLabel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServidorDetalhe: TfrmServidorDetalhe;

implementation

uses ufPesquisarServidor;

{$R *.dfm}

end.