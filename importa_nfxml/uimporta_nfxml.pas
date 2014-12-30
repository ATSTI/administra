unit uimporta_nfxml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, ACBrNFe, ComCtrls;

type
  TfImporta_XML = class(TForm)
    sqlConn: TSQLConnection;
    sdsNF: TSQLDataSet;
    sdsNFItem: TSQLDataSet;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    dsNF: TDataSource;
    dspNfItem: TDataSetProvider;
    cdsNFItem: TClientDataSet;
    dsNFItem: TDataSource;
    cdsNFNOTAFISCAL: TIntegerField;
    cdsNFNATUREZAOPERACAO: TStringField;
    cdsNFMODELO: TStringField;
    cdsNFSERIE: TStringField;
    cdsNFEMISSAO: TDateField;
    cdsNFCNPJ_EMITENTE: TStringField;
    cdsNFCNPJ_DESTINATARIO: TStringField;
    cdsNFNOME_EMITENTE: TStringField;
    cdsNFCODCLIENTE_ATS: TIntegerField;
    cdsNFRAZAOSOCIAL_ATS: TStringField;
    cdsNFSTATUS: TSmallintField;
    sqlFaltandoFornecedor: TSQLQuery;
    lblNF: TLabel;
    sqlFaltaProd: TSQLQuery;
    cdsNFItemNOTAFISCAL: TIntegerField;
    cdsNFItemSERIE: TStringField;
    cdsNFItemCNPJ_EMITENTE: TStringField;
    cdsNFItemNUM_ITEM: TIntegerField;
    cdsNFItemCODPRODUTO_ATS: TIntegerField;
    cdsNFItemCODPRO_ATS: TStringField;
    cdsNFItemPRODUTO: TStringField;
    cdsNFItemPRODUTO_ATS: TStringField;
    cdsNFItemNCM: TStringField;
    cdsNFItemCFOP: TStringField;
    cdsNFItemUN: TStringField;
    cdsNFItemQTDE: TFloatField;
    cdsNFItemVLR_UNIT: TFloatField;
    cdsNFItemVLR_TOTAL: TFloatField;
    cdsNFItemICMS: TStringField;
    cdsNFItemPIS: TStringField;
    cdsNFItemCOFINS: TStringField;
    cdsNFItemIPI: TStringField;
    sqlBusca: TSQLQuery;
    sqlGenProd: TSQLQuery;
    sqlVeSeExisteCompra: TSQLQuery;
    cdsNFItemCOD_BARRA: TStringField;
    cdsNFItemCODPRODUTO: TStringField;
    Panel1: TPanel;
    Label4: TLabel;
    btnImportaNF: TBitBtn;
    btnFechar: TBitBtn;
    btnProcurar: TBitBtn;
    btnVerificaFornec: TBitBtn;
    btnExisteProdutoFornec: TBitBtn;
    btnCadastrarProduto: TBitBtn;
    chkCodBarra: TCheckBox;
    edMargem: TEdit;
    GroupBox1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    btnImportarXml: TBitBtn;
    cbNaoEnviada: TCheckBox;
    Label3: TLabel;
    edNota: TEdit;
    btnLimpa: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    JvDBUltimGrid1: TJvDBUltimGrid;
    ACBrNFe1: TACBrNFe;
    Label1: TLabel;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    memExcluido: TMemo;
    TabSheet2: TTabSheet;
    memLista: TMemo;
    procedure btnFecharClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVerificaFornecClick(Sender: TObject);
    procedure btnExisteProdutoFornecClick(Sender: TObject);
    procedure btnCadastrarProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImportaNFClick(Sender: TObject);
    procedure btnImportarXmlClick(Sender: TObject);
    procedure cbNaoEnviadaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnLimpaClick(Sender: TObject);
    procedure edNotaKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBUltimGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure cdsNFItemReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    diretorioXml: String; 
    TD: TTransactionDesc;
    procedure abreNF;
    procedure abreNFItem;
    procedure mudaStatusNF;
    procedure faltandoFornecedor;
    procedure faltandoProduto;
    procedure procuraCadastroProduto;
    procedure insereMovimento;
    procedure Deletefiles(APath, AFileSpec: string);
    procedure importaXML;
    procedure importaItensXml(nota: Integer);
    procedure listaArquivos;
    procedure listaArquivosImportados;    
    procedure limpaArquivos;    
    function completaCodBarra(S: string; Ch: Char; Len: Integer): string;
    function retornaCodBarra(): String;
    function eDiretorio(attr, val: Integer):Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImporta_XML: TfImporta_XML;

implementation

uses uProdutoFornecedor, uMovimento, UDm, pcnNFe;

{$R *.dfm}

procedure TfImporta_XML.abreNF;
var strAbreNF: String;
begin
  strAbreNF := ' SELECT r.NOTAFISCAL, r.NATUREZAOPERACAO, r.MODELO, ' +
    '    r.SERIE, r.EMISSAO, r.CNPJ_EMITENTE, ' +
    '    r.CNPJ_DESTINATARIO, r.NOME_EMITENTE,' +
    '    f.RAZAOSOCIAL as RAZAOSOCIAL_ATS, f.CODFORNECEDOR as CODCLIENTE_ATS' +
    '    ,r.STATUS    ' +
    '  FROM NOTAFISCAL_IMPORTA r  ' +
    '  left OUTER join FORNECEDOR f on UDF_DIGITS(f.CNPJ) = UDF_DIGITS(r.CNPJ_EMITENTE) ';
  if (cbNaoEnviada.Checked) then
    strAbreNF := strAbreNF + ' WHERE r.STATUS = 0 ';

  if (edNota.Text <> '') then
  begin
    if (cbNaoEnviada.Checked) then
      strAbreNF := strAbreNF + ' AND '
    else
      strAbreNF := strAbreNF + ' WHERE ';
    strAbreNF := strAbreNF + ' r.NOTAFISCAL = ' + edNota.Text;
  end;

  if (cdsNF.Active) then
    cdsNF.Close;
  cdsNF.CommandText := strAbreNF;
  cdsNF.Open;
end;

procedure TfImporta_XML.abreNFItem;
var strNFItem: String;
begin
  // strNFItem := 'SELECT * FROM NOTAFISCAL_PROD_IMPORTA r '+
  strNFItem := 'SELECT r.NOTAFISCAL, r.SERIE, r.CNPJ_EMITENTE, ' +
    ' r.NUM_ITEM,  UDF_DIGITS(r.CODPRODUTO) CODPRODUTO, r.CODPRODUTO_ATS, ' +
    ' r.CODPRO_ATS, r.PRODUTO, r.PRODUTO_ATS, r.NCM,' +
    ' r.CFOP, r.UN, r.QTDE, r.VLR_UNIT, r.VLR_TOTAL,' +
    ' r.ICMS, r.PIS, r.COFINS, r.IPI, r.COD_BARRA ' +
    ' FROM NOTAFISCAL_PROD_IMPORTA r ' +

    ' WHERE r.NOTAFISCAL = ' + IntToSTr(cdsNFNOTAFISCAL.AsInteger) +
    '   AND r.SERIE  = ' + QuotedStr(cdsNFSERIE.AsString) +
    '   AND r.CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  if (cdsNFItem.Active) then
    cdsNFItem.Close;
  cdsNFItem.CommandText := strNFItem;
  cdsNFItem.Open;
end;

procedure TfImporta_XML.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfImporta_XML.mudaStatusNF;
var strAlteraStatus: String;
begin
  strAlteraStatus := 'UPDATE NOTAFISCAL_IMPORTA SET ' +
    ' STATUS = 1 ' +
    ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
    '   AND SERIE = ' + QuotedStr(cdsNFSERIE.AsString) +
    '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  dm.sqlsisAdimin.ExecuteDirect(strAlteraStatus);
end;

procedure TfImporta_XML.btnProcurarClick(Sender: TObject);
var Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    abreNF;
    abreNFItem;
    FaltandoFornecedor;
    btnProcurar.Font.Color := clWindowText;
    btnVerificaFornec.Font.Color := clRed;
    btnExisteProdutoFornec.Font.Color := clWindowText;
    btnImportaNF.Font.Color := clWindowText;
  finally
    Screen.Cursor := Save_Cursor;
  end;  
end;

procedure TfImporta_XML.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  abreNFItem;
end;

procedure TfImporta_XML.JvDBUltimGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  abreNFItem;
end;

procedure TfImporta_XML.JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  abreNFItem;
end;

procedure TfImporta_XML.faltandoFornecedor;
var strFaltaFornec: String;
begin
  strFaltaFornec := 'SELECT COUNT(r.CNPJ_EMITENTE) ' +
    '  FROM NOTAFISCAL_IMPORTA r  ' +
    ' WHERE NOT EXISTS (SELECT f.CODFORNECEDOR FROM FORNECEDOR f ' +
    ' WHERE UDF_DIGITS(f.CNPJ) = UDF_DIGITS(r.CNPJ_EMITENTE)) ' +
    '   AND r.STATUS = 0 ';
  if (edNota.Text <> '') then
  begin
    strFaltaFornec := strFaltaFornec + ' AND r.NOTAFISCAL = ' + edNota.Text;
  end;
  if (sqlFaltandoFornecedor.Active) then
    sqlFaltandoFornecedor.Close;
  sqlFaltandoFornecedor.SQL.Clear;
  sqlFaltandoFornecedor.SQL.Add(strFaltaFornec);
  sqlFaltandoFornecedor.Open;
  if (sqlFaltandoFornecedor.Fields[0].asInteger > 0) then
  begin
    MessageDlg('Existe - ' + IntToStr(sqlFaltandoFornecedor.Fields[0].asInteger) +
       ' - fornecedor sem cadastro no sistema.', mtWarning, [mbOK], 0);
    lblNF.Caption := IntToStr(sqlFaltandoFornecedor.Fields[0].asInteger) + ' - fornecedor sem cadastro.';
  end;
end;

procedure TfImporta_XML.faltandoProduto;
var strFaltaProd: String;
begin
  strFaltaProd := 'SELECT pf.CODPRODUTO, p.CODPRO ' +
    '  FROM  produto_fornecedor pf ' +
    ' LEFT OUTER JOIN produtos p on p.CODPRODUTO = pf.CODPRODUTO ' +
    ' where pf.codfornecedor = ' + IntToStr(cdsNFCODCLIENTE_ATS.asInteger) +
    '  AND ((p.usa is null) or (p.usa = '+ QuotedStr('S') + '))' +
    '   and pf.codprodfornec = ';
  strFaltaProd := strFaltaProd + QuotedStr(retornaCodBarra);
  if (sqlFaltaProd.Active) then
    sqlFaltaProd.Close;
  sqlFaltaProd.SQL.Clear;
  sqlFaltaProd.SQL.Add(strFaltaProd);
  sqlFaltaProd.Open;
end;

procedure TfImporta_XML.btnVerificaFornecClick(Sender: TObject);
var strInsereFornec: String;
begin
  if (cdsNF.Active) then
  begin
    while not cdsNF.Eof do
    begin
      strInsereFornec := 'SELECT CODFORNECEDOR, RAZAOSOCIAL ' +
      '  FROM FORNECEDOR  ' +
      ' WHERE UDF_DIGITS(CNPJ) = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
      if (sqlFaltandoFornecedor.Active) then
        sqlFaltandoFornecedor.Close;
      sqlFaltandoFornecedor.SQL.Clear;
      sqlFaltandoFornecedor.SQL.Add(strInsereFornec);
      sqlFaltandoFornecedor.Open;
      if (not sqlFaltandoFornecedor.IsEmpty) then
      begin
        strInsereFornec := 'UPDATE NOTAFISCAL_IMPORTA SET ' +
          ' CODCLIENTE_ATS = ' +  IntToStr(sqlFaltandoFornecedor.fieldByName('CODFORNECEDOR').AsInteger) +
          ' ,RAZAOSOCIAL_ATS = ' + QuotedStr(sqlFaltandoFornecedor.fieldByName('RAZAOSOCIAL').AsString) +
          ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
          '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
          '   AND CNPJ_EMITENTE = ' + QuotedStr(trim(cdsNFCNPJ_EMITENTE.AsString));
        sqlConn.StartTransaction(TD);
        try
          sqlConn.ExecuteDirect(strInsereFornec);
          sqlConn.Commit(TD);
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            sqlConn.Rollback(TD); //on failure, undo the changes}
          end;
        end;
      end;
      cdsNF.Next;
    end;
    btnVerificaFornec.Font.Color := clWindowText;
    btnProcurar.Font.Color := clWindowText;
    btnImportaNF.Font.Color := clWindowText;
    btnExisteProdutoFornec.Font.Color := clRed;
  end;
end;

procedure TfImporta_XML.btnExisteProdutoFornecClick(Sender: TObject);
var insereCodPro: String;
  linhaNF: Integer;
begin
  if (cdsNF.Active) then
  begin
    linhaNF := cdsNF.RecNo;
    cdsNF.First;
    while not cdsNF.Eof do
    begin
      abreNFItem;
      while not cdsNFItem.Eof do
      begin
        faltandoProduto;
        if (not sqlFaltaProd.IsEmpty) then
        begin
          insereCodPro := 'UPDATE NOTAFISCAL_PROD_IMPORTA SET ' +
            ' CODPRODUTO_ATS = ' +  IntToStr(sqlFaltaProd.fieldbyname('CODPRODUTO').asInteger) +
            ' ,CODPRO_ATS = ' + QuotedStr(sqlFaltaProd.fieldbyname('CODPRO').AsString) +
            ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
            '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
            '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString) +
            '   AND NUM_ITEM = ' + IntToStr(cdsNFItemNUM_ITEM.AsInteger);
          sqlConn.StartTransaction(TD);
          try
            sqlConn.ExecuteDirect(insereCodPro);
            sqlConn.Commit(TD);
          except
            on E : Exception do
            begin
              ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
              sqlConn.Rollback(TD); //on failure, undo the changes}
            end;
          end;
        end
        else begin
          procuraCadastroProduto;
          if (not sqlBusca.IsEmpty) then
          begin
            insereCodPro := 'UPDATE NOTAFISCAL_PROD_IMPORTA SET ' +
              ' CODPRODUTO_ATS = ' +  IntToStr(sqlBusca.fieldbyname('CODPRODUTO').asInteger) +
              ' ,CODPRO_ATS = ' + QuotedStr(sqlBusca.fieldbyname('CODPRO').AsString) +
              ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
              '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
              '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString) +
              '   AND NUM_ITEM = ' + IntToStr(cdsNFItemNUM_ITEM.AsInteger);
            sqlConn.StartTransaction(TD);
            try
              sqlConn.ExecuteDirect(insereCodPro);
              sqlConn.Commit(TD);
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                sqlConn.Rollback(TD); //on failure, undo the changes}
              end;
            end;
          end;
        end;
        cdsNFItem.Next;
      end;
      cdsNF.Next;
    end;
    cdsNF.RecNo := linhaNF;
    abreNFItem;
    btnExisteProdutoFornec.Font.Color := clWindowText;
    btnVerificaFornec.Font.Color := clWindowText;
    btnProcurar.Font.Color := clWindowText;
    btnImportaNF.Font.Color := clRed;
  end;
end;

procedure TfImporta_XML.btnCadastrarProdutoClick(Sender: TObject);
var strInsereItem, strInsereItemF: String;
  varCodProduto : Integer;
begin
  if (edNota.Text = '') then
  begin
    MessageDlg('Digite o número da nota desejada, ou dê dois cliques nela.', mtWarning, [mbOK], 0);
    exit;
  end;

  //btnExisteProdutoFornec.Click;
  if (cdsNF.Active) then
  begin
    cdsNF.First;
    while not cdsNF.Eof do
    begin
      if (cdsNFRAZAOSOCIAL_ATS.AsString = '') then
      begin
        MessageDlg('Este Cliente não consta no sistema, faça' +
          ' o cadastro primeiro.', mtWarning, [mbOK], 0);
        exit;
      end;
      abreNFItem;
      while not cdsNFItem.Eof do
      begin
        if (cdsNFItemCODPRO_ATS.AsString = '') then
        begin
          procuraCadastroProduto;
          if (sqlBusca.IsEmpty) then
          begin
            if (sqlGenProd.Active) then
              sqlGenProd.Close;
            sqlGenProd.SQL.Clear;
            sqlGenProd.SQL.Add('SELECT GEN_ID(GEN_PROD, 1) FROM RDB$DATABASE');
            sqlGenProd.Open;
            varCodProduto := sqlGenProd.Fields[0].AsInteger;
            strInsereItem := 'INSERT INTO PRODUTOS (CODPRODUTO, UNIDADEMEDIDA, ' +
              ' PRODUTO, TIPO, CODPRO, QTDE_PCT, DATACADASTRO, ' +
              ' ORIGEM, NCM, MARGEM, TIPOPRECOVENDA, COD_BARRA) VALUES (' +
              IntToStr(varCodProduto) +
              ' ,' + QuotedStr(copy(trim(cdsNFItemUN.AsString),0,2)) +
              ' ,' + QuotedStr(trim(cdsNFItemPRODUTO.AsString)) +
              ' ,' + QuotedStr('PROD');
              strInsereItem := strInsereItem + ', ' + QuotedStr(retornaCodBarra) + ' ,1' +
              ' ,current_date ' +
              ' ,0' +
              ' ,' + Quotedstr(trim(cdsNFItemNCM.AsString)) +
              ', ' + edMargem.Text +
              ', ' + QuotedStr('U');
              strInsereItem := strInsereItem + ', ' + QuotedStr(retornaCodBarra) + ')';

            strInsereItemF := 'INSERT INTO PRODUTO_FORNECEDOR (' +
              'CODPRODUTO, CODFORNECEDOR, CODPRODFORNEC) VALUES ( ' +
              IntToStr(varCodProduto) +
              ', ' + IntToStr(cdsNFCODCLIENTE_ATS.AsInteger);
              strInsereItemF := strInsereItemF + ', ' + QuotedStr(retornaCodBarra) + ')';

            sqlConn.StartTransaction(TD);
            try
              sqlConn.ExecuteDirect(strInsereItem);
              sqlConn.ExecuteDirect(strInsereItemF);
              sqlConn.Commit(TD);
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                sqlConn.Rollback(TD); //on failure, undo the changes}
              end;
            end;

          end;
          faltandoProduto;
          if (not sqlFaltaProd.IsEmpty) then
          begin
            strInsereItem := 'UPDATE NOTAFISCAL_PROD_IMPORTA SET ' +
              ' CODPRODUTO_ATS = ' +  IntToStr(sqlFaltaProd.fieldbyname('CODPRODUTO').asInteger) +
              ' ,CODPRO_ATS = ' + QuotedStr(sqlFaltaProd.fieldbyname('CODPRO').AsString) +
              ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
              '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
              '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString) +
              '   AND NUM_ITEM = ' + IntToStr(cdsNFItemNUM_ITEM.AsInteger);
            sqlConn.StartTransaction(TD);
            try
              sqlConn.ExecuteDirect(strInsereItem);
              sqlConn.Commit(TD);
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                sqlConn.Rollback(TD); //on failure, undo the changes}
              end;
            end;

          end;
        end;
        cdsNFItem.Next;
      end;
      cdsNF.Next;
    end;
    btnExisteProdutoFornec.Click;
    MessageDlg('Cadastros criados com sucesso.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfImporta_XML.procuraCadastroProduto;
var strBusca: String;
begin
  strBusca := 'SELECT CODPRODUTO, CODPRO ' +
    '  FROM produtos ' ;
  if (chkCodBarra.Checked) then
  begin
    strBusca := strBusca + ' where COD_BARRA = ';
    strBusca := strBusca + QuotedStr(retornaCodBarra);
    strBusca := strBusca + '  AND ((usa is null) or (usa = '+ QuotedStr('S') + '))';
  end
  else begin
    strBusca := strBusca + ' where CODPRO = ' + QuotedStr(cdsNFItemCODPRODUTO.AsString);
    strBusca := strBusca + '  AND ((usa is null) or (usa = '+ QuotedStr('S') + '))';
  end;

  if (sqlBusca.Active) then
    sqlBusca.Close;
  sqlBusca.SQL.Clear;
  sqlBusca.SQL.Add(strBusca);
  sqlBusca.Open;
end;

procedure TfImporta_XML.FormShow(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (dm.codBarra = 'S') then
    chkCodBarra.Checked := True;
end;

procedure TfImporta_XML.insereMovimento;
var fmov : TMovimento;
  codMov : Integer;
  TDm: TTransactionDesc;
begin
  // se existir nota sem fornecedor nao faz nada
  while not cdsNF.Eof do
  begin
    if (cdsNFRAZAOSOCIAL_ATS.AsString = '') then
    begin
      MessageDlg('Existe Nota Fiscal sem informar o Fornecedor.', mtWarning, [mbOK], 0);
      exit;
    end;
    cdsNF.Next;
  end;
  cdsNF.First;

  if (sqlVeSeExisteCompra.Active) then
    sqlVeSeExisteCompra.Close;
  sqlVeSeExisteCompra.SQL.Clear;
  sqlVeSeExisteCompra.SQL.Add('SELECT CODMOVIMENTO FROM MOVIMENTO ' +
    'WHERE CODFORNECEDOR = ' + IntToStr(cdsNFCODCLIENTE_ATS.AsInteger) +
    '  AND CODPEDIDO = ' + IntToSTr(cdsNFNOTAFISCAL.AsInteger) +
    '  AND CONTROLE = ' + QuotedStr(IntToSTr(cdsNFNOTAFISCAL.AsInteger)));
  sqlVeSeExisteCompra.Open;
  if (sqlVeSeExisteCompra.IsEmpty) then
  begin
    TDm.TransactionID := 1;
    TDm.IsolationLevel := xilREADCOMMITTED;

    fmov := TMovimento.Create;
    try
      while not cdsNF.Eof do
      begin
        fMov.CodMov      := 0;
        fMov.CodNatureza := 4;  // Compra
        fMov.DataMov     := cdsNFEMISSAO.AsDateTime;
        fMov.CodCliente  := 0;
        fMov.Status      := 0;
        fMov.CodUsuario  := 1;
        fMov.CodVendedor := 1;
        fMov.CodFornec   := cdsNFCODCLIENTE_ATS.AsInteger;
        fMov.CodCCusto   := 51;
        fMov.CodPedido   := cdsNFNOTAFISCAL.AsInteger;
        fMov.Controle    := IntToStr(cdsNFNOTAFISCAL.AsInteger);
        fMov.Entrega     := cdsNFNATUREZAOPERACAO.AsString;
        dm.sqlsisAdimin.StartTransaction(TDm);
        try

          codMov := fMov.inserirMovimento(0);
          abreNFItem;
          While not cdsNFItem.Eof do
          begin
            //prog2.Position := cdsB.RecNo;

            // se existir produto sem o correspondente no ATS nao faz nada
            if (cdsNFItemCODPRO_ATS.AsString = '') then
            begin
              MessageDlg('Existe Produto sem o Código no sistema.', mtWarning, [mbOK], 0);
              exit;
            end;

            fMov.MovDetalhe.CodMov     := codMov;
            fMov.MovDetalhe.CodProduto := cdsNFItemCODPRODUTO_ATS.AsInteger;
            fMov.MovDetalhe.Qtde       := cdsNFItemQTDE.AsFloat;
            fMov.MovDetalhe.Preco      := cdsNFItemVLR_UNIT.AsFloat;
            fMov.MovDetalhe.Descricao  := trim(cdsNFItemPRODUTO.AsString);
            fMov.MovDetalhe.Desconto   := 0;
            fMov.MovDetalhe.Un         := trim(copy(cdsNFItemUN.AsString,1,2));
            fMov.MovDetalhe.Lote       := '0';//cdsB.FieldByName('LOTE').AsString;
            fMov.MovDetalhe.inserirMovDet;
            cdsNFItem.Next;
          end;
          mudaStatusNF;
          dm.sqlsisAdimin.Commit(TDm);
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            dm.sqlsisAdimin.Rollback(TDm); //on failure, undo the changes}
          end;
        end;
        cdsNF.Next;
      end;
    finally
      fMov.Free;
    end;
  end
  else
  begin
    MessageDlg('Já existe esta Nota no Sistema', mtWarning, [mbOK], 0);
    exit;
  end;
end;

procedure TfImporta_XML.btnImportaNFClick(Sender: TObject);
begin
  if (cbNaoEnviada.Checked = False) then
  begin
    MessageDlg('Marque a opção não enviadas, para prosseguir.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (edNota.Text = '') then
  begin
    MessageDlg('Digite o número da nota desejada, ou dê dois cliques nela.', mtWarning, [mbOK], 0);
    exit;
  end;

  insereMovimento;

  if (DirectoryExists('c:\home\xml\importados')) then
  begin
  end
  else begin
    CreateDir('c:\home\xml\importados');
  end;
  //Deletefiles('c:\home\xml\','*.xml');
  MoveFile(pchar('*.xml'),pchar('c:\home\xml\importados\'));
  btnImportaNF.Font.Color := clWindowText;
  btnFechar.Font.Color := clRed;
  btnProcurar.Click;
  MessageDlg('Notas importadas com sucesso.', mtInformation, [mbOK], 0);

end;

procedure TfImporta_XML.btnImportarXmlClick(Sender: TObject);
begin
  //WinExec('exe_impor.bat', SW_NORMAL);
  listaArquivos();
  if (not cdsNF.Active) then
    abreNF;
  importaXML;
  abreNF;
  btnImportarXml.Font.Color := clWindowText;
  btnVerificaFornec.Font.Color := clWindowText;
  btnExisteProdutoFornec.Font.Color := clWindowText;
  btnImportaNF.Font.Color := clWindowText;
  btnProcurar.Font.Color := clRed;
  listaArquivosImportados();
  limpaArquivos();
end;

procedure TfImporta_XML.cbNaoEnviadaClick(Sender: TObject);
begin
  btnProcurar.Click;
end;

procedure TfImporta_XML.FormCreate(Sender: TObject);
begin
  try
  sqlConn.Connected := False;
  sqlConn.LoadParamsFromIniFile('dbxconnections.ini');
  sqlConn.LibraryName := 'dbexpUIBfire15.dll';
  sqlConn.VendorLib := 'FBCLIENT.DLL';
  sqlConn.Connected := True;
  Except
    ShowMessage('Banco de Dados invalido!');
  end;
end;

procedure TfImporta_XML.Button1Click(Sender: TObject);
var iNFStatus: String;
begin
  iNFStatus := 'UPDATE NOTAFISCAL_IMPORTA SET ' +
  ' STATUS = 0 ' +
  ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
  '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
  '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  sqlConn.StartTransaction(TD);
  try
    sqlConn.ExecuteDirect(iNFStatus);
    sqlConn.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      sqlConn.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

procedure TfImporta_XML.Deletefiles(APath, AFileSpec: string);
var
  lSearchRec:TSearchRec;
  lFind:integer;
  lPath:string;
begin
  lPath := IncludeTrailingPathDelimiter(APath);

  lFind := FindFirst(lPath+AFileSpec,faAnyFile,lSearchRec);
  while lFind = 0 do
  begin
    DeleteFile(lPath+lSearchRec.Name);

    lFind := SysUtils.FindNext(lSearchRec);
  end;
  FindClose(lSearchRec);
end;

function TfImporta_XML.completaCodBarra(S: string; Ch: Char;
  Len: Integer): string;
var
  RestLen: Integer;
begin
  Result  := S;
  RestLen := Len - Length(s);
  if RestLen < 1 then Exit;
  Result := S + StringOfChar(Ch, RestLen);
end;

function TfImporta_XML.retornaCodBarra: String;
var retornoCodBarra:String;
begin
  retornoCodBarra := '';
  if (chkCodBarra.Checked) then
  begin
    if (trim(cdsNFItemCOD_BARRA.AsString) = '') then
    begin
      if (Length(cdsNFItemCODPRODUTO.AsString)<12) then
        retornoCodBarra := trim(copy(completaCodBarra(cdsNFItemCODPRODUTO.AsString + IntToStr(cdsNFCodCliente_ats.asInteger),'0',12),1,15))
      else
        retornoCodBarra := trim(copy(completaCodBarra(cdsNFItemCODPRODUTO.AsString,'0',12),1,15));
    end
    else begin
      retornoCodBarra := trim(cdsNFItemCOD_BARRA.AsString);
      if (Length(retornoCodBarra)>15) then
        retornoCodBarra := copy(retornoCodBarra,1,15);
    end;
  end
  else begin
    retornoCodBarra := trim(cdsNFItemCODPRODUTO.AsString);
  end;
  Result := retornoCodBarra;
end;

procedure TfImporta_XML.btnLimpaClick(Sender: TObject);
begin
  edNota.Text := '';
  btnProcurar.Click;
end;

procedure TfImporta_XML.edNotaKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;
end;

procedure TfImporta_XML.JvDBUltimGrid1DblClick(Sender: TObject);
begin
  edNota.Text := IntToStr(cdsNFNOTAFISCAL.AsInteger);
  btnProcurar.Click;
end;

procedure TfImporta_XML.Button2Click(Sender: TObject);
var s_sql: String;
begin
  s_sql := 'DELETE FROM NOTAFISCAL_IMPORTA ' +
    ' WHERE NOTAFISCAL = ' +  IntToSTr(cdsNFNOTAFISCAL.AsInteger) +
    '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  sqlConn.StartTransaction(TD);
  try
    sqlConn.ExecuteDirect(s_sql);
    s_sql := 'DELETE FROM NOTAFISCAL_PROD_IMPORTA ' +
    ' WHERE NOTAFISCAL = ' +  IntToSTr(cdsNFNOTAFISCAL.AsInteger) +
    '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
    sqlConn.ExecuteDirect(s_sql);    
    sqlConn.Commit(TD);
    btnProcurar.Click;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      sqlConn.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

procedure TfImporta_XML.JvDBGrid1DblClick(Sender: TObject);
begin
  if (cdsNFCodCliente_ats.asInteger = 0) then
  begin
    MessageDlg('Fornecedor não Informado.', mtWarning, [mbOK], 0);
    exit;
  end;
  fProdutoFornec.codFornec := IntToStr(cdsNFCodCliente_ats.asInteger);
  fProdutoFornec.nomeFornec := cdsNFRAZAOSOCIAL_ATS.AsString;
  fProdutoFornec.codProdFornec := cdsNFItemCODPRODUTO.AsString;
  fProdutoFornec.prodDescricaoFornec := cdsNFItemPRODUTO.AsString;
  fProdutoFornec.codProduto := IntToStr(cdsNFItemCODPRODUTO_ATS.AsInteger);
  fProdutoFornec.prodDescricao := cdsNFItemPRODUTO.AsString;
  if (chkCodBarra.Checked) then
    fProdutoFornec.codProduto := cdsNFItemCOD_BARRA.AsString;
  fProdutoFornec.showModal;
  btnExisteProdutoFornec.Click;
end;

procedure TfImporta_XML.importaXML;
var i, n: integer;
notaJaFoi : String;
begin
  //Aqui faz loop ate a variável ficar vazia
  For i := 0 to memLista.Lines.Count - 1 do
  begin
    diretorioXML := edit1.Text + '\' + memLista.Lines[i];
    ACBrNFe1.NotasFiscais.LoadFromFile(diretorioXml);
    for n:=0 to ACBrNFe1.NotasFiscais.Count-1 do
    begin
      with ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin
        notaJaFoi := 'N';
        if (not cdsNF.IsEmpty) then
        begin
          if (cdsNF.Locate('NOTAFISCAL;SERIE;CNPJ_EMITENTE', VarArrayOf([Ide.nNF,IntToStr(Ide.serie),Emit.CNPJCPF]), [loCaseInsensitive])) then
          notaJaFoi := 'S';
        end;
        if (notaJaFoi = 'N') then
        begin
          cdsNF.Append;
          cdsNFEMISSAO.AsDateTime         := Ide.dEmi;
          cdsNFNOTAFISCAL.AsInteger       := Ide.nNF;
          cdsNFNATUREZAOPERACAO.AsString  := procNFe.chNFe;
          cdsNFCNPJ_EMITENTE.AsString     := Emit.CNPJCPF;
          cdsNFNOME_EMITENTE.AsString     := emit.xFant;
          cdsNFSERIE.AsString             := IntToStr(Ide.serie);
          cdsNFCNPJ_DESTINATARIO.AsString := Dest.CNPJCPF;
          cdsNFSTATUS.AsInteger           := 0;
          cdsNF.ApplyUpdates(-1);
          // Importando os itens
          importaItensXml(n);
        end;
      end; //end count
      Application.ProcessMessages;
      Sleep(500);
    end; //end carregar NF
  end;
end;

procedure TfImporta_XML.listaArquivos;
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  PageControl1.ActivePageIndex := 0;
  memLista.Lines.Clear;
  memlista.Font.Color := clWindowText;  
  Ret := FindFirst(edit1.Text + '\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if ((f.Name <> '.') and (f.Name <> '..')) then
      begin
        if (eDiretorio(f.Attr, faDirectory) = False) then
          memLista.Lines.Add(F.Name);
      end;
      Ret := FindNext(F);
    end;
  finally
  begin
    FindClose(F);
  end;
  end;
end;

procedure TfImporta_XML.importaItensXml(nota: Integer);
var j, x: Integer;
  itemJaFoi, stql : String;
begin
  abreNFItem;
  j := nota;
  //for j:=0 to ACBrNFe1.NotasFiscais.Count-1 do
  begin
    for x:=0 to ACBrNFe1.NotasFiscais.Items[nota].NFe.Det.Count-1 do
    begin
      itemJaFoi := 'N';
      if (not cdsNFItem.IsEmpty) then
      begin
        if (cdsNFItem.Locate('NOTAFISCAL;SERIE;CNPJ_EMITENTE;NUM_ITEM',
          VarArrayOf([
            ACBrNFe1.NotasFiscais.Items[j].NFe.Ide.nNF,
            IntToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Ide.serie),
            ACBrNFe1.NotasFiscais.Items[j].NFe.Emit.CNPJCPF,
            ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.nItem
          ]),[loCaseInsensitive])) then
          itemJaFoi := 'S';
      end;
      if (itemJaFoi = 'N') then
      begin
        {cdsNFItem.Append;
        cdsNFItemNOTAFISCAL.AsInteger   := ACBrNFe1.NotasFiscais.Items[j].NFe.Ide.nNF;
        cdsNFItemSERIE.AsString         := IntToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Ide.serie);
        cdsNFItemCNPJ_EMITENTE.AsString := ACBrNFe1.NotasFiscais.Items[j].NFe.Emit.CNPJCPF;
        cdsNFItemNUM_ITEM.AsInteger     := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.nItem;
        cdsNFItemCODPRODUTO.AsString    := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.cProd;
        cdsNFItemPRODUTO.AsString       := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.xProd;
        cdsNFItemCOD_BARRA.AsString     := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.cEAN;
        cdsNFItemUN.AsString            := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.uCom;
        cdsNFItemNCM.AsString           := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.NCM;
        //cdsNFItemQTDE.AsFloat           := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.qCom;
        //cdsNFItemVLR_UNIT.AsFloat       := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.vUnCom;
        //cdsNFItemVLR_TOTAL.AsFloat      := ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.vProd;
        cdsNFItem.ApplyUpdates(-1);}

        sqlConn.StartTransaction(TD);
        try

          stql := 'INSERT INTO NOTAFISCAL_PROD_IMPORTA (NOTAFISCAL, ' +
            ' SERIE, CNPJ_EMITENTE, NUM_ITEM, ' +
            ' CODPRODUTO, PRODUTO, NCM, UN, QTDE, VLR_UNIT,' +
            ' VLR_TOTAL, COD_BARRA' +
            ' ) VALUES (';
          stql := stql +  IntToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Ide.nNF);
          stql := stql + ',';
          stql := stql +  QuotedStr(IntToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Ide.serie));
          stql := stql + ',';
          stql := stql +  QuotedStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Emit.CNPJCPF);
          stql := stql + ',';
          stql := stql +  IntToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.nItem);
          stql := stql + ',';
          stql := stql +  QuotedStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.cProd);
          stql := stql + ',';
          stql := stql +  QuotedStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.xProd);
          stql := stql + ',';
          stql := stql +  QuotedStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.NCM);
          stql := stql + ',';
          stql := stql +  QuotedStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.uCom);
          stql := stql + ',';
          DecimalSeparator := '.';
          stql := stql +  FloatToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.qCom);
          stql := stql + ',';
          stql := stql +  FloatToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.vUnCom);
          stql := stql + ',';
          stql := stql +  FloatToStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.vProd);
          stql := stql + ',';
          stql := stql +  QuotedStr(ACBrNFe1.NotasFiscais.Items[j].NFe.Det[x].Prod.cEAN);
          stql := stql + ')';
          //stql := stql +  QuotedStr();
          //stql := stql + ',';
          dm.sqlsisAdimin.ExecuteDirect(stql);
          DecimalSeparator := ',';
          sqlConn.Commit(TD);
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            sqlConn.Rollback(TD); //on failure, undo the changes}
          end;
        end;
      end;
    end;
  end;



end;

function TfImporta_XML.eDiretorio(attr, val: Integer): Boolean;
begin
  Result := attr and val = val;
end;


procedure TfImporta_XML.limpaArquivos;
var h: integer;
  dirDestino, origem: pAnsiChar;
begin
  For h := 0 to memLista.Lines.Count - 1 do
  begin
    origem := PChar(edit1.Text + '\' + memLista.Lines[h]);
    dirDestino := PChar(Edit1.Text + '\bkp\' + memLista.Lines[h]);
    if (not DirectoryExists(Edit1.Text + '\bkp')) then
      CreateDir(Edit1.Text + '\bkp');
    CopyFile(origem, dirDestino, false);
    DeleteFile(origem);
  end;
end;

procedure TfImporta_XML.listaArquivosImportados;
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  PageControl1.ActivePageIndex := 1;
  memExcluido.Lines.Clear;
  memExcluido.Font.Color := clBlue;
  Ret := FindFirst(edit1.Text + '\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if ((f.Name <> '.') and (f.Name <> '..')) then
      begin
        if (eDiretorio(f.Attr, faDirectory) = False) then
          memExcluido.Lines.Add('IMPORTADO - ' + F.Name);
      end;
      Ret := FindNext(F);
    end;
  finally
  begin
    FindClose(F);
  end;
  end;
end;

procedure TfImporta_XML.cdsNFItemReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  MessageDlg('Mensagem: '+E.Message,mtInformation,[mbok],0);
end;

end.

