unit uEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Mask, DBCtrls, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvDatePickerEdit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDBDatePickerEdit, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvExDBGrids, JvDBGrid, JvBaseEdits;

type
  TfEntrada = class(TfPai)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Label15: TLabel;
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
    sds_MovimentoOBS: TStringField;
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
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    DtSrc1: TDataSource;
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
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
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
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    dtProduto: TDataSource;
    cds_prod: TClientDataSet;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    DateField2: TDateField;
    StringField18: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    cds_prodICMS: TFloatField;
    cds_prodCODALMOXARIFADO: TIntegerField;
    cds_prodIPI: TFloatField;
    cds_prodCLASSIFIC_FISCAL: TStringField;
    cds_prodCST: TStringField;
    cds_prodBASE_ICMS: TFloatField;
    cds_prodPRODUTO: TStringField;
    cds_prodPRECOMEDIO: TBCDField;
    cds_prodCOD_COMISSAO: TIntegerField;
    cds_prodMARGEM_LUCRO: TFloatField;
    cds_prodCOD_BARRA: TStringField;
    cds_prodVALOR_PRAZO: TFloatField;
    cds_prodTIPO: TStringField;
    cds_prodCONTA_DESPESA: TStringField;
    cds_prodCONTA_RECEITA: TStringField;
    cds_prodCONTA_ESTOQUE: TStringField;
    cds_prodRATEIO: TStringField;
    cds_prodCODPRO: TStringField;
    cds_prodQTDE_PCT: TFloatField;
    cds_prodPESO_QTDE: TFloatField;
    cds_prodDATACADASTRO: TSQLTimeStampField;
    cds_prodMARGEM: TFloatField;
    cds_prodPRO_COD: TStringField;
    cds_prodDATAGRAV: TDateField;
    cds_prodCODFORN: TStringField;
    dsp_prod: TDataSetProvider;
    sds_prod: TSQLDataSet;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateField1: TDateField;
    StringField12: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    sds_prodICMS: TFloatField;
    sds_prodCODALMOXARIFADO: TIntegerField;
    sds_prodIPI: TFloatField;
    sds_prodCLASSIFIC_FISCAL: TStringField;
    sds_prodCST: TStringField;
    sds_prodBASE_ICMS: TFloatField;
    sds_prodPRODUTO: TStringField;
    sds_prodPRECOMEDIO: TBCDField;
    sds_prodCOD_COMISSAO: TIntegerField;
    sds_prodMARGEM_LUCRO: TFloatField;
    sds_prodCOD_BARRA: TStringField;
    sds_prodVALOR_PRAZO: TFloatField;
    sds_prodTIPO: TStringField;
    sds_prodCONTA_DESPESA: TStringField;
    sds_prodCONTA_RECEITA: TStringField;
    sds_prodCONTA_ESTOQUE: TStringField;
    sds_prodRATEIO: TStringField;
    sds_prodCODPRO: TStringField;
    sds_prodQTDE_PCT: TFloatField;
    sds_prodPESO_QTDE: TFloatField;
    sds_prodDATACADASTRO: TSQLTimeStampField;
    sds_prodMARGEM: TFloatField;
    sds_prodPRO_COD: TStringField;
    sds_prodDATAGRAV: TDateField;
    sds_prodCODFORN: TStringField;
    dsForn: TDataSource;
    GroupBox1: TGroupBox;
    dbeCliente: TDBEdit;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    dbeProduto: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    ExcluiProduto1: TMenuItem;
    IncluirProduto1: TMenuItem;
    Finalizar1: TMenuItem;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    sds_Mov_DetRATEIO: TStringField;
    cds_Mov_detRATEIO: TStringField;
    s_2: TSQLDataSet;
    d_2: TDataSetProvider;
    cdsForn: TClientDataSet;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    GroupBox7: TGroupBox;
    JvDatePickerEdit1: TJvDatePickerEdit;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    JvDBSearchComboBox2: TJvDBSearchComboBox;
    s_2CODFORNECEDOR: TIntegerField;
    s_2NOMEFORNECEDOR: TStringField;
    s_2PRAZOPAGAMENTO: TSmallintField;
    cdsFornCODFORNECEDOR: TIntegerField;
    cdsFornNOMEFORNECEDOR: TStringField;
    cdsFornPRAZOPAGAMENTO: TSmallintField;
    sds_prodCODPRODUTO: TIntegerField;
    cds_prodCODPRODUTO: TIntegerField;
    sdsLancado: TSQLDataSet;
    dspLancado: TDataSetProvider;
    cdsLancado: TClientDataSet;
    DataSource1: TDataSource;
    sdsLancadoCODCOMPRA: TIntegerField;
    sdsLancadoCODMOVIMENTO: TIntegerField;
    sdsLancadoCODFORNECEDOR: TIntegerField;
    sdsLancadoDATACOMPRA: TDateField;
    sdsLancadoDATAVENCIMENTO: TDateField;
    sdsLancadoNUMEROBORDERO: TIntegerField;
    sdsLancadoBANCO: TSmallintField;
    sdsLancadoCODCOMPRADOR: TSmallintField;
    sdsLancadoSTATUS: TSmallintField;
    sdsLancadoCODUSUARIO: TSmallintField;
    sdsLancadoDATASISTEMA: TDateField;
    sdsLancadoVALOR: TFloatField;
    sdsLancadoNOTAFISCAL: TIntegerField;
    sdsLancadoSERIE: TStringField;
    sdsLancadoDESCONTO: TFloatField;
    sdsLancadoCODCCUSTO: TSmallintField;
    sdsLancadoN_PARCELA: TSmallintField;
    sdsLancadoOPERACAO: TStringField;
    sdsLancadoFORMAPAGAMENTO: TStringField;
    sdsLancadoN_DOCUMENTO: TStringField;
    sdsLancadoCAIXA: TSmallintField;
    sdsLancadoMULTA_JUROS: TFloatField;
    sdsLancadoAPAGAR: TFloatField;
    sdsLancadoVALOR_PAGAR: TFloatField;
    sdsLancadoENTRADA: TFloatField;
    sdsLancadoN_BOLETO: TStringField;
    sdsLancadoSTATUS1: TStringField;
    sdsLancadoVALOR_ICMS: TFloatField;
    sdsLancadoVALOR_FRETE: TFloatField;
    sdsLancadoVALOR_SEGURO: TFloatField;
    sdsLancadoOUTRAS_DESP: TFloatField;
    sdsLancadoVALOR_IPI: TFloatField;
    sdsLancadoCFOP: TStringField;
    cdsLancadoCODCOMPRA: TIntegerField;
    cdsLancadoCODMOVIMENTO: TIntegerField;
    cdsLancadoCODFORNECEDOR: TIntegerField;
    cdsLancadoDATACOMPRA: TDateField;
    cdsLancadoDATAVENCIMENTO: TDateField;
    cdsLancadoNUMEROBORDERO: TIntegerField;
    cdsLancadoBANCO: TSmallintField;
    cdsLancadoCODCOMPRADOR: TSmallintField;
    cdsLancadoSTATUS: TSmallintField;
    cdsLancadoCODUSUARIO: TSmallintField;
    cdsLancadoDATASISTEMA: TDateField;
    cdsLancadoVALOR: TFloatField;
    cdsLancadoNOTAFISCAL: TIntegerField;
    cdsLancadoSERIE: TStringField;
    cdsLancadoDESCONTO: TFloatField;
    cdsLancadoCODCCUSTO: TSmallintField;
    cdsLancadoN_PARCELA: TSmallintField;
    cdsLancadoOPERACAO: TStringField;
    cdsLancadoFORMAPAGAMENTO: TStringField;
    cdsLancadoN_DOCUMENTO: TStringField;
    cdsLancadoCAIXA: TSmallintField;
    cdsLancadoMULTA_JUROS: TFloatField;
    cdsLancadoAPAGAR: TFloatField;
    cdsLancadoVALOR_PAGAR: TFloatField;
    cdsLancadoENTRADA: TFloatField;
    cdsLancadoN_BOLETO: TStringField;
    cdsLancadoSTATUS1: TStringField;
    cdsLancadoVALOR_ICMS: TFloatField;
    cdsLancadoVALOR_FRETE: TFloatField;
    cdsLancadoVALOR_SEGURO: TFloatField;
    cdsLancadoOUTRAS_DESP: TFloatField;
    cdsLancadoVALOR_IPI: TFloatField;
    cdsLancadoCFOP: TStringField;
    GroupBox8: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TJvDBGrid;
    JvDBSearchComboBox3: TJvDBSearchComboBox;
    Label4: TLabel;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsBusca: TClientDataSet;
    DataSource2: TDataSource;
    cdsBuscaCODCLIENTE: TIntegerField;
    cdsBuscaNOMECLIENTE: TStringField;
    cdsBuscaRAZAOSOCIAL: TStringField;
    sds_Mov_DetCODALMOXARIFADO: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TSmallintField;
    sds_Mov_DetNOMECLIENTE: TStringField;
    cds_Mov_detNOMECLIENTE: TStringField;
    JvDBSearchComboBox4: TJvDBSearchComboBox;
    cdsBuscaRA: TStringField;
    cdsBuscaCOD_FAIXA: TIntegerField;
    GroupBox9: TGroupBox;
    JvCalcEdit1: TJvCalcEdit;
    GroupBox10: TGroupBox;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    btnClienteProcura: TBitBtn;
    JvCalcEdit2: TJvCalcEdit;
    cdsBuscaGRUPO_CLIENTE: TStringField;
    procedure dbeClienteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure JvDBSearchComboBox2Change(Sender: TObject);
    procedure JvDBDatePickerEdit1Change(Sender: TObject);
    procedure JvDBSearchComboBox1Change(Sender: TObject);
    procedure cds_MovimentoBeforePost(DataSet: TDataSet);
    procedure JvDBSearchComboBox3Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDatePickerEdit1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure JvCalcEdit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    campocentrocusto, usarateio, status: String;
    procedure gravaVenda;
  end;

var
  fEntrada: TfEntrada;
  valorUnitario: Double;
  j, est_compra : integer;
  modo: string;

implementation

uses UDm , uFiltroMovLancamento, ufprocura_prod,
  uProcurar;


{$R *.dfm}

procedure TfEntrada.dbeClienteExit(Sender: TObject);
begin
  inherited;
   if dbeCliente.Text='' then exit;
  if dtsrc.State = dsInsert then
  begin
    if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    JvDBSearchComboBox2.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
    if (campocentrocusto = 'SIM') then
      ComboBox1.SetFocus
    else
      JvDBDatePickerEdit1.SetFocus;
  end
  else
  if dbeCliente.Field.OldValue<>dbeCliente.Field.NewValue then
  begin
    if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    JvDBSearchComboBox2.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
    if (campocentrocusto = 'SIM') then
      ComboBox1.SetFocus
    else
      JvDBDatePickerEdit1.SetFocus;
  end;


end;

procedure TfEntrada.FormCreate(Sender: TObject);
begin
  inherited;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    ComboBox1.Enabled := True;
    campocentrocusto := 'SIM';
  end
  else begin
    ComboBox1.Enabled := False;
    campocentrocusto := 'NAO';
  end;

  // Listas as contas de receitas
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  While not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    ComboBox2.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;

  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTROLE';
  dm.cds_parametro.Open;
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'N' then
  begin
    DBEDit1.TabStop := False;
  end;
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    DBEDit1.TabStop := True;
  end;
  dm.cds_parametro.Close;

end;

procedure TfEntrada.btnIncluirClick(Sender: TObject);
begin
  inherited;
  status := 'INSERIR';
  if (not cdsBusca.Active) then
  begin
    cdsBusca.Params[0].AsString := 'ASH';
    cdsBusca.Open;
    ComboBox1.ItemIndex := 0;
  end;
  J := 1;
  modo := 'incluir';
  if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
 
  cds_MovimentoCODNATUREZA.AsInteger := 4;
  cds_MovimentoDESCNATUREZA.AsString := 'Compra';
  cds_MovimentoCODUSUARIO.AsInteger := 1;
  cds_MovimentoNOMEUSUARIO.AsString := 'x';

  dbeCliente.Text := '';
  dbeCliente.SetFocus;

  if DtSrc1.DataSet.State in [dsInactive] then
  begin
    DtSrc1.DataSet.Open;
    DtSrc1.DataSet.Append;
  end;
  if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;

  btnClienteProcura.Enabled := true;
  btnProdutoProcura.Enabled := true;

  if (not cdsForn.Active) then
    cdsForn.Open;

  if (not cds_prod.Active) then
    cds_prod.Open;

  JvDBSearchComboBox1.Text := '';
  JvDBSearchComboBox2.Text := '';
  dbeCliente.SetFocus;
end;

procedure TfEntrada.btnGravarClick(Sender: TObject);
begin
  status := '';
  if cds_Movimento.State in [dsInsert] then
  begin
  if cds_Mov_det.State in [dsInsert ,dsEdit] then
  if (cds_Mov_detCODPRODUTO.IsNull ) then
    begin
    DtSrc1.DataSet.Cancel;
    end;
    if (JvDBSearchComboBox1.Text <> '') then
    begin
  if cds_Mov_det.State in [dsBrowse] then
    cds_Mov_det.Edit;
      cds_Mov_detCODPRODUTO.AsInteger := cds_prodCODPRODUTO.AsInteger;
      cds_Mov_detCODPRO.AsString := cds_prodCODPRO.AsString;
      cds_Mov_detCODALMOXARIFADO.AsInteger := cdsBuscaCODCLIENTE.AsInteger;
      cds_Mov_detUN.AsString := cdsBuscaCOD_FAIXA.AsString;
    end;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  IF (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    dm.cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    cds_MovimentoCODALMOXARIFADO.AsInteger := dm.cds_ccustoCODIGO.AsInteger;
  end;
  inherited;
  //********************************************************************************
  // aqui corrijo o codigo do movimento na tabela mov_detalhe
  cds_Mov_det.DisableControls;
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
      cds_Mov_det.Post;
      cds_Mov_det.Next;
    end;
  end;
  cds_mov_det.EnableControls;
  cds_Mov_det.ApplyUpdates(0);
  gravaVenda;
  cds_Movimento.Cancel;
end;

procedure TfEntrada.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
  cds_MovimentoDATAMOVIMENTO.Value := Date;
  cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
  cds_MovimentoSTATUS.Value := 0;
  cds_MovimentoCODUSUARIO.AsInteger := usulog;
  cds_MovimentoCODVENDEDOR.Value:=usulog;
  cds_MovimentoCODCLIENTE.AsInteger := 0;
end;

procedure TfEntrada.cds_Mov_detCalcFields(DataSet: TDataSet);
begin
  inherited;
  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfEntrada.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  inherited;
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

procedure TfEntrada.btnExcluirClick(Sender: TObject);
begin
  inherited;
  status := '';
  if DtSrc1.DataSet.Active then
    DtSrc1.DataSet.Close;
    DtSrc.DataSet.Cancel;
end;

procedure TfEntrada.btnCancelarClick(Sender: TObject);
begin
  inherited;
  status := '';  
  DtSrc1.DataSet.Cancel;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
end;

procedure TfEntrada.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fFiltroMovLancamento := TfFiltroMovLancamento.Create(Application);
  try
    dm.cds_ccusto.First;
    while not dm.cds_ccusto.Eof do
    begin
      fFiltroMovLancamento.ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
      dm.cds_ccusto.Next;
    end;
     if (not cdsBusca.Active) then
    begin
      cdsBusca.Params[0].AsString := 'todostodos';
      cdsBusca.Open;
      cdsBusca.Locate('CODCLIENTE', cds_Mov_detCODALMOXARIFADO.AsInteger, [loCaseInsensitive])
    end;
    if (not cdsForn.Active) then
      cdsForn.Open;

    if (not cds_prod.Active) then
      cds_prod.Open;

    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZACOMPRA';
    dm.cds_parametro.Open;
    fFiltroMovLancamento.Edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovLancamento.Edit4.Text := dm.cds_parametroD1.AsString;
    dm.cds_parametro.Close;
    fFiltroMovLancamento.ShowModal;
    status := 'CONSULTA';    
    if (not dm.cds_ccusto.Active) then
      dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('CODIGO',cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive]);
    ComboBox1.Text := dm.cds_ccustoNOME.AsString;
    cdsBusca.Locate('CODCLIENTE', cds_Mov_detCODALMOXARIFADO.AsInteger, [loPartialKey]);
    JvDBSearchComboBox3.Text := cdsBuscaNOMECLIENTE.AsString;
    JvDBSearchComboBox4.Text := cdsBuscaRA.AsString;
    JvDBSearchComboBox1.Text := cds_Mov_detPRODUTO.AsString;
    JvDatePickerEdit1.Date := fFiltroMovLancamento.cds_cnsDATAVENCIMENTO.AsDateTime;
    ComboBox2.Text := cdsBuscaGRUPO_CLIENTE.AsString;
    Edit1.Text := cds_MovimentoCONTROLE.AsString;
    

  {  if (cdsLancado.Active) then
      cdsLancado.close;

    if (not cdsLancado.Active) then
      cdsLancado.Open;
    }

  //  JvCalcEdit1.Value := cdsLancadoDESCONTO.AsFloat;

  finally
    fFiltroMovLancamento.Free;
  end;
end;

procedure TfEntrada.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;
  if Alterar = 'S' then
    BitBtn1.Enabled:=DtSrc.State in [dsInsert,dsEdit,dsBrowse]
  else
    BitBtn1.Enabled:=False;
end;

procedure TfEntrada.dbeProdutoExit(Sender: TObject);
begin
  inherited;
  varonde := 'compra';
  if dbeProduto.Text='' then exit;
  if (cds_mov_det.State in [dsInsert, dsEdit]) then
  begin
    if dm.scds_produto_procASH.Active then
      dm.scds_produto_procASH.Close;
    dm.scds_produto_procASH.Params[0].Clear;
    dm.scds_produto_procASH.Params[1].Clear;
    dm.scds_produto_procASH.Params[2].AsString:=dbeProduto.Text;
    dm.scds_produto_procASH.Open;
    if dm.scds_produto_procASH.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;

    cds_prod.Locate('CODPRODUTO',dm.scds_produto_procASHCODPRODUTO.AsInteger,[loCaseInsensitive]);

    cds_Mov_detPRECO.AsFloat := dm.scds_produto_procASHVALOR_PRAZO.AsFloat;

    cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procASHCODPRODUTO.AsInteger;
    JvDBSearchComboBox1.Text := dm.scds_produto_procASHPRODUTO.Value;
    cds_Mov_detPRODUTO.Value := dm.scds_produto_procASHPRODUTO.Value;
    cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procASHCOD_COMISSAO.AsInteger;
    cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procASHQTDE_PCT.AsFloat;
    cds_Mov_detUN.AsString := dm.scds_produto_procASHUNIDADEMEDIDA.AsString;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
  {
    if dm.scds_produto_procASHQTDE_PCT.AsFloat >= 1 then
      cds_Mov_detPRECO.AsFloat :=
        dm.scds_produto_procASHVALORUNITARIOATUAL.AsFloat / dm.scds_produto_procASHQTDE_PCT.AsFloat
    else
      cds_Mov_detPRECO.AsFloat := dm.scds_produto_procASHVALORUNITARIOATUAL.AsFloat;
  }
    valorUnitario := dm.scds_produto_procASHVALORUNITARIOATUAL.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procASHCODALMOXARIFADO.AsInteger;
    cds_Mov_detNOMECLIENTE.AsString := dm.scds_produto_procASHALMOXARIFADO.AsString;
    cds_Mov_detICMS.AsFloat := dm.scds_produto_procASHICMS.AsFloat;
    if (dm.scds_produto_procASHLOTES.AsString = 'S') then
    begin
      if (DBEdit1.Text = '') then
      begin
        MessageDlg('Insira o número do Lote no campo CONTROLE.', mtWarning, [mbOK], 0);
        dbEdit1.SetFocus;
        Exit;
      end;
      cds_Mov_detLOTE.AsString := cds_MovimentoCONTROLE.AsString;
      cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
      cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
    end;
    dm.scds_produto_procASH.Close;
    DBEdit10.SetFocus;
  end;
end;

procedure TfEntrada.btnProdutoProcuraClick(Sender: TObject);
var sql, sql1: string;
begin
  inherited;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    fProcura_prod.BitBtn1.Click;
  end
  else
  begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'compra';
  var_F := 'compra';
  cds_Mov_detLOTE.AsString := '';
  fProcura_prod.ShowModal;

  if (procprod = 'PROC_PROD_COMPLETO') then
  begin
    cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
    cds_Mov_detCODPRODUTO.asInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
    cds_mov_detPRODUTO.asString := fProcura_prod.cds_procPRODUTO.AsString;
    cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_COMPRA.AsFloat;
  end;

  if dm.scds_produto_procASH.Active then
    dm.scds_produto_procASH.Close;
  dm.scds_produto_procASH.Params[0].Clear;
  dm.scds_produto_procASH.Params[1].AsInteger := codprodxa;
  dm.scds_produto_procASH.Params[2].Clear;
  dm.scds_produto_procASH.Open;

  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  if cds_Mov_det.State in [dsInsert] then
    DBEdit10.SetFocus;
  if cds_Mov_det.State in [dsBrowse] then
    btnNovo.SetFocus;

end;

procedure TfEntrada.btnNovoClick(Sender: TObject);
begin
  inherited;
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
    cds_Mov_detPRODUTO.AsString := cds_prodPRODUTO.AsString;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    cds_Mov_detCODPRODUTO.AsInteger := cds_prodCODPRODUTO.AsInteger;
    cds_Mov_detCODPRO.AsString := cds_prodCODPRO.AsString;
    cds_Mov_detCODALMOXARIFADO.AsInteger := cdsBuscaCODCLIENTE.AsInteger;
    cds_Mov_detUN.AsString := cdsBuscaCOD_FAIXA.AsString;
    if cds_Movimento.State in [dsBrowse, dsInactive] then
      cds_Movimento.Edit;
    DtSrc1.DataSet.Post;
    DtSrc1.DataSet.Append;
  end;
  if DtSrc1.State in [dsBrowse] then
  begin
    if cds_Movimento.State in [dsBrowse, dsInactive] then
      cds_Movimento.Edit;
    DtSrc1.DataSet.Append;
  end;
  JvDBSearchComboBox3.SetFocus;
end;

procedure TfEntrada.BitBtn8Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
    DtSrc.DataSet.edit;
  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then
    exit;
  if DtSrc1.DataSet.State in [dsInsert ,dsEdit ] then
  if (cds_Mov_detCODPRODUTO.IsNull ) then
    begin
      DtSrc1.DataSet.Cancel;
      Exit;
    end
    else
     begin
      DtSrc1.DataSet.post;
     end;
    DtSrc1.DataSet.Delete;
    cds_Movimento.ApplyUpdates(0);
end;

procedure TfEntrada.btnClienteProcuraClick(Sender: TObject);
begin
  inherited;
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    varForm1 := 'compra';
    cod_forn := 0;
    nome_forn := '';
    if fProcurar.ShowModal=mrOk then
    begin
      if dtSrc.State=dsBrowse then
        cds_Movimento.Edit;
      cds_MovimentoCODFORNECEDOR.AsInteger := fCompraCodForn;
      cds_MovimentoNOMEFORNECEDOR.AsString := fCompraNomeForn;
    end;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
  if (campocentrocusto = 'SIM') then
    ComboBox1.SetFocus
  else
    JvDBDatePickerEdit1.SetFocus;
end;

procedure TfEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
  if (cds_Movimento.Active) then
    cds_Movimento.Close;
end;

procedure TfEntrada.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (cds_Mov_detPRECO.AsFloat = 0) then
    cds_Mov_detPRECO.AsFloat := cds_Mov_detValorTotal.asfloat/cds_Mov_detQUANTIDADE.AsFloat;
end;

procedure TfEntrada.DtSrc1StateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc1.State in [dsEdit]) then
    if (DtSrc.State in [dsBrowse, dsInactive]) then
      cds_Movimento.Edit;
end;

procedure TfEntrada.JvDBSearchComboBox2Change(Sender: TObject);
begin
  inherited;
  if ((status  = 'INSERIR') or (status = 'CONSULTA')) then
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;
  if (cds_Movimento.State in [dsInsert, dsEdit]) then
  begin
    cds_MovimentoCODFORNECEDOR.AsInteger := cdsFornCODFORNECEDOR.AsInteger;
  end;
end;

procedure TfEntrada.JvDBDatePickerEdit1Change(Sender: TObject);
begin
  inherited;
  if ((status  = 'INSERIR') or (status = 'CONSULTA')) then
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  if (cds_Movimento.State in [dsInsert, dsEdit]) then
  begin
//    JvDatePickerEdit1.Date := JvDBDatePickerEdit1.Date + cdsFornPRAZOPAGAMENTO.AsInteger;
  end;
end;

procedure TfEntrada.JvDBSearchComboBox1Change(Sender: TObject);
begin
  inherited;
  if ((status  = 'INSERIR') or (status = 'CONSULTA')) then
  if (cds_Mov_det.State in [dsBrowse]) then
    cds_Mov_det.Edit;
  if (cds_Mov_det.State in [dsInsert, dsEdit]) then
  begin
    cds_Mov_detCODPRODUTO.AsInteger := cds_prodCODProduto.AsInteger;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    cds_Mov_detPRECO.AsFloat := cds_prodVALOR_PRAZO.AsFloat;
    cds_Mov_detPRODUTO.AsString := JvDBSearchComboBox1.Text;
    cds_Mov_detCODPRO.AsString := cds_prodCODPRO.AsString;
  end;

end;

procedure TfEntrada.gravaVenda;
var pagamento : integer ;
begin
  if (cdsLancado.Active) then
    cdsLancado.Close;
  cdsLancado.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cdsLancado.Open;
  if cdsLancado.IsEmpty then
  begin
    cdsLancado.Append;
  //Abre a c_genid para pegar o número do CODCOMPRA
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_COMPRA, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsLancadoCODCOMPRA.AsInteger := dm.c_6_genid.fields[0].AsInteger;
  dm.c_6_genid.Close;

  end
  else
  begin
    cdsLancado.Edit;
  end;
  pagamento := cdsLancadoCODCOMPRA.AsInteger; // para deletar o titulo tabela pagamento ASH

  cdsLancadoCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cdsLancadoCODFORNECEDOR.AsInteger := cds_MovimentoCODFORNECEDOR.AsInteger;
  cdsLancadoDATACOMPRA.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
  cdsLancadoDATAVENCIMENTO.AsDateTime := JvDatePickerEdit1.Date;
  cdsLancadoCODCOMPRADOR.AsInteger := cds_MovimentoCODVENDEDOR.AsInteger;
  cdsLancadoSTATUS.AsInteger := 0;
  cdsLancadoCODUSUARIO.AsInteger := cds_MovimentoCODUSUARIO.AsInteger;
  cdsLancadoDATASISTEMA.AsDateTime := Now;

  cdsLancadoDESCONTO.AsFloat := JvCalcEdit1.Value;

  cdsLancadoMULTA_JUROS.AsFloat := 0;
  cdsLancadoENTRADA.AsFloat := 0;
  cdsLancadoVALOR_PAGAR.AsFloat := 0;
  cdsLancadoAPAGAR.AsFloat := 0;
  cdsLancadoN_PARCELA.AsInteger := 1;
  cdsLancadoVALOR_FRETE.AsFloat := 0;
  cdsLancadoVALOR_SEGURO.AsFloat := 0;
  cdsLancadoOUTRAS_DESP.AsFloat := 0;
  cdsLancadoVALOR_ICMS.AsFloat := 0;
  cdsLancadoVALOR_IPI.AsFloat := 0;
  cdsLancadoCODCCUSTO.AsInteger := cds_MovimentoCODALMOXARIFADO.AsInteger;
  if (edit1.Text <> '') then
  begin
    cdsLancadoNOTAFISCAL.AsInteger := StrToInt(edit1.Text);
    cdsLancadoSERIE.AsString := 'D';
  end
  else
  begin
    cdsLancadoNOTAFISCAL.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsLancadoSERIE.AsString := 'D';
  end;
  if dm.scds_Mov_Det_proc.Active then
    dm.scds_Mov_Det_proc.Close;
  dm.scds_Mov_Det_proc.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  dm.scds_Mov_Det_proc.Open;
  cdsLancadoVALOR.Value := dm.scds_Mov_Det_procTotalPedido.Value;

  cdsLancado.ApplyUpdates(0);

  cdsLancado.Close;

  dm.sqlsisAdimin.ExecuteDirect('delete from pagamento where codcompra = ' + IntToStr(pagamento));

end;

procedure TfEntrada.cds_MovimentoBeforePost(DataSet: TDataSet);
begin
  inherited;
  cds_MovimentoCODCLIENTE.AsInteger := 0;
  cds_MovimentoCODNATUREZA.AsInteger := 4; //
  cds_MovimentoDESCNATUREZA.AsString := 'Compra';
  cds_MovimentoCODUSUARIO.AsInteger := 1;
  cds_MovimentoNOMEUSUARIO.AsString := 'x';
  cds_MovimentoSTATUS.AsInteger := 0;
end;

procedure TfEntrada.JvDBSearchComboBox3Change(Sender: TObject);
begin
  inherited;
  if ((status  = 'INSERIR') or (status = 'CONSULTA')) then
  if (cds_Mov_det.State in [dsBrowse]) then
    cds_Mov_det.Edit;

  if (cds_mov_det.State in [dsInsert, dsEdit]) then
    cds_Mov_detCODALMOXARIFADO.AsInteger := cdsBuscaCODCLIENTE.AsInteger;
end;

procedure TfEntrada.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (cds_mov_det.State in [dsEdit, dsInsert]) then
    cds_mov_det.Post;
  cdsBusca.Locate('CODCLIENTE', cds_Mov_detCODALMOXARIFADO.AsInteger, [loPartialKey]);
  JvDBSearchComboBox3.Text := cdsBuscaNOMECLIENTE.AsString;
  JvDBSearchComboBox4.Text := cdsBuscaRA.AsString;
  JvDBSearchComboBox1.Text := cds_Mov_detPRODUTO.AsString;
  ComboBox2.Text := cdsBuscaGRUPO_CLIENTE.AsString;
  Edit1.Text := cds_MovimentoCONTROLE.AsString;


end;

procedure TfEntrada.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  cdsBusca.Locate('CODCLIENTE', cds_Mov_detCODALMOXARIFADO.AsInteger, [loPartialKey]);
  JvDBSearchComboBox3.Text := cdsBuscaNOMECLIENTE.AsString;
  JvDBSearchComboBox4.Text := cdsBuscaRA.AsString;
  JvDBSearchComboBox1.Text := cds_Mov_detPRODUTO.AsString;
  ComboBox2.Text := cdsBuscaGRUPO_CLIENTE.AsString;

  
 { JvDBSearchComboBox3.Text := cds_Mov_detNOMECLIENTE.AsString;
  JvDBSearchComboBox1.Text := cds_Mov_detPRODUTO.AsString;
  Edit1.Text := cds_MovimentoCONTROLE.AsString;
  }
end;

procedure TfEntrada.JvDatePickerEdit1Change(Sender: TObject);
begin
  inherited;
  if ((status  = 'INSERIR') or (status = 'CONSULTA')) then
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

end;

procedure TfEntrada.Edit1Change(Sender: TObject);
begin
  inherited;
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;
end;

procedure TfEntrada.JvCalcEdit1Change(Sender: TObject);
begin
  inherited;
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;
end;

procedure TfEntrada.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if (cdsBusca.Active) then
  begin
    cdsBusca.Close;
    cdsBusca.Params[0].AsString := ComboBox1.Text;
    cdsBusca.Open;

  end;
end;

procedure TfEntrada.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
    cds_Mov_detPRODUTO.AsString := cds_prodPRODUTO.AsString;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    cds_Mov_detCODPRODUTO.AsInteger := cds_prodCODPRODUTO.AsInteger;
    cds_Mov_detCODPRO.AsString := cds_prodCODPRO.AsString;
    cds_Mov_detCODALMOXARIFADO.AsInteger := cdsBuscaCODCLIENTE.AsInteger;
    cds_Mov_detUN.AsString := cdsBuscaCOD_FAIXA.AsString;
    if cds_Movimento.State in [dsBrowse, dsInactive] then
      cds_Movimento.Edit;
    DtSrc1.DataSet.Post;
  end;

end;

procedure TfEntrada.ComboBox2Change(Sender: TObject);
begin
  inherited;
  if (cdsBusca.Active) then
  begin
    cdsBusca.Close;
    cdsBusca.Params[0].AsString := ComboBox2.Text;
    cdsBusca.Open;

  end;
end;

end.
