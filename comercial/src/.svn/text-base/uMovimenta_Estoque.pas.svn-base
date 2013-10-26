unit uMovimenta_Estoque;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   FMTBcd, XPMenu, Menus, DB, DBClient, Provider, SqlExpr,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, DBXpress, uMovimento, uCompraCls,
  uVendaCls, Dialogs, dateUtils;

type
  TfMovimenta_Estoque = class(TForm)
    DataSource1: TDataSource;
    sds_s: TSQLDataSet;
    DtSrc1: TDataSource;
    DtSrc: TDataSource;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    dsp_Movimento: TDataSetProvider;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detTotalPedido: TAggregateField;
    dsp_Mov_det: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    dbeProduto: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    XPMenu1: TXPMenu;
    MMJPanel3: TMMJPanel;
    Label15: TLabel;
    Incluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Procurar1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    sdslote: TSQLDataSet;
    sdsloteCODLOTE: TIntegerField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteDATAFABRICACAO: TDateField;
    sdsloteDATAVENCIMENTO: TDateField;
    sdsloteESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    sdsloteCODPRO: TStringField;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    cdslotesCODLOTE: TIntegerField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesDATAFABRICACAO: TDateField;
    cdslotesDATAVENCIMENTO: TDateField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRODUTO: TStringField;
    cdslotesCODPRO: TStringField;
    Label8: TLabel;
    Label10: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    BitBtn3: TBitBtn;
    sdsmd: TSQLDataSet;
    dspmd: TDataSetProvider;
    cdsmd: TClientDataSet;
    cdsmdCODDETALHE: TIntegerField;
    cdsmdCODMOVIMENTO: TIntegerField;
    cdsmdCODPRODUTO: TIntegerField;
    cdsmdICMS: TFloatField;
    cdsmdPRECO: TFloatField;
    cdsmdQUANTIDADE: TFloatField;
    cdsmdQTDE_ALT: TFloatField;
    cdsmdUN: TStringField;
    cdsmdBAIXA: TStringField;
    cdsmdCONTROLE: TSmallintField;
    cdsmdCOD_COMISSAO: TIntegerField;
    cdsmdLOTE: TStringField;
    cdsmdDTAFAB: TDateField;
    cdsmdDTAVCTO: TDateField;
    cdsmdCODPRO: TStringField;
    cdsmdPRODUTO: TStringField;
    cdsmdCODALMOXARIFADO: TIntegerField;
    cdsmdVALORUNITARIOATUAL: TFloatField;
    cdsmdQTDE_PCT: TFloatField;
    cdsmdALMOXARIFADO: TStringField;
    cdsmdCONTA_DESPESA: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    cdsDetalhe: TClientDataSet;
    cdsDetalheCODPRODMP: TIntegerField;
    cdsDetalheSUM: TFloatField;
    cdsDetalheUSAPRECO: TStringField;
    dspDetalhe: TDataSetProvider;
    sdsDetalhe: TSQLDataSet;
    sdsDetalheCODPRODMP: TIntegerField;
    sdsDetalheSUM: TFloatField;
    sdsDetalheUSAPRECO: TStringField;
    cds: TClientDataSet;
    cdsCODPRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsCODALMOXARIFADO: TIntegerField;
    cdsVALOR_PRAZO: TFloatField;
    cdsQTDE_PCT: TFloatField;
    cdsCONTA_DESPESA: TStringField;
    cdsLOCALIZACAO: TStringField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsUSALOTE: TStringField;
    cdsCODPRODUTO: TIntegerField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCODPRO: TStringField;
    sdsPRODUTO: TStringField;
    sdsCODALMOXARIFADO: TIntegerField;
    sdsVALOR_PRAZO: TFloatField;
    sdsQTDE_PCT: TFloatField;
    sdsCONTA_DESPESA: TStringField;
    sdsLOCALIZACAO: TStringField;
    sdsUNIDADEMEDIDA: TStringField;
    sdsVALORUNITARIOATUAL: TFloatField;
    sdsUSALOTE: TStringField;
    sdsCODPRODUTO: TIntegerField;
    sds_Mov_DetLOTES: TStringField;
    cds_Mov_detLOTES: TStringField;
    sdslotePRECO: TFloatField;
    cdslotesPRECO: TFloatField;
    sds_MovimentoCODCCUSTO: TSmallintField;
    cds_MovimentoCODCCUSTO: TSmallintField;
    sds_MovimentoNOTAFISCAL: TIntegerField;
    cds_MovimentoNOTAFISCAL: TIntegerField;
    Edit1: TEdit;
    Edit2: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    sds_MovimentoNOTAFISCAL_1: TIntegerField;
    cds_MovimentoNOTAFISCAL_1: TIntegerField;
    btnEntrada: TBitBtn;
    sds_MovimentoSERIE: TStringField;
    cds_MovimentoSERIE: TStringField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cbCodigo: TJvDBSearchComboBox;
    cbNome: TJvDBSearchComboBox;
    Label14: TLabel;
    sdsB: TSQLDataSet;
    dspB: TDataSetProvider;
    cdsB: TClientDataSet;
    dsB: TDataSource;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoOBSERVACAO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoOBSERVACAO: TStringField;
    sds_movMat: TSQLDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    SmallintField4: TSmallintField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    SmallintField5: TSmallintField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField5: TIntegerField;
    SmallintField6: TSmallintField;
    StringField8: TStringField;
    SmallintField7: TSmallintField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    dsp_movMat: TDataSetProvider;
    cds_movMat: TClientDataSet;
    dsd_movDetMat: TSQLDataSet;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    FloatField4: TFloatField;
    StringField25: TStringField;
    SmallintField15: TSmallintField;
    IntegerField18: TIntegerField;
    StringField26: TStringField;
    FloatField5: TFloatField;
    IntegerField19: TIntegerField;
    StringField27: TStringField;
    StringField28: TStringField;
    FloatField6: TFloatField;
    StringField29: TStringField;
    DateField3: TDateField;
    DateField4: TDateField;
    StringField30: TStringField;
    FloatField7: TFloatField;
    dsp_movDetMat: TDataSetProvider;
    cds_movDetMat: TClientDataSet;
    cds_movMatCODMOVIMENTO: TIntegerField;
    cds_movMatDATAMOVIMENTO: TDateField;
    cds_movMatCODCLIENTE: TIntegerField;
    cds_movMatCODNATUREZA: TSmallintField;
    cds_movMatSTATUS: TSmallintField;
    cds_movMatCODUSUARIO: TSmallintField;
    cds_movMatNOMECLIENTE: TStringField;
    cds_movMatDESCNATUREZA: TStringField;
    cds_movMatALMOXARIFADO: TStringField;
    cds_movMatCODVENDEDOR: TSmallintField;
    cds_movMatCODALMOXARIFADO: TIntegerField;
    cds_movMatNOMEFORNECEDOR: TStringField;
    cds_movMatCODFORNECEDOR: TIntegerField;
    cds_movMatTIPOTITULO: TSmallintField;
    cds_movMatDATA_SISTEMA: TSQLTimeStampField;
    cds_movMatNOMEUSUARIO: TStringField;
    cds_movMatPLACA: TStringField;
    cds_movMatMARCA_MODELO: TStringField;
    cds_movMatCOD_VEICULO: TIntegerField;
    cds_movMatBAIXAMOVIMENTO: TSmallintField;
    cds_movMatCONTROLE: TStringField;
    cds_movMatCODCCUSTO: TSmallintField;
    cds_movMatNOTAFISCAL: TIntegerField;
    cds_movMatNOTAFISCAL_1: TIntegerField;
    cds_movMatSERIE: TStringField;
    cds_movMatOBS: TStringField;
    cds_movMatOBSERVACAO: TStringField;
    cds_movDetMatCODDETALHE: TIntegerField;
    cds_movDetMatCODMOVIMENTO: TIntegerField;
    cds_movDetMatCODPRODUTO: TIntegerField;
    cds_movDetMatICMS: TFloatField;
    cds_movDetMatPRECO: TFloatField;
    cds_movDetMatQUANTIDADE: TFloatField;
    cds_movDetMatPRODUTO: TStringField;
    cds_movDetMatUN: TStringField;
    cds_movDetMatQTDE_ALT: TFloatField;
    cds_movDetMatBAIXA: TStringField;
    cds_movDetMatCONTROLE: TSmallintField;
    cds_movDetMatCODALMOXARIFADO: TIntegerField;
    cds_movDetMatALMOXARIFADO: TStringField;
    cds_movDetMatVALORUNITARIOATUAL: TFloatField;
    cds_movDetMatCOD_COMISSAO: TIntegerField;
    cds_movDetMatCONTA_DESPESA: TStringField;
    cds_movDetMatCODPRO: TStringField;
    cds_movDetMatQTDE_PCT: TFloatField;
    cds_movDetMatLOTE: TStringField;
    cds_movDetMatDTAFAB: TDateField;
    cds_movDetMatDTAVCTO: TDateField;
    cds_movDetMatLOTES: TStringField;
    cds_movDetMatPRECOCUSTO: TFloatField;
    sds_movMatCODORIGEM: TIntegerField;
    cds_movMatCODORIGEM: TIntegerField;
    sMatPrima: TSQLDataSet;
    sMatPrimaCODMOVIMENTO: TIntegerField;
    sds_Mov_DetSTATUS: TStringField;
    cds_Mov_detSTATUS: TStringField;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure btnProcurarClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure SetDataEntrada(dta: TDateTime);
    function GetDataEntrada: TDateTime;
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure cds_movDetMatNewRecord(DataSet: TDataSet);
    procedure cds_movMatNewRecord(DataSet: TDataSet);
    procedure cds_movMatReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_movDetMatReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_MovimentoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dta1Change(Sender: TObject);
  private
    { Private declarations }
  public
    cod_cli, cod_mov, cod_ven :integer;
    dt_mov: TDateTime;
    cliente, vendedor, usalote, dataMov, conta_local, nSerie: string;

    procedure baixamatprimas(tipomat: string; codmovt: integer);
    property DataEntrada: TDateTime read GetDataEntrada write SetDataEntrada;
    { Public declarations }
  end;

var
  fMovimenta_Estoque: TfMovimenta_Estoque;
  valorUnitario: Double;
  centro_receita, cod_nat, cod_vendedor_padrao, entsai, estoq1: integer;
  natureza, contas_pendentes, nome_vendedor_padrao,serie : string;


implementation

uses UDm, ufprocura_prod, uProdutoLote, uEnt_Sai_Lote, uFiltroEstoque,
  uLotes, uFiltroMovMaterias, sCtrlResize,  UDMNF;

{$R *.dfm}

procedure TfMovimenta_Estoque.btnIncluirClick(Sender: TObject);
begin
  cbCodigo.Text := '';
  cbNome.Text := '';
  if (DtSrc1.DataSet.Active) then
    DtSrc1.DataSet.Close;
    if DtSrc.DataSet.State in [dsInactive, dsBrowse] then
    begin
      cds_Mov_det.Params[0].Clear;
      cds_Mov_det.Params[1].Clear;
      DtSrc.DataSet.Open;
      DtSrc.DataSet.Append;
      DtSrc1.DataSet.Open;
      DtSrc1.DataSet.Append;
    end;

end;

procedure TfMovimenta_Estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (cds_Movimento.Active) then
    cds_Movimento.Close;
  if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
end;

procedure TfMovimenta_Estoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfMovimenta_Estoque.FormShow(Sender: TObject);
var
icompA: integer;
begin
   sCtrlResize.CtrlResize(TForm(fMovimenta_Estoque));

    MMJPanel1.Background.EndColor   := dm.corStart;
    MMJPanel1.Background.StartColor := dm.corEnd;
    MMJPanel3.Background.EndColor   := dm.corEnd;
    MMJPanel3.Background.StartColor := dm.corStart;

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
    {------Pesquisando na tab Parametro Vendedor Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      cod_vendedor_padrao := strToint(dm.cds_parametroDADOS.AsString);
      nome_vendedor_padrao := dm.cds_parametroD1.AsString;
    end else
    begin
      cod_vendedor_padrao := 1;
      nome_vendedor_padrao := '..'
    end;

  for icompA:=0 to ComponentCount - 1 do
  if (Components[icompA] is TDbEdit) then
  begin
    (Components[icompA] as TDbEdit).Enabled := False;
  end;

  if (dm.emppadrao <> '') then
  begin
    ComboBox1.Text := dm.emppadrao;
    ComboBox2.Text := dm.emppadrao;
    ComboBox1.Enabled := False;
    ComboBox2.Enabled := False;
  end;
end;

procedure TfMovimenta_Estoque.btnCancelarClick(Sender: TObject);
begin
  DtSrc.DataSet.Cancel;
  DtSrc1.DataSet.Cancel;
  //DtSrc.DataSet.Close;
  //DtSrc1.DataSet.Close;
end;

procedure TfMovimenta_Estoque.btnGravarClick(Sender: TObject);
var
  sql_sp: string;
  TDA: TTransactionDesc;
  FMov: TMovimento;
  FVen: TVendaCls;
  FCom: TCompraCls;
  codMovSaida, codMovEntrada : Integer;
  Save_Cursor:TCursor;
begin
  if (DtSrc1.State in [dsEdit]) then
  begin
    MessageDlg('Para alterar um item, exclua-o e faça a inclusão novamente!', mtWarning, [mbOK], 0);
    exit;
  end;

  if ((dta1.Date < (today-60)) and (dta2.Date < (today-60))) then
  begin
    MessageDlg('Data menor que 60 dias, não é permitido.', mtError, [mbOK], 0);
    exit;
  end;

  TDA.TransactionID := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
    FMov := TMovimento.Create;
    FVen := TVendaCls.Create;
    FCom := TCompraCls.Create;

    Try
      dm.sqlsisAdimin.StartTransaction(TDA);

      // ######  SAIDA   ###################
      FMov.CodMov      := 0;

      FMov.CodCCusto   := 0;
      IF (ComboBox1.Text <> '') then
      begin
        if (dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive])) then
          FMov.CodCCusto   := dm.cds_ccustoCODIGO.AsInteger;
      end;

      FMov.CodCliente  := 0;
      FMov.CodNatureza := 2;
      FMov.Status      := 0;
      FMov.CodUsuario  := 1;
      FMov.CodVendedor := 1;
      FMov.DataMov     := dta1.Date;

      codMovSaida := FMov.inserirMovimento(0);

      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        FMov.MovDetalhe.CodMov        := codMovSaida;
        FMov.MovDetalhe.CodProduto    := cds_Mov_detCODPRODUTO.AsInteger;
        FMov.MovDetalhe.Qtde          := cds_Mov_detQUANTIDADE.AsFloat;
        FMov.MovDetalhe.Preco         := cds_Mov_detPRECO.AsFloat;
        FMov.MovDetalhe.Baixa         := '1';
        FMov.MovDetalhe.inserirMovDet;
        cds_Mov_det.Next;
      end;

      fven.CodMov               := codMovSaida;
      fven.DataVenda            := dta1.Date;
      fven.DataVcto             := dta1.Date;
      fven.Serie                := 'O';
      fven.NotaFiscal           := codMovSaida;
      fven.CodCliente           := 1;
      fven.CodVendedor          := 1;
      fven.CodCCusto            := 51;
      IF (ComboBox1.Text <> '') then
      begin
        if (dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive])) then
          fven.CodCCusto        := dm.cds_ccustoCODIGO.AsInteger;
      end;
      fven.ValorPagar           := 0;
      fven.NParcela             := 1;
      fven.inserirVenda(0);

      dmnf.baixaEstoque(codMovSaida, dta2.Date, 'SAIDA');

      dm.sqlsisAdimin.Commit(TDA);

      // ########### Fim SAIDA  ######################


      dm.sqlsisAdimin.StartTransaction(TDA);

      // ########### ENTRADA    ######################
      FMov.CodMov      := 0;
      FMov.CodCCusto   := 0;
      IF (ComboBox2.Text <> '') then
      begin
        if (dm.cds_ccusto.Locate('NOME', ComboBox2.Text, [loCaseInsensitive])) then
          FMov.CodCCusto   := dm.cds_ccustoCODIGO.AsInteger;
      end;
      FMov.CodCliente  := 0;
      FMov.CodFornec   := 0;
      FMov.CodNatureza := 1;
      FMov.Status      := 0;
      FMov.CodUsuario  := 1;
      FMov.CodVendedor := 1;
      FMov.DataMov     := dta2.Date;

      codMovEntrada := FMov.inserirMovimento(0);

      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        FMov.MovDetalhe.CodMov        := codMovEntrada;
        FMov.MovDetalhe.CodProduto    := cds_Mov_detCODPRODUTO.AsInteger;
        FMov.MovDetalhe.Qtde          := cds_Mov_detQUANTIDADE.AsFloat;
        FMov.MovDetalhe.Preco         := cds_Mov_detPRECO.AsFloat;
        FMov.MovDetalhe.Baixa         := '0';
        FMov.MovDetalhe.inserirMovDet;
        cds_Mov_det.Next;
      end;

      fCom.CodMov               := codMovEntrada;
      fCom.DataCompra           := dta2.Date;
      fCom.DataVcto             := dta2.Date;
      fCom.Serie                := 'I';
      fCom.NotaFiscal           := codMovEntrada;
      fCom.CodFornecedor        := 1;
      fCom.CodComprador         := 1;
      fCom.CodUsuario           := 1;
      fCom.CodCCusto            := 51;
      IF (ComboBox2.Text <> '') then
      begin
        if (dm.cds_ccusto.Locate('NOME', ComboBox2.Text, [loCaseInsensitive])) then
          fCom.CodCCusto        := dm.cds_ccustoCODIGO.AsInteger;
      end;
      fCom.ValorPagar           := 0;
      fCom.NParcela             := 1;
      fCom.inserirCompra(0);

      dmnf.baixaEstoque(codMovEntrada, dta2.Date, 'ENTRADA');

      // ########### Fim ENTRADA  ######################

      dm.sqlsisAdimin.Commit(TDA);

      cds_Movimento.Cancel;

      MessageDlg('Movimento gravado com sucesso.', mtInformation,
           [mbOk], 0);

    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
      end;
    end;
  Finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    FCom.Free;
    FMov.Free;
    FVen.Free;
  end;

    {dt_mov := MaskEdit1.Date;
    if (cds_MovimentoOBS.IsNull) then
      cds_MovimentoOBS.AsString := 'BAIXADO' // Uso pra baixar Materia Prima só uma vez
    else
      cds_MovimentoOBS.AsString := 'BAIXADO2';  // Já foi gravado
  end;}
  { ---------------------------------------------------------------------}
end;

procedure TfMovimenta_Estoque.btnExcluirClick(Sender: TObject);
var deleta, delmov, delmovprim, delvenprim: string;
begin
  MessageDlg('Tem certeza que Deseja Excluir?', mtConfirmation, [mbYes, mbNo], 0);
  if (cds_MovimentoCODNATUREZA.AsInteger = 1) then
  begin
    deleta     := 'Delete From COMPRA WHERE CODMOVIMENTO = ';
    delvenprim := 'Delete From VENDA WHERE CODMOVIMENTO = ';
  {  Try
     FEstoque := TEstoque.Create;
      // Gravando o Estoque
      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        FEstoque.QtdeEntrada := (-1) * cds_Mov_detQUANTIDADE.AsFloat;
        FEstoque.CodProduto  := cds_Mov_detCODPRODUTO.AsInteger;
        FEstoque.Lote        := cds_Mov_detLOTE.AsString;
        FEstoque.CentroCusto := cds_MovimentoCODALMOXARIFADO.AsInteger;
        FEstoque.MesAno      := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        FEstoque.PrecoCompra := cds_Mov_detPRECO.AsFloat;
        FEstoque.CodDetalhe  := cds_Mov_detCODDETALHE.AsInteger;
        FEstoque.Status      := '0';
        FEstoque.inserirMes;
        cds_Mov_det.Next;
      end;
    Finally
      FEstoque.Free;
    end;
   }
  end;

  if (cds_MovimentoCODNATUREZA.AsInteger = 2) then
  begin
    deleta := 'Delete From VENDA WHERE CODMOVIMENTO = ';
    delvenprim := 'Delete From VENDA WHERE CODMOVIMENTO = ';

    {Try
      FEstoque := TEstoque.Create;
      // Gravando o Estoque
      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        FEstoque.QtdeSaida   := (-1) * cds_Mov_detQUANTIDADE.AsFloat;
        FEstoque.CodProduto  := cds_Mov_detCODPRODUTO.AsInteger;
        FEstoque.Lote        := cds_Mov_detLOTE.AsString;
        FEstoque.CentroCusto := cds_MovimentoCODALMOXARIFADO.AsInteger;
        FEstoque.MesAno      := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        FEstoque.PrecoVenda  := cds_Mov_detPRECO.AsFloat;
        FEstoque.CodDetalhe  := cds_Mov_detCODDETALHE.AsInteger;
        FEstoque.inserirMes;
        cds_Mov_det.Next;
      end;
    Finally
      FEstoque.Free;
    end;}


  end;

  deleta := deleta + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  delmov := 'Delete From MOVIMENTO WHERE CODMOVIMENTO = ';
  delmov := delmov + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);

  if (sMatPrima.Active) then
    sMatPrima.Close;
  sMatPrima.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  sMatPrima.Open;
  delvenprim := delvenprim + IntToStr(sMatPrimaCODMOVIMENTO.AsInteger);

  delmovprim := 'Delete From MOVIMENTO WHERE CODORIGEM = ';
  delmovprim := delmovprim + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);

  DM.sqlsisAdimin.ExecuteDirect(deleta);
  DM.sqlsisAdimin.ExecuteDirect(delmov);
  DM.sqlsisAdimin.ExecuteDirect(delvenprim);
  DM.sqlsisAdimin.ExecuteDirect(delmovprim);



  cds_Movimento.Close;
  cds_Mov_det.close;
  cds_Movimento.Params[0].Clear;
  cds_Movimento.Open;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  cds_Mov_det.Open;
end;

procedure TfMovimenta_Estoque.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfMovimenta_Estoque.btnNovoClick(Sender: TObject);
begin
  try
    if DtSrc1.State in [dsInsert] then
    begin
      DtSrc1.DataSet.Post;
      DtSrc1.DataSet.Append;
      dbeProduto.SetFocus;
    end;
    if DtSrc1.State in [dsBrowse] then
    begin
      DtSrc1.DataSet.Append;
      dbeProduto.SetFocus;
    end;
  except
    MessageDlg('Erro ao gravar !', mtError, [mbOK], 0);
  end;
end;

procedure TfMovimenta_Estoque.BitBtn8Click(Sender: TObject);
// Var str_del: String;
//var FEst: TEstoque;
begin
  if (cds_Movimento.State in [dsInsert, dsEdit]) then
    (DtSrc1.DataSet as TClientDataSet).ApplyUpdates(0);
{  str_del := 'DELETE FROM MOVIMENTODETALHE WHERE CODDETALHE = ';
  str_del := str_del + IntToStr(cds_Mov_detCODDETALHE.AsInteger);
//  str_del := str_del + '
  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    dm.sqlsisAdimin.ExecuteDirect(str_del);
  if cds_Mov_det.State in [dsInsert, dsEdit, dsBrowse] then
  begin
    cds_Mov_det.ApplyUpdates(0);
    dm.sqlsisAdimin.ExecuteDirect(str_del);
  end;
    cds_Mov_det.Close;
    cds_Mov_det.Params[0].Clear;
    cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open; }


  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    try
      if (cds_Mov_detSTATUS.AsString = '9') then
      begin
        // Item ja Lancado no Estoque baixa-lo;
        // Gravando o Estoque
  {      Try
          FEst := TEstoque.Create;
          if (cds_MovimentoCODNATUREZA.AsInteger = 1) then
          begin
            FEst.QtdeEntrada := (-1) * cds_Mov_detQUANTIDADE.AsFloat;
            FEst.PrecoCompra := cds_Mov_detPRECO.AsFloat;
          end;

          if (cds_MovimentoCODNATUREZA.AsInteger = 2) then
          begin
            FEst.QtdeSaida := (-1) * cds_Mov_detQUANTIDADE.AsFloat;
            FEst.PrecoVenda := cds_Mov_detPRECO.AsFloat;
          end;

          FEst.CodProduto  := cds_Mov_detCODPRODUTO.AsInteger;
          FEst.Lote        := cds_Mov_detLOTE.AsString;
          FEst.CentroCusto := cds_MovimentoCODALMOXARIFADO.AsInteger;
          FEst.MesAno      := cds_MovimentoDATAMOVIMENTO.AsDateTime;
          FEst.CodDetalhe  := cds_Mov_detCODDETALHE.AsInteger;
          FEst.inserirMes;
        Finally
          FEst.Free;
        end;
   }
      end;
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTODETALHE WHERE CODDETALHE = ' + InttoStr(cds_Mov_detCODDETALHE.AsInteger));
      //DtSrc1.DataSet.Delete;
      cds_Mov_det.Close;
      cds_Mov_det.Open;
    Except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      end;
    end;
  end;

  if cds_Movimento.State in [dsBrowse] then
     cds_Movimento.Edit;
    // (DtSrc1.DataSet as TClientDataSet).ApplyUpdates(0);

end;

procedure TfMovimenta_Estoque.DtSrcStateChange(Sender: TObject);
var icompA: integer;
begin
  for icompA:=0 to ComponentCount - 1 do
  if (Components[icompA] is TDbEdit) then
  begin
    (Components[icompA] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
  end;

  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
  btnProcurar.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnSair.Enabled := DtSrc.State in [dsBrowse,dsInactive];

end;

procedure TfMovimenta_Estoque.dbeProdutoExit(Sender: TObject);
begin
  varonde := 'compra';
  if (dbeProduto.Text = '') then exit;
  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
  dm.scds_produto_proc.Open;
  if dm.scds_produto_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    btnProdutoProcura.Click;
    exit;
  end;
  cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
  cds_Mov_detCODPRO.AsString := dm.scds_produto_procCODPRO.AsString;
  cds_Mov_detPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
  cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
  cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
  cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
  cds_Mov_detQUANTIDADE.AsFloat := 1;
  cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
  {Alterei aqui por causa do Caetano usa preço de Custo para dar entrada no estoque}
  {if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
     cds_Mov_detPRECO.AsFloat :=
     dm.scds_produto_procVALORUNITARIOATUAL.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
  else
     cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;}
  cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
  valorUnitario := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
  cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
  cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
  cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
  //Pego o Lote....
  usalote := 'nao';
  if (varonde <> 'compra') then
  if dm.scds_produto_procLOTES.AsString = 'S' then
  begin
    usalote := 'sim';
    label8.Visible := True;
    label10.Visible := True;
    ComboBox3.Visible := True;
    ComboBox4.Visible := True;
    fLotes := TfLotes.Create(Application);
    try
      if fLotes.cdslotes.Active then
        fLotes.cdslotes.Close;
      fLotes.cdslotes.Params[0].AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      fLotes.cdslotes.Open;
      while (not fLotes.cdslotes.Eof) do
      begin
        ComboBox4.Items.Add(fLotes.cdslotesLOTE.AsString);
        ComboBox3.Items.Add(fLotes.cdslotesLOTE.AsString);
        fLotes.cdslotes.Next;
      end;
      fLotes.cdslotes.First;
      fLotes.btnProdutoProcura.Enabled := False;
      var_F := 'estoque';
      fLotes.ShowModal;
    finally
      fLotes.Free;
    end;  
  end;
  dm.scds_produto_proc.Close;
end;

procedure TfMovimenta_Estoque.btnProdutoProcuraClick(Sender: TObject);
begin
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  varonde := 'MovEstoque';
  var_F := 'MovEstoque';
  fProcura_prod.cbTipo.ItemIndex := -1;
  fProcura_prod.cbTipo.Text := '';
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel1.Visible := false;
  fProcura_prod.Panel2.Visible := true;
  fProcura_prod.BitBtn1.Click;
  cds_Mov_detLOTE.AsString := '';
  fProcura_prod.ShowModal;
  if fProcura_prod.ShowModal = mrOk then
  begin
    if dtSrc.State=dsBrowse then
     cds_Mov_det.Edit;
     cds_Mov_detCODPRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
     cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
     cds_Mov_detPRODUTO.AsString := fProcura_prod.cds_procPRODUTO.AsString;
     cds_Mov_detQTDE_PCT.AsFloat := fProcura_prod.cds_procQTDE_PCT.AsFloat;
     cds_Mov_detUN.AsString := fProcura_prod.cds_procUNIDADEMEDIDA.AsString;
     cds_Mov_detQUANTIDADE.AsFloat := 1;
     cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
     valorUnitario := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
     cds_Mov_detCODALMOXARIFADO.AsInteger := fProcura_prod.cds_procCODALMOXARIFADO.AsInteger;
  end;
   usalote := 'nao';
   if (entsai <> 0) then
   if cds_Mov_detLOTE.AsString = '' then
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      usalote := 'sim';
      label8.Visible := True;
      label10.Visible := True;
      ComboBox3.Visible := True;
      ComboBox4.Visible := True;
      fLotes := TfLotes.Create(Application);
      try
        if fLotes.cdslotes.Active then
          fLotes.cdslotes.Close;
        fLotes.cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
        fLotes.cdslotes.Open;
        var_F := 'estoque';
        fLotes.btnProdutoProcura.Enabled := False;
        fLotes.btnIncluir.Enabled := False;
        fLotes.btnGravar.Enabled := False;
        fLotes.btnExcluir.Enabled := False;
        fLotes.btnCancelar.Enabled := False;
        fLotes.btnProcurar.Enabled := False;
        fLotes.ShowModal;
      finally
        fLotes.Free;
      end;
    end;
    if (fProcura_prod.cds_proc.Active) then
     fProcura_prod.cds_proc.Close;
    btnNovo.SetFocus;
end;

procedure TfMovimenta_Estoque.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (cds_Mov_detCODMOVIMENTO.AsInteger <> 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TfMovimenta_Estoque.cds_Mov_detCalcFields(DataSet: TDataSet);
begin
  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfMovimenta_Estoque.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.AsDateTime := Now;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger:=1 ;//usuario_logado;
    cds_MovimentoCODVENDEDOR.Value:=1;//usuario_logado;
    cds_MovimentoCODFORNECEDOR.AsInteger := 0;
    cds_MovimentoCODCLIENTE.AsInteger := 0;
    cod_cli := 0;
    cliente := 'Diversos';
    cod_ven := 1;
    vendedor := 'User';
end;

procedure TfMovimenta_Estoque.btnProcurarClick(Sender: TObject);
begin
 fFiltroEstoque := TfFiltroEstoque.Create(Application);
 form_1 := 1;
 try
   fFiltroEstoque.btnSair.Caption := 'F9-Retornar';
   fFiltroEstoque.ShowModal;
   if (cds_Movimento.Active) then
       cds_Movimento.Close;
   cds_Movimento.Params[0].AsInteger := IDMOV;
   cds_Movimento.Open;
   if (not cds_Movimento.IsEmpty) then
   begin
     if (cdsmd.Active) then
       cdsmd.close;
     cdsmd.Params[0].Clear;
     cdsmd.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
     cdsmd.Open;
   end;
   if (dm.cds_ccusto.Locate('CODIGO', cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive])) then
   begin
     if (cds_MovimentoCODNATUREZA.AsInteger = 1) then
     begin
       ComboBox2.Text := dm.cds_ccustoNOME.AsString;
       ComboBox1.Text := '';
       Edit2.Text := IntToStr(cds_MovimentoNOTAFISCAL_1.asInteger);
     end;
     if (cds_MovimentoCODNATUREZA.AsInteger = 2) then
     begin
       ComboBox1.Text := dm.cds_ccustoNOME.AsString;
       ComboBox2.Text := '';
       Edit1.Text := IntToStr(cds_MovimentoNOTAFISCAL.asInteger);
     end;
   end;
  cod_cli := cds_MovimentoCODCLIENTE.AsInteger;
  dt_mov := cds_MovimentoDATAMOVIMENTO.AsDateTime;
  cliente := cds_MovimentoNOMECLIENTE.AsString;
  vendedor := cds_MovimentoNOMEUSUARIO.AsString;
  cod_Ven := cds_MovimentoCODVENDEDOR.AsInteger;
  nSerie := cds_MovimentoSERIE.AsString;
  Serie := nSerie;
  { Natureza = 'Entrada' }
  natureza := cds_MovimentoDESCNATUREZA.AsString;
  cod_ven := cds_MovimentoCODUSUARIO.AsInteger;
   if (cds_Mov_det.Active) then
       cds_Mov_det.Close;
   cds_Mov_det.Params[0].Clear;
   cds_Mov_det.Params[1].AsInteger := IDMOV;
   Label15.Caption := texto_1;
   cds_Mov_det.Open;
   // Não dá pra editar , pois, dá problema ao gravar, mas é só a pessoa inserir
   // um novo movimento que não dá problema.
   cds_Movimento.Edit;
   btnEntrada.Enabled := True;
 finally
   fFiltroEstoque.Free;
 end;
end;

procedure TfMovimenta_Estoque.DBEdit9Exit(Sender: TObject);
var
    total :double;
begin
  inherited;
   if cds_Mov_detLOTE.AsString <> '' then
   begin
       if cdslotes.Active then
          cdslotes.Close;
       cdslotes.Params[0].AsString := cds_Mov_detLOTE.AsString;
       cdslotes.Open;
       total := cdslotesESTOQUE.Value - cds_Mov_detQUANTIDADE.Value;
      if ((ComboBox1.Text <> '') and (ComboBox2.Text <> '')) then
       if (total < 0) then
       begin
         MessageDlg('Estoque insuficiente para essa venda', mtWarning, [mbOK], 0);
         cdslotes.Close;
         DBEdit9.Text := '';
         dbeProduto.SetFocus;
         exit;
       end;
       cdslotes.Close;
   end;
end;

procedure TfMovimenta_Estoque.BitBtn3Click(Sender: TObject);
begin
  fFiltroMovMateriais:=TfFiltroMovMateriais.Create(Application);
  try
    dm.cds_ccusto.First;
    while not dm.cds_ccusto.Eof do
    begin
      fFiltroMovMateriais.ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
      dm.cds_ccusto.Next;
    end;

    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
    dm.cds_parametro.Open;
    fFiltroMovMateriais.Edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovMateriais.Edit4.Text := dm.cds_parametroD1.AsString;
    dm.cds_parametro.Close;
    fFiltroMovMateriais.ShowModal;

    cds_Movimento.Close;
    cds_Movimento.Params[0].AsInteger :=  fFiltroMovMateriais.cds_cnsCODMOVIMENTO.AsInteger;
    cds_Movimento.Open;

    if cds_Movimento.IsEmpty then
      exit;

    dm.cds_ccusto.Locate('CODIGO',cds_MovimentoCODCCUSTO.AsInteger, [loCaseInsensitive]);
    ComboBox1.Text := dm.cds_ccustoNOME.AsString;

    cod_cli :=  cds_MovimentoCODCLIENTE.AsInteger;
    dt_mov :=  cds_MovimentoDATAMOVIMENTO.AsDateTime;
    cliente := cds_MovimentoNOMECLIENTE.AsString;
    vendedor := cds_MovimentoNOMEUSUARIO.AsString;
    cod_Ven := cds_MovimentoCODVENDEDOR.AsInteger;
    nSerie := IntToStr(cds_MovimentoNOTAFISCAL.asInteger);

    cdsmd.Close;
    cdsmd.Params[0].Clear;
    cdsmd.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsmd.Open;
  finally
    fFiltroMovMateriais.Free;
  end;

  if MessageDlg('Deseja Incluir nos Itens abaixo,'+#13+#10+' os itens '+#13+#10+
    ' relacionados aos produtos abaixo ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    baixamatprimas('BAIXAENTESTOQUE', cds_MovimentoCODMOVIMENTO.AsInteger);
  end;
  cds_Movimento.Edit;
  cds_Mov_det.Edit;
end;

procedure TfMovimenta_Estoque.baixamatprimas(tipomat: string;
  codmovt: integer);
  var coddetalhe : integer;
    TD: TTransactionDesc;
    sql_sp : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cdsDetalhe.Active) then
    cdsDetalhe.Close;
  cdsDetalhe.Params[0].AsInteger := codmovt;
  cdsDetalhe.Params[1].AsString := tipomat;
  cdsDetalhe.Open;
  {** se não estiver vazio procuro pela matéria prima}
  if (not cdsDetalhe.IsEmpty) then
  begin
    cdsDetalhe.First;
    {** adiciono um novo movimento}
    // VENDA
    {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda---------}
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZASAIDA';
    dm.cds_parametro.Open;
    if dm.cds_parametro.IsEmpty then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.asString := 'SAIDA DE ESTOQUE P/ PRODUÇÃO';
      dm.cds_parametroPARAMETRO.asString := 'NATUREZASAIDA';
      dm.cds_parametroDADOS.asString := '2';  // CODNATUREZA -> Tab NATUREZAOPERACAO
      dm.cds_parametroCONFIGURADO.asString := '2';
      dm.cds_parametroD1.AsString := 'Saida';
      dm.cds_parametroD2.AsString := 'O'; // Serie - O = Output
      dm.cds_parametro.ApplyUpdates(0);
      if (sds_s.Active) then
        sds_s.Close;
      sds_s.CommandText := 'SELECT SERIE FROM SERIES WHERE SERIE = ' + '''' + 'O' + '''';
      sds_s.open;
      if (sds_s.IsEmpty) then
      begin
        if (sds_s.Active) then
          sds_s.Close;
        sds_s.CommandText := 'INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'O' + ''',' + '0)';
        sds_s.ExecSQL();
      end;
    end;
    cod_nat := strToint(dm.cds_parametroDADOS.asString);
    natureza := dm.cds_parametroD1.AsString;
    serie := dm.cds_parametroD2.AsString;
    dm.cds_parametro.Close;

    //***************************************************************************

    if (not cds_movMat.Active) then
      cds_movMat.Open;
    cds_movMat.Append;
    cds_movMatCODCLIENTE.AsInteger := cod_cli;
    cds_movMatDATAMOVIMENTO.AsDateTime := dt_mov;
    cds_movMatNOMECLIENTE.AsString := cliente;
    cds_movMatNOMEUSUARIO.AsString := vendedor;
    cds_movMatCODVENDEDOR.AsInteger := cod_Ven;
    { Natureza = 'Saída' }
    cds_movMatCODNATUREZA.AsInteger := 2;
    cds_movMatDESCNATUREZA.AsString := natureza;
    cds_movMatCODUSUARIO.AsInteger := cod_ven;
    cds_movMatCODORIGEM.AsInteger := codmovt;

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_movMatCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    cds_movMat.Post;
    cds_movMat.ApplyUpdates(0);

    while not cdsDetalhe.Eof do
    begin
      if (cds.Active) then
        cds.Close;
      cds.Params[0].AsInteger := cdsDetalheCODPRODMP.AsInteger;
      //cds.Params[1].AsString := tipomat;
      cds.Open;
      if (not cds.IsEmpty) then
      begin
         cds.First;
        if (not cds_movDetMat.Active) then
          cds_movDetMat.Open;
        while not cds.Eof do
        begin
          if (cds_movDetMat.State in [dsBrowse, dsInactive]) then
            cds_movDetMat.Append;
          {** aqui pego as Materias primas e lanço na movimento detalhe}
          cds_movDetMatCODPRODUTO.AsInteger := cdsCODPRODUTO.AsInteger;
          cds_movDetMatQUANTIDADE.AsFloat := cdsDetalheSUM.AsFloat;
          cds_movDetMatPRODUTO.AsString := cdsPRODUTO.AsString;
          cds_movDetMatCODPRO.AsString := cdsCODPRO.AsString;
          cds_movDetMatUN.AsString := cdsUNIDADEMEDIDA.AsString;
          cds_movDetMatCODMOVIMENTO.AsInteger := cds_movMatCODMOVIMENTO.AsInteger;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_movDetMatCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;

          if (cdsUSALOTE.AsString = 'S') then
          begin
            cds_movDetMatLOTE.AsString := cdslotesLOTE.AsString;
            cds_movDetMatLOTES.AsString := 'S';
            cds_movDetMatPRECO.AsFloat := cdslotesPRECO.AsFloat
          end
          else begin
            if (cdsDetalheUSAPRECO.AsString = 'PRECOVENDA') THEN
              cds_movDetMatPRECO.AsFloat := cdsVALOR_PRAZO.AsFloat
            else if (cdsDetalheUSAPRECO.AsString = 'PRECOCOMPRA') THEN
              cds_movDetMatPRECO.AsFloat := cdsVALORUNITARIOATUAL.AsFloat
            else
              cds_movDetMatPRECO.AsFloat := 0;
          end;
          if (cds_movDetMat.State in [dsInsert, dsEdit]) then
            cds_movDetMat.Post;
          cds.Next;
        end;
      end;
      cdsDetalhe.Next;
    end;
    try
    if (cds_movDetMat.State in [dsedit, dsinsert, dsbrowse]) then
      cds_movDetMat.ApplyUpdates(0);

    sql_sp := 'EXECUTE PROCEDURE LANCA_ENT_SAIDA(';
    dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
    if cds_MovMat.State in [dsBrowse] then
      cds_MovMat.Edit;
    cds_MovMatCODALMOXARIFADO.AsInteger := dm.cds_ccustoCODIGO.AsInteger;
    cds_MovMat.ApplyUpdates(0);
     // Executa insercao na tab Venda
    sql_sp := sql_sp + '1,'; //Tipo (0=Entrada, 1=Saida)
    sql_sp := sql_sp + IntToStr(cds_MovMatCODMOVIMENTO.asInteger);
    sql_sp := sql_sp + ',';
    sql_sp := sql_sp + IntToStr(cds_MovMatCODCLIENTE.asInteger);
    sql_sp := sql_sp + ',';
    sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';
    sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';
    sql_sp := sql_sp + IntToStr(cds_MovMatCODUSUARIO.asInteger);
    sql_sp := sql_sp + ',' + IntToStr(cds_MovMatCODALMOXARIFADO.AsInteger);//IntToStr(DBLookupComboBox1.KeyValue); //CodCentroCusto
    sql_sp := sql_sp + ',''' + serie + ''',';
    if (Edit2.Text = '') then
      sql_sp := sql_sp + ' null, null)'
    else
      sql_sp := sql_sp + edit2.Text + ', null)';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sql_sp);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
       MessageDlg('Erro no sistema, inclusão não foi finalizada!', mtError,
           [mbOk], 0);
    end;
    if (cdsLotes.Active) then
      cdslotes.Close;
    if (cds_Movimento.State in [dsInsert, dsEdit]) then
      btnGravar.Click;
    MessageDlg('Inclusão realizada com sucesso.', mtInformation, [mbOK], 0);

   except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, inclusão não foi finalizada!', mtError,
         [mbOk], 0);
   end;
   end;
end;

procedure TfMovimenta_Estoque.DtSrc1StateChange(Sender: TObject);
begin
  if (DtSrc1.State in [dsEdit, dsInsert]) then
    if (DtSrc.State in [dsBrowse, dsInactive]) then
      cds_Movimento.Edit;
end;

function TfMovimenta_Estoque.GetDataEntrada: TDateTime;
begin
 // Result : FDataEntrada;
end;

procedure TfMovimenta_Estoque.SetDataEntrada(dta: TDateTime);
begin
  { faz }
end;

procedure TfMovimenta_Estoque.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
    if (cds_mov_det.State in [dsEdit, dsInsert]) then
    if (cds_Mov_detPRECO.AsFloat = 0) then
    if (cds_Mov_detQUANTIDADE.AsFloat > 0) then
      cds_mov_detPRECO.AsFloat := cds_Mov_detValorTotal.AsFloat / cds_Mov_detQUANTIDADE.AsFloat;
  end;
end;

procedure TfMovimenta_Estoque.cds_movDetMatNewRecord(DataSet: TDataSet);
begin
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (cds_MovdetMatCODMOVIMENTO.AsInteger <> 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_movdetMatCODDETALHE.AsInteger := codmovdet;
  cds_MovdetMatCODMOVIMENTO.AsInteger := cds_MovMatCODMOVIMENTO.AsInteger;
end;

procedure TfMovimenta_Estoque.cds_movMatNewRecord(DataSet: TDataSet);
begin
  cds_movMatCODMOVIMENTO.asInteger := 1999999;
  cds_movMatDATAMOVIMENTO.AsDateTime := Now;
  cds_movMatDATA_SISTEMA.AsDateTime := Now;
  cds_movMatSTATUS.Value := 0;
  cds_movMatCODUSUARIO.AsInteger := 1;//usuario_logado;
  cds_movMatCODVENDEDOR.Value := 1;//usuario_logado;
  cds_movMatCODFORNECEDOR.AsInteger := 0;
  cds_movMatCODCLIENTE.AsInteger := 0;
end;

procedure TfMovimenta_Estoque.cds_movMatReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfMovimenta_Estoque.cds_movDetMatReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfMovimenta_Estoque.cds_MovimentoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfMovimenta_Estoque.cds_Mov_detReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfMovimenta_Estoque.dta1Change(Sender: TObject);
begin
  dta2.Date := dta1.date;
end;

end.
