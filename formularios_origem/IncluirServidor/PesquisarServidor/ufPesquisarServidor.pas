unit ufPesquisarServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids,
  cxMemo, DBCtrls;

type
  TfrmPesquisarServidor = class(TForm)
    cxGroupBox1: TcxGroupBox;
    edtValorPesquisa: TcxTextEdit;
    grdResultado: TcxGroupBox;
    grpResultado: TGroupBox;
    Label2: TLabel;
    Image2: TImage;
    lblAtivo: TLabel;
    Image1: TImage;
    lblDeslig_Cargo: TLabel;
    Image3: TImage;
    lblDeslig_Funcao: TLabel;
    Image4: TImage;
    lblRequisitado: TLabel;
    Label3: TLabel;
    btnPesquisar: TSpeedButton;
    mmoSQL: TcxMemo;
    lblNumeroRegistros: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    stlAtivo: TcxStyle;
    stlRequisitado: TcxStyle;
    stlDesligadoCargo: TcxStyle;
    stlDesligadoFuncao: TcxStyle;
    txtNome: TDBText;
    cxStyle1: TcxStyle;
    dsPessoal: TDataSource;
    txtCargo: TDBText;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label6: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    function preparaSQL:String;
    procedure btnPesquisarClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure dsPessoalDataChange(Sender: TObject; Field: TField);
    procedure edtValorPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisarServidor: TfrmPesquisarServidor;

implementation

uses uDmCadastroServidor, PRG_utils, uPesFuncoes, ufServidorDetalhe;

{$R *.dfm}

procedure TfrmPesquisarServidor.btnPesquisarClick(Sender: TObject);
begin

  with dmCadastroServidor.qryPessoal do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add(preparaSQL);
    mmoSQL.Text := SQL.Text;
    Active := True;
  end;

  lblNumeroRegistros.Caption := 'Nº de registros encontrados: '
  + IntToStr(dmCadastroServidor.qryPessoal.RecordCount);

end;

function TfrmPesquisarServidor.preparaSQL: String;
var
  SQL: string;
begin
  SQL := 'SET DATEFORMAT dmy'
  + ' SELECT '


  + ' CASE'
  + ' WHEN civil.Descricao != ' + QuotedStr('') + ' THEN civil.Descricao'
  + '  ELSE ' + QuotedStr('NÃO INFORMADO')
  + ' END AS EstadoCivil,'

  + ' CASE'

  // Efetivos

  + ' WHEN serv.idCargo != ' + QuotedStr('999999') + ' AND '
  + '  serv.Dt_Deslig_Cargo IS NULL '
  + ' THEN ' + QuotedStr('EFETIVO ATIVO')
  + '  WHEN serv.idCargo != ' + QuotedStr('999999') + ' AND '
  + '  serv.Dt_Deslig_Cargo IS NOT NULL '
  + ' THEN ' + QuotedStr('EFETIVO INATIVO')

  // Comissionados

  + ' WHEN serv.idCargo = ' + QuotedStr('999999') + ' AND '
  + ' serv.Requisitado = 1' + ' AND '
  + '  serv.Dt_Deslig_Funcao IS NULL '
  + ' THEN ' + QuotedStr('REQUISITADO COMISSIONADO ATIVO')

  + ' WHEN serv.idCargo = ' + QuotedStr('999999') + ' AND '
  + ' serv.Requisitado = 1' + ' AND '
  + '  serv.Dt_Deslig_Funcao IS NOT NULL '
  + ' THEN ' + QuotedStr('REQUISITADO COMISSIONADO INATIVO')

  + ' WHEN serv.idCargo = ' + QuotedStr('999999') + ' AND '
  + '  serv.Dt_Deslig_Funcao IS NULL '
  + ' THEN ' + QuotedStr('COMISSIONADO ATIVO')
  + ' WHEN serv.idCargo = ' + QuotedStr('999999') + ' AND '
  + '  serv.Dt_Deslig_Funcao IS NOT NULL '
  + ' THEN ' + QuotedStr('COMISSIONADO INATIVO')

  // Requisitados

  + ' WHEN serv.Requisitado = 1' + ' AND '
  + '  serv.idDesligamento IS NULL '
  + ' THEN ' + QuotedStr('REQUISITADO ATIVO')
  + '  WHEN serv.Requisitado = 1' + ' AND '
  + '  serv.idDesligamento IS NOT NULL '
  + ' THEN ' + QuotedStr('REQUISITADO INATIVO')


  // Estagiários

  + ' WHEN serv.idCargo LIKE ' + QuotedStr('EST%') + ' AND '
  + '  serv.Dt_Deslig_Funcao IS NULL '
  + ' THEN ' + QuotedStr('ESTAGIÁRIO ATIVO')
  + '  WHEN serv.idCargo LIKE ' + QuotedStr('EST%') + ' AND '
  + '  serv.Dt_Deslig_Funcao IS NOT NULL '
  + ' THEN ' + QuotedStr('ESTAGIÁRIO INATIVO')

  + '  ELSE ' + QuotedStr('')
  + ' END AS SituacaoFuncional,'


//  + ' serv.idUsuario, pes1.Nome AS Operador, '
  + ' Operador=dbo.F_RetornaOperador(serv.idUsuario), '
  + ' OEE.Descricao as ExercicioExterno, PES.IDPESSOAL, PES.CPF, PES.NOME,'

  + ' pes.idpessoal, pes.cpf, pes.nome, pes.dt_nascimento,'

  //+ ' serv.*,' -- tabela Servidor

  + ' serv.idServidor,'
  + ' serv.Matr_Origem,'
  + ' serv.idCargo,'
  + ' serv.Especialidade,'
  + ' serv.idFuncao,'
  + ' serv.idLotacao,'
  + ' serv.CF_Num,'
  + ' serv.Ramal,'
  + ' serv.Sala,'
  + ' serv.Classe,'
  + ' serv.Padrao,'
  + ' serv.Dt_NomeacaoCargo,'
  + ' serv.Dt_NomeacaoCargoDODF,'
  + ' serv.Dt_PosseCargo,'
  + ' serv.Dt_ExercicioCargo,'
  + ' serv.Dt_PrimeiroExercicioGDF,'
  + ' serv.Dt_Deslig_Cargo,'
  + ' serv.Dt_Deslig_CargoDODF,'
  + ' serv.Dt_NomeacaoFuncao,'
  + ' serv.Dt_NomeacaoFuncaoDODF,'
  + ' serv.Dt_PosseFuncao,'
  + ' serv.Dt_ExercicioFuncao,'
  + ' serv.Dt_Deslig_Funcao,'
  + ' serv.Dt_Deslig_FuncaoDODF,'
  + ' serv.Dt_Falecimento,'
  + ' serv.Dt_Digitacao,'
  + ' serv.Requisitado,'
  + ' serv.OrgaoDeOrigem,'
  + ' serv.Dt_FimRequisicao,'
  + ' serv.AuxTransporte,'
  + ' serv.idDesligamento,'
  + ' serv.idUsuario,'
  + ' serv.CargaHoraria,'
  + ' serv.Dt_PromocaoCategoria2,'
  + ' serv.Dt_PromocaoSubProcurador,'
  + ' serv.AverbacaoGDF,'
  + ' serv.AverbacaoServPublico,'
  + ' serv.Dt_InicioContrato1_Estagiario,'
  + ' serv.Dt_TerminoContrato1_Estagiario,'
  + ' serv.Dt_InicioContrato2_Estagiario,'
  + ' serv.Dt_TerminoContrato2_Estagiario,'
  + ' serv.Dt_InicioContrato3_Estagiario,'
  + ' serv.Dt_TerminoContrato3_Estagiario,'
  + ' serv.Dt_InicioContrato4_Estagiario,'
  + ' serv.Dt_TerminoContrato4_Estagiario,'
  + ' serv.Supervisor_Estagiario,'
  + ' serv.DtNovaEstrutura,'
  + ' serv.CaminhoFollhaDePonto,'
  + ' serv.TurnoEstagio,'
  + ' serv.Semestre,'
  + ' serv.InstituicaoEnsino,'
 // + ' serv.observacao,' -- Este campo não está na table tbServidor do banco PGSRV19
 // + ' serv.idNucleo,' -- ídem acima
 // + ' serv.dtNucleoDistribuicao,' -- ídem acima

  //+ ' dados.*,' -- tabela Dados

  + ' dados.Endereco,'
  + ' dados.Bairro,'
  + ' dados.Cidade,'
  + ' dados.UF,'
  + ' dados.CEP,'
  + ' dados.CI_Num,'
  + ' dados.CI_UF,'
  + ' dados.CI_Emissao,'
  + ' dados.Nacionalidade,'
  + ' dados.Naturalidade,'
  + ' dados.Natural_UF,'
  + ' dados.Pis_Pasep,'
  + ' dados.TE_Num,'
  + ' dados.TE_Zona,'
  + ' dados.TE_Secao,'
  + ' dados.TE_UF,'
  + ' dados.TE_Emissao,'
  + ' dados.Pai,'
  + ' dados.Mae,'
  + ' dados.idEstadoCivil, '

  + ' dados.Conjuge,'
  + ' dados.idBanco,'
  + ' dados.Agencia,'
  + ' dados.Conta,'
  + ' dados.OAB_Num,'
  + ' dados.OAB_Secao,'
  + ' dados.Aspro_Opc,'
  + ' dados.Grau,'
  + ' dados.Curso,'
  + ' dados.TipoSanguineo,'
  + ' dados.Email,'

  + ' lot.idlotacao, lot.Sigla as SiglaLotacao, lot.descricao as descricaoLotacao,'
  + ' car.descricao as descricaoCargo,'
  + ' fun.descricao as descricaoFuncao,'
  + ' desl.descricao as desligamento'
  + ' FROM tbPessoal as pes'
  + ' LEFT JOIN tbServidor as serv ON serv.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbDados as dados ON dados.idPessoal = pes.idPessoal'
  + ' LEFT JOIN tbLotacao as lot ON lot.idLotacao = serv.idLotacao'
  + ' LEFT JOIN tbCargo as car ON car.idCargo = serv.idCargo'
  + ' LEFT JOIN tbFuncao as fun ON fun.idFuncao = serv.idFuncao'
  + ' LEFT JOIN tbEstadoCivil as civil ON civil.idEstadoCivil = dados.idEstadoCivil'
  + ' LEFT JOIN tbDesligamento as desl ON desl.idDesligamento = serv.idDesligamento'

  + ' LEFT JOIN tbOrgaoExercicioExterno oee'
  + ' ON oee.idOrgaoExercicioExterno = serv.idOrgaoExercicioExterno'
//  + ' LEFT JOIN tbPessoal as pes1 on pes1.CPF = serv.idUsuario'

  + ' WHERE 1=1 AND'

  //+  FstrNome + strMatricula + strLotacao + strCargo + strFuncao

  + ' ('

  + Gera_SQL(edtValorPesquisa.Text,'Nome')
  + ' OR ' + Gera_SQL(edtValorPesquisa.Text,'CPF')
  + ' OR ' + Gera_SQL(edtValorPesquisa.Text,'idServidor')
  + ' OR ' + Gera_SQL(edtValorPesquisa.Text,'lot.Descricao')
  + ' OR ' + Gera_SQL(edtValorPesquisa.Text,'lot.Sigla')
  + ' OR ' + Gera_SQL(edtValorPesquisa.Text,'car.Descricao')
  + ' OR ' + Gera_SQL(edtValorPesquisa.Text,'fun.Descricao')

//  + '( Nome LIKE ' + QuotedStr('%' + edtValorPesquisa.Text + '%')
//  + ' OR pes.CPF LIKE ' + QuotedStr('%' + edtValorPesquisa.Text + '%')
//  + ' OR idServidor LIKE ' + QuotedStr('%' + edtValorPesquisa.Text + '%')
//  + ' OR lot.Descricao LIKE ' + QuotedStr('%' + edtValorPesquisa.Text + '%')
//  + ' OR lot.Sigla LIKE ' + QuotedStr('%' + edtValorPesquisa.Text + '%')
//  + ' OR serv.idCargo LIKE ' + QuotedStr('%' + edtValorPesquisa.Text + '%')
//  + ' OR serv.idFuncao LIKE ' + QuotedStr('%' + edtValorPesquisa.Text + '%')

  + ')'  
  + ' ORDER BY pes.nome;';

  Result := SQL;
end;

procedure TfrmPesquisarServidor.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  stlAtivo.TextColor:= clBlack;
  stlRequisitado.TextColor := clGreen;
  stlDesligadoCargo.TextColor := clRed;
  stlDesligadoFuncao.TextColor := clBlue;

   //Inativos
   if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
   (ARecord.Values[cxGrid1DBTableView1Column5.Index] <> NULL)
   then
   begin
    AStyle := stlDesligadoCargo;
   end;

   //Requisitados
   if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
   (ARecord.Values[cxGrid1DBTableView1Column6.Index] = True)
   then
   begin
    AStyle := stlRequisitado;
   end;

   //Desligados da função (comissionados)
   if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And
   (ARecord.Values[cxGrid1DBTableView1Column7.Index] = '999999') and
   (ARecord.Values[cxGrid1DBTableView1Column8.Index] <> NULL)
   then
   begin
    AStyle := stlDesligadoFuncao;
   end;
end;

procedure TfrmPesquisarServidor.FormCreate(Sender: TObject);
begin
  dsPessoal.DataSet := dmCadastroServidor.qryPessoal;
  WindowState := wsMaximized;
  KeyPreview := true;
end;

procedure TfrmPesquisarServidor.dsPessoalDataChange(Sender: TObject;
  Field: TField);
begin
   //Inativos
   if dmCadastroServidor.qryPessoal.FieldValues['Dt_Deslig_Cargo'] <> NULL
   then
    txtNome.Font.Color := clRed
   else   //Requisitados
   if (dmCadastroServidor.qryPessoal.FieldValues['Requisitado'] = True)
   then
    txtNome.Font.Color := clGreen
   //Desligados da função (comissionados)
   else if (dmCadastroServidor.qryPessoal.FieldValues['idCargo'] = '999999') and
   (dmCadastroServidor.qryPessoal.FieldValues['Dt_Deslig_Funcao'] <> NULL)
   then
    txtNome.Font.Color := clBlue
   else txtNome.Font.Color := clBlack ;

end;

procedure TfrmPesquisarServidor.edtValorPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnPesquisarClick(Nil);

end;

procedure TfrmPesquisarServidor.edtValorPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CaracterSemAcento(Key, True);
end;

procedure TfrmPesquisarServidor.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TfrmServidorDetalhe, frmServidorDetalhe);
   frmServidorDetalhe.ShowModal;
end;

end.
