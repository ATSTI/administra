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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnProdutoProcura: TBitBtn;
    Edit3: TEdit;
    JvDBGrid1: TJvDBGrid;
    scds_produto: TSQLClientDataSet;
    scds_produtoCODPRODUTO: TIntegerField;
    scds_produtoCODPRO: TStringField;
    scds_produtoPRODUTO: TStringField;
    scds_produtoVALOR_PRAZO: TFloatField;
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
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbFamiliaExit(Sender: TObject);
    procedure cbCategoriaExit(Sender: TObject);
    procedure cbMarcaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdGeraAumento: TfProdGeraAumento;

implementation

uses uProcurar, UDm;

{$R *.dfm}

procedure TfProdGeraAumento.btnProdutoProcuraClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,scds_produto);
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
  end;
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

procedure TfProdGeraAumento.BitBtn1Click(Sender: TObject);
var
  I : integer;
  varValor : Double;
  sqlTexto, avancar: string;

begin
  varValor := 0;
  if (scds_produto.Active) then
    scds_produto.Close;
  scds_produto.Open;
  FlatGauge1.MaxValue := scds_produto.RecordCount;
  FlatGauge1.Progress := 1;
  Label4.Caption := 'Aguarde enquanto o sistema atualiza o Preço';
  Label4.Font.Color := clRed;
  I := 0;
  if (FlatGauge1.MaxValue = 0) then
    exit;
  while not scds_produto.Eof do
  begin
      avancar := 'NAO';
      if (I > 0) then
       FlatGauge1.Progress := FlatGauge1.Progress + 1
      else
        I := 1;
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
      if (CheckBox1.Checked = True) then // PERCENTUAL
         varValor := scds_produtoVALOR_PRAZO.Value * (1 + (StrToFloat(edValor.Text) / 100));

      if (CheckBox2.Checked = True) then // ACRÉSCIMO
         varValor := StrToFloat(edValor.Text) + scds_produtoVALOR_PRAZO.Value;

      if (CheckBox3.Checked = True) then // ALTERA VALOR
         varValor := StrToFloat(edValor.Text);

      if (Edit3.Text <> '') then //Produtos
         if (scds_produtoCODPRODUTO.AsInteger <> StrToInt(Edit3.Text)) then
           avancar := 'SIM';
      // Agora é só fazer o update
      if (avancar = 'NAO') then
      begin

        //CARREGA O VALOR A SER ALTERADO
        sqlTexto := 'Update PRODUTOS set VALOR_PRAZO =  ';
        DecimalSeparator := '.';
        sqlTexto := sqlTexto + Format('%-6.2n',[varValor]);
        sqlTexto := sqlTexto + ' where CODPRODUTO = ' + IntToStr(scds_produtoCODPRODUTO.AsInteger);

        DM.sqlsisAdimin.ExecuteDirect(sqlTexto);
        DecimalSeparator := ',';
        scds_produto.Next;
      end
      else
      begin
        scds_produto.Next;
      end;
  end;
  scds_produto.Close;
  scds_produto.Params[0].AsString := edit2.Text;
  scds_produto.Params[1].AsString := cbFamilia.Text;
  scds_produto.Params[3].AsString := cbMarca.Text;
  scds_produto.Params[5].AsString := cbCategoria.Text;
  scds_produto.Open;
  Label4.Font.Color := clBlue;
  Label4.Caption := 'Preços Alterados.';
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
  scds_produto.Params[1].AsString := cbFamilia.Text;
end;

procedure TfProdGeraAumento.cbCategoriaExit(Sender: TObject);
begin
  scds_produto.Params[5].AsString := cbCategoria.Text;
end;

procedure TfProdGeraAumento.cbMarcaExit(Sender: TObject);
begin
  scds_produto.Params[3].AsString := cbMarca.Text;
end;

end.
