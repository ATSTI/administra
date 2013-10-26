unit Atualiza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, DB, SqlExpr, StdCtrls, Buttons, DBClient,
  Provider, ShellApi, ComCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    sc: TSQLConnection;
    ver_campo: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sds_sp: TSQLDataSet;
    dsp_sp: TDataSetProvider;
    cds_sp: TClientDataSet;
    sds_spCODATUALIZA: TIntegerField;
    sds_spSCRIPT: TStringField;
    sds_spDATASCRIPT: TDateField;
    sds_spPARAQSERVE: TStringField;
    sds_spVERSAO: TStringField;
    sds_spINSERIDO: TStringField;
    cds_spCODATUALIZA: TIntegerField;
    cds_spSCRIPT: TStringField;
    cds_spDATASCRIPT: TDateField;
    cds_spPARAQSERVE: TStringField;
    cds_spVERSAO: TStringField;
    cds_spINSERIDO: TStringField;
    OpenDialog1: TOpenDialog;
    sds1: TSQLDataSet;
    cds1: TClientDataSet;
    dsp1: TDataSetProvider;
    cds1CODATUALIZA: TIntegerField;
    cds1SCRIPT: TStringField;
    cds1DATASCRIPT: TDateField;
    cds1PARAQSERVE: TStringField;
    cds1VERSAO: TStringField;
    cds1INSERIDO: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Memo3: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    sdsNcampos: TSQLDataSet;
    dspNcampo: TDataSetProvider;
    cdsNcampo: TClientDataSet;
    DataSource1: TDataSource;
    cdsNcampoCODCAMPOS: TIntegerField;
    cdsNcampoCAMPO: TStringField;
    cdsNcampoTABELA: TStringField;
    cdsNcampoDATAINCLUSAO: TDateField;
    cdsNcampoTIPO: TStringField;
    cdsNcampoOBS: TStringField;
    cdsNcampoTIPOCAMPO: TStringField;
    sdsNcamposCODCAMPOS: TIntegerField;
    sdsNcamposCAMPO: TStringField;
    sdsNcamposTABELA: TStringField;
    sdsNcamposDATAINCLUSAO: TDateField;
    sdsNcamposTIPO: TStringField;
    sdsNcamposOBS: TStringField;
    sdsNcamposTIPOCAMPO: TStringField;
    c_6_genid: TClientDataSet;
    c_6_genidCODIGO: TIntegerField;
    d_6: TDataSetProvider;
    s_6: TSQLDataSet;
    s_6CODIGO: TIntegerField;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
  public
      procedure InsereScriptTabela();
      function GetVersion: string;
    { Public declarations }
  end;

var
  Form1: TForm1;
  sp: string;
implementation

uses UManu;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 sc.LoadParamsFromIniFile('dbxconnections.ini');
 sc.LibraryName := 'dbexpUIBfire15.dll';
 sc.VendorLib := 'FBCLIENT.DLL';
 Label1.Caption := 'Atualiza Banco de Dados , Versão : ' + GetVersion;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var tabela,  tipo: string;
  campo : variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  bitbtn1.Font.Size := 12;
  memo1.Lines.Add('Atualizando Banco de Dados ....');
  if (cds.Active) then
    cds.Close;
  { Tabela : ATUALIZA }
  tabela := 'ATUALIZA';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE ATUALIZA ( CODATUALIZA INTEGER NOT NULL PRIMARY KEY,' +
       '  SCRIPT VARCHAR(200),  DATASCRIPT DATE,  PARAQSERVE VARCHAR(200),' +
       '   VERSAO VARCHAR(50),  INSERIDO CHAR(1))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_ATUALIZA');
    sc.ExecuteDirect('SET GENERATOR GEN_ATUALIZA TO 0');
    sc.ExecuteDirect('CREATE TRIGGER TRG_ATUALIZA FOR ATUALIZA ACTIVE '+
       ' BEFORE INSERT POSITION 0 AS BEGIN ' +
       ' IF (NEW.CODATUALIZA IS NULL) THEN NEW.CODATUALIZA = GEN_ID(GEN_ATUALIZA, 1); ' +
       ' END');
    sc.ExecuteDirect('alter table atualiza add CONSTRAINT UN_SCRIPT UNIQUE ( SCRIPT );');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela ATUALIZA criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : NOTAFISCAL }
  tabela := 'NOTAFISCAL';
  campo := 'ICMS';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela NOTAFISCAL adicionado campo ICMS.');
  end;

  tabela := 'NOTAFISCAL';
  campo := 'REDUZICMS';
  tipo  := 'DOUBLE PRECISION';
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' ' + tipo);

  { Tabela : MOVIMENTONF }
  if (cds.Active) then
    cds.Close;
  tabela := 'MOVIMENTONF';
  campo := 'IPI';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);

  { Tabela : PAGAMENTO }
  if (cds.Active) then
    cds.Close;
  tabela := 'PAGAMENTO';
  campo := 'CODORIGEM';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);


  { Tabela : RECEBIMENTO }
  if (cds.Active) then
    cds.Close;
  tabela := 'RECEBIMENTO';
  campo := 'CODORIGEM';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);

  { Tabela : CHEQ_BOLETOS_DUPL }
  if (cds.Active) then
    cds.Close;
  tabela := 'CHEQ_BOLETOS_DUPL';
  campo := 'LANCADO';
  tipo  := 'SMALLINT';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);

  { Chave estrangeira : Chave estrangeira para Clientes e Fornecedores }
  if (cds.Active) then
    cds.Close;
  tabela := 'MOVIMENTO';
  campo := 'FK_MOV_CLIENT';
  tipo  := 'CODCLIENTE';
  cds.CommandText := 'select RDB$CONSTRAINT_NAME AS CAMPO from rdb$CHECK_CONSTRAINTS' +
    ' WHERE RDB$CONSTRAINT_NAME = ''' + campo + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CONSTRAINT ' + campo + ' FOREIGN KEY (' +
    tipo + ') REFERENCES CLIENTES (' + tipo + ') ON UPDATE CASCADE ' +
    ' ON DELETE NO ACTION');
    sc.Commit(TD);
    memo1.Lines.Add('Chave Estrangeira FK_MOV_CLIENT(MOVIMENTO/CLIENTE) criada com sucesso.');
  end;

  { Chave estrangeira : Chave estrangeira para Clientes e Fornecedores }
  if (cds.Active) then
    cds.Close;
  tabela := 'MOVIMENTO';
  campo := 'FK_MOV_FORN';
  tipo  := 'CODFORNECEDOR';
  cds.CommandText := 'select RDB$CONSTRAINT_NAME AS CAMPO from rdb$CHECK_CONSTRAINTS' +
    ' WHERE RDB$CONSTRAINT_NAME = ''' + campo + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CONSTRAINT ' + campo + ' FOREIGN KEY (' +
    tipo + ') REFERENCES FORNECEDOR (' + tipo + ') ON UPDATE CASCADE ' +
    ' ON DELETE NO ACTION');
    sc.Commit(TD);
    memo1.Lines.Add('Chave Estrangeira FK_MOV_FORN(MOVIMENTO/FORNECEDOR) criada com sucesso.');
  end;


  { Chave estrangeira : Chave estrangeira para Clientes e Fornecedores }
{  if (cds.Active) then
    cds.Close;
  tabela := 'RECEBIMENTO';
  campo := 'FK_RECEB_CLIENT';
  tipo  := 'CODCLIENTE';
  cds.CommandText := 'select RDB$CONSTRAINT_NAME AS CAMPO from rdb$CHECK_CONSTRAINTS' +
    ' WHERE RDB$CONSTRAINT_NAME = ''' + campo + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CONSTRAINT ' + campo + ' FOREIGN KEY (' +
    tipo + ') REFERENCES CLIENTES (' + tipo + ') ON UPDATE CASCADE ' +
    ' ON DELETE NO ACTION');
    sc.Commit(TD);
    memo1.Lines.Add('Chave Estrangeira FK_RECEB_CLIENT(RECEBIMENTO/CLIENTE) criada com sucesso.');
  end;
 }
  { Chave estrangeira : Chave estrangeira para Clientes e Fornecedores }
  if (cds.Active) then
    cds.Close;
  tabela := 'PAGAMENTO';
  campo := 'FK_PAG_FORN';
  tipo  := 'CODFORNECEDOR';
  cds.CommandText := 'select RDB$CONSTRAINT_NAME AS CAMPO from rdb$CHECK_CONSTRAINTS' +
    ' WHERE RDB$CONSTRAINT_NAME = ''' + campo + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CONSTRAINT ' + campo + ' FOREIGN KEY (' +
    tipo + ') REFERENCES FORNECEDOR (' + tipo + ') ON UPDATE CASCADE ' +
    ' ON DELETE NO ACTION');
    sc.Commit(TD);
    memo1.Lines.Add('Chave Estrangeira FK_PAG_FORN(PAGAMENTO/FORNECEDOR) criada com sucesso.');
  end;

  { Removido a tabela LISTAPRECO e inserido novamente com alterações nos campos }
  if (cds.Active) then
    cds.Close;
  tabela := 'LISTAPRECO';
  campo := 'CODLISTAPRECO';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    if  MessageDlg('O processo abaixo re-criara a tabela LISTAPRECO'+#13+#10+
      ' removerá do Banco a tabela atual e criará uma nova.'+#13+#10+
      ' Juntamente com suas Triggers e generators. Executa ?' ,
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    begin
      sc.StartTransaction(TD);
      try
        if (cds.Active) then
          cds.Close;
        tabela := 'ATUALIZA_CHG';

        cds.CommandText := 'select RDB$TRIGGER_NAME AS CAMPO from rdb$triggers' +
          ' WHERE RDB$TRIGGER_NAME = ''' + tabela + '''';
        cds.Open;
        if (not cds.IsEmpty) then
        sc.ExecuteDirect('drop trigger atualiza_chg');
        sc.Commit(TD)
      except
        sc.Rollback(TD);
      end;
      memo1.Lines.Add('Removido a Trigger ATUALIZA_CHG com sucesso.');

      { Tabela : LISTAPRECO }
      tabela := 'LISTAPRECO';
      cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
        ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
      cds.Open;
      {Se tabela não existe então crio}
      if (not cds.IsEmpty) then
      begin
        sc.StartTransaction(TD);
        sc.ExecuteDirect('DROP TABLE LISTAPRECO');
        sc.Commit(TD);
      end;
      memo1.Lines.Add('Tabela LISTAPRECO removida com sucesso.');

      tabela := 'CREATE TABLE LISTAPRECO ( CODLISTAPRECO INTEGER NOT NULL PRIMARY KEY';
      tabela := tabela + ', DESCR VARCHAR( 300 ), APLIC VARCHAR( 200 ), GRUPO VARCHAR( 30 )';
      tabela := tabela + ', SUBGRUPO VARCHAR( 30 ), FORNECEDOR  VARCHAR( 30 )';
      tabela := tabela + ', UNIDADE VARCHAR( 2 ), PRECOLISTA DOUBLE PRECISION ';
      tabela := tabela + ', PRECOVENDA DOUBLE PRECISION, MARGEM DOUBLE PRECISION';
      tabela := tabela + ', DATAATUALIZA DATE , CODBARRA VARCHAR( 20 )';
      tabela := tabela + ', CODIGO VARCHAR( 15 ), PRO_COD VARCHAR(15)';
      tabela := tabela + ' , USAPRODUTO CHAR( 3 ), CODPRODUTO INTEGER)';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Tabela LISTAPRECO re-criada com sucesso.');

      tabela := 'CREATE GENERATOR GEN_CODLISTA;';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Generator GEN_CODLISTA criado com sucesso.');

      tabela := 'CREATE TRIGGER TRG_CODLISTA FOR LISTAPRECO ';
      tabela := tabela + ' BEFORE INSERT ';
      tabela := tabela + ' AS BEGIN ';
      tabela := tabela + ' IF (NEW.CODLISTAPRECO IS NULL) then ';
      tabela := tabela + ' NEW.CODLISTAPRECO = GEN_ID(GEN_CODLISTA,1);';
      tabela := tabela + ' END';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Trigger TRG_CODLISTA criada com sucesso.');
    end;

    if  MessageDlg('Copia para a tabela LISTAPRECO '+#13+#10+
      'todos os produtos da tabela PRODUTOS?',
      mtConfirmation, [mbYes, mbNo],0) = mrYes then ;
    begin
      tabela := 'INSERT INTO LISTAPRECO(CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO, ';
      tabela := tabela + ' SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, PRECOVENDA)';
      tabela := tabela + ' select codpro, produto, cod_barra';
      tabela := tabela + ' , codproduto, marca, familia, categoria, unidademedida,';
      tabela := tabela + ' valorunitarioatual, margem, valor_prazo from produtos';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      tabela := 'update listapreco set codbarra = codigo where codbarra is null';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Copiado todos os produtos para a tabela LISTAPRECO.');
    end;
    if  MessageDlg('Remove da tabela PRODUTOS todos os itens'+#13+#10+
      'que não foram usados até agora ? ',
      mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      tabela := 'delete from produtos prod where not exists ';
      tabela := tabela + ' (select m.codproduto';
      tabela := tabela + ' from movimentodetalhe m where m.codproduto = prod.codproduto)';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Removido os produtos não usados até agora.');
    end;

  end;

  { Tabela : CLIENTES }
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'TEM_IE';
  tipo  := 'CHAR(1)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Removido os produtos não usados até agora.');
  end;

  { Chave estrangeira : Chave estrangeira para FK_MDETALHE_SERV }
  if (cds.Active) then
    cds.Close;
  tabela := 'MOV_DETALHE_SERV';
  campo := 'FK_MDETALHE_SERV';
  tipo  := 'CODDETALHE';
  cds.CommandText := 'select RDB$CONSTRAINT_NAME AS CAMPO from rdb$CHECK_CONSTRAINTS' +
    ' WHERE RDB$CONSTRAINT_NAME = ''' + campo + '''';
  cds.Open;
  if (cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' DROP CONSTRAINT ' + campo);
    sc.Commit(TD);
    memo1.Lines.Add('Chave Estrangeira FK_MDETALHE_SERV MOV_DETALHE_SERV/MOVIMENTO) removida com sucesso.');
  end;
  if (cds.Active) then
    cds.Close;
  tabela := 'MOV_DETALHE_SERV';
  campo := 'FK_DETALHE_SERV';
  tipo  := 'CODDETALHE';
  cds.CommandText := 'select RDB$CONSTRAINT_NAME AS CAMPO from rdb$CHECK_CONSTRAINTS' +
    ' WHERE RDB$CONSTRAINT_NAME = ''' + campo + '''';
  cds.Open;
  campo := 'FK_DETALHE_SERV';
  {if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CONSTRAINT ' + campo + ' FOREIGN KEY (' +
    ' CODMOVIMENTO ' + ') REFERENCES MOVIMENTODETALHE (' + tipo + ') ON UPDATE CASCADE ' +
    ' ON DELETE CASCADE');
    sc.Commit(TD);
    memo1.Lines.Add('Chave Estrangeira FK_DETALHE_SERV MOV_DETALHE_SERV/MOVIMENTODETALHE) criada com sucesso.');
  end;
   }
  if (cds.Active) then
    cds.Close;
  { Tabela : LOG_ACESSO }
  tabela := 'LOG_ACESSO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE LOG_ACESSO ( LOGIN VARCHAR( 20 ) NOT NULL,' +
       '  MICRO VARCHAR( 30 ), MODULO VARCHAR( 30 ),' +
       '  ID_LOG INTEGER NOT NULL   PRIMARY KEY)');
    sc.ExecuteDirect('CREATE GENERATOR GEN_ID_LOG');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela LOG_ACESSO criada com sucesso.');
  end;


  { Campo Novo : PRO_COD na tabela PROD_CHG usado para a DIJO}
  if (cds.Active) then
    cds.Close;
  tabela := 'PROD_CHG';
  campo := 'PRO_COD';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se o campo não existe então crio}
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE PROD_CHG ADD PRO_COD VARCHAR(6)');
    sc.Commit(TD);
    memo1.Lines.Add('Campo PRO_COD criada com sucesso.');
  end;

  { Indice - Tabela LISTAPRECO}
  if (cds.Active) then
    cds.Close;
  tabela := 'LISTAPRECO';
  campo := 'CODIGO';
  tipo := 'IDX_CODIGO';

  cds.CommandText := 'select RDB$INDEX_NAME AS CAMPO from rdb$INDICES ' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', tipo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE INDEX ' + tipo + ' ON ' + tabela + '(' +
    campo + ')');
    sc.Commit(TD);
    memo1.Lines.Add('Índice IDX_CODIGO na tabela LISTAPRECO, criado com sucesso.');
    {Coloquei aqui pois, não tem como testar se o indice já foi mudado}
    sc.StartTransaction(TD);
    sc.ExecuteDirect('DROP INDEX IDX_CODPRO');
    sc.Commit(TD);

    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE INDEX IDX_CODPRO ON PRODUTOS (CODPRO)');
    sc.Commit(TD);
    memo1.Lines.Add('Índice IDX_CODPRO refeito para aceitar valores repetidos.');

  end;

  { Tabela : ENDERECOCLIENTE }
  if (cds.Active) then
    cds.Close;
  tabela := 'ENDERECOCLIENTE';
  campo := 'DDD1';
  tipo  := 'VARCHAR(3)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  +
      tipo + ', ADD DDD2 VARCHAR(3), ADD DDD3 VARCHAR(3)');
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentados os campos DDD1, DDD2 e DDD3 na tab ENDERECOCLIENTE com sucesso.');
  end;

  { Tabela : CLIENTES }
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'DATARESC';
  tipo  := 'DATE';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  +
      tipo + ', ADD NOMEMAE VARCHAR(80), ADD SEXO CHAR(1), '+
      'ADD FORMA_CORRESPOND VARCHAR(30), ADD GRUPO_CLIENTE VARCHAR(30)');
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentados os campos novos para a tabela CLIENTES.');
    sc.StartTransaction(TD);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
       QuotedStr('Forma de Correspondência: Correio, Email, Fone, etc.') +
       ' where RDB$FIELD_NAME = ' + QuotedStr('FORMA_CORRESPOND') +
       ' and RDB$RELATION_NAME = ' + QuotedStr('CLIENTES'));
    sc.Commit(TD);
    sc.StartTransaction(TD);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
       QuotedStr('Grupo de Clientes: Plano Saúde, PCMSO, Série Escolar, Região, etc.') +
       ' where RDB$FIELD_NAME = ' + QuotedStr('GRUPO_CLIENTE') +
       ' and RDB$RELATION_NAME = ' + QuotedStr('CLIENTES'));
    sc.Commit(TD);
  end;
  if (cds.Active) then
    cds.Close;
  { Tabela : DEPENDENTES }
  tabela := 'CLIENTES_DEP';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    { Tabela DEPENDENTES }
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE CLIENTES_DEP(' +
      ' CODCLIDEPEN INTEGER NOT NULL PRIMARY KEY, CODCLIENTE INTEGER NOT NULL, '+
      ' DEPENDENTE VARCHAR(30), NOMEDEPENDENTE VARCHAR(80), DTANASC DATE, ' +
      ' STATUS SMALLINT, DTARESC DATE, SEXO CHAR(1), NOMEMAE VARCHAR(50),'+
      ' DTAINC DATE, RG VARCHAR(20), EMVIAGEM CHAR(1), DESLANS CHAR(1),CODDPEC INTEGER)');
    sc.Commit(TD);
    sc.StartTransaction(TD);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
       QuotedStr('Tipo de Dependencia: Filho, Conjuge, Funcionario, etc.') +
       ' where RDB$FIELD_NAME = ' + QuotedStr('DEPENDETE') +
       ' and RDB$RELATION_NAME = ' + QuotedStr('CLIENTES_DEP'));
    sc.Commit(TD);
    tabela := 'CREATE GENERATOR GEN_DEP;';
    sc.StartTransaction(TD);
    sc.ExecuteDirect(tabela);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentados a Tabela CLINTES_DEP.');
    memo1.Lines.Add('Generator GEN_DEP criado com sucesso.');

  end;
  if (cds.Active) then
    cds.Close;
  { Tabela : FAIXA_ETARIA }
  tabela := 'FAIXA_ETARIA';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    { Tabela FAIXA_ETARIA }
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE FAIXA_ETARIA(' +
      ' CODFAIXA INTEGER NOT NULL PRIMARY KEY, '+
      ' DESCRICAO VARCHAR(50), IDADE_MIN SMALLINT, IDADE_MAX SMALLINT, ' +
      ' VALOR_PLANO DOUBLE PRECISION, DESCONTO DOUBLE PRECISION, USO VARCHAR(20))');
    sc.Commit(TD);
    tabela := 'CREATE GENERATOR GEN_FAIXAETARIA;';
    sc.StartTransaction(TD);
    sc.ExecuteDirect(tabela);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentados a Tabela FAIXA_ETARIA.');
    memo1.Lines.Add('Generator GEN_FAIXAETARIA criado com sucesso.');
  end;
  if (cds.Active) then
    cds.Close;
  { Tabela : FUNCAO }
  tabela := 'FUNCAO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    { Tabela FUNCAO }
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE FUNCAO(' +
      ' CODFUNCAO INTEGER NOT NULL PRIMARY KEY, '+
      ' DESCRICAO VARCHAR(80))');
    sc.Commit(TD);
    tabela := 'CREATE GENERATOR GEN_FUNCAO;';
    sc.StartTransaction(TD);
    sc.ExecuteDirect(tabela);
    sc.Commit(TD);

    memo1.Lines.Add('Generator GEN_FUNCAO criado com sucesso.');

    memo1.Lines.Add('Acrescentados a Tabela FUNCAO.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : DADOS_COMBOS }
  tabela := 'DADOS_COMBOS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    { Tabela DADOS_COMBOS}
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE DADOS_COMBOS(' +
      ' CODDADOS INTEGER NOT NULL PRIMARY KEY, '+
      ' DESCRICAO VARCHAR(80), USO VARCHAR(30), CODIGOS VARCHAR(50), OUTROS VARCHAR(30))');
    sc.Commit(TD);

    memo1.Lines.Add('Acrescentados a Tabela DADOS_COMBOS.');
    tabela := 'CREATE GENERATOR GEN_DADOS_COMBOS;';
    sc.StartTransaction(TD);
    sc.ExecuteDirect(tabela);
    sc.Commit(TD);
    memo1.Lines.Add('Generator GEN_DADOS_COMBOS criado com sucesso.');
  end;

  { Tabela : CLIENTES - Campos para o SAUDE - ASH}
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'CODINCLUCANC';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  +
      tipo + ', ADD EXIST_COBERT VARCHAR(6), ADD EXISTCOPART VARCHAR(6), '+
      'ADD DATAREINC DATE, adD GERAAVISO CHAR(1), add GERAENV CHAR(1),' +
      'add GERABOL CHAR(1), add EMVIAGEM CHAR(1), ADD DTAALTERA DATE');
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentados os campos novos para a tabela CLIENTES.');
  end;

  { Tabela usada para cadastrar materiais usado por outros produtos }
  if (cds.Active) then
    cds.Close;
  { Tabela : MATERIA_PRIMA }
  tabela := 'MATERIA_PRIMA';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE MATERIA_PRIMA(CODMAT INTEGER NOT NULL PRIMARY KEY, ' +
       '  CODPRODUTO INTEGER, CODPRODMP INTEGER, QTDEUSADA DOUBLE PRECISION)');
    sc.ExecuteDirect('CREATE GENERATOR GEN_CODMATPRIMA');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela MATERIA_PRIMA criada com sucesso.');
  end;


    { Tabela usada para cadastrar materiais usado por outros produtos }
  if (cds.Active) then
    cds.Close;
  { Tabela : VISITAS }
  tabela := 'VISITAS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE VISITAS(CODVISITA INTEGER NOT NULL primary key '+
                    ', CODCLIENTE INTEGER NOT NULL, VISITA VARCHAR( 60 ) '+
                    ', DATAULTIMA DATE, DATAPROXIMA DATE, DIAS INTEGER)');
    sc.ExecuteDirect('CREATE GENERATOR GEN_VISITAS');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela VISITAS criada com sucesso.');
  end;


     { Tabela usada para cadastrar materiais usado por outros produtos }
  if (cds.Active) then
    cds.Close;
  { Tabela : TIPO_VISITAS }
  tabela := 'TIPO_VISITAS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TIPO_VISITAS(CODTIPOVISITA INTEGER NOT NULL primary key '+
                    ', VISITA VARCHAR( 60 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_TIPOVISITAS');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TIPO_VISITAS criada com sucesso.');
  end;

  { Tabela : AGENDAMENTO - Campo Status}
  if (cds.Active) then
    cds.Close;
  tabela := 'AGENDAMENTO';
  campo := 'STATUS';
  tipo  := 'VARCHAR(20)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' ' + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo novo para a tabela AGENDAMENTO.');
  end;

  { Tabela : LOTES - Campo PREÇO}
  if (cds.Active) then
    cds.Close;
  tabela := 'LOTES';
  campo := 'PRECO';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' ' + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo PREÇO para a tabela LOTES.');
  end;

  { Tabela : Agendamento - Campo CODVENDA}
  if (cds.Active) then
    cds.Close;
  tabela := 'AGENDAMENTO';
  campo := 'CODVENDA';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' ' + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo CODVENDA para a tabela AGENDAMENTO.');
  end;


  { Tabela : CLIENTES }
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'SERIELETRA';
  tipo  := 'VARCHAR( 4 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'SERIE';
    tipo  := 'VARCHAR( 4 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'RA';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'CURSO';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Novos Campos (SERIE, SERIELETRA, RA) acrescentados na tabela clientes.');
  end;

  { Tabela : BANCO }
  if (cds.Active) then
    cds.Close;
  tabela := 'BANCO';
  campo := 'CARTEIRA';
  tipo  := 'CHAR( 3 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'CODIGO_CEDENTE';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'CODIGO_EMPRESA';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'CODIGO_AGENCIA';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'DIGITO_AGENCIA';
    tipo  := 'CHAR( 1 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'NUMERO_CONTA';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'DIGITO_CONTA';
    tipo  := 'CHAR( 1 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'CODIGO_PLANO';
    tipo  := 'INTEGER';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'INSTRUCAO1';
    tipo  := 'VARCHAR( 100 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'INSTRUCAO2';
    tipo  := 'VARCHAR( 100 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'INSTRUCAO3';
    tipo  := 'VARCHAR( 100 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'INSTRUCAO4';
    tipo  := 'VARCHAR( 100 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'CEDENTE';
    tipo  := 'VARCHAR( 100 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Novos Campos acrescentados na tabela BANCO.');
  end;

  { Tabela : MATERIA_PRIMA }
  if (cds.Active) then
    cds.Close;
  tabela := 'MATERIA_PRIMA';
  campo := 'TIPOUSO';{Campo usado para informar se é BAIXA SEPARADA OU NO MESMO PEDIDO }
  tipo  := 'VARCHAR(30)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Novo Campo acrescentado na tabela MATERIA_PRIMA.');
    sc.StartTransaction(TD);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
       QuotedStr('Informe: BAIXASEPARADA para fazer a baixa em outro Lançamento, ou ' +
       'BAIXACONJUNTA p/ baixar no mesmo Lançamento') +
       ' where RDB$FIELD_NAME = ' + QuotedStr('TIPOUSO') +
       ' and RDB$RELATION_NAME = ' + QuotedStr('MATERIA_PRIMA'));
    sc.Commit(TD);
  end;
  sc.StartTransaction(TD);
  sc.ExecuteDirect('update RDB$FIELDS set ' +
                   'RDB$FIELD_LENGTH = 150, ' +
                   'RDB$CHARACTER_LENGTH = 150 ' +
                   'where RDB$FIELD_NAME = ' + '''' + 'RDB$4' + '''');
  sc.Commit(TD);
  memo1.Lines.Add('Campos DESCR alterado com suscesso.');

  { Tabela : MATERIA_PRIMA }
  if (cds.Active) then
    cds.Close;
  tabela := 'MATERIA_PRIMA';
  campo := 'USAPRECO';
  tipo  := 'VARCHAR(20)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Novo Campo acrescentado na tabela MATERIA_PRIMA.');
    sc.StartTransaction(TD);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
       QuotedStr('Informe: PRECOCOMPRA para usar o preço de compra, ou ' +
       'PRECOVENDA p/ preço de venda ou SEMPRECO uva valor 0(zero)') +
       ' where RDB$FIELD_NAME = ' + QuotedStr('USAPRECO') +
       ' and RDB$RELATION_NAME = ' + QuotedStr('MATERIA_PRIMA'));
    sc.Commit(TD);
  end;

  { Tabela : MOVIMENTONF }
  if (cds.Active) then
    cds.Close;
  tabela := 'MOVIMENTONF';
  campo := 'LOTE';
  tipo  := 'VARCHAR(60)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Novo Campo acrescentado na tabela MOVIMENTONF.');
  end;

  { Tabela : PARAMETRO }
  if (cds.Active) then
    cds.Close;
  tipo  := 'PRECOESTOQUE';
  cds.CommandText := 'select PARAMETRO as CAMPO from PARAMETRO' +
    ' WHERE PARAMETRO = ''' + tipo + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('INSERT INTO PARAMETRO(DESCRICAO, PARAMETRO,DADOS) VALUES(' +
     QuotedStr('Preço do Estoque(ULTIMOPRECO, PRECOMEDIO, NAOALTERA)') +
     ', ' + QuotedStr('PRECOESTOQUE') + ', ' + QuotedStr('PRECOMEDIO') + ')');
    sc.Commit(TD);
    memo1.Lines.Add('Inserido Item PRECOESTOQUE na tabela Parametro.');
  end;

  { Tabela : FUNCIONARIO }
  if (cds.Active) then
    cds.Close;
  tabela := 'FUNCIONARIO';
  campo := 'ESPECIALIDADE';
  tipo  := 'VARCHAR(100)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + 'CONTACORRENTE' + ' '  + 'VARCHAR(10)');
    sc.Commit(TD);
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + 'BANCO' + ' '  + 'VARCHAR(10)');
    sc.Commit(TD);
    memo1.Lines.Add('Novos Campo acrescentado na tabela Funcionario.');
  end;

  { Generator }
    tabela := 'GEN_ROMANEIO';
    cds.CommandText := 'select RDB$GENERATOR_NAME AS CAMPO from RDB$GENERATORS' +
       ' WHERE RDB$GENERATOR_NAME = ''' + tabela + '''';
    cds.Open;
    {Se tabela não existe então crio}
    if (cds.IsEmpty) then
    begin
      sc.StartTransaction(TD);
      tabela := 'CREATE GENERATOR GEN_ROMANEIO;';
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);

      sc.StartTransaction(TD);
      tabela := 'CREATE GENERATOR GEN_ROMANEIO_F;';
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);

      memo1.Lines.Add('Acrescentados Generators GEN_ROMANEIO.');
      memo1.Lines.Add('e GEN_ROMANEIO_F com sucesso.');
    end;


  { Tabela : EMPRESA }
  if (cds.Active) then
    cds.Close;
  tabela := 'EMPRESA';
  campo := 'CODIGO_CONTA';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo CODIGO_CONTA acrescentado na tabela EMPRESA.');
  end;


  { Tabela : CLIENTES }
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'IP';
  tipo  := 'VARCHAR( 60 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'N_CONTRATO';
    tipo  := 'VARCHAR( 60 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'MAC';
    tipo  := 'VARCHAR( 60 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'MARCA';
    tipo  := 'VARCHAR( 60 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'BANDA_UPLOAD';
    tipo  := 'VARCHAR( 60 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'BANDA_DOWLOAD';
    tipo  := 'VARCHAR( 60 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'TORRE_CONECCAO';
    tipo  := 'VARCHAR( 60 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Novos Campos (IP, MAC, TORRE CPNECÇÃO, ET...) acrescentados na tabela clientes.');
  end;

  { Tabela : CLIENTES - Campos para o SAUDE - ASH}
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'COD_FAIXA';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo COD_FAIXA na tabela CLIENTES.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'DESCONTO';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo DESCONTO na tabela CLIENTES.');
  end;


  if (cds.Active) then
    cds.Close;
  tabela := 'BANCO';
  campo := 'CEDENTE';
  tipo  := 'VARCHAR( 100 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'NCONVENIO';
    tipo  := 'INTEGER';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo CEDENTE e NCONVENIO na tabela BANCO.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'RECEBIMENTO';
  campo := 'CODIGO_DE_BARRAS';
  tipo  := 'VARCHAR( 54 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'IMAGE_COD_BARRAS';
    tipo  := 'BLOB';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo CODIGO_DE_BARRAS e IMAGE_COD_BARRAS na tabela BANCO.');
  end;


    if (cds.Active) then
    cds.Close;
  tabela := 'FAIXA_ETARIA';
  campo := 'USO';
  tipo  := 'VARCHAR( 20 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo USO na tabela FAIXA_ETARIA.');
  end;

  { Generator }
    if (cds.Active) then
      cds.Close;
    tabela := 'GEN_FAIXAETARIA';
    cds.CommandText := 'select RDB$GENERATOR_NAME AS CAMPO from RDB$GENERATORS' +
       ' WHERE RDB$GENERATOR_NAME = ''' + tabela + '''';
    cds.Open;
    {Se tabela não existe então crio}
    if (cds.IsEmpty) then
    begin
      sc.StartTransaction(TD);
      tabela := 'CREATE GENERATOR GEN_FAIXAETARIA;';
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Acrescentados Generators GEN_FAIXAETARIA.');
    end;

  if (cds.Active) then
    cds.Close;
  { Tabela : NOVOS_CAMPOS }
  tabela := 'NOVOS_CAMPOS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE NOVOS_CAMPOS ( CODCAMPOS INTEGER NOT NULL PRIMARY KEY,' +
       '  CAMPO VARCHAR(60),  TABELA VARCHAR(60), DATAINCLUSAO DATE,  TIPO VARCHAR(60),' +
       '   OBS VARCHAR(160), TIPOCAMPO VARCHAR(60))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_CAMPOS');
    sc.ExecuteDirect('SET GENERATOR GEN_CAMPOS TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela NOVOS_CAMPOS criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'ACESSO_SENHA';
  campo := 'MICRO';
  tipo  := 'VARCHAR( 30 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campos MICRO na tabela ACESSO_SENHA.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'ACESSO_SENHA';
  campo := 'P1';
  tipo  := 'VARCHAR( 30 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'P2';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campos P1 e P2 na tabela ACESSO_SENHA.');
  end;

  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select PARAMETRO from PARAMETRO';
  cds.Open;
  if (not cds.Locate('PARAMETRO', 'CADASTROADM',[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS) VALUES(' +
       QuotedStr('No cadastro de cliente usa ABA (ADMINISTRAÇÃO)') + ', ' +
       QuotedStr('CADASTROADM') + ', ' +
       QuotedStr('N') + ')');
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado o Parametro CADASTROADM.');
  end;
  if (not cds.Locate('PARAMETRO', 'CADASTROINTERNET',[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS) VALUES(' +
       QuotedStr('No cadastro de cliente usa ABA (INTERNET)') + ', ' +
       QuotedStr('CADASTROINTERNET') + ', ' +
       QuotedStr('N') + ')');
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado o Parametro CADASTROINTERNET.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'LOG_ACESSO';
  campo := 'USUARIO';
  tipo  := 'VARCHAR( 60 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo USUARIO na tabela LOG_ACESSO.');
  end;

  { Tabela : CLIENTES }
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'MENSALIDADE';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'ANUIDADE';
    tipo  := 'DOUBLE PRECISION';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'PARCELA';
    tipo  := 'INTEGER';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'PARCELAGERADAS';
    tipo  := 'INTEGER';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campos MENSALIDADE, ANUIDADE, PARCELA e PARCELAGERADA na tabela CLIENTES.');
  end;

  { Tabela : RECEBIMENTO }
  if (cds.Active) then
    cds.Close;
  tabela := 'RECEBIMENTO';
  campo := 'DV';
  tipo  := 'CHAR(2)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo DV na tabela RECEBIMENTO.');
  end;


  { Tabela usada para cadastrar materiais usado por outros produtos }
  if (cds.Active) then
    cds.Close;
  { Tabela : CBR643 }
  tabela := 'CBR643';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE CBR643 (id_cbr integer not null primary key ' +
                     ',databaixa date,NOMECBR VARCHAR(100) NOT NULL,OBS BLOB)');
    sc.ExecuteDirect('CREATE GENERATOR gen_cbr');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela MATERIA_PRIMA criada com sucesso.');
  end;

  { Tabela : RECEBIMENTO }
  if (cds.Active) then
    cds.Close;
  tabela := 'RECEBIMENTO';
  campo := 'nomearquivoretorno';
  tipo  := 'VARCHAR(80)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo nomearquivoretorno na tabela RECEBIMENTO.');
  end;

  { Tabela : AGENDAMENTO }
  if (cds.Active) then
    cds.Close;
  tabela := 'AGENDAMENTO';
  campo := 'CODUSUARIO';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campo CODUSUARIO na tabela AGENDAMENTO.');
  end;


  { Tabela : ESTADO_ICMS  }
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select  RDB$FIELD_NAME from  RDB$RELATION_FIELDS' +
    ' where  RDB$RELATION_NAME = ' + QuotedStr('ESTADO_ICMS') +
    ' and RDB$FIELD_SOURCE = ' + QuotedStr('TEXTO30');
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    {sc.ExecuteDirect('drop PROCEDURE CALCULA_ICMS');
    sc.Commit(TD);
    sc.StartTransaction(TD);}
    sc.ExecuteDirect('ALTER TABLE ESTADO_ICMS ALTER CFOP TYPE TEXTO30');
    sc.Commit(TD);
    memo1.Lines.Add('Alterado o Campo CFOP para VARCHAR(30).');
  end;



  if (cds.Active) then
    cds.Close;
  { Tabela : estoqueCCusto }
  tabela := 'ESTOQUECCUSTO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE estoqueCCusto(' +
      'codTab integer not null primary key, '+
      'codProduto integer not null, ' +
      'codCcusto integer not null, ' +
      'qtdeEstoque DOUBLE PRECISION, ' +
      'pmEstoque DOUBLE PRECISION, ' +
      'vlrEstoque DOUBLE PRECISION COMPUTED by (qtdeEstoque * pmEstoque))');
    sc.ExecuteDirect('CREATE GENERATOR estCcusto');
    sc.ExecuteDirect('SET GENERATOR estCcusto TO 0');
    sc.ExecuteDirect('Create TRIGGER estCcustoCod  for estoqueCCusto active ' +
      'BEFORE INSERT POSITION 0  AS BEGIN ' +
      'IF (NEW.codTab IS NULL) then ' +
      'NEW.codTab = Gen_id(estCcusto,1); end');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela estoqueCCusto criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : FAIXA_ETARIA }
  tabela := 'FAIXA_ETARIA';
  campo := 'PARCELA';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'valorparcela';
    tipo  := 'DOUBLE PRECISION';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo PARCELA e valorparcela adicionado na Tabela FAIXA_ETARIA.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : NOTAFISCAL }
  tabela := 'NOTAFISCAL';
  campo := 'NOMETRANSP';
  tipo  := 'VARCHAR(50)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('ALTER TABLE NOTAFISCAL ADD PLACATRANSP VARCHAR(8), ' +
    'ADD CNPJ_CPF VARCHAR( 20 ), ADD END_TRANSP VARCHAR( 80 ), ADD CIDADE_TRANSP VARCHAR( 50 ), ' +
    'ADD UF_VEICULO_TRANSP CHAR( 2 ), ADD UF_TRANSP CHAR( 2 ), ADD FRETE CHAR( 1 ), ' +
    'ADD INSCRICAOESTADUAL VARCHAR( 20 )');
    sc.Commit(TD);
    memo1.Lines.Add('Campos de Trasporte adicionados na Tabela NOTAFISCAL.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : EMPRESA }
  tabela := 'EMPRESA';
  campo := 'CODIGO';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;

  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  +
    tipo + ', ADD TIPO CHAR(1), ADD IE_RG VARCHAR(15)');
    sc.Commit(TD);
    memo1.Lines.Add('Campos CODIGO adicionado na Tabela EMPRESA.');
  end;

  // Campo MARCA na TAB FAMILIAPRODUTOS
  if (cds.Active) then
    cds.Close;
  { Tabela : FAMILIAPRODUTOS }
  tabela := 'FAMILIAPRODUTOS';
  campo := 'MARCA';
  tipo  := '';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;

  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  +
    ' VARCHAR(30)');
    sc.Commit(TD);
    memo1.Lines.Add('Campos MARCA adicionado na Tabela FAMILIAPRODUTOS.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : FAIXA_ETARIA }
  tabela := 'FAIXA_ETARIA';
  campo := 'CODIGOS';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo CODIGOS adicionado na Tabela FAIXA_ETARIA.');
  end;

  if (cds.Active) then
    cds.close;
  tabela := 'LOGS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE LOGS ('+
      ' ID_LOG                 INTEGER NOT NULL PRIMARY KEY' +
      ', TABELA                 VARCHAR( 80 )' +
      ', DATA                   DATE' +
      ', USUARIO                VARCHAR( 80 )' +
      ', MICRO                  VARCHAR( 50 )' +
      ', HORA                   TIME' +
      ', CAMPO1                 VARCHAR( 50 )' +
      ', CAMPO2                 VARCHAR( 50 )' +
      ', CAMPO3                 VARCHAR( 50 )' +
      ', CAMPO4                 VARCHAR( 50 )' +
      ', DATA_SET               BLOB( 65535, 1 )' +
      ')');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela LOGS criada com sucesso.');
  end;

  { Generator }
  if (cds.Active) then
    cds.close;
    tabela := 'GEN_LOG';
  cds.CommandText := 'select RDB$GENERATOR_NAME AS CAMPO from RDB$GENERATORS' +
     ' WHERE RDB$GENERATOR_NAME = ''' + tabela + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE GENERATOR gen_log');
    sc.ExecuteDirect('SET GENERATOR gen_log TO 0');
    sc.ExecuteDirect('Create TRIGGER TRG_LOGS  for logs active ' +
      'BEFORE INSERT POSITION 0  AS BEGIN ' +
      'IF (NEW.ID_LOG IS NULL) then ' +
      'NEW.ID_LOG = Gen_id(gen_log,1); end');
    sc.Commit(TD);
    memo1.Lines.Add('Generator e Trigger LOGS criado com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : LISTAPRECO }
  tabela := 'LISTAPRECO';
  campo := 'CODFORNECEDOR';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo CODFORNECEDOR adicionado na Tabela LISTAPRECO.');
  end;


  if (cds.Active) then
    cds.Close;
  { Tabela : PAGAMENTO }
  tabela := 'PAGAMENTO';
  campo := 'DUP_REC_NF';
  tipo  := 'VARCHAR(15)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo DUP_REC_NF adicionado na Tabela PAGAMENTO.');
  end;
  if (cds.Active) then
    cds.Close;
  { Tabela : PAGAMENTO }
  tabela := 'PAGAMENTO';
  campo := 'DP';
  tipo  := 'smallint';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo DP adicionado na Tabela PAGAMENTO.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MOVIMENTODETALHE }
  tabela := 'MOVIMENTODETALHE';
  campo := 'PRECOCUSTO';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo PRECOCUSTO adicionado na Tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : VENDA }
  tabela := 'VENDA';
  campo := 'VALOR_ICMS';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo +
      ', ADD VALOR_FRETE            DOUBLE PRECISION' +
      ', ADD VALOR_SEGURO           DOUBLE PRECISION' +
      ', ADD OUTRAS_DESP            DOUBLE PRECISION' +
      ', ADD VALOR_IPI            DOUBLE PRECISION');
    sc.Commit(TD);
    memo1.Lines.Add('Campos novos(VALOR_FRETE, ICMS, IPI ..., adicionado na Tabela ' + tabela + '.');
  end;
  if (cds.Active) then
    cds.Close;
  { Tabela : FAIXAETARIADETALHE }
  tabela := 'FAIXAETARIADETALHE';
  campo := 'CODFAIXADET';
  tipo  := 'INTEGER NOT NULL PRIMARY KEY';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE FAIXAETARIADETALHE (CODFAIXADET INTEGER ' +
                     'NOT NULL PRIMARY KEY ' +
                     ', CODFAIXA INTEGER ' +
                     ', DESCRICAO VARCHAR(80) ' +
                     ', TIPO VARCHAR(15) '+
                     ')');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela FAIXAETARIADETALHE adicionada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : EXCEPTION }
  tabela := 'RDB$EXCEPTIONS';
  campo := 'ALTERA_COMPRA_N_PERMITIDO';
  tipo := 'Compra já Paga , não é possível fazer alteração';
  cds.CommandText := 'select RDB$EXCEPTION_NAME AS CAMPO from rdb$exceptions' +
    ' WHERE RDB$EXCEPTION_NAME = ''' + campo + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE EXCEPTION ' + campo + ' '  + QuotedStr(tipo));
    sc.Commit(TD);
    memo1.Lines.Add('Exception ALTERA_COMPRA_N_PERMITIDO, adicionado.' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MOVIMENTODETALHE }
  tabela := 'MOVIMENTODETALHE';
  campo := 'VLRESTOQUE';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo +
      ', ADD QTDEESTOQUE            DOUBLE PRECISION');
    sc.Commit(TD);
    memo1.Lines.Add('Campos novos(VLRESTOQUE, QTDEESTOQUE, adicionado na Tabela ' + tabela + '.');
  end;

 { if (cds.Active) then
    cds.Close;
  tabela := 'MOVIMENTONF';
  campo := 'FK_MOVIMENTONF_NF';
  tipo  := 'NUMNF';
  cds.CommandText := 'select RDB$CONSTRAINT_NAME AS CAMPO from rdb$CHECK_CONSTRAINTS' +
    ' WHERE RDB$CONSTRAINT_NAME = ''' + campo + '''';
  cds.Open;
  campo := 'FK_MOVIMENTONF_NF';
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CONSTRAINT ' + campo + ' FOREIGN KEY (' +
    ' CODMOVIMENTO ' + ') REFERENCES NOTAFISCAL (' + tipo + ') ON UPDATE CASCADE ' +
    ' ON DELETE CASCADE');
    sc.Commit(TD);
    memo1.Lines.Add('Chave Estrangeira FK_MOVIMENTONF_NF MOVIMENTONF) criada com sucesso.');
  end;  }

  if (cds.Active) then
    cds.Close;
  { Tabela : RECEBIMENTO }
  tabela := 'RECEBIMENTO';
  campo := 'DATACONSOLIDA';
  tipo  := 'DATE';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('ALTER TABLE PAGAMENTO ADD DATACONSOLIDA DATE');
    {sc.ExecuteDirect('update PAGAMENTO p set p.dataconsolida = p.DATAPAGAMENTO');
    sc.ExecuteDirect('update RECEBIMENTO p set p.dataconsolida = p.DATARECEBIMENTO');
    sc.ExecuteDirect('update RECEBIMENTO r set r.VALOR_RESTO = r.VALORRECEBIDO ' +
      ' WHERE STATUS = ' + QuotedStr('7-'));
    sc.ExecuteDirect('update PAGAMENTO r set r.VALOR_RESTO = r.VALORRECEBIDO ' +
      ' WHERE STATUS = ' + QuotedStr('7-'));}
    sc.Commit(TD);
    memo1.Lines.Add('DATACONSOLIDA inserido na tab PAGAMENTO e RECEBIMENTO.' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : ATUALIZA }
  tabela := 'ATUALIZA';
  campo := 'DATA_MODIFICADO';
  tipo  := 'TimeStamp';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('DATA_MODIFICADO inserido na tab ' + tabela + '.');
  end;

  ///user control

    if (cds.Active) then
    cds.Close;
  { Tabela : FAIXAETARIADETALHE }
  tabela := 'UCLOG ';

  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('create table UCLOG (' +
                     'APPLICATIONID  VARCHAR(250),IDUSER INTEGER,MSG VARCHAR(250),'+
                     'DATA VARCHAR(14), NIVEL  INTEGER)');

    sc.ExecuteDirect('create table UCPMSG (' +
                     'IDMSG INTEGER,USRFROM INTEGER,USRTO INTEGER, SUBJECT VARCHAR(50),'+
                     'MSG VARCHAR(255), DTSEND VARCHAR(12), DTRECEIVE VARCHAR(12))');

    sc.ExecuteDirect('create table UCTABRIGHTS (' +
                     'UCIDUSER INTEGER, UCMODULE VARCHAR(50), UCCOMPNAME VARCHAR(50),UCKEY VARCHAR(255))');

    sc.ExecuteDirect('create table UCTABRIGHTSEX (' +
                     'UCIDUSER INTEGER, UCMODULE VARCHAR(50), UCCOMPNAME VARCHAR(50), UCFORMNAME VARCHAR(50),'+
                     'UCKEY VARCHAR(255))');

    sc.ExecuteDirect('create table UCTABUSERS (' +
                     'UCIDUSER INTEGER, UCUSERNAME VARCHAR(30),UCLOGIN VARCHAR(30),UCPASSWORD VARCHAR(250),'+
                     'UCEMAIL VARCHAR(150),UCPRIVILEGED INTEGER,UCTYPEREC CHAR(1),UCPROFILE INTEGER,'+
                     'UCKEY VARCHAR(255),UCPASSEXPIRED CHAR(10), UCUSEREXPIRED INTEGER DEFAULT 0,'+
                     'UCUSERDAYSSUN INTEGER, UCINATIVE  INTEGER)');

    sc.ExecuteDirect('create table UCTABUSERSLOGGED (' +
                     'UCIDLOGON CHAR(38),UCIDUSER INTEGER, UCAPPLICATIONID VARCHAR(50),'+
                     'UCMACHINENAME VARCHAR(50),UCDATA VARCHAR(14))');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela USER CONTROL  adicionada com sucesso.');

  end;
  //fim_user control

  if (cds.Active) then
    cds.Close;
  { EXCEPTION_SERIEPADRAO }
  cds.CommandText := 'select RDB$EXCEPTION_NAME from RDB$EXCEPTIONS ' +
    ' WHERE RDB$EXCEPTION_NAME = ''' + 'EXCEPTION_SERIEPADRAO' + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE EXCEPTION exception_SERIEPADRAO  ' +
    QuotedStr('Erro: Parametro SERIEPADRAO não encontrado na tabela PARAMETRO'));
    sc.Commit(TD);
    memo1.Lines.Add('EXCEPTION_SERIEPADRAO inserido com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : pagamento }
  tabela := 'PAGAMENTO';
  campo := 'SITUACAOCHEQUE';
  tipo  := 'VARCHAR(10)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('SITUACAOCHEQUE inserido na tab ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : pagamento }
  tabela := 'FUNCIONARIO';
  campo := 'AGENCIA';
  tipo  := 'VARCHAR(30)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    sc.StartTransaction(TD);    
    sc.ExecuteDirect('update RDB$FIELDS SET RDB$FIELD_LENGTH = 30 where RDB$FIELD_NAME =  ' +
      QuotedStr('RDB$959'));
    sc.ExecuteDirect('update RDB$FIELDS SET RDB$FIELD_LENGTH = 30 where RDB$FIELD_NAME =  ' +
      QuotedStr('RDB$960'));
    sc.Commit(TD);
    memo1.Lines.Add('CAMPO AGENCIA inserido na tab ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : pagamento }
  tabela := 'NOTAFISCAL';
  campo := 'STATUS';
  tipo  := 'char(1)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('ALTER TABLE MOVIMENTONF ADD QTDEEXP DOUBLE PRECISION');
    sc.ExecuteDirect('ALTER TABLE MOVIMENTONF ADD PRECOEXP DOUBLE PRECISION');
    sc.ExecuteDirect('ALTER TABLE NOTAFISCAL ADD VLRTOTALEXP DOUBLE PRECISION');
    sc.ExecuteDirect('ALTER TABLE MOVIMENTODETALHE ADD NOTAFISCAL VARCHAR(15)');
    sc.ExecuteDirect('ALTER TABLE LOTES ADD NOTAFISCAL VARCHAR(15)');
    sc.Commit(TD);
    memo1.Lines.Add('CAMPO STATUS inserido na tab ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : CAIXAFECHAMENTO }
  tabela := 'CAIXAFECHAMENTO';
  campo := 'DATAFECHAMENTO';
  tipo  := 'date';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('create table CAIXAFECHAMENTO(dataFechamento date not null ' +
     '  primary key, mes smallint , ano smallint , situacaoCaixa char(1))');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela FechamentoCaixa criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MOVIMENTODETALHE }
  tabela := 'MOVIMENTODETALHE';
  campo := 'DESCPRODUTO';
  tipo  := 'VARCHAR(300)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado campo ' + campo + ' na tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : CAIXA }
  tabela := 'CAIXA';
  campo := 'COD_CAIXA';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('create table caixa (' +
      ' cod_caixa integer not null primary key, ' +
      ' caixa integer, ' +
      ' data timestamp, ' +
      ' situacao varchar(10), ' +
      ' valorentrada double precision, ' +
      ' historicocaixa varchar(100), ' +
      ' nomecaixa varchar(15),'  +
      ' valorsaida double precision)');
    sc.ExecuteDirect('create generator gen_caixa');
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MOVIMENTO }
  tabela := 'MOVIMENTO';
  campo := 'OBS';
  tipo  := 'VARCHAR(100)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado Campo ' + campo + ' na tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;

  { EXCEPTION_CAIXAFECHADO }
  cds.CommandText := 'select RDB$EXCEPTION_NAME from RDB$EXCEPTIONS ' +
    ' WHERE RDB$EXCEPTION_NAME = ''' + 'CAIXAFECHADO' + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE EXCEPTION CAIXAFECHADO ' +
    QuotedStr('Caixa já fechado nesta data.'));
    sc.Commit(TD);
    memo1.Lines.Add('Exception CAIXAFECHADO inserido com sucesso.');
  end;


  if (cds.Active) then
    cds.Close;
  { Tabela : PRODUTOS }
  tabela := 'PRODUTOS';
  campo := 'TIPOPRECOVENDA';  // Se usa o Preco Fixo da TAB PRODUTOS ou
  // Calcula o Preco de Venda sobre o Preco de Compra usando o campo Margem 
  tipo  := 'CHAR(1)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
      QuotedStr('Preço de Venda usado nos relátorios e nas vendas: Pode ser ' +
      'F = Preço de Venda informado no cadastro do Produto;' +
      'M = Preço de Venda pelo Preço de Custo Médio x a Margem;'+
      'U = Preço de Venda pelo Preço da Última Compra * Margem;') +
      ' where RDB$FIELD_NAME = ' + QuotedStr('TIPOPRECOVENDA') +
      ' and RDB$RELATION_NAME = ' + QuotedStr('PRODUTOS'));
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado Campo ' + campo + ' na tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MOVIMENTODETALHE }
  tabela := 'MOVIMENTODETALHE';
  campo := 'PRECOULTIMACOMPRA';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado Campo ' + campo + ' na tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : PLANO }
  tabela := 'PLANO';
  campo := 'REDUZRECEITA';
  tipo  := 'CHAR(1)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
      QuotedStr('É usado na montagem da DRE, caso a conta seja informado ' +
      'S , os lançamentos desta entram em Deducoes das Receitas na DRE.') +
      ' where RDB$FIELD_NAME = ' + QuotedStr(campo) +
      ' and RDB$RELATION_NAME = ' + QuotedStr(tabela));
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado Campo ' + campo + ' na tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TRANSPORTADORA }
  tabela := 'TRANSPORTADORA';
  campo := 'FONE';
  tipo  := 'VARCHAR(15)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD FONE2 VARCHAR(15)');
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD FAX VARCHAR(15)');
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CONTATO VARCHAR(40)');
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD BAIRRO VARCHAR(40)');
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD CEP VARCHAR(15)');
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado Campo ' + campo + ' na tabela ' + tabela + '.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MOVIMENTODETALHE }
  tabela := 'MOVIMENTODETALHE';
  campo := 'CST';
  tipo  := 'VARCHAR(5)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD VALOR_ICMS double precision');
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado Campo ' + campo + ' na tabela ' + tabela + '.');
  end;

  { Tabela : CLIENTES }
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'COD_TRANPORTADORA';
  tipo  := 'integer';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo COD_TRANPORTADORA criado comsucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MOVIMENTODETALHE }
  tabela := 'MOVIMENTODETALHE';
  campo := 'VLR_BASE';
  tipo  := 'DOUBLE PRECISION';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' +
      QuotedStr('Valor base para NF.') +
      ' where RDB$FIELD_NAME = ' + QuotedStr(campo) +
      ' and RDB$RELATION_NAME = ' + QuotedStr(tabela));
    sc.Commit(TD);
    memo1.Lines.Add('Adicionado Campo ' + campo + ' na tabela ' + tabela + '.');
  end;


  {FIM}

  Memo1.Lines.Add('Banco de Dados atualizado com sucesso !');
  bitbtn1.Font.Size := 8;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var  database, muda, script, erro: string;
   Transacao: TTransactionDesc;
//      executabat: PAnsiChar;
begin
  erro := 'nao';
  Memo2.Clear;
  Transacao.TransactionID := 1;
  Transacao.IsolationLevel := xilREADCOMMITTED;

  bitbtn2.Font.Size := 12;
  {  script.LoadFromFile('C:\home\teste.sql');
  sc.ExecuteDirect(script);}
  if (edit1.Text = '') then
  begin
    MessageDlg('Informe o diretório onde estão os scripts.', mtInformation, [mbOk],0);
    Edit1.SetFocus;
    bitbtn2.Font.Size := 8;
    exit;
  end;
  database := sc.Params.Values['Database'];
  if (not cds_sp.Active) then
    cds_sp.Open;
  cds_sp.First;
  memo1.Lines.Clear;
  while not cds_sp.Eof do
  begin
    sp := edit1.Text + cds_spSCRIPT.AsString;
    if (not FileExists(sp)) then
    begin
       memo1.Lines.Add('Script não encotrado : ' + sp);
       bitbtn2.Font.Size := 8;
       exit;
    end;
    memo2.Lines.LoadFromFile(sp);
    script := memo2.Lines.GetText;
    sc.StartTransaction(Transacao);
    try
      if (sc.ExecuteDirect(script) = 0) then
      begin
        sc.Commit(Transacao);
        muda := 'update atualiza set INSERIDO = ' + QuotedStr('S') +
        ' ,DATASCRIPT = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Now)) + ' where ' ;
        muda := muda + 'SCRIPT = ' + '''' + cds_spSCRIPT.AsString + '''';
        sc.StartTransaction(Transacao);
        sc.ExecuteDirect(muda);
        sc.Commit(Transacao);
      end;
    except
      sc.Rollback(Transacao);
      memo1.Lines.Add('Erro na execução do Script : ' + cds_spSCRIPT.AsString);
      bitbtn2.Font.Size := 8;
      erro := 'SIM';
      exit;
    end;
    if (erro <> 'SIM') then
       memo2.Lines.Clear;
    cds_sp.Next;
  end;


  if (erro <> 'SIM') then
  begin
    memo1.Lines.Add('----------------------------------------------------');
    memo1.Lines.Add('Atualizações feitas com sucesso.');
    memo1.Lines.Add('----------------------------------------------------');
    bitbtn2.Font.Size := 8;
 end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  bitbtn3.Font.Size := 12;
  if (OpenDialog1.Execute) then
    edit1.Text := ExtractFilePath(OpenDialog1.FileName);
  bitbtn3.Font.Size := 8;
end;

procedure TForm1.InsereScriptTabela;
var sql: string;
   script: variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  if (not cds1.Active) then
    cds1.Open;

  Try
    script := 'baixaTitulosRec092006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '06/09/06' + ''',';
      sql := sql + '''' + 'SP usada para baixar títulos' + ''',';
      sql := sql + '''' + '973' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'gera_cheq_boletos_dup092006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '06/09/06' + ''',';
      sql := sql + '''' + 'Alterado o cod. da forma de rec.' + ''',';
      sql := sql + '''' + '975' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'inclui_rec001.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '06/09/06' + ''',';
      sql := sql + '''' + 'Corrigido a forma de Pagamento.' + ''',';
      sql := sql + '''' + '968' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'cancelaBaixaRec092006c.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '08/09/06' + ''',';
      sql := sql + '''' + 'Alterado para remover o título gerado.' + ''',';
      sql := sql + '''' + '979' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'gera_parcelas_rec092006c.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '08/09/06' + ''',';
      sql := sql + '''' + 'Gravo o código CODORIGEM nos novos títulos gerados.' + ''',';
      sql := sql + '''' + '980' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'gera_rec092006c.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '08/09/06' + ''',';
      sql := sql + '''' + 'Gravo o código CODORIGEM nos novos títulos gerados.' + ''',';
      sql := sql + '''' + '981' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'sp_mov_caixa092006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '09/22/06' + ''',';
      sql := sql + '''' + 'Usado no relatório Movimento Caixa(caixa_movimento.rep).' + ''',';
      sql := sql + '''' + '1045' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_inserecontacontabil092006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Quando é inserido um novo cliente, é colocado uma conta contabil nele.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_lanca_contabilvenda102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Lança na MovimentoCont o caixa de quando é feito Venda a vista ou com entrada.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_altera_contabilvenda102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Corrige valor ou data se houver.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_apaga_contabilvenda102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Exclui lançamento da MovimentoCont se foi excluido da venda.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_inserecontacontabilforn102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Quando é inserido um novo Fornecedor, é colocado uma conta contabil nele.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_lanca_contabilcompra102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Lança na MovimentoCont o caixa de quando é feito Compra a vista ou com entrada.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_altera_contabilcompra102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Corrige valor ou data se houver.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'tr_apaga_contabilcompra102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/02/06' + ''',';
      sql := sql + '''' + 'Exclui movimentocont caso compra tenha sido excluida.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'sp_contas_pagas102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/03/06' + ''',';
      sql := sql + '''' + 'Colocado null em algumas variaveis apos o suspend.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'sp_contas_pagas_periodo102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/03/06' + ''',';
      sql := sql + '''' + 'Colocado null em algumas variaveis apos o suspend.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'sp_mov_caixa102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/03/06' + ''',';
      sql := sql + '''' + 'Colocado null em algumas variaveis apos o suspend.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'inclui_pag102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/03/06' + ''',';
      sql := sql + '''' + 'Corrigido o valor Desconto para 0.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'baixaTitulosRec102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/05/06' + ''',';
      sql := sql + '''' + 'Retirado o ELSE que baixava cheques pendentes' + ''',';
      sql := sql + '''' + ' ' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'gera_pag102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/11/06' + ''',';
      sql := sql + '''' + 'Gera novos títulos quando a parcela é maior q 1' + ''',';
      sql := sql + '''' + ' ' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'altera_estoque102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/11/06' + ''',';
      sql := sql + '''' + 'Corrigido para não dar excption' + ''',';
      sql := sql + '''' + ' ' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'entrada_estoque102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/11/06' + ''',';
      sql := sql + '''' + 'Corrigido para não dar excption' + ''',';
      sql := sql + '''' + ' ' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'gera_parcelas_pag102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/13/06' + ''',';
      sql := sql + '''' + 'Corrigido o valor resto quanto tem entrada.' + ''',';
      sql := sql + '''' + ' ' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'sp_mov_caixa_ordem102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/23/06' + ''',';
      sql := sql + '''' + 'Esta SP roda a sp_mov_caixa e recria o campo saldo.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'sp_mov_caixa102006a.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/23/06' + ''',';
      sql := sql + '''' + 'Esta SP roda a sp_mov_caixa e recria o campo saldo.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'atualiza_chg102006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '10/23/06' + ''',';
      sql := sql + '''' + 'Corrigido erros importação da Universal.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'atualiza_chg112006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '11/08/06' + ''',';
      sql := sql + '''' + 'Corrigido alteração do campo chave.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'trg_codbarra112006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '11/08/06' + ''',';
      sql := sql + '''' + 'Trigger que insere o código de barra se este estiver vazio.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'trg_usaproduto112006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '11/08/06' + ''',';
      sql := sql + '''' + 'Trigger que insere o código de barra se este estiver vazio.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'trg_produtos_margem112006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '11/08/06' + ''',';
      sql := sql + '''' + 'Quando a margem é alterado se usa LISTAPRECO altera a margem do lista preço tbém.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := 'atualiza_chg122006.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '01/04/07' + ''',';
      sql := sql + '''' + 'Corrigido erro importação.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := '01_2007_usaproduto.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '01/05/07' + ''',';
      sql := sql + '''' + 'Corrigido erro importação.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := '01_2007atualiza_chg.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '01/19/07' + ''',';
      sql := sql + '''' + 'Corrigido erro importação Universal.' + ''',';
      sql := sql + '''' + '1080' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := '01_2007SP_REL_RCBO.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '01/22/07' + ''',';
      sql := sql + '''' + 'Corrigido relatorio de Recibo.' + ''',';
      sql := sql + '''' + '' + ''',';
      sql := sql + '''' + '' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := '01_2007_trg_atualizachg.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '01/30/07' + ''',';
      sql := sql + '''' + '' + ''',';
      sql := sql + '''' + '' + ''',';
      sql := sql + '''' + '' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;

    script := '01_2007_trg_listapreco.sql';
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '01/30/07' + ''',';
      sql := sql + '''' + '' + ''',';
      sql := sql + '''' + '' + ''',';
      sql := sql + '''' + '' + ''')';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(sql);
      sc.Commit(TD);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;


    Memo1.Lines.Add('tabela ATUALIZADA com sucesso.');
  except
    Memo1.Lines.Add('Erro para atualizar a tabela ATUALIZA.');
  end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var i: integer;
  script, sql: string;
begin
    bitbtn4.Font.Size := 12;
  //  InsereScriptTabela();
  if (not cds1.Active) then
    cds1.Open;


  for i := 0 to memo3.Lines.Count do
  begin
    script := memo3.Lines[i];
    if (script <> '') then
    if (not cds1.Locate('SCRIPT', script, [loCaseInsensitive])) then
    begin
      sql := 'INSERT INTO ATUALIZA (SCRIPT, DATASCRIPT, PARAQSERVE,';
      sql := sql + 'VERSAO, INSERIDO) VALUES(';
      sql := sql + '''' + script + ''',';
      sql := sql + '''' + '01/01/07' + ''',';
      sql := sql + '''' + '' + ''',';
      sql := sql + '''' + '' + ''',';
      sql := sql + '''' + 'N' + ''')';
      sc.ExecuteDirect(sql);
      Memo1.Lines.Add('Inserido script : ' + script);
    end;
  end;
  Memo1.Lines.Add('Tabela Scripts atualizada com sucesso!' + script);
  bitbtn4.Font.Size := 8;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  if (edit1.Text = '') then
  if (SP = '') then
  begin
    MessageDlg('Informe o diretório onde estão os scripts.', mtInformation, [mbOk],0);
    Edit1.SetFocus;
    bitbtn2.Font.Size := 8;
    exit;
  end;
  bitbtn6.Font.Size := 12;
  Try
    memo2.Lines.SaveToFile(SP);
    MessageDlg('Alterações gravadas com sucesso.', mtInformation, [mbOk],0);
  except
    bitbtn6.Font.Size := 8;
    MessageDlg('Não foi possível gravar as alterações.', mtError, [mbOk],0);
  end;
  bitbtn6.Font.Size := 8;
end;


procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  memo2.Lines.Clear;
  if (OpenDialog1.Execute) then
    sp := OpenDialog1.FileName;
    memo2.Lines.LoadFromFile(SP);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var  database, muda, script, erro: string;
begin
  bitbtn2.Font.Size := 12;
  {  script.LoadFromFile('C:\home\teste.sql');
  sc.ExecuteDirect(script);}
  if (edit1.Text = '') then
  begin
    MessageDlg('Informe o diretório onde estão os scripts.', mtInformation, [mbOk],0);
    Edit1.SetFocus;
    bitbtn2.Font.Size := 8;
    exit;
  end;
  database := sc.Params.Values['Database'];
  if (not cds_sp.Active) then
    cds_sp.Open;
  memo1.Lines.Clear;
  while not cds_sp.Eof do
  begin
    sp := edit1.Text + cds_spSCRIPT.AsString;
    if (not FileExists(sp)) then
    begin
       memo1.Lines.Add('Script não encotrado : ' + sp);
       bitbtn2.Font.Size := 8;
       exit;
    end;
    memo2.Lines.LoadFromFile(sp);
    script := memo2.Lines.GetText;
      if (sc.ExecuteDirect(script) = 0) then
      begin
        muda := 'update atualiza set INSERIDO = ' + '''' + 'S' + ''' where ' ;
        muda := muda + 'SCRIPT = ' + '''' + cds_spSCRIPT.AsString + '''';
        sc.ExecuteDirect(muda);
      end;
    cds_sp.Next;
  end;
  if (erro <> 'SIM') then
  begin
    memo1.Lines.Add('----------------------------------------------------');
    memo1.Lines.Add('Atualizações feitas com sucesso.');
    memo1.Lines.Add('----------------------------------------------------');
    bitbtn2.Font.Size := 8;
 end;

end;

function TForm1.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
var tabela,  tipo: string;
  campo : variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if  MessageDlg('Remove da tabela PRODUTOS todos os itens'+#13+#10+
      'que não foram usados até agora ? ',
      mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
      tabela := 'delete from produtos prod where not exists ';
      tabela := tabela + ' (select m.codproduto';
      tabela := tabela + ' from movimentodetalhe m where m.codproduto = prod.codproduto)';
      sc.StartTransaction(TD);
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Removido os produtos não usados até agora.');
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if (ComboBox1.Text <> 'Fields') then
  begin
     Edit4.Enabled := False;
     Edit5.Enabled := False;
     Label7.Caption := 'Generators';
  end
  else
  begin
     Edit4.Enabled := True;
     Edit5.Enabled := True;
     Label7.Caption := 'Tabela';
  end;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
var tabela,  tipo: string;
  campo : variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

   if (cdsNcampo.Active) then
    cdsNcampo.Close;
  cdsNcampo.Params[0].Clear;
  cdsNcampo.Params[1].Clear;
  cdsNcampo.Params[1].AsString := 'todos';
  cdsNcampo.Open;
  cdsNcampo.First;
  if (not cdsNcampo.IsEmpty) then
  begin
     while not cdsNcampo.Eof do
     begin
        if (cds.Active) then
          cds.Close;
        tabela := cdsNcampoTABELA.AsString;
        campo := cdsNcampoCAMPO.AsString;
        tipo  := cdsNcampoTIPOCAMPO.AsString;
        cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
          ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
        cds.Open;
        if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
        begin
          sc.StartTransaction(TD);
          sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
          sc.Commit(TD);
          memo1.Lines.Add('Tabela NOTAFISCAL adicionado campo ICMS.');
        end;
        cdsNcampo.Next;
     end;
  end;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  if (not cdsNcampo.Active) then
     cdsNcampo.Open;
  cdsNcampo.Append;

  if c_6_genid.Active then
     c_6_genid.Close;
  c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CAMPOS, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  c_6_genid.Open;
  cdsNcampoCODCAMPOS.AsInteger := c_6_genidCODIGO.AsInteger;
  c_6_genid.Close;

  cdsNcampoTIPO.AsString := ComboBox1.Text;
  cdsNcampoTABELA.AsString := Edit3.Text;
  cdsNcampoCAMPO.AsString := Edit4.Text;
  cdsNcampoTIPOCAMPO.AsString := Edit5.Text;
  cdsNcampoDATAINCLUSAO.AsDateTime := Now;
  cdsNcampo.ApplyUpdates(0);

  if (cdsNcampo.Active) then
     cdsNcampo.Close;
   cdsNcampo.Params[0].Clear;
   cdsNcampo.Params[1].Clear;
   cdsNcampo.Params[1].AsString := 'todos';
   cdsNcampo.Open;

end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
 if (PageControl1.ActivePage = TabSheet2) then
 begin
    if (cdsNcampo.Active) then
     cdsNcampo.Close;
   cdsNcampo.Params[0].Clear;
   cdsNcampo.Params[1].Clear;
   cdsNcampo.Params[1].AsString := 'todos';
   cdsNcampo.Open;
 end;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
var tabela,  tipo: string;
  campo : variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  { Tabela : CLIENTES }
  if (cds.Active) then
    cds.Close;
  tabela := 'CLIENTES';
  campo := 'NUMERO';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'DATANASCIMENTO';
    tipo  := 'TIMESTAMP';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'ANOLETIVO';
    tipo  := 'VARCHAR( 4 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'SITUACAOESCOLAR';
    tipo  := 'VARCHAR( 2 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'RGMAE';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CPFMAE';
    tipo  := 'VARCHAR( 14 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'PAI';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'RGPAI';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CPFPAI';
    tipo  := 'VARCHAR( 14 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'LANCADOCLASSE';
    tipo  := 'INTEGER';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'TRANSPORTE';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CIDADENASC';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'UFNASC';
    tipo  := 'VARCHAR( 2 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'NACIONALIDADE';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CERTIDAONASCNUM';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'LIVRONASC';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'FLLIVRONASC';
    tipo  := 'VARCHAR( 5 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'LOCALTRABPAI';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'LOCALTRABMAE';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'TELTRABPAI';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'TELTRABMAE';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'INFONECESSARIAS';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CARTEIRAVACINACAO';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'RAPRODESP';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'LOCALTRABALUNO';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'TELTRABALUNO';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'RAPROD';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CERT_NAS_COMARCA';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CERT_NAS_UF';
    tipo  := 'VARCHAR( 2 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CERT_NAS_MUNICIPIO';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CERT_NAS_DISTRITO';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CERT_NAS_SUBDISTRITO';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'DIVERSO1';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'DIVERSO2';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'DATAEMISSAORG';
    tipo  := 'DATE';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'ESTADORG';
    tipo  := 'CHAR( 2 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'COMUNICAALUNO';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'FONEMAE';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CELULARMAE';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'COMUNICAMAE';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'FONEPAI';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'CELULARPAI';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'COMUNICAPAI';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'VALOR_MATRICULA';
    tipo  := 'DOUBLE PRECISION';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'DATATRANSF';
    tipo  := 'DATE';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'COR_RACA';
    tipo  := 'VARCHAR( 25 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'PERIODO';
    tipo  := 'VARCHAR( 15 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'FOTO';
    tipo  := 'VARCHAR( 300 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
        campo := 'DATA_MATRICULA';
    tipo  := 'TIMESTAMP';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Acrescentado campos na tabela CLIENTE.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABENSINOTIPO }
  tabela := 'TABENSINOTIPO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TABENSINOTIPO (' +
      'TIPOSERIE VARCHAR( 4 ) NOT NULL PRIMARY KEY ' +
      ', TIPOENSINO VARCHAR( 20 ) NOT NULL ' +
      ', CURSO VARCHAR( 50 ), MENSALIDADE DOUBLE PRECISION ' +
      ', ANUIDADE DOUBLE PRECISION, SERIE VARCHAR( 50 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_ENSINOTIPO');
    sc.ExecuteDirect('SET GENERATOR GEN_ENSINOTIPO TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABENSINOTIPO criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABSERIES }
  tabela := 'TABSERIES';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TABSERIES (' +
         'SERIELETRA VARCHAR( 4 ) NOT NULL PRIMARY KEY ' +
         ', TURNO VARCHAR( 7 ), TIPOENSINO VARCHAR( 15 ), SERIE VARCHAR( 4 )' +
         ', DESC_CLASSE VARCHAR( 30 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_TABSERIES');
    sc.ExecuteDirect('SET GENERATOR GEN_TABSERIES TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABSERIES criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABPERIODO }
  tabela := 'TABPERIODO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TABPERIODO (' +
            'IDPERIODO INTEGER NOT NULL PRIMARY KEY, PERIODO VARCHAR( 15 )' +
            ', NOTAFINAL CHAR( 3 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_TABPERIODO');
    sc.ExecuteDirect('SET GENERATOR GEN_TABPERIODO TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABPERIODO criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABMATERIAS }
  tabela := 'TABMATERIAS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TABMATERIAS (MATERIAS VARCHAR( 50 ) ' +
                    ', IDMATERIAS INTEGER NOT NULL PRIMARY KEY ' +
                    ', TIPOENSINO VARCHAR( 15 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_TABMATERIAS');
    sc.ExecuteDirect('SET GENERATOR GEN_TABMATERIAS TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABMATERIAS criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABMOVNOTASFREQ }
  tabela := 'TABMOVNOTASFREQ';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TABMOVNOTASFREQ (' +
      'IDNOTAFREQUENCIA INTEGER NOT NULL PRIMARY KEY, SERIELETRA VARCHAR( 4 )' +
      ', IDMATERIAS INTEGER, TURNO VARCHAR( 7 ), RA VARCHAR( 10 )' +
      ', NOTA VARCHAR( 4 ), FREQUENCIA SMALLINT, ANOLETIVO INTEGER ' +
      ', SERIE VARCHAR( 4 ), IDPERIODO INTEGER, AULASDADAS SMALLINT)');
    sc.ExecuteDirect('CREATE GENERATOR GEN_TABMOVNOTASFREQ');
    sc.ExecuteDirect('SET GENERATOR GEN_TABMOVNOTASFREQ TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABMOVNOTASFREQ criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABCLASSEALUNO }
  tabela := 'TABCLASSEALUNO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TABCLASSEALUNO (' +
         'SERIELETRA VARCHAR( 4 ), RA VARCHAR( 10 )' +
         ', IDCLASSEALUNO INTEGER NOT NULL PRIMARY KEY, SERIE VARCHAR( 4 )' +
         ', NUMERO SMALLINT)');
    sc.ExecuteDirect('CREATE GENERATOR GEN_TABCLASSEALUNO');
    sc.ExecuteDirect('SET GENERATOR GEN_TABCLASSEALUNO TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABMOVNOTASFREQ criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABBOLETIM }
  tabela := 'TABBOLETIM';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TABBOLETIM (RA VARCHAR( 10 ), SERIELETRA VARCHAR( 4 )' +
       ', IDMATERIAS INTEGER, IDBOLETIM VARCHAR( 20 ) NOT NULL PRIMARY KEY' +
       ', NOTAPER1 VARCHAR( 4 ), NOTAPER2 VARCHAR( 4 ), NOTAPER3 VARCHAR( 4 )' +
       ', NOTAPER4 VARCHAR( 4 ), NOTAPER5 VARCHAR( 4 ), NOTAPER6 VARCHAR( 4 )' +
       ', FALTAPER1 SMALLINT, FALTAPER2 SMALLINT, FALTAPER3 SMALLINT' +
       ', FALTAPER4 SMALLINT, FALTAPER5 SMALLINT, FALTAPER6 SMALLINT' +
       ', AULADADAPER1 SMALLINT, AULADADAPER2 SMALLINT, AULADADAPER3 SMALLINT' +
       ', AULADADAPER4 SMALLINT, AULADADAPER5 SMALLINT, AULADADAPER6 SMALLINT' +
       ', ANOLETIVO INTEGER, NOTAPER7 VARCHAR( 4 ), NOTAPER8 VARCHAR( 4 )' +
       ', NOTAPER9 VARCHAR( 4 ), NOTAPER10 VARCHAR( 4 ), NOTAPER11 VARCHAR( 4 )' +
       ', NOTAPER12 VARCHAR( 4 ), FALTAPER7 SMALLINT, FALTAPER8 SMALLINT' +
       ', FALTAPER9 SMALLINT, FALTAPER10 SMALLINT, FALTAPER11 SMALLINT' +
       ', FALTAPER12 SMALLINT, AULADADAPER7 SMALLINT, AULADADAPER8 SMALLINT' +
       ', AULADADAPER9 SMALLINT, AULADADAPER10 SMALLINT, AULADADAPER11 SMALLINT'+
       ', AULADADAPER12 SMALLINT, DATAENVIO DATE)');
    sc.ExecuteDirect('CREATE GENERATOR GEN_TABBOLETIM');
    sc.ExecuteDirect('SET GENERATOR GEN_TABBOLETIM TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABBOLETIM criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : SITUACOES }
  tabela := 'SITUACOES';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE SITUACOES (' +
      'SITUAC_CODIGO VARCHAR( 2 ) NOT NULL PRIMARY KEY' +
      ', SITUAC_DESCRICAO VARCHAR( 30 ) NOT NULL)');
    sc.ExecuteDirect('CREATE GENERATOR GEN_SITUACOES');
    sc.ExecuteDirect('SET GENERATOR GEN_SITUACOES TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela SITUACOES criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : RESPONSAVEL }
  tabela := 'RESPONSAVEL';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE RESPONSAVEL (' +
        'COD_RESPONSAVEL INTEGER NOT NULL PRIMARY KEY ' +
        ', RESPONSAVEL VARCHAR( 200 ) NOT NULL, ENDERECO VARCHAR( 200 )' +
        ', BAIRRO VARCHAR( 50 ), CEP CHAR( 10 ), CIDADE VARCHAR( 50 )' +
        ', UF CHAR( 2 ), TIPO_RESPONSAVEL CHAR( 1 ), CPF CHAR( 14 )' +
        ', RG VARCHAR( 20 ), TELEFONE VARCHAR( 14 ), TELEFONE1 VARCHAR( 14 )' +
        ', EMAIL VARCHAR( 50 ), LOCALTRABALHO VARCHAR( 100 ), CAIXAPOSTAL VARCHAR( 20 )' +
        ', TELEFONE_COMERCIAL VARCHAR( 14 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_RESPONSAVEL');
    sc.ExecuteDirect('SET GENERATOR GEN_RESPONSAVEL TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela RESPONSAVEL criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : OCORRENCIA }
  tabela := 'OCORRENCIA';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE OCORRENCIA (CODOCORRENCIA INTEGER NOT NULL PRIMARY KEY' +
         ', DATA DATE, TIPO VARCHAR( 30 ), RA VARCHAR( 10 )' +
         ', DESCRICAO BLOB( 65535, 1 ), ANOLETIVO INTEGER, ASSUNTOS VARCHAR( 30 )' +
         ', ASSUNTO VARCHAR( 30 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_OCORRENCIA');
    sc.ExecuteDirect('SET GENERATOR GEN_OCORRENCIA TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela OCORRENCIA criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : MALA_DIRETA }
  tabela := 'MALA_DIRETA';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE MALA_DIRETA (MALA BLOB( 65535, 0 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_MALA_DIRETA');
    sc.ExecuteDirect('SET GENERATOR GEN_MALA_DIRETA TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela MALA_DIRETA criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : IRMAOS }
  tabela := 'IRMAOS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE IRMAOS (ID_IRMAO INTEGER NOT NULL PRIMARY KEY' +
       ', RA VARCHAR( 10 ), NOME VARCHAR( 100 ), ANO INTEGER, CURSO VARCHAR( 50 )' +
       ', SERIE VARCHAR( 4 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_IRMAOS');
    sc.ExecuteDirect('SET GENERATOR GEN_IRMAOS TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela IRMAOS criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : FICHAMEDICA }
  tabela := 'FICHAMEDICA';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE FICHAMEDICA (ID_FICHA INTEGER NOT NULL PRIMARY KEY' +
        ', RA VARCHAR( 10 ), D_MENTAL VARCHAR( 5 ), D_VISUAL VARCHAR( 5 )' +
        ', D_AUDITIVA VARCHAR( 5 ), D_FISICA VARCHAR( 5 ), D_MULTIPLA VARCHAR( 5 )' +
        ', SUPER_DOTADO VARCHAR( 5 ), CONDUTA_TIPICA VARCHAR( 5 ), OUTROS VARCHAR( 5 )' +
        ', OUTROS_H BLOB( 65535, 1 ), TEM_ACOMPANHANTE CHAR( 1 ), TIPO_ACOMPANHANTE VARCHAR( 15 )' +
        ', CQUEMMORA VARCHAR( 6 ), NOME_OUTROS VARCHAR( 150 ), EMPRESA_OUTROS VARCHAR( 150 )' +
        ', FONE_OUTROS VARCHAR( 13 ), FONE1_OUTROS VARCHAR( 13 ), FONE2_OUTROS VARCHAR( 13 )' +
        ', RAMAL_OUTROS VARCHAR( 4 ), HORAS_ESTUDA INTEGER, PROFESSORES_PARTICULAR INTEGER' +
        ', CANHOTO_DESTRO INTEGER, ALERGICO CHAR( 1 ), TIPO_ALERGIA VARCHAR( 250 )' +
        ', MEDICO_ALUNO INTEGER, TRATAMENTO_MEDICO INTEGER, TIPO_TRATAMENTO VARCHAR( 250 )' +
        ', INGERINDO_MEDICACAO INTEGER, TIPO_MEDICACAO VARCHAR( 250 ), NOME_MEDICO VARCHAR( 100 )' +
        ', FONE_MEDICO VARCHAR( 13 ), ENDERECO_MEDICO VARCHAR( 100 ), PLANO_SAUDE INTEGER' +
        ', QUAL_PLANO VARCHAR( 50 ), SER_MEDICADO_POR VARCHAR( 50 ), DOENCA_CONGENITA INTEGER' +
        ', QUAL_DOENCA VARCHAR( 50 ), CONTRAIU_CAXUMBA VARCHAR( 5 ), CONTRAIU_SARAMPO VARCHAR( 5 )' +
        ', CONTRAIU_RUBEOLA VARCHAR( 5 ), CONTRAIU_CATAPORA VARCHAR( 5 ), CONTRAIU_ESCARLATINA VARCHAR( 5 )' +
        ', CONTRAIU_COQUELUCHE VARCHAR( 5 ), CONTRAIU_OUTRAS VARCHAR( 5 ), QUAIS_OUTRA VARCHAR( 200 )' +
        ', NOME_AVISO VARCHAR( 100 ), ENDERECO_AVISO VARCHAR( 100 ), PARENTESCO_AVISO VARCHAR( 30 )' +
        ', FONE_AVISO VARCHAR( 13 ), HOSPITAL_AVISO VARCHAR( 100 ), TEM_HIPERTENCAO INTEGER' +
        ', HIPERTENCAO VARCHAR( 60 ), E_EPILETICO INTEGER, EPILETICO VARCHAR( 60 ), E_HEMOFILICO INTEGER' +
        ', HEMOFILICO VARCHAR( 60 ), E_DEFICIENTE_AUDITIVO INTEGER, DEFICIENTE_AUDITIVO VARCHAR( 60 )' +
        ', E_DEFICIENTE_VISUAL INTEGER, DEFICIENTE_VISUAL VARCHAR( 60 ), E_DEFICIENTE_FISICO INTEGER' +
        ', DEFICIENTE_FISICO VARCHAR( 60 ), E_DIABETICO INTEGER, DIABETICO VARCHAR( 60 )' +
        ', USA_INSULINA INTEGER, AUTORIZADO_DX_ESCOLA_SOZ INTEGER, OBSERVACOES BLOB( 65535, 1 )' +
        ', MOTIVO_MEDICAMENTO     VARCHAR( 150 ), APTO CHAR( 1 ), ESPERAR_FORA_ESCOLA INTEGER' +
        ', FONE_HOSPITAL VARCHAR( 13 ), NOME_RETIRA VARCHAR( 100 ), ENDERECO_RETIRA VARCHAR( 100 )' +
        ', PARENTESCO_RETIRA VARCHAR( 30 ), FONE_RETIRA VARCHAR( 13 ), PSICOLOGO VARCHAR( 5 )' +
        ', FISIOTERAPIA VARCHAR( 5 ), MEDICO VARCHAR( 5 ), FONOAUDIOLOGO VARCHAR( 5 )' +
        ', PSICOPEDAGOGO VARCHAR( 5 ), OUTRO_1 VARCHAR( 5 ), NAO VARCHAR( 5 ), E_ASMATICO INTEGER'+
        ', ASMATICO VARCHAR( 60 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_FICHAMEDICA');
    sc.ExecuteDirect('SET GENERATOR GEN_FICHAMEDICA TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela FICHAMEDICA criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : IDOCUMENTOS }
  tabela := 'IDOCUMENTOS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE IDOCUMENTOS (ID_DOCTOS INTEGER NOT NULL PRIMARY KEY' +
        ', DOCTOS_DESCRICAO VARCHAR( 40 ), DOCTOS_PADRAO VARCHAR( 1 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_IDOCUMENTOS');
    sc.ExecuteDirect('SET GENERATOR GEN_IDOCUMENTOS TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela IDOCUMENTOS criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : AVISOS }
  tabela := 'AVISOS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE AVISOS (CODAVISOS INTEGER NOT NULL PRIMARY KEY' +
       ', TIPO VARCHAR( 30 ), DESCRICAO BLOB( 65535, 1 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_AVISOS');
    sc.ExecuteDirect('SET GENERATOR GEN_AVISOS TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela AVISOS criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : AVALIACAO }
  tabela := 'AVALIACAO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE AVALIACAO (NOTA VARCHAR( 4 ) NOT NULL PRIMARY KEY' +
         ', PESO DOUBLE PRECISION, DESCRICAO VARCHAR( 50 ))');
    sc.ExecuteDirect('CREATE GENERATOR GEN_AVALIACAO');
    sc.ExecuteDirect('SET GENERATOR GEN_AVALIACAO TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela AVALIACAO criada com sucesso.');
  end;

    if (cds.Active) then
    cds.Close;
  { Tabela : EMPRESA }
  tabela := 'EMPRESA';
  campo := 'DIVERSOS1';
  tipo  := 'VARCHAR( 50 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'DIVERSOS2';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'DIVERSOS3';
    tipo  := 'VARCHAR( 50 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'ANOLETIVO';
    tipo  := 'INTEGER';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'MEDIA_ESCOLA';
    tipo  := 'DOUBLE PRECISION';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'PORTA';
    tipo  := 'INTEGER';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'SMTP';
    tipo  := 'VARCHAR( 30 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    campo := 'SENHA';
    tipo  := 'VARCHAR( 10 )';
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campos novos adicionado na Tabela empresa.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : CLIENTES }
  tabela := 'CLIENTES';
  campo := 'CODRESPONSAVEL';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Campo CODRESPONSAVEL adicionado na Tabela CLIENTES.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'LIVROS';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE LIVROS(' +
      'COD_LIVROS INTEGER NOT NULL PRIMARY KEY '+
      ', COD_ITENS INTEGER NOT NULL, DESCRICAO VARCHAR( 160 ) NOT NULL '+
      ', AUTORES VARCHAR( 100 ), EDICAO INTEGER, ANO INTEGER, ANO1 INTEGER '+
      ', ANO2 INTEGER, COD_BARRAS VARCHAR( 20 ), PRAZO_EMPR INTEGER '+
      ', IDIOMA_LINGUAGEN VARCHAR( 100 ), DATA_AQUIZICAO DATE, CATEGORIA VARCHAR( 100 ) '+
      ', ASSUNTO VARCHAR( 100 ), CLASSIFICACAO VARCHAR( 100 ), COLECAO_VOLUME VARCHAR( 100 ) '+
      ', EXTRA VARCHAR( 100 ), RESENHA VARCHAR( 200 ), EDITORA VARCHAR( 100 ), EDITORA1 VARCHAR( 100 ) '+
      ', TITULO_1 VARCHAR( 100 ), AUTORES_SEC VARCHAR( 100 ), NUMERO VARCHAR( 40 )'+
      ', LOCALIZACAO VARCHAR( 100 ), COMENTARIOS BLOB( 65535, 0 ), LOCADO CHAR( 1 )'+
      ', FOTO VARCHAR( 200 ), CODIGO_LIVRO VARCHAR( 20 ), PROCEDENCIA VARCHAR( 40 )'+
      ', VALOR DOUBLE PRECISION, AQUISICAO VARCHAR( 10 ), PALAVRA_CHAVE VARCHAR( 40 )'+
      ', PGNAS_ILUSTRADO VARCHAR( 40 ), COLECAO_SERIE VARCHAR( 40 ), SUBTITULO VARCHAR( 100 )'+
      ', PHA VARCHAR( 15 ))');

    sc.ExecuteDirect('CREATE GENERATOR genLivros');
    sc.ExecuteDirect('SET GENERATOR genLivros TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela Livros criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'AUTORES';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE AUTORES(' +
      'COD_AUTORES INTEGER NOT NULL PRIMARY KEY '+
      ', COD_LIVROS INTEGER NOT NULL ' +
      ', AUTORES VARCHAR( 100 ))');

    sc.ExecuteDirect('CREATE GENERATOR genAutores');
    sc.ExecuteDirect('SET GENERATOR genAutores TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela Autores criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  tabela := 'TRADUTORES';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE TRADUTORES(' +
      'COD_TRADUTORES INTEGER NOT NULL PRIMARY KEY '+
      ', COD_LIVROS INTEGER NOT NULL ' +
      ', TRADUTOR VARCHAR( 100 ))');

    sc.ExecuteDirect('CREATE GENERATOR genTRADUTORES');
    sc.ExecuteDirect('SET GENERATOR genTRADUTORES TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela Tradutores criada com sucesso.');
  end;


  if (cds.Active) then
    cds.Close;
  tabela := 'RESP_ALUNO';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  {Se tabela não existe então crio}
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE RESP_ALUNO(' +
            'COD_RESP_ALUNO INTEGER NOT NULL PRIMARY KEY ' +
            ', COD_RESPONSAVEL INTEGER NOT NULL ' +
            ', RA VARCHAR( 10 ) NOT NULL)');

    sc.ExecuteDirect('CREATE GENERATOR genrespalu');
    sc.ExecuteDirect('SET GENERATOR genrespalu TO 0');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela RESP_ALU criada com sucesso.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : FICHAMEDICA }
  tabela := 'FICHAMEDICA';
  campo := 'ALOPATA';
  tipo  := 'CHAR(5)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD HOMEOPATA CHAR( 5 )');
    sc.Commit(TD);
    memo1.Lines.Add('Tabela FICHAMEDICA adicionado campo ALOPATA E HOMEOPATA.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : RESP_ALUNO}
  tabela := 'RESP_ALUNO';
  campo := 'TIPO_RESPONSAVEL';
  tipo  := 'CHAR(1)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela RESP_ALUNO, adicionado campo TIPO_RESPONSAVEL.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : RESPONSAVEL}
  tabela := 'RESPONSAVEL';
  campo := 'TIPO_RESPONSAVEL';
  tipo  := 'CHAR(1)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' DROP ' + campo);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela RESPONSAVEL, removido campo TIPO_RESPONSAVEL.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : RESPONSAVEL}
  tabela := 'RESPONSAVEL';
  campo := 'TIPORESPONSAVEL';
  tipo  := 'VARCHAR(20)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' add ' + campo + ' ' + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela RESPONSAVEL, adicionado campo TIPORESPONSAVEL.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : TABCLASSEALUNO }
  tabela := 'TABCLASSEALUNO';
  campo := 'ANOLETIVO';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' add ' + campo + ' ' + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela TABCLASSE, adicionado campo ANOLETIVO.');
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : pagamento }
  tabela := 'TABPROFESSOR';
  campo := 'AGENCIA';
  tipo  := 'VARCHAR(30)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.ExecuteDirect('update RDB$FIELDS SET RDB$FIELD_LENGTH = 30 where RDB$FIELD_NAME =  ' +
      QuotedStr('RDB$959'));
    sc.ExecuteDirect('update RDB$FIELDS SET RDB$FIELD_LENGTH = 30 where RDB$FIELD_NAME =  ' +
      QuotedStr('RDB$960'));
    sc.Commit(TD);
    memo1.Lines.Add('CAMPO AGENCIA inserido na tab ' + tabela + '.');
  end;


 {FIMsemp}
  
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
var tabela,  tipo: string;
  campo : variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  if (cds.Active) then
    cds.Close;
  { Tabela : LABEXAMERESULTADO }
  tabela := 'LABEXAMERESULTADO';
  campo := 'OBS1';
  tipo  := 'VARCHAR( 200 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.IsEmpty) then
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo);
    sc.Commit(TD);
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + 'OBS2' + ' '  + 'VARCHAR( 200 )');
    sc.Commit(TD);
    memo1.Lines.Add('Campo OBS1 e OBS2 adicionado na Tabela LABEXAMERESULTADO.');
  end;

end;

procedure TForm1.BitBtn13Click(Sender: TObject);
var tabela,  tipo: string;
  campo : variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  {##############}
  {TRANSPORTADORA}
  {##############}
  if (cds.Active) then
    cds.Close;
  { Tabela : FAIXA_ETARIA }
  tabela := 'FAIXA_ETARIA';
  campo := 'TIPO';
  tipo  := 'VARCHAR( 80 )';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.IsEmpty) then
  if (not cds.Locate('CAMPO', campo ,[loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' ADD ' + campo + ' '  + tipo +
    ', ADD OPERACAO VARCHAR(80), ADD MOVIMENTO VARCHAR(80), ADD FORMA VARCHAR(80)' +
    ', ADD COBERTURA VARCHAR(80)');
    sc.Commit(TD);
    memo1.Lines.Add('Campo TIPO, OPERACAO, MOVIMENTO, FORMA, COBERTURA ad. na Tabela ' + tabela);
  end;


   if (cds.Active) then
     cds.Close;
  { Generator }
    tabela := 'GEN_FAIXADETALHE';
    cds.CommandText := 'select RDB$GENERATOR_NAME AS CAMPO from RDB$GENERATORS' +
       ' WHERE RDB$GENERATOR_NAME = ''' + tabela + '''';
    cds.Open;
    {Se tabela não existe então crio}
    if (cds.IsEmpty) then
    begin
      sc.StartTransaction(TD);
      tabela := 'CREATE GENERATOR GEN_FAIXADETALHE;';
      sc.ExecuteDirect(tabela);
      sc.Commit(TD);
      memo1.Lines.Add('Acrescentado Generator GEN_FAIXADETALHE com sucesso.');
    end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Edit1.Text := ExtractFileDir(Application.ExeName)+'\Script\';
  FManu.ShowModal;
end;

procedure TForm1.BitBtn14Click(Sender: TObject);
var tabela,  tipo: string;
  campo : variant;
   TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  {##############}
  {ACADEMIA}
  {##############}
  if (cds.Active) then
    cds.Close;
  { Tabela : ACADEMIATURMA}
  tabela := 'ACADEMIATURMA';
  campo := 'CODTURMA';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE ' + tabela + '(' + campo + ' '  + tipo +
    ' NOT NULL PRIMARY KEY, NOMETURMA VARCHAR(80), HORARIOINICIAL TIME,' +
    ' HORARIOFINAL TIME, STATUS VARCHAR(15))');
    sc.Commit(TD);
    sc.StartTransaction(TD);
    tabela := 'CREATE GENERATOR GEN_ACADEMIATURMA;';
    sc.ExecuteDirect(tabela);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela ACADEMIATurma Inserido com sucesso.' + tabela);
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : ACADEMIAFREQUENCIA }
  tabela := 'ACADEMIAFREQUENCIA';
  campo := 'CODFREQUENCIA';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE ' + tabela + '(' + campo + ' '  + tipo +
    ' NOT NULL PRIMARY KEY, DATAFREQUENCIA DATE, CODCLIENTE INTEGER,' +
    ' CODTURMA INTEGER, HORARIOENTRADA TIME, HORARIOSAIDA TIME, PRESENTE CHAR(1))');
    sc.Commit(TD);
    sc.StartTransaction(TD);
    tabela := 'CREATE GENERATOR GEN_ACADEMIAFREQUENCIA;';
    sc.ExecuteDirect(tabela);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela ACADEMIAFrequencia Inserido com sucesso.' + tabela);
  end;

  if (cds.Active) then
    cds.Close;
  { Tabela : AcademiaTurmaAluno }
  tabela := 'ACADEMIATURMAALUNO';
  campo := 'CODTURMAALUNO';
  tipo  := 'INTEGER';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (cds.IsEmpty) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('CREATE TABLE ' + tabela + '(' + campo + ' '  + tipo +
    ' NOT NULL PRIMARY KEY, CODCLIENTE INTEGER,' +
    ' CODTURMA INTEGER)');
    sc.Commit(TD);
    sc.StartTransaction(TD);
    tabela := 'CREATE GENERATOR GEN_ACADEMIATURMAALUNO;';
    sc.ExecuteDirect(tabela);
    sc.Commit(TD);
    memo1.Lines.Add('Tabela AcademiaTurmaAluno inserido com sucesso.' + tabela);
  end;

  { Tabela : AcademiaTurmaAluno }
  tabela := 'ACADEMIATURMAALUNO';
  campo := 'SEG';
  tipo  := 'CHAR(1)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', 'SEG', [loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' add ' + campo + ' '  + tipo +
    ' ,ADD TER CHAR(1), ADD QUA CHAR(1), ADD QUI CHAR(1) ' +
    ' ,ADD SEX CHAR(1), ADD SAB CHAR(1), ADD DOM CHAR(1) ');
    sc.Commit(TD);
    memo1.Lines.Add('Incluido dias Semana Tabela AcademiaTurmaAluno inserido com sucesso.' + tabela);
  end;

  { Tabela : AcademiaTurmaAluno }
  tabela := 'ACADEMIATURMA';
  campo := 'GRUPOTURMA';
  tipo  := 'VARCHAR(80)';
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  cds.Open;
  if (not cds.Locate('CAMPO', 'GRUPOTURMA', [loCaseInsensitive])) then
  begin
    sc.StartTransaction(TD);
    sc.ExecuteDirect('ALTER TABLE ' + tabela + ' add ' + campo + ' '  + tipo);
    sc.Commit(TD);
    memo1.Lines.Add('Incluido GRUPOTURMA na Tabela AcademiaTurma inserido com sucesso.' + tabela);
  end;
end;

end.

