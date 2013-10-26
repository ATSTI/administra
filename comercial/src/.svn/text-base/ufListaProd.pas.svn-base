unit ufListaProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, Menus, DB, Grids, DBGrids, DBClient,
  Provider, SqlExpr, ExtCtrls, DBCtrls, DBXpress;

type
  TfListaProd = class(TForm)
    Panel1: TPanel;
    sds: TSQLDataSet;
    sdsPRODUTO: TStringField;
    sdsCODPRO: TStringField;
    sdsCOD_BARRA: TStringField;
    sdsCODPRODUTO: TIntegerField;
    sdsMARCA: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsPRODUTO: TStringField;
    cdsCODPRO: TStringField;
    cdsCOD_BARRA: TStringField;
    cdsCODPRODUTO: TIntegerField;
    cdsMARCA: TStringField;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    dsp2: TDataSetProvider;
    sds2: TSQLDataSet;
    sds2CODIGO: TStringField;
    sds2DESCR: TStringField;
    sds2CODBARRA: TStringField;
    sds2CODPRODUTO: TIntegerField;
    sds2FORNECEDOR: TStringField;
    sds2GRUPO: TStringField;
    sds2SUBGRUPO: TStringField;
    sds2UNIDADE: TStringField;
    sds2PRECOLISTA: TFloatField;
    sds2MARGEM: TFloatField;
    sds2PRECOVENDA: TFloatField;
    sds2USAPRODUTO: TStringField;
    DataSource2: TDataSource;
    cds2: TClientDataSet;
    cds2CODIGO: TStringField;
    cds2DESCR: TStringField;
    cds2CODBARRA: TStringField;
    cds2CODPRODUTO: TIntegerField;
    cds2FORNECEDOR: TStringField;
    cds2GRUPO: TStringField;
    cds2SUBGRUPO: TStringField;
    cds2UNIDADE: TStringField;
    cds2PRECOLISTA: TFloatField;
    cds2MARGEM: TFloatField;
    cds2PRECOVENDA: TFloatField;
    cds2USAPRODUTO: TStringField;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    ProcProduto1: TMenuItem;
    Relacionar1: TMenuItem;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    sdsUNIDADEMEDIDA: TStringField;
    sdsVALORUNITARIOATUAL: TFloatField;
    sdsVALOR_PRAZO: TFloatField;
    sdsFAMILIA: TStringField;
    sdsCATEGORIA: TStringField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsVALOR_PRAZO: TFloatField;
    cdsFAMILIA: TStringField;
    cdsCATEGORIA: TStringField;
    sdsMARGEM: TFloatField;
    cdsMARGEM: TFloatField;
    sqsBuscaLista: TSQLDataSet;
    BitBtn9: TBitBtn;
    sds2CODLISTAPRECO: TIntegerField;
    cds2CODLISTAPRECO: TIntegerField;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaProd: TfListaProd;

implementation

uses UDm, ufProdutoLista, sCtrlResize;

{$R *.dfm}

procedure TfListaProd.BitBtn6Click(Sender: TObject);
var str: String;
begin
  { Verifico se existe o produto}
  if (cds.Active) then
  cds.Close;
  str := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA, UNIDADEMEDIDA, VALORUNITARIOATUAL, VALOR_PRAZO, FAMILIA, CATEGORIA, margem, CODLISTAPRECO from produtos where CODPRO = ';
  str := str + '''' + cds2CODIGO.AsString + '''';
  cds.CommandText := str;
  cds.Open;
  if (not cds.IsEmpty) then
  begin
    cds2.Edit;
    cds2USAPRODUTO.AsString := 'NÃO';
    cds2.ApplyUpdates(0);
    if (cds.Active) then
    cds.Close;
    str := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA from produtos where CODPRO = ';
    str := str + '''' + cds2CODIGO.AsString + '''';
    cds.CommandText := str;
    cds.Open;
  end;
{  if (cds2.Active) then
    cds2.Close;
  str := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
  str := str + 'SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO';
  str := str + ' FROM LISTAPRECO WHERE CODPRODUTO = ';
  str := str + IntToStr(cds.Fields[3].AsInteger);
  cds2.CommandText := str;
  cds2.Open;}

end;

procedure TfListaProd.BitBtn1Click(Sender: TObject);
var strr, strs: string;
begin
  screen.Cursor := crHourGlass;
  { Testar se já não existe relação entre os 2 produtos }
  if (sqsBuscaLista.Active) then
    sqsBuscaLista.Close;
  sqsBuscaLista.CommandText := 'SELECT CODPRODUTO FROM LISTAPRECO WHERE ' +
    ' CODIGO  = ' + QuotedStr(cdsCODPRO.AsString) + ' and CODPRODUTO IS NULL';
  sqsBuscaLista.Open;
  if (not sqsBuscaLista.IsEmpty) then
  begin
    { Verificar se o produto que existe na tabela lista preço já esta
    relacionado com algum outro produto, senão edita ele  }
    if (cds2CODPRODUTO.IsNull) then
    begin
      cds2.Edit;
      cds2CODPRODUTO.AsInteger := cdsCODPRODUTO.AsInteger;
      cds2.Post;
      cds2.ApplyUpdates(0);
    end
    else
    begin
      { insere novamente o item na tabela LISTAPRECO com o CODPRODUTO do item
        selecionado }
      bitbtn8.Click;
    end;
  end
  else begin
    bitbtn8.Click;
  end;
{  if (cds.Active) then
  cds.Close;
  strr := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA from produtos where CODPRO = ';
  strr := strr + '''' + cds2CODIGO.AsString + '''';
  cds.CommandText := strr;
  cds.Open;}
  if (cds2.Active) then
    cds2.Close;
  strs := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
  strs := strs + 'SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO';
  strs := strs + ' FROM LISTAPRECO WHERE CODPRODUTO = ';
  strs := strs + IntToStr(cds.Fields[3].AsInteger);
  cds2.CommandText := strs;
  cds2.Open;
  screen.Cursor := crDefault;  
end;

procedure TfListaProd.BitBtn5Click(Sender: TObject);
var strg, strh: string;
begin
  { Verifico se existe o produto}
  if (cds.Active) then
  cds.Close;
  strh := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA, UNIDADEMEDIDA, VALORUNITARIOATUAL, VALOR_PRAZO, FAMILIA, CATEGORIA, margem  from produtos where CODPRO = ';
  strh := strh + '''' + cds2CODIGO.AsString + '''';
  cds.CommandText := strh;
  cds.Open;
  if (cds.IsEmpty) then
  begin
    cds2.Edit;
    cds2USAPRODUTO.AsString := 'SIM';
    cds2.ApplyUpdates(0);
    if (cds.Active) then
    cds.Close;
    strh := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA, UNIDADEMEDIDA, VALORUNITARIOATUAL, VALOR_PRAZO, FAMILIA, CATEGORIA, margem  from produtos where CODPRO = ';
    strh := strh + '''' + cds2CODIGO.AsString + '''';
    cds.CommandText := strh;
    cds.Open;
  end
  else begin
    cds2.Edit;
    cds2CODPRODUTO.AsInteger := cdsCODPRODUTO.AsInteger;
    cds2.Post;
    cds2.ApplyUpdates(0);
  end;
end;

procedure TfListaProd.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfListaProd.BitBtn3Click(Sender: TObject);
var str, stra :string;
begin
  screen.Cursor := crHourGlass;
  IF (Edit1.Text <> '') then
  begin
    str := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA,UNIDADEMEDIDA, VALORUNITARIOATUAL, VALOR_PRAZO, FAMILIA, CATEGORIA, margem  from produtos where CODPRO = ';
    str := str + '''' + edit1.Text + '''' ;
  end;
  IF (Edit2.Text <> '') then
  begin
    str := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA,UNIDADEMEDIDA, VALORUNITARIOATUAL, VALOR_PRAZO, FAMILIA, CATEGORIA, margem  from produtos where UDF_COLLATEBR(PRODUTO) containing ';
    str := str + '''' + edit2.Text + '''' ;
  end;
  IF (Edit3.Text <> '') then
  begin
    str := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA,UNIDADEMEDIDA, VALORUNITARIOATUAL, VALOR_PRAZO, FAMILIA, CATEGORIA, margem  from produtos where COD_BARRA = ';
    str := str + '''' + edit3.Text + '''' ;
  end;
  if (cds.Active) then
    cds.Close;
  cds.CommandText := str;
  cds.Open;
{  if (not cds.IsEmpty) then
  begin
    if (cds2.Active) then
      cds2.Close;
    stra := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO FROM LISTAPRECO WHERE CODPRODUTO = ';
    stra := stra + IntToStr(cds.Fields[3].AsInteger);
    cds2.CommandText := stra;
    cds2.Open;
  end;}
  screen.Cursor := crDefault;
end;

procedure TfListaProd.BitBtn4Click(Sender: TObject);
var strb, strc :string;
begin
  screen.Cursor := crHourGlass;
  IF (Edit4.Text <> '') then
  begin
    strb := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
    strb := strb + ' SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, ';
    strb := strb + ' PRECOVENDA, USAPRODUTO, CODLISTAPRECO FROM LISTAPRECO WHERE CODIGO = ';
    strb := strb + '''' + edit4.Text + '''';
  end;
  IF (Edit5.Text <> '') then
  begin
    strb := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
    strb := strb + ' SUBGRUPO, UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO';
    strb := strb + ' FROM LISTAPRECO WHERE UDF_COLLATEBR(DESCR) containing ';
    strb := strb + '''' + edit5.Text + '''';
  end;
  IF (Edit6.Text <> '') then
  begin
    strb := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO, SUBGRUPO';
    strb := strb + ' , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO ';
    strb := strb + ' FROM LISTAPRECO WHERE CODBARRA = ';
    strb := strb + '''' + edit6.Text + '''';
  end;

  if (cds2.Active) then
    cds2.Close;
  cds2.CommandText := strb;
  cds2.Open;
{  if (not cds2.IsEmpty) then
  begin
    if (cds.Active) then
    cds.Close;
    strc := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO from produtos where CODPRODUTO = ';
    strc := strc + IntToStr(cds2.Fields[3].AsInteger);
    cds.CommandText := strc;
    cds.Open;
  end;}
  screen.Cursor := crDefault;
end;

procedure TfListaProd.DBGrid2DblClick(Sender: TObject);
var stre: String;
begin
  if (cds.Active) then
    cds.Close;
  stre := 'select PRODUTO, CODPRO, COD_BARRA, CODPRODUTO, MARCA,UNIDADEMEDIDA, VALORUNITARIOATUAL, VALOR_PRAZO, FAMILIA, CATEGORIA, margem from produtos where CODPRODUTO = ';
  stre := stre + IntToStr(cds2.Fields[3].AsInteger);
  cds.CommandText := stre;
  cds.Open;

end;

procedure TfListaProd.DBGrid1DblClick(Sender: TObject);
var strd: String;
begin
  if (cds2.Active) then
    cds2.Close;
  strd := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
  strd := strd + 'SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO';
  strd := strd + ' FROM LISTAPRECO WHERE CODPRODUTO = ';
  strd := strd + IntToStr(cds.Fields[3].AsInteger);
  cds2.CommandText := strd;
  cds2.Open;

end;

procedure TfListaProd.BitBtn7Click(Sender: TObject);
begin
  fProdutoLista := TfProdutoLista.Create(Application);
  try
    codprod := '0';
    fProdutoLista.ShowModal;
  finally
    fProdutoLista.Free;
  end;

end;

procedure TfListaProd.FormShow(Sender: TObject);
var strd: string;
begin
  sCtrlResize.CtrlResize(TForm(fListaProd));
  if ((codprod <> '0') and (codprod <> '')) then
  begin
    Edit1.Text := codprod;
    //    Edit4.Text := codprod;
    BitBtn3.Click;
    //    BitBtn4.Click;
    if (cds2.Active) then
      cds2.Close;
    strd := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
    strd := strd + 'SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO';
    strd := strd + ' FROM LISTAPRECO WHERE CODPRODUTO = ';
    strd := strd + IntToStr(cds.Fields[3].AsInteger);
    cds2.CommandText := strd;
    cds2.Open;
  end;
end;

procedure TfListaProd.BitBtn8Click(Sender: TObject);
var strd, strx: string;
   TD: TTransactionDesc;
begin
  { Vejo se o produto já não está na lista }
  if (sqsBuscaLista.Active) then
    sqsBuscaLista.Close;
  strx := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
  strx := strx + 'SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO';
  strx := strx + ' FROM LISTAPRECO WHERE CODPRODUTO = ';
  strx := strx + IntToStr(cds.Fields[3].AsInteger);
  strx := strx + ' AND CODIGO = ';
  strx := strx + QuotedStr(cds2CODIGO.AsString);
  sqsBuscaLista.CommandText := strx;
  sqsBuscaLista.Open;
  if (sqsBuscaLista.IsEmpty) then
  begin
    strd := 'INSERT INTO LISTAPRECO(CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
    strd := strd + 'SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, PRECOVENDA) VALUES (';
    strd := strd + QuotedStr(cds2CODIGO.AsString);
    // '-' + IntToStr(cdsCODPRODUTO.AsInteger));
    strd := strd + ',' + QuotedStr(cds2DESCR.AsString);
    strd := strd + ',' + QuotedStr(cds2CODBARRA.AsString);
    strd := strd + ',' + QuotedStr(IntToStr(cdsCODPRODUTO.AsInteger));
    strd := strd + ',' + QuotedStr(cds2FORNECEDOR.AsString);
    strd := strd + ',' + QuotedStr(cds2GRUPO.AsString);
    strd := strd + ',' + QuotedStr(cds2SUBGRUPO.AsString);
    strd := strd + ',' + QuotedStr(cds2UNIDADE.AsString);
    DecimalSeparator := '.';
    strd := strd + ',' + QuotedStr(FloatToStr(cds2PRECOLISTA.AsFloat));
    strd := strd + ',' + QuotedStr(FloatToStr(cds2MARGEM.AsFloat));
    strd := strd + ',' + QuotedStr(FloatToStr(cds2PRECOVENDA.AsFloat));
    strd := strd + ')';
    DecimalSeparator := ',';
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strd);
    Try
      dm.sqlsisAdimin.Commit(TD);
      BitBtn4.Click;
      MessageDlg('Produto inserido com sucesso!', mtInformation,
            [mbOk], 0);
      if (cds2.Active) then
        cds2.Close;
      strd := 'SELECT CODIGO, DESCR, CODBARRA, CODPRODUTO, FORNECEDOR, GRUPO,';
      strd := strd + 'SUBGRUPO , UNIDADE, PRECOLISTA, MARGEM, CODBARRA, PRECOVENDA, USAPRODUTO, CODLISTAPRECO';
      strd := strd + ' FROM LISTAPRECO WHERE CODPRODUTO = ';
      strd := strd + QuotedStr(IntToStr(cdsCODPRODUTO.AsInteger));
      cds2.CommandText := strd;
      cds2.Open;
    except
       DecimalSeparator := ',';
       dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
       MessageDlg('Erro no sistema, produto não inserido!', mtError,
           [mbOk], 0);
    end;
  end
  else
    MessageDlg('Produto já relacionado !', mtInformation,
           [mbOk], 0);
end;

procedure TfListaProd.BitBtn9Click(Sender: TObject);
var stry: string;
   TD: TTransactionDesc;
begin
  if  MessageDlg('Confirma a exclusão deste produto da Lista',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    stry := 'DELETE FROM LISTAPRECO ';
    stry := stry + ' LISTAPRECO WHERE CODLISTAPRECO = ';
    stry := stry + IntToStr(cds2CODLISTAPRECO.AsInteger);
    dm.sqlsisAdimin.ExecuteDirect(stry);
    dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, produto não excluído!', mtError,
         [mbOk], 0);
  end;
end;

end.
