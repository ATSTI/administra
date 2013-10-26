unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBXpress, DB, SqlExpr, FMTBcd, DBTables, IniFiles, DateUtils;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Memo1: TMemo;
    sc: TSQLConnection;
    sqMov: TSQLQuery;
    sqDet: TSQLQuery;
    sqCliente: TSQLQuery;
    sqProduto: TSQLQuery;
    sqlMov: TQuery;
    sqlDet: TQuery;
    sqlCliente: TQuery;
    sqlProduto: TQuery;
    sqlParams: TSQLQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mov : String;
    movDet : String;
    dir     : String;
    diretorio : String;
    cfopSaida : String;
    procedure item;
    procedure cliente;
    procedure produto;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
var contaLinha: Integer;
  sqlx: String;
begin
  if (not sc.Connected) then
    sc.Connected := True;

  memo1.Lines.Clear;
  label1.Caption := 'Aguarde, importando .....';

  if (sqlMov.Active) then
    sqlMov.Close;
  sqlMov.SQL.Clear;
  sqlMov.SQL.Add('SELECT * FROM ES WHERE DATENTR > ' +
    QuotedStr(FormatDateTime('MM/dd/yyyy', (today - 10))));
  sqlMov.Open;
  while not sqlMov.Eof do
  begin
    if (sqMov.Active) then
      sqMov.Close;
    sqMov.SQL.Clear;
    sqMov.SQL.Add('SELECT CODMOVIMENTO FROM MOVIMENTO WHERE CODMOVIMENTO = ' +
      IntToStr(sqlMov.FieldByName('NUMERO').AsInteger));
    sqMov.Open;
    if (sqMov.FieldByName('CODMOVIMENTO').AsInteger < 1) then
    begin
      if (sqCliente.Active) then
        sqCliente.Close;
      sqCliente.SQL.Clear;
      sqCliente.SQL.Add('SELECT CODCLIENTE FROM CLIENTES WHERE CODCLIENTE = ' +
        IntToStr(sqlMov.FieldByName('CODCLI').AsInteger));
      sqCliente.Open;
      if (sqCliente.IsEmpty) then
      begin
        memo1.Lines.Add(IntToStr(sqlMov.FieldByName('CODCLI').AsInteger) + '-' +
          sqlMov.FieldByName('CLIENTE').AsString +
          ' - não importado');
        cliente;
      end;
      sqlx := 'INSERT INTO MOVIMENTO (' +
        ' CODMOVIMENTO, DATAMOVIMENTO, CODCLIENTE, CODNATUREZA, STATUS, ' +
        ' CODUSUARIO, CODVENDEDOR) VALUES ('+
        IntToStr(sqlMov.FieldByName('NUMERO').AsInteger) + ', ' +
        QuotedStr(FormatDateTime('MM/dd/yyyy', sqlMov.FieldByName('DATENTR').AsDateTime)) + ', ' +
        IntToStr(sqlMov.FieldByName('CODCLI').AsInteger) + ', 3, 0, 1, 1' +
        ')';
      sc.ExecuteDirect(sqlx);

      // Copia os itens
      produto;
      item;
      contaLinha := contaLinha + 1;
    end;
    sqlMov.Next;
  end;

  label1.Caption := 'Importação concluida.';
  MessageDlg('Importação concluida com exito.', mtWarning, [mbOK], 0);

end;

procedure TForm2.cliente;
  var sql: String;
begin
  // Cliente
  if (sqlCliente.Active) then
    sqlCliente.Close;
  sqlCliente.SQL.Clear;
  sql := 'SELECT * FROM CLIENTE  WHERE CODIGO = ' +
    IntToStr(sqlMov.FieldByName('CODCLI').AsInteger);
  sqlCliente.SQL.Add(sql);
  sqlCliente.Open;
  while not sqlCliente.Eof do
  begin
    if (sqCliente.Active) then
      sqCliente.Close;
    sqCliente.SQL.Clear;
    sqCliente.SQL.Add('SELECT CODCLIENTE FROM CLIENTES WHERE CODCLIENTE = ' +
      InttoStr(sqlCliente.fieldByName('CODIGO').asInteger));
    sqCliente.Open;
    if (sqCliente.IsEmpty) then
    begin
      sql := 'INSERT INTO CLIENTES (' +
        'CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, TIPOFIRMA, CNPJ, INSCESTADUAL, ' +
        'SEGMENTO, REGIAO, DATACADASTRO, CODUSUARIO, STATUS, CODFISCAL) VALUES(' +
        InttoStr(sqlCliente.fieldByName('CODIGO').asInteger) + ', ' +
        QuotedStr(sqlCliente.fieldByName('NOME').asString) + ', ' +
        QuotedStr(sqlCliente.fieldByName('NOME').asString) + ', ' +
        ' 0, ' +
        QuotedStr(sqlCliente.fieldByName('CGC').asString) + ', ' +
        QuotedStr(sqlCliente.fieldByName('INS').asString) + ', ' +
        ' 0, 0, ' +
        QuotedStr(FormatDateTime('MM/dd/yyyy', sqlCliente.FieldByName('CADASTRO').AsDateTime)) + ', ' +
        ' 1, 1, ' + QuotedStr('F') + ')';
        sc.ExecuteDirect(sql);

      sql := 'INSERT INTO ENDERECOCLIENTE (' +
        'CODENDERECO, CODCLIENTE, LOGRADOURO, BAIRRO, COMPLEMENTO, CIDADE, UF, CEP,'+
        'TELEFONE, TELEFONE1, E_MAIL, TIPOEND, PAIS, DDD, DDD1, NUMERO, CD_IBGE) VALUES( '+
        InttoStr(sqlCliente.fieldByName('CODIGO').asInteger) + ', ' +
        InttoStr(sqlCliente.fieldByName('CODIGO').asInteger) + ', ' +
        QuotedStr(sqlCliente.fieldByName('END').asString) + ', ' +
        QuotedStr(sqlCliente.fieldByName('BAIRRO').asString) + ', ' +
        QuotedStr(sqlCliente.fieldByName('COMP').asString) + ', ' +
        QuotedStr(sqlCliente.fieldByName('CIDADE').asString) + ', ' +
        QuotedStr(sqlCliente.fieldByName('UF').asString) + ', ' +
        QuotedStr(Copy(sqlCliente.fieldByName('CEP').asString, 1,5) + '-' +
        Copy(sqlCliente.fieldByName('CEP').asString, 6,8)) + ', ' +
        QuotedStr(Trim(copy(sqlCliente.fieldByName('FONE1').asString,5,14))) + ', ' +
        QuotedStr(Trim(copy(sqlCliente.fieldByName('FONE2').asString,5,14))) + ', ' +
        QuotedStr(sqlCliente.fieldByName('EMAIL').asString) + ', ' +
        ' 0,' +
        QuotedStr('Brasil') + ', ' +
        QuotedStr(copy(sqlCliente.fieldByName('FONE1').asString,2,2)) + ', ' +
        QuotedStr(copy(sqlCliente.fieldByName('FONE2').asString,2,2)) + ', ' +
        QuotedStr(sqlCliente.fieldByName('NUMERO').asString) + ', ' +
        QuotedStr('350380-2') +
        ')';
        sc.ExecuteDirect(sql);
    end;
    sqlCliente.Next;
  end;
  sqlCliente.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var config:TIniFile;
begin
  try
    sc.Connected := False;
    sc.LoadParamsFromIniFile('dbxconnections.ini');
    sc.LibraryName := 'dbexpUIBfire15.dll';
    sc.VendorLib := 'FBCLIENT.DLL';
    sc.Connected := True;

    dir              := ExtractFilePath(Application.ExeName);
    config           := TIniFile.Create(dir + 'CONFIG.INI');
    diretorio        := config.ReadString('DIRETORIO', 'pasta', '');
    //mov              := config.ReadString('DIRETORIO', 'mov', '');
    //movDet           := config.ReadString('DIRETORIO', 'movDet', '');
    //cliente          := config.ReadString('DIRETORIO', 'cliente', '');
    //produto          := config.ReadString('DIRETORIO', 'produto', '');
    //session.privatedir:=diretorio+'\'+'PRIV';
    //session.netfiledir:=diretorio+'\'+'NET';
    sqlProduto.DatabaseName := diretorio;
    sqlDet.DatabaseName := diretorio;
    sqlMov.DatabaseName := diretorio;
    sqlCliente.DatabaseName := diretorio;
    sqlProduto.DatabaseName := diretorio;
    sqlParams.SQL.add('SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = ' +
      QuotedStr('CFOP'));
    sqlParams.Open;
    cfopSaida := sqlParams.fieldByName('DADOS').AsString;
  Finally
    FreeAndNil(config);
  end;

end;

procedure TForm2.item;
begin
  if (sqlDet.Active) then
    sqlDet.Close;
  sqlDet.SQL.Clear;
  sqlDet.SQL.Add('SELECT * FROM ES_ITEM WHERE NUMERO = ' +
    InttoStr(sqlMov.FieldByName('NUMERO').AsInteger));
  sqlDet.Open;
  while not sqlDet.Eof do
  begin
    if (sqDet.Active) then
      sqDet.Close;
    sqDet.SQL.Clear;
    sqDet.SQL.Add('SELECT CODDETALHE FROM MOVIMENTODETALHE WHERE CODDETALHE = ' +
      InttoStr(sqlDet.fieldByName('CHAVE').asInteger));
    if (sqDet.IsEmpty) then
    begin
      sc.ExecuteDirect('INSERT INTO MOVIMENTODETALHE (' +
        ' CODDETALHE, CODMOVIMENTO, CODPRODUTO, DESCPRODUTO, PRECO, QUANTIDADE, ' +
        ' CFOP, UN) VALUES(' +
      InttoStr(sqlDet.fieldByName('CHAVE').asInteger) + ', ' +
      InttoStr(sqlDet.fieldByName('NUMERO').asInteger) + ', ' +
      InttoStr(sqlDet.fieldByName('CODIGO').asInteger) + ', ' +
      QuotedStr(sqlDet.fieldByName('PRODUTO').asString) + ', ' +
      FloattoStr(sqlDet.fieldByName('VALOR').asFloat) + ', ' +
      FloattoStr(sqlDet.fieldByName('QUANT').asFloat) + ', ' +
      QuotedStr(cfopSaida) + ', ' +
      QuotedStr('UN') +
      ')');
    end;
    sqlDet.Next;
  end;
end;

procedure TForm2.produto;
var sqla : string;
begin
  // Produto
  if (sqlProduto.Active) then
    sqlProduto.Close;
  sqlProduto.SQL.Clear;
  sqlProduto.SQL.Add('SELECT * FROM ES_ITEM WHERE NUMERO = ' +
    InttoStr(sqlMov.FieldByName('NUMERO').AsInteger));
  sqlProduto.Open;
  DecimalSeparator := '.';
  while not sqlProduto.Eof do
  begin
    if (sqProduto.Active) then
      sqProduto.Close;
    sqProduto.SQL.Clear;
    sqProduto.SQL.Add('SELECT CODPRODUTO FROM PRODUTOS WHERE CODPRODUTO = ' +
     InttoStr(sqlProduto.fieldByName('CODIGO').asInteger));
    sqProduto.Open;
    if (sqProduto.IsEmpty) then
    begin
      sqla := 'INSERT INTO PRODUTOS (' +
        ' CODPRODUTO, COD_BARRA, CODPRO, UNIDADEMEDIDA, ' +
        ' PRODUTO, VALOR_PRAZO,  VALORUNITARIOATUAL, ORIGEM) VALUES(' +
      InttoStr(sqlProduto.fieldByName('CODIGO').asInteger) + ', ' +
      QuotedStr(sqlProduto.fieldByName('CODIGO').asString) + ', ' +
      QuotedStr(sqlProduto.fieldByName('CODIGO').asString) + ', ' +
      QuotedSTr('UN') + ', ' +
      QuotedStr(sqlProduto.fieldByName('PRODUTO').asString) + ', ' +
      FloattoStr(sqlProduto.fieldByName('VALOR').asFloat) + ', ' +
      FloattoStr(sqlProduto.fieldByName('CUSTO').asFloat) + ', ' +
      '0' +
      ')';
      sc.ExecuteDirect(sqla);
    end;
    sqlProduto.Next;
  end;
  DecimalSeparator := ',';
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  BitBtn1.Click;
  WinExec('prjAtsAdmin.exe', sw_show);
  Close;
end;

end.
