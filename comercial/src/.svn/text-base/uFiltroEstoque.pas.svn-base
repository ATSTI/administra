unit uFiltroEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Mask, MMJPanel, StdCtrls, Buttons, Grids, DBGrids,
  ExtCtrls, Provider, DB, DBClient, rpcompobase, Menus,
  SqlExpr, XPMenu, rpvclreport, DBCtrls, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvExDBGrids, JvDBGrid, JvExStdCtrls,
  JvCombobox;

type
  TfFiltroEstoque = class(TForm)
    XPMenu1: TXPMenu;
    sdsLote: TSQLDataSet;
    sdsLoteLOTE: TStringField;
    PopupMenu1: TPopupMenu;
    Executarconsulta1: TMenuItem;
    Receber1: TMenuItem;
    DataSource1: TDataSource;
    ds_estoque: TDataSource;
    cds_estoque: TClientDataSet;
    dsp_estoque: TDataSetProvider;
    sds_estoque: TSQLDataSet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    edCodCliente: TEdit;
    btnProdutoProcura: TBitBtn;
    Label5: TLabel;
    edCliente: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    Edit4: TEdit;
    cbPRODUTO: TComboBox;
    Label10: TLabel;
    ComboBox4: TComboBox;
    Label11: TLabel;
    MMJPanel1: TMMJPanel;
    btnSair: TBitBtn;
    MMJPanel3: TMMJPanel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    repRelItem: TVCLReport;
    repRelEstoque: TVCLReport;
    repRel: TVCLReport;
    DBText1: TDBText;
    DBText2: TDBText;
    Consultar1: TMenuItem;
    Sair1: TMenuItem;
    VerMovimento1: TMenuItem;
    meDta1: TJvDatePickerEdit;
    meDta2: TJvDatePickerEdit;
    cbGrupo: TComboBox;
    Label13: TLabel;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    sds_estoqueCODPROD: TStringField;
    sds_estoqueCODMOV: TIntegerField;
    sds_estoqueTIPOMOVIMENTO: TStringField;
    sds_estoquePRODUTO: TStringField;
    sds_estoqueGRUPO: TStringField;
    sds_estoqueSUBGRUPOPROD: TStringField;
    sds_estoqueSALDOINIACUM: TFloatField;
    sds_estoqueENTRADA: TFloatField;
    sds_estoqueSAIDA: TFloatField;
    sds_estoqueSALDOFIMACUM: TFloatField;
    sds_estoquePRECOUNIT: TFloatField;
    sds_estoqueVALORESTOQUE: TFloatField;
    sds_estoqueVALORVENDA: TFloatField;
    sds_estoqueLOTES: TStringField;
    sds_estoqueCCUSTOS: TIntegerField;
    sds_estoqueDTAFAB: TDateField;
    sds_estoqueDTAVCTO: TDateField;
    sds_estoqueNF: TIntegerField;
    sds_estoqueCLIFOR: TStringField;
    sds_estoqueCODLOTE: TIntegerField;
    sds_estoqueANOTACOES: TStringField;
    cds_estoqueCODPROD: TStringField;
    cds_estoqueCODMOV: TIntegerField;
    cds_estoqueTIPOMOVIMENTO: TStringField;
    cds_estoquePRODUTO: TStringField;
    cds_estoqueGRUPO: TStringField;
    cds_estoqueSUBGRUPOPROD: TStringField;
    cds_estoqueSALDOINIACUM: TFloatField;
    cds_estoqueENTRADA: TFloatField;
    cds_estoqueSAIDA: TFloatField;
    cds_estoqueSALDOFIMACUM: TFloatField;
    cds_estoquePRECOUNIT: TFloatField;
    cds_estoqueVALORESTOQUE: TFloatField;
    cds_estoqueVALORVENDA: TFloatField;
    cds_estoqueLOTES: TStringField;
    cds_estoqueCCUSTOS: TIntegerField;
    cds_estoqueDTAFAB: TDateField;
    cds_estoqueDTAVCTO: TDateField;
    cds_estoqueNF: TIntegerField;
    cds_estoqueCLIFOR: TStringField;
    cds_estoqueCODLOTE: TIntegerField;
    cds_estoqueANOTACOES: TStringField;
    GroupBox4: TGroupBox;
    cbAplicacao: TJvComboBox;
    SpeedButton5: TBitBtn;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label12: TLabel;
    edNota: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edCodClienteExit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure meDta1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure edNotaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltroEstoque: TfFiltroEstoque;
  varProd, form_1, IDMOV : Integer;
  texto_1 : string;

implementation

uses UDm, ufprocura_prod, uPdm, uProcurar, uRelestoque, sCtrlResize;

{$R *.dfm}

procedure TfFiltroEstoque.FormCreate(Sender: TObject);
var masc : string;
begin
  if (not sdsLote.Active) then
    sdsLote.Open;
  while not sdsLote.Eof do
  begin
    ComboBox2.Items.Add(sdsLoteLOTE.AsString);
    sdsLote.Next;
  end;
  sdsLote.Close;
  dm.parametro.open;
  if (dm.parametro.Locate('PARAMETRO', 'FORMATACAO',[loPartialKey])) then
  begin
    if (dm.parametroD1.AsString <> '') then
    begin
      case StrToInt(dm.parametroD1.AsString) of
        0 : masc := ',##0';
        1 : masc := ',##0.0';
        2 : masc := ',##0.00';
        3 : masc := ',##0.000';
        4 : masc := ',##0.0000';
      else
        masc := ',##0.0';
      end;
      cds_estoqueSALDOINIACUM.EditFormat := masc;
      cds_estoqueSALDOINIACUM.DisplayFormat := masc;
      cds_estoqueENTRADA.EditFormat := masc;
      cds_estoqueENTRADA.DisplayFormat := masc;
      cds_estoqueSAIDA.EditFormat := masc;
      cds_estoqueSAIDA.DisplayFormat := masc;
      cds_estoqueSALDOFIMACUM.EditFormat := masc;
      cds_estoqueSALDOFIMACUM.DisplayFormat := masc;
    end;
    if (dm.parametroD2.AsString <> '') then
    begin
      case StrToInt(dm.parametroD2.AsString) of
        0 : masc := ',##0';
        1 : masc := ',##0.0';
        2 : masc := ',##0.00';
        3 : masc := ',##0.000';
        4 : masc := ',##0.0000';
      else
        masc := ',##0.00';
      end;
      cds_estoqueVALORESTOQUE.EditFormat := masc;
      cds_estoqueVALORESTOQUE.DisplayFormat := masc;
      cds_estoqueVALORVENDA.EditFormat := masc;
      cds_estoqueVALORVENDA.DisplayFormat := masc;
    end;
  end;
end;

procedure TfFiltroEstoque.FormShow(Sender: TObject);
var conta_local, varsql : string;
begin
   sCtrlResize.CtrlResize(TForm(fFiltroEstoque));
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  ComboBox1.Items.Add('TODOS');
  While not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;
  varProd := 0;
  With DM do
  begin
    if (cds_categoria.Active) then
      cds_categoria.Close;
    cds_categoria.Params[0].AsString := 'todos';
    cds_categoria.Open;
    cbPRODUTO.Items.Clear;
    while not cds_categoria.Eof do
    begin
      cbPRODUTO.Items.Add(cds_categoriaDESCCATEGORIA.AsString);
      cds_categoria.Next;
    end;
    cds_categoria.Close;
  end;
  With DM do
  begin
    if (not cds_Marca.Active) then
      cds_Marca.Open;
    ComboBox4.Items.Clear;
    while not cds_Marca.Eof do
    begin
      ComboBox4.Items.Add(cds_MarcaDESCMARCAS.AsString);
      cds_Marca.Next;
    end;
    cds_Marca.Close;
  end;

  With DM do
  begin
    if (not cds_Familia.Active) then
      cds_Familia.Open;
    cbGrupo.Items.Clear;
    while not cds_Familia.Eof do
    begin
      cbGrupo.Items.Add(cds_familiaDESCFAMILIA.AsString);
      cds_Familia.Next;
    end;
    cds_Familia.Close;
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'RegFiltroEstoque';
  dm.cds_parametro.Open;
  if dm.cds_parametro.IsEmpty then
  begin
    varsql :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS,D1,D2,D3,D4) ' ;
    varsql := varsql + 'values (''RegFiltroEstoque'',''S'',''RegFiltroEstoque'',''01/01/04'',''01/10/04'',''2-DINHEIRO'',''00'')';
    dm.sqlsisAdimin.executedirect(varsql);
  end
  else
  begin
    meDta1.Text := dm.cds_parametroD1.AsString;
    meDta2.Text := dm.cds_parametroD2.AsString;
  end;
  bitbtn7.SetFocus;
   if (Edit3.Text = '') then exit;
   if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
   dm.scds_produto_proc.Params[0].AsInteger := 0;
   dm.scds_produto_proc.Params[1].AsString := Edit3.Text;
   dm.scds_produto_proc.Open;
   Edit4.Text:=dm.scds_produto_procPRODUTO.asString;
   varProd := dm.scds_produto_procCODPRODUTO.AsInteger;
   dm.scds_produto_proc.Close;
   BitBtn7.Click;

end;

procedure TfFiltroEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
    if (Edit3.Text = '') then exit;
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := Edit3.Text;
    dm.scds_produto_proc.Open;
    Edit4.Text:=dm.scds_produto_procPRODUTO.asString;
    varProd := dm.scds_produto_procCODPRODUTO.AsInteger;
    dm.scds_produto_proc.Close;
    bitbtn7.Click;
  end;
end;

procedure TfFiltroEstoque.edCodClienteExit(Sender: TObject);
begin
   if edCodCliente.Text = '' then exit;
   if dm.scds_NaturezaProcura.Active then
      dm.scds_NaturezaProcura.Close;
   dm.scds_NaturezaProcura.Params[0].Clear;
   dm.scds_NaturezaProcura.Params[1].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_NaturezaProcura.Open;
   edCliente.Text:=dm.scds_NaturezaProcuraDESCNATUREZA.asString;
   dm.scds_NaturezaProcura.Close;
end;

procedure TfFiltroEstoque.Edit3Exit(Sender: TObject);
begin
   if (Edit3.Text = '') then exit;
   if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
   dm.scds_produto_proc.Params[0].AsInteger := 0;
   dm.scds_produto_proc.Params[1].AsString := Edit3.Text;
   dm.scds_produto_proc.Open;
   Edit4.Text:=dm.scds_produto_procPRODUTO.asString;
   varProd := dm.scds_produto_procCODPRODUTO.AsInteger;
   dm.scds_produto_proc.Close;
end;

procedure TfFiltroEstoque.btnProdutoProcuraClick(Sender: TObject);
begin
   fProcurar:=TfProcurar.create(self,dm.scds_NaturezaProcura);
   Try
     fProcurar.BtnProcurar.Click;
     fProcurar.EvDBFind1.DataField := 'DESCNATUREZA';
     if fProcurar.ShowModal=mrOk then
     begin
       edCodCliente.Text:=IntToStr(dm.scds_NaturezaProcuraCODNATUREZA.asInteger);
       edCliente.Text:=dm.scds_NaturezaProcuraDESCNATUREZA.asString;
     end;
   Finally
     dm.scds_NaturezaProcura.close;
     fProcurar.Free;
   end;
end;

procedure TfFiltroEstoque.BitBtn1Click(Sender: TObject);
begin
  var_F := 'filtroEstoque';
  varonde := 'mat_prima';
  fProcura_prod.ShowModal;
  Edit3.Text := fProcura_prod.fecodProd;
  Edit4.Text := fProcura_prod.fenomeProduto;
  varProd := fProcura_prod.fecodProduto;
end;

procedure TfFiltroEstoque.BitBtn3Click(Sender: TObject);
begin
  RepRelEstoque.FileName := str_relatorio + 'estoque_grupo.rep';
  RepRelEstoque.Title    := RepRelEstoque.FileName;
  repRelEstoque.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  RepRelEstoque.Report.Params.ParamByName('PDTA1').Value := StrToDate(medta1.Text);
  RepRelEstoque.Report.Params.ParamByName('PDTA2').Value := StrToDate(medta2.Text);
  IF (varProd > 0) then
  begin
    RepRelEstoque.Report.Params.ParamByName('PROD1').Value := varProd;
    RepRelEstoque.Report.Params.ParamByName('PROD2').Value := varProd;
  end else begin
    RepRelEstoque.Report.Params.ParamByName('PROD1').Value := 0;
    RepRelEstoque.Report.Params.ParamByName('PROD2').Value := 32000;
  end;
  if (cbPRODUTO.Text <> '') then
  begin
     RepRelEstoque.Report.Params.ParamByName('SUBGRUPOA').Value := cbPRODUTO.Text;
  end
  else
     RepRelEstoque.Report.Params.ParamByName('SUBGRUPOA').Value := 'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA';
  RepRelEstoque.Execute;
end;

procedure TfFiltroEstoque.BitBtn4Click(Sender: TObject);
begin
  RepRel.FileName := str_relatorio + 'relfiltroestoque.rep';
  repRel.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  RepRel.Report.Params.ParamByName('DTA1').Value := StrToDate(medta1.Text);
  RepRel.Report.Params.ParamByName('DTA2').Value := StrToDate(medta2.Text);
  IF (varProd > 0) then
  begin
    RepRel.Report.Params.ParamByName('PROD1').Value := varProd;
    RepRel.Report.Params.ParamByName('PROD2').Value := varProd;
  end else begin
    RepRel.Report.Params.ParamByName('PROD1').Value := 0;
    RepRel.Report.Params.ParamByName('PROD2').Value := 32000;
  end;
  if (cbPRODUTO.Text <> '') then
  begin
     RepRel.Report.Params.ParamByName('SUBGRUPO').Value := cbPRODUTO.Text;
  end
  else
     RepRel.Report.Params.ParamByName('SUBGRUPO').Value := 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA';


  IF (edCodCliente.text > '') then
  begin
    RepRel.Report.Params.ParamByName('NATUREZA').Value := edCodCliente.text;
  end else begin
    RepRel.Report.Params.ParamByName('NATUREZA').Value := 100;
  end;
  if (ComboBox1.Text <> 'TODOS') then
  begin
    dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
    RepRel.Report.Params.ParamByName('CCUSTO').Value := IntToStr(dm.cds_ccustoCODIGO.asInteger);
  end
  else begin
    RepRel.Report.Params.ParamByName('CCUSTO').Value := 1;
  end;

  if (ComboBox4.Text <> '') then
  begin
     RepRel.Report.Params.ParamByName('MARCA').Value := ComboBox4.Text;
  end
  else
     RepRel.Report.Params.ParamByName('MARCA').Value := 'TODAS AS MARCAS CADASTRADAS NO SISTEMA';

  if (ComboBox2.Text <> '') then
  begin
     RepRel.Report.Params.ParamByName('LOTE').Value := ComboBox2.Text;
  end
  else
     RepRel.Report.Params.ParamByName('LOTE').Value := 'TODOS OS LOTES CADASTRADOS NO SISTEMA';

  //==============================================================================
  //------------------------------------------------------------------------------
  //Por Familia (grupo)
  //------------------------------------------------------------------------------
  if (cbGrupo.Text <> '') then
  begin
    RepRel.Report.Params.ParamByName('GRUPOPROC').Value := cbGrupo.Text;
  end
  else
    RepRel.Report.Params.ParamByName('GRUPOPROC').Value := 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA';
  //==============================================================================
  RepRel.Execute;

end;

procedure TfFiltroEstoque.BitBtn7Click(Sender: TObject);
Var
  SqlTexto, sqlStr: String;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    sqlStr := 'select CODPROD, CODMOV, TIPOMOVIMENTO, ' +
     ' PRODUTO, GRUPO, ' +
//      QuotedStr('a') + ' as PRODUTO  , GRUPO, ' +
     ' SUBGRUPOPROD, SALDOINIACUM, ENTRADA, SAIDA, SALDOFIMACUM, PRECOUNIT, ' +
     ' VALORESTOQUE, VALORVENDA, LOTES, CCUSTOS, DTAFAB, DTAVCTO, NF, ' +
     ' CLIFOR, CODLOTE, UDF_COLLATEBR(ANOTACOES) ANOTACOES FROM SPESTOQUEFILTRO(';
    //==============================================================================
    //Verifica se a data de emissão foi preenchido
    //------------------------------------------------------------------------------
    sqlTexto := '''' + formatdatetime('mm/dd/yy', medta1.Date) + '''' +
      ',  ' +
      '''' + formatdatetime('mm/dd/yy', medta2.Date) + ''',';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Produto
    //------------------------------------------------------------------------------
    if Edit3.Text <> '' then
    begin
      if (varProd = 0) then
      begin
       if Edit3.Text = '' then exit;
       if dm.scds_produto_proc.Active then
          dm.scds_produto_proc.Close;
       dm.scds_produto_proc.Params[0].Clear;
       dm.scds_produto_proc.Params[1].AsString := Edit3.Text;
       dm.scds_produto_proc.Open;
       Edit4.Text:=dm.scds_produto_procPRODUTO.asString;
       varProd := dm.scds_produto_procCODPRODUTO.AsInteger;
       dm.scds_produto_proc.Close;
       // se escolher um produto entao coloco dois parametros para o mesmo
        sqlTexto := sqlTexto + IntToStr(varProd) + ', ' + IntToStr(varProd);
      end else begin
        sqlTexto := sqlTexto + IntToStr(varProd) + ', ' + IntToStr(varProd);
      end;
    end
    else
      // se nao escolheu um item entao mostra todos
      sqlTexto := sqlTexto + '0, 32500';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Por Categoria
    //------------------------------------------------------------------------------
    if (cbPRODUTO.Text <> '') then
    begin
       sqlTexto := sqlTexto + ',''' + cbPRODUTO.Text + '''';
    end
    else
       sqlTexto := sqlTexto + ',''TODOS SUBGRUPOS DO CADASTRO CATEGORIA''';

    //------------------------------------------------------------------------------
    //Natureza da operação
    //------------------------------------------------------------------------------
    if (edCodCliente.Text <> '') then
    begin
      sqlTexto := sqlTexto + ', ' + edCodCliente.Text;
    end
    else
      // todas os tipos
      sqlTexto := sqlTexto + ', 100';
    //==============================================================================

    //------------------------------------------------------------------------------
    //Centro de Custo
    //------------------------------------------------------------------------------
    if (ComboBox1.Text <> 'TODOS') then
    begin
      dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
      sqlTexto := sqlTexto + ', ' + IntToStr(dm.cds_ccustoCODIGO.asInteger);
    end
    else
      // todas os tipos
      sqlTexto := sqlTexto + ', 1';

    //==============================================================================
    //------------------------------------------------------------------------------
    //Marca
    //------------------------------------------------------------------------------
    if (ComboBox4.Text <> '') then
    begin
      sqlTexto := sqlTexto + ', ''' + ComboBox4.Text + '''';
    end
    else
      // todas os tipos
      sqlTexto := sqlTexto + ', ''TODAS AS MARCAS CADASTRADAS NO SISTEMA''';

    //==============================================================================
    //------------------------------------------------------------------------------
    //Lote
    //------------------------------------------------------------------------------
    if (ComboBox2.Text <> '') then
    begin
      sqlTexto := sqlTexto + ', ''' + ComboBox2.Text + '''';
    end
    else
      // todas os tipos
      sqlTexto := sqlTexto + ', ''TODOS OS LOTES CADASTRADOS NO SISTEMA''';

    //==============================================================================
    //------------------------------------------------------------------------------
    //Por Familia (grupo)
    //------------------------------------------------------------------------------
    if (cbGrupo.Text <> '') then
    begin
       sqlTexto := sqlTexto + ',''' + cbGrupo.Text + ''')';
    end
    else
       sqlTexto := sqlTexto + ',''TODOS OS GRUPOS CADASTRADOS NO SISTEMA'')';

    if (cbAplicacao.ItemIndex > -1) then
    begin
       sqlTexto := sqlTexto + ' WHERE APLICACAO = ' + QuotedStr(cbAplicacao.Text);
    end;

    if (edNota.Text <> '') then
    begin
      if (cbAplicacao.ItemIndex > -1) then
        sqlTexto := sqlTexto + ' AND NF = ' + QuotedStr(edNota.Text)
      else
        sqlTexto := sqlTexto + ' WHERE NF = ' + QuotedStr(edNota.Text);  
    end;

    //==============================================================================
    IF (cds_estoque.Active) then
      cds_estoque.Close;
    cds_estoque.CommandText := sqlStr + sqlTexto;
    cds_estoque.Open;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfFiltroEstoque.BitBtn6Click(Sender: TObject);
begin
  fPdm:= TfPdm.Create(Application);
  try
    if fPdm.cds_Movimento.Active then
       fPdm.cds_movimento.Close;
    fPdm.cds_movimento.Params[0].AsInteger := cds_estoqueCODMOV.AsInteger;
    fPdm.cds_movimento.Open;
    if fPdm.cds_Mov_det.Active then
       fPdm.cds_Mov_det.Close;
     fPdm.cds_Mov_det.Params[0].Clear;
     fPdm.cds_Mov_det.Params[1].AsInteger := fPdm.cds_MovimentoCODMOVIMENTO.AsInteger;
     fPdm.cds_Mov_det.Open;
    if fPdm.cds_MovimentoCODFORNECEDOR.IsNull then
    begin
       fPdm.dbeCliente.DataField := 'CODCLIENTE';
       fPdm.DBEdit4.DataField := 'NOMECLIENTE';
    end;
    var_1 := 1;
    fPdm.ShowModal;
   finally
    fPdm.Free;
   end;
end;

procedure TfFiltroEstoque.btnSairClick(Sender: TObject);
begin
  if (form_1 = 1) then
  begin
      IDMOV := cds_estoqueCODMOV.AsInteger;

      if (cds_estoqueTIPOMOVIMENTO.AsString = 'Entrada') then
        texto_1 := 'Entrada de Mercadorias de Estoque';

      if (cds_estoqueTIPOMOVIMENTO.AsString = 'Saída') then
        texto_1 := 'Saida de Mercadorias de Estoque';
        form_1 := 0;
  end;
  close;
end;

procedure TfFiltroEstoque.DBGrid1TitleClick(Column: TColumn);
begin
    cds_estoque.IndexFieldNames:=Column.FieldName;
end;

procedure TfFiltroEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var str_sql: string;
begin
  //inherited;
  str_sql := 'UPDATE PARAMETRO SET D1 = ';
  str_sql := str_sql + '''' + meDta1.Text + ''', D2 = ';
  str_sql := str_sql + '''' + meDta2.Text + '''';
  str_sql := str_sql + ' where PARAMETRO = ' + '''RegFiltroEstoque''';
  try
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
  except
    exit;
  end;
end;

procedure TfFiltroEstoque.meDta1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfFiltroEstoque.BitBtn5Click(Sender: TObject);
begin
  RepRelItem.FileName := str_relatorio + 'estoquegrupo.rep';
  repRelItem.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  RepRelItem.Report.Params.ParamByName('PDTA1').Value := StrToDate(medta1.Text);
  RepRelItem.Report.Params.ParamByName('PDTA2').Value := StrToDate(medta2.Text);

  if (cbGrupo.Text <> '') then
  begin
     RepRelItem.Report.Params.ParamByName('GRUPO').Value := cbGrupo.Text;
  end
  else
     RepRelItem.Report.Params.ParamByName('GRUPO').Value := 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA';


  if (ComboBox1.Text <> 'TODOS') then
  begin
    dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
    RepRelItem.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
     RepRelItem.Report.Params.ParamByName('PCCUSTO').Value := 0;
  RepRelItem.Title :=RepRelItem.FileName;
  RepRelItem.Execute;
end;

procedure TfFiltroEstoque.BitBtn8Click(Sender: TObject);
begin
  RepRelItem.FileName := str_relatorio + 'lista_entradasaida.rep';
  repRelItem.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  RepRelItem.Report.Params.ParamByName('MDATA1').Value := StrToDate(medta1.Text);
  RepRelItem.Report.Params.ParamByName('MDATA2').Value := StrToDate(medta2.Text);
  IF (varProd > 0) then
  begin
    RepRelItem.Report.Params.ParamByName('CODPRODUTO').Value := varProd;
  end else begin
    RepRelItem.Report.Params.ParamByName('CODPRODUTO').Value := 0;
  end;
  RepRelItem.Execute;
end;

procedure TfFiltroEstoque.BitBtn2Click(Sender: TObject);
begin
   fRelestoque := TfRelestoque.Create(Application);
   try
     fRelestoque.ShowModal;
   finally
     fRelestoque.Free;
   end;
end;

procedure TfFiltroEstoque.SpeedButton5Click(Sender: TObject);
begin
  cbAplicacao.ItemIndex := -1;
end;

procedure TfFiltroEstoque.edNotaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
    if (edNota.Text <> '') then
      bitbtn7.Click;
  end;
end;

end.
