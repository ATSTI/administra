unit uMovLinhas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ExtCtrls, MMJPanel, DBCtrls, FMTBcd,
  SqlExpr, Provider, DB, DBClient;

type
  TfMovLinhas = class(TForm)
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    dbEdit1: TJvDBDatePickerEdit;
    Label11: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    MMJPanel3: TMMJPanel;
    Label15: TLabel;
    Dtsrc: TDataSource;
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
    cds_procLOTES: TStringField;
    cds_procLOCALIZACAO: TStringField;
    cds_procPESO_QTDE: TFloatField;
    cds_procPRECOMEDIO: TFloatField;
    dsp_proc: TDataSetProvider;
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
    sds_procLOTES: TStringField;
    sds_procLOCALIZACAO: TStringField;
    sds_procPESO_QTDE: TFloatField;
    sds_procPRECOMEDIO: TFloatField;
    sds_estoque: TSQLDataSet;
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
    sds_estoqueDTAFAB: TDateField;
    sds_estoqueDTAVCTO: TDateField;
    sds_estoqueCCUSTOS: TIntegerField;
    sds_estoqueNF: TIntegerField;
    dsp_estoque: TDataSetProvider;
    cds_estoque: TClientDataSet;
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
    cds_estoqueVALORESTOQUE: TFloatField;
    cds_estoquePRECOUNIT: TFloatField;
    cds_estoqueVALORVENDA: TFloatField;
    cds_estoqueLOTES: TStringField;
    cds_estoqueDTAFAB: TDateField;
    cds_estoqueDTAVCTO: TDateField;
    cds_estoqueCCUSTOS: TIntegerField;
    cds_estoqueNF: TIntegerField;
    ds_estoque: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    meDta1: TJvDatePickerEdit;
    meDta2: TJvDatePickerEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    cod_cli, cod_mov, cod_ven :integer;
    dt_mov: TDateTime;
    cliente, vendedor, usalote, dataMov, conta_local, nSerie: string;
    { Public declarations }
  end;

var
  fMovLinhas: TfMovLinhas;
  centro_receita : integer;

implementation

uses sCtrlResize, UDm;

{$R *.dfm}

procedure TfMovLinhas.FormShow(Sender: TObject);
var
  icompA: integer;
begin
    sCtrlResize.CtrlResize(TForm(fMovLinhas));
    codmovdet := 1999999;
    centro_receita := 0;
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
    While not dm.cds_ccusto.Eof do
    begin
      ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
      ComboBox2.Items.Add(dm.cds_ccustoNOME.AsString);
      dm.cds_ccusto.Next;
    end;

    for icompA:=0 to ComponentCount - 1 do
    if (Components[icompA] is TDbEdit) then
    begin
      (Components[icompA] as TDbEdit).Enabled := False;
    end;
end;

procedure TfMovLinhas.btnProcurarClick(Sender: TObject);
Var
  SqlTexto, sqlStr: String;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    sqlStr := 'select * FROM SPESTOQUEFILTRO(';
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
      // se nao escolheu um item entao mostra todos
    sqlTexto := sqlTexto + '0, 32500';
    //==============================================================================
    //------------------------------------------------------------------------------
    //Por Categoria
    //------------------------------------------------------------------------------
    sqlTexto := sqlTexto + ',''TODOS SUBGRUPOS DO CADASTRO CATEGORIA''';

    //------------------------------------------------------------------------------
    //Natureza da operação
    //------------------------------------------------------------------------------
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
      // todas os tipos
      sqlTexto := sqlTexto + ', ''TODAS AS MARCAS CADASTRADAS NO SISTEMA''';

    //==============================================================================
    //------------------------------------------------------------------------------
    //Lote
    //------------------------------------------------------------------------------
    if (Edit1.Text <> '') then
    begin
      sqlTexto := sqlTexto + ', ''' + Edit1.Text + '''';
    end
    else
      // todas os tipos
      sqlTexto := sqlTexto + ', ''TODOS OS LOTES CADASTRADOS NO SISTEMA''';

    //==============================================================================
    //------------------------------------------------------------------------------
    //Por Familia (grupo)
    //------------------------------------------------------------------------------
     sqlTexto := sqlTexto + ',''TODOS OS GRUPOS CADASTRADOS NO SISTEMA'')';
    //==============================================================================
    IF (cds_estoque.Active) then
      cds_estoque.Close;
    cds_estoque.CommandText := sqlStr + sqlTexto;
    cds_estoque.Open;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfMovLinhas.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
