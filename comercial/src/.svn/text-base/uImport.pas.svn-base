unit uImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, JvCsvData,  ExtCtrls, DBCtrls,
  ComCtrls, JvCSVParse, Buttons, DBxPress, FMTBcd, DBClient, Provider,
  SqlExpr, JvBaseDlg, JvProgressDialog, TFlatGaugeUnit;

type
  TfImport = class(TForm)
    JvCsvDataSet1: TJvCsvDataSet;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    s_produtos: TSQLDataSet;
    p_produtos: TDataSetProvider;
    c_produtos: TClientDataSet;
    s_produtosCODPRODUTO: TIntegerField;
    s_produtosFAMILIA: TStringField;
    s_produtosCATEGORIA: TStringField;
    s_produtosMARCA: TStringField;
    s_produtosUNIDADEMEDIDA: TStringField;
    s_produtosDATAULTIMACOMPRA: TDateField;
    s_produtosESTOQUEMAXIMO: TFloatField;
    s_produtosESTOQUEATUAL: TFloatField;
    s_produtosESTOQUEREPOSICAO: TFloatField;
    s_produtosESTOQUEMINIMO: TFloatField;
    s_produtosVALORUNITARIOATUAL: TFloatField;
    s_produtosVALORUNITARIOANTERIOR: TFloatField;
    s_produtosICMS: TFloatField;
    s_produtosCODALMOXARIFADO: TIntegerField;
    s_produtosIPI: TFloatField;
    s_produtosCLASSIFIC_FISCAL: TStringField;
    s_produtosCST: TStringField;
    s_produtosBASE_ICMS: TFloatField;
    s_produtosPRODUTO: TStringField;
    s_produtosPRECOMEDIO: TBCDField;
    s_produtosCOD_COMISSAO: TIntegerField;
    s_produtosMARGEM_LUCRO: TFloatField;
    s_produtosCOD_BARRA: TStringField;
    s_produtosVALOR_PRAZO: TFloatField;
    s_produtosTIPO: TStringField;
    s_produtosCONTA_DESPESA: TStringField;
    s_produtosCONTA_RECEITA: TStringField;
    s_produtosCONTA_ESTOQUE: TStringField;
    s_produtosRATEIO: TStringField;
    s_produtosCODPRO: TStringField;
    s_produtosQTDE_PCT: TFloatField;
    s_produtosPESO_QTDE: TFloatField;
    s_produtosDATACADASTRO: TSQLTimeStampField;
    s_produtosMARGEM: TFloatField;
    s_produtosPRO_COD: TStringField;
    s_produtosDATAGRAV: TDateField;
    s_produtosCODFORN: TStringField;
    s_produtosFOTOPRODUTO: TStringField;
    s_produtosLOTES: TStringField;
    s_produtosUSA: TStringField;
    s_produtosLOCALIZACAO: TStringField;
    s_produtosTIPOPRECOVENDA: TStringField;
    s_produtosVALORMINOMO: TFloatField;
    s_produtosVALORMINIMO: TFloatField;
    s_produtosVALORCOMISSAO: TFloatField;
    s_produtosGERADESCONTO: TStringField;
    s_produtosIMPRIMIR: TStringField;
    s_produtosORIGEM: TIntegerField;
    s_produtosNCM: TStringField;
    s_produtosIMPRESSORA_1: TStringField;
    s_produtosIMPRESSORA_2: TStringField;
    s_produtosIMPRESSORA_3: TStringField;
    s_produtosLEAD_TIME: TSmallintField;
    s_produtosTAM_LOTE: TIntegerField;
    Memo1: TMemo;
    FlatGauge1: TFlatGauge;
    JvCsvDataSet1Cdigo: TStringField;
    JvCsvDataSet1DescriodoProduto: TStringField;
    JvCsvDataSet1Qutde: TStringField;
    JvCsvDataSet1UN: TStringField;
    JvCsvDataSet1Estoque: TStringField;
    JvCsvDataSet1RVenda: TStringField;
    JvCsvDataSet1Marca: TStringField;
    JvCsvDataSet1Grupo: TStringField;
    JvCsvDataSet1SubGrupo: TStringField;
    JvCsvDataSet1LocalEstoque: TStringField;
    JvCsvDataSet1CODALMOXARIFADO: TStringField;
    JvCsvDataSet1PRECO_COMPRA: TStringField;
    JvCsvDataSet1TIPO: TStringField;
    JvCsvDataSet1LOTES: TStringField;
    JvCsvDataSet1PRECOMEDIO: TStringField;
    JvCsvDataSet1PESO_QTDE: TStringField;
    JvCsvDataSet1COD_COMISSAO: TStringField;
    JvCsvDataSet1RATEIO: TStringField;
    JvCsvDataSet1CONTA_DESPESA: TStringField;
    JvCsvDataSet1NCM: TStringField;
    JvCsvDataSet1ORIGEM: TStringField;
    JvCsvDataSet1ESTOQUEMAXIMO: TStringField;
    JvCsvDataSet1ESTOQUEREPOSICAO: TStringField;
    JvCsvDataSet1ESTOQUEMINIMO: TStringField;
    JvCsvDataSet1MARGEM_LUCRO: TStringField;
    JvCsvDataSet1DATACADASTRO: TStringField;
    JvCsvDataSet1PRO_COD: TStringField;
    JvCsvDataSet1DATAGRAV: TStringField;
    JvCsvDataSet1TIPOPRECOVENDA: TStringField;
    JvCsvDataSet1VALORMINIMO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImport: TfImport;
  sql_insert : string;
  TD: TTransactionDesc;

implementation

uses UDm;

{$R *.dfm}

procedure TfImport.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);

   JvCsvDataSet1.Active := False;
   JvCsvDataSet1.AssignFromStrings(Memo1.Lines);
   JvCsvDataSet1.Active := True;

end;

procedure TfImport.BitBtn2Click(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  FlatGauge1.Progress := 0;
  FlatGauge1.MaxValue := JvCsvDataSet1.RecordCount;
  JvCsvDataSet1.First;
  while not JvCsvDataSet1.Eof do
  begin
    if (c_produtos.Active) then
      c_produtos.Close;
    c_produtos.Params[0].AsString := JvCsvDataSet1Cdigo.AsString;
    c_produtos.Open;
    if (c_produtos.IsEmpty) then
    begin
      sql_insert := 'INSERT INTO PRODUTOS (CODPRO, PRODUTO, QTDE_PCT, UNIDADEMEDIDA, VALOR_PRAZO, MARCA, ' +
                                 'FAMILIA, CATEGORIA, CODALMOXARIFADO, VALORUNITARIOATUAL, TIPO, ' +
                                 'LOTES, PRECOMEDIO, PESO_QTDE, COD_COMISSAO, RATEIO, NCM, ORIGEM, ' +
                                 'ESTOQUEMAXIMO, ESTOQUEREPOSICAO, ESTOQUEMINIMO, DATACADASTRO, ' +
                                 'PRO_COD, DATAGRAV, TIPOPRECOVENDA, VALORMINIMO ';
      sql_insert := sql_insert + ') VALUES (';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1Cdigo.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1DescriodoProduto.AsString) + ', ';
      DecimalSeparator := '.';
      sql_insert := sql_insert + JvCsvDataSet1Qutde.AsString + ', ';
      DecimalSeparator := ',';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1UN.AsString) + ', ';
      DecimalSeparator := '.';
      sql_insert := sql_insert + JvCsvDataSet1RVenda.AsString + ', ';
      DecimalSeparator := ',';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1Marca.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1Grupo.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1SubGrupo.AsString) + ', ';
      sql_insert := sql_insert + JvCsvDataSet1CODALMOXARIFADO.AsString + ', ';
      DecimalSeparator := '.';
      sql_insert := sql_insert + JvCsvDataSet1PRECO_COMPRA.AsString + ', ';
      DecimalSeparator := ',';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1TIPO.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1LOTES.AsString) + ', ';
      DecimalSeparator := '.';
      sql_insert := sql_insert + JvCsvDataSet1PRECOMEDIO.AsString + ', ';
      sql_insert := sql_insert + JvCsvDataSet1PESO_QTDE.AsString + ', ';
      DecimalSeparator := ',';
      sql_insert := sql_insert + JvCsvDataSet1COD_COMISSAO.AsString + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1RATEIO.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1CONTA_DESPESA.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1NCM.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1ORIGEM.AsString) + ', ';
      DecimalSeparator := '.';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1ESTOQUEMAXIMO.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1ESTOQUEREPOSICAO.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1ESTOQUEMINIMO.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1MARGEM_LUCRO.AsString) + ', ';
      DecimalSeparator := ',';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1DATACADASTRO.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1PRO_COD.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1DATAGRAV.AsString) + ', ';
      sql_insert := sql_insert + QuotedStr(JvCsvDataSet1TIPOPRECOVENDA.AsString) + ', ';
      DecimalSeparator := '.';
      sql_insert := sql_insert + JvCsvDataSet1VALORMINIMO.AsString + ')';
      DecimalSeparator := ',';
    end
    else
    begin
         sql_insert := 'UPDATE PRODUTOS SET VALOR_PRAZO = ' + JvCsvDataSet1RVenda.AsString +
         ', PRODUTO = ' + QuotedStr(JvCsvDataSet1DescriodoProduto.AsString) +
         ', NCM = ' + QuotedStr(JvCsvDataSet1NCM.AsString) +
         ', PRECOMEDIO = ' + JvCsvDataSet1PRECOMEDIO.AsString +
         ', VALORUNITARIOATUAL = ' + JvCsvDataSet1PRECO_COMPRA.AsString +
         ', MARGEM = '+ JvCsvDataSet1MARGEM_LUCRO.AsString +
         ', TIPOPRECOVENDA = ' + QuotedStr(JvCsvDataSet1TIPOPRECOVENDA.AsString);
         if (JvCsvDataSet1ORIGEM.AsString = 'Nac.') then
            sql_insert := sql_insert + ', ORIGEM = 0'
         else if(JvCsvDataSet1ORIGEM.AsString = 'Imp. Ext.') then
            sql_insert := sql_insert + ', ORIGEM = 1'
         else
            sql_insert := sql_insert + ', ORIGEM = 2';
         sql_insert := sql_insert + ' where CODPRO = ' + QuotedStr(JvCsvDataSet1Cdigo.AsString);
    end;
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(sql_insert);
      dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro .', mtError,
           [mbOk], 0);
    end;
    FlatGauge1.Progress := FlatGauge1.Progress + 1;
    JvCsvDataSet1.Next;
  end;

end;

end.
