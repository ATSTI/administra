unit uEntra_Sai_estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, XPMenu, Menus, Grids, DBGrids, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, MMJPanel, DB, DBClient, Provider, SqlExpr, DBXpress,
  JvDBDatePickerEdit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, DBLocal,
  DBLocalS, rpcompobase, rpvclreport;

type
  TfEntra_Sai_estoque = class(TForm)
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
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
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
    MaskEdit1: TJvDatePickerEdit;
    sds_MovimentoSERIE: TStringField;
    cds_MovimentoSERIE: TStringField;
    dbEdit1: TJvDBDatePickerEdit;
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
    cdsCODPRODUTO: TIntegerField;
    cdsCODPRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsPRECO_CUSTO: TFloatField;
    cdsESTOQUE: TFloatField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsLOTES2: TStringField;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    sqlProd: TSQLQuery;
    ExcluirItem1: TMenuItem;
    ExcluirItem2: TMenuItem;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    VCLReport1: TVCLReport;
    cdsPRECO_VENDA: TBCDField;
    cdsPRECO_COMPRA: TFloatField;
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
    procedure DBEdit1Exit(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure SetDataEntrada(dta: TDateTime);
    function GetDataEntrada: TDateTime;
    procedure btnEntradaClick(Sender: TObject);
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
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
  private
    loteant : string;
    { Private declarations }
    procedure busca_produto;
  public
    cod_cli, cod_mov, cod_ven :integer;
    dt_mov: TDateTime;
    estoq1 : double;
    cliente, vendedor, usalote, dataMov, conta_local, nSerie, ccpadrao: string;

    procedure baixamatprimas(tipomat: string; codmovt: integer);
    property DataEntrada: TDateTime read GetDataEntrada write SetDataEntrada;
    { Public declarations }
  end;

var
  fEntra_Sai_estoque: TfEntra_Sai_estoque;
  valorUnitario: Double;
  centro_receita, cod_nat, cod_vendedor_padrao, entsai: integer;
  natureza, contas_pendentes, nome_vendedor_padrao,serie : string;


implementation

uses UDm, ufprocura_prod, uProdutoLote, uEnt_Sai_Lote, uFiltroEstoque,
  uLotes, uFiltroMovMaterias, sCtrlResize, uEstoque, UDMNF,
  uLotes_Produtos;

{$R *.dfm}

procedure TfEntra_Sai_estoque.btnIncluirClick(Sender: TObject);
begin
  cbCodigo.Text := '';
  cbNome.Text := '';
  loteant := '';
  edit1.Text := '';
  edit2.Text := '';    
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

  if (DBEdit1.Visible = True) then
  begin
    dbEdit1.Enabled := True;
    DBEdit1.SetFocus;
  end
  else
    MaskEdit1.Text;

  if (Combobox1.Visible) then
    ComboBox1.Text := ccpadrao;
  if (Combobox2.Visible) then
    ComboBox2.Text := ccpadrao;

  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ENTSAICAMPOBRIG';
  dm.cds_parametro.Open;

  if not (dm.cds_parametroCONFIGURADO.AsString = 'S') then
  begin
    if (Edit1.Visible) then
    begin
      if (Edit1.Text = '') then
      begin
        if scds_serie_proc.Active then
          scds_serie_proc.Close;
        scds_serie_proc.Params[0].AsString:='O';
        scds_serie_proc.Open;
        Edit1.Text := IntToStr(scds_serie_procULTIMO_NUMERO.AsInteger+1);
      end;
    end;

    if (Edit2.Visible) then
    begin
      if (Edit2.Text = '') then
      begin
        if scds_serie_proc.Active then
          scds_serie_proc.Close;
        scds_serie_proc.Params[0].AsString:='I';
        scds_serie_proc.Open;
        Edit2.Text := IntToStr(scds_serie_procULTIMO_NUMERO.AsInteger+1);
      end;
    end;
  end;
end;

procedure TfEntra_Sai_estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (cds_MovimentoCODMOVIMENTO.AsInteger > 0) then
    dm.EstoqueAtualiza(cds_MovimentoCODMOVIMENTO.AsInteger);
  if (cds_Movimento.Active) then
    cds_Movimento.Close;
  if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
end;

procedure TfEntra_Sai_estoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfEntra_Sai_estoque.FormShow(Sender: TObject);
var
icompA: integer;
begin
   sCtrlResize.CtrlResize(TForm(fEntra_Sai_estoque));

    MMJPanel1.Background.EndColor   := dm.corStart;
    MMJPanel1.Background.StartColor := dm.corEnd;
    MMJPanel3.Background.EndColor   := dm.corEnd;
    MMJPanel3.Background.StartColor := dm.corStart;

    codmovdet := 1999999;
    centro_receita := 0;
    {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      if (dm.cds_parametroD1.AsString <> '') then
        centro_receita := strToint(dm.cds_parametroD1.AsString);
    end;
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
    dm.cds_ccusto.Locate('CODIGO',centro_receita, [loCaseInsensitive]);
    ccpadrao := dm.cds_ccustoNOME.AsString;


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
  dbEdit1.Enabled := False;
end;

procedure TfEntra_Sai_estoque.btnCancelarClick(Sender: TObject);
begin
  DtSrc.DataSet.Cancel;
  DtSrc1.DataSet.Cancel;
  //DtSrc.DataSet.Close;
  //DtSrc1.DataSet.Close;
end;

procedure TfEntra_Sai_estoque.btnGravarClick(Sender: TObject);
var   FEstoque: TEstoque;
  sql_sp: string;
  TD: TTransactionDesc;
  dataMov: TDateTime;
  ccusto : integer;
begin
  if (MaskEdit1.Checked) then
    dataMov := MaskEdit1.Date;
  if (dbEdit1.Checked) then
    dataMov := dbEdit1.Date;

  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ENTSAICAMPOBRIG';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if ( (Edit1.Text = '') and (Edit1.Visible = true) ) then
    begin
      if (cds_Mov_detLOTE.AsString = '')then
        MessageBox(0, 'Lote e Código de Saida obrigatórios.', '', MB_ICONWARNING or MB_OK)
      else
        MessageBox(0, 'Código de Saida obrigatório.', '', MB_ICONWARNING or MB_OK);
      Exit;
    end
    else if ( (Edit2.Text = '') and (Edit2.Visible = true))then
    begin
      if (cds_Mov_detLOTE.AsString = '')then
        MessageBox(0, 'Lote e Código de Entrada obrigatórios.', '', MB_ICONWARNING or MB_OK)
      else
        MessageBox(0, 'Código de Entrada obrigatório.', '', MB_ICONWARNING or MB_OK);
      Exit;
    end
    else if (cds_Mov_detLOTE.AsString = '')then
    begin
      MessageBox(0, 'Lote obrigatório.', '', MB_ICONWARNING or MB_OK);
      Exit;
    end;
  end;


  if (ComboBox1.Text <> '') then
  begin
    dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
    ccusto := dm.cds_ccustoCODIGO.AsInteger;
    if (dm.cCustoFechado(ccusto, dataMov)) then
    begin
      MessageDlg('Centro de Resultado já finalizado.', mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  
  if (ComboBox2.Text <> '') then
  begin
    dm.cds_ccusto.Locate('NOME', ComboBox2.Text, [loCaseInsensitive]);
    ccusto := dm.cds_ccustoCODIGO.AsInteger;
    if (dm.cCustoFechado(ccusto, dataMov)) then
    begin
      MessageDlg('Centro de Resultado já finalizado.', mtWarning, [mbOK], 0);
      Exit;
    end;
  end;

  {if (DtSrc1.State in [dsEdit]) then
  begin
    MessageDlg('Para alterar um item, exclua-o e faça a inclusão novamente!', mtWarning, [mbOK], 0);
    exit;
  end;}

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  { Estou gravando a data de Entrada no Campo Controle da Tab. Movimento }
  if (cds_Movimento.State in [dsEdit, dsInsert]) then
  begin
    if (MaskEdit1.Checked) then
      cds_MovimentoDATAMOVIMENTO.AsDateTime := MaskEdit1.Date;

    if (MaskEdit1.Visible = False) then
      MaskEdit1.Date := DbEdit1.Date;
    if (MaskEdit1.Visible = False) then
      MaskEdit1.Date := DbEdit1.Date;
    if (MaskEdit1.text = '') then
      MaskEdit1.Date := cds_MovimentoDATAMOVIMENTO.AsDateTime;
    dt_mov := MaskEdit1.Date;
  end;
  { ---------------------------------------------------------------------}
  if (cds_MovimentoDATAMOVIMENTO.AsDateTime < StrToDate('01/01/1990') ) then
  begin
    MessageDlg('Data Inválida', mtError, [mbOK], 0);
    exit;
  end;
  if DtSrc.DataSet.State in [dsInsert] then
  if (ComboBox1.Text = '') then // Entrada
  begin
  // COMPRA
      if (cbCodigo.Text <> '') then
      begin
        cds_MovimentoCODFORNECEDOR.AsInteger := StrToInt(cbCodigo.Text);
        cds_MovimentoNOMEFORNECEDOR.AsString := cbNome.Text;
      end;
      if (MaskEdit1.Checked) then
        cds_MovimentoDATAMOVIMENTO.AsDateTime := MaskEdit1.Date;
      {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda---------}
      if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'NATUREZAENTRADA';
      dm.cds_parametro.Open;
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.asString := 'ENTRADA DO ESTOQUE P/ PRODUÇÃO';
        dm.cds_parametroPARAMETRO.asString := 'NATUREZAENTRADA';
        dm.cds_parametroDADOS.asString := '1'; // CODNATUREZA -> Tab NATUREZAOPERACAO
        dm.cds_parametroCONFIGURADO.asString := '1';
        dm.cds_parametroD1.AsString := 'Entrada';
        dm.cds_parametroD2.AsString := 'I'; // Serie - I = Input
        dm.cds_parametro.ApplyUpdates(0);
        if (sds_s.Active) then
          sds_s.Close;
        sds_s.CommandText := 'SELECT SERIE FROM SERIES WHERE SERIE = ' + '''' + 'I' + '''';
        sds_s.open;
        if (sds_s.IsEmpty) then
        begin
          if (sds_s.Active) then
            sds_s.Close;
          sds_s.CommandText := 'INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'I' + ''',' + '0)';
          sds_s.ExecSQL();
        end;
        if (sds_s.Active) then
          sds_s.Close;
        sds_s.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE CODCLIENTE = 0';
        sds_s.open;
        if (sds_s.IsEmpty) then
        begin
          if (sds_s.Active) then
            sds_s.Close;
          sds_s.CommandText := 'INSERT INTO CLIENTES(CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, TIPOFIRMA'
          + ',SEGMENTO, REGIAO, DATACADASTRO, CODUSUARIO, STATUS) VALUES('
          + '0,''' + 'CLIENTE SISTEMA' + ''',' + '''' + 'CLIENTE SISTEMA' + ''','
          + '0,0,0,''' + '01/01/01' + ''',1,0)';
          sds_s.ExecSQL();
        end;
        if (sds_s.Active) then
          sds_s.Close;
        sds_s.CommandText := 'SELECT CODFORNECEDOR FROM FORNECEDOR WHERE CODFORNECEDOR = 0';
        sds_s.open;
        if (sds_s.IsEmpty) then
        begin
          if (sds_s.Active) then
            sds_s.Close;
          sds_s.CommandText := 'INSERT INTO FORNECEDOR(CODFORNECEDOR, NOMEFORNECEDOR, RAZAOSOCIAL, TIPOFIRMA'
          + ',SEGMENTO, REGIAO, DATACADASTRO, CODUSUARIO, STATUS) VALUES('
          + '0,''' + 'FORNECEDOR SISTEMA' + ''',' + '''' + 'FORNECEDOR SISTEMA' + ''','
          + '0,0,0,''' + '01/01/01' + ''',1,0)';
          sds_s.ExecSQL();
        end;
      end;
      cod_nat := strToint(dm.cds_parametroDADOS.asString);
      natureza := dm.cds_parametroD1.AsString;
      serie := dm.cds_parametroD2.AsString;
      dm.cds_parametro.Close;
  end
  else // Saida
  begin
    // VENDA
      if (cbCodigo.Text <> '') then
      begin
        cds_MovimentoCODCLIENTE.AsInteger := StrToInt(cbCodigo.Text);
        cds_MovimentoNOMECLIENTE.AsString := cbNome.Text;
      end;
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
   end;

    if DtSrc.DataSet.State in [dsInsert] then
    begin
      cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
      cds_MovimentoDESCNATUREZA.AsString := natureza;
      cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
      cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
    end;
    //***************************************************************************


  if cds_Movimento.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;

  try
    dm.sqlsisAdimin.StartTransaction(TD);
    cds_Movimento.ApplyUpdates(0);

    //********************************************************************************
    // aqui corrijo o codigo do movimento na tabela mov_detalhe
    if (cds_Mov_detCODMOVIMENTO.AsInteger = 1999999) then
    begin
      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        cds_Mov_det.Edit;
        cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        {if (edit2.text <> '') then
          cds_Mov_detLOTE.AsString := edit2.text;}
        cds_Mov_det.Post;
        cds_Mov_det.Next;
      end;
    end;
    cds_Mov_det.ApplyUpdates(0);

    //********************************************************************************

    if DtSrc1.State in [dsInsert, dsEdit] then
    begin
      if (cds_Mov_detCODPRO.IsNull) then
        cds_Mov_det.Cancel
      else
      begin
      if (cds_Mov_detCODMOVIMENTO.IsNull) then
        cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      cds_Mov_det.Post;
      end;
    end;
    if (cds_MovimentoCODMOVIMENTO.AsInteger <> cds_Mov_detCODMOVIMENTO.AsInteger) then
    begin
      cds_Mov_det.First;
      While not cds_Mov_det.Eof do
      begin
        cds_Mov_det.Edit;
        cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
        cds_Mov_det.Post;
        cds_Mov_det.Next;
      end;
    end;
    cds_Mov_det.ApplyUpdates(0);

    if (ComboBox1.Text = '') then // Entrada
    begin
    // COMPRA
      sql_sp := 'EXECUTE PROCEDURE LANCA_ENT_SAIDA(';
      dm.cds_ccusto.Locate('NOME', ComboBox2.Text, [loCaseInsensitive]);
      if (ComboBox3.Text <> '') then
      if (usalote = 'sim') then
      begin
        if (cds_Mov_det.State in [dsBrowse]) then
          cds_mov_det.Edit;
        cds_Mov_detLOTE.AsString := edit2.Text;
        cds_mov_det.ApplyUpdates(0);
      end;
      if cds_Movimento.State in [dsBrowse] then
        cds_Movimento.Edit;
      cds_MovimentoCODALMOXARIFADO.AsInteger := dm.cds_ccustoCODIGO.AsInteger;
      cds_Movimento.ApplyUpdates(0);
      // Executa insercao na tab Compra
      sql_sp := sql_sp + '0,'; //Tipo (0=Entrada, 1=Saida)
      sql_sp := sql_sp + IntToStr(cds_MovimentoCODMOVIMENTO.asInteger);
      sql_sp := sql_sp + ',';
      sql_sp := sql_sp + IntToStr(cds_MovimentoCODFORNECEDOR.asInteger);
      sql_sp := sql_sp + ',';
      sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';
      if (MaskEdit1.Text <> '') then
        sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy', StrToDate(MaskEdit1.Text)) + ''','
      else
        sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';
      sql_sp := sql_sp + IntToStr(cds_MovimentoCODUSUARIO.asInteger);
      sql_sp := sql_sp + ',' + IntToStr(dm.cds_ccustoCODIGO.AsInteger); //CodCentroCusto - Entrada para o Estoque nao precisa
      sql_sp := sql_sp + ',''' + serie + ''',' ;
      if (Edit2.Text = '') then
        sql_sp := sql_sp + ' null, null)'
      else
        sql_sp := sql_sp + edit2.Text + ', null)';

      dm.sqlsisAdimin.ExecuteDirect(sql_sp);

      // Gravando o Estoque
      {Try
        FEstoque := TEstoque.Create;
        FEstoque.baixaEstoque(cds_MovimentoCODMOVIMENTO.AsInteger, cds_MovimentoDATAMOVIMENTO.AsDateTime, 'ENTRADA');
      Finally
        FEstoque.Free;
      end;}
    end
    else // Saida
    begin
      // VENDA
      if (ComboBox4.Text <> '') then
      if (usalote = 'sim') then
      begin
        if (cds_Mov_det.State in [dsBrowse]) then
          cds_mov_det.Edit;
        cds_Mov_detLOTE.AsString := ComboBox4.Text;
        cds_mov_det.ApplyUpdates(0);
      end;
      //AQUI ENTRA NA SAIDA
      sql_sp := 'EXECUTE PROCEDURE LANCA_ENT_SAIDA(';
      dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
      if cds_Movimento.State in [dsBrowse] then
        cds_Movimento.Edit;
      cds_MovimentoCODALMOXARIFADO.AsInteger := dm.cds_ccustoCODIGO.AsInteger;
      cds_Movimento.ApplyUpdates(0);
       // Executa insercao na tab Venda
      sql_sp := sql_sp + '1,'; //Tipo (0=Entrada, 1=Saida)
      sql_sp := sql_sp + IntToStr(cds_MovimentoCODMOVIMENTO.asInteger);
      sql_sp := sql_sp + ',';
      sql_sp := sql_sp + IntToStr(cds_MovimentoCODCLIENTE.asInteger);
      sql_sp := sql_sp + ',';
      sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';
      if (MaskEdit1.Text <> '') then
        sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy', StrToDate(MaskEdit1.Text)) + ''','
      else
        sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';

      sql_sp := sql_sp + IntToStr(cds_MovimentoCODUSUARIO.asInteger);
      sql_sp := sql_sp + ',' + IntToStr(cds_MovimentoCODALMOXARIFADO.AsInteger); //CodCentrCusto
      if (Edit1.text = '') then
        sql_sp := sql_sp + ',''' + serie + ''',null,' + QuotedStr(edit2.Text) + ')'
      else
        sql_sp := sql_sp + ',''' + serie + ''',' + edit1.Text + ',' + QuotedStr(edit2.Text) + ')';
      dm.sqlsisAdimin.ExecuteDirect(sql_sp);
      // Gravando o Estoque
      {Try
        FEstoque := TEstoque.Create;
        FEstoque.baixaEstoque(cds_MovimentoCODMOVIMENTO.AsInteger, cds_MovimentoDATAMOVIMENTO.AsDateTime, 'SAIDA');
      Finally
        FEstoque.Free;
      end;}

    end;
    // Se as 2 Combos está preenchida então executo a procedure para gerar a entrada
    // no CCUsto informado.
    IF (ComboBox1.Text <> '') then
    IF (ComboBox2.Text <> '') then
    begin
      dm.cds_ccusto.Locate('NOME', ComboBox2.Text, [loCaseInsensitive]);
      // Executa SP para lançar a entrada informada na segunda combo
      sql_sp := 'execute procedure SP_ESTOQUE_ENTSAI(';
      sql_sp := sql_sp + IntToStr(cds_MovimentoCODMOVIMENTO.asInteger);
      sql_sp := sql_sp + ',' + IntToStr(dm.cds_ccustoCODIGO.AsInteger);//IntToStr(DBLookupComboBox1.KeyValue); //CodCentroCusto
      if (Edit1.Text = '') then
        sql_sp := sql_sp + ', null'
      else
        sql_sp := sql_sp + ',' + edit1.Text;
      if (Edit2.Text = '') then
        sql_sp := sql_sp + ', null)'
      else
        sql_sp := sql_sp + ',' + edit2.Text + ')';
      dm.sqlsisAdimin.ExecuteDirect(sql_sp);
      if (ComboBox3.Text <> '') then
      if (usalote = 'sim') then
      begin
        sql_sp := 'update movimentodetalhe set lote = ' ;
        sql_sp := sql_sp + QuotedStr(ComboBox3.Text) + ' where CODMOVIMENTO = ';
        sql_sp := sql_sp + IntToStr(cds_MovimentoCODMOVIMENTO.asInteger + 1);
        dm.sqlsisAdimin.ExecuteDirect(sql_sp);
      end;

      if (sds_s.Active) then
        sds_s.Close;
      sds_s.CommandText := 'SELECT CODMOVIMENTO, CODDETALHE from INFORMATIVO';
      sds_s.Open;
      sds_s.Fields[0].AsInteger;
      sds_s.Fields[1].AsInteger;
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
    end;
  end;

  //************VERIFICA E EXECUTA BAIXA DE MATÉRIA PRIMA************
  if (cds_MovimentoCODNATUREZA.AsInteger = 1) then
  Begin
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'BAIXAENTESTOQUE';
    dm.cds_parametro.Open;
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
        baixamatprimas('BAIXAENTESTOQUE', cds_MovimentoCODMOVIMENTO.AsInteger);
  end;

end;

procedure TfEntra_Sai_estoque.btnExcluirClick(Sender: TObject);
var deleta, delmov, delmovprim, delvenprim: string;
  FEstoque : TEstoque;
  TD: TTransactionDesc;
begin
  if (MessageDlg('Tem certeza que deseja excluir?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  delmov := 'Delete From MOVIMENTO WHERE CODMOVIMENTO = ';
  delmov := delmov + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);

  delvenprim := 'Delete From VENDA WHERE CODMOVIMENTO = ';

  if (sMatPrima.Active) then
    sMatPrima.Close;
  sMatPrima.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  sMatPrima.Open;
  delvenprim := delvenprim + IntToStr(sMatPrimaCODMOVIMENTO.AsInteger);

  delmovprim := 'Delete From MOVIMENTO WHERE CODORIGEM = ';
  delmovprim := delmovprim + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);

  if (cds_MovimentoCODNATUREZA.AsInteger = 1) then
  begin
    deleta := 'Delete From COMPRA WHERE CODMOVIMENTO = ';
    deleta := deleta + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      DM.sqlsisAdimin.ExecuteDirect(deleta);
      DM.sqlsisAdimin.ExecuteDirect(delvenprim);
      DM.sqlsisAdimin.ExecuteDirect(delmovprim);
      DM.sqlsisAdimin.ExecuteDirect(delmov);
      dm.sqlsisAdimin.Commit(TD);
      dm.EstoqueAtualiza(cds_MovimentoCODMOVIMENTO.AsInteger-1);
      MessageDlg('Registro excluido com sucesso.', mtInformation, [mbOK], 0);
    Except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD);
        Exit;
      end;
    end;
  end;

  if (cds_MovimentoCODNATUREZA.AsInteger = 2) then
  begin
    deleta := 'Delete From VENDA WHERE CODMOVIMENTO = ';
    deleta := deleta + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);

    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      // Gravando o Estoque
      DM.sqlsisAdimin.ExecuteDirect(deleta);
      DM.sqlsisAdimin.ExecuteDirect(delmov);
      DM.sqlsisAdimin.ExecuteDirect(delvenprim);
      DM.sqlsisAdimin.ExecuteDirect(delmovprim);
      dm.sqlsisAdimin.Commit(TD);
      dm.EstoqueAtualiza(cds_MovimentoCODMOVIMENTO.AsInteger-1);      
      MessageDlg('Registro excluido com sucesso.', mtInformation, [mbOK], 0);
    Except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD);
        Exit;
      end;
    end;
  end;
  cds_Movimento.Close;
  cds_Mov_det.close;
  cds_Movimento.Params[0].Clear;
  cds_Movimento.Open;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  cds_Mov_det.Open;
end;

procedure TfEntra_Sai_estoque.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfEntra_Sai_estoque.btnNovoClick(Sender: TObject);
begin
  loteant := cds_Mov_detLOTE.AsString;
  try
    if DtSrc1.State in [dsInsert] then
    begin
      DtSrc1.DataSet.Post;
      DtSrc1.DataSet.Append;
      cds_Mov_detLOTE.AsString := loteant;
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

procedure TfEntra_Sai_estoque.BitBtn8Click(Sender: TObject);
begin
  if (DtSrc.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;

  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
    DtSrc1.DataSet.Delete;
end;

procedure TfEntra_Sai_estoque.DtSrcStateChange(Sender: TObject);
var icompA: integer;
begin
  for icompA:=0 to ComponentCount - 1 do
  if (Components[icompA] is TDbEdit) then
  begin
    (Components[icompA] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
  end;
  dbEdit1.Enabled     := DtSrc.State in [dsInsert,dsEdit];
  ComboBox1.Enabled   := DtSrc.State in [dsInsert,dsEdit];
  dbeProduto.Enabled  := DtSrc.State in [dsInsert,dsEdit]; 
  btnIncluir.Enabled  := DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled   := DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled := DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled  := DtSrc.State in [dsBrowse];
  btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive];
  btnSair.Enabled     := DtSrc.State in [dsBrowse,dsInactive];

end;

procedure TfEntra_Sai_estoque.dbeProdutoExit(Sender: TObject);
begin
  varonde := 'compra';
  if dbeProduto.Text='' then exit;
  if dbeProduto.Field.OldValue<>dbeProduto.Field.NewValue then
  begin
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
  if dm.scds_produto_procLOTES.AsString = 'S' then
  begin
    usalote := 'sim';
  end;
   dm.scds_produto_proc.Close;
 end;
end;

procedure TfEntra_Sai_estoque.btnProdutoProcuraClick(Sender: TObject);
begin
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  varonde := 'EntraSai';
  var_F := 'estoque';
  fProcura_prod.cbTipo.ItemIndex := -1;
  fProcura_prod.cbTipo.Text := '';
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel1.Visible := false;
  fProcura_prod.Panel2.Visible := true;
  fProcura_prod.BitBtn1.Click;
  cds_Mov_detLOTE.AsString := '';
  fProcura_prod.ShowModal;
  {  if fProcura_prod.ShowModal = mrOk then
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
  end;}
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
    if fProcura_prod.cds_procLOTES.AsString = 'S' then
    begin
      usalote := 'sim';
    end;      
    if (fProcura_prod.cds_proc.Active) then
     fProcura_prod.cds_proc.Close;
    btnNovo.SetFocus;
end;

procedure TfEntra_Sai_estoque.cds_Mov_detNewRecord(DataSet: TDataSet);
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
  cds_Mov_detDTAFAB.AsDateTime := MaskEdit1.Date;
end;

procedure TfEntra_Sai_estoque.cds_Mov_detCalcFields(DataSet: TDataSet);
begin
  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfEntra_Sai_estoque.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    //cds_MovimentoDATAMOVIMENTO.AsDateTime := Now;
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

procedure TfEntra_Sai_estoque.btnProcurarClick(Sender: TObject);
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
       MaskEdit1.Text := DateToStr(cds_MovimentoDATAMOVIMENTO.AsDateTime);
       Edit2.Text := IntToStr(cds_MovimentoNOTAFISCAL_1.asInteger);
     end;
     if (cds_MovimentoCODNATUREZA.AsInteger = 2) then
     begin
       ComboBox1.Text := dm.cds_ccustoNOME.AsString;
       ComboBox2.Text := '';
       MaskEdit1.Text := '';
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

procedure TfEntra_Sai_estoque.DBEdit9Exit(Sender: TObject);
var
    total :double;
begin
  inherited;
   {if cds_Mov_detLOTE.AsString <> '' then
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
   end; }
end;

procedure TfEntra_Sai_estoque.BitBtn3Click(Sender: TObject);
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
    if (cds_MovimentoCODNATUREZA.AsInteger = 1) then
    Begin
      baixamatprimas('BAIXAENTESTOQUE', cds_MovimentoCODMOVIMENTO.AsInteger);
    end;
  end;
  cds_Movimento.Edit;
  cds_Mov_det.Edit;
end;

procedure TfEntra_Sai_estoque.baixamatprimas(tipomat: string;
  codmovt: integer);
  var coddetalhe : integer;
    TD: TTransactionDesc;
    sql_sp, tipo : string;
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

    //********VERIFICA SE JA FOI DADO BAIXA PARA EXCLUIR MOVIMENTO ANTIGO********
    if dm.cdsBusca.Active then
      dm.cdsBusca.Close;
    dm.cdsBusca.CommandText := 'SELECT * FROM MOVIMENTO WHERE CODORIGEM = '
    + IntToStr(codmovt) + ' AND CODCLIENTE = ' + IntToStr(cod_cli);
    dm.cdsBusca.Open;

    if not dm.cdsBusca.IsEmpty then
    begin
      if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 1) then
        tipo := 'ENTRADA'
      else if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 2) then
        tipo := 'SAIDA'
      else if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 3) then
        tipo := 'VENDA'
      else if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 4) then
        tipo := 'COMPRA';
      dmnf.cancelaEstoque(codmovt, dm.cdsBusca.FieldByName('DATAMOVIMENTO').AsDateTime, tipo);
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VENDA WHERE CODMOVIMENTO = '
      + IntToStr(dm.cdsBusca.FieldByName('CODMOVIMENTO').AsInteger));
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODORIGEM = ' + IntToStr(codmovt)
      + ' AND CODCLIENTE = ' + IntToStr(cod_cli));
    end;
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
        //while not cds.Eof do
        //begin
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

          if (cdsLOTES2.AsString = 'S') then
          begin
            cds_movDetMatLOTE.AsString := cdslotesLOTE.AsString;
            //cds_movDetMatLOTES.AsString := 'S';
            if (cdslotesPRECO.AsFloat > 0) then
              cds_movDetMatPRECO.AsFloat := cdslotesPRECO.AsFloat
            else
              cds_movDetMatPRECO.AsFloat := cdsPRECO_COMPRA.AsFloat;
          end
          else begin
            if (cdsDetalheUSAPRECO.AsString = 'PRECOVENDA') THEN
              cds_movDetMatPRECO.Value := cdsPRECO_VENDA.Value
            else if (cdsDetalheUSAPRECO.AsString = 'PRECOCOMPRA') THEN
              cds_movDetMatPRECO.asFloat := cdsPRECO_COMPRA.AsFloat
            else
              cds_movDetMatPRECO.AsFloat := 0;
          end;
          if (cds_movDetMat.State in [dsInsert, dsEdit]) then
            cds_movDetMat.Post;
        //  cds.Next;
        //end;
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
      Try
         dm.sqlsisAdimin.ExecuteDirect(sql_sp);
         DMNF.baixaEstoque(cds_movMatCODMOVIMENTO.AsInteger, cds_movMatDATAMOVIMENTO.AsDateTime, 'SAIDA');
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

procedure TfEntra_Sai_estoque.DBEdit1Exit(Sender: TObject);
begin
  MaskEdit1.Text := dbEdit1.Text;
end;

procedure TfEntra_Sai_estoque.DtSrc1StateChange(Sender: TObject);
begin
  if (DtSrc1.State in [dsEdit, dsInsert]) then
    if (DtSrc.State in [dsBrowse, dsInactive]) then
      cds_Movimento.Edit;
end;

function TfEntra_Sai_estoque.GetDataEntrada: TDateTime;
begin
 // Result : FDataEntrada;
end;

procedure TfEntra_Sai_estoque.SetDataEntrada(dta: TDateTime);
begin
  { faz }
end;

procedure TfEntra_Sai_estoque.btnEntradaClick(Sender: TObject);
var TD: TTransactionDesc;
    sql_sp1 : string;
begin
  if (ComboBox1.Text = '') then
  begin
    MessageDlg('Dados inválidos!', mtWarning, [mbOK], 0);
    Exit;
  end;

  if (cds_Movimento.IsEmpty) then
  begin
    MessageDlg('Dados inválidos!', mtWarning, [mbOK], 0);
    Exit;
  end;
  // Entrada de Itens que foram lançados apenas com sáida.
  if (not cds_Movimento.Active) then
    cds_Movimento.Open;
  cds_Movimento.Append;
  cds_MovimentoCODCLIENTE.AsInteger := cod_cli;
  cds_MovimentoDATAMOVIMENTO.AsDateTime := MaskEdit1.Date;
  cds_MovimentoNOMECLIENTE.AsString := cliente;
  cds_MovimentoNOMEUSUARIO.AsString := vendedor;
  cds_MovimentoCODVENDEDOR.AsInteger := cod_Ven;
  { Natureza = 'Entrada' }
  cds_MovimentoCODNATUREZA.AsInteger := 1;
  cds_MovimentoDESCNATUREZA.AsString := natureza;
  cds_MovimentoCODUSUARIO.AsInteger := cod_ven;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  cds_Movimento.ApplyUpdates(0);
  cdsmd.First;
  while not cdsmd.Eof do
  begin
    if (not cds_Mov_det.Active) then
      cds_Mov_det.Open;
    if (cds_Mov_det.State in [dsBrowse, dsInactive]) then
      cds_Mov_det.Append;
    {** aqui pego as Materias primas e lanço na movimento detalhe}
    cds_Mov_detCODPRODUTO.AsInteger := cdsmdCODPRODUTO.AsInteger;
    cds_Mov_detQUANTIDADE.AsFloat := cdsmdQUANTIDADE.AsFloat;
    cds_Mov_detPRODUTO.AsString := cdsmdPRODUTO.AsString;
    cds_Mov_detCODPRO.AsString := cdsmdCODPRO.AsString;
    cds_Mov_detUN.AsString := cdsmdUN.AsString;
    cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    cds_Mov_detPRECO.AsFloat := cdsmdVALORUNITARIOATUAL.AsFloat;
    if (cds_Mov_det.State in [dsInsert, dsEdit]) then
      cds_Mov_det.Post;
    cdsmd.Next;
  end;
  cds_Mov_det.ApplyUpdates(0);

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  sql_sp1 := 'EXECUTE PROCEDURE LANCA_ENT_SAIDA(';
  dm.cds_ccusto.Locate('NOME', ComboBox2.Text, [loCaseInsensitive]);
  if cds_Movimento.State in [dsBrowse] then
    cds_Movimento.Edit;
  cds_MovimentoCODALMOXARIFADO.AsInteger := dm.cds_ccustoCODIGO.AsInteger;
  cds_Movimento.ApplyUpdates(0);
   // Executa insercao na tab Venda
  sql_sp1 := sql_sp1 + '0,'; //Tipo (0=Entrada, 1=Saida)
  sql_sp1 := sql_sp1 + IntToStr(cds_MovimentoCODMOVIMENTO.asInteger);
  sql_sp1 := sql_sp1 + ',';
  sql_sp1 := sql_sp1 + IntToStr(cds_MovimentoCODCLIENTE.asInteger);
  sql_sp1 := sql_sp1 + ',';
  sql_sp1 := sql_sp1 + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';
  sql_sp1 := sql_sp1 + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + ''',';
  sql_sp1 := sql_sp1 + IntToStr(cds_MovimentoCODUSUARIO.asInteger);
  sql_sp1 := sql_sp1 + ',' + IntToStr(cds_MovimentoCODALMOXARIFADO.AsInteger);//IntToStr(DBLookupComboBox1.KeyValue); //CodCentroCusto
  sql_sp1 := sql_sp1 + ', null';
  sql_sp1 := sql_sp1 + ',' + Edit2.Text;
  if (nSerie = '') then
    nSerie := 'O';
  sql_sp1 := sql_sp1 + ',' + QuotedStr(nSerie) + ')';
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(sql_sp1);
  Try
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
    MessageDlg('Erro no sistema, inclusão não foi finalizada!', mtError,
      [mbOk], 0);
  end;
  btnEntrada.Enabled := False;
  MessageDlg('Entrada gerada com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfEntra_Sai_estoque.DBEdit12KeyPress(Sender: TObject;
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

procedure TfEntra_Sai_estoque.cds_movDetMatNewRecord(DataSet: TDataSet);
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

procedure TfEntra_Sai_estoque.cds_movMatNewRecord(DataSet: TDataSet);
begin
  cds_movMatCODMOVIMENTO.asInteger := 1999999;
  cds_movMatDATAMOVIMENTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
  cds_movMatDATA_SISTEMA.AsDateTime := Now;
  cds_movMatSTATUS.Value := 0;
  cds_movMatCODUSUARIO.AsInteger := 1;//usuario_logado;
  cds_movMatCODVENDEDOR.Value := 1;//usuario_logado;
  cds_movMatCODFORNECEDOR.AsInteger := 0;
  cds_movMatCODCLIENTE.AsInteger := 0;

end;

procedure TfEntra_Sai_estoque.cds_movMatReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfEntra_Sai_estoque.cds_movDetMatReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfEntra_Sai_estoque.cds_MovimentoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfEntra_Sai_estoque.cds_Mov_detReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
Action := raCancel;
raise exception.create(e.Message);
end;

procedure TfEntra_Sai_estoque.DBEdit10Exit(Sender: TObject);
begin
     //CARREGA TELA PARA PREENCHIMENTO DO LOTE POR PRODUTO
  {  if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_procLOTES.AsString = 'S' then
    begin
      if(cds_Mov_detLOTE.AsString = '') then
      begin
        fLotes_Produtos := TfLotes_Produtos.Create(Application);
        try
          fLotes_Produtos.DBEdit1.DataSource := fEntra_Sai_estoque.DtSrc1;
          fLotes_Produtos.JvDBDatePickerEdit1.DataSource := fEntra_Sai_estoque.DtSrc1;
          fLotes_Produtos.JvDBDatePickerEdit2.DataSource := fEntra_Sai_estoque.DtSrc1;
          fLotes_Produtos.TIPO := 'ENT_SAI';
          fLotes_Produtos.ShowModal;
        finally
          fLotes_Produtos.Free;
        end;
      end;
    end;
    dm.scds_produto_proc.Close;   }
end;

procedure TfEntra_Sai_estoque.DBEdit12Exit(Sender: TObject);
begin
  if (usalote = 'sim') then
    dbEdit3.SetFocus;
end;

procedure TfEntra_Sai_estoque.busca_produto;
begin
  if (sqlProd.Active) then
    sqlProd.Close;
  sqlProd.SQL.Clear;
  sqlProd.SQL.Add('SELECT TAM_LOTE FROM PRODUTOS WHERE CODPRODUTO = ' +
    IntToStr(cds_Mov_detCODPRODUTO.AsInteger));
  sqlProd.Open;
end;

procedure TfEntra_Sai_estoque.DBEdit4Exit(Sender: TObject);
begin
  if (cds_mov_det.State in [dsInsert, dsEdit]) then
  begin
    busca_produto;
    cds_Mov_detDTAVCTO.AsDateTime := cds_Mov_detDTAFAB.AsDateTime +
      sqlProd.fieldByName('TAM_LOTE').asInteger;
  end;
end;

procedure TfEntra_Sai_estoque.BitBtn2Click(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    MessageDlg('Grave as alterações antes de imprimir.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (RadioButton1.Checked = True) then
    VCLReport1.FileName := str_relatorio + 'produto_etiquetaCompra1.rep'
  else
    VCLReport1.FileName := str_relatorio + 'produto_etiquetaCompra.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('CODMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfEntra_Sai_estoque.MaskEdit1Change(Sender: TObject);
begin
  dbEdit4.Text := MaskEdit1.Text;
end;

end.
