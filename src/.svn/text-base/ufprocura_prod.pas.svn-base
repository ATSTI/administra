unit ufprocura_prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBCtrls, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  Menus, DB, DBClient, Provider, SqlExpr, XPMenu;

type
  TfProcura_prod = class(TForm)
    sds_proc: TSQLDataSet;
    sds_procCODPRODUTO: TIntegerField;
    sds_procCODPRO: TStringField;
    sds_procPRODUTO: TStringField;
    sds_procPRECO_VENDA: TFloatField;
    sds_procQTDE_PCT: TFloatField;
    sds_procUNIDADEMEDIDA: TStringField;
    sds_procGRUPO: TStringField;
    sds_procSUBGRUPO: TStringField;
    sds_procMARCA: TStringField;
    sds_procESTOQUEATUAL: TFloatField;
    sds_procCODALMOXARIFADO: TIntegerField;
    sds_procICMS: TFloatField;
    sds_procPRECO_COMPRA: TFloatField;
    sds_procTIPO: TStringField;
    sds_procLOCALIZACAO: TStringField;
    sds_procCOD_BARRA: TStringField;
    dsp_proc: TDataSetProvider;
    cds_proc: TClientDataSet;
    cds_procCODPRODUTO: TIntegerField;
    cds_procCODPRO: TStringField;
    cds_procPRODUTO: TStringField;
    cds_procPRECO_VENDA: TFloatField;
    cds_procQTDE_PCT: TFloatField;
    cds_procUNIDADEMEDIDA: TStringField;
    cds_procGRUPO: TStringField;
    cds_procSUBGRUPO: TStringField;
    cds_procMARCA: TStringField;
    cds_procESTOQUEATUAL: TFloatField;
    cds_procCODALMOXARIFADO: TIntegerField;
    cds_procICMS: TFloatField;
    cds_procPRECO_COMPRA: TFloatField;
    cds_procTIPO: TStringField;
    cds_procLOCALIZACAO: TStringField;
    cds_procCOD_BARRA: TStringField;
    Dtsrc: TDataSource;
    ds: TDataSource;
    dsSub: TDataSource;
    Ds_Marca: TDataSource;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incluir1: TMenuItem;
    Limpar1: TMenuItem;
    Confirma1: TMenuItem;
    DataSource1: TDataSource;
    cds_proc1: TClientDataSet;
    cds_proc1CODIGO: TStringField;
    dsp_proc1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    StringField7: TStringField;
    sds_proc1: TSQLDataSet;
    sds_proc1USO: TStringField;
    DataSetProvider1: TDataSetProvider;
    cds_proc2: TClientDataSet;
    cds_proc2USO: TStringField;
    DataSource2: TDataSource;
    Panel1: TPanel;
    btnIncluir: TSpeedButton;
    BitBtn1: TSpeedButton;
    BitBtn2: TSpeedButton;
    BitBtn3: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    edCodigo: TEdit;
    Label2: TLabel;
    edOutros: TEdit;
    Label3: TLabel;
    edProduto: TEdit;
    Label4: TLabel;
    edUso: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    XPMenu1: TXPMenu;
    procedure Incluir1Click(Sender: TObject);
    procedure Procurar1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure Confirma1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcura_prod: TfProcura_prod;
  codprodxa: Integer;
  varonde: string;

implementation

uses UDm, uPrincipal;

{$R *.dfm}

procedure TfProcura_prod.Incluir1Click(Sender: TObject);
begin
 fProcura_prod.Close;
{ if (fproduto = nil) then
 begin
   fProduto:=TfProduto.Create(Application);
   try
     fProduto.ShowModal;
   finally
     fProduto.Free;
   end;
 end else
   Close;}
end;

procedure TfProcura_prod.Procurar1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TfProcura_prod.Limpar1Click(Sender: TObject);
begin
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  DBLookupComboBox3.KeyValue := '-1';
  DBLookupComboBox1.KeyValue := '-1';
  DBLookupComboBox2.KeyValue := '-1';
  cds_proc.Close;
end;

procedure TfProcura_prod.Confirma1Click(Sender: TObject);
begin
  BitBtn3.Click;
end;

procedure TfProcura_prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 codprodxa := cds_procCODPRODUTO.asInteger;
 if (varonde <> 'compra') then
 begin
   if cds_proc.Active then
     cds_proc.Close;

   if cds_proc1.Active then
     cds_proc1.Close;

   if cds_proc2.Active then
     cds_proc2.Close;
 end;    
end;

procedure TfProcura_prod.FormCreate(Sender: TObject);
begin

  fPrincipal.cds_parametro.Locate('PARAMETRO', 'VIDEO',[loPartialKey]);
  videoW := fPrincipal.cds_parametroD1.AsString;
  videoH := fPrincipal.cds_parametroD2.AsString;

  if videoW = '800' then
    fPrincipal.Position := poDesigned;

  if videoW <> '' then
  begin
   ScreenWidth := StrToInt(videoW);
   ScreenHeight := StrToInt(videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;


  if dm.cds_Marca.Active then
    dm.cds_Marca.Close;
  dm.cds_Marca.Params[0].Clear;
  dm.cds_Marca.Params[1].AsString := 'todos';
  dm.cds_Marca.Open;

  if dm.cds_familia.Active then
    dm.cds_familia.Close;
  dm.cds_familia.Params[0].Clear;
  dm.cds_familia.Params[1].AsString := 'todos';
  dm.cds_familia.Open;

  if dm.cds_categoria.Active then
    dm.cds_categoria.Close;
  dm.cds_categoria.Params[0].Clear;
  dm.cds_categoria.Params[1].AsString := 'todos';
  dm.cds_categoria.Open;

{  DBLookupComboBox1.Height := 23;
  DBLookupComboBox2.Height := 23;
  DBLookupComboBox3.Height := 23;
 }
end;

procedure TfProcura_prod.FormShow(Sender: TObject);
begin
 Edit1.SetFocus;
end;

procedure TfProcura_prod.btnIncluirClick(Sender: TObject);
begin
 fProcura_prod.Close;
{ if (fproduto = nil) then
 begin
   fProduto:=TfProduto.Create(Application);
   try
     fProduto.ShowModal;
   finally
     fProduto.Free;
   end;
 end else
   Close;}
end;

procedure TfProcura_prod.BitBtn1Click(Sender: TObject);
var varSql, varCondicao, varSql1, varCond2, varSql2, varCondicao1, s: string;
i : integer;
begin
 // Produtos
 varSql := 'select FIRST 500 distinct pro.CODPRODUTO, pro.COD_BARRA, pro.CODPRO, pro.PRODUTO,  ' +
   'pro.VALOR_PRAZO as PRECO_VENDA, pro.VALORUNITARIOATUAL as PRECO_COMPRA, ' +
   'pro.QTDE_PCT, pro.UNIDADEMEDIDA, ' +
   'pro.FAMILIA as GRUPO, pro.CATEGORIA as SUBGRUPO, pro.MARCA, ' +
   'pro.ESTOQUEATUAL, pro.CODALMOXARIFADO, pro.ICMS,  pro.TIPO, pro.LOCALIZACAO    ' +
   'from PRODUTOS pro ' +
   'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
   'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';
 // Códigos
 varSql1 := 'select distinct cod.CODIGO ' +
   'from PRODUTOS pro ' +
   'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
   'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';
 // Uso
 varSql2 := 'select DISTINCT uso.DESCRICAO as USO ' +
   'from PRODUTOS pro ' +
   'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
   'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';
 if edCodigo.Text <> '' then
   varCondicao := 'where pro.CODPRO like ' + '''' + edCodigo.Text + '%' + '''';

 if edUso.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and uso.DESCRICAO like ' + '''' + edUso.Text + '%' + ''''
   else
     varCondicao := 'where uso.DESCRICAO like ' + '''' + edUso.Text + '%' + '''';

 if edProduto.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and pro.PRODUTO like ' + '''' + edProduto.Text + '%' + ''''
   else
     varCondicao := 'where pro.PRODUTO like ' + '''' + edProduto.Text + '%' + '''';

 if edOutros.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and cod.CODIGO like ' + '''' + edOutros.Text + '%' + ''''
   else
     varCondicao := 'where cod.CODIGO like ' + '''' + edOutros.Text + '%' + '''';

 if DBLookupComboBox3.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and pro.MARCA = ' + '''' + DBLookupComboBox3.KeyValue + ''''
   else
     varCondicao := 'where pro.MARCA = ' + '''' + DBLookupComboBox3.KeyValue + '''';

 if DBLookupComboBox1.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and pro.FAMILIA = ' + '''' + DBLookupComboBox1.KeyValue + ''''
   else
     varCondicao := 'where pro.FAMILIA = ' + '''' + DBLookupComboBox1.KeyValue + '''';

 if Edit1.Text <> '' then
   if varCondicao <> '' then
   begin
     s:='';
     for i:=1 to 7 do
     begin
       s:= s+ copy(Edit1.text,I,1);
     end;
     varCondicao := varCondicao + ' and pro.COD_BARRA =' + '''' + Edit1.Text + '''';
     varCondicao := varCondicao + ' or pro.COD_BARRA = ' + '''' + s + '00001' + '''';
   end
   else
   begin
     s:='';
     for i:=1 to 7 do
     begin
       s:= s+ copy(Edit1.text,I,1);
     end;
     varCondicao := 'where pro.COD_BARRA = ' + '''' + Edit1.Text + '''';
     varCondicao := varCondicao + ' or pro.COD_BARRA = ' + '''' + s + '00001' + '''';
   end;

 if DBLookupComboBox2.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and pro.CATEGORIA = ' + '''' + DBLookupComboBox2.KeyValue + ''''
   else
     varCondicao := 'where pro.CATEGORIA = ' + '''' + DBLookupComboBox2.KeyValue + '''';
 varCondicao1 := varSql1 + varCondicao + ' order by pro.PRODUTO ';
 varCond2 := varSql2 + varCondicao + ' order by pro.PRODUTO ';
 varCondicao := varSql + varCondicao + ' order by pro.PRODUTO ';

//***************************************************************************
 if cds_proc.Active then
   cds_proc.Close;
 cds_proc.CommandText := varCondicao;
 cds_proc.Open;
// cds_proc.CommandText := varSql;
 DBGrid1.SetFocus;

 if cds_proc1.Active then
   cds_proc1.Close;
 cds_proc1.CommandText := varCondicao1;
 cds_proc1.Open;
 cds_proc1.CommandText := varSql1;

 if cds_proc2.Active then
   cds_proc2.Close;
 cds_proc2.CommandText := varCond2;
 cds_proc2.Open;
 cds_proc2.CommandText := varSql2;
end;

procedure TfProcura_prod.BitBtn2Click(Sender: TObject);
begin
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  DBLookupComboBox3.KeyValue := '-1';
  DBLookupComboBox1.KeyValue := '-1';
  DBLookupComboBox2.KeyValue := '-1';
  cds_proc.Close;
end;

procedure TfProcura_prod.BitBtn3Click(Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TfProcura_prod.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;  
end;

end.
