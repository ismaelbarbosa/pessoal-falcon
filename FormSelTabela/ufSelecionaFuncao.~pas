unit ufSelecionaFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, Menus, cxTextEdit, StdCtrls, ExtCtrls, ADODB,
  cxButtons, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmSelecionaFuncao = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    grpbxSelFuncaoBotoes: TcxGroupBox;
    btnOK: TcxButton;
    btnCancela: TcxButton;
    tmrSelFuncao: TTimer;
    qryFuncao: TADOQuery;
    dsFuncao: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    lblQtd: TLabel;
    edtPesquisa: TcxTextEdit;
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
  private
    wIdFuncao: string;
  public
    function pesquisarFuncao(valor:String):Integer;
    function retornaIdFuncao: String;
  end;

var
  frmSelecionaFuncao: TfrmSelecionaFuncao;

implementation

uses PRG_utils, uPesFuncoes, uDMConexao, ufLogs, ufPrincipal;

{$R *.dfm}

procedure TfrmSelecionaFuncao.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: lblQtd.Caption := IntToStr(pesquisarFuncao(edtPesquisa.Text));
    VK_DOWN:  perform(WM_NEXTDLGCTL,0,0);
  end
end;

procedure TfrmSelecionaFuncao.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

function TfrmSelecionaFuncao.pesquisarFuncao(valor: String): Integer;
var wSQL: String;
begin
  with qryFuncao do
  begin
    Connection := DMConexao.conPessoal;
    Active := false;
    SQL.Clear;
    wSQL := 'SELECT fun.idFuncao, fun.Descricao, fun.idDFG'
          + ' FROM tbFuncao fun'
      //    + ' LEFT JOIN tbLotacao lot on lot.idLotacao = ser.idLotacao'
          + ' WHERE '
          + ' Nova_Estrutura = 1'

          + ' AND ('
          + Gera_SQL(RemoveIndesejadas(valor), 'fun.Descricao')
          + ' OR '
          + Gera_SQL(RemoveIndesejadas(valor), 'fun.idDFG')

          + ')'
          + ' ORDER BY fun.Descricao';


    SQL.Add(wSQL);

    frmLogs.mmoLog.Lines.Add(wSQL);
    Active := true;
    Result := RecordCount;
  end;


end;

procedure TfrmSelecionaFuncao.btnOKClick(Sender: TObject);
begin
  with qryFuncao do
  begin
    if (Active = true) and (RecordCount <> 0) then
    begin
      wIdFuncao  := FieldByName('idFuncao').AsString;
      frmSelecionaFuncao.Close;
    end
  end
end;

function TfrmSelecionaFuncao.retornaIdFuncao: String;
begin
  Result := wIdFuncao;
end;

procedure TfrmSelecionaFuncao.btnCancelaClick(Sender: TObject);
begin
  Close;
end;

end.
