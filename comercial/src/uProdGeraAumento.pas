unit uProdGeraAumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DBLocal, DBLocalS, DB, DBClient,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Buttons, JvExStdCtrls,
  JvEdit, JvValidateEdit, TFlatGaugeUnit, ExtCtrls, JvCombobox,
  JvDBSearchComboBox, DBCtrls;

type
  TfProdGeraAumento = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    FlatGauge1: TFlatGauge;
    Label4: TLabel;
    Valor: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    btnProdutoProcura: TBitBtn;
    Edit3: TEdit;
    JvDBGrid1: TJvDBGrid;
    Edit4: TEdit;
    Label1: TLabel;
    cbMarca: TJvDBSearchComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dstCategoria: TDataSource;
    dstMarca: TDataSource;
    dst_familia: TDataSource;
    DtSrc: TDataSource;
    cbFamilia: TJvDBSearchComboBox;
    cbCategoria: TJvDBSearchComboBox;
    edValor: TEdit;
    sdsLista: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsLista: TClientDataSet;
    cdsListaCODLISTADET: TIntegerField;
    cdsListaCODLISTA: TIntegerField;
    cdsListaCODPRODUTO: TIntegerField;
    cdsListaPRODUTO: TStringField;
    cdsListaALTPRECO: TStringField;
    cdsListaDESCONTO: TStringField;
    cdsListaDESCONTOMAX: TFloatField;
    cdsListaDESCONTOMIN: TFloatField;
    cdsListaMARGEM: TStringField;
    cdsListaMARGEMMAX: TFloatField;
    cdsListaMARGEMMIN: TFloatField;
    cdsListaESTOQUE: TFloatField;
    cdsListaPRECOCOMPRA: TFloatField;
    cdsListaPRECOVENDA: TFloatField;
    cdsListaCODPRO: TStringField;
    ds: TDataSource;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnIncluir: TBitBtn;
    sqlLista: TSQLQuery;
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFamiliaExit(Sender: TObject);
    procedure cbCategoriaExit(Sender: TObject);
    procedure cbMarcaExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    codlistaPreco : String;
    { Public declarations }
  end;

var
  fProdGeraAumento: TfProdGeraAumento;

implementation

uses uProcurar, UDm;

{$R *.dfm}

procedure TfProdGeraAumento.btnProdutoProcuraClick(Sender: TObject);
begin
  {fProcurar:= TfProcurar.Create(self,scds_produto);
  try
    fProcurar.btnImprimir.Visible := false;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'PRODUTO';
    fProcurar.ShowModal;
    Edit1.Text := scds_produtoCODPRO.AsString;
    Edit2.Text := scds_produtoPRODUTO.AsString;
    edit4.text := FloatToStr(scds_produtoVALOR_PRAZO.AsFloat);
    scds_produto.Close;
    scds_produto.Params[0].AsString := edit2.Text;
    scds_produto.Params[1].AsString := cbFamilia.Text;
    scds_produto.Params[3].AsString := cbMarca.Text;
    scds_produto.Params[5].AsString := cbCategoria.Text;
    scds_produto.Open;
  finally
    fProcurar.Free;
  end;}
end;

procedure TfProdGeraAumento.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked = True) then
  begin
    CheckBox2.Checked := False;
    CheckBox3.Checked := False;
  end;
end;

procedure TfProdGeraAumento.CheckBox2Click(Sender: TObject);
begin
  if (CheckBox2.Checked = True) then
  begin
    CheckBox1.Checked := False;
    CheckBox3.Checked := False;
  end;
end;

procedure TfProdGeraAumento.CheckBox3Click(Sender: TObject);
begin
  if (CheckBox3.Checked = True) then
  begin
    CheckBox2.Checked := False;
    CheckBox1.Checked := False;
  end;
end;

procedure TfProdGeraAumento.BitBtn2Click(Sender: TObject);
begin
  fProdGeraAumento.Close;
end;

procedure TfProdGeraAumento.FormCreate(Sender: TObject);
begin
//*****************************************************
// abre as tabelas Marca, familia, Categoria
  if (not DM.cds_Marca.Active) then
    DM.cds_Marca.Open;
  cbMarca.Text := '';

  if (DM.cds_familia.Active) then
    DM.cds_familia.Close;
  DM.cds_familia.Open;
  cbFamilia.Text := '';

  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].AsString := 'todos';
  DM.cds_categoria.Params[2].Clear;
  DM.cds_categoria.Open;
  cbCategoria.Text := '';  

end;

procedure TfProdGeraAumento.cbFamiliaExit(Sender: TObject);
begin
  inherited;
  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
  DM.cds_categoria.Open;
  cbCategoria.Text := '';
  //scds_produto.Params[1].AsString := cbFamilia.Text;
end;

procedure TfProdGeraAumento.cbCategoriaExit(Sender: TObject);
begin
  //scds_produto.Params[5].AsString := cbCategoria.Text;
end;

procedure TfProdGeraAumento.cbMarcaExit(Sender: TObject);
begin
  //scds_produto.Params[3].AsString := cbMarca.Text;
end;

procedure TfProdGeraAumento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfProdGeraAumento.btnIncluirClick(Sender: TObject);
var
  codBkpLista : integer;
  varValor, precoNovo : Double;
  strLista, avancar: string;
begin
  varValor := 0;
  if (not cdsLista.Active) then
  begin
    ShowMessage('Clique no botão procurar primeiro, para abrir a lista.');
    exit;
  end;
  //VERIFICA SE FOI TICADO ALGUMA ALTERAÇÃO
  if ((CheckBox1.Checked = False) and (CheckBox2.Checked = False) and (CheckBox3.Checked = False)) then
  begin
    ShowMessage('é nescessario marcar um dos seguintes campos "Percentual %", "Reais R$", "Mudar o Valor"');
    exit;
  end;

  //VERIFICA SE HÁ ALTERAÇÃO A SER FEITA
  if (StrToFloat(edValor.Text) = 0) then
  begin
    ShowMessage('é nescessario informar o campo Valor');
    exit;
  end;
  // ALTERA O VALOR
  {if (CheckBox1.Checked = True) then // PERCENTUAL
    varValor := scds_produtoVALOR_PRAZO.Value * (1 + (StrToFloat(edValor.Text) / 100));

  if (CheckBox2.Checked = True) then // ACRESCIMO
    varValor := StrToFloat(edValor.Text) + scds_produtoVALOR_PRAZO.Value;
  }
  varValor := StrToFloat(edValor.Text);
  if (CheckBox3.Checked = True) then // ALTERA VALOR
    varValor := StrToFloat(edValor.Text);

  FlatGauge1.MaxValue := cdsLista.RecordCount;
  FlatGauge1.Progress := 1;
  Label4.Caption := 'Aguarde enquanto o sistema atualiza o Preço';
  Label4.Font.Color := clRed;

  if (FlatGauge1.MaxValue = 0) then
    exit;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENLISTVEN, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  codBkpLista := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  strLista := 'INSERT INTO LISTAPRECO_VENDA (CODLISTA, CODCLIENTE, NOMELISTA, ' +
    'VALIDADE, DATAINICIAL, DATAFINAL) ';
  strLista := strLista + ' SELECT ' + IntToStr(codBkpLista) + ' , CODCLIENTE, ';
  strLista := strLista + QuotedStr('BKP_' + IntToStr(codBkpLista)) + ' || NOMELISTA, ';
  strLista := strLista + ' VALIDADE, DATAINICIAL, DATAFINAL from LISTAPRECO_VENDA ' +
    ' where codlista = ' + codListaPreco;

  dm.sqlsisAdimin.ExecuteDirect(strLista);

  // fazer um backup da lista primeiro
  strLista := 'INSERT INTO LISTAPRECO_VENDADET (CODLISTADET, CODLISTA, CODPRODUTO, ' +
    'PRODUTO, ALTPRECO, DESCONTO, DESCONTOMAX, DESCONTOMIN, MARGEM, MARGEMMAX, ' +
    ' MARGEMMIN, ESTOQUE, PRECOCOMPRA, PRECOVENDA) ';
  strLista := strLista + ' SELECT GEN_ID(GENLISTVEN_DET, 1), ' + IntToStr(codBkpLista) + ', CODPRODUTO, ' +
    'PRODUTO, ALTPRECO, DESCONTO, DESCONTOMAX, DESCONTOMIN, MARGEM, MARGEMMAX, ' +
    ' MARGEMMIN, ESTOQUE, PRECOCOMPRA, PRECOVENDA ' +
    ' FROM LISTAPRECO_VENDADET ' +
    ' WHERE CODLISTA = ' + codListaPreco;
  dm.sqlsisAdimin.ExecuteDirect(strLista);

  cdsLista.First;
  while not cdsLista.Eof do
  begin
    FlatGauge1.Progress := FlatGauge1.Progress + 1;

    //CARREGA O VALOR A SER ALTERADO
    strLista := 'UPDATE LISTAPRECO_VENDADET SET PRECOVENDA =  ';
    DecimalSeparator := '.';
    precoNovo := cdsListaPRECOVENDA.AsFloat * (1+(varValor/100));
    strLista := strLista + Format('%-6.2n',[precoNovo]);
    strLista := strLista + ' where CODLISTADET = ' + IntToStr(cdsListaCODLISTADET.AsInteger);

    DM.sqlsisAdimin.ExecuteDirect(strLista);
    DecimalSeparator := ',';

    cdsLista.Next;
  end;

  Label4.Font.Color := clBlue;
  Label4.Caption := 'Preços Alterados.';
end;

procedure TfProdGeraAumento.btnProcurarClick(Sender: TObject);
var strLista: String;
begin
  if (cdsLista.Active) then
    cdsLista.Close;
  cdsLista.CommandText := 'SELECT  l.*, p.CODPRO  ' +
    ' FROM LISTAPRECO_VENDADET  l, PRODUTOS P ' +
    ' where l.codproduto = p.codproduto ' +
    '   and l.CODLISTA = ' + codListaPreco +
    '   and l.PRECOVENDA > 0 ' +
    ' order by p.CODPRO';
  cdsLista.Open;
  sqlLista.SQL.Clear;
  sqlLista.SQL.Add('SELECT * FROM LISTAPRECO_VENDA WHERE CODLISTA = ' + codListaPreco);
  sqlLista.Open;

end;

end.                                           
