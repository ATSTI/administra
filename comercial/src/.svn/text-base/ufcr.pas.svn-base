unit ufcr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, FMTBcd, ImgList, Menus, DBClient, DB,
  DBLocal, DBLocalS, Grids, DBGrids, XPMenu, ExtCtrls, MMJPanel, Mask,
  StdCtrls, Buttons, DBCtrls, rpcompobase, rpvclreport, VDOBasePrinter,
  rplabelitem, VDODmPrinter, EExtenso, gbCobranca, JvAppStorage,
  JvAppXMLStorage, JvComponentBase, JvFormPlacement, JvExMask, JvToolEdit,
  JvBaseEdits, JvExControls, JvLabel, JvExDBGrids, JvDBGrid, DBXpress,
  JvExStdCtrls, JvCombobox, ComCtrls, JvExComCtrls, JvComCtrls,
  JvHtControls;

type
  Tfcrproc = class(TForm)
    ds_Cr: TDataSource;
    scdsCr_proc: TClientDataSet;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procDUP_REC_NF: TStringField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procRAZAOSOCIAL: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procSTATUSP: TStringField;
    scdsCr_proctot_titulo: TAggregateField;
    scdsCr_proctot_recebido: TAggregateField;
    scdsCr_procTotPend: TAggregateField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCODRECEBIMENTO: TIntegerField;
    sdsTITULO: TStringField;
    sdsEMISSAO: TDateField;
    sdsDATAVENCIMENTO: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsVALORTITULO: TFloatField;
    sdsVALOR_RESTO: TFloatField;
    sdsVALOR_PRIM_VIA: TFloatField;
    sdsSTATUS: TStringField;
    sdsDATARECEBIMENTO: TDateField;
    sdsVALORRECEBIDO: TFloatField;
    sdsN_DOCUMENTO: TStringField;
    sdsDUP_REC_NF: TStringField;
    sdsDP: TIntegerField;
    sdsNOMECLIENTE: TStringField;
    sdsRAZAOSOCIAL: TStringField;
    sdsVALORREC: TFloatField;
    sdsSTATUSP: TStringField;
    DataSource1: TDataSource;
    cds_total: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    sds_total: TSQLDataSet;
    DataSource2: TDataSource;
    sds_ch: TSQLDataSet;
    ImageList1: TImageList;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    btnNotaFiscal: TBitBtn;
    MMJPanel2: TMMJPanel;
    BitBtn10: TBitBtn;
    BitBtn15: TBitBtn;
    PopupMenu1: TPopupMenu;
    Executarconsulta1: TMenuItem;
    Receber1: TMenuItem;
    LimparCampos1: TMenuItem;
    Sair1: TMenuItem;
    Label16: TLabel;
    Label18: TLabel;
    repContasReceber: TVCLReport;
    repRelDuplicata: TVCLReport;
    Panel4: TPanel;
    Panel5: TPanel;
    sdsHISTORICO: TStringField;
    scdsCr_procHISTORICO: TStringField;
    sdsVIA: TStringField;
    scdsCr_procVIA: TStringField;
    VDODmPrinter1: TVDODmPrinter;
    cds_end_cli: TSQLDataSet;
    cds_end_cliCODENDERECO: TIntegerField;
    cds_end_cliCODCLIENTE: TIntegerField;
    cds_end_cliLOGRADOURO: TStringField;
    cds_end_cliBAIRRO: TStringField;
    cds_end_cliCOMPLEMENTO: TStringField;
    cds_end_cliCIDADE: TStringField;
    cds_end_cliUF: TStringField;
    cds_end_cliCEP: TStringField;
    cds_end_cliTELEFONE: TStringField;
    cds_end_cliTELEFONE1: TStringField;
    cds_end_cliTELEFONE2: TStringField;
    cds_end_cliFAX: TStringField;
    cds_end_cliE_MAIL: TStringField;
    cds_end_cliRAMAL: TStringField;
    cds_end_cliTIPOEND: TSmallintField;
    cds_end_cliDADOSADICIONAIS: TStringField;
    cds_end_cliDDD: TStringField;
    VCLReport1: TVCLReport;
    EvExtenso1: TEvExtenso;
    sdsCODVENDA: TIntegerField;
    scdsCr_procCODVENDA: TIntegerField;
    gbTitulo: TgbTitulo;
    sql_Banco: TSQLDataSet;
    sql_BancoCODBANCO: TSmallintField;
    sql_BancoBANCO: TStringField;
    sql_BancoNOMEBANCO: TStringField;
    sql_BancoCARTEIRA: TStringField;
    sql_BancoCODIGO_CEDENTE: TStringField;
    sql_BancoCODIGO_EMPRESA: TStringField;
    sql_BancoCODIGO_AGENCIA: TStringField;
    sql_BancoDIGITO_AGENCIA: TStringField;
    sql_BancoNUMERO_CONTA: TStringField;
    sql_BancoDIGITO_CONTA: TStringField;
    sql_BancoCODIGO_PLANO: TIntegerField;
    sql_BancoINSTRUCAO1: TStringField;
    sql_BancoINSTRUCAO2: TStringField;
    sql_BancoINSTRUCAO3: TStringField;
    sql_BancoINSTRUCAO4: TStringField;
    DataSetProvider2: TDataSetProvider;
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
    btnGeraMensalidade: TBitBtn;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    sdsDESCONTO: TFloatField;
    scdsCr_procDESCONTO: TFloatField;
    JvCalcEdit1: TJvCalcEdit;
    JvCalcEdit2: TJvCalcEdit;
    ds_conta: TDataSource;
    Label2: TLabel;
    JvCalcEdit3: TJvCalcEdit;
    JvDBGrid1: TJvDBGrid;
    ImageList2: TImageList;
    SelecionarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    sqlBuscaNota: TSQLQuery;    
    sdsBL: TIntegerField;
    scdsCr_procBL: TIntegerField;
    sdsCODIGOBOLETO: TStringField;
    scdsCr_procCODIGOBOLETO: TStringField;
    edtSelPend: TJvCalcEdit;
    Label17: TLabel;
    Label21: TLabel;
    edtSelRec: TJvCalcEdit;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    cbReceitas: TJvComboBox;
    Label14: TLabel;
    cbImpresso: TComboBox;
    Label1: TLabel;
    edValor: TEdit;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit1: TEdit;
    cbStatus: TComboBox;
    BitBtn4: TBitBtn;
    du: TEdit;
    edTitulo: TEdit;
    dblSerie: TComboBox;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    BitBtn7: TBitBtn;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn2: TBitBtn;
    edCodCliente: TEdit;
    edCliente: TEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    edCodCCusto: TComboBox;
    edVendedor: TEdit;
    edcodVendedor: TEdit;
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    cbForma: TComboBox;
    cbComboCaixa: TComboBox;
    rbConsolida: TCheckBox;
    procedure BitBtn4Click(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_boletoClick(Sender: TObject);
    procedure btnGeraMensalidadeClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meDta1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure SelecionarTodos1Click(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    imp: string;
    cCusto : Integer;
    { Public declarations }
  end;

var
  fcrproc: Tfcrproc;
  SqlCr, sqlTexto1, DataStr, sqlGrupoCR, impCR: String;
  nrec: array of integer;
  
implementation

uses uComercial, UDm, uListaClientes, uProcurar, ucrTitulo, uDuplicata,
  uRemessaTitulo, uMostraDetalhe, uRel_CR, uRel_CR1, uGeraCob, ufDlgLogin, uUtils,
  sCtrlResize, uNotaFiscalCr, UDMNF, uNotaf, uDescontoTitulos;

{$R *.dfm}

procedure Tfcrproc.BitBtn4Click(Sender: TObject);
begin
  cbStatus.Text:='';
end;

procedure Tfcrproc.edCodClienteExit(Sender: TObject);
begin
   if edCodCliente.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_cliente_proc.Open;
     edCliente.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;
end;

procedure Tfcrproc.BitBtn8Click(Sender: TObject);
begin
  fListaClientes:=TfListaClientes.Create(Application);
  Try
    fListaClientes.ShowModal;
    edCodCliente.Text:=IntToStr(fListaClientes.cdsCODCLIENTE.asInteger);
    edCliente.Text:=fListaClientes.cdsNOMECLIENTE.asString;
  Finally
    fListaClientes.ListaCliente.close;
    fListaClientes.Free;
  end;
end;

procedure Tfcrproc.BitBtn9Click(Sender: TObject);
begin
  inherited;
  edCodCliente.Text:='';
  edCliente.Text:='';
end;

procedure Tfcrproc.BitBtn11Click(Sender: TObject);
begin
   edCodVendedor.Text:='';
   edVendedor.Text:='';
end;

procedure Tfcrproc.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
  conta_local , banco_boleto: String;
begin
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.StatusRec.Count;
  for i := 0 to j - 1 do
  begin
    cbStatus.Items.Add(utilcrtitulo.StatusRec.Strings[i]);
  end;

  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbForma.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

  if not dm.cds_serie.Active then
    dm.cds_serie.Open;
  dm.cds_serie.First;
  while not dm.cds_serie.Eof DO
  begin
    dblSerie.Items.Add(dm.cds_serieSERIE.AsString);
    dm.cds_serie.Next;
   end;
  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dblSerie.Text := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if (dm.cds_7_contas.Active) then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  while not dm.cds_7_contas.Eof DO
  begin
    cbComboCaixa.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.Next;
  end;

  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BOLETO';
  dm.cds_parametro.Open;
  banco_boleto := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if (banco_boleto <> '') then
  begin
    if sql_Banco.Active then
      sql_Banco.Close;
    sql_Banco.Params[0].AsInteger := StrToInt(banco_boleto);
    sql_Banco.Open;
  end;

  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  // populo a combobox
  DM.cds_ccusto.First;
  while not DM.cds_ccusto.Eof do
  begin
    edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].Clear;
  dm.cds_parametro.Params[0].AsString := 'CONTASRECEITAS';
  dm.cds_parametro.Open;

  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql := 'Select * from PLANO ';
  str_sql := str_sql + 'WHERE ';
  str_sql := str_sql + 'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''';
  str_sql := str_sql + ' and CONSOLIDA = ''S'' ';
  str_sql := str_sql + ' order by NOME';
  DM.c_1_planoc.CommandText := str_sql;
  DM.c_1_planoc.Open;
  cbReceitas.Items.clear;
  while not (DM.c_1_planoc.eof) do
  begin
    cbReceitas.Items.add(dm.c_1_planocNOME.AsString);
    dm.c_1_planoc.Next;
  end;
  dm.cds_parametro.Close;

end;

procedure Tfcrproc.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fcrproc));
  cbStatus.SetFocus;
end;

procedure Tfcrproc.BitBtn12Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   if fProcurar.ShowModal=mrOk then
    begin
     edCodVendedor.Text:=IntToStr(dm.scds_usuario_procCODUSUARIO.asInteger);
     edVendedor.Text:=dm.scds_usuario_procNOMEUSUARIO.asString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure Tfcrproc.btnProcurarClick(Sender: TObject);
var varUtilCrProc : TUtils;
begin
  edtSelPend.Value := 0;
  edtSelRec.Value := 0;
  sqlTexto1 := '';
  SqlCr := '';
  cCusto := 0;
  if scdsCr_proc.Active then
     scdsCr_proc.Close;
  sqltexto1 :='select rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, ';
  sqltexto1 := sqltexto1 + ' rec.DATAVENCIMENTO, rec.CODCLIENTE, rec.VALORTITULO, ';
  sqltexto1 := sqltexto1 + ' rec.VALOR_RESTO, rec.VALOR_PRIM_VIA, rec.STATUS, rec.STATUSP,';
  sqltexto1 := sqltexto1 + ' rec.DATARECEBIMENTO, rec.VALORRECEBIDO, rec.DESCONTO, ';
  sqltexto1 := sqltexto1 + ' rec.VIA, rec.HISTORICO ,';
  sqltexto1 := sqltexto1 + ' rec.N_DOCUMENTO, rec.DUP_REC_NF, rec.DP,rec.BL, rec.CODVENDA,';
  sqltexto1 := sqltexto1 + ' rec.NOMECLIENTE, rec.RAZAOSOCIAL, rec.CODMOVIMENTO, ';
  sqltexto1 := sqltexto1 + ' rec.SALDO, rec.valorRec, rec.CODIGOBOLETO ';
  sqltexto1 := sqltexto1 + 'from RELCONTASRECEBER rec ';   // procedure
  SqlCr := ' WHERE (rec.STATUS <> ' + QuotedStr('NF') + ')';;//

  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Receitas
  //------------------------------------------------------------------------------
  if (cbReceitas.Text <> '') then
   begin
     if (not DM.c_1_planoc.Active) then
     begin
       if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].Clear;
       dm.cds_parametro.Params[0].AsString := 'CONTASRECEITAS';
       dm.cds_parametro.Open;
       DM.c_1_planoc.CommandText := 'Select * from PLANO WHERE ' +
         'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''' +
         ' and CONSOLIDA = ''S''' + ' order by NOME';
       DM.c_1_planoc.Open;
       dm.cds_parametro.Close;
     end;
     dm.c_1_planoc.Locate('NOME', cbReceitas.text, [loCaseInsensitive]);
       SqlCr := ' and rec.CONTACREDITO = ' + IntToStr(Dm.c_1_planocCODIGO.AsInteger);
   end;

  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
    if (medta1.Text<>datastr) then
      StrToDate(medta1.Text);
    if (medta2.Text<>datastr) then
      StrToDate(medta2.Text);
    if (medta1.Text<>datastr) then
      if (medta2.Text<>datastr) then
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE rec.EMISSAO BETWEEN '
        else
          SqlCr := SqlCr + ' AND rec.EMISSAO BETWEEN ';
          SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''';
          SqlCr := SqlCr + ' AND ';
          SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
      end;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      meDta1.SetFocus;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
    if (medta3.Text<>datastr) then
      StrToDate(medta3.Text);
    if (medta4.Text<>datastr) then
      StrToDate(medta4.Text);
    if (medta3.Text<>datastr) then
      if (medta4.Text<>datastr) then
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE rec.DATAVENCIMENTO BETWEEN '
        else
          SqlCr := SqlCr + ' AND rec.DATAVENCIMENTO BETWEEN ';
          SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
          SqlCr := SqlCr + ' AND ';
          SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
      end;
  except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       medTa3.SetFocus;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  if (rbConsolida.Checked = False) then
  begin
    try
      if (medta5.Text<>datastr) then
        StrToDate(medta5.Text);
      if (medta6.Text<>datastr) then
        StrToDate(medta6.Text);
      if (medta5.Text<>datastr) then
        if (medta6.Text<>datastr) then
        begin
          if SqlCr='' then
            SqlCr := SqlCr + ' WHERE rec.DATARECEBIMENTO BETWEEN '
          else
            SqlCr := SqlCr + ' AND rec.DATARECEBIMENTO BETWEEN ';
            SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
            SqlCr := SqlCr + ' AND ';
            SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
        end;
    except
      on EConvertError do
      begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         medTa5.SetFocus;
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Consolida foi preenchido
  //------------------------------------------------------------------------------
  if (rbConsolida.Checked = True) then
  begin
    try
      if (medta5.Text<>datastr) then
        StrToDate(medta5.Text);
      if (medta6.Text<>datastr) then
        StrToDate(medta6.Text);
      if (medta5.Text<>datastr) then
        if (medta6.Text<>datastr) then
        begin
          if SqlCr='' then
            SqlCr := SqlCr + ' WHERE rec.DATACONSOLIDA BETWEEN '
          else
            SqlCr := SqlCr + ' AND rec.DATACONSOLIDA BETWEEN ';
            SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
            SqlCr := SqlCr + ' AND ';
            SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
        end;
    except
      on EConvertError do
      begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         medTa5.SetFocus;
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //A Vencer
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE ((rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND ((rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)'  + ')';
      end;
      1:  // Vencido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE ((rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND ((rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)'  + ')';
      end;
      2:  // A Receber (A Vencer + Vencido)
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE ((rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND ((rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')'  + ')';
      end;
      3:  // Recebido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '8-' + ''')';
      end;
      5:  // Em Cobrança
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '9-' + ''')';
      end;
      6:  // Duplicata
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '10' + ''')';
      end;
      7:  // Todos
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS <> '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS <> ';
        SqlCr := SqlCr + QuotedStr('NF') + ')';
      end;

      8:  // Protesto
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '3-' + ''')';
      end;

      9:  // Cancelado
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '14' + ''')';
      end;
      10:  // Descontados
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.DESCONTADO = ' + QuotedStr('S') + ')'
        else
          SqlCr := SqlCr + ' AND (rec.DESCONTADO = ' + QuotedStr('S') + ')';
      end;
    end;
  end;
  //==============================================================================
  
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    varUtilCrProc := TUtils.Create;
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE (rec.FORMARECEBIMENTO = '
    else
      SqlCr := SqlCr + ' AND (rec.FORMARECEBIMENTO = ';
    SqlCr := SqlCr + QuotedStr(varUtilCrProc.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================
  
  //------------------------------------------------------------------------------
  //Caixa
  //------------------------------------------------------------------------------
  if (cbComboCaixa.Text <> '') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE (rec.CAIXA = '
    else
      SqlCr := SqlCr + ' AND (rec.CAIXA = ';
    dm.cds_7_contas.Locate('NOME', cbComboCaixa.Text, [loCaseInsensitive]);
    SqlCr := SqlCr + IntToStr(dm.cds_7_contasCODIGO.asInteger)  + ')';
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  // Boletos Impressos
  //------------------------------------------------------------------------------

  if (cbImpresso.Text <> '') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.BL = '
    else
      SqlCr := SqlCr + ' AND rec.BL = ';
      SqlCr := SqlCr + cbImpresso.Text ;
  end;
 
  //==============================================================================
  //------------------------------------------------------------------------------
  //Cliente
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.CODCLIENTE = '
    else
      SqlCr := SqlCr + ' AND rec.CODCLIENTE = ';
      SqlCr := SqlCr + edCodCliente.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.CODALMOXARIFADO = '
    else
      SqlCr := SqlCr + ' AND rec.CODALMOXARIFADO = ';
    SqlCr := SqlCr + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
    cCusto := dm.cds_ccustoCODIGO.AsInteger;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Vendedor
  //------------------------------------------------------------------------------
  if edCodVendedor.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.CODVENDEDOR = '
    else
      SqlCr := SqlCr + ' AND rec.CODVENDEDOR = ';
      SqlCr := SqlCr + edCodVendedor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    {------VerificANDo o tipo de uso do sistema ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'USOSISTEMA';
    dm.cds_parametro.Open;
    if (dm.cds_parametroDADOS.AsString = 'LOTEAMENTO') THEN
    begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE N_DOCUMENTO = '
      else
        SqlCr := SqlCr + ' AND rec.N_DOCUMENTO = ';
        SqlCr := SqlCr + '''' + edTitulo.Text + '''';
    end
    else
    begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE rec.TITULO = '
      else
        SqlCr := SqlCr + ' AND rec.TITULO = ';
        if dblSerie.Text <> '' then
          SqlCr := SqlCr + '''' + edTitulo.Text + '-' + dblSerie.Text + ''''
        else
          SqlCr := SqlCr + '''' + edTitulo.Text + '''';
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //nº Duplicata
  //------------------------------------------------------------------------------

  if du.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.DP = '
    else
      SqlCr := SqlCr + ' AND rec.DP = ';
    SqlCr := SqlCr + du.Text;

  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------
  if edValor.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.VALORTITULO = '
    else
      SqlCr := SqlCr + ' AND rec.VALORTITULO = ';
      SqlCr := SqlCr + edValor.Text;
  end;
  //==============================================================================

  impCR := sqlTexto1;
  scdsCr_proc.CommandText := sqlTexto1 + SqlCr + ' order by  rec.DATAVENCIMENTO;';
  sds.CommandText := scdsCr_proc.CommandText;

  scdsCr_proc.Open;

  Try
    if (not scdsCr_proc.IsEmpty) then
    begin
      if (scdsCr_proctot_titulo.Value > 0.0001) then
        JvCalcEdit1.Text := scdsCr_proctot_titulo.Value
      else
        JvCalcEdit1.Text := '0';

      if (scdsCr_procTotPend.Value > 0.0001) then
        JvCalcEdit3.Text := scdsCr_procTotPend.Value
      else
        JvCalcEdit3.Text := '0';

      if (scdsCr_proctot_recebido.Value > 0.0001) then
        JvCalcEdit2.Text := scdsCr_proctot_recebido.Value
      else
        JvCalcEdit2.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  JvDBGrid1.SetFocus;

end;

procedure Tfcrproc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    btnProcurar.Click;
  end;
end;

procedure Tfcrproc.BitBtn7Click(Sender: TObject);
begin
 meDta3.Text := '  /  /  ';
 meDta4.Text := '  /  /  ';
end;

procedure Tfcrproc.BitBtn2Click(Sender: TObject);
begin
 meDta1.Text := '  /  /  ';
 meDta2.Text := '  /  /  ';
end;

procedure Tfcrproc.BitBtn6Click(Sender: TObject);
begin
 meDta5.Text := '  /  /  ';
 meDta6.Text := '  /  /  ';
end;

procedure Tfcrproc.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure Tfcrproc.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [','] then Key := '.';
end;

procedure Tfcrproc.btnCancelarClick(Sender: TObject);
var icompA: integer;
begin
  for icompA:=0 to ComponentCount - 1 do
   if Components[icompA] is TEdit then
      (Components[icompA] as TEdit).Text := '';
  cbStatus.Text := '';
  if (scdsCr_proc.Active) then
    scdsCr_proc.Close;
end;

procedure Tfcrproc.btnIncluirClick(Sender: TObject);
  var vlr, vlrrec, vlrdesc, vlrjuros, vlrfunrural, vlrperda: double;
  i, clienteSelecionado : integer;
  selecionou : string;
begin
  try
    i := 1;
    vlr := 0;
    vlrrec := 0;
    vlrdesc := 0;
    vlrjuros := 0;
    vlrfunrural := 0;
    vlrperda := 0;

    if (scdsCr_procDUP_REC_NF.AsString = '') then
    begin
      MessageDlg('Marque o título a ser baixado!', mtWarning, [mbOK], 0);
      exit;
    end;
    clienteSelecionado := 0;
    selecionou := 'não';
    if dm.cds_cr.Active then
     dm.cds_cr.Close;
    dm.cds_cr.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger;
    dm.cds_cr.Open;
    dm.cds_cr.Edit;
    scdsCr_proc.DisableControls;
    scdsCr_proc.First;
    While not scdsCr_proc.Eof do
    begin
      if (scdsCr_procDUP_REC_NF.AsString = 'S') then
      begin
        if (clienteSelecionado = 0) then
         clienteSelecionado := scdsCr_procCODCLIENTE.AsInteger;
        if (clienteSelecionado <> scdsCr_procCODCLIENTE.AsInteger) then
        begin
         MessageDlg('Clientes diferentes selecionados.' + #10#13 +
           ' Operação disponível somente para o mesmo Cliente!', mtWarning, [mbOK], 0);
         scdsCr_proc.EnableControls;
         exit;
        end;
        setlength(nrec, i);
        nrec[i - 1] := scdsCr_procCODRECEBIMENTO.AsInteger;
        if (fcrtitulo.cds.active) then
         fcrtitulo.cds.close;
        fcrtitulo.cds.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger;
        fcrtitulo.cds.Open;
        vlr := vlr + fcrtitulo.cdsSUM.AsFloat;
        vlrfunrural := vlrfunrural + fcrtitulo.cdsSUM_1.AsFloat;
        vlrjuros := vlrjuros + fcrtitulo.cdsSUM_2.AsFloat;
        vlrperda := vlrperda +  fcrtitulo.cdsSUM_3.AsFloat;
        vlrdesc := vlrdesc +  fcrtitulo.cdsSUM_4.AsFloat;
        if (fcrtitulo.cdsSUM_5.AsFloat > 0) then
          vlrrec := vlrrec +  fcrtitulo.cdsSUM_5.AsFloat;
        i := i + 1;
      end;
      scdsCr_proc.Next;
    end;
    scdsCr_proc.EnableControls;
    if (dm.cds_cr.State in [dsBrowse, dsInactive]) then
      dm.cds_cr.Edit;
    if (dm.cds_crSTATUS.AsString <> '1-') then
      dm.cds_crVALOR_RESTO.AsFloat := vlr;
    dm.cds_crFUNRURAL.AsFloat := vlrfunrural;
    dm.cds_crJUROS.AsFloat := vlrjuros;
    dm.cds_crPERDA.AsFloat := vlrperda;
    dm.cds_crDESCONTO.AsFloat := vlrdesc;
    if (fcrtitulo.cdsSUM_5.AsFloat > 0) then
      dm.cds_crVALORRECEBIDO.AsFloat := vlrrec;
    if (i > 2) then
      dm.cds_crTITULO.AsString := 'Diversos';
    dm.cds_crCODVENDA.AsInteger := 0;
    fcrtitulo.cds.close;
    if (dm.cds_crSTATUS.AsString = '7-') then
    begin
      fcrTitulo.btnCancela_Baixa.Enabled := True;
      fcrTitulo.BitBtn2.Enabled := False;
    end;
    fCrTitulo.ShowModal;
  finally
    fCrProc.JvDBGrid1.SetFocus;
    scdsCr_proc.Close;
    scdscr_Proc.Open;
  end;
end;

procedure Tfcrproc.btnImprimirClick(Sender: TObject);
begin
  fRel_CR1 := TfRel_CR1.Create(Application);
  try
    fRel_CR1.ShowModal;
  finally
    fRel_CR1.Free;
  end;

end;

procedure Tfcrproc.BitBtn5Click(Sender: TObject);
var
  Valor_total :double;
  i : integer;
  TD: TTransactionDesc;
begin
  i := 1;
  Valor_total :=  0;
  if not scdsCr_proc.Active then
    exit;

  scdsCr_proc.DisableControls;
  scdsCr_proc.First;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    While not scdsCr_proc.Eof do
    begin
      if (scdsCr_procDUP_REC_NF.AsString = 'S') then
      begin
        str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
        str_sql := str_sql + ' WHERE CODRECEBIMENTO = ';
        str_sql := str_sql + IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
      end;

      if ((scdsCr_procSTATUS.AsString <> '9-') and
        (scdsCr_procSTATUS.AsString <> '10') and (scdsCr_procSTATUS.AsString <> '12'))
      then  begin
        if (scdsCr_procDUP_REC_NF.AsString = 'S') then
        begin
          setlength(nrec, i);
          nrec[i - 1] := scdsCr_procCODRECEBIMENTO.AsInteger;
          if (fcrtitulo.cds.active) then
            fcrtitulo.cds.close;
          fcrtitulo.cds.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger;
          fcrtitulo.cds.Open;
          Valor_total := Valor_total + fcrtitulo.cdsSUM.AsFloat;
          codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
          codcliente := scdsCr_procCODCLIENTE.AsInteger;
          dta_Emissao := DateToStr(scdsCr_procEMISSAO.AsDateTime);
          titulo := scdsCr_procTITULO.AsString;
          i := i + 1;
        end;
      end;
      scdsCr_proc.Next;      
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para Gerar Duplicata.', mtError, [mbOK], 0);
    exit;
  end;
  scdsCr_proc.EnableControls;

  try
    valor_dupl := Valor_total;
    fDuplicata:=TfDuplicata.Create(Application);
    if (Valor_total > 0) then
    begin
      fDuplicata.BitBtn2.Visible := false;
      fDuplicata.BitBtn1.Visible := true;
    end
    else begin
      if fDuplicata.cds_cr.Active then
        fDuplicata.cds_cr.Close;
      fDuplicata.cds_cr.Params[0].AsInteger := scdsCr_procDP.AsInteger;
      fDuplicata.cds_cr.Params[1].AsString := '99';
      fDuplicata.cds_cr.Open;
      valor_dupl := scdsCr_procVALOR_RESTO.AsFloat;
      fDuplicata.Edit3.Text := IntToStr(scdsCr_procDP.AsInteger);
      fDuplicata.BitBtn1.Visible := false;
      fDuplicata.BitBtn2.Visible := true;
    end;
    fDuplicata.ShowModal;
  finally
    fDuplicata.Free;
    scdsCr_proc.Close;
    scdscr_Proc.Open;
  end;
end;

procedure Tfcrproc.BitBtn1Click(Sender: TObject);
var
  TD: TTransactionDesc;
  Save_Cursor:TCursor;
  codClienteNF: integer;
begin
  codClienteNF := 0;
  // Abra a tela para pegar a dataEmssao, Vcto, e numero do Titulo
  fNotaFiscalCr := TfNotaFiscalCr.Create(Application);
  try
    fNotaFiscalCr.ShowModal;
    if (fNotaFiscalCr.gerado = 'sim') then
    begin
      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;    { Show hourglass cursor }
      try
        // Nota Fiscal
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        Try
          if (dm.cds_crSTATUS.AsString = '7-') then
          begin
            MessageDlg('Título já recebido.', mtWarning, [mbOK], 0);
            exit;
          end;
          scdsCr_proc.DisableControls;
          scdsCr_proc.First;
          dm.sqlsisAdimin.StartTransaction(TD);
          try
            While not scdsCr_proc.Eof do
            begin
              if (scdsCr_procDUP_REC_NF.AsString = 'S') then
              begin
                str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
                str_sql := str_sql + ' WHERE CODRECEBIMENTO = ';
                str_sql := str_sql + IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
                dm.sqlsisAdimin.ExecuteDirect(str_sql);
                codClienteNF := scdsCr_procCODCLIENTE.AsInteger;
              end;
              scdsCr_proc.Next;
            end;
            scdsCr_proc.EnableControls;
            dm.sqlsisAdimin.Commit(TD);
          except
            dm.sqlsisAdimin.Rollback(TD);
            MessageDlg('Erro para Gerar a nota.', mtError, [mbOK], 0);
            exit;
          end;
          if (codClienteNF = 0) then
          begin
            MessageDlg('Cliente selecionado inválido.', mtError, [mbOK], 0);
            exit;
          end;
          str_sql := 'EXECUTE PROCEDURE GERA_NF(';
          str_sql := str_sql + IntToStr(codClienteNF);
          str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', fNotaFiscalCr.dataEmissao));
          str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', fNotaFiscalCr.dataVencimento));
          str_sql := str_sql + ', ' + QuotedStr(fNotaFiscalCr.serie);
          str_sql := str_sql + ', ' + QuotedStr(fNotaFiscalCr.numero) + ')';
          dm.sqlsisAdimin.StartTransaction(TD);
          try
            dm.sqlsisAdimin.ExecuteDirect(str_sql);
            dm.sqlsisAdimin.Commit(TD);
          except
            dm.sqlsisAdimin.Rollback(TD);
            MessageDlg('Erro para Gerar a nota.', mtError, [mbOK], 0);
            exit;
          end;
        except
          MessageDlg('Erro para Gerar a nota.', mtError, [mbOK], 0);
          exit;
        end;
        if (sqlBuscaNota.Active) then
          sqlBuscaNota.Close;
        sqlBuscaNota.SQL.Clear;
        sqlBuscaNota.SQL.Add('select First 1 codMovimento from VENDA where codcliente = ' +
          IntToStr(codClienteNF) + ' and DATAVENDA = ' +
          QuotedStr(FormatDateTime('mm/dd/yyyy', fNotaFiscalCr.dataEmissao)) +
          ' and DATAVENCIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', fNotaFiscalCr.dataVencimento)) +
          ' and SERIE = ' + QuotedStr(fNotaFiscalCr.serie) + ' order by codMovimento desc');
        sqlBuscaNota.Open;
        // Abrindo a tela da nota
        //****************** ver como vou ter o código do Movimento para abrir esta no
        fNotaf := TfNotaf.Create(Application);
        try
          dmnf.cds_Movimento.Close;
          dmnf.cds_Movimento.Params[0].AsInteger := sqlBuscaNota.Fields[0].AsInteger;
          dmnf.cds_Movimento.Open;
          dmnf.cds_Mov_det.Close;
          dmnf.cds_Mov_det.Params[0].Clear;
          dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
          dmnf.cds_Mov_det.Open;
          //mostra venda
          if (dmnf.cds_venda.Active) then
            dmnf.cds_venda.Close;
          dmnf.cds_venda.Params[0].Clear;
          dmnf.cds_venda.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.asInteger;
          dmnf.cds_venda.Open;
          //Mostra NF
          if (dmnf.cds_nf.Active) then
            dmnf.cds_nf.Close;
          dmnf.cds_nf.Params[0].Clear;
          dmnf.cds_nf.Params[1].AsInteger := dmnf.cds_vendaCODVENDA.asInteger;
          dmnf.cds_nf.Open;
          if (not  dm.cds_empresa.Active) then
            dm.cds_empresa.open;
          fNotaf.cbFinanceiro.Checked := False;
          fNotaf.cbEstoque.Checked := False;
          fNotaf.ShowModal;
          if (dmnf.cds_nfSTATUS.AsString = 'S') then
            fNotaf.RadioGroup1.ItemIndex := 0
          else
            fNotaf.RadioGroup1.ItemIndex := 1;
        finally
          fNotaf.Free;
        end;
      finally
        Screen.Cursor := Save_Cursor;  { Always restore to normal }
      end;
    end; // Fim ShowModal
  finally
    fNotaFiscalCr.Free;
  end;
  dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP = 0');
end;

procedure Tfcrproc.BitBtn3Click(Sender: TObject);
begin
  if (not scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  if (scdsCr_procSTATUS.AsString <> '12') then
  begin
   MessageDlg('O Status deve ser "12-Duplica Banco" para este relatório !', mtWarning, [mbOK], 0);
   exit;
  end;
  if ( medta3.Text <> datastr) then
  begin
    repRelDuplicata.Report.Params.ParamByName('PDTA1').Value := formatdatetime('dd/mm/yy', StrToDate(medta3.Text));
  end;
  if ( medta4.Text <> datastr) then
  begin
    repRelDuplicata.Report.Params.ParamByName('PDTA2').Value := formatdatetime('dd/mm/yy', StrToDate(medta4.Text));
  end;
  repRelDuplicata.FileName := str_relatorio + 'rel_duplicata_enviada.rep';
  repRelDuplicata.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repRelDuplicata.Execute;

end;

procedure Tfcrproc.btnNotaFiscalClick(Sender: TObject);
var
nrdiames: Integer;
diasemana: array[1..7] of String;
diames: array[1..31] of String;
meses: array[1..12] of String;
dia, mes, ano: Word;
valor: Double;
acompo2 : TRpLabel;
begin
  inherited;
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    //*********************************
    // escreve o dia da semana pôr extenso
    diasemana[1]:= 'Domingo';
    diasemana[2]:= 'Segunda-feira';
    diasemana[3]:= 'Terça-feira';
    diasemana[4]:= 'Quarta-feira';
    diasemana[5]:= 'Quinta-feira';
    diasemana[6]:= 'Sexta-feira';
    diasemana[7]:= 'Sábado';

    //*********************************
    // escreve o dia do mês pôr extenso
    diames[1]:= 'Um';
    diames[2]:= 'Dois';
    diames[3]:= 'Tres';
    diames[4]:= 'Quatro';
    diames[5]:= 'Cinco';
    diames[6]:= 'Seis';
    diames[7]:= 'Sete';
    diames[8]:= 'Oito';
    diames[9]:= 'Nove';
    diames[10]:= 'Des';
    diames[11]:= 'Onze';
    diames[12]:= 'Doze';
    diames[13]:= 'Treze';
    diames[14]:= 'Quatorze';
    diames[15]:= 'Quinze';
    diames[16]:= 'Dezesseis';
    diames[17]:= 'Dezessete';
    diames[18]:= 'Dezoito';
    diames[19]:= 'Dezenove';
    diames[20]:= 'Vinte';
    diames[21]:= 'Vinte e um';
    diames[22]:= 'Vinte e dois';
    diames[23]:= 'Vinte e tres';
    diames[24]:= 'Vinte e quatro';
    diames[25]:= 'Vinte e cinco';
    diames[26]:= 'Vinte e seis';
    diames[27]:= 'Vinte e sete';
    diames[28]:= 'Vinte e oito';
    diames[29]:= 'Vinte e nove';
    diames[30]:= 'Trinta';
    diames[31]:= 'Trinta e um';

    //*********************************
    // escreve o mês pôr extenso
    meses[1]:= 'Janeiro';
    meses[2]:= 'Fevereiro';
    meses[3]:= 'Março';
    meses[4]:= 'Abril';
    meses[5]:= 'Maio';
    meses[6]:= 'Junho';
    meses[7]:= 'Julho';
    meses[8]:= 'Agosto';
    meses[9]:= 'Setembro';
    meses[10]:= 'Outubro';
    meses[11]:= 'Novembro';
    meses[12]:= 'Dezembro';

    VCLReport1.FileName := str_relatorio + 'promissoria.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    DecodeDate(scdsCr_procDATAVENCIMENTO.AsDateTime,ano,mes,dia);
    nrdiames := dia;

    VCLReport1.Report.Params.ParamByName('DIA').Value := diames[nrdiames];
    VCLReport1.Report.Params.ParamByName('MES').Value := meses[mes];
    VCLReport1.Report.Params.ParamByName('ANO').Value := INTTOSTR(ano);
    VCLReport1.Report.Params.ParamByName('VALOR').Value := floattostr(scdsCr_procVALOR_RESTO.AsFloat);
    valor := scdsCr_procVALOR_RESTO.AsFloat;



    VCLReport1.Report.Params.ParamByName('VALOREXTENSO').Value := EvExtenso1.GetExtenso(Valor);

    acompo2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel5'));
    if Assigned(acompo2) then
      acompo2.Text := INTTOSTR(dia)+' de '+meses[mes]+
      ' de '+INTTOSTR(ano);

    if (edCodCliente.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := scdsCr_procCODCLIENTE.AsInteger
    else
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := 999999999;
    if (edTitulo.Text <> '') then
      VCLReport1.Report.Params.ParamByName('TITULO').Value := scdsCr_procTITULO.AsString
    else
      VCLReport1.Report.Params.ParamByName('TITULO').Value := 'TODOSTITULO';

    if ( medta3.Text <> datastr) then
    begin
      VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(medta3.Text));
    end
    else
    begin
      MessageDlg('Preencha a Período de vencimento !', mtInformation, [mbOK], 0);
      exit;
    end;
    if ( medta4.Text <> datastr) then
    begin
      VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(medta4.Text));
    end;

    VCLReport1.Execute;
end;

procedure Tfcrproc.DBGrid1DblClick(Sender: TObject);
begin
   fMostraDetalhe := TfMostraDetalhe.Create(Application);
   try
     codigovenda := scdsCr_procCODVENDA.AsInteger;
     fMostraDetalhe.ShowModal;
   finally
     fMostraDetalhe.Free;
   end;
end;

procedure Tfcrproc.btn_boletoClick(Sender: TObject);
begin
  { Cedente - Dados do Cedente}

  gbTitulo.Sacado.Nome := scdsCr_procRAZAOSOCIAL.AsString; // Razao Social
  gbTitulo.DataDocumento := scdsCr_procEMISSAO.AsDateTime; // Data Emissão
  gbTitulo.ValorDocumento := scdsCr_procVALOR_RESTO.AsCurrency; // Valor Titulo
  gbTitulo.DataVencimento := scdsCr_procDATAVENCIMENTO.AsDateTime; // Data Vencimento

  gbTitulo.Cedente.Endereco.Rua := dm.cds_empresaENDERECO.AsString;
  //gbTitulo.Cedente.Endereco.Numero := dm.cds_empresaLOGRADOURO
  //gbTitulo.Cedente.Endereco.Bairro := dm.cds_empresaLOGRADOURO.AsString;
  //gbTitulo.Cedente.Endereco.Cidade := dm.cds_empresaCIDADE.AsString;
  //gbTitulo.Cedente.Endereco.Estado := dm.cds_empresaUF.AsString;
  //gbTitulo.Cedente.Endereco.CEP := dm.cds_empresaCEP.AsString;

  //gbTitulo.Cedente.ContaBancaria.fBanco.Codigo :=
  //gbTitulo.Cedente.ContaBancaria.fBanco.Codigo :=

  if not (dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  gbTitulo.Cedente.Nome := dm.cds_empresaEMPRESA.AsString;

  if (cds_end_cli.Active) then
    cds_end_cli.Close;
  cds_end_cli.Params[0].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
  cds_end_cli.Open;

  { SACADO - Dados do Cliente}

  gbTitulo.Sacado.Endereco.Rua := cds_end_cliLOGRADOURO.AsString; // Endereço
  gbTitulo.Sacado.Endereco.Bairro := cds_end_cliBAIRRO.AsString;  // Bairro
  gbTitulo.Sacado.Endereco.Cidade := cds_end_cliCIDADE.AsString;  // Cidade
  gbTitulo.Sacado.Endereco.Estado := cds_end_cliUF.AsString;      // UF
  gbTitulo.Sacado.Endereco.CEP := cds_end_cliCEP.AsString;        // CEP

   {Dados bo Banco }

  gbTitulo.Cedente.ContaBancaria.CodigoAgencia := sql_BancoCODIGO_AGENCIA.AsString;
  gbTitulo.Cedente.ContaBancaria.DigitoAgencia := sql_BancoDIGITO_AGENCIA.AsString;
  gbTitulo.Cedente.ContaBancaria.NumeroConta := sql_BancoNUMERO_CONTA.AsString;
  gbTitulo.Cedente.ContaBancaria.DigitoConta := sql_BancoDIGITO_CONTA.AsString;
  gbTitulo.Carteira := sql_BancoCARTEIRA.AsString;


  gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO1.AsString);
  gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO2.AsString);
  gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO3.AsString);
  gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO4.AsString);

  gbTitulo.Visualizar;
end;

procedure Tfcrproc.btnGeraMensalidadeClick(Sender: TObject);
  var vlr: double;
  i: integer;
begin
  i := 1;
  scdsCr_proc.DisableControls;
  scdsCr_proc.First;
  vlr := 0;
  While not scdsCr_proc.Eof do
  begin
    if (scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
     setlength(nrec, i);
     nrec[i - 1] := scdsCr_procCODRECEBIMENTO.AsInteger;
     if (fcrtitulo.cds.active) then
       fcrtitulo.cds.close;
     fcrtitulo.cds.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger;
     fcrtitulo.cds.Open;
     vlr := vlr + fcrtitulo.cdsSUM.AsFloat;
     i := i + 1;
    end;
    scdsCr_proc.Next;
  end;
  scdsCr_proc.EnableControls;

  fDescontoTitulos := TfDescontoTitulos.Create(Application);
  try
    fDescontoTitulos.usuariosis      := usulog;
    fDescontoTitulos.edPreco.Value   := vlr;
    fDescontoTitulos.edLiquido.Value := vlr;
    fDescontoTitulos.ShowModal;
  finally
    fDescontoTitulos.Free;
  end;
end;

procedure Tfcrproc.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_BACK) or (KEY = VK_DELETE) then
    //bPausa := True;
  if (KEY = 13) then edCliente.SelStart := Length(edCliente.Text);
  if (KEY = 27) then edCliente.Clear;
end;

procedure Tfcrproc.meDta1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure Tfcrproc.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCr_procSTATUSP then
  begin
    if ((scdsCr_procSTATUS.AsString = '5-')) then
    begin
      JvDBGrid1.Canvas.Font.Color := clRed;
      JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end
    else if (scdsCr_procSTATUS.AsString = '7-') then
    begin
      JvDBGrid1.Canvas.Font.Color := clBlue;
      JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end
    else if (scdsCr_procSTATUS.AsString = '8-') then
    begin
      JvDBGrid1.Canvas.Font.Color := clYellow;
      JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end
    else if (scdsCr_procSTATUS.AsString = '14') then
    begin
      JvDBGrid1.Canvas.Font.Color := clRed;
      JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
  end;
  // Selecionou ?
   if Column.Field = scdsCr_procDUP_REC_NF then
   begin
       JvDBGrid1.Canvas.FillRect(Rect);
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
       if scdsCr_procDUP_REC_NF.AsString = 'S' then
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
       else
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
   end;  
end;

procedure Tfcrproc.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = scdsCr_procDUP_REC_NF then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];

end;

procedure Tfcrproc.JvDBGrid1CellClick(Column: TColumn);
begin
  if Column.Field = scdsCr_procDUP_REC_NF then
  begin
     scdsCr_proc.Edit;
     if scdsCr_procDUP_REC_NF.AsString = 'S' then
     begin
       scdsCr_procDUP_REC_NF.AsString := '';
       edtSelPend.Value := edtSelPend.Value - scdsCr_procVALORREC.AsFloat;
       edtSelRec.Value := edtSelRec.Value - scdsCr_procVALORRECEBIDO.AsFloat;
     end
     else
     begin
       scdsCr_procDUP_REC_NF.AsString := 'S';
       edtSelPend.Value := edtSelPend.Value + scdsCr_procVALORREC.AsFloat;
       edtSelRec.Value := edtSelRec.Value + scdsCr_procVALORRECEBIDO.AsFloat;
     end;
     scdsCr_proc.post;
  end;
end;

procedure Tfcrproc.JvDBGrid1DblClick(Sender: TObject);
begin
   fMostraDetalhe := TfMostraDetalhe.Create(Application);
   try
     codigovenda := scdsCr_procCODVENDA.AsInteger;
     fMostraDetalhe.ShowModal;
   finally
     fMostraDetalhe.Free;
   end;
end;

procedure Tfcrproc.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   fMostraDetalhe := TfMostraDetalhe.Create(Application);
   try
     codigovenda := scdsCr_procCODVENDA.AsInteger;
     fMostraDetalhe.ShowModal;
   finally
     fMostraDetalhe.Free;
   end;
 end;

end;

procedure Tfcrproc.JvDBGrid1TitleClick(Column: TColumn);
begin
    scdsCr_proc.IndexFieldNames := Column.FieldName;
end;

procedure Tfcrproc.SelecionarTodos1Click(Sender: TObject);
begin
  edtSelPend.Value := 0;
  edtSelRec.Value := 0;
  scdsCr_proc.DisableControls;
  scdsCr_proc.First;
  while not scdsCr_proc.Eof do
  begin
     scdsCr_proc.Edit;
     scdsCr_procDUP_REC_NF.AsString := 'S';
     edtSelPend.Value := edtSelPend.Value + scdsCr_procVALORREC.AsFloat;
     edtSelRec.Value := edtSelRec.Value + scdsCr_procVALORRECEBIDO.AsFloat;
     scdsCr_proc.Post;
     scdsCr_proc.Next;
  end;
  scdsCr_proc.First;
  scdsCr_proc.EnableControls;
end;

procedure Tfcrproc.DesmarcarTodos1Click(Sender: TObject);
begin
  edtSelPend.Value := 0;
  edtSelRec.Value := 0;  
  scdsCr_proc.DisableControls;
  scdsCr_proc.First;
  while not scdsCr_proc.Eof do
  begin
     scdsCr_proc.Edit;
     scdsCr_procDUP_REC_NF.AsString := '';
     scdsCr_proc.Post;
     scdsCr_proc.Next;
  end;
  scdsCr_proc.First;
  scdsCr_proc.EnableControls;
end;

end.
