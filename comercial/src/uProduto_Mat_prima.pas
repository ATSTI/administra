unit uProduto_Mat_prima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Grids, DBGrids, DBClient, Provider, SqlExpr, Mask, DBCtrls,
  rpcompobase, rpvclreport, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfProduto_Mat_prima = class(TfPai)
    sdsMt: TSQLDataSet;
    dspMt: TDataSetProvider;
    cdsMt: TClientDataSet;
    sdsMtCODMAT: TIntegerField;
    sdsMtCODPRODUTO: TIntegerField;
    sdsMtCODPRODMP: TIntegerField;
    sdsMtQTDEUSADA: TFloatField;
    cdsMtCODMAT: TIntegerField;
    cdsMtCODPRODUTO: TIntegerField;
    cdsMtCODPRODMP: TIntegerField;
    cdsMtQTDEUSADA: TFloatField;
    sdsMtPRODUTO: TStringField;
    cdsMtPRODUTO: TStringField;
    sdsMtCODPRO: TStringField;
    cdsMtCODPRO: TStringField;
    sdsMtTIPOUSO: TStringField;
    cdsMtTIPOUSO: TStringField;
    sdsMtUSAPRECO: TStringField;
    cdsMtUSAPRECO: TStringField;
    sqlprod: TSQLQuery;
    DBText2: TDBText;
    scds_produto_proc: TSQLDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procCODPRO: TStringField;
    btnImprimir: TBitBtn;
    VCLReport1: TVCLReport;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label8: TLabel;
    edtProdutoCopia: TEdit;
    edtProdutoCopiaNome: TEdit;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    sdsMtCopia: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    dspMtCopia: TDataSetProvider;
    cdsMtCopia: TClientDataSet;
    cdsMtCopiaCODMAT: TIntegerField;
    cdsMtCopiaCODPRODUTO: TIntegerField;
    cdsMtCopiaCODPRODMP: TIntegerField;
    cdsMtCopiaQTDEUSADA: TFloatField;
    cdsMtCopiaPRODUTO: TStringField;
    cdsMtCopiaCODPRO: TStringField;
    cdsMtCopiaTIPOUSO: TStringField;
    cdsMtCopiaUSAPRECO: TStringField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edtProdutoCopiaExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvDBUltimGrid1TitleClick(Column: TColumn);
  private
    MTordenarPor : String;
    { Private declarations }
  public
    { Public declarations }
    procproduto: string;
  end;

var
  fProduto_Mat_prima: TfProduto_Mat_prima;
  var_F: string;

implementation

uses UDm, ufprocura_prod1, sCtrlResize;

{$R *.dfm}

procedure TfProduto_Mat_prima.FormShow(Sender: TObject);
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(fProduto_Mat_prima));
  if (cdsMt.Active) then
    cdsMt.Close;
  cdsMt.Params[0].AsInteger := dm.cds_produtoCODPRODUTO.AsInteger;
  cdsMt.Open;
  MTordenarPor := 'CODMAT';  
end;

procedure TfProduto_Mat_prima.btnGravarClick(Sender: TObject);
begin
  cdsMtCODPRODUTO.AsInteger := dm.cds_produtoCODPRODUTO.AsInteger;
  if (cdsMtCODPRODMP.IsNull) then
  begin
    if (DBEdit1.Text <> '') then
    begin
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].Clear;
      dm.scds_produto_proc.Params[1].Clear;
      dm.scds_produto_proc.Params[2].AsString:=DBEdit1.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then begin
        MessageDlg('C�digo n�o cadastrado, deseja cadastra-l� ?', mtWarning,
        [mbOk], 0);
        BitBtn1.Click;
        exit;
      end;
      cdsMtCODPRODMP.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      cdsMtPRODUTO.AsString := dm.scds_produto_procPRODUTO.AsString;
    end;
  end;
  {buscar o Gen_id}
  if cdsMt.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODMATPRIMA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsMtCODMAT.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
end;

procedure TfProduto_Mat_prima.BitBtn1Click(Sender: TObject);
var str: string;
begin
  inherited;
  { Procurar Produto }
  fProcura_prod1 := TfProcura_prod1.Create(Application);
  try
     str := 'select distinct CODPRODUTO, COD_BARRA, CODPRO, PRODUTO,  ' +
            'PRECO_VENDA, PRECO_COMPRAULTIMO as PRECO_COMPRA, ' +
            'QTDE_PCT, UNIDADEMEDIDA, GRUPO, SUBGRUPO, MARCA, ' +
            'ESTOQUEATUAL, CODALMOXARIFADO, ICMS, TIPO, LOCALIZACAO, LOTES,    ' +
            'SUBGRUPO as CATEGORIA, PRECO_VENDA as VALOR_PRAZO, PESO_QTDE, ' +
            'PRECO_COMPRAMEDIO as PRECOMEDIO, IPI , PEDIDO, OBS , ORIGEM, NCM ' +
            'from LISTAPRODUTO(0, ' + QuotedStr('TODOSPRODUTOS') + ', ' +
            QuotedStr('TODOSGRUPOS') + ', ' +
            QuotedStr('TODOSSUBGRUPOS') + ', ' + QuotedSTr('TODASMARCAS') +
            ', ' + QuotedStr('TODASAPLICACOES') + ', 0)';

           //fProcura_prod1.cds_proc.CommandText;
    if (fProcura_prod1.cds_proc.Active) then
      fProcura_prod1.cds_proc.Close;
    fProcura_prod1.cds_proc.CommandText := str + ' WHERE ((TIPO = ' +
      QuotedStr('COMPRA') + ') OR (TIPO IS NULL) OR (TIPO = ' +
      QuotedStr('PROD') +')) ' +
      ' AND (USA is null) ' +
      ' ORDER BY PRODUTO ';
    fProcura_prod1.btnIncluir.Visible := true;
    fProcura_prod1.Panel1.Visible := false;
    fProcura_prod1.Panel2.Visible := true;
    fProcura_prod1.cds_proc.Open;
    //end;
    {varonde := 'mat_prima'; }
    var_F := 'mat_prima';
    fProcura_prod1.ShowModal;
    if (cdsMt.State in [dsInsert, dsEdit]) then
    begin
      cdsMtCODPRODMP.AsInteger := fProcura_prod1.cds_procCODPRODUTO.AsInteger;
      cdsMtPRODUTO.AsString := fProcura_prod1.cds_procPRODUTO.AsString;
      cdsMtCODPRO.AsString := fProcura_prod1.cds_procCODPRO.AsString;
    end;
  finally
    fProcura_prod1.Free;
  end;
  dbEdit3.SetFocus;
end;

procedure TfProduto_Mat_prima.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit1.Text <> '') then
  begin
    if scds_produto_proc.Active then
      scds_produto_proc.Close;
    //scds_produto_proc.Params[0].Clear;
    //scds_produto_proc.Params[1].Clear;
    scds_produto_proc.Params[0].AsString:=DBEdit1.Text;
    scds_produto_proc.Open;
    if scds_produto_proc.IsEmpty then begin
      MessageDlg('C�digo n�o cadastrado, deseja cadastra-l� ?', mtWarning,
      [mbOk], 0);
      bitbtn1.Click;
      exit;
    end
    else begin
      if (cdsMt.State in [dsInsert, dsEdit]) then
      begin
        cdsMtCODPRODMP.AsInteger := scds_produto_procCODPRODUTO.AsInteger;
        cdsMtPRODUTO.AsString := scds_produto_procPRODUTO.AsString;
        cdsMtCODPRO.AsString := scds_produto_procCODPRO.AsString;
      end;
    end;
  end;
end;

procedure TfProduto_Mat_prima.FormCreate(Sender: TObject);
begin
  //inherited;
    {------Pesquisando na tab Parametro qual form de Procura Produtos ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'TERMINALVENDAS';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    procproduto := dm.cds_parametroDADOS.AsString;
  end
  else
    procproduto := 'PROC_PROD_SIMPLES';

end;

procedure TfProduto_Mat_prima.btnIncluirClick(Sender: TObject);
var TipoUsado, PrecoUsado : String;
begin
  TipoUsado := '';
  PrecoUsado := '';
  if (DBComboBox1.Text <> '') then
    TipoUsado := DBComboBox1.Text;
  if (DBComboBox2.Text <> '') then
    PrecoUsado := DBComboBox2.Text;
  inherited;
  cdsMtTIPOUSO.AsString := TipoUsado;
  cdsMtUSAPRECO.AsString := PrecoUsado;
  if (Panel1.Visible = False) then
    dbedit1.SetFocus;
end;

procedure TfProduto_Mat_prima.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  BitBtn1.Enabled := DtSrc.State in [dsInsert,dsEdit];
end;

procedure TfProduto_Mat_prima.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
 {** quando clicar enter ele entende que � o tab}

 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
   if (DBEdit1.Text = '') then
     Bitbtn1.Click;
 end;
end;

procedure TfProduto_Mat_prima.btnImprimirClick(Sender: TObject);
var mdMT: String;
begin
  inherited;
  mdMT := 'N';
  if (MTordenarPor = '') then
  begin
    MTordenarPor := 'CODMAT';
    mdMT := 'S';
  end;
  if (MTordenarPor = 'CODPRO') then
  begin
    MTordenarPor := 'CODPRODMAT';
    mdMT := 'S';
  end;

  if (MTordenarPor = 'PRODUTO') then
  begin
    MTordenarPor := 'MATPRIMA';
    mdMT := 'S';
  end;

  if (MTordenarPor = 'QTDEUSADA') then
  begin
    MTordenarPor := 'QTDE';
    mdMT := 'S';
  end;

  if (mdMT = 'N') then
  begin
    MTordenarPor := 'CODMAT';
  end;

  VCLReport1.Filename := str_relatorio + 'materiaprima_custo.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.DataInfo.Items[0].SQL := 'SELECT * FROM MATERIAPRIMA_CUSTO' +
    ' WHERE CODPROD = ' + IntToStr(cdsMtCODPRODUTO.AsInteger) +
    ' ORDER BY ' + MTordenarPor;
  VCLReport1.Execute;
end;

procedure TfProduto_Mat_prima.BitBtn3Click(Sender: TObject);
begin
  if (edtProdutoCopia.Text = '') then
  begin
    MessageDlg('Informe o produto que tem a Lista que ser� copiada.', mtWarning, [mbOK], 0);
    exit;
  end;
  if scds_produto_proc.Active then
    scds_produto_proc.Close;
  scds_produto_proc.Params[0].AsString := edtProdutoCopia.Text;
  scds_produto_proc.Open;
  if scds_produto_proc.IsEmpty then begin
    MessageDlg('C�digo n�o localizado.', mtWarning,
    [mbOk], 0);
    exit;
  end;
  edtProdutoCopiaNome.Text := scds_produto_procPRODUTO.AsString;

  if (cdsMtCopia.Active) then
    cdsMtCopia.Close;
  cdsMtCopia.Params[0].AsInteger := scds_produto_procCODPRODUTO.AsInteger;
  cdsMtCopia.Open;
  while not cdsMtCopia.Eof do
  begin
    btnIncluir.Click;
    cdsMtCODPRODMP.AsInteger  := cdsMtCopiaCODPRODMP.AsInteger;
    cdsMtQTDEUSADA.asFloat    := cdsMtCopiaQTDEUSADA.asFloat;
    cdsMtTIPOUSO.AsString     := cdsMtCopiaTIPOUSO.AsString;
    cdsMtUSAPRECO.AsString    := cdsMtCopiaUSAPRECO.AsString;
    cdsMtPRODUTO.AsString     := cdsMtCopiaPRODUTO.AsString;
    cdsMtCODPRO.AsString      := cdsMtCopiaCODPRO.AsString;
    btnGravar.Click;
    cdsMtCopia.Next;
  end;
  Panel1.Visible := FAlse;
end;

procedure TfProduto_Mat_prima.edtProdutoCopiaExit(Sender: TObject);
begin
  inherited;
  if scds_produto_proc.Active then
    scds_produto_proc.Close;
  //scds_produto_proc.Params[0].Clear;
  //scds_produto_proc.Params[1].Clear;
  scds_produto_proc.Params[0].AsString := edtProdutoCopia.Text;
  scds_produto_proc.Open;
  if scds_produto_proc.IsEmpty then begin
    MessageDlg('C�digo n�o localizado.', mtWarning,
    [mbOk], 0);
    exit;
  end;
  edtProdutoCopiaNome.Text := scds_produto_procPRODUTO.AsString;
end;

procedure TfProduto_Mat_prima.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Panel1.Visible := True;
end;

procedure TfProduto_Mat_prima.JvDBUltimGrid1TitleClick(Column: TColumn);
begin
  cdsMt.IndexFieldNames := Column.FieldName;
  MTordenarPor :=  Column.FieldName;
end;

end.
