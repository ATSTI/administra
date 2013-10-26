unit ufprocura_prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBCtrls, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  Menus, DB, DBClient, Provider, SqlExpr, XPMenu, MMJPanel, EDBFind,
  rpcompobase, rpvclreport, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvEdit, JvValidateEdit, Mask, JvExMask, JvToolEdit, JvBaseEdits, DBXPress;

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
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    MMJPanel1: TMMJPanel;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    edUso: TEdit;
    Label6: TLabel;
    edCodigo: TEdit;
    Label2: TLabel;
    edOutros: TEdit;
    Label3: TLabel;
    edProduto: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn4: TBitBtn;
    EvDBFind1: TEvDBFind;
    sds_procLOTES: TStringField;
    cds_procLOTES: TStringField;
    BitBtn5: TBitBtn;
    VCLReport_lista_produtos: TVCLReport;
    Panel3: TPanel;
    DBGrid4: TDBGrid;
    sdsLista: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsLista: TClientDataSet;
    cdsListaCODPRODUTO: TIntegerField;
    cdsListaCODIGO: TStringField;
    cdsListaUSAPRODUTO: TStringField;
    cdsListaFORNECEDOR: TStringField;
    cdsListaPRECOVENDA: TFloatField;
    cdsListaCODBARRA: TStringField;
    cdsListaPRECOLISTA: TFloatField;
    dsLista: TDataSource;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    sds_procLOCALIZACAO: TStringField;
    cds_procLOCALIZACAO: TStringField;
    Label14: TLabel;
    Edit5: TEdit;
    rgEmUso: TCheckBox;
    sds_procPESO_QTDE: TFloatField;
    cds_procPESO_QTDE: TFloatField;
    cbMarca: TComboBox;
    cbFamilia: TComboBox;
    cbCategoria: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    btnIncluir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton3: TBitBtn;
    SpeedButton2: TBitBtn;
    SpeedButton1: TBitBtn;
    SpeedButton4: TBitBtn;
    Lotes1: TMenuItem;
    Lista1: TMenuItem;
    Imprimir1: TMenuItem;
    Etiquetas1: TMenuItem;
    BitBtn6: TBitBtn;
    sds_procPRECOMEDIO: TFloatField;
    cds_procPRECOMEDIO: TFloatField;
    Edit4: TJvCalcEdit;
    Edit2: TJvCalcEdit;
    Edit3: TJvCalcEdit;
    Label9: TLabel;
    Label10: TLabel;
    cbTipo: TComboBox;
    sds_procIPI: TFloatField;
    cds_procIPI: TFloatField;
    sds_procPEDIDO: TFloatField;
    cds_procPEDIDO: TFloatField;
    rbBuscaSimples: TCheckBox;
    CheckBox1: TCheckBox;
    sds_procOBS: TStringField;
    cds_procOBS: TStringField;
    lblCondicao1: TLabel;
    edCondicao1: TJvCalcEdit;
    lblCondicao2: TLabel;
    edCondicao2: TJvCalcEdit;
    lblCondicao3: TLabel;
    edCondicao3: TJvCalcEdit;
    sds_procORIGEM: TStringField;
    sds_procNCM: TStringField;
    cds_procORIGEM: TStringField;
    cds_procNCM: TStringField;
    edDescontoMargem: TJvCalcEdit;
    Label15: TLabel;
    procedure Incluir1Click(Sender: TObject);
    procedure Procurar1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure EvDBFind1Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit3Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cbFamiliaChange(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure EvDBFind1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cds_procAfterScroll(DataSet: TDataSet);
    procedure edDescontoMargemExit(Sender: TObject);
    procedure edDescontoMargemKeyPress(Sender: TObject; var Key: Char);
  private
    vlrUnitCusto: Double;
    vlrUnitVenda: Double;
    margemItemProcuraProd: Double;
    varCondicaoEstoque : String;
    exibirCamposCondicao: String;
    condicao1: Double;
    condicao2: Double;
    condicao3: Double;
    condicaoArredondar: Integer;
    vlr: double;
    TD: TTransactionDesc;
    { Private declarations }
    procedure exibePrecoProcProd;
    procedure precolista1;
    procedure precolista2;
    procedure formcompra;
    procedure formvenda;
    procedure formnf;
    procedure formterminal;
    procedure formitens;
    procedure formterminaldelivery;
    procedure formCupom;
    procedure formestoque;
    procedure formentrasai;
    procedure formcadfornecedor;
    procedure formcadproduto;
    procedure formnotaf;
    procedure formnfCompra;
    procedure formMovEstoque;
    procedure incluimovimento;
    procedure formof;
    procedure calculaDescMargem;
  public
    { Public declarations }
    fecodProd, fenomeProduto, usouAdiciona : string;
    fecodProduto: integer;
    codcli : integer;
    fprocuraprodestq: double;
  end;

var
  fProcura_prod: TfProcura_prod;
  codprodxa: Integer;
  varonde, var_F, imp, PRODUTO_DESC, saldo_negativo: string;

implementation

uses UDm, uProdutoCadastro, uCompra, uVendas, uNotafiscal, uITENS_NF,
  uEntra_Sai_estoque, uLotes, uLotesCadastro,
  ufDlgLogin, uProdFornecedor, uTerminalLoja, uProduto_Mat_prima,
  sCtrlResize, uTerminal_Delivery, UDMNF, uNF,
  uNFCompra,
  uMovimenta_Estoque,
  UDM_MOV,
  uLotes_Produtos,
  uTerminal2,
  uOf;

{$R *.dfm}

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

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
  cbMarca.Text := '';
  cbFamilia.Text := '';
  cbCategoria.Text := '';
  cds_proc.Close;
end;

procedure TfProcura_prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //if varonde = 'cad_produto' then
   // fProcura_prod.ModalResult := mrOk;
 codprodxa := cds_procCODPRODUTO.asInteger;
 if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'venda')
     and (varonde <> 'EntraSai') and (varonde <> 'mat_prima')) then
 if (panel2.Visible = True) then
 begin
   if cds_proc.Active then
     cds_proc.Close;

   if cds_proc1.Active then
     cds_proc1.Close;

   if cds_proc2.Active then
     cds_proc2.Close;
 end;
 //BitBtn2.Click; Comentei
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  edOutros.Clear;
  cbMarca.Text := '';
  cbFamilia.Text := '';
  cbCategoria.Text := '';
  cbCategoria.Items.Clear;
  if dm.cds_categoria.Active then
    dm.cds_categoria.Close;

 if Panel3.Visible = True then
   Panel3.Visible := False;
 if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'venda')
     and (varonde <> 'EntraSai') and (varonde <> 'mat_prima')) then
 begin
   //cds_proc.Close;
 end;
 varonde := '';
// Close;
end;

procedure TfProcura_prod.FormCreate(Sender: TObject);
begin
  varCondicaoEstoque := '';
  //if (DM.videoW <> '1920') then
  sCtrlResize.CtrlResize(TForm(fProcura_prod));
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTAPRODUTOCONDICAO';
  dm.cds_parametro.Open;
  condicao1 := 0;
  condicao2 := 0;
  condicao3 := 0;
  condicaoArredondar := 2;
  exibirCamposCondicao := 'N';
  if (not dm.cds_parametro.IsEmpty) then
  begin
    exibirCamposCondicao := 'S';
    condicao1 := StrToFloat(dm.cds_parametroD2.AsString);
    condicao2 := StrToFloat(dm.cds_parametroD4.AsString);
    condicao3 := StrToFloat(dm.cds_parametroD6.AsString);
    if (dm.cds_parametroD7.AsString <> '') then
      condicaoArredondar := StrToInt(dm.cds_parametroD7.AsString);
    if ((condicao1 > 0) or (condicao1 < 0)) then
    begin
      lblCondicao1.Visible := True;
      edCondicao1.Visible  := True;
      lblCondicao1.Caption := dm.cds_parametroD1.AsString;
    end;
    if ((condicao2 > 0) or (condicao2 < 0)) then
    begin
      lblCondicao2.Visible := True;
      edCondicao2.Visible := True;
      lblCondicao2.Caption := dm.cds_parametroD3.AsString;
    end;
    if ((condicao3 > 0) or (condicao3 < 0)) then
    begin
      lblCondicao3.Visible := True;
      edCondicao3.Visible := True;
      lblCondicao3.Caption := dm.cds_parametroD5.AsString;
    end;

  end;
end;

procedure TfProcura_prod.FormShow(Sender: TObject);
begin
  //if (procprod <> 'PROC_PROD_COMPLETO') then
  //  CheckBox1.Checked := True;

  if (not dm.cds_Marca.Active) then
    dm.cds_Marca.Open;
  dm.cds_Marca.First;
  while not dm.cds_Marca.Eof do
  begin
     cbMarca.Items.Add(dm.cds_MarcaDESCMARCAS.AsString);
     dm.cds_Marca.Next;
  end;
  dm.cds_Marca.Close;

  if (not dm.cds_familia.Active) then
    dm.cds_familia.Open;
  dm.cds_familia.First;
  while not dm.cds_familia.Eof do
  begin
     cbFamilia.Items.Add(dm.cds_familiaDESCFAMILIA.AsString);
     dm.cds_familia.Next;
  end;
  dm.cds_familia.Close;

  if dm.cds_categoria.Active then
    dm.cds_categoria.Close;
  dm.cds_categoria.Params[0].Clear;
  dm.cds_categoria.Params[2].Clear;
  dm.cds_categoria.Params[1].AsString := 'todos';
  dm.cds_categoria.Open;
  dm.cds_categoria.First;
  while not dm.cds_categoria.Eof do
  begin
     cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
     dm.cds_categoria.Next;
  end;
  dm.cds_categoria.Close;

  usouAdiciona := 'nao usou';
  if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'EntraSai')
    and (varonde <> 'Lotes')) then
  if (panel1.Visible = True) then
  begin
    panel1.TabOrder := 0;
    cbMarca.Text := '';
    Edit1.SetFocus;
  end
  else
  begin
    cbMarca.Text := '';
    panel2.TabOrder := 0;
    EvDBFind1.SetFocus;
  end;

  if var_F = 'venda' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
  if var_F = 'compra' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
  cbMarca.Text := '';
  if (Panel1.Visible = True) then
    DBGrid1.SetFocus;
  if (Panel2.Visible = True) then
    EvDBFind1.SetFocus;
  if (Panel1.Visible = True) then
    edProduto.SetFocus;

  //Verifica Quantidade de Casas Decimais na QUANTIDADE E PREÇO
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'FORMATACAO';
  dm.cds_parametro.Open;


  if (dm.cds_parametroD1.AsString <> '') then
  begin
    Case StrToInt(dm.cds_parametroD1.AsString) of
      2 : Edit3.DecimalPlaces :=  2;
      3 : Edit3.DecimalPlaces :=  3;
      4 : Edit3.DecimalPlaces :=  4;
      5 : Edit3.DecimalPlaces :=  5;
      6 : Edit3.DecimalPlaces :=  6;
    end;
  end;

  if (dm.cds_parametroD2.AsString <> '') then
  begin
    Case StrToInt(dm.cds_parametroD2.AsString) of
      2 : Edit4.DecimalPlaces :=  2;
      3 : Edit4.DecimalPlaces :=  3;
      4 : Edit4.DecimalPlaces :=  4;
      5 : Edit4.DecimalPlaces :=  5;
      6 : Edit4.DecimalPlaces :=  6;
    end;
  end;

  if (dm.cds_parametroD1.AsString <> '') then
  begin
    Case StrToInt(dm.cds_parametroD1.AsString) of
      2 : Edit3.DisplayFormat :=  ',##0.00';
      3 : Edit3.DisplayFormat :=  ',##0.000';
      4 : Edit3.DisplayFormat :=  ',##0.0000';
      5 : Edit3.DisplayFormat :=  ',##0.00000';
      6 : Edit3.DisplayFormat :=  ',##0.000000';
    end;
  end;

  if (dm.cds_parametroD2.AsString <> '') then
  begin
    Case StrToInt(dm.cds_parametroD2.AsString) of
      2 : Edit4.DisplayFormat :=  ',##0.00';
      3 : Edit4.DisplayFormat :=  ',##0.000';
      4 : Edit4.DisplayFormat :=  ',##0.0000';
      5 : Edit4.DisplayFormat :=  ',##0.00000';
      6 : Edit4.DisplayFormat :=  ',##0.000000';
    end;
  end;

  dm.cds_parametro.Close;

end;

procedure TfProcura_prod.btnIncluirClick(Sender: TObject);
begin
  fProdutoCadastro:=TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.btnProcurar.Visible := False;
    if (dm.cds_produto.Active) then
      dm.cds_produto.close;
    dm.cds_produto.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
    dm.cds_produto.Open;
    dm.cds_produto.Edit;
    dm.cds_produtoESTOQUEATUAL.AsFloat := cds_procESTOQUEATUAL.AsFloat;
    dm.cds_produtoVALORUNITARIOATUAL.AsFloat := cds_procPRECO_COMPRA.AsFloat;
    dm.cds_produtoPRECOMEDIO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    //dm.cds_produtoVALOR_PRAZO.AsFloat := cds_procPRECO_VENDA.AsFloat;
    if (dm.cds_produtoTIPO.AsString = 'SERV') then
      cbTipo.ItemIndex := 3
    else if (dm.cds_produtoTIPO.AsString = 'COMPRA') then
      cbTipo.ItemIndex := 1
    else if (dm.cds_produtoTIPO.AsString = 'VENDA') then
      cbTipo.ItemIndex := 2
    else if (dm.cds_produtoTIPO.AsString = 'LOCA') then
      cbTipo.ItemIndex := 4
    else
      cbTipo.ItemIndex := 0;
    dm.cds_produto.Post;
    if (dm.cds_produtoMARCA.AsString <> '') then
      fProdutoCadastro.dbMarca.Text := dm.cds_produtoMARCA.AsString;
    fProdutoCadastro.ShowModal;
    if (Panel2.Visible) then
      EvDBFind1.Text := PRODUTO_DESC;//dm.cds_produtoPRODUTO.asString;
  finally
    fProdutoCadastro.btnProcurar.Visible := True;
    fProdutoCadastro.Free;
  end;
end;

procedure TfProcura_prod.BitBtn1Click(Sender: TObject);
var varSql, varCondicao, varCondicaoA, varSql1, varCond2, varSql2, varCondicao1, s: string;
i : integer;
begin
  if (panel2.Visible = True) then
  begin
    cbMarca.Text := '';
  end;
 cds_proc.CommandText := '';
 varCondicao := '';
 // Produtos
 varSql := 'select distinct CODPRODUTO, COD_BARRA, CODPRO, cast(PRODUTO as varchar(300)) as PRODUTO,  ' +
   'PRECO_VENDA, PRECO_COMPRAULTIMO as PRECO_COMPRA, ' +
   'QTDE_PCT, UNIDADEMEDIDA, ' +
   'GRUPO, SUBGRUPO, MARCA, ' +
   'ESTOQUEATUAL, CODALMOXARIFADO, ICMS, TIPO, LOCALIZACAO, LOTES,    ' +
   'SUBGRUPO as CATEGORIA, PRECO_VENDA as VALOR_PRAZO, PESO_QTDE, ' +
   'PRECO_COMPRAMEDIO as PRECOMEDIO, IPI , PEDIDO, OBS, ORIGEM, NCM ' +
   'from LISTAPRODUTOCLI(0, ';
   // 'TODOSPRODUTOS', 'TODOSPRODUTOS', 'TODOSGRUPOS', 'TODOSSUBGRUPOS','TODASMARCAS', 'CODIGOBARRA', 'CODIGOCLIENTE')
  // Codigos
  varSql1 := 'select distinct cod.CODIGO ' +
    'from PRODUTOS pro ' +
    'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
    'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';
  // Uso
  varSql2 := 'select DISTINCT uso.DESCRICAO as USO ' +
    'from PRODUTOS pro ' +
    'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
    'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';

{  ***** Comentei pois nao e usado mais - Carlos 09/08/2006 ****}

  if (edCodigo.Text <> '') then
    varCondicao := QuotedStr(edCodigo.Text)
  else
    varCondicao := QuotedStr('TODOSPRODUTOS');  // Carrega todos e abaixo coloquei para fazer a busca pelo codigo.

  if cbFamilia.Text <> '' then
    varCondicao := varCondicao + ', ' + QuotedStr(cbFamilia.Text)
  else
    varCondicao := varCondicao + ', ' + QuotedStr('TODOSGRUPOS');

  if cbCategoria.Text <> '' then
    varCondicao := varCondicao + ', ' + QuotedStr(cbCategoria.Text)
   else
    varCondicao := varCondicao + ', ' + QuotedStr('TODOSSUBGRUPOS');

  if (cbMarca.Text <> '') then
    varCondicao := varCondicao + ', ' + QuotedStr(cbMarca.Text)
  else
    varCondicao := varCondicao + ', ' + QuotedStr('TODASMARCAS');

  if (codcli > 0) then
    varCondicao := varCondicao + ', ' + IntToStr(codcli)
  else
    varCondicao := varCondicao + ', ' + IntToStr(0);

  {if (cbAplicacao.ItemIndex > -1) then
  begin
    varCondicao := varCondicao + ', ' + QuotedStr(cbAplicacao.Text);
  end
  else begin}
    varCondicao :=  varCondicao + ', ' + QuotedStr('TODASAPLICACOES');
  //end;

  {if (cbLocal.ItemIndex > -1) then
  begin
    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    contaEstoque := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if (dm.cds_ccusto.Active) then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := contaEstoque;
    dm.cds_ccusto.Open;

    if (dm.cds_ccusto.Locate('NOME', cbLocal.Text, [loCaseInsensitive])) then
      varCondicao := varCondicao + ', ' + IntToStr(dm.cds_ccustoCODIGO.AsInteger)
    else
      varCondicao :=  varCondicao + ', 0';
  end
  else begin  }
    varCondicao :=  varCondicao + ', 0';
  //end;

  varCondicao := varCondicao + ') ';
  if (cbTipo.Text <> '') then
  begin
    case cbTipo.ItemIndex of
      0: varCondicaoA := ' where ((TIPO = ' + QuotedStr('PROD') + ') OR (TIPO IS NULL)) ';
      1: varCondicaoA := ' where ((TIPO = ' + QuotedStr('COMPRA') + ') OR (TIPO = ' +
         QuotedStr('PROD') + ') OR (TIPO IS NULL)) ';
      2: varCondicaoA := ' where ((TIPO = ' + QuotedStr('VENDA') + ') OR (TIPO = ' +
         QuotedStr('PROD') + ') OR (TIPO IS NULL)) ';
      3: varCondicaoA := ' where ((TIPO = ' + QuotedStr('SERV') + ')) ';
      4: varCondicaoA := ' where ((TIPO <> ' + QuotedStr('COMPRA') + ') OR (TIPO IS NULL)) ';
      5: varCondicaoA := ' where ((TIPO <> ' + QuotedStr('VENDA') + ') OR (TIPO IS NULL)) ';
    end;
  end;

  if edUso.Text <> '' then
    if varCondicaoA <> '' then
      varCondicaoA := varCondicaoA + ' and DESCRICAO like ' + '''' + edUso.Text + '%' + ''''
    else
      varCondicaoA := 'where DESCRICAO like ' + '''' + edUso.Text + '%' + '''';

  if (rbBuscaSimples.Checked = False) then
  begin
    if edProduto.Text <> '' then
    if varCondicaoA <> '' then
     varCondicaoA := varCondicaoA + ' and UDF_COLLATEBR(cast(PRODUTO as varchar(300))) containing ' + '''' + edProduto.Text + ''''
   else
     varCondicaoA := 'where UDF_COLLATEBR(cast(PRODUTO as varchar(300))) containing ' + '''' + edProduto.Text + '''';
  end;
  if (rbBuscaSimples.Checked) then
  begin
    if edProduto.Text <> '' then
    if varCondicaoA <> '' then
      varCondicaoA := varCondicaoA + ' and PRODUTO like ' + '''' + edProduto.Text + '%' + ''''
    else
      varCondicaoA := 'where PRODUTO like ' + '''' + edProduto.Text + '%' + '''';
  end;

  if edOutros.Text <> '' then
    if varCondicaoA <> '' then
      varCondicaoA := varCondicaoA + ' and CODIGO like ' + '''' + edOutros.Text + '%' + ''''
    else
      varCondicaoA := 'where CODIGO like ' + '''' + edOutros.Text + '%' + '''';

  if (rgEmUso.Checked = True) then
  begin
    if varCondicaoA <> '' then
      varCondicaoA := varCondicaoA + ' and USA is null '
    else
      varCondicaoA := 'where USA is null ';
  end
  else begin
    if varCondicaoA <> '' then
      varCondicaoA := varCondicaoA + ' and USA = ' + QuotedStr('N')
    else
      varCondicaoA := 'where USA = ' + QuotedStr('N') ;
  end;

  //if (edCodigo.Text <> '') then
  //begin
  //  if varCondicaoA <> '' then
  //    varCondicaoA :=  varCondicaoA + ' and CODPRO LIKE ' + QuotedStr(edCodigo.Text + '%')
  //  else
  //    varCondicaoA :=  ' WHERE CODPRO LIKE ' + QuotedStr(edCodigo.Text + '%');
  //end;


  if Edit1.Text <> '' then
    if varCondicaoA <> '' then
    begin
     s:='';
     for i:=1 to 7 do
     begin
       s:= s+ copy(Edit1.text,I,1);
     end;
     varCondicaoA := varCondicaoA + ' and COD_BARRA =' + '''' + Edit1.Text + '''';
     varCondicaoA := varCondicaoA + ' or COD_BARRA = ' + '''' + s + '00001' + '''';
   end
   else
   begin
     s:='';
     for i:=1 to 7 do
     begin
       s:= s+ copy(Edit1.text,I,1);
     end;
     varCondicaoA := 'where COD_BARRA = ' + '''' + Edit1.Text + '''';
     varCondicaoA := varCondicaoA + ' or COD_BARRA = ' + '''' + s + '00001' + '''';
   end;

 varCondicao1 := varSql1 + varCondicaoA + ' order by pro.PRODUTO ';
 varCond2 := varSql2 + varCondicaoA + ' order by pro.PRODUTO ';
 varCondicao := varSql + varCondicao + varCondicaoA + varCondicaoEstoque + ' order by PRODUTO ';

//***************************************************************************
 if cds_proc.Active then
   cds_proc.Close;
 cds_proc.CommandText := varCondicao;
 cds_proc.Open;
// cds_proc.CommandText := varSql;
 imp := varCondicao;
 if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'EntraSai')
   and (varonde <> 'Lotes')) then
// DBGrid1.SetFocus;
 {if cds_proc1.Active then
   cds_proc1.Close;
 cds_proc1.CommandText := varCondicao1;
 cds_proc1.Open;
 cds_proc1.CommandText := varSql1;

 if cds_proc2.Active then
   cds_proc2.Close;
 cds_proc2.CommandText := varCond2;
 cds_proc2.Open;
 cds_proc2.CommandText := varSql2;}
  vlrUnitCusto := cds_procPRECOMEDIO.AsFloat;
end;

procedure TfProcura_prod.BitBtn2Click(Sender: TObject);
begin
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  edOutros.Clear;
  cbMarca.Text := '';
  cbFamilia.Text := '';
  cbCategoria.Text := '';
  cbCategoria.Items.Clear;
  if dm.cds_categoria.Active then
    dm.cds_categoria.Close;
  dm.cds_categoria.Params[0].Clear;
  dm.cds_categoria.Params[2].Clear;
  dm.cds_categoria.Params[1].AsString := 'todos';
  dm.cds_categoria.Open;
  while not dm.cds_categoria.Eof do
  begin
     cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
     dm.cds_categoria.Next;
  end;
  dm.cds_categoria.Close;
end;

procedure TfProcura_prod.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfProcura_prod.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(cds_proc.RecNo) then // se for impar
  // se a coluna nao estiver selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrao
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfProcura_prod.DBGrid1TitleClick(Column: TColumn);
begin
  cds_proc.IndexFieldNames:=Column.FieldName;
  if (Panel2.Visible) then
    EvDBFind1.SetFocus;
end;

procedure TfProcura_prod.BitBtn4Click(Sender: TObject);
begin
  saldo_negativo := 'FALSE';
  usouAdiciona := 'usou';
  if (var_F = 'compra') then
    formcompra;
  if (var_F = 'venda') then
  begin
    {if (fVendas.usaprecolistavenda = 'S') then
       precolista2
    else}
    formvenda;
  end;
  if (var_F = 'itens') then
    formitens;
  if (var_F = 'EntraSai') then
    formentrasai;
  if (var_F = 'estoque') then
    formestoque;
  if (var_F = 'MovEstoque') then
    formMovEstoque;
  if (var_F = 'cupom') then
    formCupom;
  if (var_F = 'cadfornecedor') then
    formcadfornecedor;
  if (var_F = 'terminalloja') then
    formterminaldelivery;
  if (var_F = 'formnf') then
    formnf;
  if (var_F = 'formnotaf') then
    formnotaf;
  if (var_F = 'formnfCompra') then
    formnfCompra;
  if (var_F = 'formof') then
    formof;
  //vejo se usa preco por Fornecedor
  if (var_F = 'Lista') then
  begin
    if (fCompra.usaprecolista = 'S') then
       precolista1;
  end;
  if (saldo_negativo = 'FALSE') then
  begin
    BitBtn4.Enabled := false;
    BitBtn5.Enabled := true;
    if BitBtn5.Visible then
      BitBtn5.SetFocus;
  end;  
end;

procedure TfProcura_prod.BitBtn5Click(Sender: TObject);
begin
  usouAdiciona := 'nao usou';
 if (var_F = 'compra') then
   fCompra.btnNovo.Click;

 if (var_F = 'venda') then
   fVendas.btnNovo.Click;

 if (var_F = 'itens') then
   fITENS_NF.btnNovo.Click;

 if (var_F = 'estoque') then
   fEntra_Sai_estoque.btnNovo.Click;

 if (var_F = 'mat_prima') then
   fProduto_Mat_prima.btnIncluir.Click;

 if (var_F = 'Lista') then
   fCompra.btnNovo.Click;

 if (var_F = 'formnf') then
   fNF.btnNovo.Click;

 if (var_F = 'formnfCompra') then
   fNFCompra.btnNovo.Click;

  if (var_F = 'MovEstoque') then
    fMovimenta_Estoque.btnNovo.Click;

  if (var_F = 'cupom') then
  begin
    if (fTerminal_Delivery.cds_Movimento.State in [dsBrowse]) then
        fTerminal_Delivery.cds_Movimento.Edit;

    fTerminal_Delivery.cds_Mov_det.Append;
  end;


 Edit3.Text := '';
 Edit4.Text := '';
 Edit2.Text := ''; 
 BitBtn5.Enabled := false;
 BitBtn4.Enabled := true;
  if (Panel2.Visible) then
    EvDBFind1.SetFocus;

end;

procedure TfProcura_prod.EvDBFind1Exit(Sender: TObject);
begin
   exibePrecoProcProd;
   if (var_F = 'Lista') then
   begin
     if (fCompra.cdslista.Active) then
       fCompra.cdslista.Close;
     fCompra.cdslista.Params[0].AsInteger := fCompra.cds_MovimentoCODFORNECEDOR.AsInteger;
     fCompra.cdslista.Params[1].AsString := cds_procCODPRO.AsString;
     fCompra.cdslista.Open;
     if (not fCompra.cdslista.IsEmpty) then
     begin
       fCompra.cds_Mov_detCODPRODUTO.AsInteger := fCompra.cdslistaCODPRODUTO.AsInteger;
       fCompra.cds_Mov_detCODPRO.AsString := fCompra.cdslistaCODIGO.AsString;
       fCompra.cds_Mov_detDESCPRODUTO.Value := fCompra.cdslistaPRODUTO.Value;
       fCompra.cds_Mov_detUN.AsString := fCompra.cdslistaUNIDADE.AsString;
       fCompra.cds_Mov_detPRECO.AsFloat := fCompra.cdslistaPRECOLISTA.AsFloat;
       Edit4.Text := Format('%-6.2n',[fCompra.cdsListaPRECOLISTA.value]);
     end;
   end;
end;

procedure TfProcura_prod.DBGrid1CellClick(Column: TColumn);
var varCondicao, varSql1, varSql2: string;
begin
 // Codigos
 varSql1 := 'select distinct cod.CODIGO ' +
   'from PRODUTOS pro ' +
   'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
   'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';

 // Uso
 varSql2 := 'select DISTINCT uso.DESCRICAO as USO ' +
   'from PRODUTOS pro ' +
   'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
   'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';

  varCondicao := 'where pro.CODPRO like ' + '''' + cds_procCODPRO.AsString + '%' + '''';

 if cds_proc1.Active then
   cds_proc1.Close;
 cds_proc1.CommandText := varSql1 + varCondicao;
 cds_proc1.Open;
 cds_proc1.CommandText := varSql1;

 if cds_proc2.Active then
   cds_proc2.Close;
 cds_proc2.CommandText := varSql2 + varCondicao;
 cds_proc2.Open;
 cds_proc2.CommandText := varSql2;

  if (exibirCamposCondicao = 'S') then
  begin
    edCondicao1.Value := dm.Arredondar((cds_procPRECO_VENDA.AsFloat * condicao1), condicaoArredondar);
    edCondicao2.Value := dm.Arredondar((cds_procPRECO_VENDA.AsFloat * condicao2), condicaoArredondar);
    edCondicao3.Value := dm.Arredondar((cds_procPRECO_VENDA.AsFloat * condicao3), condicaoArredondar);
  end;
  exibePrecoProcProd;
  if (Panel2.Visible) then
    EvDBFind1.SetFocus;
end;

procedure TfProcura_prod.Edit3Exit(Sender: TObject);
var
    total :double;
begin
  inherited;
  if   var_F = 'venda' then
  if ((fVendas.cds_Mov_detLOTE.AsString <> '') and (fVendas.cds_Mov_detLOTE.AsString <> '0')) then
  begin
    if fVendas.cdslotes.Active then
      fVendas.cdslotes.Close;
    fVendas.cdslotes.Params[0].AsString := cds_procLOTES.AsString;
    fVendas.cdslotes.Open;
    total := fVendas.cdslotesESTOQUE.Value - Edit4.Value;
    if (total < 0) then
    begin
      MessageDlg('Estoque insuficiente para essa venda', mtWarning, [mbOK], 0);
      fVendas.cdslotes.Close;
      exit;
    end;
    fVendas.cdslotes.Close;
 end;
end;

procedure TfProcura_prod.SpeedButton1Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtos.rep';
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Report.DataInfo.Items[0].SQL:= imp;
  VCLReport_lista_produtos.Execute;
end;

procedure TfProcura_prod.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  exibePrecoProcProd;
  if (Panel2.Visible) then
    EvDBFind1.SetFocus;
end;

procedure TfProcura_prod.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  exibePrecoProcProd;
  if (Panel2.Visible) then
    EvDBFind1.SetFocus;
end;

procedure TfProcura_prod.SpeedButton2Click(Sender: TObject);
begin
  Panel3.Visible := true;
  // busca o produto da lista
  if (cdsLista.Active) then
      cdsLista.Close;
  cdsLista.Params[0].AsString := edCodigo.Text;
  cdsLista.Open;
end;

procedure TfProcura_prod.BitBtn7Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

procedure TfProcura_prod.BitBtn8Click(Sender: TObject);
begin
  // adiciona o produto na na tabela Produtos

  if (not cdsLista.IsEmpty) then
  begin
    cdsLista.Edit;
    cdsListaUSAPRODUTO.asString := 'SIM';
    cdsLista.ApplyUpdates(0);
  end;
      BitBtn1.Click;

end;

procedure TfProcura_prod.SpeedButton3Click(Sender: TObject);
begin
  {fLotesCadastro := TfLotesCadastro.Create(Application);
  try
    fLotesCadastro.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
    fLotesCadastro.cdslotes.Open;
    fLotesCadastro.Label1.Caption := cds_procPRODUTO.AsString;
    fLotesCadastro.Label2.Caption := cds_procPRODUTO.AsString;
    fLotesCadastro.ShowModal;
  finally
    fLotesCadastro.Free;
  end;}
  if (varCondicaoEstoque = '') then
    varCondicaoEstoque := ' AND ESTOQUEATUAL > 0'
  else
    varCondicaoEstoque := '';
  bitbtn1.Click;
end;

procedure TfProcura_prod.Edit2Exit(Sender: TObject);
begin
  if (Edit4.Value = 0) then
  begin
    vlr := Edit2.Value/Edit3.Value;
    Edit4.Value := vlr;
  end;
end;

procedure TfProcura_prod.Edit4Exit(Sender: TObject);
var vlra, vlrb: double;
begin
  vlr := Edit4.Value;
  if (Edit4.Value > 0) then
  begin
    vlra := Edit4.Value * Edit3.value;
    Edit2.Value := vlra;
  end;

end;

procedure TfProcura_prod.cbMarcaChange(Sender: TObject);
var sqlFam:string;
begin
  if DM.cds_familia.Active then
    DM.cds_familia.Close;
  sqlFam := dm.sds_familia.CommandText;
  if (cbMarca.Text <> '') then
  begin
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
  end
  else
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
  DM.cds_familia.Open;
  DM.cds_familia.First;
  cbFamilia.Clear;
  while not DM.cds_familia.Eof do
  begin
     cbFamilia.Items.Add(DM.cds_familiaDESCFAMILIA.AsString);
     DM.cds_familia.Next;
  end;
  DM.cds_familia.CommandText := sqlFam;

end;

procedure TfProcura_prod.SpeedButton4Click(Sender: TObject);
begin
  if (cds_proc.RecordCount = 1) then
  begin
    VCLReport_lista_produtos.FileName := str_relatorio + 'produto_etiqueta.rep';
    VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport_lista_produtos.Report.Params.ParamByName('N_ETIQUETAS').Value := Edit5.Text;
    VCLReport_lista_produtos.Report.Params.ParamByName('PRODUTO').Value := cds_procCODPRO.AsString;
  end
  else
  begin
    VCLReport_lista_produtos.FileName := str_relatorio + 'produto_etiqueta.rep';
    VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport_lista_produtos.Report.Params.ParamByName('N_ETIQUETAS').Value := Edit5.Text;
    VCLReport_lista_produtos.Report.Params.ParamByName('PRODUTO').Value := 'TODOS PRODUTOS';
  end;
  VCLReport_lista_produtos.Execute;
end;

procedure TfProcura_prod.precolista1;
begin
   if (fCompra.cdslista.Active) then
     fCompra.cdslista.Close;
   fCompra.cdslista.Params[0].AsInteger := fCompra.cds_MovimentoCODFORNECEDOR.AsInteger;
   fCompra.cdslista.Params[1].AsString := cds_procCODPRO.AsString;
   fCompra.cdslista.Open;
   if (not fCompra.cdslista.IsEmpty) then
   begin
     fCompra.cds_Mov_detCODPRODUTO.AsInteger := fCompra.cdslistaCODPRODUTO.AsInteger;
     fCompra.cds_Mov_detCODPRO.AsString := fCompra.cdslistaCODIGO.AsString;
     fCompra.cds_Mov_detDESCPRODUTO.Value := fCompra.cdslistaPRODUTO.Value;
     fCompra.cds_Mov_detUN.AsString := fCompra.cdslistaUNIDADE.AsString;
     if (edit3.Text <> '') then
       fCompra.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.text)
     else
       fCompra.cds_Mov_detQUANTIDADE.AsFloat := 1;
     fCompra.cds_Mov_detPRECO.AsFloat := fCompra.cdslistaPRECOLISTA.AsFloat;
     fCompra.cds_Mov_det.Post;
   end
   else
   begin
     if (Panel2.Visible = True) then
     begin
       if Edit4.Text = '' then
        Edit4.Text := '0';
       if Edit3.Text = '' then
       begin
         Edit3.Text := '1';
         if (var_F = 'venda') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
         if (var_F = 'compra') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
       end;
     end;
     fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
     fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
     fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
     fCompra.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
     fCompra.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
     fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
     valorUnitario := cds_procPRECO_VENDA.AsFloat;
     fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
     fCompra.cds_Mov_det.Post;
   end;
end;

procedure TfProcura_prod.cbFamiliaChange(Sender: TObject);
begin
 if (cbFamilia.Text <> '') then
 begin
    if not DM.cds_familia.Active then
        DM.cds_familia.Open;
       DM.cds_familia.Locate('DESCFAMILIA', CbFamilia.Text,[loCaseInsensitive]);
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
    dm.cds_categoria.First;
    cbCategoria.Items.Clear;
    while not dm.cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
       dm.cds_categoria.Next;
    end;
    dm.cds_categoria.Close;
    dm.cds_familia.Close;
 end
 else
 begin
    if dm.cds_categoria.Active then
      dm.cds_categoria.Close;
    dm.cds_categoria.Params[0].Clear;
    dm.cds_categoria.Params[2].Clear;
    dm.cds_categoria.Params[1].AsString := 'todos';
    dm.cds_categoria.Open;
    dm.cds_categoria.First;
    cbCategoria.Items.Clear;
    while not dm.cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
       dm.cds_categoria.Next;
    end;
    dm.cds_categoria.Close;
 end;
end;

procedure TfProcura_prod.RadioButton1Click(Sender: TObject);
begin
  if (Panel1.Visible = False) then
      Panel1.Visible := True;
  Panel2.Visible := False;
  RadioButton2.Checked := False;

end;

procedure TfProcura_prod.RadioButton2Click(Sender: TObject);
begin
  if (Panel2.Visible = False) then
      Panel2.Visible := True;
  Panel1.Visible := False;
  RadioButton1.Checked := False;
  BitBtn1.Click;
end;


procedure TfProcura_prod.formcompra;
begin
    fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fCompra.cds_Mov_detCODPRO.AsString      := cds_procCODPRO.AsString;
    fCompra.cds_Mov_detDESCPRODUTO.Value    := cds_procPRODUTO.Value;
    fCompra.cds_Mov_detQUANTIDADE.AsFloat   := StrToFloat(Edit3.Text);
    fCompra.cds_Mov_detPRECO.AsFloat        := vlr;
    fCompra.cds_Mov_detUN.AsString          := cds_procUNIDADEMEDIDA.AsString;
    valorUnitario                           := cds_procPRECO_VENDA.AsFloat;
    fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fCompra.cds_Mov_detQTDE_ALT.AsFloat     := 0;
    fCompra.cds_Mov_detPIPI.AsFloat         := cds_procIPI.AsFloat;

    dm.origemProdutoCfop := 0;
    if (not cds_proc.fieldByName('ORIGEM').IsNull) then
      dm.origemProdutoCfop := StrToInt(cds_proc.fieldByName('ORIGEM').asString);

    fCompra.cds_mov_detCFOP.asString        := dm.pesquisaCfopAUsar(cds_procCODPRODUTO.AsInteger,
      fCompra.ufFornecCompra, fCompra.codFiscalFornecCompra,
      dm.origemProdutoCfop,
      cds_procNCM.AsString, 'Entrada');

    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'LOTEUNITARIO';
      dm.cds_parametro.Open;
      if( (fCompra.cds_Mov_detLOTE.AsString = '') and (dm.cds_parametroCONFIGURADO.AsString = 'S') ) then
      begin
        fLotes_Produtos := TfLotes_Produtos.Create(Application);
        try
          fCompra.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
          fLotes_Produtos.ShowModal;
        finally
          fCompra.cds_Mov_detDTAFAB.AsDateTime := fCompra.cds_MovimentoDATAMOVIMENTO.AsDateTime;
          fCompra.cds_Mov_detDTAVCTO.AsDateTime := fCompra.cds_MovimentoDATAMOVIMENTO.AsDateTime;
          fLotes_Produtos.Free;
        end;
      end
      else
      begin
        fCompra.cds_Mov_detLOTE.AsString := fCompra.cds_MovimentoCONTROLE.AsString;
      end;
      var_F := 'compra';
    end;
    //---------------------------------
    fCompra.cds_Mov_det.Post;
    dm.cds_parametro.Close;
end;

procedure TfProcura_prod.formnf;
begin
     if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        fLotes.btnProdutoProcura.Enabled := False;
        fLotes.btnIncluir.Enabled := False;
        fLotes.btnGravar.Enabled := False;
        fLotes.btnExcluir.Enabled := False;
        fLotes.btnCancelar.Enabled := False;
        fLotes.btnProcurar.Enabled := False;
        var_F := 'procura_nf';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'formnf';
    end;

    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    if fprocuraprodestq < StrToInt(Edit3.Text) then
    begin
      MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
      exit;
    end;
    dmnf.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    dmnf.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    dmnf.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    dmnf.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    dmnf.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    dmnf.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    dmnf.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    DMNF.estoque := cds_procESTOQUEATUAL.AsFloat;
    dmnf.cds_Mov_det.Post;

end;

procedure TfProcura_prod.formvenda;
begin
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        //if fLotes.cdslotes.Active then
        //  fLotes.cdslotes.Close;
        fLotes.codProdutoLt := fProcura_prod.cds_procCODPRODUTO.AsInteger;
        fLotes.codCCustoLt := fVendas.cds_MovimentoCODALMOXARIFADO.AsInteger;
        fLotes.btnProdutoProcura.Enabled := False;
        fLotes.btnIncluir.Enabled := False;
        fLotes.btnGravar.Enabled := False;
        fLotes.btnExcluir.Enabled := False;
        fLotes.btnCancelar.Enabled := False;
        fLotes.btnProcurar.Enabled := False;
        var_F := 'procura_venda';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'venda';
    end;
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    if (dm.estoq < StrToFloat(Edit3.Text)) then
    begin
      MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
      exit;
    end;

    if (fVendas.estoque_negativo = 'TRUE') then // não permito venda com saldo negativo
      if (cds_procESTOQUEATUAL.Value <= 0) then
      begin
         ShowMessage('Produto com saldo negativo !');
         saldo_negativo := 'True';
         //dbeProduto.Clear;
         //dm.scds_produto_proc.Close;
         Exit;
      end
      else
        saldo_negativo := 'FALSE';

    dm.origemProdutoCfop := 0;
    if (not cds_proc.fieldByName('ORIGEM').IsNull) then
      dm.origemProdutoCfop := StrToInt(cds_proc.fieldByName('ORIGEM').asString);

    fVendas.cds_mov_detCFOP.asString := dm.pesquisaCfopAUsar(cds_procCODPRODUTO.AsInteger,
      fVendas.ufClienteVenda, fVendas.codFiscalClienteVenda,
      dm.origemProdutoCfop,
      cds_procNCM.AsString, 'Saida');
    if (fVendas.cds_mov_detCFOP.asString = '') then
    begin
      fVendas.buscaCfop(fVendas.cds_MovimentoCODCLIENTE.AsInteger);
      fVendas.cds_mov_detCFOP.asString := fVendas.edCfop.text;
    end;  
    fVendas.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fVendas.cds_Mov_detCODPRO.AsString      := cds_procCODPRO.AsString;
    fVendas.cds_Mov_detDESCPRODUTO.AsString    := cds_procPRODUTO.AsString;
    fVendas.cds_Mov_detQUANTIDADE.AsFloat   := StrToFloat(Edit3.Text);
    if(fVendas.imex = 99) then
      fVendas.cds_Mov_detPRECO.AsFloat := (cds_procPRECO_COMPRA.AsFloat * 1.2)
    else
    fVendas.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);

    fVendas.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fVendas.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    if (dm.moduloUsado = 'CITRUS') then
    begin
      fVendas.qtde := cds_procPESO_QTDE.AsFloat;
      if (fVendas.cds_Mov_detQTDE_ALT.AsFloat = 0) then
        fVendas.cds_Mov_detQTDE_ALT.AsFloat := fVendas.cds_Mov_detQUANTIDADE.AsFloat * fVendas.qtde;
      fVendas.cds_Mov_detICMS.AsFloat := cds_procICMS.AsFloat;
    end;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fVendas.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fVendas.estoque := cds_procESTOQUEATUAL.AsFloat;
    fVendas.cds_Mov_detOBS.AsString := cds_procObs.asString;
    fVendas.cds_Mov_det.Post;
end;

procedure TfProcura_prod.formitens;
begin
    fnotafiscal.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    //fnotafiscal.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fnotafiscal.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    fnotafiscal.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fnotafiscal.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fnotafiscal.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fnotafiscal.cds_Mov_detVALTOTAL.Value:= fnotafiscal.cds_Mov_detPRECO.Value *
       fnotafiscal.cds_Mov_detQUANTIDADE.Value;
    fnotafiscal.cds_Mov_det.Post;
end;

procedure TfProcura_prod.formterminal;
begin

end;

procedure TfProcura_prod.formterminaldelivery;
var strSql : string;
   unitario, qtd : double;
begin
   if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
   dm.cds_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
   dm.cds_parametro.Open;

   if (not dm.cds_parametro.IsEmpty) then
      if (cds_procESTOQUEATUAL.Value <= 0) then
      begin
        saldo_negativo := 'TRUE';
        ShowMessage('Produto com saldo negativo !');
        dm.cds_parametro.Close;
        Exit;
      end;
   dm.cds_parametro.Close;

   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;

   if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabVenda) then
     if (DM_MOV.c_movimento.State in [dsInactive]) then
       incluimovimento;     // Tabela Movimento
   if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabComanda) then
     if (DM_MOV.c_comanda.State in [dsInactive]) then
       incluimovimento;     // Tabela Movimento
   if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabDelivery) then
     if (DM_MOV.c_Delivery.State in [dsInactive]) then
       incluimovimento;     // Tabela Movimento

   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;

   strSql := 'INSERT INTO MOVIMENTODETALHE (CODDETALHE, STATUS, CODALMOXARIFADO, CODMOVIMENTO';
   strSql := strSql + ',CODPRODUTO ,DESCPRODUTO ,QUANTIDADE ,PRECO, UN, PRECOCUSTO) VALUES (';
   strSql := strSql + IntToStr(dm.c_6_genid.Fields[0].AsInteger) + ', ';
   dm.c_6_genid.Close;

   strSql := strSql + '0' + ', '; //0=Ativo, 1=Cancelado, 2=Excluido
   strSql := strSql + IntToStr(cds_procCODALMOXARIFADO.AsInteger) + ', ';


     strSql := strSql + IntToStr(DM_MOV.ID_DO_MOVIMENTO) + ', ';

   strSql := strSql + IntToStr(cds_procCODPRODUTO.AsInteger) + ', ';
   strSql := strSql + QuotedStr(cds_procPRODUTO.Value) + ', ';
   DecimalSeparator := ',';
   qtd := StrToFloat(Edit3.Text);
   unitario := StrToFloat(Edit4.Text);
   DecimalSeparator := '.';
   strSql := strSql + FloatToStr(qtd) + ', '; // Quantidade
   strSql := strSql + FloatToStr(unitario) + ', '; // Valor Unitario
   strSql := strSql + QuotedStr(cds_procUNIDADEMEDIDA.AsString) + ', ';  // UN
   strSql := strSql + FloatToStr(cds_procPRECOMEDIO.AsFloat) + ')';  // Preço
   valorUnitario := cds_procPRECO_VENDA.AsFloat;
   DecimalSeparator := ',';

    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, o item não foi gravado.', mtError,
           [mbOk], 0);
    end;

end;

procedure TfProcura_prod.formcadproduto;
begin

end;

procedure TfProcura_prod.formentrasai;
begin
    fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    if not( ((Edit4.Text) = '') or ((Edit4.Text) = '0'))  then
      fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text)
    else
    begin
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].AsInteger := 0;
      dm.scds_produto_proc.Params[1].AsString := cds_procCODPRO.AsString;
      dm.scds_produto_proc.Open;
      fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
    end;
    fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fEntra_Sai_estoque.cds_Mov_detValorTotal.Value := fEntra_Sai_estoque.cds_Mov_detPRECO.Value *
       fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.Value;
    fEntra_Sai_estoque.cds_Mov_det.Post;

end;

procedure TfProcura_prod.formestoque;
begin
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        fLotes.btnProdutoProcura.Enabled := False;
        var_F := 'procura_estoque';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'estoque';
      if estoq1 < StrToInt(Edit3.Text) then
      begin
        MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
    fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fEntra_Sai_estoque.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fEntra_Sai_estoque.cds_Mov_det.Post;

end;

procedure TfProcura_prod.formcadfornecedor;
begin
    if (fProdFornecedor.cds.State in [dsBrowse]) then
       fProdFornecedor.btnIncluir.Click;
    fProdFornecedor.cdsCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fProdFornecedor.cdsCODIGO.AsString := cds_procCODPRO.AsString;
    fProdFornecedor.cdsPRODUTO.Value := cds_procPRODUTO.Value;
    fProdFornecedor.cdsPRECOLISTA.AsFloat := StrToFloat(Edit4.Text);
    fProdFornecedor.cdsUNIDADE.AsString := cds_procUNIDADEMEDIDA.AsString;
    fProdFornecedor.cdsCODFORNECEDOR.AsInteger := fProdFornecedor.codFornecedor;
    fProdFornecedor.cds.ApplyUpdates(0);
end;

procedure TfProcura_prod.formnotaf;
begin
    dmnf.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    dmnf.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    dmnf.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    dmnf.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    dmnf.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    dmnf.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    dmnf.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    DMNF.estoque := cds_procESTOQUEATUAL.AsFloat;
    dmnf.cds_Mov_det.Post;
end;

procedure TfProcura_prod.formnfCompra;
begin
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        if fLotes.cdslotes.IsEmpty then
        begin
          fLotes.cdslotes.Append;
          fLotes.cdslotesCODPRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
          fLotes.cdslotesCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
          fLotes.cdslotesPRODUTO.Value := fProcura_prod.cds_procPRODUTO.Value;
          //fLotes.cdslotesDATAFABRICACAO.AsDateTime := dmnf.cdsCompraDATACOMPRA.AsDateTime;
          //fLotes.cdslotesDATAVENCIMENTO.AsDateTime := dmnf.cdsCompraDATACOMPRA.AsDateTime;
          fLotes.cdslotesLOTE.AsString := dmnf.cds_MovimentoCONTROLE.AsString;
          fLotes.btnGravar.Click;

        end;
        fLotes.btnProdutoProcura.Enabled := False;
        var_F := 'procura';
        //fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'formnfCompra';
    end;
    dmnf.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    dmnf.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    dmnf.cds_Mov_detLOTE.AsString := DMNF.cds_MovimentoCONTROLE.AsString;
    dmnf.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    dmnf.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    dmnf.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    dmnf.cds_Mov_detVLR_BASE.AsFloat := StrToFloat(Edit4.Text);
    dmnf.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    dmnf.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    DMNF.estoque := cds_procESTOQUEATUAL.AsFloat;
    dmnf.cds_Mov_det.Post;
end;

procedure TfProcura_prod.EvDBFind1Change(Sender: TObject);
begin
   exibePrecoProcProd;
   if (var_F = 'Lista') then
   begin
     if (fCompra.cdslista.Active) then
       fCompra.cdslista.Close;
     fCompra.cdslista.Params[0].AsInteger := fCompra.cds_MovimentoCODFORNECEDOR.AsInteger;
     fCompra.cdslista.Params[1].AsString := cds_procCODPRO.AsString;
     fCompra.cdslista.Open;
     if (not fCompra.cdslista.IsEmpty) then
     begin
       fCompra.cds_Mov_detCODPRODUTO.AsInteger := fCompra.cdslistaCODPRODUTO.AsInteger;
       fCompra.cds_Mov_detCODPRO.AsString := fCompra.cdslistaCODIGO.AsString;
       fCompra.cds_Mov_detDESCPRODUTO.Value := fCompra.cdslistaPRODUTO.Value;
       fCompra.cds_Mov_detUN.AsString := fCompra.cdslistaUNIDADE.AsString;
       fCompra.cds_Mov_detPRECO.AsFloat := fCompra.cdslistaPRECOLISTA.AsFloat;
       Edit4.Text := Format('%-6.2n',[fCompra.cdsListaPRECOLISTA.value]);
     end;
   end;
end;


procedure TfProcura_prod.precolista2;
begin
   if (fVendas.cdslista.Active) then
     fVendas.cdslista.Close;
   fVendas.cdslista.Params[0].AsInteger := fVendas.cds_MovimentoCODCLIENTE.AsInteger;
   fVendas.cdslista.Params[1].AsString := cds_procCODPRO.AsString;
   fVendas.cdslista.Open;

    if (fVendas.estoque_negativo = 'TRUE') then // não permito venda com saldo negativo
    if (cds_procESTOQUEATUAL.Value <= 0) then
    begin
       ShowMessage('Produto com saldo negativo !');
       saldo_negativo := 'True';
       //dbeProduto.Clear;
       //dm.scds_produto_proc.Close;
       Exit;
    end
    else
        saldo_negativo := 'FALSE';

   if (not fVendas.cdslista.IsEmpty) then
   begin
     fVendas.cds_Mov_detCODPRODUTO.AsInteger := fVendas.cdslistaCODPRODUTO.AsInteger;
     fVendas.cds_Mov_detCODPRO.AsString := fVendas.cdslistaCODIGO.AsString;
     fVendas.cds_Mov_detDESCPRODUTO.Value := fVendas.cdslistaPRODUTO.Value;
     fVendas.cds_Mov_detUN.AsString := fVendas.cdslistaUNIDADE.AsString;
     fVendas.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.text);
     fVendas.cds_Mov_detPRECO.AsFloat := fVendas.cdslistaPRECOLISTA.AsFloat; //StrToFloat(Edit4.text);
     Edit4.text := FloatToStr(fVendas.cdslistaPRECOLISTA.asFloat);
     fVendas.cds_Mov_det.Post;
   end
   else
   begin
     if (Panel2.Visible = True) then
     begin
       if Edit4.Text = '' then
        Edit4.Text := '0';
       if Edit3.Text = '' then
       begin
         Edit3.Text := '1';
         if (var_F = 'venda') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
         if (var_F = 'compra') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
       end;
     end;
     fVendas.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
     fVendas.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
     fVendas.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
     if (edit3.Text > '0') then
       fVendas.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
     if (edit4.Text > '0') then
       fVendas.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
     fVendas.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
     valorUnitario := cds_procPRECO_VENDA.AsFloat;
     fVendas.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
     fVendas.cds_Mov_det.Post;
   end;
end;


procedure TfProcura_prod.BitBtn6Click(Sender: TObject);
begin
 if Panel2.Visible = True then
   if BitBtn4.Enabled = true then
   begin
      if Edit4.Text = '' then
        Edit4.Text := '0';
      if Edit3.Text = '' then
      begin
         Edit3.Text := '1';
         if (var_F = 'venda') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
         if (var_F = 'compra') then
           Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
      end;
      margemItemProcuraProd := 0;
      if (cds_procPRECO_VENDA.AsFloat > 0) then
      begin
        margemItemProcuraProd := cds_procPRECOMEDIO.AsFloat/cds_procPRECO_VENDA.AsFloat;
      end;

      if (var_F = 'venda') then
      begin
        if (fVendas.usaprecolistavenda = 'S') then
        begin
          if (fVendas.cds_Mov_det.State in [dsInsert, dsEdit]) then
          begin
            precolista2;
            fVendas.cds_Mov_det.Edit;
          end;
        end
        else
        begin
          if (fVendas.estoque_negativo = 'TRUE') then // não permito venda com saldo negativo
          if (cds_procESTOQUEATUAL.Value <= 0) then
          begin
             ShowMessage('Produto com saldo negativo !');
             saldo_negativo := 'True';
             //dbeProduto.Clear;
             //dm.scds_produto_proc.Close;
             Exit;
          end
          else
            saldo_negativo := 'FALSE';

          fVendas.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
          fVendas.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
          fVendas.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
          fVendas.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
          fVendas.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
          fVendas.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
          vlrUnitCusto := cds_procPRECOMEDIO.AsFloat;
          fVendas.cds_Mov_detPRECO.AsFloat := Edit4.Value;
          fVendas.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
          valorUnitario := cds_procPRECO_VENDA.AsFloat;
          fVendas.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
        end;
      end;
      if (var_F = 'compra') then
      begin
        fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
        fCompra.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fCompra.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
        vlrUnitCusto := cds_procPRECOMEDIO.AsFloat;
        fCompra.cds_Mov_detPRECO.AsFloat := Edit4.Value;
        fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;
      if (var_F = 'formnotaf') then
      begin
        DMNF.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        DMNF.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        DMNF.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
        DMNF.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        DMNF.cds_Mov_detPRECO.AsFloat := Edit4.Value;
        DMNF.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;
      if (var_F = 'estoque') then
      begin
        fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        if not( ((Edit4.Text) = '') or ((Edit4.Text) = '0'))  then
          fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text)
        else
        begin
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := cds_procCODPRO.AsString;
          dm.scds_produto_proc.Open;
          fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
        end;
        fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        fEntra_Sai_estoque.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fEntra_Sai_estoque.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;

      if (var_F = 'MovEstoque') then
      begin
        fMovimenta_Estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fMovimenta_Estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fMovimenta_Estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fMovimenta_Estoque.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        if not( ((Edit4.Text) = '') or ((Edit4.Text) = '0'))  then
          fMovimenta_Estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text)
        else
        begin
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := cds_procCODPRO.AsString;
          dm.scds_produto_proc.Open;
          fMovimenta_Estoque.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
        end;
        fMovimenta_Estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        fMovimenta_Estoque.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
        valorUnitario := cds_procPRECO_COMPRA.AsFloat;
        fMovimenta_Estoque.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;


      if (var_F = 'cadfornecedor') then
      begin
        fProdFornecedor.cdsCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fProdFornecedor.cdsCODIGO.AsString := cds_procCODPRO.AsString;
        fProdFornecedor.cdsPRODUTO.Value := cds_procPRODUTO.Value;
        fProdFornecedor.cdsUNIDADE.AsString := cds_procUNIDADEMEDIDA.AsString;
        fProdFornecedor.cdsCODFORNECEDOR.AsInteger := fProdFornecedor.codFornecedor;
      end;
      if (var_F = 'terminalloja') then
      begin
  {      fTerminalLoja.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fTerminalLoja.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fTerminalLoja.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fTerminalLoja.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
        fTerminalLoja.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
        fTerminalLoja.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
        fTerminalLoja.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fTerminalLoja.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
 }
  {      fTerminal_Delivery.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fTerminal_Delivery.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fTerminal_Delivery.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fTerminal_Delivery.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
        fTerminal_Delivery.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
        fTerminal_Delivery.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fTerminal_Delivery.cds_Mov_detPRECO.AsFloat := Edit4.value;
        fTerminal_Delivery.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fTerminal_Delivery.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
          }
      end;

   end;
   Panel2.Visible := false;
   Panel1.Visible := true;
   Edit3.Text := '';
   Edit4.Text := '';
   BitBtn5.Enabled := false;
   BitBtn4.Enabled := true;
  if (var_F = 'filtroEstoque') then
  begin
    fecodProd := cds_procCODPRO.AsString;
    fecodProduto := cds_procCODPRODUTO.AsInteger;
    fenomeProduto := cds_procPRODUTO.Value;
  end;

  if (var_F = 'Lotes') then
  begin
    fLotes.cdslotesCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fLotes.cdslotesCODPRO.AsString := cds_procCODPRO.AsString;
    fLotes.cdslotesPRODUTO.Value := cds_procPRODUTO.Value;
    //fLotes.cdslotesDATAFABRICACAO.AsDateTime := Now;
  end;

  if (var_F = 'Lista') then
  begin
     fCompra.CODIGOPRODUTO := cds_procCODPRO.AsString;
     if (usouAdiciona = 'nao usou') then
     begin
       fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
       fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
       fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
       fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
       valorUnitario := cds_procPRECO_VENDA.AsFloat;
       fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
     end;
  end;
  close;
end;

procedure TfProcura_prod.CheckBox1Click(Sender: TObject);
begin
 if (CheckBox1.Checked = True) then
 begin
    if (Panel2.Visible = False) then
      Panel2.Visible := True;
  Panel1.Visible := False;
  RadioButton1.Checked := False;
  BitBtn1.Click;
  EvDBFind1.SetFocus;
 end
 else
 begin
     if (Panel1.Visible = False) then
      Panel1.Visible := True;
  Panel2.Visible := False;
  RadioButton2.Checked := False;
 end;
end;

procedure TfProcura_prod.DBGrid1DblClick(Sender: TObject);
begin
 BitBtn6.Click;
end;

procedure TfProcura_prod.formMovEstoque;
begin
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        fLotes.btnProdutoProcura.Enabled := False;
        var_F := 'procura_estoque';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'estoque';
      if estoq1 < StrToInt(Edit3.Text) then
      begin
        MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
        exit;
      end;
    end;
    fMovimenta_Estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fMovimenta_Estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fMovimenta_Estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fMovimenta_Estoque.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fMovimenta_Estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fMovimenta_Estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fMovimenta_Estoque.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fMovimenta_Estoque.cds_Mov_det.Post;

end;

procedure TfProcura_prod.incluimovimento;
var codcliente :integer;
    nomecliente, clienteConsumidor :string;
begin
  if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabVenda) then
  begin
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
      dm.cds_parametro.Open;
      if not dm.cds_parametro.IsEmpty then
        clienteConsumidor := dm.cds_parametroDADOS.AsString;
      dm.cds_parametro.Close;

      if (fTerminal2.b_cliente.Active) then
        fTerminal2.b_cliente.Close;
      fTerminal2.b_cliente.Params[0].AsInteger := StrToInt(clienteConsumidor);
      fTerminal2.b_cliente.Open;
      if (fTerminal2.b_cliente.IsEmpty) then
      begin
        ShowMessage('Cliente configurado nos parametros não consta no cadastro de clientes.');
        exit;
      end
      else
      begin
       codcliente := fTerminal2.b_clienteCODCLIENTE.AsInteger;
       nomecliente := fTerminal2.b_clienteNOMECLIENTE.AsString;
      end;

      DM_MOV.c_movimento.Open;
      DM_MOV.c_movimento.Append;

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM_MOV.c_movimentoCODMOVIMENTO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    DM_MOV.c_movimentoCODPEDIDO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    DM_MOV.c_movimentoCODNATUREZA.AsInteger := 3;
    DM_MOV.c_movimentoDATAMOVIMENTO.Value := Date;
    DM_MOV.c_movimentoDATA_SISTEMA.AsDateTime := Now;
    DM_MOV.c_movimentoSTATUS.Value := 20; //Venda em Aberto
    DM_MOV.c_movimentoCODUSUARIO.AsInteger := usulog;
    DM_MOV.c_movimentoNOMEUSUARIO.AsString := nome_user;
    DM_MOV.c_movimentoCODVENDEDOR.Value:=1;
    DM_MOV.c_movimentoCODCLIENTE.AsInteger := codcliente;
    DM_MOV.c_movimentoNOMECLIENTE.AsString := nomecliente;
    DM_MOV.c_movimentoCODALMOXARIFADO.AsInteger := 1;
    DM_MOV.c_DeliveryTIPO_PEDIDO.AsString := 'P';
    DM_MOV.c_movimento.ApplyUpdates(0);
  end;
  if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabComanda) then
  begin
    DM_MOV.c_comanda.Open;
    DM_MOV.c_comanda.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM_MOV.c_comandaCODMOVIMENTO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    DM_MOV.c_comandaCODPEDIDO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    DM_MOV.c_comandaCODNATUREZA.AsInteger := 3;
    DM_MOV.c_comandaDATAMOVIMENTO.Value := Date;
    DM_MOV.c_comandaDATA_SISTEMA.AsDateTime := Now;
    DM_MOV.c_comandaSTATUS.Value := 20; //Venda em Aberto
    DM_MOV.c_comandaCODUSUARIO.AsInteger := usulog;
    DM_MOV.c_comandaCODVENDEDOR.Value:=1;
    DM_MOV.c_comandaCODCLIENTE.AsInteger := codcliente;
    DM_MOV.c_comandaNOMECLIENTE.AsString := DM_MOV.s_BuscaComandaNOMECLIENTE.AsString;
    DM_MOV.c_comandaCODALMOXARIFADO.AsInteger := 1;
    DM_MOV.c_DeliveryTIPO_PEDIDO.AsString := 'C';
    DM_MOV.c_comanda.ApplyUpdates(0);
  end;

  if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabDelivery) then
  begin
    DM_MOV.c_Delivery.Open;
    DM_MOV.c_Delivery.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM_MOV.c_DeliveryCODMOVIMENTO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    DM_MOV.c_DeliveryCODPEDIDO.asInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    DM_MOV.c_DeliveryCODNATUREZA.AsInteger := 3;
    DM_MOV.c_DeliveryDATAMOVIMENTO.Value := Date;
    DM_MOV.c_DeliveryDATA_SISTEMA.AsDateTime := Now;
    DM_MOV.c_DeliverySTATUS.Value := 20; //Venda em Aberto
    DM_MOV.c_DeliveryCODUSUARIO.AsInteger := usulog;
    DM_MOV.c_DeliveryCODVENDEDOR.Value:=1;
    DM_MOV.c_DeliveryCODCLIENTE.AsInteger := codcliente;
    DM_MOV.c_DeliveryNOMECLIENTE.AsString := DM_MOV.s_BuscaComandaNOMECLIENTE.AsString;
    DM_MOV.c_DeliveryCODALMOXARIFADO.AsInteger := 1;
    DM_MOV.c_DeliveryTIPO_PEDIDO.AsString := 'D';
    DM_MOV.c_Delivery.ApplyUpdates(0);
  end;
end;

procedure TfProcura_prod.formCupom;
var strSql : string;
   unitario, qtd : double;
begin
   if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
   dm.cds_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
   dm.cds_parametro.Open;

   if (not dm.cds_parametro.IsEmpty) then
   begin
      if (cds_procESTOQUEATUAL.Value <= 0) then
      begin
        saldo_negativo := 'TRUE';
        ShowMessage('Produto com saldo negativo !');
        dm.cds_parametro.Close;
        Exit;
      end;
   end;
   dm.cds_parametro.Close;



    {dmnf.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger :=
    DMNF.estoque := cds_procESTOQUEATUAL.AsFloat;}

    fTerminal_Delivery.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fTerminal_Delivery.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fTerminal_Delivery.cds_Mov_detCOD_BARRA.AsString := cds_procCOD_BARRA.AsString;
    fTerminal_Delivery.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fTerminal_Delivery.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    fTerminal_Delivery.cds_Mov_detCOD_COMISSAO.AsInteger := 0;
    fTerminal_Delivery.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fTerminal_Delivery.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fTerminal_Delivery.cds_Mov_detQTDE_ALT.AsFloat := 0;
    fTerminal_Delivery.cds_Mov_detVALTOTAL.AsFloat := StrToFloat(Edit4.Text) * StrToFloat(Edit3.Text);
    fTerminal_Delivery.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fTerminal_Delivery.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fTerminal_Delivery.cds_Mov_detQTDE_PCT.AsFloat := cds_procQTDE_PCT.AsFloat;
    fTerminal_Delivery.cds_Mov_detLOCALIZACAO.AsString := cds_procLOCALIZACAO.AsString;
    fTerminal_Delivery.cds_Mov_detESTOQUEATUAL.AsFloat := cds_procESTOQUEATUAL.AsFloat;
    fTerminal_Delivery.cds_Mov_det.Post;

    fTerminal_Delivery.dbeProduto.Text := '';
    fTerminal_Delivery.dbeProduto.SetFocus;

   {TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;

   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;

   strSql := 'INSERT INTO MOVIMENTODETALHE (CODDETALHE, STATUS, CODALMOXARIFADO, CODMOVIMENTO';
   strSql := strSql + ',CODPRODUTO ,DESCPRODUTO ,QUANTIDADE ,PRECO, UN, PRECOCUSTO) VALUES (';
   strSql := strSql + IntToStr(dm.c_6_genid.Fields[0].AsInteger) + ', ';
   dm.c_6_genid.Close;

   strSql := strSql + '0' + ', '; //0=Ativo, 1=Cancelado, 2=Excluido
   strSql := strSql + IntToStr(cds_procCODALMOXARIFADO.AsInteger) + ', ';

   strSql := strSql + IntToStr(DM_MOV.ID_DO_MOVIMENTO) + ', ';

   strSql := strSql + IntToStr(cds_procCODPRODUTO.AsInteger) + ', ';
   strSql := strSql + QuotedStr(cds_procPRODUTO.Value) + ', ';
   DecimalSeparator := ',';
   qtd := StrToFloat(Edit3.Text);
   unitario := StrToFloat(Edit4.Text);
   DecimalSeparator := '.';
   strSql := strSql + FloatToStr(qtd) + ', '; // Quantidade
   strSql := strSql + FloatToStr(unitario) + ', '; // Valor Unitario
   strSql := strSql + QuotedStr(cds_procUNIDADEMEDIDA.AsString) + ', ';  // UN
   strSql := strSql + FloatToStr(cds_procPRECOMEDIO.AsFloat) + ')';  // Preço
   valorUnitario := cds_procPRECO_VENDA.AsFloat;
   DecimalSeparator := ',';

    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
       MessageDlg('Erro no sistema, o item não foi gravado.', mtError,
           [mbOk], 0);
    end;}
end;

procedure TfProcura_prod.cds_procAfterScroll(DataSet: TDataSet);
begin
 if (exibirCamposCondicao = 'S') then
 begin
   edCondicao1.Value := dm.Arredondar((cds_procPRECO_VENDA.AsFloat * condicao1), condicaoArredondar);
   edCondicao2.Value := dm.Arredondar((cds_procPRECO_VENDA.AsFloat * condicao2), condicaoArredondar);
   edCondicao3.Value := dm.Arredondar((cds_procPRECO_VENDA.AsFloat * condicao3), condicaoArredondar);
 end;
end;

procedure TfProcura_prod.formof;
begin
  fOf.codProd := cds_procCODPRODUTO.AsInteger;
  fOf.OfProd.Text := cds_procCODPRO.AsString;
  fOf.OfDesc.Text := cds_procPRODUTO.Value;
  fOf.OfQtde.Value := StrToFloat(Edit3.Text);
end;

procedure TfProcura_prod.edDescontoMargemExit(Sender: TObject);
begin
  calculaDescMargem;
end;

procedure TfProcura_prod.edDescontoMargemKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   calculaDescMargem;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfProcura_prod.calculaDescMargem;
var vlrUnit, MgemDesc: double;
begin
  if (edDescontoMargem.Value <> 0) then
  begin
    vlrUnit := vlrUnitCusto;
    if (edDescontoMargem.Value > 0) then
    begin
      MgemDesc := (1-(edDescontoMargem.Value/100));
      valorUnitario := vlrUnitVenda * MgemDesc
    end;
    if (edDescontoMargem.Value < 0) then
    begin
      MgemDesc := (1+((edDescontoMargem.Value*(-1))/100));
      valorUnitario := vlrUnit * MgemDesc;
    end;
    if (var_F = 'compra') then
    begin
      fCompra.cds_Mov_detPRECO.AsFloat := valorUnitario;
      valorUnitario := valorUnitario;
      edit4.Value := valorUnitario;
    end;
    if (var_F = 'venda') then
    begin
      fVendas.cds_Mov_detPRECO.AsFloat := valorUnitario;
      edit4.Value := valorUnitario;
    end;
    if (var_F = 'terminalloja') then
    begin
      edit4.Value := valorUnitario;
    end;
    Edit2.Value := Edit4.Value * Edit3.value;
  end;
end;

procedure TfProcura_prod.exibePrecoProcProd;
begin
  edDescontoMargem.Value := 0;
  vlrUnitVenda := cds_procPRECO_VENDA.value;
  Edit3.Text := '1';
  if (Edit4.Text = '') then
    Edit4.Text := '0';
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
  if ((var_F = 'compra') or (var_F = 'MovEstoque')) then
  begin
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
    vlrUnitVenda := cds_procPRECO_COMPRA.value;
  end;
  vlrUnitCusto := cds_procPRECOMEDIO.AsFloat;
end;

end.
