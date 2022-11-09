unit ufUpdateEstagio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxMemo, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, Menus, cxButtons;

type
  TfrmUpdateEstagio = class(TForm)
    pnlBotoes: TPanel;
    Label2: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    Button1: TButton;
  private
    { Private declarations }
  public
    function carregarDados:boolean;
  end;

var
  frmUpdateEstagio: TfrmUpdateEstagio;

implementation

uses uDMEstagiario;

{$R *.dfm}

{ TfrmUpdateEstagio }

function TfrmUpdateEstagio.carregarDados: boolean;
begin
  with DMEstagiario.qryPesquisa do
  begin
    if FieldByName('Supervisor_Estagiario').IsNull
    then edtSupervisor_Estagiario.Text := ''
    else edtSupervisor_Estagiario.Text := Trim(FieldValues['Supervisor_Estagiario']);

    // Manter o valor do campo <> no registro EstadoEdicao
//    EstadoEdicao.Supervisor_Estagiario[0]   := Trim(edtSupervisor_Estagiario.Text);



    if FieldByName('Dt_InicioContrato1_Estagiario').IsNull
    then edtDt_InicioContrato1_Estagiario.Text := ''
    else edtDt_InicioContrato1_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato1_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato1_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato1_Estagiario[0]   := Trim(edtDt_InicioContrato1_Estagiario.Text);

    if FieldByName('Dt_InicioContrato2_Estagiario').IsNull
    then edtDt_InicioContrato2_Estagiario.Text := ''
    else edtDt_InicioContrato2_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato2_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato2_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato2_Estagiario[0]   := Trim(edtDt_InicioContrato2_Estagiario.Text);

    if FieldByName('Dt_InicioContrato3_Estagiario').IsNull
    then edtDt_InicioContrato3_Estagiario.Text := ''
    else edtDt_InicioContrato3_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato3_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato3_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato3_Estagiario[0]   := Trim(edtDt_InicioContrato3_Estagiario.Text);

    if FieldByName('Dt_InicioContrato4_Estagiario').IsNull
    then edtDt_InicioContrato4_Estagiario.Text := ''
    else edtDt_InicioContrato4_Estagiario.Text := Trim(FieldValues['Dt_InicioContrato4_Estagiario']);

    // Manter o valor do campo Dt_InicioContrato4_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_InicioContrato4_Estagiario[0]   := Trim(edtDt_InicioContrato4_Estagiario.Text);


    if FieldByName('Dt_TerminoContrato1_Estagiario').IsNull
    then edtDt_TerminoContrato1_Estagiario.Text := ''
    else edtDt_TerminoContrato1_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato1_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato1_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato1_Estagiario[0]   := Trim(edtDt_TerminoContrato1_Estagiario.Text);


    if FieldByName('Dt_TerminoContrato2_Estagiario').IsNull
    then edtDt_TerminoContrato2_Estagiario.Text := ''
    else edtDt_TerminoContrato2_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato2_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato2_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato2_Estagiario[0]   := Trim(edtDt_TerminoContrato2_Estagiario.Text);

    if FieldByName('Dt_TerminoContrato3_Estagiario').IsNull
    then edtDt_TerminoContrato3_Estagiario.Text := ''
    else edtDt_TerminoContrato3_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato3_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato3_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato3_Estagiario[0]   := Trim(edtDt_TerminoContrato3_Estagiario.Text);

    if FieldByName('Dt_TerminoContrato4_Estagiario').IsNull
    then edtDt_TerminoContrato4_Estagiario.Text := ''
    else edtDt_TerminoContrato4_Estagiario.Text := Trim(FieldValues['Dt_TerminoContrato4_Estagiario']);

    // Manter o valor do campo Dt_TerminoContrato4_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Dt_TerminoContrato4_Estagiario[0]   := Trim(edtDt_TerminoContrato4_Estagiario.Text);

    if FieldByName('Supervisor_Estagiario').IsNull
    then edtSupervisor_Estagiario.Text := ''
    else edtSupervisor_Estagiario.Text := Trim(FieldValues['Supervisor_Estagiario']);

    // Manter o valor do campo Supervisor_Estagiario no registro EstadoEdicao
//    EstadoEdicao.Supervisor_Estagiario[0]   := Trim(edtSupervisor_Estagiario.Text);

    if FieldByName('InstituicaoEnsino').IsNull
    then edtInstituicaoEnsino.Text := ''
    else edtInstituicaoEnsino.Text := Trim(FieldValues['InstituicaoEnsino']);

    // Manter o valor do campo Supervisor_Estagiario no registro EstadoEdicao
//    EstadoEdicao.InstituicaoEnsino[0]   := Trim(edtInstituicaoEnsino.Text);


    if FieldByName('TurnoEstagio').IsNull
    then edtTurnoEstagio.Text := ''
    else edtTurnoEstagio.Text := Trim(FieldValues['TurnoEstagio']);

    // Manter o valor do campo TurnoEstagio no registro EstadoEdicao
//    EstadoEdicao.TurnoEstagio[0]   := Trim(edtTurnoEstagio.Text);

    if FieldByName('Semestre').IsNull
    then edtSemestre.Text := ''
    else edtSemestre.Text := Trim(FieldValues['Semestre']);

    // Manter o valor do campo Semestre no registro EstadoEdicao
//    EstadoEdicao.Semestre[0]   := Trim(edtSemestre.Text);

    if FieldByName('Observacao').IsNull
    then mmoObservacao_Estagio.Text := ''
    else mmoObservacao_Estagio.Text := Trim(FieldValues['Observacao']);

    // Manter o valor do campo <> no registro EstadoEdicao
//    EstadoEdicao.observacao[0]   := Trim(mmoObservacao_Estagio.Text);
  end;
end;

end.
