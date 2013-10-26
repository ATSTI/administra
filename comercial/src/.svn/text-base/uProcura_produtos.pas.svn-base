unit uProcura_produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBCtrls, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  Menus, DB, DBClient, Provider, SqlExpr, XPMenu, MMJPanel, EDBFind,
  rpcompobase, rpvclreport, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvEdit, JvValidateEdit, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvBaseDlg, JvProgressDialog, JvExDBGrids, JvDBGrid,
  JvComponent, JvDBGridExport, JvCsvData, Math;

type
  TfProcura_produtos = class(TForm)
    sds_proc: TSQLDataSet;
    dsp_proc: TDataSetProvider;
    cds_proc: TClientDataSet;
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
    Label14: TLabel;
    Edit5: TEdit;
    rgEmUso: TCheckBox;
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
    Edit4: TJvCalcEdit;
    Edit2: TJvCalcEdit;
    Edit3: TJvCalcEdit;
    BitBtn3: TBitBtn;
    Label9: TLabel;
    Label23: TLabel;
    cbLocal: TJvComboBox;
    panRelatorio: TPanel;
    JvProgressDialog1: TJvProgressDialog;
    SaveDialog1: TSaveDialog;
    Exportar1: TMenuItem;
    DBGrid1: TJvDBGrid;
    Importar1: TMenuItem;
    sds_procCODPRODUTO: TIntegerField;
    sds_procCODPRO: TStringField;
    sds_procPRODUTO: TStringField;
    sds_procUNIDADEMEDIDA: TStringField;
    sds_procQTDE_PCT: TFloatField;
    sds_procICMS: TFloatField;
    sds_procCODALMOXARIFADO: TIntegerField;
    sds_procPRECO_COMPRA: TFloatField;
    sds_procVALOR_PRAZO: TFloatField;
    sds_procTIPO: TStringField;
    sds_procESTOQUEATUAL: TFloatField;
    sds_procLOCALIZACAO: TStringField;
    sds_procPRECO_VENDA: TFloatField;
    sds_procLOTES: TStringField;
    sds_procPRECOMEDIO: TFloatField;
    sds_procPESO_QTDE: TFloatField;
    sds_procCOD_COMISSAO: TIntegerField;
    sds_procRATEIO: TStringField;
    sds_procCONTA_DESPESA: TStringField;
    sds_procIPI: TFloatField;
    sds_procNCM: TStringField;
    sds_procORIGEM: TStringField;
    sds_procESTOQUEMAXIMO: TFloatField;
    sds_procESTOQUEREPOSICAO: TFloatField;
    sds_procESTOQUEMINIMO: TFloatField;
    sds_procPRECOMEDIO_1: TBCDField;
    sds_procMARGEM_LUCRO: TFloatField;
    sds_procDATACADASTRO: TSQLTimeStampField;
    sds_procPRO_COD: TStringField;
    sds_procDATAGRAV: TDateField;
    sds_procTIPOPRECOVENDA: TStringField;
    sds_procVALORMINIMO: TFloatField;
    cds_procCODPRODUTO: TIntegerField;
    cds_procCODPRO: TStringField;
    cds_procPRODUTO: TStringField;
    cds_procUNIDADEMEDIDA: TStringField;
    cds_procQTDE_PCT: TFloatField;
    cds_procICMS: TFloatField;
    cds_procCODALMOXARIFADO: TIntegerField;
    cds_procPRECO_COMPRA: TFloatField;
    cds_procVALOR_PRAZO: TFloatField;
    cds_procTIPO: TStringField;
    cds_procESTOQUEATUAL: TFloatField;
    cds_procLOCALIZACAO: TStringField;
    cds_procPRECO_VENDA: TFloatField;
    cds_procLOTES: TStringField;
    cds_procPRECOMEDIO: TFloatField;
    cds_procPESO_QTDE: TFloatField;
    cds_procCOD_COMISSAO: TIntegerField;
    cds_procRATEIO: TStringField;
    cds_procCONTA_DESPESA: TStringField;
    cds_procIPI: TFloatField;
    cds_procNCM: TStringField;
    cds_procORIGEM: TStringField;
    cds_procESTOQUEMAXIMO: TFloatField;
    cds_procESTOQUEREPOSICAO: TFloatField;
    cds_procESTOQUEMINIMO: TFloatField;
    cds_procPRECOMEDIO_1: TBCDField;
    cds_procMARGEM_LUCRO: TFloatField;
    cds_procDATACADASTRO: TSQLTimeStampField;
    cds_procPRO_COD: TStringField;
    cds_procDATAGRAV: TDateField;
    cds_procTIPOPRECOVENDA: TStringField;
    cds_procVALORMINIMO: TFloatField;
    sds_procMARCA: TStringField;
    sds_procGRUPO: TStringField;
    sds_procSUBGRUPO: TStringField;
    cds_procMARCA: TStringField;
    cds_procGRUPO: TStringField;
    cds_procSUBGRUPO: TStringField;
    rgNCM: TCheckBox;
    cbTipo: TComboBox;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    lblCondicao1: TLabel;
    lblCondicao2: TLabel;
    lblCondicao3: TLabel;
    edCondicao2: TJvCalcEdit;
    edCondicao3: TJvCalcEdit;
    edCondicao1: TJvCalcEdit;
    cbAplicacao: TComboBox;
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
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure Importar1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure cds_procAfterScroll(DataSet: TDataSet);
  private
    varCondicaoEstoque : String;
    resultado: String;
    exibirCamposCondicao: String;
    condicao1: Double;
    condicao2: Double;
    condicao3: Double;
    condicaoArredondar: Integer;
    { Private declarations }
    Data: TJvCsvDataSet;
    procedure precolista1;
    procedure formcompra;
    procedure formvenda;
    procedure formnf;
    procedure formterminal;
    procedure formitens;
    procedure formterminaldelivery;
    procedure formestoque;
    procedure formentrasai;
    procedure formcadfornecedor;
    procedure formcadproduto;
    procedure formnotaf;
    procedure formnfCompra;
    procedure DoExportProgress(Sender: TObject; Min, Max, Position: Cardinal; const AText: string;
      var AContinue: Boolean);
    procedure SetupData;
    procedure SaveDoc(AExportClass: TJvCustomDBGridExportClass; const Filename: string);

  public
    { Public declarations }
    fecodProd, fenomeProduto, usouAdiciona : string;
    fecodProduto: integer;
  end;

var
  fProcura_produtos: TfProcura_produtos;
  codprodxa: Integer;
  varonde, var_F, imp, PRODUTO_DESC: string;
  varSql1, varSql2, varCondicao : string;

implementation

uses
  ShellAPI, ShlObj, CommDlg, Dlgs, JvTypes, JvJVCLUtils, JvJCLUtils,
  UDm, uProdutoCadastro, uCompra, uVendas, uNotafiscal, uITENS_NF,
  uEntra_Sai_estoque, uLotes, uLotesCadastro,
  ufDlgLogin, uProdFornecedor, uTerminalLoja, uProduto_Mat_prima,
  sCtrlResize, uTerminal_Delivery, UDMNF, uNF, uClassificacaoFiscalProduto,
  uImport,
  uPesquisa;

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

procedure TfProcura_produtos.Incluir1Click(Sender: TObject);
begin
// fProcura_prod.Close;
end;

procedure TfProcura_produtos.Procurar1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TfProcura_produtos.Limpar1Click(Sender: TObject);
begin
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  cbMarca.Text := '';
  cbFamilia.Text := '';
  cbCategoria.Text := '';
  cds_proc.Close;
end;

procedure TfProcura_produtos.FormClose(Sender: TObject;
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
 BitBtn2.Click;
 if Panel3.Visible = True then
   Panel3.Visible := False;
 if ((varonde <> 'compra') and (varonde <> 'itens') and (varonde <> 'venda')
     and (varonde <> 'EntraSai') and (varonde <> 'mat_prima')) then
 begin
   //cds_proc.Close;
 end;
 varonde := '';

 Close;
end;

procedure TfProcura_produtos.FormCreate(Sender: TObject);
var contaEstoqueLocal: String ;
begin
  sCtrlResize.CtrlResize(TForm(fProcura_produtos));
  fPesquisa := TfPesquisa.Create(Application);

  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  contaEstoqueLocal := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if (dm.cds_ccusto.Active) then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := contaEstoqueLocal;
  dm.cds_ccusto.Open;
  // populo a combobox
  dm.cds_ccusto.First;
  while not dm.cds_ccusto.Eof do
  begin
    cbLocal.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;

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

procedure TfProcura_produtos.FormShow(Sender: TObject);
begin
  varCondicaoEstoque := '';
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
  Panel1.Visible := False;
  Panel2.Visible := True;
  RadioButton2.Checked := True;
  {cbMarca.Text := '';
  panel2.TabOrder := 0;
  EvDBFind1.SetFocus;   }

  if var_F = 'venda' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
  if var_F = 'compra' then
    Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
  cbMarca.Text := '';

  if (Panel2.Visible = True) then
    EvDBFind1.SetFocus;
  //bitBtn1.Click;
end;

procedure TfProcura_produtos.btnIncluirClick(Sender: TObject);
var codpro : String;
begin
  codpro := cds_procCODPRO.AsString;
  fProdutoCadastro:=TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.btnProcurar.Visible := False;
    if (dm.cds_produto.Active) then
      dm.cds_produto.close;
    dm.cds_produto.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
    dm.cds_produto.Open;
    if (dm.cds_produtoTIPO.AsString = 'SERV') then
      fProdutoCadastro.cbTipo.ItemIndex := 3
    else if (dm.cds_produtoTIPO.AsString = 'COMPRA') then
      fProdutoCadastro.cbTipo.ItemIndex := 1
    else if (dm.cds_produtoTIPO.AsString = 'VENDA') then
      fProdutoCadastro.cbTipo.ItemIndex := 2
    else if (dm.cds_produtoTIPO.AsString = 'LOCA') then
      fProdutoCadastro.cbTipo.ItemIndex := 4
    else
      fProdutoCadastro.cbTipo.ItemIndex := 0;
    if (dm.cds_produtoMARCA.AsString <> '') then
      fProdutoCadastro.dbMarca.Text := dm.cds_produtoMARCA.AsString;

    fProdutoCadastro.cbAplicacao.ItemIndex := -1;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '00 - MERCADORIA PARA REVENDA') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 0;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '01 - MATÉRIA-PRIMA') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 1;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '02 - EMBALAGEM') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 2;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '03 - PRODUTO EM PROCESSO') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 3;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '04 - PRODUTO ACABADO') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 4;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '05 - SUBPRODUTO') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 5;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '06 - PRODUTO INTERMEDIÁRIO') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 6;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '07 - MATERIAL DE USO E CONSUMO') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 7;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '08 - ATIVO IMOBILIZADO') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 8;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '09 - SERVIÇOS') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 9;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '10 - OUTROS INSUMOS') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 10;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '99 - OUTRAS') then
      fProdutoCadastro.cbAplicacao.ItemIndex := 11;

    fProdutoCadastro.cbLocal.ItemIndex := -1;
    if (dm.cds_ccusto.Locate('CODIGO', dm.cds_produtoCODALMOXARIFADO.AsInteger, [loCaseInsensitive])) then
      fProdutoCadastro.cbLocal.ItemIndex := dm.cds_ccusto.RecNo-1;

    fProdutoCadastro.ShowModal;
    EvDBFind1.Text := PRODUTO_DESC;//dm.cds_produtoPRODUTO.asString;
  finally
    fProdutoCadastro.btnProcurar.Visible := True;
    fProdutoCadastro.Free;
  end;
  cds_proc.Locate('CODPRO', codpro, [loCaseInsensitive]);
end;

procedure TfProcura_produtos.BitBtn1Click(Sender: TObject);
var varSql, varCondicao, varCondicaoA, varCondicaoA1, varSql1, varCond2, varSql2, varCondicao1, s, contaEstoque: string;
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
   'GRUPO, SUBGRUPO, MARCA, COD_COMISSAO, ' +
   'ESTOQUEATUAL, CODALMOXARIFADO, ICMS, TIPO, LOCALIZACAO, LOTES, RATEIO, conta_despesa, IPI,  ' +
   'SUBGRUPO as CATEGORIA, PRECO_VENDA as VALOR_PRAZO, PESO_QTDE, ' +
   'PRECO_COMPRAMEDIO as PRECOMEDIO, PEDIDO, NCM, ORIGEM, ' +
   'ESTOQUEMAXIMO, ESTOQUEREPOSICAO, ESTOQUEMINIMO, ' +
   'PRECOMEDIO , MARGEM_LUCRO , DATACADASTRO , PRO_COD, ' +
   'DATAGRAV, TIPOPRECOVENDA, VALORMINIMO ' +
   'from LISTAPRODUTO(0, ';
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

{  ***** Comentei pois nao e usado mais - Carlos 09/08/2006 ****}

  if edCodigo.Text <> '' then
    varCondicao := QuotedStr(edCodigo.Text)
  else
    varCondicao := QuotedStr('TODOSPRODUTOS');

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

  if (cbAplicacao.ItemIndex > -1) then
  begin
    varCondicao := varCondicao + ', ' + QuotedStr(cbAplicacao.Text);
  end
  else begin
    varCondicao :=  varCondicao + ', ' + QuotedStr('TODASAPLICACOES');
  end;

  if (cbLocal.ItemIndex > -1) then
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
  else begin
    varCondicao :=  varCondicao + ', 0';
  end;

  varCondicao := varCondicao + ') ';
  if ( cbTipo.Text <> '' ) then
  begin
    case cbTipo.ItemIndex of
      0: varCondicaoA := ' where ((TIPO = ' + QuotedStr('PROD') + ') OR (TIPO IS NULL) OR (TIPO = ' +
          QuotedStr('COMPRA') + ') OR (TIPO = ' + QuotedStr('VENDA') + '))';
      1: varCondicaoA := ' where ((TIPO = ' + QuotedStr('COMPRA') + ') OR (TIPO = ' + QuotedStr('PROD') + ') OR (TIPO IS NULL)) ';
      2: varCondicaoA := ' where ((TIPO = ' + QuotedStr('VENDA') + ') OR (TIPO = ' + QuotedStr('PROD') + ') OR (TIPO IS NULL)) ';
      3: varCondicaoA := ' where ((TIPO = ' + QuotedStr('SERV') + ')) ';
      4: varCondicaoA := ' where ((TIPO <> ' + QuotedStr('COMPRA') + ') OR (TIPO IS NULL)) ';
      5: varCondicaoA := ' where ((TIPO <> ' + QuotedStr('VENDA') + ') OR (TIPO IS NULL)) ';
    end;
  end;

  if edUso.Text <> '' then
  begin
    varCondicaoA := varCondicaoA + ' where USO like ' + '''' + edUso.Text + '%' + '''';
    varCondicaoA1 := ' where uso.DESCRICAO like ' + '''' + edUso.Text + '%' + '''';
  end;

  if edProduto.Text <> '' then
   if varCondicaoA <> '' then
     varCondicaoA := varCondicaoA + ' and UDF_COLLATEBR(PRODUTO) containing ' + '''' + edProduto.Text + ''''
   else
     varCondicaoA := 'where PRODUTO containing ' + '''' + edProduto.Text + '''';

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

  if (rgNCM.Checked = True) then
  begin
   if varCondicaoA <> '' then
     varCondicaoA := varCondicaoA + ' and NCM is not null '
   else
     varCondicaoA := 'where NCM is not null ';
  end;

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
   if (resultado <> '') then
     varCondicaoA := ' WHERE ' + resultado;
//***************************************************************************
  //REMOVIDO o "order by PRODUTO" para ordenar pelo campo que o cliente quiser
  varCondicao1 := varSql1 + varCondicaoA;
  varCond2 := varSql2 + varCondicaoA1;
  varCondicao := varSql + varCondicao + varCondicaoA + varCondicaoEstoque;

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

 { if cds_proc1.Active then
    cds_proc1.Close;
  cds_proc1.CommandText := varCondicao1;
  cds_proc1.Open;
  cds_proc1.CommandText := varSql1;
 }
  if cds_proc2.Active then
    cds_proc2.Close;
  cds_proc2.CommandText := varCond2;
  cds_proc2.Open;
  cds_proc2.CommandText := varSql2;

  //Ordena por padrão o grid por PRODUTO
  cds_proc.IndexFieldNames:= 'PRODUTO';
end;

procedure TfProcura_produtos.BitBtn2Click(Sender: TObject);
begin
  edUso.Clear;
  edCodigo.Clear;
  edProduto.Clear;
  edOutros.Clear;
  cbMarca.Text := '';
  cbFamilia.Text := '';
  cbCategoria.Text := '';
  cbCategoria.Items.Clear;
  cbAplicacao.ItemIndex := -1;
  cbLocal.ItemIndex     := -1; 
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

procedure TfProcura_produtos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
   bitBtn1.Click;
 end;
end;

procedure TfProcura_produtos.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfProcura_produtos.DBGrid1TitleClick(Column: TColumn);
begin
  cds_proc.IndexFieldNames:=Column.FieldName;
end;

procedure TfProcura_produtos.BitBtn4Click(Sender: TObject);
begin
  usouAdiciona := 'usou';
  if (var_F = 'compra') then
    formcompra;
  if (var_F = 'venda') then
     formvenda;
  if (var_F = 'itens') then
    formitens;
  if (var_F = 'EntraSai') then
    formentrasai;
  if (var_F = 'estoque') then
    formestoque;
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
  //vejo se usa preï¿½o pï¿½r Fornecedor
  if (var_F = 'Lista') then
  begin
    if (fCompra.usaprecolista = 'S') then
       precolista1;
  end;
  BitBtn4.Enabled := false;
  BitBtn5.Enabled := true;
  BitBtn5.SetFocus;
end;

procedure TfProcura_produtos.BitBtn5Click(Sender: TObject);
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

 Edit3.Text := '';
 Edit4.Text := '';
 Edit2.Text := ''; 
 BitBtn5.Enabled := false;
 BitBtn4.Enabled := true;
 EvDBFind1.SetFocus;

end;

procedure TfProcura_produtos.EvDBFind1Exit(Sender: TObject);
begin
   Edit3.Text := '1';
   if (Edit4.Text = '') then
     Edit4.Text := '0';
   Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
   if (var_F = 'compra') then
     Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
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

procedure TfProcura_produtos.DBGrid1CellClick(Column: TColumn);
var varCondicao, varSql1, varSql2: string;
begin
 // Cï¿½digos
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

 Edit3.Text := '1';
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_produtos.Edit3Exit(Sender: TObject);
var
    total :double;
begin
  inherited;
  if   var_F = 'venda' then
   if fVendas.cds_Mov_detLOTE.AsString <> '' then
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

procedure TfProcura_produtos.SpeedButton1Click(Sender: TObject);
begin
  if (panRelatorio.Visible = True) then
    panRelatorio.Visible := False
  else
    panRelatorio.Visible := True;
end;

procedure TfProcura_produtos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_produtos.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_produtos.SpeedButton2Click(Sender: TObject);
begin
  Panel3.Visible := true;
  // busca o produto da lista
  if (cdsLista.Active) then
      cdsLista.Close;
  cdsLista.Params[0].AsString := edCodigo.Text;
  cdsLista.Open;
end;

procedure TfProcura_produtos.BitBtn7Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

procedure TfProcura_produtos.BitBtn8Click(Sender: TObject);
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

procedure TfProcura_produtos.SpeedButton3Click(Sender: TObject);
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

procedure TfProcura_produtos.Edit2Exit(Sender: TObject);
var vlr: double;
begin
  if (Edit4.Value = 0) then
  begin
    vlr := Edit2.Value/Edit3.Value;
    Edit4.Value := vlr;
  end;
end;

procedure TfProcura_produtos.Edit4Exit(Sender: TObject);
var vlra, vlrb: double;
begin
  if (Edit4.Value > 0) then
  begin
    vlra := Edit4.Value * Edit3.value;
    Edit2.Value := vlra;
  end;

end;

procedure TfProcura_produtos.cbMarcaChange(Sender: TObject);
var sqlFam:string;
begin
//  if (cbMarca.Text = '') then
 //   exit;

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
  {if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
  DM.cds_categoria.Open;
   }
end;

procedure TfProcura_produtos.SpeedButton4Click(Sender: TObject);
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

procedure TfProcura_produtos.precolista1;
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

procedure TfProcura_produtos.cbFamiliaChange(Sender: TObject);
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

procedure TfProcura_produtos.RadioButton1Click(Sender: TObject);
begin
  if (Panel1.Visible = False) then
      Panel1.Visible := True;
  Panel2.Visible := False;
  RadioButton2.Checked := False;

end;

procedure TfProcura_produtos.RadioButton2Click(Sender: TObject);
begin
  if (Panel2.Visible = False) then
      Panel2.Visible := True;
  Panel1.Visible := False;
  RadioButton1.Checked := False;
  BitBtn1.Click;
end;

procedure TfProcura_produtos.BitBtn6Click(Sender: TObject);
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
      if (var_F = 'venda') then
      begin
        fVendas.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fVendas.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fVendas.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
        fVendas.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
        fVendas.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fVendas.cds_Mov_detPRECO.AsFloat := Edit4.Value;
        fVendas.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fVendas.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;
      if (var_F = 'compra') then
      begin
        fCompra.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fCompra.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fCompra.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
        fCompra.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fCompra.cds_Mov_detPRECO.AsFloat := Edit4.Value;
        fCompra.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
      end;
      if (var_F = 'estoque') then
      begin
        fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := Edit4.value;
        fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        fEntra_Sai_estoque.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fEntra_Sai_estoque.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
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
        fTerminal_Delivery.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
        fTerminal_Delivery.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
        fTerminal_Delivery.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
        fTerminal_Delivery.cds_Mov_detLOCALIZACAO.Value := cds_procLOCALIZACAO.Value;
        fTerminal_Delivery.cds_Mov_detQUANTIDADE.AsFloat := Edit3.Value;
        fTerminal_Delivery.cds_Mov_detPRECO.AsFloat := Edit4.value;
        fTerminal_Delivery.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
        valorUnitario := cds_procPRECO_VENDA.AsFloat;
        fTerminal_Delivery.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
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

procedure TfProcura_produtos.formcompra;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        if fLotes.cdslotes.IsEmpty then
        begin
          fLotes.cdslotes.Append;
          fLotes.cdslotesCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
          fLotes.cdslotesCODPRO.AsString := cds_procCODPRO.AsString;
          fLotes.cdslotesPRODUTO.Value := cds_procPRODUTO.Value;
          //fLotes.cdslotesDATAFABRICACAO.AsDateTime := Now;
        end;
        fLotes.btnProdutoProcura.Enabled := False;
        var_F := 'procura';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'compra';
    end;
    //---------------------------------
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

procedure TfProcura_produtos.formnf;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
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

    if cds_procLOTES.AsString = 'S' then
    if dm.estoq < StrToFloat(Edit3.Text) then
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

procedure TfProcura_produtos.formvenda;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
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
    if cds_procLOTES.AsString = 'S' then
    if dm.estoq < StrToFloat(Edit3.Text) then
    begin
      MessageDlg('Estoque insuficiente ..', mtWarning, [mbOK], 0);
      exit;
    end;
    fVendas.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fVendas.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fVendas.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
    fVendas.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fVendas.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fVendas.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fVendas.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fVendas.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    fVendas.estoque := cds_procESTOQUEATUAL.AsFloat;
    fVendas.cds_Mov_det.Post;
end;

procedure TfProcura_produtos.formitens;
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

procedure TfProcura_produtos.formterminal;
begin

end;

procedure TfProcura_produtos.formterminaldelivery;
begin
    if (fTerminal_Delivery.cds_Mov_det.State in [dsBrowse]) then
       fTerminal_Delivery.cds_Mov_det.Append;
    fTerminal_Delivery.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fTerminal_Delivery.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fTerminal_Delivery.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fTerminal_Delivery.cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;    
    fTerminal_Delivery.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fTerminal_Delivery.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fTerminal_Delivery.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fTerminal_Delivery.cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
    valorUnitario := cds_procPRECO_VENDA.AsFloat;
    fTerminal_Delivery.cds_Mov_detCODALMOXARIFADO.AsInteger := cds_procCODALMOXARIFADO.AsInteger;
    dmnf.estoque := cds_procESTOQUEATUAL.AsFloat;
    fTerminal_Delivery.cds_Mov_det.Post;
end;

procedure TfProcura_produtos.formcadproduto;
begin

end;

procedure TfProcura_produtos.formentrasai;
begin
    fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
    fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
    fEntra_Sai_estoque.cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
    fEntra_Sai_estoque.cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
    fEntra_Sai_estoque.cds_Mov_detValorTotal.Value := fEntra_Sai_estoque.cds_Mov_detPRECO.Value *
       fEntra_Sai_estoque.cds_Mov_detQUANTIDADE.Value;
    fEntra_Sai_estoque.cds_Mov_det.Post;

end;

procedure TfProcura_produtos.formestoque;
begin
    if cds_procLOTES.AsString = 'S' then
    begin
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        fLotes.btnProdutoProcura.Enabled := False;
        var_F := 'procura_estoque';
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
      var_F := 'estoque';
      if fEntra_Sai_estoque.estoq1 < StrToInt(Edit3.Text) then
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

procedure TfProcura_produtos.formcadfornecedor;
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

procedure TfProcura_produtos.formnotaf;
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

procedure TfProcura_produtos.formnfCompra;
begin
    dmnf.cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
    dmnf.cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
    dmnf.cds_Mov_detLOTE.AsString := DMNF.cds_MovimentoCONTROLE.AsString;
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

procedure TfProcura_produtos.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 {if (key = #13) then
 begin
   Edit3.Text := '1';
   if (Edit4.Text = '') then
     Edit4.Text := '0';
   Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
   if (var_F = 'compra') then
     Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
   Edit3.SetFocus;
 end;             }
end;

procedure TfProcura_produtos.BitBtn3Click(Sender: TObject);
begin
  if (not cds_procCODPRODUTO.IsNull) then
  begin
    fClassificacaoFiscalProduto := TfClassificacaoFiscalProduto.Create(Application);
    try
      fClassificacaoFiscalProduto.Label9.Caption := cds_procPRODUTO.AsString;
      fClassificacaoFiscalProduto.cfcodprod := cds_procCODPRODUTO.AsInteger;
      fClassificacaoFiscalProduto.cfcodproduto := cds_procCODPRO.AsString;
      fClassificacaoFiscalProduto.ShowModal;
    finally
      fClassificacaoFiscalProduto.Free;
    end;
  end;

end;

procedure TfProcura_produtos.DBGrid1DblClick(Sender: TObject);
begin
  btnIncluir.Click;
end;

procedure TfProcura_produtos.SpeedButton5Click(Sender: TObject);
begin
  cbAplicacao.ItemHeight := -1;
end;

procedure TfProcura_produtos.Exportar1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    case SaveDialog1.FilterIndex of
      1: SaveDoc(TJvDBGridWordExport, SaveDialog1.Filename);
      2: SaveDoc(TJvDBGridExcelExport, SaveDialog1.Filename);
      3: SaveDoc(TJvDBGridHTMLExport, SaveDialog1.Filename);
      4: SaveDoc(TJvDBGridCSVExport, SaveDialog1.Filename);
      5: SaveDoc(TJvDBGridXMLExport, SaveDialog1.Filename);
    end;
    // Open doc in default app
    //if mnuOpenFile.Checked then
      ShellExecute(Handle, 'open', PChar(SaveDialog1.Filename), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfProcura_produtos.JvDBGrid1CellClick(Column: TColumn);
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

 Edit3.Text := '1';
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
 if (exibirCamposCondicao = 'S') then
 begin
   edCondicao1.Value := dm.Arredondar((cds_procVALOR_PRAZO.AsFloat * condicao1), condicaoArredondar);
   edCondicao2.Value := dm.Arredondar((cds_procVALOR_PRAZO.AsFloat * condicao2), condicaoArredondar);
   edCondicao3.Value := dm.Arredondar((cds_procVALOR_PRAZO.AsFloat * condicao3), condicaoArredondar);
 end;
end;

procedure TfProcura_produtos.JvDBGrid1DblClick(Sender: TObject);
begin
  btnIncluir.Click;
end;

procedure TfProcura_produtos.JvDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_produtos.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if var_F = 'venda' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 if var_F = 'compra' then
  Edit4.Text := Format('%-6.2n',[cds_procPRECO_COMPRA.value]);
end;

procedure TfProcura_produtos.JvDBGrid1TitleClick(Column: TColumn);
begin
  cds_proc.IndexFieldNames:=Column.FieldName;
end;

procedure TfProcura_produtos.DoExportProgress(Sender: TObject; Min, Max,
  Position: Cardinal; const AText: string; var AContinue: Boolean);
begin
  JvProgressDialog1.Min := Min;
  JvProgressDialog1.Max := Max;
  JvProgressDialog1.Position := Position;
  JvProgressDialog1.Caption := AText;
  if Max > 0 then
    JvProgressDialog1.Text := Format('Exporting (%d%% finished)', [round(Position / Max * 100)]);
  AContinue := not JvProgressDialog1.Cancelled;
  if not AContinue or (Position >= Max) then
    JvProgressDialog1.Hide;
end;

procedure TfProcura_produtos.SaveDoc(AExportClass: TJvCustomDBGridExportClass; const Filename: string);
var
  AExporter: TJvCustomDBGridExport;
begin
  AExporter := AExportClass.Create(self);
  try
    AExporter.Grid := DBGrid1;
    if AExporter is TJvDBGridCSVExport then
      TJvDBGridCSVExport(AExporter).ExportSeparator := esComma; // this to be compatible with JvCsvData
    AExporter.Filename := Filename;
    AExporter.OnProgress := DoExportProgress;
    JvProgressDialog1.Caption := AExporter.Caption;
    JvProgressDialog1.Show;
    AExporter.ExportGrid;
  finally
    AExporter.Free;
  end;
end;

procedure TfProcura_produtos.SetupData;
begin
  Data.CsvFieldDef := 'Filename:$255,Size:%,Attributes:$64,Type:$255';
//  Data.FieldDefs.Add('Filename', ftString, 255, false);
//  Data.FieldDefs.Add('Size', ftInteger, 0, false);
//  Data.FieldDefs.Add('Attributes', ftString, 64, false);
//  Data.FieldDefs.Add('Type', ftString, 255, false);
  Data.Filename := ExtractFilePath(Application.Exename) + 'TestData.csv';
  Data.Active := true;
  Data.Sort('Filename,Type,Attributes,Size', true);
  DataSource1.Dataset := Data;
end;

procedure TfProcura_produtos.Importar1Click(Sender: TObject);
begin
   fImport := TfImport.Create(Application);
   try
     fImport.ShowModal;
   finally
     fImport.Free;
   end;
end;

procedure TfProcura_produtos.BitBtn9Click(Sender: TObject);
begin
    fPesquisa.DsP.DataSet := cds_proc;
    fPesquisa.ShowModal;
    resultado := fPesquisa.busca;
end;

procedure TfProcura_produtos.FormDestroy(Sender: TObject);
begin
  fPesquisa.Free;
end;

procedure TfProcura_produtos.BitBtn10Click(Sender: TObject);
begin
  panRelatorio.Visible := False;
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtos.rep';
  VCLReport_lista_produtos.Title    := VCLReport_lista_produtos.FileName;
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Report.DataInfo.Items[0].SQL:= imp + ' order by ' + cds_proc.IndexFieldNames;
  VCLReport_lista_produtos.Execute;
end;

procedure TfProcura_produtos.BitBtn11Click(Sender: TObject);
begin
  panRelatorio.Visible := False;
  VCLReport_lista_produtos.FileName := str_relatorio + 'produto_estoque.rep';
  VCLReport_lista_produtos.Title    := VCLReport_lista_produtos.FileName;
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Report.DataInfo.Items[0].SQL:= imp + ' order by ' + cds_proc.IndexFieldNames;
  VCLReport_lista_produtos.Execute;
end;

procedure TfProcura_produtos.cds_procAfterScroll(DataSet: TDataSet);
begin
 if (exibirCamposCondicao = 'S') then
 begin
   edCondicao1.Value := dm.Arredondar((cds_procVALOR_PRAZO.AsFloat * condicao1), condicaoArredondar);
   edCondicao2.Value := dm.Arredondar((cds_procVALOR_PRAZO.AsFloat * condicao2), condicaoArredondar);
   edCondicao3.Value := dm.Arredondar((cds_procVALOR_PRAZO.AsFloat * condicao3), condicaoArredondar);
 end;

end;

end.
