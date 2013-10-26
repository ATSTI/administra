unit uIncluirProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EDBFind, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  ExtCtrls, MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExStdCtrls,
  JvEdit, JvDBSearchEdit, Buttons, SqlExpr, Provider, DB, DBClient,
  DBLocal, DBLocalS;

type
  TfIncluirProdutos = class(TForm)
    MMJPanel1: TMMJPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    Edit3: TJvCalcEdit;
    Edit4: TJvCalcEdit;
    JvCalcEdit1: TJvCalcEdit;
    edPorcento: TJvCalcEdit;
    edt1: TEdit;
    cbbGarcom: TComboBox;
    cbbGarota: TComboBox;
    cbbSuites: TComboBox;
    cbb1: TComboBox;
    cbbCortesia: TComboBox;
    JvDBGrid1: TJvDBGrid;
    JvDBSearchEdit1: TJvDBSearchEdit;
    btnIncluirProduto: TBitBtn;
    btnSair: TBitBtn;
    cbbForma: TComboBox;
    Label1: TLabel;
    scds_Atentente: TSQLClientDataSet;
    scds_coloaborador: TSQLClientDataSet;
    scds_AtententeCOD_FREQUENCIA: TIntegerField;
    scds_AtententeCOD_FUNCIONARIO: TIntegerField;
    scds_AtententeDATA: TDateField;
    scds_AtententeHORAINICIO: TSQLTimeStampField;
    scds_AtententeHORASAIDA: TSQLTimeStampField;
    scds_AtententeNOMECLIENTE: TStringField;
    scds_coloaboradorCOD_FREQUENCIA: TIntegerField;
    scds_coloaboradorCOD_FUNCIONARIO: TIntegerField;
    scds_coloaboradorDATA: TDateField;
    scds_coloaboradorHORAINICIO: TSQLTimeStampField;
    scds_coloaboradorHORASAIDA: TSQLTimeStampField;
    scds_coloaboradorNOMECLIENTE: TStringField;
    scds_Suites: TSQLClientDataSet;
    scds_SuitesDESCRICAO: TStringField;
    scds_SuitesPARAMETRO: TStringField;
    scds_SuitesCONFIGURADO: TStringField;
    scds_SuitesDADOS: TStringField;
    scds_SuitesD1: TStringField;
    procedure btnIncluirProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIncluirProdutos: TfIncluirProdutos;

implementation

uses UDm, uUtils, uMovimentoDetalhe, UDM_MOV;

{$R *.dfm}

procedure TfIncluirProdutos.btnIncluirProdutoClick(Sender: TObject);
var m_det :TMovimentoDetalhe;
    utilcrtitulo : Tutils;
begin
    m_det := TMovimentoDetalhe.Create;
  m_det.CodMov := DM_MOV.ID_DO_MOVIMENTO;
  m_det.CodProduto := StrToInt(edt1.Text);
  m_det.Descricao := JvDBSearchEdit1.Text;
  m_det.Qtde := StrToFloat(Edit3.Text);
  m_det.Preco := StrToFloat(Edit4.Text);
  m_det.Acrescimo := StrToFloat(edPorcento.Text);
  m_det.Suite := cbbSuites.Text;
  if (cbbCortesia.ItemIndex = 0) then
    m_det.Cortesia := 'S'
  else
    m_det.Cortesia := 'N';

  if (cbb1.ItemIndex = 0) then
    m_det.Pagou := 'S'
  else
    m_det.Pagou := 'N';

  utilcrtitulo := Tutils.Create;
  m_det.FormaRecebimento := utilcrtitulo.pegaForma(cbbForma.Text);

  //FUNCIONARIO
  if(scds_Atentente.Active) then
    scds_Atentente.Close;
  scds_Atentente.Params[0].Clear;
  scds_Atentente.Params[1].AsString := cbbGarcom.Text;
  scds_Atentente.Open;
  m_det.Atendente := scds_AtententeCOD_FUNCIONARIO.AsInteger;

  //GATORA
  if(scds_coloaborador.Active) then
    scds_coloaborador.Close;
  scds_coloaborador.Params[0].Clear;
  scds_coloaborador.Params[1].AsString := cbbGarota.Text;
  scds_coloaborador.Open;
  m_det.Colaborador := scds_coloaboradorCOD_FUNCIONARIO.AsInteger;

  try
    m_det.inserirMovDet;
  finally
    m_det.Free;
  end;

end;

procedure TfIncluirProdutos.FormShow(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CARGO/FUNCAO';
  dm.cds_parametro.Open;

  //FUNCIONARIO
  if(scds_Atentente.Active) then
    scds_Atentente.Close;
  scds_Atentente.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  scds_Atentente.Params[1].Clear;
  scds_Atentente.Open;

  cbbGarcom.Items.Clear;
  scds_Atentente.First;
  while not scds_Atentente.Eof
  do begin
    cbbGarcom.Items.Add(scds_AtententeNOMECLIENTE.AsString);
    scds_Atentente.Next;
  end;

  //GATORA
  if(scds_coloaborador.Active) then
    scds_coloaborador.Close;
  scds_coloaborador.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  scds_coloaborador.Params[1].Clear;
  scds_coloaborador.Open;

  cbbGarota.Items.Clear;
  scds_coloaborador.First;
  while not scds_coloaborador.Eof
  do begin
    cbbGarota.Items.Add(scds_coloaboradorNOMECLIENTE.AsString);
    scds_coloaborador.Next;
  end;

  //SUITES
  if(scds_Suites.Active) then
    scds_Suites.Close;
  scds_Suites.Open;

  cbbSuites.Items.Clear;
  scds_Suites.First;
  while not scds_Suites.Eof
  do begin
    cbbSuites.Items.Add(scds_SuitesPARAMETRO.AsString);
    scds_Suites.Next;
  end;

  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbbForma.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

end;

procedure TfIncluirProdutos.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
