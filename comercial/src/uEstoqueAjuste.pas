unit uEstoqueAjuste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, FMTBcd, DBClient, SqlExpr, Provider, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, DateUtils,
  JvBaseEdits, umovimento, uCompraCls, DBXpress;

type
  TfEstoqueAjuste = class(TfPai_new)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edit3: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    edit4: TEdit;
    BitBtn5: TBitBtn;
    dbgrd1: TDBGrid;
    DSP1: TDataSetProvider;
    sds1: TSQLDataSet;
    cds1: TClientDataSet;
    sdscds1CODPRODUTO: TIntegerField;
    strngfldcds1COD_BARRA: TStringField;
    strngfldcds1CODPRO: TStringField;
    strngfldcds1PRODUTO: TStringField;
    cds1PRECO_VENDA: TFloatField;
    cds1PRECO_COMPRAULTIMO: TFloatField;
    cds1QTDE_PCT: TFloatField;
    strngfldcds1UNIDADEMEDIDA: TStringField;
    strngfldcds1GRUPO: TStringField;
    strngfldcds1SUBGRUPO: TStringField;
    strngfldcds1MARCA: TStringField;
    cds1ESTOQUEATUAL: TFloatField;
    cds1PEDIDO: TFloatField;
    sdscds1CODALMOXARIFADO: TIntegerField;
    cds1ICMS: TFloatField;
    cds1IPI: TFloatField;
    strngfldcds1TIPO: TStringField;
    strngfldcds1LOCALIZACAO: TStringField;
    strngfldcds1LOTES: TStringField;
    cds1PESO_QTDE: TFloatField;
    cds1PRECO_COMPRAMEDIO: TFloatField;
    cds1MARGEM: TFloatField;
    strngfldcds1CODIGO: TStringField;
    strngfldcds1USO: TStringField;
    strngfldcds1USA: TStringField;
    sdscds1COD_COMISSAO: TIntegerField;
    strngfldcds1RATEIO: TStringField;
    strngfldcds1CONTA_DESPESA: TStringField;
    strngfldcds1APLICACAO_PRODUTO: TStringField;
    cds1MESANO: TDateField;
    cds1ESTOQUEMAXIMO: TFloatField;
    cds1ESTOQUEMINIMO: TFloatField;
    cds1ESTOQUEREPOSICAO: TFloatField;
    strngfldcds1LOTE: TStringField;
    ds1: TDataSource;
    grp2: TGroupBox;
    lblEstoque: TLabel;
    lblPrecoCusto: TLabel;
    sqlEstoque: TSQLQuery;
    sqlEstoqueCODPRODUTO: TIntegerField;
    sqlEstoqueLOTE: TStringField;
    sqlEstoqueMESANO: TDateField;
    sqlEstoqueQTDEENTRADA: TFloatField;
    sqlEstoqueQTDECOMPRA: TFloatField;
    sqlEstoqueQTDEDEVCOMPRA: TFloatField;
    sqlEstoqueQTDESAIDA: TFloatField;
    sqlEstoqueQTDEVENDA: TFloatField;
    sqlEstoqueQTDEPERDA: TFloatField;
    sqlEstoquePRECOCUSTO: TFloatField;
    sqlEstoquePRECOCOMPRA: TFloatField;
    sqlEstoquePRECOCOMPRAULTIMA: TFloatField;
    sqlEstoquePRECOVENDA: TFloatField;
    sqlEstoqueCENTROCUSTO: TIntegerField;
    sqlEstoqueQTDEDEVVENDA: TFloatField;
    sqlEstoqueQTDEINVENTARIO: TFloatField;
    sqlEstoqueSALDOMESANTERIOR: TFloatField;
    sqlEstoqueSALDOESTOQUE: TFloatField;
    meDta1: TJvDatePickerEdit;
    edValor: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edit3Exit(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    codProd, CCusto: Integer;
    mesano: TDateTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstoqueAjuste: TfEstoqueAjuste;

implementation

uses ufprocura_prod, UDm;

{$R *.dfm}

procedure TfEstoqueAjuste.btnIncluirClick(Sender: TObject);
var
  TDA: TTransactionDesc;
  FMov: TMovimento;
  FCom: TCompraCls;
  codMovSaida, codMovEntrada : Integer;
  Save_Cursor:TCursor;
begin

  if (ComboBox1.Text <> 'TODOS') then
  begin
    dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
   cCusto := dm.cds_ccustoCODIGO.asInteger;
  end;
  if CCusto <> 0 then
  begin
    TDA.TransactionID  := 1;
    TDA.IsolationLevel := xilREADCOMMITTED;

    Save_Cursor   := Screen.Cursor;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }

    Try
      FMov := TMovimento.Create;
      FCom := TCompraCls.Create;

      Try
        dm.sqlsisAdimin.StartTransaction(TDA);

        FMov.CodMov      := 0;
        FMov.CodCCusto   := cCusto;
        FMov.CodCliente  := 0;
        FMov.CodFornec   := 0;
        FMov.CodNatureza := 1;
        FMov.Status      := 0;
        FMov.CodUsuario  := 1;
        FMov.CodVendedor := 1;
        FMov.DataMov     := mesano;
        FMov.Obs         := 'AJUSTE VALOR DE ' + lblPrecoCusto.Caption + ' PARA ' +
          FloaTToStr(edValor.Value);
        codMovEntrada := FMov.inserirMovimento(0);
        FMov.MovDetalhe.CodMov        := codMovEntrada;
        FMov.MovDetalhe.CodProduto    := codProd;
        FMov.MovDetalhe.Qtde          := 0;
        FMov.MovDetalhe.Preco         := edValor.Value;
        FMov.MovDetalhe.Baixa         := '0';
        FMov.MovDetalhe.inserirMovDet;
        fCom.CodMov               := codMovEntrada;
        fCom.DataCompra           := mesano;
        fCom.DataVcto             := mesano;
        fCom.Serie                := 'I';
        fCom.NotaFiscal           := codMovEntrada;
        fCom.CodFornecedor        := 1;
        fCom.CodUsuario           := 1;
        fCom.CodComprador         := 1;
        fCom.CodCCusto            := cCusto;
        fCom.ValorPagar           := 0;
        fCom.NParcela             := 1;
        fCom.inserirCompra(0);

        //dmnf.baixaEstoque(codMovEntrada, dta.Date, 'ENTRADA');

        DecimalSeparator := '.';
        dm.sqlsisAdimin.ExecuteDirect('UPDATE ESTOQUEMES SET PRECOCUSTO = ' +
          FloatToStr(edValor.Value) +
          ' ,PRECOCOMPRA = ' + FloatToStr(edValor.Value) +
          ' Where CODPRODUTO   = ' + IntToStr(codProd) +
          '   and MESANO       = ' + QuotedStr(formatdatetime('mm/dd/yyyy', mesano)) +
          '   and CENTROCUSTO = ' + IntToSTR(cCusto));
        DecimalSeparator := ',';

        dm.sqlsisAdimin.Commit(TDA);
        MessageDlg('Produto ajustado com sucesso.', mtInformation,
             [mbOk], 0);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
        end;
      end;
    Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
      FCom.Free;
      FMov.Free;
    end;
  end
  else
    MessageDlg('Selecione um Centro de Custo.', mtWarning, [mbOK], 0);

end;

procedure TfEstoqueAjuste.BitBtn1Click(Sender: TObject);
begin
  var_F := 'filtroEstoque';
  varonde := 'mat_prima';
  fProcura_prod.ShowModal;
  Edit3.Text := fProcura_prod.fecodProd;
  Edit4.Text := fProcura_prod.fenomeProduto;
  //varProd := fProcura_prod.fecodProduto;
end;

procedure TfEstoqueAjuste.edit3Exit(Sender: TObject);
var ano, mes, dia: Word;

begin
//  DecodeDate(Today, ano, mes, dia);
//  mesano := StartOfAMonth(ano, mes);
  if (Edit3.Text = '') then exit;
  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := Edit3.Text;
  dm.scds_produto_proc.Open;
  Edit4.Text:=dm.scds_produto_procPRODUTO.asString;
  codProd := dm.scds_produto_procCODPRODUTO.AsInteger;

  if (sqlEstoque.Active) then
    sqlEstoque.Close;
  sqlEstoque.ParamByName('codp').AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
  sqlEstoque.Open;

  lblEstoque.Caption    := 'Estoque : ' + FloatToStr(sqlEstoqueSALDOESTOQUE.AsFloat);
  lblPrecoCusto.Caption := 'Preço custo : ' + FloatToStr(sqlEstoquePRECOCUSTO.AsFloat);
  mesano := sqlEstoqueMESANO.AsDateTime;
  meDta1.Text := DateToStr(sqlEstoqueMESANO.AsDateTime);
  sqlEstoque.Close;
  dm.scds_produto_proc.Close;  
end;

procedure TfEstoqueAjuste.btnProcurarClick(Sender: TObject);
Var
  SqlTexto, sqlStr: String;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    sqlStr := 'select * ' +
    ' FROM LISTA_ESTOQUE(';
     sqlStr := sqlStr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + ''')';


    // codproduto

    if edit3.Text<>'' then
    begin
      if sqlTexto = '' then
        sqlTexto := sqlTexto + ' WHERE codproduto = '
      else
        sqlTexto := sqlTexto + ' AND codproduto = ';
        sqlTexto := sqlTexto + edit3.Text ;
    end;

    IF (cds1.Active) then
      cds1.Close;
    cds1.CommandText := sqlStr + sqlTexto;
    cds1.Open;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end
end;

procedure TfEstoqueAjuste.FormCreate(Sender: TObject);
var conta_local, varsql : string;
begin
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  ComboBox1.Items.Add('TODOS');
  While not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;

end;

end.
