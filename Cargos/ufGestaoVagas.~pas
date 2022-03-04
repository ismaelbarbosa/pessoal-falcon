unit ufGestaoVagas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxSpinEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxMemo, Grids, DBGrids;

type
  TfrmGestaoVagas = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnNovo: TcxButton;
    btnEditar: TcxButton;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    lblOperacao: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qryCargoVaga: TADOQuery;
    dsCargoVaga: TDataSource;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    pnlUpdateVagas: TPanel;
    cxMemo1: TcxMemo;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lkpDescricaoCargo: TcxLookupComboBox;
    edtLei: TcxTextEdit;
    edtDataCriacao: TcxDateEdit;
    edtQtdVagas: TcxSpinEdit;
    lblTotal: TLabel;
    mmoSQL: TcxMemo;
    qryVagasDisponiveis: TADOQuery;
    dsVagasDisponiveis: TDataSource;
    grdVagasDisponiveis: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    OPERACAO: Integer;
    Mens: Array of String;
    Campos: Array of String;
  public
    function setarOperacao(tipo: Integer):boolean;
    procedure configurarOperacao;
    procedure setarCampos;
    function CamposVazios(Campos: Array of String;
         Mensagens: Array of String): Boolean;

    function exibirVagasPorCargo : integer;
    function retornaSQLVagas(valor:String): String;
    function exibirVagasDisponiveis: integer;
    function retornaSQLVagasDisponiveis(valor:String): String;
  end;

var
  frmGestaoVagas: TfrmGestaoVagas;

implementation

uses PRG_utils, uPesFuncoes, uDMConexao;

{$R *.dfm}

procedure TfrmGestaoVagas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGestaoVagas.btnGravarClick(Sender: TObject);
var i: Integer;
begin
  {
  if ConfirmaAcao('Confirma a inclusão?',3) = 1
  then
  begin
    for i := 1 to edtQtdVagas.Value do
    begin
      ShowMessage(IntToStr(i));

      if incluirVaga      // Tabela de Pessoal
      (retornaSQLInsertVaga)
      then
        ShowMessage('Registro gravado')
      else
        ShowMessage('Registro não foi gravado');

      //pnlEditar.Visible := false;
      //exibirFeriados;
      //grdRegistros.Visible := true;
      lblOperacaoCargo.Caption := '';

    end;
  end
  }
end;

procedure TfrmGestaoVagas.FormActivate(Sender: TObject);
var totVagasDisponiveis : Integer;
begin
  Position := poScreenCenter;

  totVagasDisponiveis := exibirVagasDisponiveis;
  lblTotal.Caption := InttoStr(exibirVagasPorCargo);


  {
  exibirCargoCarreira;

  lblTotalCargo.Caption := InttoStr(exibirCargos);

  if (gbxPesquisarCargo.Visible) and (edtPesquisaCargo.Visible)
  then edtPesquisaCargo.SetFocus;
  }

end;

procedure TfrmGestaoVagas.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  KeyPreview := true;


  qryCargoVaga.Connection := DMConexao.conPessoal;
  qryVagasDisponiveis.Connection := DMConexao.conPessoal;

  edtQtdVagas.Properties.MaxValue := 200;

//  setarOperacao(3);
//  configurarOperacao;

  Setlength(Campos, 4);
  Mens := VarArrayof(['<Carreira>','<Descrição do cargo>','<Código do cargo>','<Número de vagas>']);

end;

function TfrmGestaoVagas.exibirVagasPorCargo: integer;
begin
  with qryCargoVaga do
  begin
    Active := False;
    Sql.Clear;
//    Sql.Add(retornaSQLVagas(edtVagaCargo.Text));
    Sql.Add(retornaSQLVagas(''));
    Active := True;
  end;

  Result := qryCargoVaga.RecordCount;

end;

function TfrmGestaoVagas.retornaSQLVagas(valor: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + 'CASE WHEN car.Habilitado = 1 THEN ''SIM'''
  + ' WHEN car.Habilitado = 0 THEN ''NÃO'''
  + ' ELSE ''-'' END AS Habilitado'

  + ', ROW_NUMBER() OVER (ORDER BY car.idCargo) AS Row#'
  + ', car.ID, car.idCargo'
  + ', car.Descricao'
  + ', car.Vagas_Prev'
  + ', car.Vagas_Ocup'
  + ', vag.idCargoVaga'
  + ', vag.dt_Criacao'
  + ', vag.Lei'
  + ', dbo.F_QtdVagasOcupadasCargo(car.idCargo'
  + ') as QtdVagas'

  + ' FROM tbCargo as car'
  + ' INNER JOIN tbCargoVaga vag on vag.idCargo = car.idCargo'

  + ' WHERE 1=1';

//sidkdkaik  a duja djdjdj

  pesquisa := pesquisa

  + ' AND ('

  + Gera_SQL(RemoveIndesejadas(valor),'car.Descricao','AND')
  + ' OR  ' + Gera_SQL(RemoveIndesejadas(valor),'car.idCargo','AND')
  + ')'
  + ' ORDER BY car.Descricao';

  mmoSQL.Lines.Add(pesquisa);
  Result := pesquisa;

end;

function TfrmGestaoVagas.CamposVazios(Campos,
  Mensagens: array of String): Boolean;
var cont: integer;
begin
  Result := false;

  if Length(Campos) <> Length(Mensagens) then
  begin
    MessageDlg('O número de Mensagens deve ser igual ao número de Campos', mtError,[mbOK],0);
    Halt;
  end
  else
  begin
    for cont := 0 to high(Campos) do
    begin
      if trim(Campos[cont]) = '' then//if2
      begin
        Result := true;
        ShowMessage('Preencha o campo ' + Mensagens[cont]);
        //Campos[cont].SetFocus;
        Break;
      end
      else Result := false;
    end;
  end;
end;

procedure TfrmGestaoVagas.setarCampos;
begin
  Campos[0] := lkpDescricaoCargo.Text;
  Campos[1] := edtDataCriacao.Text;
  Campos[2] := edtLei.Text;
  Campos[3] := edtQtdVagas.Text;
end;

procedure TfrmGestaoVagas.configurarOperacao;
begin
  case OPERACAO of
    1:      // Novas vagas
    begin
      lblOperacao.Caption := 'NOVAS VAGAS';

      pnlUpdateVagas.Visible := true;

      btnNovo.Enabled := false;
      btnEditar.Enabled := false;
      btnGravar.Enabled := true;
      btnCancelar.Enabled := true;
      //edtVagas_Prev.Enabled := true;

      lkpDescricaoCargo.SetFocus;
    end;
    2:      // Editar cargo
    begin
      lblOperacao.Caption := 'EDIÇÃO';

      pnlUpdateVagas.Visible := true;

      btnNovo.Enabled := false;
      btnEditar.Enabled := false;
      btnGravar.Enabled := true;
      btnCancelar.Enabled := true;
      //edtVagas_Prev.Enabled := true;

      //edtVagas_Prev.SetFocus;

    end;
    3:      // Consultar cargo (read)
    begin
      lblOperacao.Caption := 'CONSULTA';

      pnlUpdateVagas.Visible := false;

      btnNovo.Enabled := true;
      btnEditar.Enabled := true;
      btnGravar.Enabled := false;
      btnCancelar.Enabled := false;

      //edtVagas_Prev.Enabled := false;
      //edtVagas_Prev.SetFocus;

    end
  end;

end;

function TfrmGestaoVagas.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

function TfrmGestaoVagas.exibirVagasDisponiveis: integer;
begin
  with qryVagasDisponiveis do
  begin
    Active := False;
    Sql.Clear;
//    Sql.Add(retornaSQLVagas(edtVagaCargo.Text));
    Sql.Add(retornaSQLVagasDisponiveis(''));
    Active := True;
  end;

  Result := qryVagasDisponiveis.RecordCount;
end;

function TfrmGestaoVagas.retornaSQLVagasDisponiveis(valor: String): String;
var pesquisa: String;
begin
  pesquisa := 'SET DATEFORMAT dmy'
  + ' SELECT  '

  + ' car.idCargo, car.Descricao as Cargo'
  + ', car.Vagas_Prev, carr.Descricao as Carreira'
  + ', count(car.idCargo) as Total'
  + ', car.Vagas_Prev - count(car.idCargo) as SaldoVagas'
  + ' FROM tbServidor ser'
  + ' INNER JOIN tbCargo car on car.idCargo = ser.idCargo'
  + ' INNER JOIN tbCargoCarreira carr on carr.idCargoCarreira = car.idCargoCarreira'
  + ' WHERE ser.idDesligamento is null'
  + ' AND Carreira_PRG = 1'
  + ' GROUP BY car.idCargo, car.Descricao , carr.Descricao'
  + ', car.Vagas_Prev'
  + ' ORDER BY carr.Descricao, car.Descricao';

  mmoSQL.Lines.Add(pesquisa);
  Result := pesquisa;
end;

end.
