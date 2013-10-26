unit uVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, ComCtrls, DBCtrls,
  Mask, DBLocal, DBLocalS;

type
  TfVendas = class(TfPai)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    dbeCliente: TDBEdit;
    btnClienteProcura: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbeProduto: TDBEdit;
    DBEdit7: TDBEdit;
    btnProdutoProcura: TBitBtn;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cdsCODMOVIMENTO: TIntegerField;
    cdsDATAMOVIMENTO: TDateField;
    cdsCODCLIENTE: TIntegerField;
    cdsCODNATUREZA: TSmallintField;
    cdsSTATUS: TSmallintField;
    cdsCODUSUARIO: TSmallintField;
    cdsCODVENDEDOR: TSmallintField;
    cdsCODALMOXARIFADO: TIntegerField;
    cdsCODFORNECEDOR: TIntegerField;
    cdsDATA_SISTEMA: TSQLTimeStampField;
    cdsCOD_VEICULO: TIntegerField;
    cdsCONTROLE: TStringField;
    cdsNOMECLIENTE: TStringField;
    cdsOBS: TStringField;
    cdsPLACA: TStringField;
    cdsMARCA_MODELO: TStringField;
    cdsNOMEUSUARIO: TStringField;
    cdsNOMEFORNECEDOR: TStringField;
    cdsDESCNATUREZA: TStringField;
    cdsALMOXARIFADO: TStringField;
    cdsTIPOTITULO: TSmallintField;
    cdsBAIXAMOVIMENTO: TSmallintField;
    sdsCODMOVIMENTO: TIntegerField;
    sdsDATAMOVIMENTO: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsCODNATUREZA: TSmallintField;
    sdsSTATUS: TSmallintField;
    sdsCODUSUARIO: TSmallintField;
    sdsCODVENDEDOR: TSmallintField;
    sdsCODALMOXARIFADO: TIntegerField;
    sdsCODFORNECEDOR: TIntegerField;
    sdsDATA_SISTEMA: TSQLTimeStampField;
    sdsCOD_VEICULO: TIntegerField;
    sdsCONTROLE: TStringField;
    sdsNOMECLIENTE: TStringField;
    sdsOBS: TStringField;
    sdsPLACA: TStringField;
    sdsMARCA_MODELO: TStringField;
    sdsNOMEUSUARIO: TStringField;
    sdsNOMEFORNECEDOR: TStringField;
    sdsDESCNATUREZA: TStringField;
    sdsALMOXARIFADO: TStringField;
    sdsTIPOTITULO: TSmallintField;
    sdsBAIXAMOVIMENTO: TSmallintField;
    scds_movimento_proc: TSQLClientDataSet;
    scds_movimento_procCODMOVIMENTO: TIntegerField;
    scds_movimento_procDATAMOVIMENTO: TDateField;
    scds_movimento_procCODCLIENTE: TIntegerField;
    scds_movimento_procNOMECLIENTE: TStringField;
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
    dsp_Mov_det: TDataSetProvider;
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
    cds_Mov_detTotalPedido: TAggregateField;
    scds_Mov_Det_proc: TSQLClientDataSet;
    scds_Mov_Det_procCODPRODUTO: TIntegerField;
    scds_Mov_Det_procPRODUTO: TStringField;
    scds_Mov_Det_procPRECO: TFloatField;
    scds_Mov_Det_procQUANTIDADE: TFloatField;
    scds_Mov_Det_procCODMOVIMENTO: TIntegerField;
    scds_Mov_Det_procCODDETALHE: TIntegerField;
    scds_Mov_Det_procQTDE_ALT: TFloatField;
    scds_Mov_Det_procVALTOTAL: TFloatField;
    scds_Mov_Det_procVALORTOT: TFloatField;
    scds_Mov_Det_procTotalPedido: TAggregateField;
    DtSrc1: TDataSource;
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    ds_serv: TDataSource;
    sds_prod: TSQLDataSet;
    IntegerField1: TIntegerField;
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
    dsp_prod: TDataSetProvider;
    cds_prod: TClientDataSet;
    IntegerField2: TIntegerField;
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
    sds_cm: TSQLDataSet;
    sds_cmCOD_COMISSAO: TIntegerField;
    sds_cmCODIGO: TStringField;
    sds_cmDESCRICAO: TStringField;
    sds_cmINDICE: TStringField;
    sds_cmLB: TStringField;
    sds_cmCM: TStringField;
    dsp_cm: TDataSetProvider;
    cds_cm: TClientDataSet;
    cds_cmCOD_COMISSAO: TIntegerField;
    cds_cmCODIGO: TStringField;
    cds_cmDESCRICAO: TStringField;
    cds_cmINDICE: TStringField;
    cds_cmLB: TStringField;
    cds_cmCM: TStringField;
    sds_Veiculocli: TSQLDataSet;
    sds_VeiculocliCOD_VEICULO: TIntegerField;
    sds_VeiculocliCOD_CLIENTE: TIntegerField;
    sds_VeiculocliPLACA: TStringField;
    sds_VeiculocliMARCA_MODELO: TStringField;
    sds_VeiculocliTIPO: TStringField;
    sds_VeiculocliCOMBUSTIVEL: TStringField;
    sds_VeiculocliANO_FAB: TStringField;
    sds_VeiculocliANO_MOD: TStringField;
    sds_VeiculocliCOR: TStringField;
    dsp_Veiculocli: TDataSetProvider;
    cds_Veiculocli: TClientDataSet;
    cds_VeiculocliCOD_VEICULO: TIntegerField;
    cds_VeiculocliCOD_CLIENTE: TIntegerField;
    cds_VeiculocliPLACA: TStringField;
    cds_VeiculocliMARCA_MODELO: TStringField;
    cds_VeiculocliTIPO: TStringField;
    cds_VeiculocliCOMBUSTIVEL: TStringField;
    cds_VeiculocliANO_FAB: TStringField;
    cds_VeiculocliANO_MOD: TStringField;
    cds_VeiculocliCOR: TStringField;
    DataSource1: TDataSource;
    dtProduto: TDataSource;
    DataSource2: TDataSource;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    ds_ccusto: TDataSource;
    MaskEdit1: TMaskEdit;
    BitBtn9: TBitBtn;
    scds_cliente_proc: TSQLClientDataSet;
    scds_cliente_procCODCLIENTE: TIntegerField;
    scds_cliente_procNOMECLIENTE: TStringField;
    scds_cliente_procRAZAOSOCIAL: TStringField;
    scds_cliente_procCODBANCO: TSmallintField;
    scds_cliente_procPRAZORECEBIMENTO: TSmallintField;
    scds_cliente_procOBS: TStringField;
    scds_cliente_procSEGMENTO: TSmallintField;
    scds_cliente_procNOMEUSUARIO: TStringField;
    scds_cliente_procSTATUS: TSmallintField;
    scds_cliente_procUF: TStringField;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn10: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dbeProdutoExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVendas: TfVendas;
  valorUnitario: Double;
    codmovdet,centro_receita, cod_nat, cod_vendedor_padrao: integer;
  natureza, contas_pendentes, nome_vendedor_padrao: string;

implementation

uses UDm, uPrincipal, ufprocura_prod;

{$R *.dfm}

procedure TfVendas.FormCreate(Sender: TObject);
var conta_local: String;
begin
  inherited;
  codmovdet := 1999999;
  PageControl1.ActivePageIndex := 0;
  centro_receita := 0;
  {------Pesquisando na tab Parametro se usa Mostrar Contas Pendentes ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTAS PENDENTES';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    contas_pendentes := 'SIM';
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    DBLookupComboBox1.Enabled := True;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      centro_receita := strToint(dm.cds_parametroDADOS.AsString);
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
    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;

  {------Pesquisando na tab Parametro se usa Comissão por produto---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMISSAO PRODUTO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
  begin
     DBEdit7.Visible := False;
     label4.Caption := 'CM';
     if cds_cm.Active then
        cds_cm.Close;
     cds_cm.Params[0].Clear;
     cds_cm.Params[1].AsInteger := 9999999;
     cds_cm.Open;
  end;
  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
  dm.cds_parametro.Open;
  cod_nat := strToint(dm.cds_parametroDADOS.asString);
  natureza := dm.cds_parametroD1.AsString;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
  begin
    GroupBox5.Visible := True;
  end;
  dm.cds_parametro.Close;

end;

procedure TfVendas.btnIncluirClick(Sender: TObject);
begin
  inherited;

  cdsCODNATUREZA.AsInteger := cod_nat;
  cdsDESCNATUREZA.AsString := natureza;
  cdsCODUSUARIO.AsInteger := cod_vendedor_padrao;
  cdsNOMEUSUARIO.AsString := nome_vendedor_padrao;
  DBLookupComboBox1.KeyValue := centro_receita;
  MaskEdit1.Text := '';

  if cds_Mov_det.Active then
    cds_Mov_det.Close;

  if c_8_serv.Active then
    c_8_serv.Close;

  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  dbeCliente.Text := '';
  dbeCliente.SetFocus;

  if DtSrc1.DataSet.State in [dsInactive] then
  begin
    DtSrc1.DataSet.Open;
    DtSrc1.DataSet.Append;
  end;
  if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;

end;

procedure TfVendas.FormShow(Sender: TObject);
begin
  inherited;
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
end;

procedure TfVendas.dbeClienteExit(Sender: TObject);
begin
  inherited;
  if dbeCliente.Text='' then exit;
  if dtsrc.State = dsInsert then
  begin
    if scds_cliente_proc.Active then
    scds_cliente_proc.Close;
    scds_cliente_proc.Params[0].Clear;
    scds_cliente_proc.Params[1].Clear;
    scds_cliente_proc.Params[2].Clear;
    scds_cliente_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    scds_cliente_proc.Open;
    if scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    cdsCODCLIENTE.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cdsNOMECLIENTE.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cdsCODVENDEDOR.AsInteger := scds_cliente_procSEGMENTO.AsInteger;
    cdsNOMEUSUARIO.AsString := scds_cliente_procNOMEUSUARIO.AsString;
    cdsOBS.AsString := scds_cliente_procOBS.AsString;
    scds_cliente_proc.Close;

    //mostra veiculos do cliente
    if cds_Veiculocli.Active then
      cds_Veiculocli.Close;
    cds_Veiculocli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
    cds_Veiculocli.Open;

    if (DBLookupComboBox1.Enabled = true) then
      DBLookupComboBox1.SetFocus
    else
      dbeProduto.SetFocus;
  end
  else
  if dbeCliente.Field.OldValue<>dbeCliente.Field.NewValue then
  begin
    if scds_cliente_proc.Active then
    scds_cliente_proc.Close;
    scds_cliente_proc.Params[0].Clear;
    scds_cliente_proc.Params[1].Clear;
    scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCliente.Text);
    scds_cliente_proc.Open;
    if scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    if scds_cliente_procSTATUS.AsInteger = 2 then
    begin
      MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
      dbeCliente.SetFocus;
      exit;
    end;

    cdsCODCLIENTE.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cdsNOMECLIENTE.AsString := scds_cliente_procNOMECLIENTE.AsString;
    cdsCODVENDEDOR.AsInteger := scds_cliente_procSEGMENTO.AsInteger;
    cdsNOMEUSUARIO.AsString := scds_cliente_procNOMEUSUARIO.AsString;
    scds_cliente_proc.Close;

    //mostra veiculos do cliente
    if cds_Veiculocli.Active then
      cds_Veiculocli.Close;
    cds_Veiculocli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
    cds_Veiculocli.Open;

    if (DBLookupComboBox1.Enabled = true) then
      DBLookupComboBox1.SetFocus
    else
      dbeProduto.SetFocus;
  end;

{  if contas_pendentes = 'SIM' then
  begin
    //**********************************************************
    // abre tabela e mostra se a contas pendentes
    if fMostra_Contas.ClientDataSet1.Active then
      fMostra_Contas.ClientDataSet1.Close;
    fMostra_Contas.ClientDataSet1.Params[0].AsDate := Now;
    fMostra_Contas.ClientDataSet1.Params[1].AsInteger :=
      dm.cds_MovimentoCODCLIENTE.AsInteger;
    fMostra_Contas.ClientDataSet1.Open;
    if not fMostra_Contas.ClientDataSet1.IsEmpty then
      fMostra_Contas.ShowModal;
  end;
 }
end;

procedure TfVendas.cdsNewRecord(DataSet: TDataSet);
begin
  inherited;
    cdsCODMOVIMENTO.asInteger := 1999999;
    cdsDATAMOVIMENTO.Value := Date;
    cdsDATA_SISTEMA.AsDateTime := Now;
    cdsSTATUS.Value := 0;
    cdsCODUSUARIO.AsInteger:=usuario_logado;
    cdsCODVENDEDOR.Value:=usuario_logado;
    cdsCODCLIENTE.AsInteger := 0;
end;

procedure TfVendas.dbeProdutoExit(Sender: TObject);
begin
  inherited;
  varonde := 'compra';
  if dbeProduto.Text='' then exit;
  if dbeProduto.Field.OldValue<>dbeProduto.Field.NewValue then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].Clear;
    dm.scds_produto_proc.Params[1].Clear;
    dm.scds_produto_proc.Params[2].AsString:=dbeProduto.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;
    cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
    cds_Mov_detPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
    cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
    cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
    cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
       cds_Mov_detPRECO.AsFloat :=
       dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
    else
       cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
    valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
    cds_Mov_detALMOXARIFADO.AsString := dm.scds_produto_procALMOXARIFADO.AsString;
    cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
    if (dm.scds_produto_procTIPO.AsString = 'SERV') then
    begin
      PageControl1.ActivePageIndex := 1;
      if (not ds_serv.DataSet.Active) then
      begin
        c_8_serv.params[0].asInteger := dtsrc.Dataset.Fields[0].Asinteger;
        ds_serv.DataSet.Open;
      end;
        ds_serv.DataSet.Append;
        c_8_servCODMOVIMENTO.AsInteger := cdsCODMOVIMENTO.AsInteger;
        DbEdit13.Text := dm.scds_produto_procPRODUTO.AsString;
        DbEdit13.SetFocus;
    end;
    dm.scds_produto_proc.Close;
  end;

end;

procedure TfVendas.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  varonde := 'compra';
//  fProcura_prod.ShowModal;
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
    if (fProcura_prod.cds_procTIPO.AsString = 'SERV') then
    begin
      PageControl1.ActivePageIndex := 1;
      if (not ds_serv.DataSet.Active) then
      begin
        c_8_serv.params[0].asInteger := dtsrc.Dataset.Fields[0].Asinteger;
        ds_serv.DataSet.Open;
      end;
        ds_serv.DataSet.Append;
        c_8_servCODMOVIMENTO.AsInteger := cdsCODMOVIMENTO.AsInteger;
        DBEDit13.Text := fProcura_prod.cds_procPRODUTO.AsString;
    end;
  end;
    dm.scds_produto_proc.Close;
end;

procedure TfVendas.btnNovoClick(Sender: TObject);
begin
  inherited;
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
   if cds.State in [dsBrowse, dsInactive] then
    cds.Edit;
    DtSrc1.DataSet.Post;
    if ds_serv.State in [dsInsert, dsEdit] then
    begin
      if cds.State in [dsBrowse, dsInactive] then
        cds.Edit;
      c_8_servPRECO.AsFloat := cds_Mov_detPRECO.AsFloat;
      ds_serv.DataSet.Post;
    end;
    DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;
  if DtSrc1.State in [dsBrowse] then
  begin
   if cds.State in [dsBrowse, dsInactive] then
    cds.Edit;
    DtSrc1.DataSet.Append;
    dbeProduto.SetFocus;
  end;
end;

procedure TfVendas.BitBtn8Click(Sender: TObject);
 Var str_del: String;
begin
  if (cds_Mov_detCODMOVIMENTO.AsInteger = 1999999) then
  begin
    cds.ApplyUpdates(0);
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      cds_Mov_detCODMOVIMENTO.AsInteger := cdsCODMOVIMENTO.AsInteger;
      cds_Mov_det.Post;
      cds_Mov_det.Next;
    end;
    cds_Mov_det.ApplyUpdates(0);
  end;
  inherited;
  str_del := 'DELETE FROM MOVIMENTODETALHE WHERE CODDETALHE = ';
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
    cds_Mov_det.Params[1].AsInteger := cdsCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;
end;

procedure TfVendas.cds_Mov_detCalcFields(DataSet: TDataSet);
begin
  inherited;
  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value*cds_Mov_detQUANTIDADE.Value;
end;

procedure TfVendas.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cdsCODMOVIMENTO.AsInteger;
end;

procedure TfVendas.BitBtn4Click(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  btnnovo.Click;
  exit;
  {estou jogando novamente para adicionar produtos }
  { nao precisa fazer nada daqui pra baixo         }
  if ds_serv.State in [dsInsert, dsEdit] then
  begin
   if cds.State in [dsBrowse, dsInactive] then
    cds.Edit;
    c_8_servPRECO.AsFloat := cds_Mov_detPRECO.AsFloat;
    DtSrc1.DataSet.post;
    DtSrc1.DataSet.Append;
    ds_serv.DataSet.Post;
    ds_serv.DataSet.Append;
    DBEdit11.SetFocus;
  end;

  if ds_serv.State in [dsBrowse] then
  begin
   if cds.State in [dsBrowse, dsInactive] then
    cds.Edit;
    ds_serv.DataSet.Append;
    DBEdit11.SetFocus;
  end;

end;

procedure TfVendas.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text='' then exit;
  if dbeProduto.Field.OldValue<>dbeProduto.Field.NewValue then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].Clear;
    dm.scds_produto_proc.Params[1].Clear;
    dm.scds_produto_proc.Params[2].AsString:=DBEdit1.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn5.Click;
      exit;
    end;
    cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
    cds_Mov_detPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
    cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
    cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
    cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
       cds_Mov_detPRECO.AsFloat:=dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
    else
    cds_Mov_detPRECO.AsFloat:=dm.scds_produto_procVALOR_PRAZO.AsFloat;
    valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
    cds_Mov_detALMOXARIFADO.AsString := dm.scds_produto_procALMOXARIFADO.AsString;
    cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
    if (dm.scds_produto_procTIPO.AsString = 'SERV') then
    begin
      PageControl1.ActivePageIndex := 1;
     if ds_serv.DataSet.State in [dsBrowse, dsInactive] then
     begin
      if (ds_serv.DataSet.Active) then
        ds_serv.DataSet.Close;
      c_8_serv.params[0].asInteger := dtsrc.Dataset.Fields[0].Asinteger;
      ds_serv.DataSet.Open;
      if (ds_serv.DataSet.IsEmpty) then
      begin
        ds_serv.DataSet.Append;
        c_8_servCODMOVIMENTO.AsInteger := cdsCODMOVIMENTO.AsInteger;
        c_8_servDESCRICAO.AsString := dm.scds_produto_procPRODUTO.AsString;
      end
      else
        ds_serv.DataSet.Edit;
     end
     else
     begin
        c_8_servCODMOVIMENTO.AsInteger := cdsCODMOVIMENTO.AsInteger;
        c_8_servDESCRICAO.AsString := dm.scds_produto_procPRODUTO.AsString;
     end;
      dbedit13.SetFocus;
    end;
    dm.scds_produto_proc.Close;
  end;
end;

end.
