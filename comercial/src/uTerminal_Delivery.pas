unit uTerminal_Delivery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, SqlExpr, Provider, Grids, DBGrids, Mask, DBCtrls,
  StdCtrls, DBLocal, DBLocalS, DB, DBClient, Menus, XPMenu, Buttons,
  ExtCtrls, MMJPanel, RXCtrls, DBXpress, Printers, JvExStdCtrls, JvCheckBox,
  JvExDBGrids, JvDBGrid, RxGIF, JvExMask, JvToolEdit, JvBaseEdits,
  JvExControls, JvLabel, JvGIF, JvEdit, JvValidateEdit;

type
  TfTerminal_Delivery = class(TfPai)
    dbeProduto: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btnImprimir: TBitBtn;
    procFone: TSQLDataSet;
    procFoneTELEFONE: TStringField;
    procFoneNOMECLIENTE: TStringField;
    procFoneLOGRADOURO: TStringField;
    procFoneBAIRRO: TStringField;
    BitBtn3: TBitBtn;
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
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
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
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_venda: TSQLDataSet;
    sds_vendaCODMOVIMENTO: TIntegerField;
    sds_vendaCODCLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaNOMECLIENTE: TStringField;
    sds_vendaNOMEUSUARIO: TStringField;
    sds_vendaBANCO_1: TStringField;
    sds_vendaCODVENDA: TIntegerField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaFORMARECEBIMENTO: TStringField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaCONTROLE: TStringField;
    sds_vendaOBS: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_DESP: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    dsp_venda: TDataSetProvider;
    cds_venda: TClientDataSet;
    cds_vendaCODMOVIMENTO: TIntegerField;
    cds_vendaCODCLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaNOMECLIENTE: TStringField;
    cds_vendaNOMEUSUARIO: TStringField;
    cds_vendaBANCO_1: TStringField;
    cds_vendaCODVENDA: TIntegerField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaFORMARECEBIMENTO: TStringField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaCONTROLE: TStringField;
    cds_vendaOBS: TStringField;
    cds_vendadiferenca: TFloatField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_DESP: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
    DtSrcVenda: TDataSource;
    DtSrc1: TDataSource;
    ds_serv: TDataSource;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    scds_produto_proc: TClientDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    RxLabel4: TRxLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sDelivery: TSQLDataSet;
    pDelivery: TDataSetProvider;
    cDelivery: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cdsMesa: TClientDataSet;
    dspMesa: TDataSetProvider;
    sdsMesa: TSQLDataSet;
    Label6: TLabel;
    cDeliveryCODMOVIMENTO: TIntegerField;
    cDeliveryDATAMOVIMENTO: TDateField;
    cDeliveryNOMECLIENTE: TStringField;
    cDeliveryLOGRADOURO: TStringField;
    cDeliveryBAIRRO: TStringField;
    sDeliveryCODMOVIMENTO: TIntegerField;
    sDeliveryDATAMOVIMENTO: TDateField;
    sDeliveryNOMECLIENTE: TStringField;
    sDeliveryLOGRADOURO: TStringField;
    sDeliveryBAIRRO: TStringField;
    sDeliveryTELEFONE: TStringField;
    cDeliveryTELEFONE: TStringField;
    procFoneCODCLIENTE: TIntegerField;
    sDeliveryDATA_SISTEMA: TSQLTimeStampField;
    cDeliveryDATA_SISTEMA: TSQLTimeStampField;
    sds_s: TSQLDataSet;
    BitBtn4: TBitBtn;
    sdsMesaNOMECLIENTE: TStringField;
    cdsMesaNOMECLIENTE: TStringField;
    BitBtn1: TBitBtn;
    sdsMesaCODMOVIMENTO: TIntegerField;
    cdsMesaCODMOVIMENTO: TIntegerField;
    sMesas: TSQLDataSet;
    sMesasCODCLIENTE: TIntegerField;
    sMesasNOMECLIENTE: TStringField;
    sCaixa: TSQLDataSet;
    sdsCOD_CAIXA: TIntegerField;
    sdsCAIXA: TIntegerField;
    sdsDATA: TSQLTimeStampField;
    sdsSITUACAO: TStringField;
    sdsVALORENTRADA: TFloatField;
    sdsVALORSAIDA: TFloatField;
    sdsHISTORICOCAIXA: TStringField;
    sCaixaNOMECAIXA: TStringField;
    dCaiixa: TDataSetProvider;
    cCaixa: TClientDataSet;
    cCaixaCOD_CAIXA: TIntegerField;
    cCaixaCAIXA: TIntegerField;
    cCaixaDATA: TSQLTimeStampField;
    cCaixaSITUACAO: TStringField;
    cCaixaVALORENTRADA: TFloatField;
    cCaixaVALORSAIDA: TFloatField;
    cCaixaHISTORICOCAIXA: TStringField;
    cCaixaNOMECAIXA: TStringField;
    sdsMesaCODCLIENTE: TIntegerField;
    cdsMesaCODCLIENTE: TIntegerField;
    sDeliveryCODCLIENTE: TIntegerField;
    cDeliveryCODCLIENTE: TIntegerField;
    Alteraes1: TMenuItem;
    ExcluirItem1: TMenuItem;
    sds_Mov_DetDESCPRODUTO: TStringField;
    cds_Mov_detDESCPRODUTO: TStringField;
    RadioGroup1: TRadioGroup;
    cds_Mov_detField10: TAggregateField;
    sds_MovimentoOBSERVA: TStringField;
    sds_MovimentoOBS: TStringField;
    cds_MovimentoOBSERVA: TStringField;
    cds_MovimentoOBS: TStringField;
    OpenDialog1: TOpenDialog;
    sqsTitulo: TSQLDataSet;
    Clientes1: TMenuItem;
    Button1: TBitBtn;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    cbporcento: TCheckBox;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    JvTroco: TJvCalcEdit;
    JvDBGrid1: TJvDBGrid;
    Panel6: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Label11: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    BitBtn7: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Panel2: TPanel;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Edit6: TEdit;
    cbMesas: TComboBox;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit5: TEdit;
    MenuImp1: TMenuItem;
    BitBtn9: TBitBtn;
    Caixa: TSQLDataSet;
    CaixaIDCAIXACONTROLE: TIntegerField;
    CaixaCODCAIXA: TIntegerField;
    CaixaCODUSUARIO: TIntegerField;
    CaixaDATAFECHAMENTO: TDateField;
    CaixaSITUACAO: TStringField;
    CaixaNOMECAIXA: TStringField;
    CaixaMAQUINA: TStringField;
    CaixaDATAABERTURA: TDateField;
    CaixaVALORABRE: TFloatField;
    CaixaVALORFECHA: TFloatField;
    sds_Mov_DetICMS_SUBST: TFloatField;
    cds_Mov_detICMS_SUBST: TFloatField;
    Edit7: TEdit;
    sds_Mov_DetVALOR_ICMS: TFloatField;
    cds_Mov_detVALOR_ICMS: TFloatField;
    buscaTributacao: TSQLDataSet;
    TPEmpresa: TSQLDataSet;
    TPEmpresaDESCRICAO: TStringField;
    TPEmpresaPARAMETRO: TStringField;
    TPEmpresaCONFIGURADO: TStringField;
    TPEmpresaDADOS: TStringField;
    TPEmpresaD1: TStringField;
    TPEmpresaD2: TStringField;
    TPEmpresaD3: TStringField;
    TPEmpresaD4: TStringField;
    TPEmpresaD5: TStringField;
    TPEmpresaD6: TStringField;
    TPEmpresaD7: TStringField;
    TPEmpresaD8: TStringField;
    TPEmpresaD9: TStringField;
    TPEmpresaINSTRUCOES: TStringField;
    TPEmpresaVALOR: TFloatField;
    sCaixaAberto: TSQLDataSet;
    sCaixaAbertoNOMECAIXA: TStringField;
    sCaixaAbertoIDCAIXACONTROLE: TIntegerField;
    b_cliente: TSQLDataSet;
    b_clienteCODCLIENTE: TIntegerField;
    b_clienteNOMECLIENTE: TStringField;
    CadProdutos1: TMenuItem;
    Finalizar1: TMenuItem;
    buscaTributacaoICMS_SUBST: TFloatField;
    buscaTributacaoICMS: TFloatField;
    buscaTributacaoCST: TStringField;
    jvPago: TJvValidateEdit;
    dspTitulo: TDataSetProvider;
    cdsTitulo: TClientDataSet;
    cdsTituloSTATUS: TSmallintField;
    cdsTituloFORMARECEBIMENTO: TStringField;
    sds_Mov_DetNCM: TStringField;
    cds_Mov_detNCM: TStringField;
    sds_Mov_DetCST: TStringField;
    cds_Mov_detCST: TStringField;
    Label7: TLabel;
    sds_Mov_DetALIQ_CUPOM: TStringField;
    cds_Mov_detALIQ_CUPOM: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_vendaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbMesasKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure IncluirNovoItem1Click(Sender: TObject);
    procedure ExcluirItem1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure jvPagoChange(Sender: TObject);
    procedure cbporcentoClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CadProdutos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    usadelivery, strSql, strTit, serie: String;
    numTitulo, COD_VENDA, varConta : Integer;
    total : double;

    varAliquota, Rua, Bairro : string;
    bRetornoEstendido: boolean;
    sAliquota: String;
    sTipoQtde: String;
    iDecimal: Integer;
    sTipoDesconto: String;
     codproduto : integer;
     cod_vendedor_padrao : integer;
     nome_vendedor_padrao : string;
     codcliente : integer;
     precovenda : double;
     centro_receita : integer;
     tiporel: string;
     servico : string;
     codserv : integer;
     cod_mov : integer;
     vCFOP, vUF, vNUMERO_NF, vCODMOV, vSERIE : string;
     tipo_busca, clienteConsumidor : string;
     TD: TTransactionDesc;
    { Private declarations }
     procedure alteraStatusMovimento;
     function VerificaRetornoFuncaoImpressora( iRetorno: integer ): boolean;
  public
    cpf_cliente_cupom: String;
     retornoImpressora: Integer;
     cupom_numcupom: String;
     cupom_codMov :  Integer;
     prazoparapgto : Integer;
     function buscaProdLista(codBarra, ProdLista:String): Integer;
     procedure buscaProduto;
     procedure vendaavista;
     procedure vendaaprazo;
     procedure buscaserie;
     procedure buscatitulo;
     procedure novavenda;
     procedure updatevenda;
     procedure imprimecupom;
     procedure imprimerecibo;
     procedure buscacliente;
     procedure gravacupom;
     procedure aliquota;
    { Public declarations }
  end;

var
  fTerminal_Delivery: TfTerminal_Delivery;


implementation

uses UDm, sCtrlResize, uCaixa, uUtils, uMensagens, UDMNF,
  uFiltroMovimento, uTerminalFinalizar, UnitDeclaracoes, UsaCPFDesForma,Principal,
  FechaResumido, FechaComAcrecimo, uAliquita, uMenuCupom,
  FechaCupomContaDividida, FechaConferenciaMesa, uProcurar_nf,
  ufprocura_prod, uProdutoCadastro, uClienteCadastro,
  UDM_MOV;

{$R *.dfm}

procedure TfTerminal_Delivery.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (DtSrc.DataSet.State in [dsInsert, dsEdit]) then
 begin
   if (key = #13) then
   begin
      if (procFone.Active) then
         procFone.Close;
      procFone.Params[0].AsString := Edit1.Text;
      procFone.Open;
      if (procFone.IsEmpty) then
      begin
        if MessageDlg('Telefone não cadastrado deseja Cadastrá-lo.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            BitBtn2.Click
        else
            exit;
      end
      else
      begin
         Edit3.Text := '';
         Edit4.Text := '';
         Edit2.Text := procFoneNOMECLIENTE.AsString;
         Edit4.Text := IntToStr(procFoneCODCLIENTE.AsInteger);
         if (procFoneLOGRADOURO.AsString <> '') then
           Rua := procFoneLOGRADOURO.AsString;
         if (procFoneBAIRRO.AsString <> '') then
           bairro := procFoneBAIRRO.AsString;
         Edit3.Text := Rua + ' ' + bairro;
         dbeProduto.SetFocus;
      end;
   end;
 end;
end;

procedure TfTerminal_Delivery.dbeProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    if (dbeProduto.text <> '') then
    begin
      codproduto := 0;
      buscaProduto;
      dbeProduto.Text := '';
      if (tipo_busca = '1') then
        dbeProduto.SetFocus
      else
        DBEdit2.SetFocus;
    end
    else
      BitBtn3.Click;
  end;
  jvPago.Text := DBEdit4.Text;
end;

procedure TfTerminal_Delivery.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if DtSrc1.DataSet.State in [dsInactive] then
    exit;
  var_F := 'cupom';

  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    //fProcura_prod.CheckBox1.Checked := True;
    fProcura_prod.BitBtn1.Click;
  end
  else begin
    fProcura_prod.Panel2.Visible := true;
    fProcura_prod.Panel1.Visible := true;
    //fProcura_prod.CheckBox1.Checked := False;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;

  // Define busca pelos produtos de venda
  fProcura_prod.cbTipo.ItemIndex := 2;
  fProcura_prod.BitBtn1.Click;
  if not (DtSrc1.State in [dsedit, dsinsert]) then
  begin
    cds_Mov_det.Edit;
    cds_Mov_det.Append;
  end;
  fProcura_prod.ShowModal;
  jvPago.Text := DBEdit4.Text;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.btnIncluirClick(Sender: TObject);
  //FMov: TMovimento;
begin
  Edit5.Text := '';
  cupom_numcupom := '';
  if (Panel2.Visible = True) then
  begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
  end;

  dm.totalpago := 0;
  jvPago.Value := 0;
  JvTroco.Value := 0;

  if cds_Movimento.Active then
    cds_Movimento.Close;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;


  if c_8_serv.Active then
    c_8_serv.Close;

  {Try
    FMov := TMovimento.Create;
    FMov.CodMov      := 0;
    FMov.CodCCusto   := cdsInventCODCCUSTO.AsInteger;
    FMov.CodCliente  := 0;
    FMov.CodNatureza := 7;
    FMov.Status      := 0;
    FMov.CodUsuario  := cod_vendedor_padrao;
    FMov.CodVendedor := cod_vendedor_padrao;
    FMov.DataMov     := dta.Date;
    FMov.Obs         := cdsInventCODIVENTARIO.AsString;
    codMovSaida := FMov.inserirMovimento(0);}

  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;

  if DtSrc.DataSet.State in [dsInsert] then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := 7;
    cds_MovimentoDESCNATUREZA.AsString := 'CUPOM FISCAL';
    cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
    cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
    cds_MovimentoCODCLIENTE.AsInteger := codcliente;
    cds_MovimentoNOMECLIENTE.AsString := nomecliente;
    //cds_MovimentoNewRecord(DtSrc.DataSet);
    //cds_Movimento.Edit;
    dm.sqlsisAdimin.StartTransaction(TD);
    cds_Movimento.ApplyUpdates(0);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  end;
  cds_Movimento.edit;

  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if DtSrc1.DataSet.State in [dsInactive] then
    begin
      DtSrc1.DataSet.Open;
      DtSrc1.DataSet.Append;
    end;
    if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;
  end;

  if (RadioGroup1.ItemIndex = 1) then
  begin
    GroupBox1.Visible := True;
    GroupBox2.Visible := False;
    Edit1.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 0) then
  begin
    GroupBox1.Visible := False;
    GroupBox2.Visible := True;
    cbMesas.SetFocus;
  end;

  if (RadioGroup1.ItemIndex = 2) then
  begin
    Edit4.Text := '0'; // Codigo do Cliente Consumidor
    dbeProduto.SetFocus;
  end;
  if (ComboBox3.Text <> 'À VISTA') then
    ComboBox3.Text := 'À VISTA';
  BitBtn7.Enabled := True;
end;

procedure TfTerminal_Delivery.buscaProduto;
 var
    s :string;
begin
  tipo_busca := '1'; //CODBARRA
  //------Verifico se a busca sera efetuada pelo CODPRO ou pelo CODBARRA ---------
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BUSCAPRODUTO';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
     if (dm.cds_parametroDADOS.AsString = 'CODPRO') then
       tipo_busca := '0';
  dm.cds_parametro.Close;
  if (dbeProduto.Text = '') then
    exit;
  if (cds_Movimento.State in [dsInactive]) then
  begin
     MessageDlg('Para adicionar uma nova venda antes você deve clicar no botão incluir.', mtWarning, [mbOK], 0);
     abort;
  end;

  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  cds_Mov_det.Append;

  s:='';

  if (buscaProdLista(dbeproduto.Text, 'Prod') = 1) then
  begin
    MessageDlg('Produto não encontrado', mtWarning, [mbOK], 0);
    BitBtn3.Click;
  end
  else
  begin
    cds_Mov_detCODPRODUTO.AsInteger := scds_produto_procCODPRODUTO.AsInteger;
    cds_Mov_detCODPRO.AsString:= dbeProduto.Text;
    cds_Mov_detCOD_BARRA.AsString := dbeProduto.Text;
    cds_Mov_detPRODUTO.Value:=scds_produto_procPRODUTO.Value;
    cds_Mov_detDESCPRODUTO.Value := scds_produto_procPRODUTO.Value;
    cds_Mov_detCOD_COMISSAO.AsInteger:=scds_produto_procCOD_COMISSAO.AsInteger;
    cds_Mov_detQTDE_PCT.AsFloat:=scds_produto_procQTDE_PCT.AsFloat;
    cds_Mov_detUN.AsString:=scds_produto_procUNIDADEMEDIDA.AsString;
    cds_Mov_detLOCALIZACAO.AsString:=scds_produto_procLOCALIZACAO.AsString;
    cds_Mov_detESTOQUEATUAL.AsFloat:=scds_produto_procESTOQUEATUAL.AsFloat;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
    cds_Mov_detQTDE_ALT.AsFloat := 0;
    cds_Mov_detVALTOTAL.AsFloat := precovenda * cds_Mov_detQUANTIDADE.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger:=scds_produto_procCODALMOXARIFADO.AsInteger;
    cds_Mov_detALMOXARIFADO.AsString := scds_produto_procALMOXARIFADO.AsString;
    cds_Mov_detICMS.AsFloat := scds_produto_procICMS.AsFloat;
    cds_Mov_detPRECO.AsFloat := precovenda;
    cds_Mov_det.Post;
    scds_produto_proc.Close;
    dbeProduto.Text := '';
    dbeProduto.SetFocus;
    servico := '';
  end;

end;

procedure TfTerminal_Delivery.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
    clienteConsumidor := '1';
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      clienteConsumidor := dm.cds_parametroDADOS.AsString;
    end
    else begin
      ShowMessage('Cadastre o PARAMETRO :    CONSUMIDOR e em dados coloque o código do cliente consumidor.');
      exit;
    end;
    dm.cds_parametro.Close;

    if (b_cliente.Active) then
      b_cliente.Close;
    b_cliente.Params[0].AsInteger := StrToInt(clienteConsumidor);
    b_cliente.Open;
    if (b_cliente.IsEmpty) then
    begin
      ShowMessage('Cliente configurado nos parametros não consta no cadastro de clientes.');
      exit;
    end
    else
    begin
      codcliente := b_clienteCODCLIENTE.AsInteger;
      nomecliente := b_clienteNOMECLIENTE.AsString;
    end;


    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    DM_MOV.ID_DO_MOVIMENTO  := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    //cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger := 1;
    cds_MovimentoCODVENDEDOR.Value:=1;
    cds_MovimentoCODCLIENTE.AsInteger := codcliente;
    cds_MovimentoNOMECLIENTE.AsString := nomecliente;
    cds_MovimentoCODALMOXARIFADO.AsInteger := 1;
end;

procedure TfTerminal_Delivery.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfTerminal_Delivery.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  // if (codmovdet >= 1999999) then
  //  codmovdet := codmovdet + 1;
  //cds_mov_detCODDETALHE.AsInteger := codmovdet;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_Mov_detCODDETALHE.AsInteger :=  dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
  cds_Mov_detCODMOVIMENTO.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
end;

procedure TfTerminal_Delivery.cds_Mov_detReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro.' + #10#13 + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfTerminal_Delivery.cds_vendaBeforePost(DataSet: TDataSet);
begin
  if cds_vendaSTATUS1.AsString = '0' then
    cds_vendaSTATUS.AsInteger := 0;
  if cds_vendaSTATUS1.AsString = '1' then
    cds_vendaSTATUS.AsInteger := 1;
  if cds_vendaSTATUS1.AsString = '2' then
    cds_vendaSTATUS.AsInteger := 2;
end;

function TfTerminal_Delivery.buscaProdLista(codBarra,
  ProdLista: String): Integer;
var varsql:string;
begin

  varsql := 'select  prod.CODPRODUTO ' +
         ', prod.COD_BARRA '+
         ', prod.PRODUTO    '+
         ', prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT ' +
         ', prod.ICMS ' +
         ', prod.CODALMOXARIFADO ' +
         ', prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO ' +
         ', prod.VALORUNITARIOATUAL ' +
         ', prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO ' +
         ', prod.RATEIO ' +
         ', prod.TIPO ' +
         ', prod.LOCALIZACAO ' +
         ', prod.ESTOQUEATUAL ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' where ';

  if scds_produto_proc.IsEmpty then
    scds_produto_proc.Close;
  if (tipo_busca = '1') then
    scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + dbeProduto.Text + ''''
  else
    scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + dbeProduto.Text + '''';
  scds_produto_proc.Open;

  if (not scds_produto_proc.IsEmpty) then
  begin
    codproduto := scds_produto_procCODPRODUTO.AsInteger;
    if scds_produto_procQTDE_PCT.AsFloat >= 1 then
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat / scds_produto_procQTDE_PCT.AsFloat
    else
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat;
  end;

  if (scds_produto_proc.IsEmpty) then
    result := 1
  else
    result := 0;
end;

procedure TfTerminal_Delivery.FormCreate(Sender: TObject);
begin
  frmPrincipal := TfrmPrincipal.Create(Application);
  if (FileExists('logo_cupom.jpg')) then
    Image1.Picture.LoadFromFile('logo_cupom.jpg');

  codmovdet := 1999999;
  codserv := 1999999;
  centro_receita := 0;

  if (dm.sqlNatureza.Active) then
    dm.sqlNatureza.Close;
  dm.sqlNatureza.Params[0].AsInteger := 7;
  dm.sqlNatureza.open;
  if (dm.sqlNatureza.IsEmpty) then
  begin
    MessageDlg('Natureza da operação 7(Consumidor),13(Mesa) e 14(Delivery) - para uso no cupom não cadastrada', mtWarning, [mbOK], 0);
    Exit;
  end;

  {if (Dm.cds_parametro.Active) then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CFOP_CUPOM';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('CADASTRE EM PARAMETROS O PARAMETRO CFOP_CUPOM na ABA CUPOM', mtWarning, [mbOK], 0);
    Exit;
  end;}

    //------Pesquisando na tab Parametro Centro de Receita Padrão ---------
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      centro_receita := strToint(dm.cds_parametroDADOS.AsString);
    end;
    //------Pesquisando na tab Parametro Vendedor Padrão ---------
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
  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  if ((dm.cds_parametroD2.IsNull) or (dm.cds_parametroD2.AsString = '')) then
  begin
    MessageDlg('Informe a Natureza da Operação Cupom, no Campo D2 no parametro PDV.', mtWarning, [mbOK], 0);
    Exit;
  end;
  //cod_nat := strToint(dm.cds_parametroD2.asString);
  //natureza := 'Venda a Vista';
  //if ((dm.cds_parametroDADOS.IsNull) or (dm.cds_parametroDADOS.AsString = '')) then
  //begin
  //  MessageDlg('Informe a Codigo cliente CONSUMIDOR , no Campo DADOS no parametro PDV.', mtWarning, [mbOK], 0);
  //  Exit;
  //end;
  //codcliente := strToint(dm.cds_parametroDADOS.asString);
  //if ((dm.cds_parametroD1.IsNull) or (dm.cds_parametroD1.AsString = '')) then
  //begin
  //  MessageDlg('Informe a Codigo Centro Custo , no Campo D1 no parametro PDV.', mtWarning, [mbOK], 0);
  //  Exit;
  //end;
  //codalmoxarif := strToint(dm.cds_parametroD1.asString);
  tiporel := dm.cds_parametroD3.asString;

  {------Pesquisando na tab Parametro qual form de Procura Produtos ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DELIVERY';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usadelivery := dm.cds_parametroCONFIGURADO.AsString
  else
    usadelivery := 'N';

  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TfTerminal_Delivery.btnGravarClick(Sender: TObject);
begin
  // Salvo o Movimento
  if (cds_Mov_detTotalPedido.Value >= 500) then
    if MessageDlg('Confirma o valor da Nota Fiscal ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      gravacupom
    else
      Exit
  else
    gravacupom;
  if (ComboBox3.Text = 'À PRAZO') then
  begin
     if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        imprimerecibo;
  end;
  BitBtn4.Click;
end;

procedure TfTerminal_Delivery.DBGrid2DblClick(Sender: TObject);
var
  Rua, Bairro : string;
begin
  inherited;
   Edit1.Text := '';
   Edit2.Text := '';
   Edit3.Text := '';
   Edit1.Text := cDeliveryTELEFONE.AsString;
   Edit2.Text := cDeliveryNOMECLIENTE.AsString;
   Edit4.Text := IntToStr(cDeliveryCODCLIENTE.AsInteger);
   Rua := cDeliveryLOGRADOURO.AsString;
   bairro := cDeliveryBAIRRO.AsString;
   Edit3.Text := Rua + ' ' + bairro;
   if (cds_Movimento.Active) then
       cds_Movimento.Close;
   if (cds_Mov_det.Active) then
       cds_Mov_det.Close;
   cds_Movimento.Params[0].AsInteger := cDeliveryCODMOVIMENTO.AsInteger;
   cds_Movimento.Open;
   cds_Mov_det.Params[0].Clear;
   cds_Mov_det.Params[1].AsInteger := cDeliveryCODMOVIMENTO.AsInteger;
   cds_Mov_det.Open;
   if (GroupBox1.Visible = False) then
       GroupBox1.Visible := True;
   if (GroupBox2.Visible = True) then
       GroupBox2.Visible := False;
      RadioGroup1.ItemIndex := 1;

   jvPago.Text := DBEdit4.Text;
   JvTroco.Value := 0;

  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.FormShow(Sender: TObject);
var str_sql : string;
    utilcrtitulo : Tutils;
    i, j : integer;
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fTerminal_Delivery));

  vCFOP := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[1].Clear;
  dm.cds_parametro.Params[0].AsString := 'CFOP';
  dm.cds_parametro.Open;
  vCFOP := dm.cds_parametroDADOS.AsString;

  if (not Caixa.Active) then
    Caixa.Open;
  if (Caixa.IsEmpty) then
    dm.situacaoCaixa := 'Fechado';
  Caixa.Close;
  utilcrtitulo := Tutils.Create;
  try
    // Popula Status
    j := utilcrtitulo.Forma.Count;
    for i := 0 to j - 1 do
    begin
      ComboBox2.Items.Add(utilcrtitulo.Forma.Strings[i]);
      ComboBox4.Items.Add(utilcrtitulo.Forma.Strings[i]);
    end;
    if (cdsTitulo.Active) then
      cdsTitulo.Close;
    cdsTitulo.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsTitulo.Open;

    if (not cdsTitulo.isEmpty) then
    begin
      ComboBox4.ItemIndex := utilcrtitulo.retornaForma(cdsTituloFORMARECEBIMENTO.asString);
      ComboBox2.ItemIndex := utilcrtitulo.retornaForma(cdsTituloFORMARECEBIMENTO.asString);
    end else
    begin
      ComboBox4.ItemIndex := 0;
      ComboBox2.ItemIndex := 0;
    end;
  finally
    utilcrtitulo.Free;
  end;



  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql := 'Select * from PLANO ';
  str_sql := str_sql + 'WHERE CODIGO = ';
  str_sql := str_sql + IntToStr(33);//'''' + 'CAIXA INTERNO' + '''';
  DM.c_1_planoc.CommandText := str_sql;
  DM.c_1_planoc.Open;
  if DM.c_1_planoc.IsEmpty then
  begin
    MessageDlg('Codigo não cadastrado.', mtWarning, [mbOK], 0);
    exit;
  end
  else
    varConta := DM.c_1_planocCODIGO.AsInteger;
  DM.c_1_planoc.Close;
  sMesas.Open;
  sMesas.First;
  while not sMesas.Eof do begin
      cbMesas.Items.Add(sMesasNOMECLIENTE.AsString);
      sMesas.Next;
  end;
  sMesas.Close;

  cDelivery.Close;
  cDelivery.Open;
  cdsMesa.Close;
  cdsMesa.Open;

  if (RadioGroup1.ItemIndex <> 2) then
  begin
    Panel2.Visible := True;
    Panel3.Visible := False;
  end
  else
  begin
    Panel2.Visible := False;
    Panel3.Visible := True;
  end;
end;

procedure TfTerminal_Delivery.vendaavista;
begin
   //aqui adiciono uma nova venda ou atualizo caso já exista
   total := 0;
   numTitulo := 0;
  // Verifico se a venda já foi SALVA
  if (cds_venda.Active) then
    cds_venda.Close;
  cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_venda.Open;
  if (cds_venda.IsEmpty) then
     novavenda // Adiciono Nova venda
  else   // Já está gravada a Venda , é só atualizar
     updatevenda;
end;

procedure TfTerminal_Delivery.buscaserie;
begin
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
    dm.cds_parametro.Open;
    if dm.cds_parametro.IsEmpty then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.asString := 'Número do Título de Venda para o Terminal';
      dm.cds_parametroPARAMETRO.asString := 'SERIETERMINAL';
      dm.cds_parametroDADOS.asString := 'T'; // T -> Terminal VENDA(CAIXA)
      dm.cds_parametroCONFIGURADO.asString := 'S';
      dm.cds_parametro.ApplyUpdates(0);
    end;
    // Buscar o número do título na tabela SéRIE
    if (sds_s.Active) then
      sds_s.Close;
    sds_s.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + '''' + dm.cds_parametroDADOS.asString + '''';
    sds_s.open;
    if (sds_s.IsEmpty) then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'T' + ''',' + '1)');
      Try
         dm.sqlsisAdimin.Commit(TD);
         serie := 'T';
         numTitulo := 0;
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
             [mbOk], 0);
      end;
    end
    else begin
      serie := sds_s.Fields[0].AsString;
      numTitulo := sds_s.Fields[1].AsInteger + 1;
      strSql := 'UPDATE SERIES SET ULTIMO_NUMERO = ';
      strSql := strSql + IntToStr(numTitulo + 1);
      strSql := strSql + ' where SERIE = ';
      strSql := strSql + '''' + serie + '''';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
             [mbOk], 0);
      end;
    end;
end;

procedure TfTerminal_Delivery.buscatitulo;
begin
    strTit := IntToStr(numTitulo) + '-' + serie;
    strSql := 'SELECT TITULO FROM RECEBIMENTO where TITULO = ' ;
    strSql := strSql + '''' + strTit + '''';
    if sds_s.Active then
      sds_s.Close;
    sds_s.CommandText := strSql;
    sds_s.Open;
    if not sds_s.IsEmpty then
    begin
      strSql := 'SELECT TITULO FROM RECEBIMENTO where CODRECEBIMENTO = ' +
         ' (select MAX(CODRECEBIMENTO) from recebimento)';
         if sds_s.Active then
           sds_s.Close;
         sds_s.CommandText := strSql;
         sds_s.Open;
         MessageDlg('Número do Título repetido, último nº : ''' + sds_s.Fields[0].AsSTring + '''',
         mtWarning, [mbOK], 0);
         Abort;
    end;
end;

procedure TfTerminal_Delivery.novavenda;
var  utilcrtitulo : Tutils;
     vApagar : double;
     varCaixa : integer;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  varCaixa := sCaixaAbertoIDCAIXACONTROLE.AsInteger;
  sCaixaAberto.Close;

  // fecho o cds_venda             x
  cds_venda.Close;
  serie := 'x';
  // Busca na tabeça PARAMETRO a SéRIE para trabalhar no Terminal VENDA
  buscaserie;
  // Verificando se existe título com esse número
  buscatitulo;
  //--*********************************************************************--//
  //--                Inserindo dados na tabela VENDA                      --//
  //--*********************************************************************--//
  if (dm.c_6_genid.Active) then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
  dm.varCOD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
  dm.varCOD_MOV := cds_MovimentoCODMOVIMENTO.AsInteger;
  dm.c_6_genid.Close;
  strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
  strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
  strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
  strSql := strSql + ',FORMARECEBIMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR, CODORIGEM ';
  strSql := strSql + ') VALUES (';
  strSql := strSql + IntToStr(COD_VENDA);
  strSql := strSql + ',' + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  strSql := strSql + ',' + IntToStr(cds_MovimentoCODCLIENTE.AsInteger);
  strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
  strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
  strSql := strSql + ',1'; //Banco
  strSql := strSql + ',1'; //CodVendedor
  strSql := strSql + ',0'; //status
  strSql := strSql + ',1'; //codusuario

  if (cbporcento.Checked = True) then
    if (DBEdit9.Text <> '') then
    try
      total := StrToFloat(DBEdit9.Text);
    except
      // Valor total inválido.
      MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
      exit;
    end;

  if (cbporcento.Checked = False) then
    if (cds_Mov_detTotalPedido.Value > 0) then
    try
      total := cds_Mov_detTotalPedido.Value; //StrToFloat(DBEdit4.Text);
    except
      // Valor total inválido.
      MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
      exit;
    end;

  vApagar := StrToFloat(StringReplace(jvPago.Text, '.', '', [rfReplaceAll]));
  DecimalSeparator := '.';
  //ThousandSeparator := ',';
  strSql := strSql + ',' + FloatToStr(total); //valor
  strSql := strSql + ',' + IntToStr(numTitulo); //notafiscal
  strSql := strSql + ',''' + serie + ''''; //serie
  strSql := strSql + ',0'; //desconto
  strSql := strSql + ',' + IntToStr(cds_MovimentoCODALMOXARIFADO.AsInteger);//CODCUSTO
  strSql := strSql + ',1,';
  try
    utilcrtitulo := Tutils.Create;
    strSql := strSql + QuotedStr(utilcrtitulo.pegaForma(ComboBox2.Text));
  finally
    utilcrtitulo.Free;
  end;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  strSql := strSql + ',' + FloatToStr(total);
  strSql := strSql + ',33'; //Caixa
  strSql := strSql + ',0'; //Multa_juros
  strSql := strSql + ',' + FloatToStr(vApagar);
  strSql := strSql + ',' + IntToStr(varCaixa);
  strSql := strSql + ')';
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSql);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
         [mbOk], 0);
  end;
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  vCODMOV := IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  vNUMERO_NF := IntToStr(numTitulo);
  vSERIE := serie;
  vUF := Edit7.Text;
end;

procedure TfTerminal_Delivery.updatevenda;
var vApagar : double;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  // -- Incluir aqui rotina de UPDATE na tabela venda --
  strSql := 'UPDATE VENDA SET DATAVENDA = ';
  strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
  strSql := strSql + ', DATAVENCIMENTO = ';
  strSql := strSql + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
  strSql := strSql + ', VALOR = ';
  if (cbporcento.Checked = True) then
    if (DBEdit9.Text <> '') then
    try
      total := StrToFloat(DBEdit9.Text);
    except
      MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
      exit;
    end;

  if (cbporcento.Checked = False) then
    if (cds_Mov_detTotalPedido.Value > 0) then
    try
      total := cds_Mov_detTotalPedido.Value;
    except
      // Valor total inválido.
      MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
      exit;
    end;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  vApagar := StrToFloat(jvPago.Value);
  strSql := strSql + FloatToStr(total);
  strSql := strSql + ', APAGAR = ';
  strSql := strSql + FloatToStr(vApagar);
  strSql := strSql + ', N_PARCELA = ';
  strSql := strSql + '1';
  strSql := strSql + ', ENTRADA = ';
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  strSql := strSql + FloatToStr(total);
  strSql := strSql + ' where CODVENDA = ';
  strSql := strSql + IntToStr(COD_VENDA);
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSql);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
         [mbOk], 0);
     DecimalSeparator := ',';
     ThousandSeparator := '.';
  end;
  DecimalSeparator := ',';
  ThousandSeparator := '.';

  //---*********************************************************************---
  //---              Atualiza campos na tabela RECEBIMENTO                  ---
  //---*********************************************************************---
  strSql := 'UPDATE RECEBIMENTO SET DATARECEBIMENTO = ';
  strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
  strSql := strSql + ', DATABAIXA = ';
  strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
  strSql := strSql + ', VALOR_RESTO = 0';
  strSql := strSql + ', VALORRECEBIDO = ';
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  strSql := strSql + FloatToStr(total);
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  strSql := strSql + ', STATUS = ';
  strSql := strSql + '''7-''';
  strSql := strSql + ' where CODVENDA = ';
  strSql := strSql + IntToStr(COD_VENDA);
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSql);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      DecimalSeparator := ',';
      ThousandSeparator := '.';
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;

  end;

end;

procedure TfTerminal_Delivery.BitBtn4Click(Sender: TObject);
var sqltexto: String;
    semCSTCupom: String;
begin
  inherited;

  if (jvPago.Value = 0) then
  begin
    MessageDlg('Informe o valor Pago', mtWarning, [mbOK], 0);
    jvPago.SetFocus;
    exit;
  end;

   //busca ICMS e Sub.Tributaria
   if (vCFOP = '') then
   begin
     MessageDlg('Não foi informado o CFOP Padrão em Parametros.', mtWarning, [mbOK], 0);
   end;
   sqltexto := 'UPDATE MOVIMENTODETALHE SET CFOP = ' + QuotedStr(vCFOP);
   sqltexto := sqltexto + ' WHERE CODMOVIMENTO = ' + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
   sqltexto := sqltexto + '   AND CFOP IS NULL';
   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(sqltexto);
   Try
     dm.sqlsisAdimin.Commit(TD);
   except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, Sem CFOP na cupom.', mtError, [mbOk], 0);
   end;

  if (cds_Mov_det.Active) then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_Mov_det.Open;

  // verificando sem tem produto sem CST
  semCSTCupom := 'NAO';
  while not cds_mov_det.Eof do
  begin
    if ((cds_Mov_detCST.IsNull) or (Trim(cds_Mov_detCST.AsString) = '') or (length(Trim(cds_Mov_detCST.AsString)) < 3)) then
    begin
      MessageDlg('O Produto : ' + cds_Mov_detDESCPRODUTO.AsString + ', esta sem CST. Saira como II (ISENTO)', mtError, [mbOk], 0);
      //semCSTCupom := 'SIM';
      //exit;
    end;
    cds_mov_det.Next;
  end;

  if (semCSTCupom = 'SIM') then
  begin
    exit;
  end;

  if (Panel2.Visible = True) then
    if (ComboBox1.Text = 'À PRAZO') then
      vendaaprazo
    else
      vendaavista;

  if (Panel3.Visible = True) then
    if (ComboBox3.Text = 'À PRAZO') then
      vendaaprazo
    else
      vendaavista;

  if (ComboBox1.Text = 'À VISTA') then
    imprimecupom;

  if (Panel2.Visible = True) then //Mesa - Delivery
  begin
    if (cDelivery.Active) then
      cDelivery.Close;
    cDelivery.Open;
    if (cdsMesa.Active) then
      cdsMesa.Close;
    cdsMesa.Open;
  end;
  BitBtn7.Enabled := False;
  jvPago.Value := 0;
end;

procedure TfTerminal_Delivery.DtSrcStateChange(Sender: TObject);
begin
  BitBtn4.Enabled:=DtSrc.State in [dsBrowse];
  inherited;

end;

procedure TfTerminal_Delivery.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    dm.codcli := 0;
    dm.nomecli := '';
    if (cds_Movimento.State in [dsBrowse]) then
    begin
      cds_Movimento.edit;
      cds_MovimentoCODCLIENTE.AsInteger := dm.codcli;
      cds_Movimento.ApplyUpdates(0);
    end
    else
      cds_MovimentoCODCLIENTE.AsInteger := dm.codcli;
    Edit3.Text := '';
    Edit4.Text := IntToStr(dm.codcli);
    Edit2.Text := dm.nomecli;
    //Edit1.Text := telefonecli;
    //Edit3.Text := enderecocli;
    dbeProduto.SetFocus;
  finally

  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   Edit1.Text := '';
   Edit2.Text := '';
   Edit3.Text := '';
   Edit2.Text := cdsMesaNOMECLIENTE.AsString;
   if (cds_Movimento.Active) then
       cds_Movimento.Close;
   if (cds_Mov_det.Active) then
       cds_Mov_det.Close;
   cds_Movimento.Params[0].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
   cds_Movimento.Open;
   cds_Mov_det.Params[0].Clear;
   cds_Mov_det.Params[1].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
   cds_Mov_det.Open;
   if (GroupBox2.Visible = False) then
       GroupBox2.Visible := True;
   if (GroupBox1.Visible = True) then
       GroupBox1.Visible := False;
   if (GroupBox2.Visible = True) then
   begin
      cbMesas.Text := cdsMesaNOMECLIENTE.AsString;
      Edit4.Text := IntToStr(cdsMesaCODCLIENTE.AsInteger);
   end;
   RadioGroup1.ItemIndex := 0;
   dbeProduto.SetFocus;
   jvPago.Text := DBEdit4.Text;
   JvTroco.Value := 0;
end;

procedure TfTerminal_Delivery.imprimecupom;
var
  texto1, texto2, texto3, texto4, texto5, texto6, texto7,var_aliq_cupom : string;
  varPago : Double;
  sDesconto, sAcrescimo: String;
  I : integer;
begin
  if (ComboBox2.Text = '')then
  begin
    ComboBox2.ItemIndex := 0;
  end;
  inherited;
  if (cds_MovimentoSTATUS.AsInteger = 9) then
  begin
    MessageDlg('Cupom já impresso.', mtWarning, [mbOK], 0);
    Exit;
  end;
  cpf_cliente_cupom := '';
  If MessageDlg('Usar CGC/CPF do Consumidor?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  begin
    with TFormUsaCPFDesForma.Create(self) do
    begin
      Caption := 'CGC/CPF do Consumidor ';
      Panel1.BringToFront;
      Edit1.Text := Edit5.Text;
      Edit3.Text := DBEdit5.Text;
      ShowModal;
      free;
    end;
  end;
  //Else
  //Begin
  if (cpf_cliente_cupom = '') then
    iRetorno := Bematech_FI_AbreCupom( Pchar( '' ) )
  else
    iRetorno := Bematech_FI_AbreCupom(cpf_cliente_cupom);
{  if ( iRetorno <> 1 ) or ( iRetorno = -27 ) then
  begin
    VerificaRetornoFuncaoImpressora(iRetorno);
    //frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
    //iRetorno := Bematech_FI_CancelaCupom();
    retornoImpressora := 0;
    exit;
  end;
}
  DecimalSeparator := '.';
  cupom_codMov := cds_Mov_detCODMOVIMENTO.AsInteger ;
  cds_Mov_det.First;
  while not cds_Mov_det.Eof do
  begin
    // busco a classificação fiscal do produto
    // ESQUECE - a CALCULA ST ja faz isto - Carlos 22/08/2014
    {if (buscaTributacao.Active) then
      buscaTributacao.Close;
    buscaTributacao.CommandText := 'select ICMS_SUBST, ICMS,CST ' +
      ' from CLASSIFICACAOFISCALPRODUTO ' +
      ' where COD_PROD = :id ';
    buscaTributacao.Params[0].AsInteger := cds_Mov_detCODPRODUTO.AsInteger;
    buscaTributacao.Open;
    if (buscaTributacao.IsEmpty) then
    begin
      // Busca na NCM
      buscaTributacao.Close;
      buscaTributacao.CommandText := 'select ICMS_SUBST, ICMS ,CST ' +
        ' from CLASSIFICACAOFISCALNCM ' +
        ' where NCM = ' + QuotedStr(cds_mov_detNCM.AsString) +
        '   and CFOP = ' + QuotedStr(vCFOP);
      buscaTributacao.Open;
    end;}
    //  Verifica o Tipo da Quantidade:
    // 'I' para Inteira ou 'F' para Fracionária
    sTipoQtde := 'I';
    // Verifica o Tipo de Decimal:
    // 2 para duas casas ou 3 para três casas
    iDecimal := 2;
    // Verifica o Tipo de Desconto:
    // '%' para percentual ou '$' para valor
    sTipoDesconto := '%';
    texto1 := cds_Mov_detCODPRO.AsString;
    texto2 := Trim(copy(cds_Mov_detDESCPRODUTO.AsString, 0,200));
    texto3 := cds_Mov_detALIQ_CUPOM.AsString; //'II'; // Aliquota
    //texto4 := FloatToStr(buscaTributacaoICMS_SUBST.AsFloat); //'FF'; // Aliquota
    //I := StrToInt(texto3);
    var_aliq_cupom := texto3;
    {if (cds_Mov_detALIQ_CUPOM.AsString <> '') then
    begin
      if (var_aliq_cupom = '') then
        var_aliq_cupom := '18';
      if (Length(var_aliq_cupom) = 2) then
        var_aliq_cupom := var_aliq_cupom + '00';
      if (Length(var_aliq_cupom) = 1) then
        var_aliq_cupom := '0' + var_aliq_cupom + '00';
    end
    else begin
      var_aliq_cupom := '';
    end;
    texto3 := 'II';
    if (Trim(cds_Mov_detCST.AsString) = '060') then
    begin
      texto3 := 'FF';
    end;
    if (Trim(cds_Mov_detCST.AsString) = '000') then
    begin
      texto3 := '00';
    end;
    if (Trim(cds_Mov_detCST.AsString) = '040') then
    begin
      texto3 := 'II';
    end;
    if (Trim(cds_Mov_detCST.AsString) = '041') then
    begin
      texto3 := 'NN';
    end;


    //buscaTributacao.Close;

    varAliquota := texto3;}
    if (var_aliq_cupom <> '') then
      sAliquota := var_aliq_cupom
    else
      sAliquota := 'II';
    texto4 := Format('%-6.3n',  [cds_Mov_detQUANTIDADE.AsFloat]);
    texto5 := Format('%-6.3n',  [cds_Mov_detPRECO.AsFloat]);
    texto6 := '0';  // Desconto
    texto7 := cds_Mov_detUN.AsString;
    sAcrescimo := '0';
    sDesconto  := '0';

    // Testar metodo com mais de uma forma de Pagamento...
    iRetorno := Bematech_FI_VendeItemDepartamento(texto1, texto2,
                sAliquota, texto5, texto4, sAcrescimo, sDesconto,'01', texto7);
    retornoImpressora := 1;
    if (iRetorno <> 1) then
    begin
      VerificaRetornoFuncaoImpressora(iRetorno);
      //frmPrincipal.Analisa_iRetorno();
      iRetorno := Bematech_FI_CancelaCupom();
      retornoImpressora := 0;
      exit;
    end;
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
    cds_Mov_det.Next
  end;
  DecimalSeparator := ',';

  if (cbporcento.Checked = True) then
  begin
    with TFormFechaComAcrecimo.Create(self) do
    begin
      Edit2.Text := ComboBox2.Text;
      varPago := jvPago.value;
      Edit3.Text := Format('%-6.2n', [varPago]);
      ShowModal;
      free;
    end;
  end
  else
  begin
    with TFormFechaComAcrecimo.Create(self) do
    begin
      Edit1.Text := '0,00';
      Edit2.Text := ComboBox2.Text;
      varPago := jvPago.value;
      Edit3.Text := Format('%-6.2n', [varPago]);
      ShowModal;
      free;
    end;
  end;

  if (RetornoImpressora = 1) then
  begin
    alteraStatusMovimento;
    label7.Caption := 'Retorno 1';
  end
  else begin
    label7.Caption := 'Retorno '+ IntToStr(iRetorno);
  end;

  if (buscaTributacao.Active) then
    buscaTributacao.Close;
end;

procedure TfTerminal_Delivery.cbMesasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    if (cbMesas.text = '') then
    begin
       MessageDlg('escolha uma mesa.', mtWarning, [mbOK], 0);
       cbMesas.SetFocus;
       exit;
    end;
    sMesas.Open;
    sMesas.Locate('NOMECLIENTE', cbMesas.Text, [loCaseInsensitive]);
    Edit4.Text := IntToStr(sMesasCODCLIENTE.AsInteger);
    Edit2.Text := sMesasNOMECLIENTE.AsString;
    dbeProduto.SetFocus;
  end;
end;

procedure TfTerminal_Delivery.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (Panel2.Visible = False) then
    begin
      Panel3.Visible := False;
      Panel2.Visible := True;
    end;
    GroupBox1.Visible := False;
    GroupBox2.Visible := True;
    cbMesas.SetFocus;
    if (not cdsMesa.Active) then
        cdsMesa.Open;
  end;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (Panel2.Visible = False) then
    begin
      Panel3.Visible := False;
      Panel2.Visible := True;
    end;
    GroupBox2.Visible := False;
    GroupBox1.Visible := True;
    Edit1.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 2) then
  begin
    if (Panel2.Visible = True) then
    begin
      Panel3.Visible := True;
      Panel2.Visible := False;
    end;
  end;
end;

procedure TfTerminal_Delivery.ComboBox3Change(Sender: TObject);
begin
  inherited;
  ComboBox1.Text := ComboBox3.Text;
  ComboBox2.Text := ComboBox4.Text;
end;

procedure TfTerminal_Delivery.ComboBox4Change(Sender: TObject);
begin
  inherited;
  ComboBox1.Text := ComboBox3.Text;
  ComboBox2.Text := ComboBox4.Text;
end;

procedure TfTerminal_Delivery.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
    DtSrc.DataSet.Edit;

  if DtSrc1.DataSet.State in [dsBrowse] then
  begin
    DtSrc1.DataSet.Edit;
    DBEdit2.SetFocus;
  end;
end;

procedure TfTerminal_Delivery.IncluirNovoItem1Click(Sender: TObject);
begin
  inherited;
    if DtSrc1.DataSet.State in [dsBrowse] then
    begin
      DtSrc1.DataSet.Append;
      dbeProduto.SetFocus;
    end;
end;

procedure TfTerminal_Delivery.ExcluirItem1Click(Sender: TObject);
begin
  inherited;
 if  DtSrc1.DataSet.State in [dsBrowse] then
 begin
   if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;

   if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?', mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
   begin
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTODETALHE WHERE CODDETALHE = ' +
        IntToStr(cds_Mov_detCODDETALHE.AsInteger));
      Try
        dm.sqlsisAdimin.Commit(TD);
        DtSrc1.DataSet.Close;
        DtSrc1.DataSet.Open;
      except
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
         MessageDlg('Erro no sistema, o produto não foi excluido.', mtError,
             [mbOk], 0);
      end;
   end;
   if (cds_Mov_detTotalPedido.IsNull) then
      jvPago.Value := 0
   else
      jvPago.Text := DBEdit4.Text;
 end;

end;

procedure TfTerminal_Delivery.btnImprimirClick(Sender: TObject);
begin
//  imprimecupom;
end;

procedure TfTerminal_Delivery.btnCancelarClick(Sender: TObject);
begin
  if cds_venda.Active then
  begin
     cds_venda.Cancel;
     cds_venda.Close;
  end;
  cds_Mov_det.cancel;
  cds_Mov_det.Close;
  inherited;
  cds_Movimento.Close;
  jvPago.Value := 0;
  JvTroco.Value := 0;
end;

procedure TfTerminal_Delivery.btnExcluirClick(Sender: TObject);
begin
 {if (dm.situacaoCaixa = 'Fechado') then
 begin
   MessageDlg(' Execute Leitura X ', mtWarning, [mbOK], 0);
   exit;
 end;}
  //inherited;

  if (cds_Mov_det.Active) then
     cds_Mov_det.Close;
  if (cdsMesa.Active) then
     cdsMesa.Close;
  cdsMesa.Open;
  if (cDelivery.Active) then
     cDelivery.Close;
  cDelivery.Open;

  jvPago.Value := 0;
  JvTroco.Value := 0;

end;

procedure TfTerminal_Delivery.DtSrc1StateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc1.DataSet.State in [dsEdit]) then
  begin
    if (DtSrc.DataSet.State in [dsBrowse]) then
        DtSrc.DataSet.edit;
  end;
end;

procedure TfTerminal_Delivery.Edit1Exit(Sender: TObject);
begin
  inherited;
  if (DtSrc.DataSet.State in [dsInsert, dsEdit]) then
  begin
    if (procFone.Active) then
       procFone.Close;
    procFone.Params[0].AsString := Edit1.Text;
    procFone.Open;
    if (procFone.IsEmpty) then
    begin
      if MessageDlg('Telefone não cadastrado deseja Cadastrá-lo.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          BitBtn2.Click
      else
          exit;
    end
    else
    begin
       Edit3.Text := '';
       Edit4.Text := '';
       Edit2.Text := procFoneNOMECLIENTE.AsString;
       Edit4.Text := IntToStr(procFoneCODCLIENTE.AsInteger);
       if (procFoneLOGRADOURO.AsString <> '') then
         Rua := procFoneLOGRADOURO.AsString;
       if (procFoneBAIRRO.AsString <> '') then
         bairro := procFoneBAIRRO.AsString;
       Edit3.Text := Rua + ' ' + bairro;
       dbeProduto.SetFocus;
    end;
  end;
end;

procedure TfTerminal_Delivery.buscacliente;
begin
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  try
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    if (fProcurar_nf.ShowModal = mrOK) then
    begin
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
      if dtSrc.State=dsBrowse then
        cds_Movimento.Edit;
      cds_MovimentoCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
      cds_MovimentoNOMECLIENTE.AsString := dmnf.scds_cli_procNOMECLIENTE.AsString;
      edit5.Text := dmnf.scds_cli_procCNPJ.AsString;
      edit7.Text := dmnf.scds_cli_procUF.AsString;
      prazoparapgto := dmnf.scds_cli_procPRAZORECEBIMENTO.AsInteger;
      dbeProduto.SetFocus;
    end;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
end;

procedure TfTerminal_Delivery.btnProcurarClick(Sender: TObject);
begin
 {if (dm.situacaoCaixa = 'Fechado') then
 begin
   MessageDlg(' Execute Leitura X ', mtWarning, [mbOK], 0);
   exit;
 end;}
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
      fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
      dmnf.cds_ccusto.Next;
    end;
    DM.tipoVenda := 'CUPOM';
    fFiltroMovimento.ShowModal;

    cds_Movimento.Close;
    cds_Movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    cds_Movimento.Open;

    cds_Mov_det.Close;
    cds_Mov_det.Params[0].Clear;
    cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;

    if (dm.totalpago > 0) then
      jvPago.Value := dm.totalpago
    else
      jvPago.Text := DBEdit4.Text;

     if (RadioGroup1.ItemIndex = 0) then // Mesa
     begin
        if (not cdsMesa.Active) then
            cdsMesa.Open;
        cds_Mov_det.Close;
        cds_Mov_det.Params[0].Clear;
        cds_Mov_det.Params[1].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
        cds_Mov_det.Open;
     end;
end;

procedure TfTerminal_Delivery.vendaaprazo;
begin
  fTerminalFinalizar := TfTerminalFinalizar.Create(Application);
  try
    fTerminalFinalizar.ShowModal;
  finally
    fTerminalFinalizar.Free;
  end;
end;

procedure TfTerminal_Delivery.jvPagoChange(Sender: TObject);
var
  vTroco, vPago, vTotal : double;
begin
  {if (cdsTitulo.Active) then
    cdsTitulo.Close;
  cdsTitulo.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cdsTitulo.Open;
  if (cdsTituloSTATUS.AsString <> '7-') then
  begin
    if (cds_Movimento.State in [dsBrowse] ) then
       cds_Movimento.Edit;

    if (cds_Movimento.State in [dsInsert, dsEdit] ) then
    begin
      if (cds_Mov_detTotalPedido.IsNull) then
          vTotal := 0
      else
         vTotal := cds_Mov_detTotalPedido.value;

      vPago := jvPago.Value;
      if (vTotal > 0) then
        vTroco := vPago - vTotal;
      JvTroco.Value := vTroco;
    end;
  end;}
end;

procedure TfTerminal_Delivery.cbporcentoClick(Sender: TObject);
begin
  inherited;
  if (cbporcento.Checked = True) then
  begin
     DBEdit9.Enabled := True;
     DBEdit9.Color := clWindow;
  end
  else
  begin
     DBEdit9.Enabled := False;
     DBEdit9.Color := clBtnFace;
  end;
end;

procedure TfTerminal_Delivery.BitBtn7Click(Sender: TObject);
begin
  inherited;
  buscacliente;
  ComboBox3.SetFocus;
end;

procedure TfTerminal_Delivery.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (cds_Mov_det.State in [dsEdit]) then
  begin
    cds_Mov_det.Post;
    dbeProduto.Text := '';
    servico := '';
    jvPago.Text := DBEdit4.Text;
  end;
end;

procedure TfTerminal_Delivery.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    if (cds_Mov_det.State in [dsInsert, dsEdit]) then
    begin
      cds_Mov_det.Post;
      dbeProduto.Text := '';
    end;
    jvPago.Text := DBEdit4.Text;
    dbeProduto.SetFocus;
  end;
end;

procedure TfTerminal_Delivery.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (cds_Mov_det.State in [dsInsert, dsEdit]) then
  begin
    cds_Mov_det.Post;
    dbeProduto.Text := '';
    jvPago.Text := DBEdit4.Text;
    dbeProduto.SetFocus;
  end;
end;

procedure TfTerminal_Delivery.Button1Click(Sender: TObject);
begin
  inherited;
  fMenuCupom := TfMenuCupom.Create(Application);
  try
    fMenuCupom.ShowModal;
  finally
    fMenuCupom.Free;
  end;
end;

procedure TfTerminal_Delivery.btnSairClick(Sender: TObject);
begin
  iRetorno := Bematech_FI_FechaPortaSerial();
  If iRetorno = 1 Then
    MessageDlg( 'Porta Serial Liberada!', mtInformation, [mbOk], 0);
  Close;
end;

procedure TfTerminal_Delivery.gravacupom;
var codigodocliente : integer;
begin
  {if (cdsTitulo.Active) then
    cdsTitulo.Close;
  cdsTitulo.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cdsTitulo.Open;

  if (cdsTituloSTATUS.AsString = '7-') then
  begin
    MessageDlg('Venda Já Finalizada.', mtWarning, [mbOK], 0);
    exit;
  end;}

  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (cbMesas.Text = '') then
    begin
      MessageDlg('Informe a mesa do Cliente', mtWarning, [mbOK], 0);
      exit;
    end
    else
    begin
      sMesas.Open;
      sMesas.Locate('NOMECLIENTE', cbMesas.Text, [loCaseInsensitive]);
      codigodocliente := sMesasCODCLIENTE.AsInteger;
    end;
    cds_MovimentoCODNATUREZA.AsInteger := 13; //Mesa
    cds_MovimentoCODCLIENTE.AsInteger := codigodocliente;
  end;

  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (procFone.Active) then
       procFone.Close;
    procFone.Params[0].AsString := Edit1.Text;
    procFone.Open;
    if (procFone.IsEmpty) then
    begin
      if MessageDlg('Telefone não cadastrado deseja Cadastrá-lo.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          BitBtn2.Click
      else
          exit;
    end
    else
     cds_MovimentoCODCLIENTE.AsInteger :=  procFoneCODCLIENTE.AsInteger;
    cds_MovimentoCODNATUREZA.AsInteger := 14; //Delivery
  end;

   if (cds_MovimentoCODMOVIMENTO.AsInteger = 1999999) then
   begin
     cds_MovimentoCODMOVIMENTO.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
   end;

  //if (RadioGroup1.ItemIndex = 2) then
  //    cds_MovimentoCODNATUREZA.AsInteger := 7; //Venda

  cds_Movimento.ApplyUpdates(0);
  cod_mov := cds_MovimentoCODMOVIMENTO.AsInteger;

  // Corrijo o codigo da movimento detalhe(tabela)
  if (cds_Mov_detCODMOVIMENTO.AsInteger = 1999999) then
  begin
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      cds_Mov_detCODMOVIMENTO.AsInteger := cod_mov;
      IF (cds_Mov_detQTDE_ALT.IsNull) then
         cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger :=  dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_det.Post;
      cds_Mov_det.Next;
    end;
  end;
  cds_Mov_det.ApplyUpdates(0);

  if (cds_Movimento.State in [dsEdit]) then
      cds_Movimento.ApplyUpdates(0);
end;

procedure TfTerminal_Delivery.aliquota;
begin

end;

procedure TfTerminal_Delivery.BitBtn9Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfTerminal_Delivery.imprimerecibo;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  placa, cliente :string;
  total : double;
begin
  inherited;
     cds_venda.Close;
     cds_venda.Params[0].Clear;
     cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
     cds_venda.Open;
     if (not dm.cds_empresa.Active) then
        dm.cds_empresa.Open;
     {----- aqui monto o endereço-----}
     logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '------------------------------------------------------' ;
     Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
      IntToStr(cds_vendaNOTAFISCAL.AsInteger) + ' - ' + cds_vendaSERIE.AsString;
     Texto2 := '------------------------------------------------------' ;
     Texto3 := 'Produto' ;
     Texto4 := 'Cod.Barra          UN      Qtde     V.Un.     V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '              Total.: R$   ';
     cliente := 'Cliente : ' + cds_MovimentoNOMECLIENTE.Value;
     AssignFile(IMPRESSORA,'LPT1:');
     Rewrite(IMPRESSORA);
     Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
     Writeln(Impressora, c17cpi, logradouro);
     Writeln(Impressora, cep);
     Writeln(Impressora, fone);
     Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
     Writeln(Impressora, cliente);
     Writeln(Impressora, c17cpi, placa);
     Writeln(Impressora, c17cpi, texto);
     Writeln(Impressora, c17cpi, texto1);
     Writeln(Impressora, c17cpi, texto2);
     Writeln(Impressora, c17cpi, texto3);
     Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
   try
     cds_Mov_det.First;
     while not cds_Mov_det.Eof do
     begin
       cds_Mov_det.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[cds_Mov_detPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[cds_Mov_detCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('   %-2s  ',[cds_Mov_detUN.Value]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[cds_Mov_detQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('    %-6.2n',[cds_Mov_detPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('    %-6.2n',[cds_Mov_detValorTotal.value]));
      with Printer.Canvas do
      begin
       Font.Name := 'Courier New';
       Font.Size := 4;
      end;
      cds_Mov_det.next;
     end;
     total := cds_Mov_detTotalPedido.Value;
     Writeln(Impressora, c17cpi, texto);
     Write(Impressora, c17cpi, texto5);
     Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));
     Texto5 := 'Vencimento :   ';
     Write(Impressora, c17cpi, texto5);
     Texto5 := DateTimeToStr(cds_vendaDATAVENCIMENTO.AsDateTime);
     Writeln(Impressora, c17cpi, texto5);

     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;
  dbeProduto.SetFocus;

end;

procedure TfTerminal_Delivery.CadProdutos1Click(Sender: TObject);
begin
  fProdutoCadastro:=TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.Free;
  end;
end;

procedure TfTerminal_Delivery.Clientes1Click(Sender: TObject);
begin
  inherited;
  fClienteCadastro:=TfClienteCadastro.Create(Application);
  try
    fClienteCadastro.ShowModal;
  finally
    fClienteCadastro.Free;
  end;
end;

procedure TfTerminal_Delivery.FormDestroy(Sender: TObject);
begin
  frmPrincipal.Free;
  inherited;
end;

procedure TfTerminal_Delivery.alteraStatusMovimento;
var sqlAlteraMov: string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cupom_codMov := cds_MovimentoCODMOVIMENTO.AsInteger ;
    if (cupom_numcupom = '') then
      cupom_numcupom := IntToStr(cupom_codMov);
    sqlAlteraMov := 'update MOVIMENTO set status = 9 ' +
      ' ,NFE = ' + QuotedStr(cupom_numcupom) + 
      ' where CODMOVIMENTO = ' + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger)+
      '   and CODNATUREZA = 7';
    dm.sqlsisAdimin.ExecuteDirect(sqlAlteraMov);
    dm.sqlsisAdimin.Commit(TD);
    cds_Movimento.Close;
    cds_Mov_det.Close;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

end;

function TfTerminal_Delivery.VerificaRetornoFuncaoImpressora(
  iRetorno: integer): boolean;
  var cMSGErro: string;
begin
  cMSGErro := '';
  result := False;
  case iRetorno of
     0: cMSGErro := 'Erro de Comunicação !';
    -1: cMSGErro := 'Erro de execução na Função !';
    -2: cMSGErro := 'Parâmetro inválido na Função !';
    -3: cMSGErro := 'Alíquota não Programada !';
    -4: cMSGErro := 'Arquivo BEMAFI32.INI não Encontrado !';
    -5: cMSGErro := 'Erro ao abrir a Porta de Comunicação !';
    -6: cMSGErro := 'Impressora Desligada ou Cabo de Comunicação Desconectado!';
    -7: cMSGErro := 'Código do Banco não encontrado no arquivo BEMAFI32.INI !';
    -8: cMSGErro := 'Erro ao criar arquivo STATUS.TXT ou RETORNO.TXT!';
    -27: cMSGErro := 'Status diferente de 6, 0, 0 !';
    -30: cMSGErro := 'Função incompatível com a impressora fiscal YANCO !';
  end;
  if ( cMSGErro <> '' ) then
  begin
    Application.MessageBox( pchar( cMSGErro ), 'Atenção', MB_IconError + MB_OK );
    result := False;
  end;
  cMSGErro := '';
  if ( iRetorno <> 1 ) then
  begin
    Bematech_FI_RetornoImpressora( iACK, iST1, iST2 );
    if ( iACK = 21 ) then
    begin
      Application.MessageBox( 'A Impressora retornou NAK !' + #13 +
        'Erro de Protocolo de Comunicação !', 'Atenção', MB_IconError + MB_OK );
      result := False;
    end
    else
    if ( iST1 <> 0 ) or ( iST2 <> 0 ) then
    begin
      // Analisa ST1
      if ( iST1 >= 128 ) then
      begin
        iST1 := iST1 - 128;
        cMSGErro := cMSGErro + 'Fim de Papel' + #13;
      end;
      if ( iST1 >= 64 ) then
      begin
        iST1 := iST1 - 64;
        cMSGErro := cMSGErro + 'Pouco Papel' + #13;
      end;
      if ( iST1 >= 32 ) then
      begin
        iST1 := iST1 - 32;
        cMSGErro := cMSGErro + 'Erro no Relógio' + #13;
      end;
      if ( iST1 >= 16 ) then
      begin
        iST1 := iST1 - 16;
        cMSGErro := cMSGErro + 'Impressora em Erro' + #13;
      end;
      if ( iST1 >= 8 ) then
      begin
        iST1 := iST1 - 8;
        cMSGErro := cMSGErro + 'Primeiro Dado do Comando não foi ESC' + #13;
      end;
      if iST1 >= 4 then
      begin
        iST1 := iST1 - 4;
        cMSGErro := cMSGErro + 'Comando Inexistente' + #13;
      end;
      if iST1 >= 2 then
      begin
        iST1 := iST1 - 2;
        cMSGErro := cMSGErro + 'Cupom Fiscal Aberto' + #13;
      end;
      if iST1 >= 1 then
      begin
        iST1 := iST1 - 1;
        cMSGErro := cMSGErro + 'Número de Parâmetros Inválidos' + #13;
      end;
      // Analisa ST2
      if iST2 >= 128 then
      begin
        iST2 := iST2 - 128;
        cMSGErro := cMSGErro + 'Tipo de Parâmetro de Comando Inválido' + #13;
      end;
      if iST2 >= 64 then
      begin
        iST2 := iST2 - 64;
        cMSGErro := cMSGErro + 'Memória Fiscal Lotada' + #13;
      end;
      if iST2 >= 32 then
      begin
        iST2 := iST2 - 32;
        cMSGErro := cMSGErro + 'Erro na CMOS' + #13;
      end;
      if iST2 >= 16 then
      begin
        iST2 := iST2 - 16;
        cMSGErro := cMSGErro + 'Alíquota não Programada' + #13;
      end;
      if iST2 >= 8 then
      begin
        iST2 := iST2 - 8;
        cMSGErro := cMSGErro + 'Capacidade de Alíquota Programáveis Lotada' + #13;
      end;
      if iST2 >= 4 then
      begin
        iST2 := iST2 - 4;
        cMSGErro := cMSGErro + 'Cancelamento não permitido' + #13;
      end;
      if iST2 >= 2 then
      begin
        iST2 := iST2 - 2;
        cMSGErro := cMSGErro + 'CGC/IE do Proprietário não Programados' + #13;
      end;
      if iST2 >= 1 then
      begin
        iST2 := iST2 - 1;
        cMSGErro := cMSGErro + 'Comando não executado' + #13;
      end;
      if ( cMSGErro <> '' ) then
      begin
        Application.MessageBox( pchar( cMSGErro ), 'Atenção', MB_IconError + MB_OK );
        result := False;
      end;
    end
    else
      result := True;
  end;
end;

end.
