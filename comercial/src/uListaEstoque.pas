unit uListaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExStdCtrls, JvCombobox, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, StdCtrls, Buttons,
  ExtCtrls, FMTBcd, SqlExpr, Provider, DB, DBClient, Grids, DBGrids,
  DBCtrls, rpcompobase, rpvclreport, Menus;

type
  TfListaEstoque = class(TForm)
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    ComboBox1: TComboBox;
    ComboBox: TComboBox;
    grp2: TGroupBox;
    edit3: TEdit;
    BitBtn1: TBitBtn;
    edit4: TEdit;
    cbPRODUTO: TComboBox;
    ComboBox4: TComboBox;
    edt3: TEdit;
    edt4: TEdit;
    grp1: TGroupBox;
    cbAplicacao: TJvComboBox;
    SpeedButton5: TBitBtn;
    ComboBoxGrupo: TComboBox;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    cds1: TClientDataSet;
    DSP1: TDataSetProvider;
    sds1: TSQLDataSet;
    fConsultar: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    meDta1: TJvDatePickerEdit;
    sdsLote: TSQLDataSet;
    strngfldLoteLOTE: TStringField;
    BitBtn9: TBitBtn;
    repRel: TVCLReport;
    BitBtn10: TBitBtn;
    pm1: TPopupMenu;
    Executarconsulta1: TMenuItem;
    Receber1: TMenuItem;
    Consultar1: TMenuItem;
    Sair1: TMenuItem;
    VerMovimento1: TMenuItem;
    btnSair: TBitBtn;
    BitBtn2: TBitBtn;
    sdscds1CODPRODUTO: TIntegerField;
    strngfldcds1COD_BARRA: TStringField;
    strngfldcds1CODPRO: TStringField;
    strngfldcds1PRODUTO: TStringField;
    cds1PRECO_VENDA: TFloatField;
    cds1PRECO_COMPRAULTIMO: TFloatField;
    cds1QTDE_PCT: TFloatField;
    strngfldcds1UNIDADEMEDIDA: TStringField;
    strngfldcds1GRUPO: TStringField;
    strngfldcds1SUBGRUPO: TStringField;
    strngfldcds1MARCA: TStringField;
    cds1ESTOQUEATUAL: TFloatField;
    cds1PEDIDO: TFloatField;
    sdscds1CODALMOXARIFADO: TIntegerField;
    cds1ICMS: TFloatField;
    cds1IPI: TFloatField;
    strngfldcds1TIPO: TStringField;
    strngfldcds1LOCALIZACAO: TStringField;
    strngfldcds1LOTES: TStringField;
    cds1PESO_QTDE: TFloatField;
    cds1PRECO_COMPRAMEDIO: TFloatField;
    cds1MARGEM: TFloatField;
    strngfldcds1CODIGO: TStringField;
    strngfldcds1USO: TStringField;
    strngfldcds1USA: TStringField;
    sdscds1COD_COMISSAO: TIntegerField;
    strngfldcds1RATEIO: TStringField;
    strngfldcds1CONTA_DESPESA: TStringField;
    strngfldcds1APLICACAO_PRODUTO: TStringField;
    cds1MESANO: TDateField;
    cds1ESTOQUEMAXIMO: TFloatField;
    cds1ESTOQUEMINIMO: TFloatField;
    cds1ESTOQUEREPOSICAO: TFloatField;
    strngfldcds1LOTE: TStringField;
    rgEmUso: TCheckBox;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edit3Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaEstoque: TfListaEstoque;
  varProd : Integer;
  DataStr : String;
implementation

uses ufprocura_prod, UDm;

{$R *.dfm}

procedure TfListaEstoque.BitBtn1Click(Sender: TObject);
begin
  var_F := 'filtroEstoque';
  varonde := 'mat_prima';
  fProcura_prod.ShowModal;
  Edit3.Text := fProcura_prod.fecodProd;
  Edit4.Text := fProcura_prod.fenomeProduto;
  varProd := fProcura_prod.fecodProduto;
end;

procedure TfListaEstoque.SpeedButton5Click(Sender: TObject);
begin
  cbAplicacao.ItemIndex := -1;
end;

procedure TfListaEstoque.FormShow(Sender: TObject);
var conta_local, varsql : string;
begin
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
    ComboBoxGrupo.Items.Clear;
    while not cds_Familia.Eof do
    begin
      ComboBoxGrupo.Items.Add(cds_familiaDESCFAMILIA.AsString);
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
   // meDta1.Text := dm.cds_parametroD1.AsString;
  end;
 //// bitbtn7.SetFocus;
   if (Edit3.Text = '') then exit;
   if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
   dm.scds_produto_proc.Params[0].AsInteger := 0;
   dm.scds_produto_proc.Params[1].AsString := Edit3.Text;
   dm.scds_produto_proc.Open;
   Edit4.Text:=dm.scds_produto_procPRODUTO.asString;
   varProd := dm.scds_produto_procCODPRODUTO.AsInteger;
   dm.scds_produto_proc.Close;
 ////  BitBtn7.Click;
end;

procedure TfListaEstoque.fConsultarClick(Sender: TObject);
Var
  SqlTexto, sqlStr: String;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    sqlStr := 'select * ' +
    ' FROM LISTA_ESTOQUE(';
     sqlStr := sqlStr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + ''')';

    //Produto
    if edit3.Text<>'' then
    begin
      if sqlTexto = '' then
        sqlTexto := sqlTexto + ' WHERE codpro = '
      else
        sqlTexto := sqlTexto + ' AND codpro = ';
      sqlTexto := sqlTexto + QuotedStr(edit3.Text);
    end;

    // Aplicação
    if (cbAplicacao.Text <> '') then
    begin
      if sqlTexto = '' then
        sqlTexto := sqlTexto +  ' WHERE  aplicacao_produto = '
      else
        sqlTexto := sqlTexto +  ' AND (aplicacao_produto = ';
      sqlTexto := sqlTexto +  QuotedStr(cbAplicacao.Text) ;
    end;

    //Marca

    if (ComboBox4.Text <> '') then
    begin
      if sqlTexto = '' then
        sqlTexto := sqlTexto +  ' WHERE  marca = '
      else
        sqlTexto := sqlTexto +  ' AND marca = ';
      sqlTexto := sqlTexto +  QuotedStr(ComboBox4.Text) ;
    end;

    //Grupo

    if (ComboBoxGrupo.Text <> '') then
    begin
      if sqlTexto = '' then
        sqlTexto := sqlTexto +  ' WHERE  grupo = '
      else
        sqlTexto := sqlTexto +  ' AND grupo = ';
      sqlTexto := sqlTexto +  QuotedStr(ComboBoxGrupo.Text) ;
    end;

    // Sub Grupo

    if (cbPRODUTO.Text <> '') then
    begin
      if sqlTexto = '' then
        sqlTexto := sqlTexto +  ' WHERE subgrupo = '
      else
        sqlTexto := sqlTexto +  ' AND subgrupo = ';
      sqlTexto := sqlTexto +  QuotedStr(cbPRODUTO.Text) ;
    end;

       //em uso
    if (rgEmUso.Checked = True) then
    begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA is null '
      else
        sqlTexto := 'where USA is null ';
    end
    else begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA = ' + QuotedStr('N')
      else
        sqlTexto := 'where USA = ' + QuotedStr('N') ;
    end;    

    IF (cds1.Active) then
      cds1.Close;
    cds1.CommandText := sqlStr + sqlTexto;
    cds1.Open;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end

end;

procedure TfListaEstoque.FormCreate(Sender: TObject);
var masc : string;
begin
  if (not sdsLote.Active) then
    sdsLote.Open;
  while not sdsLote.Eof do
  begin
   //// ComboBox.Items.Add(sdsLote.AsString);
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
      {cds_estoqueSALDOINIACUM.EditFormat := masc;
      cds_estoqueSALDOINIACUM.DisplayFormat := masc;
      cds_estoqueENTRADA.EditFormat := masc;
      cds_estoqueENTRADA.DisplayFormat := masc;
      cds_estoqueSAIDA.EditFormat := masc;
      cds_estoqueSAIDA.DisplayFormat := masc;
      cds_estoqueSALDOFIMACUM.EditFormat := masc;
      cds_estoqueSALDOFIMACUM.DisplayFormat := masc;
      }
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
      {
      cds_estoqueVALORESTOQUE.EditFormat := masc;
      cds_estoqueVALORESTOQUE.DisplayFormat := masc;
      cds_estoqueVALORVENDA.EditFormat := masc;
      cds_estoqueVALORVENDA.DisplayFormat := masc;
      }
    end;
  end;

end;

procedure TfListaEstoque.edit3Exit(Sender: TObject);
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

procedure TfListaEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;  
end;

procedure TfListaEstoque.BitBtn6Click(Sender: TObject);
begin
  ComboBoxGrupo.ItemIndex := -1;
end;

procedure TfListaEstoque.BitBtn7Click(Sender: TObject);
begin
  cbPRODUTO.ItemIndex := -1;
end;

procedure TfListaEstoque.BitBtn8Click(Sender: TObject);
begin
  ComboBox4.ItemIndex := -1;
end;

procedure TfListaEstoque.BitBtn3Click(Sender: TObject);
begin
  edt3.Text := '';
  edt4.Text := '';
end;

procedure TfListaEstoque.BitBtn5Click(Sender: TObject);
begin
  edit3.Text := '';
  edit4.Text := '';
end;

procedure TfListaEstoque.BitBtn4Click(Sender: TObject);
begin
  ComboBox.ItemIndex := -1;
end;

procedure TfListaEstoque.BitBtn9Click(Sender: TObject);
var SqlTexto, sqlStr : String;
    Save_Cursor      :TCursor;
begin
  RepRel.FileName := str_relatorio + 'listaestoque.rep';
  RepRel.Title    := RepRel.FileName;
  repRel.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  try
    sqlStr := 'select * ' +
    ' FROM LISTA_ESTOQUE(';
     sqlStr := sqlStr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + ''')';

    //Produto

     if edt3.Text<>'' then
     begin
     if sqlTexto ='' then
       sqlTexto := sqlTexto + ' WHERE codproduto BETWEEN '
     else
       sqlTexto := sqlTexto + ' AND codproduto BETWEEN ' ;
       sqlTexto := sqlTexto + '''' + edt3.Text + '''' ;
       sqlTexto := sqlTexto + ' AND ';
       sqlTexto := sqlTexto + '''' + edt4.Text + '''';
     end;
    {
     try
       if (medta1.Text<>datastr) then
       StrToDate(medta1.Text);
       if (medta1.Text<>datastr) then
       begin
         if sqlTexto = '' then
           sqlTexto := sqlTexto + ' WHERE mesano BETWEEN '
         else
          sqlTexto := sqlTexto + ' AND mesano BETWEEN ';
          sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''';
          sqlTexto := sqlTexto + ' AND ';
          sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''';
       end;
     except
      on EConvertError do
       begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         medTa1.SetFocus;
       end;
     end;
     }
     // Aplicação

     if (cbAplicacao.Text <> '') then
     begin
       if sqlTexto = '' then
         sqlTexto := sqlTexto +  ' WHERE  aplicacao_produto = '
       else
         sqlTexto := sqlTexto +  ' AND (aplicacao_produto = ';
        sqlTexto := sqlTexto +  QuotedStr(cbAplicacao.Text) ;
     end;

     // codproduto

     if edit3.Text<>'' then
     begin
       if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE codproduto = '
       else
         sqlTexto := sqlTexto + ' AND codproduto = ';
        sqlTexto := sqlTexto + edit3.Text ;
     end;

    //------------------------------------------------------------------------------
    //Marca
    //------------------------------------------------------------------------------
    if (ComboBox4.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE  marca = '
      else
        sqlTexto := sqlTexto +  ' AND marca = ';
        sqlTexto := sqlTexto +  QuotedStr(ComboBox4.Text) ;
    end;

    //==============================================================================
    //Grupo
    //------------------------------------------------------------------------------
    if (ComboBoxGrupo.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE  grupo = '
      else
        sqlTexto := sqlTexto +  ' AND grupo = ';
        sqlTexto := sqlTexto +  QuotedStr(ComboBoxGrupo.Text) ;
    end;

    //==============================================================================
    // Sub Grupo
    //------------------------------------------------------------------------------
    if (cbPRODUTO.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE subgrupo = '
      else
        sqlTexto := sqlTexto +  ' AND subgrupo = ';
        sqlTexto := sqlTexto +  QuotedStr(cbPRODUTO.Text) ;
    end;
       //em uso
    if (rgEmUso.Checked = True) then
    begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA is null '
      else
        sqlTexto := 'where USA is null ';
    end
    else begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA = ' + QuotedStr('N')
      else
        sqlTexto := 'where USA = ' + QuotedStr('N') ;
    end;
     repRel.Report.DataInfo.Items[0].SQL:=  sqlStr + sqlTexto ;
     repRel.Execute;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end

end;

procedure TfListaEstoque.BitBtn10Click(Sender: TObject);
var SqlTexto, sqlStr : String;
    Save_Cursor      :TCursor;
begin
  RepRel.FileName := str_relatorio + 'estoque_grupo_lista.rep';
  RepRel.Title    := RepRel.FileName;
  repRel.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  try
    sqlStr := 'select * ' +
    ' FROM LISTA_ESTOQUE(';
     sqlStr := sqlStr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + ''')';

    //Produto

     if edt3.Text<>'' then
     begin
     if sqlTexto ='' then
       sqlTexto := sqlTexto + ' WHERE codproduto BETWEEN '
     else
       sqlTexto := sqlTexto + ' AND codproduto BETWEEN ' ;
       sqlTexto := sqlTexto + '''' + edt3.Text + '''' ;
       sqlTexto := sqlTexto + ' AND ';
       sqlTexto := sqlTexto + '''' + edt4.Text + '''';
     end;

     // Aplicação

     if (cbAplicacao.Text <> '') then
     begin
       if sqlTexto = '' then
         sqlTexto := sqlTexto +  ' WHERE  aplicacao_produto = '
       else
         sqlTexto := sqlTexto +  ' AND (aplicacao_produto = ';
        sqlTexto := sqlTexto +  QuotedStr(cbAplicacao.Text) ;
     end;

     // codproduto

     if edit3.Text<>'' then
     begin
       if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE codpro = '
       else
         sqlTexto := sqlTexto + ' AND codpro = ';
        sqlTexto := sqlTexto + QuotedStr(edit3.Text);
     end;

    //------------------------------------------------------------------------------
    //Marca
    //------------------------------------------------------------------------------
    if (ComboBox4.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE  marca = '
      else
        sqlTexto := sqlTexto +  ' AND marca = ';
        sqlTexto := sqlTexto +  QuotedStr(ComboBox4.Text) ;
    end;

    //==============================================================================
    //Grupo
    //------------------------------------------------------------------------------
    if (ComboBoxGrupo.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE  grupo = '
      else
        sqlTexto := sqlTexto +  ' AND grupo = ';
        sqlTexto := sqlTexto +  QuotedStr(ComboBoxGrupo.Text) ;
    end;

    //==============================================================================
    // Sub Grupo
    //------------------------------------------------------------------------------
    if (cbPRODUTO.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE subgrupo = '
      else
        sqlTexto := sqlTexto +  ' AND subgrupo = ';
        sqlTexto := sqlTexto +  QuotedStr(cbPRODUTO.Text) ;
    end;
       //em uso
    if (rgEmUso.Checked = True) then
    begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA is null '
      else
        sqlTexto := 'where USA is null ';
    end
    else begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA = ' + QuotedStr('N')
      else
        sqlTexto := 'where USA = ' + QuotedStr('N') ;
    end;
       //em uso
    if (rgEmUso.Checked = True) then
    begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA is null '
      else
        sqlTexto := 'where USA is null ';
    end
    else begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA = ' + QuotedStr('N')
      else
        sqlTexto := 'where USA = ' + QuotedStr('N') ;
    end;

     repRel.Report.DataInfo.Items[0].SQL:=  sqlStr + sqlTexto ;
     repRel.Execute;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end

end;

procedure TfListaEstoque.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TfListaEstoque.BitBtn2Click(Sender: TObject);
var SqlTexto, sqlStr : String;
    Save_Cursor      :TCursor;
begin
  RepRel.FileName := str_relatorio + 'sugestao_compra.rep';
  RepRel.Title    := RepRel.FileName;
  repRel.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  try
    sqlStr := 'select * ' +
    ' FROM LISTA_ESTOQUE(';
     sqlStr := sqlStr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + ''')';

    //Produto

     if edt3.Text<>'' then
     begin
     if sqlTexto ='' then
       sqlTexto := sqlTexto + ' WHERE codproduto BETWEEN '
     else
       sqlTexto := sqlTexto + ' AND codproduto BETWEEN ' ;
       sqlTexto := sqlTexto + '''' + edt3.Text + '''' ;
       sqlTexto := sqlTexto + ' AND ';
       sqlTexto := sqlTexto + '''' + edt4.Text + '''';
     end;
    {
     try
       if (medta1.Text<>datastr) then
       StrToDate(medta1.Text);
       if (medta1.Text<>datastr) then
       begin
         if sqlTexto = '' then
           sqlTexto := sqlTexto + ' WHERE mesano BETWEEN '
         else
          sqlTexto := sqlTexto + ' AND mesano BETWEEN ';
          sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''';
          sqlTexto := sqlTexto + ' AND ';
          sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''';
       end;
     except
      on EConvertError do
       begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         medTa1.SetFocus;
       end;
     end;
     }
     // Aplicação

     if (cbAplicacao.Text <> '') then
     begin
       if sqlTexto = '' then
         sqlTexto := sqlTexto +  ' WHERE  aplicacao_produto = '
       else
         sqlTexto := sqlTexto +  ' AND (aplicacao_produto = ';
        sqlTexto := sqlTexto +  QuotedStr(cbAplicacao.Text) ;
     end;

     // codproduto

     if edit3.Text<>'' then
     begin
       if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE codproduto = '
       else
         sqlTexto := sqlTexto + ' AND codproduto = ';
        sqlTexto := sqlTexto + edit3.Text ;
     end;

    //------------------------------------------------------------------------------
    //Marca
    //------------------------------------------------------------------------------
    if (ComboBox4.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE  marca = '
      else
        sqlTexto := sqlTexto +  ' AND marca = ';
        sqlTexto := sqlTexto +  QuotedStr(ComboBox4.Text) ;
    end;

    //==============================================================================
    //Grupo
    //------------------------------------------------------------------------------
    if (ComboBoxGrupo.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE  grupo = '
      else
        sqlTexto := sqlTexto +  ' AND grupo = ';
        sqlTexto := sqlTexto +  QuotedStr(ComboBoxGrupo.Text) ;
    end;

    //==============================================================================
    // Sub Grupo
    //------------------------------------------------------------------------------
    if (cbPRODUTO.Text <> '') then
    begin
      if sqlTexto = '' then
          sqlTexto := sqlTexto +  ' WHERE subgrupo = '
      else
        sqlTexto := sqlTexto +  ' AND subgrupo = ';
        sqlTexto := sqlTexto +  QuotedStr(cbPRODUTO.Text) ;
    end;

       //em uso
    if (rgEmUso.Checked = True) then
    begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA is null '
      else
        sqlTexto := 'where USA is null ';
    end
    else begin
      if sqlTexto <> '' then
        sqlTexto := sqlTexto + ' and USA = ' + QuotedStr('N')
      else
        sqlTexto := 'where USA = ' + QuotedStr('N') ;
    end;


     repRel.Report.DataInfo.Items[0].SQL:=  sqlStr + sqlTexto ;
     repRel.Execute;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end               
end;

end.
