unit ufLancarFerias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxCheckBox, cxTextEdit, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, cxButtons, cxGroupBox, ExtCtrls, DBCtrls, Mask, Buttons, cxMemo,
  cxRadioGroup, DB;

type
  TfrmUpdateFerias = class(TForm)
    gbxOperacao: TcxGroupBox;
    lblModoDesc: TLabel;
    lblModo: TLabel;
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    lblDt_Termino: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    lkpTipoParcela: TcxLookupComboBox;
    edtDtInicio: TcxDateEdit;
    edtExercicio: TcxTextEdit;
    chkAntecipacao: TcxCheckBox;
    lblNProcessoSEI: TLabel;
    lblDt_InicioReagendam: TLabel;
    edtDt_InicioReagendam: TDBEdit;
    lblDt_TerminoReagendam: TLabel;
    edtDt_TerminoReagendam: TDBEdit;
    lblObservacao: TLabel;
    memObservacao: TcxMemo;
    Button1: TButton;
    rgpPeriodo: TcxRadioGroup;
    Button2: TButton;
    rgpParcela: TcxRadioGroup;
    dsFeriasTipoParcela: TDataSource;
    edtProcessoSEI: TcxMaskEdit;
    lblOperacao: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure lkpTipoParcelaExit(Sender: TObject);
  private
    OPERACAO: Integer;
  public
    function setarOperacao(tipo: Integer):boolean;
    function retornaDataTermino(Data: TDate; TipoParcela: String): TDate;
    procedure configurarTabelasRelacionadas;
    function retornarFeriasTipoParcela: boolean;
  end;

var
  frmUpdateFerias: TfrmUpdateFerias;

implementation

uses uDMPessoal, uDmExibirTabelas;

{$R *.dfm}

procedure TfrmUpdateFerias.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpdateFerias.FormActivate(Sender: TObject);
begin
  Position := poScreenCenter;

  Case OPERACAO of
    1: lblOperacao.Caption := 'INCLUSÃO';
    2: lblOperacao.Caption := 'ALTERAÇÃO';
  end;

  edtExercicio.SetFocus;

  configurarTabelasRelacionadas;
end;

function TfrmUpdateFerias.retornaDataTermino(Data: TDate; TipoParcela: String): TDate;
var
aSomar: integer;
begin

  aSomar := 0;

   //if edtidParcela.Text = 'U' then aSomar := 29
  if rgpParcela.ItemIndex = 0
  then
  begin
    ShowMessage('parcela unica');
    aSomar := 29;
  end;


  case rgpParcela.ItemIndex of
  1:
  begin
    ShowMessage('Um');
    //if TipoParcela = 'A' then aSomar := 14;

    if TipoParcela = 'A' then aSomar := 14
    else if TipoParcela = 'B' then aSomar := 9
    else if TipoParcela = 'C' then aSomar := 19
    else if TipoParcela = 'D' then aSomar := 9
    else if TipoParcela = 'E' then aSomar := 10
    else if TipoParcela = 'F' then aSomar := 11
    else if TipoParcela = 'G' then aSomar := 12
    else if TipoParcela = 'H' then aSomar := 13
    else if TipoParcela = 'I' then aSomar := 15
    else if TipoParcela = 'J' then aSomar := 16
    else if TipoParcela = 'K' then aSomar := 17
    else if TipoParcela = 'L' then aSomar := 18
  end;
  2:
  begin
    ShowMessage('Dois');
    if TipoParcela = 'A' then aSomar := 14
    else if TipoParcela = 'B' then aSomar := 19
    else if TipoParcela = 'C' then aSomar := 9
    else if TipoParcela = 'D' then aSomar := 9
    else if TipoParcela = 'E' then aSomar := 18
    else if TipoParcela = 'F' then aSomar := 17
    else if TipoParcela = 'G' then aSomar := 16
    else if TipoParcela = 'H' then aSomar := 15
    else if TipoParcela = 'I' then aSomar := 13
    else if TipoParcela = 'J' then aSomar := 12
    else if TipoParcela = 'K' then aSomar := 11
    else if TipoParcela = 'L' then aSomar := 10
  end;
  3:
  begin
    ShowMessage('Três');
    if TipoParcela = 'D' then aSomar := 9
  end;
  end;                                   


   {
   else//if1
      begin
        if edtidParcela.Text = '1' then//if2
           begin
             if edtidTipoParcela.Text = 'A' then aSomar := 14//if2.1
             else if edtidTipoParcela.Text = 'B' then aSomar := 9//if2.2
             else if edtidTipoParcela.Text = 'C' then aSomar := 19//if2.3
             else if edtidTipoParcela.Text = 'D' then aSomar := 9//if2.4
//Alteração inserida em 13/11/2014
             else if edtidTipoParcela.Text = 'E' then aSomar := 10//if2.5
             else if edtidTipoParcela.Text = 'F' then aSomar := 11//if2.6
             else if edtidTipoParcela.Text = 'G' then aSomar := 12//if2.7
             else if edtidTipoParcela.Text = 'H' then aSomar := 13//if2.8
             else if edtidTipoParcela.Text = 'I' then aSomar := 15//if2.9
             else if edtidTipoParcela.Text = 'J' then aSomar := 16//if2.10
             else if edtidTipoParcela.Text = 'K' then aSomar := 17//if2.11
             else if edtidTipoParcela.Text = 'L' then aSomar := 18//if2.12
//Alteração inserida em 13/11/2014
           end//if2
        else if edtidParcela.Text = '2' then//if3
           begin
             if edtidTipoParcela.Text = 'A' then aSomar := 14//if3.1
             else if edtidTipoParcela.Text = 'B' then aSomar := 19//if3.2
             else if edtidTipoParcela.Text = 'C' then aSomar := 9//if3.3
             else if edtidTipoParcela.Text = 'D' then aSomar := 9//if3.4
//Alteração inserida em 13/11/2014
             else if edtidTipoParcela.Text = 'E' then aSomar := 18//if3.5
             else if edtidTipoParcela.Text = 'F' then aSomar := 17//if3.6
             else if edtidTipoParcela.Text = 'G' then aSomar := 16//if3.7
             else if edtidTipoParcela.Text = 'H' then aSomar := 15//if3.8
             else if edtidTipoParcela.Text = 'I' then aSomar := 13//if3.9
             else if edtidTipoParcela.Text = 'J' then aSomar := 12//if3.10
             else if edtidTipoParcela.Text = 'K' then aSomar := 11//if3.11
             else if edtidTipoParcela.Text = 'L' then aSomar := 10//if3.12
//Alteração inserida em 13/11/2014
           end//if3
        else if edtidParcela.Text = '3' then//if4
           begin
             if edtidTipoParcela.Text = 'D' then aSomar := 9//if4.1
           end;//if4
      end;//if1
    }


   Result := Data + aSomar;

end;

procedure TfrmUpdateFerias.Button1Click(Sender: TObject);
begin
{  if trim(edtidTipoParcela.Text) <> 'N'
  then qryFeriasInserir.FieldValues['dt_termino']
  := Calcula_Ferias(StrToDate(edtDt_Inicio.Text));
}

  //if trim(edtidTipoParcela.Text) <> 'N'
  //then


  lblDt_Termino.Caption := DateToStr(
  retornaDataTermino(StrToDate(edtDtInicio.Text), lkpTipoParcela.EditValue)
  );


end;

procedure TfrmUpdateFerias.Button2Click(Sender: TObject);
var i: Integer;
begin
  i := rgpPeriodo.ItemIndex;
  ShowMessage(IntToStr(i));

  rgpPeriodo.Buttons[0].Enabled:= false;

  rgpPeriodo.Buttons[0].Visible := false;


end;

procedure TfrmUpdateFerias.configurarTabelasRelacionadas;
begin
//
  ShowMessage('Configurando tabelas relacionadas');

  if dmPessoal.VerificarSeEProcurador
  (Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2))
  then
  begin
    retornarFeriasTipoParcela;

    //ShowMessage('É Procurador');
    with rgpPeriodo do
    begin
      Buttons[0].Visible := false;
      Buttons[1].Visible := true;
      Buttons[2].Visible := true;

      ItemIndex := 1;
    end;

    with rgpParcela do
    begin
      Buttons[0].Visible := true;
      Buttons[1].Visible := true;
      Buttons[2].Visible := false;
      Buttons[3].Visible := true;
    end
  end
  else
  begin
    //ShowMessage('Não é  Procurador');

    retornarFeriasTipoParcela;

    with rgpPeriodo do
    begin
      Buttons[0].Visible := true;
      Buttons[1].Visible := false;
      Buttons[2].Visible := false;

      ItemIndex := 0;
    end;

    with rgpParcela do
    begin
      Buttons[0].Visible := true;
      Buttons[1].Visible := true;
      Buttons[2].Visible := true;
      Buttons[3].Visible := true;
    end;
  end;
end;

function TfrmUpdateFerias.retornarFeriasTipoParcela: boolean;
begin

  with dmExibirTabelas do
  begin
    try
      qryFeriasTipoParcela.Active := false;

      if dmPessoal.VerificarSeEProcurador
      (Copy(dmPessoal.qryPesquisa.FieldValues['idCargo'],1,2)) then

      begin
        qryFeriasTipoParcela.SQL.Clear;
        qryFeriasTipoParcela.SQL.Text :=
        'SELECT * FROM tbFeriasTipoParcela'
        + ' WHERE idTipoParcela in ('
        + QuotedStr('U') + ', ' + QuotedStr('N') + ', ' + QuotedStr('A')
        + ')'
        + ' ORDER BY idTipoParcela ';
        ShowMessage(qryFeriasTipoParcela.SQL.Text);
      end
      else
      begin
        qryFeriasTipoParcela.SQL.Clear;
        qryFeriasTipoParcela.SQL.Text :=
        'SELECT * FROM tbFeriasTipoParcela'
                + ' ORDER BY idTipoParcela ';
      end;

      qryFeriasTipoParcela.Active := true;

     except
       ShowMessage('Não foi possível realizar a pesquisa do Tipo de parcela de férias.');
    end;

    if qryFeriasTipoParcela.RecordCount > 0 then Result := true
    else Result := false;
  end;

end;

procedure TfrmUpdateFerias.lkpTipoParcelaExit(Sender: TObject);
begin
  ShowMessage(
  lkpTipoParcela.Text + ' - ' +
  lkpTipoParcela.EditValue)
end;

function TfrmUpdateFerias.setarOperacao(tipo: Integer): boolean;
begin
  OPERACAO := tipo;
  Result := true;
end;

end.
