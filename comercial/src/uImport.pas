unit uImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, JvCsvData,  ExtCtrls, DBCtrls,
  ComCtrls, JvCSVParse, Buttons, DBxPress, FMTBcd, DBClient, Provider,
  SqlExpr, JvBaseDlg, JvProgressDialog, TFlatGaugeUnit, uCliente;

type
  TfImport = class(TForm)
    JvCsvDataSet1: TJvCsvDataSet;
    JvCsvDataSet2: TJvCsvDataSet;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    s_produtos: TSQLDataSet;
    p_produtos: TDataSetProvider;
    c_produtos: TClientDataSet;
    s_cliente: TSQLDataSet;
    p_cliente: TDataSetProvider;
    c_cliente: TClientDataSet;
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
    Memo2: TMemo;
    FlatGauge1: TFlatGauge;
    FlatGauge2: TFlatGauge;
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
    PageControl1: TPageControl;
    impCli: TTabSheet;
    impProd: TTabSheet;
    JvCsvDataSet2CODCLIENTE: TStringField;
    JvCsvDataSet2NOMECLIENTE: TStringField;
    JvCsvDataSet2RAZAOSOCIAL: TStringField;
    JvCsvDataSet2CONTATO: TStringField;
    JvCsvDataSet2TELEFONE: TStringField;
    JvCsvDataSet2TELEFONE1: TStringField;
    JvCsvDataSet2TELEFONE2: TStringField;
    JvCsvDataSet2FAX: TStringField;
    JvCsvDataSet2CIDADE: TStringField;
    JvCsvDataSet2NOMEUSUARIO: TStringField;
    JvCsvDataSet2UF: TStringField;
    JvCsvDataSet2ENDERECO: TStringField;
    JvCsvDataSet2FONE: TStringField;
    JvCsvDataSet2TEL: TStringField;
    JvCsvDataSet2E_MAIL: TStringField;
    JvCsvDataSet2CNPJ: TStringField;
    JvCsvDataSet2INSCESTADUAL: TStringField;
    JvCsvDataSet2CD_IBGE: TStringField;
    JvCsvDataSet2CODFISCAL: TStringField;
    JvCsvDataSet2CEP: TStringField;
    JvCsvDataSet2SEGMENTO: TStringField;
    JvCsvDataSet2TIPOFISCAL: TStringField;
    JvCsvDataSet2REGIAO: TStringField;
    JvCsvDataSet2TIPOFIRMA: TStringField;
    JvCsvDataSet2LIMITECREDITO: TStringField;
    JvCsvDataSet2CODUSUARIO: TStringField;
    JvCsvDataSet2STATUS: TStringField;
    JvCsvDataSet2DDD: TStringField;
    c_clienteCODCLIENTE: TIntegerField;
    c_clienteNOMECLIENTE: TStringField;
    c_clienteRAZAOSOCIAL: TStringField;
    c_clienteCONTATO: TStringField;
    c_clienteTIPOFIRMA: TSmallintField;
    c_clienteCPF: TStringField;
    c_clienteCNPJ: TStringField;
    c_clienteINSCESTADUAL: TStringField;
    c_clienteRG: TStringField;
    c_clienteSEGMENTO: TSmallintField;
    c_clienteREGIAO: TSmallintField;
    c_clienteLIMITECREDITO: TFloatField;
    c_clienteDATACADASTRO: TDateField;
    c_clienteCODUSUARIO: TIntegerField;
    c_clienteSTATUS: TSmallintField;
    c_clienteHOMEPAGE: TStringField;
    c_clientePRAZORECEBIMENTO: TSmallintField;
    c_clientePRAZOENTREGA: TSmallintField;
    c_clienteCODBANCO: TSmallintField;
    c_clienteBASE_ICMS: TSmallintField;
    c_clienteDATANASC: TDateField;
    c_clienteCONTA_CLIENTE: TStringField;
    c_clienteOBS: TStringField;
    c_clienteTEM_IE: TStringField;
    c_clienteDATARESC: TDateField;
    c_clienteNOMEMAE: TStringField;
    c_clienteSEXO: TStringField;
    c_clienteFORMA_CORRESPOND: TStringField;
    c_clienteGRUPO_CLIENTE: TStringField;
    c_clienteCODINCLUCANC: TIntegerField;
    c_clienteEXIST_COBERT: TStringField;
    c_clienteEXISTCOPART: TStringField;
    c_clienteDATAREINC: TDateField;
    c_clienteGERAAVISO: TStringField;
    c_clienteGERAENV: TStringField;
    c_clienteGERABOL: TStringField;
    c_clienteEMVIAGEM: TStringField;
    c_clienteDTAALTERA: TDateField;
    c_clienteSERIELETRA: TStringField;
    c_clienteSERIE: TStringField;
    c_clienteRA: TStringField;
    c_clienteIP: TStringField;
    c_clienteN_CONTRATO: TStringField;
    c_clienteMAC: TStringField;
    c_clienteMARCA: TStringField;
    c_clienteBANDA_UPLOAD: TStringField;
    c_clienteBANDA_DOWLOAD: TStringField;
    c_clienteTORRE_CONECCAO: TStringField;
    c_clienteCOD_FAIXA: TIntegerField;
    c_clienteDESCONTO: TFloatField;
    c_clienteMENSALIDADE: TFloatField;
    c_clienteANUIDADE: TFloatField;
    c_clientePARCELA: TIntegerField;
    c_clientePARCELAGERADAS: TIntegerField;
    c_clienteDATANASCIMENTO: TSQLTimeStampField;
    c_clienteANOLETIVO: TStringField;
    c_clienteSITUACAOESCOLAR: TStringField;
    c_clienteRGMAE: TStringField;
    c_clienteCPFMAE: TStringField;
    c_clientePAI: TStringField;
    c_clienteRGPAI: TStringField;
    c_clienteCPFPAI: TStringField;
    c_clienteLANCADOCLASSE: TIntegerField;
    c_clienteTRANSPORTE: TStringField;
    c_clienteCIDADENASC: TStringField;
    c_clienteUFNASC: TStringField;
    c_clienteNACIONALIDADE: TStringField;
    c_clienteCERTIDAONASCNUM: TStringField;
    c_clienteLIVRONASC: TStringField;
    c_clienteFLLIVRONASC: TStringField;
    c_clienteLOCALTRABPAI: TStringField;
    c_clienteLOCALTRABMAE: TStringField;
    c_clienteTELTRABPAI: TStringField;
    c_clienteTELTRABMAE: TStringField;
    c_clienteINFONECESSARIAS: TStringField;
    c_clienteCARTEIRAVACINACAO: TStringField;
    c_clienteRAPRODESP: TStringField;
    c_clienteLOCALTRABALUNO: TStringField;
    c_clienteTELTRABALUNO: TStringField;
    c_clienteRAPROD: TStringField;
    c_clienteCERT_NAS_COMARCA: TStringField;
    c_clienteCERT_NAS_UF: TStringField;
    c_clienteCERT_NAS_MUNICIPIO: TStringField;
    c_clienteCERT_NAS_DISTRITO: TStringField;
    c_clienteCERT_NAS_SUBDISTRITO: TStringField;
    c_clienteDIVERSO1: TStringField;
    c_clienteDIVERSO2: TStringField;
    c_clienteDATAEMISSAORG: TDateField;
    c_clienteESTADORG: TStringField;
    c_clienteCOMUNICAALUNO: TStringField;
    c_clienteFONEMAE: TStringField;
    c_clienteCELULARMAE: TStringField;
    c_clienteCOMUNICAMAE: TStringField;
    c_clienteFONEPAI: TStringField;
    c_clienteCELULARPAI: TStringField;
    c_clienteCOMUNICAPAI: TStringField;
    c_clienteVALOR_MATRICULA: TFloatField;
    c_clienteDATATRANSF: TDateField;
    c_clienteCOR_RACA: TStringField;
    c_clientePERIODO: TStringField;
    c_clienteFOTO: TStringField;
    c_clienteDATA_MATRICULA: TSQLTimeStampField;
    c_clienteCODRESPONSAVEL: TIntegerField;
    c_clienteCURSO: TStringField;
    c_clienteCOD_TRANPORTADORA: TIntegerField;
    c_clienteBLOQUEIO: TStringField;
    c_clienteCFOP: TStringField;
    c_clienteCOD_CLI: TStringField;
    c_clienteCODFISCAL: TStringField;
    c_clienteCORTESIA: TStringField;
    c_clienteVALOR_CONSUMO: TFloatField;
    c_clienteVALOR_CORTESIA: TFloatField;
    c_clienteE_FORNECEDOR: TStringField;
    c_clienteCODFORNECEDOR: TIntegerField;
    c_clienteCARGOFUNCAO: TIntegerField;
    c_clienteSUFRAMA: TStringField;
    c_clienteBLOQUEADO: TStringField;
    JvCsvDataSet2NUMERO: TStringField;
    JvCsvDataSet2BAIRRO: TStringField;
    JvCsvDataSet2CFOP: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
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

procedure TfImport.BitBtn3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo2.Lines.LoadFromFile(OpenDialog1.FileName);

   JvCsvDataSet2.Active := False;
   JvCsvDataSet2.AssignFromStrings(Memo2.Lines);
   JvCsvDataSet2.Active := True;
end;

procedure TfImport.BitBtn4Click(Sender: TObject);
var cCli: Integer;
    fCli : TCliente;
    contaImportado, NaoImportado: Integer;
begin
  contaImportado := 0;
  naoImportado := 0;
  cCli := 0;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  FlatGauge2.Progress := 0;
  FlatGauge2.MaxValue := JvCsvDataSet2.RecordCount;
  JvCsvDataSet2.First;
  Try
    Fcli := TCliente.Create;

    while not JvCsvDataSet2.Eof do
    begin
      if (trim(JvCsvDataSet2CNPJ.AsString) <> '') then
      begin
        if (c_cliente.Active) then
          c_cliente.Close;
        c_cliente.Params[0].AsString := Trim(JvCsvDataSet2CNPJ.AsString);
        c_cliente.Open;
        if (c_cliente.IsEmpty) then
        begin
          dm.sqlsisAdimin.StartTransaction(TD);
          Try
            Fcli := TCliente.Create;
            Fcli.CodCli      := 0;
            Fcli.NomeCliente := Trim(JvCsvDataSet2NOMECLIENTE.AsString);
            FCli.RazaoSocial := Trim(JvCsvDataSet2RAZAOSOCIAL.AsString);
            FCli.InscEstadual:= Trim(JvCsvDataSet2INSCESTADUAL.AsString);
            FCli.Cnpj        := Trim(JvCsvDataSet2CNPJ.AsString);
            FCli.TipoFirma   := 1;
            if (Trim(JvCsvDataSet2CODUSUARIO.AsString)<>'') then
              FCli.CodUsuario  := StrToInt(Trim(JvCsvDataSet2CODUSUARIO.AsString))
            else
              FCli.CodUsuario  := dm.varUSERID;
            FCli.DataCadastro:= Now;
            FCli.Contato     := Trim(JvCsvDataSet2CONTATO.AsString);
            FCli.CodFiscal   := Trim(JvCsvDataSet2CODFISCAL.AsString);
            FCli.Status      := 1;
            FCli.Cfop        := Trim(JvCsvDataSet2CFOP.AsString);

            cCli := FCli.inserirCliente;
            FCli.Endereco.CodEndereco := 0;
            FCli.Endereco.CodCli        := cCli;
            FCli.Endereco.TipoEndereco  := 0;
            FCli.Endereco.Pais          := 'Brasil';
            if (Trim(JvCsvDataSet2ENDERECO.AsString) <> '') then
            begin
              FCli.Endereco.Logradouro := Trim(copy(JvCsvDataSet2ENDERECO.AsString,0,48));
            end
            else
              FCli.Endereco.Logradouro := 'SEM ENDERECO';
            //FCli.Endereco.Complemento := JvCsvDataSet2COMPLEMENTO.AsString;
            FCli.Endereco.Numero        := Trim(JvCsvDataSet2NUMERO.AsString);
            FCli.Endereco.Bairro        := Trim(JvCsvDataSet2BAIRRO.AsString);
            FCli.Endereco.Cidade        := Trim(JvCsvDataSet2CIDADE.AsString);
            if (Trim(JvCsvDataSet2UF.AsString) <> '') then
              FCli.Endereco.Uf := Trim(JvCsvDataSet2UF.AsString)
            else
              FCli.Endereco.Uf := 'SP';
            FCli.Endereco.Cep      := Trim(JvCsvDataSet2CEP.AsString);
            FCli.Endereco.DDD1     := Trim(JvCsvDataSet2DDD.AsString);
            //FCli.Endereco.DDD2   := JvCsvDataSet2DDD1.AsString;
            //FCli.Endereco.DDD3   := JvCsvDataSet2DDD2.AsString;
            FCli.Endereco.Fone1    := Trim(JvCsvDataSet2FONE.AsString);
            FCli.Endereco.Email    := Trim(JvCsvDataSet2E_MAIL.AsString);
            FCli.Endereco.CodIbge  := Trim(JvCsvDataSet2CD_IBGE.AsString);

            FCli.Endereco.inserirEndereco;

            dm.sqlsisAdimin.Commit(TD);
            contaImportado := contaImportado + 1;
          except
             on E : Exception do
             begin
               ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
               dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             end;
          end;
        end;
      end
      else begin
        MessageDlg(JvCsvDataSet2NOMECLIENTE.AsString + ', cliente sem CNPJ/CPF não é feito importação.', mtWarning, [mbOK], 0);
        naoImportado := naoImportado + 1;
      end;
      FlatGauge2.Progress := FlatGauge2.Progress + 1;
      JvCsvDataSet2.Next;
    end;
    label1.Caption := 'Importado : ' + IntToStr(contaImportado);
    label2.Caption := 'Não Importado : ' + IntToStr(naoImportado);
  Finally
    FCli.Free;
  end;
end;

end.
