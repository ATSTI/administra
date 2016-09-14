unit uSat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrBase, ACBrSAT, ACBrSATClass, Buttons, ExtCtrls, Spin, ComCtrls,
  Menus, OleCtrls, SHDocVw, FMTBcd, DB, DBClient, Provider, SqlExpr, IniFiles,
  ACBrSATExtratoClass, ACBrSATExtratoESCPOS, pcnConversao, ACBrValidador,
  TypInfo, ACBrUtil, ACBrPosPrinter, ACBrDFe, ACBrNFe,
  ACBrNFeDANFEClass, DBXpress;

const
  cAssinatura = '9d4c4eef8c515e2c1269c2e4fff0719d526c5096422bf1defa20df50ba06469'+
                'a28adb25ba0447befbced7c0f805a5cc58496b7b23497af9a04f69c77f17c0c'+
                'e68161f8e4ca7e3a94c827b6c563ca6f47aea05fa90a8ce3e4327853bb2d664'+
                'ba226728fff1e2c6275ecc9b20129e1c1d2671a837aa1d265b36809501b519d'+
                'bc08129e1c1d2671a837aa1d265b36809501b519dbc08129e1c1d2671a837aa'+
                '1d265b36809501b519dbc08129e1c' ;
type                          
  TfSat = class(TForm)
    ACBrSAT1: TACBrSAT;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    gpOperacao: TGroupBox;
    bInicializar: TButton;
    cbxModelo: TComboBox;
    GroupBox2: TGroupBox;
    btLerParams: TButton;
    btSalvarParams: TButton;
    GroupBox1: TGroupBox;
    PageControl2: TPageControl;
    tsDadosSAT: TTabSheet;
    Label9: TLabel;
    SbArqLog: TSpeedButton;
    Label10: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    edLog: TEdit;
    edNomeDLL: TEdit;
    edtCodigoAtivacao: TEdit;
    edtCodUF: TEdit;
    seNumeroCaixa: TSpinEdit;
    cbxUTF8: TCheckBox;
    sePagCod: TSpinEdit;
    sfeVersaoEnt: TEdit;
    cbxFormatXML: TCheckBox;
    cbxAmbiente: TComboBox;
    cbxSalvarCFe: TCheckBox;
    tsDadosEmit: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitIM: TEdit;
    cbxRegTribISSQN: TComboBox;
    cbxIndRatISSQN: TComboBox;
    cbxRegTributario: TComboBox;
    tsDadosSwHouse: TTabSheet;
    Label2: TLabel;
    Label5: TLabel;
    edtSwHCNPJ: TEdit;
    edtSwHAssinatura: TEdit;
    tsRede: TTabSheet;
    gbIPFix: TGroupBox;
    lSSID2: TLabel;
    lSSID3: TLabel;
    lSSID4: TLabel;
    lSSID5: TLabel;
    lSSID6: TLabel;
    edRedeIP: TEdit;
    edRedeMask: TEdit;
    edRedeGW: TEdit;
    edRedeDNS1: TEdit;
    edRedeDNS2: TEdit;
    gbPPPoE: TGroupBox;
    lSSID7: TLabel;
    lSSID8: TLabel;
    edRedeUsuario: TEdit;
    edRedeSenha: TEdit;
    rgRedeTipoInter: TRadioGroup;
    gbWiFi: TGroupBox;
    lSSID: TLabel;
    Label24: TLabel;
    lSSID1: TLabel;
    edRedeSSID: TEdit;
    cbxRedeSeg: TComboBox;
    edRedeCodigo: TEdit;
    rgRedeTipoLan: TRadioGroup;
    gbProxy: TGroupBox;
    lSSID9: TLabel;
    lSSID10: TLabel;
    lSSID11: TLabel;
    lSSID12: TLabel;
    cbxRedeProxy: TComboBox;
    edRedeProxyIP: TEdit;
    edRedeProxyUser: TEdit;
    edRedeProxySenha: TEdit;
    edRedeProxyPorta: TSpinEdit;
    Impressao: TTabSheet;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    mAtivarSAT: TMenuItem;
    mComunicarCertificado: TMenuItem;
    mAssociarAssinatura: TMenuItem;
    MenuItem3: TMenuItem;
    mBloquearSAT: TMenuItem;
    mDesbloquearSAT: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem2: TMenuItem;
    mGerarVenda: TMenuItem;
    mEnviarVenda: TMenuItem;
    mImprimirExtratoVenda: TMenuItem;
    mImprimirExtratoVendaResumido: TMenuItem;
    MenuItem12: TMenuItem;
    miGerarXMLCancelamento: TMenuItem;
    miEnviarCancelamento: TMenuItem;
    miImprimirExtratoCancelamento: TMenuItem;
    MenuItem6: TMenuItem;
    mConsultarStatusOperacional: TMenuItem;
    mConsultarSAT: TMenuItem;
    mConsultarNumeroSessao: TMenuItem;
    MenuItem7: TMenuItem;
    mAtaulizarSoftwareSAT: TMenuItem;
    N1: TMenuItem;
    LerXMLinterfaceRede1: TMenuItem;
    GerarXMLInterfaceRede1: TMenuItem;
    N2: TMenuItem;
    mConfigurarInterfaceRede: TMenuItem;
    MenuItem8: TMenuItem;
    mTesteFimAFim: TMenuItem;
    mExtrairLogs: TMenuItem;
    mLimpar: TMenuItem;
    PageControl3: TPageControl;
    tsLog: TTabSheet;
    mLog: TMemo;
    tsGerado: TTabSheet;
    mVendaEnviar: TMemo;
    tsRecebido: TTabSheet;
    mRecebido: TWebBrowser;
    tsCancelamento: TTabSheet;
    mCancelamentoEnviar: TMemo;
    Panel2: TPanel;
    Label18: TLabel;
    edChaveCancelamento: TEdit;
    tsRedeXML: TTabSheet;
    mRede: TWebBrowser;
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
    sds_MovimentoCNPJ: TStringField;
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
    cds_MovimentoCNPJ: TStringField;
    sdsItensNF: TSQLDataSet;
    sdsItensNFCODPRODUTO: TIntegerField;
    sdsItensNFQUANTIDADE: TFloatField;
    sdsItensNFPRECO: TFloatField;
    sdsItensNFCFOP: TStringField;
    sdsItensNFCODPRO: TStringField;
    sdsItensNFUNIDADEMEDIDA: TStringField;
    sdsItensNFICMS: TFloatField;
    sdsItensNFPIPI: TFloatField;
    sdsItensNFVIPI: TFloatField;
    sdsItensNFVLR_BASEICMS: TFloatField;
    sdsItensNFVALOR_ICMS: TFloatField;
    sdsItensNFVLR_BASE: TFloatField;
    sdsItensNFICMS_SUBST: TFloatField;
    sdsItensNFICMS_SUBSTD: TFloatField;
    sdsItensNFVALTOTAL: TFloatField;
    sdsItensNFCSOSN: TStringField;
    sdsItensNFFRETE: TFloatField;
    sdsItensNFVALOR_DESCONTO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFVALOR_SEGURO: TFloatField;
    sdsItensNFVALOR_OUTROS: TFloatField;
    sdsItensNFCODDETALHE: TIntegerField;
    sdsItensNFCST: TStringField;
    sdsItensNFVALOR_PIS: TFloatField;
    sdsItensNFVALOR_COFINS: TFloatField;
    sdsItensNFII: TFloatField;
    sdsItensNFBCII: TFloatField;
    sdsItensNFOBS: TStringField;
    sdsItensNFCSTIPI: TStringField;
    sdsItensNFCSTPIS: TStringField;
    sdsItensNFCSTCOFINS: TStringField;
    sdsItensNFPPIS: TFloatField;
    sdsItensNFPCOFINS: TFloatField;
    sdsItensNFNITEMPED: TIntegerField;
    sdsItensNFPEDIDO: TStringField;
    sdsItensNFVLRBC_IPI: TFloatField;
    sdsItensNFVLRBC_PIS: TFloatField;
    sdsItensNFVLRBC_COFINS: TFloatField;
    sdsItensNFVLRTOT_TRIB: TFloatField;
    sdsItensNFCOD_BARRA: TStringField;
    dspItensNF: TDataSetProvider;
    cdsItensNF: TClientDataSet;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFCFOP: TStringField;
    cdsItensNFCODPRO: TStringField;
    cdsItensNFUNIDADEMEDIDA: TStringField;
    cdsItensNFICMS: TFloatField;
    cdsItensNFPIPI: TFloatField;
    cdsItensNFVIPI: TFloatField;
    cdsItensNFVLR_BASEICMS: TFloatField;
    cdsItensNFVALOR_ICMS: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    cdsItensNFICMS_SUBST: TFloatField;
    cdsItensNFICMS_SUBSTD: TFloatField;
    cdsItensNFVALTOTAL: TFloatField;
    cdsItensNFCSOSN: TStringField;
    cdsItensNFFRETE: TFloatField;
    cdsItensNFVALOR_DESCONTO: TFloatField;
    cdsItensNFDESCPRODUTO: TStringField;
    cdsItensNFVALOR_SEGURO: TFloatField;
    cdsItensNFVALOR_OUTROS: TFloatField;
    cdsItensNFCODDETALHE: TIntegerField;
    cdsItensNFCST: TStringField;
    cdsItensNFVALOR_PIS: TFloatField;
    cdsItensNFVALOR_COFINS: TFloatField;
    cdsItensNFII: TFloatField;
    cdsItensNFBCII: TFloatField;
    cdsItensNFOBS: TStringField;
    cdsItensNFCSTIPI: TStringField;
    cdsItensNFCSTPIS: TStringField;
    cdsItensNFCSTCOFINS: TStringField;
    cdsItensNFPPIS: TFloatField;
    cdsItensNFPCOFINS: TFloatField;
    cdsItensNFNITEMPED: TIntegerField;
    cdsItensNFPEDIDO: TStringField;
    cdsItensNFVLRBC_IPI: TFloatField;
    cdsItensNFVLRBC_PIS: TFloatField;
    cdsItensNFVLRBC_COFINS: TFloatField;
    cdsItensNFVLRTOT_TRIB: TFloatField;
    cdsItensNFCOD_BARRA: TStringField;
    sdsItensNFCODMOVIMENTO: TIntegerField;
    cdsItensNFCODMOVIMENTO: TIntegerField;
    sEmpresa: TSQLDataSet;
    sEmpresaEMPRESA: TStringField;
    sEmpresaRAZAO: TStringField;
    sEmpresaCNPJ_CPF: TStringField;
    sEmpresaENDERECO: TStringField;
    sEmpresaLOGRADOURO: TStringField;
    sEmpresaBAIRRO: TStringField;
    sEmpresaCIDADE: TStringField;
    sEmpresaUF: TStringField;
    sEmpresaCEP: TStringField;
    sEmpresaDDD: TStringField;
    sEmpresaFONE: TStringField;
    sEmpresaFONE_1: TStringField;
    sEmpresaFONE_2: TStringField;
    sEmpresaFAX: TStringField;
    sEmpresaE_MAIL: TStringField;
    sEmpresaWEB: TStringField;
    sEmpresaLOGOTIPO: TGraphicField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TStringField;
    sEmpresaIE_RG: TStringField;
    sEmpresaSLOGAN: TStringField;
    sEmpresaOUTRAS_INFO: TStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TStringField;
    sEmpresaDIVERSOS2: TStringField;
    sEmpresaDIVERSOS3: TStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TStringField;
    sEmpresaSENHA: TStringField;
    sEmpresaNUMERO: TStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaCD_IBGE: TStringField;
    sEmpresaCRT: TIntegerField;
    sCliente: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sClienteCONTATO: TStringField;
    sClienteINSCESTADUAL: TStringField;
    sClienteRAZAOSOCIAL: TStringField;
    sClienteCNPJ: TStringField;
    sClienteLOGRADOURO: TStringField;
    sClienteBAIRRO: TStringField;
    sClienteCOMPLEMENTO: TStringField;
    sClienteCIDADE: TStringField;
    sClienteUF: TStringField;
    sClienteCEP: TStringField;
    sClienteNUMERO: TStringField;
    sClienteTELEFONE: TStringField;
    sClienteDDD: TStringField;
    sClienteCD_IBGE: TStringField;
    sClienteE_MAIL: TStringField;
    sClientePAIS: TStringField;
    sClienteCODPAIS: TStringField;
    sClienteCODFISCAL: TStringField;
    sClienteSUFRAMA: TStringField;
    sClienteTIPOFIRMA: TSmallintField;
    Label25: TLabel;
    edCPF: TEdit;
    sdsItensNFNCM: TStringField;
    cdsItensNFNCM: TStringField;
    sdsItensNFORIGEM: TStringField;
    cdsItensNFORIGEM: TStringField;
    sdsFatura: TSQLDataSet;
    dspFatura: TDataSetProvider;
    cdsFatura: TClientDataSet;
    sdsFaturaDATAVENCIMENTO: TDateField;
    sdsFaturaVIA: TStringField;
    sdsFaturaVALOR_RESTO: TFloatField;
    sdsFaturaPARCELAS: TIntegerField;
    sdsFaturaFORMARECEBIMENTO: TStringField;
    cdsFaturaDATAVENCIMENTO: TDateField;
    cdsFaturaVIA: TStringField;
    cdsFaturaVALOR_RESTO: TFloatField;
    cdsFaturaPARCELAS: TIntegerField;
    cdsFaturaFORMARECEBIMENTO: TStringField;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    OpenDialog1: TOpenDialog;
    PrintDialog1: TPrintDialog;
    ACBrPosPrinter1: TACBrPosPrinter;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lImpressora: TLabel;
    seLargura: TSpinEdit;
    seMargemTopo: TSpinEdit;
    seMargemFundo: TSpinEdit;
    seMargemEsquerda: TSpinEdit;
    seMargemDireita: TSpinEdit;
    bImpressora: TButton;                                                  
    cbUsarFortes: TRadioButton;
    cbPreview: TCheckBox;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    btSerial: TBitBtn;
    cbUsarEscPos: TRadioButton;
    cbxModeloPosPrinter: TComboBox;
    cbxPorta: TComboBox;
    cbxPagCodigo: TComboBox;
    seColunas: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seLinhasPular: TSpinEdit;
    cbImprimir1Linha: TCheckBox;
    cbxSalvarCFeCanc: TCheckBox;
    cbxSalvarEnvio: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    cbxSepararPorMES: TCheckBox;
    StatusBar1: TStatusBar;
    btnExcluir: TBitBtn;
    lblCli: TLabel;
    lblEnd: TLabel;
    btnImprimir: TBitBtn;
    BitBtn3: TBitBtn;
    btnSair: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Label31: TLabel;
    edtPastaXml: TEdit;
    sdsItensNFSTATUS1: TStringField;
    sdsItensNFOBS_VENDA: TStringField;
    cdsItensNFSTATUS1: TStringField;
    cdsItensNFOBS_VENDA: TStringField;
    Memo1: TMemo;
    Label32: TLabel;
    edtInfAdic: TEdit;
    BitBtn5: TBitBtn;
    RadioButton1: TRadioButton;
    sdsFaturaSTATUS: TStringField;
    cdsFaturaSTATUS: TStringField;
    procedure btLerParamsClick(Sender: TObject);
    procedure btSalvarParamsClick(Sender: TObject);
    procedure bInicializarClick(Sender: TObject);
    procedure bImpressoraClick(Sender: TObject);
    procedure btSerialClick(Sender: TObject);
    procedure SbArqLogClick(Sender: TObject);
    procedure mAtivarSATClick(Sender: TObject);
    procedure mComunicarCertificadoClick(Sender: TObject);
    procedure mAssociarAssinaturaClick(Sender: TObject);
    procedure mBloquearSATClick(Sender: TObject);
    procedure mDesbloquearSATClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure mGerarVendaClick(Sender: TObject);
    procedure mEnviarVendaClick(Sender: TObject);
    procedure mImprimirExtratoVendaClick(Sender: TObject);
    procedure mImprimirExtratoVendaResumidoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure sePagCodChange(Sender: TObject);
    procedure ACBrSAT1GetsignAC(var Chave: String);
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: String);
    procedure ACBrSAT1GravarLog(const ALogLine: String;
      var Tratado: Boolean);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure miGerarXMLCancelamentoClick(Sender: TObject);
    procedure miEnviarCancelamentoClick(Sender: TObject);
    procedure miImprimirExtratoCancelamentoClick(Sender: TObject);
    procedure mTesteFimAFimClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    codConsumidorSat : integer;
    { Private declarations }
    function RemoveChar(Const Texto:String):String;
    function carregarVenda: String;
    procedure AjustaACBrSAT ;
    procedure enviarSAT;
    procedure imprimirSat;
    procedure imprimirSatReduz;
    procedure TrataErros(Sender : TObject ; E : Exception) ;
    procedure LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
    procedure PrepararImpressao;
  public
    codVendaSAT: Integer;
    { Public declarations }
  end;

var
  fSat: TfSat;

implementation

uses UDm, ConfiguraSerial, pcnCFe, StrUtils;

{$R *.dfm}

procedure TfSat.btLerParamsClick(Sender: TObject);
Var
  ArqINI : String ;
  INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
    cbxModelo.ItemIndex    := INI.ReadInteger('SAT','Modelo',0);
    edLog.Text             := INI.ReadString('SAT','ArqLog','ACBrSAT.log');
    edNomeDLL.Text         := INI.ReadString('SAT','NomeDLL','C:\SAT\SAT.DLL');
    edtCodigoAtivacao.Text := INI.ReadString('SAT','CodigoAtivacao','123456789');
    edtCodUF.Text          := INI.ReadString('SAT','CodigoUF','35');
    seNumeroCaixa.Value    := INI.ReadInteger('SAT','NumeroCaixa',1);
    cbxAmbiente.ItemIndex  := INI.ReadInteger('SAT','Ambiente',1);
    sePagCod.Value         := INI.ReadInteger('SAT','PaginaDeCodigo',0);
    sfeVersaoEnt.Text      := FloatToString( INI.ReadFloat('SAT','versaoDadosEnt', cversaoDadosEnt) );
    cbxFormatXML.Checked   := INI.ReadBool('SAT','FormatarXML', True);
    cbxSalvarCFe.Checked     := INI.ReadBool('SAT','SalvarCFe', True);
    cbxSalvarCFeCanc.Checked := INI.ReadBool('SAT','SalvarCFeCanc', True);
    cbxSalvarEnvio.Checked   := INI.ReadBool('SAT','SalvarEnvio', True);
    cbxSepararPorCNPJ.Checked:= INI.ReadBool('SAT','SepararPorCNPJ', False);
    cbxSepararPorMES.Checked := INI.ReadBool('SAT','SepararPorMES', False);
    edtPastaXml.Text         := INI.ReadString('SAT','PastaXml','c:\home\sat');
    edtInfAdic.Text          := INI.ReadString('SAT','InfoAdicional','ICMS a ser recolhido conforme LC 123/2006 - Simples Nacional');

    sePagCodChange(Sender);

    cbxModeloPosPrinter.ItemIndex := INI.ReadInteger('PosPrinter', 'Modelo', Integer(ACBrPosPrinter1.Modelo));
    cbxPorta.Text := INI.ReadString('PosPrinter','Porta',ACBrPosPrinter1.Porta);
    cbxPagCodigo.ItemIndex := INI.ReadInteger('PosPrinter','PaginaDeCodigo',Integer(ACBrPosPrinter1.PaginaDeCodigo));
    ACBrPosPrinter1.Device.ParamsString := INI.ReadString('PosPrinter','ParamsString','');
    seColunas.Value := INI.ReadInteger('PosPrinter','Colunas',ACBrPosPrinter1.ColunasFonteNormal);
    seEspLinhas.Value := INI.ReadInteger('PosPrinter','EspacoLinhas',ACBrPosPrinter1.EspacoEntreLinhas);
    seLinhasPular.Value := INI.ReadInteger('PosPrinter','LinhasEntreCupons',ACBrPosPrinter1.LinhasEntreCupons);

    edtEmitCNPJ.Text := INI.ReadString('Emit','CNPJ','');
    edtEmitIE.Text   := INI.ReadString('Emit','IE','');
    edtEmitIM.Text   := INI.ReadString('Emit','IM','');
    cbxRegTributario.ItemIndex := INI.ReadInteger('Emit','RegTributario',0);
    cbxRegTribISSQN.ItemIndex  := INI.ReadInteger('Emit','RegTribISSQN',0);
    cbxIndRatISSQN.ItemIndex   := INI.ReadInteger('Emit','IndRatISSQN',0);

    edtSwHCNPJ.Text       := INI.ReadString('SwH','CNPJ','11111111111111');
    edtSwHAssinatura.Text := INI.ReadString('SwH','Assinatura',cAssinatura);

    cbUsarFortes.Checked   := INI.ReadBool('Fortes','UsarFortes', True) ;
    cbUsarEscPos.Checked   := not cbUsarFortes.Checked;
    {seLargura.Value        := INI.ReadInteger('Fortes','Largura',ACBrSATExtratoFortes1.LarguraBobina);
    seMargemTopo.Value     := INI.ReadInteger('Fortes','MargemTopo',ACBrSATExtratoFortes1.Margens.Topo);
    seMargemFundo.Value    := INI.ReadInteger('Fortes','MargemFundo',ACBrSATExtratoFortes1.Margens.Fundo);
    seMargemEsquerda.Value := INI.ReadInteger('Fortes','MargemEsquerda',ACBrSATExtratoFortes1.Margens.Esquerda);
    seMargemDireita.Value  := INI.ReadInteger('Fortes','MargemDireita',ACBrSATExtratoFortes1.Margens.Direita);
    cbPreview.Checked      := INI.ReadBool('Fortes','Preview',True);
    }
    lImpressora.Caption := INI.ReadString('Printer','Name','');
    cbImprimir1Linha.Checked := INI.ReadBool('EscPos','ImprimirItemUmaLinha',cbImprimir1Linha.Checked);

    rgRedeTipoInter.ItemIndex := INI.ReadInteger('Rede','tipoInter',0);
    rgRedeTipoLan.ItemIndex   := INI.ReadInteger('Rede','tipoLan',0);
    edRedeSSID.Text           := INI.ReadString('Rede','SSID','');
    cbxRedeSeg.ItemIndex      := INI.ReadInteger('Rede','seg',0);
    edRedeCodigo.Text         := INI.ReadString('Rede','codigo','');
    edRedeIP.Text             := INI.ReadString('Rede','lanIP','');
    edRedeMask.Text           := INI.ReadString('Rede','lanMask','');
    edRedeGW.Text             := INI.ReadString('Rede','lanGW','');
    edRedeDNS1.Text           := INI.ReadString('Rede','lanDNS1','');
    edRedeDNS2.Text           := INI.ReadString('Rede','lanDNS2','');
    edRedeUsuario.Text        := INI.ReadString('Rede','usuario','');
    edRedeSenha.Text          := INI.ReadString('Rede','senha','');
    cbxRedeProxy.ItemIndex    := INI.ReadInteger('Rede','proxy',0);
    edRedeProxyIP.Text        := INI.ReadString('Rede','proxy_ip','');
    edRedeProxyPorta.Value    := INI.ReadInteger('Rede','proxy_porta',0);
    edRedeProxyUser.Text      := INI.ReadString('Rede','proxy_user','');
    edRedeProxySenha.Text     := INI.ReadString('Rede','proxy_senha','');

  finally
     INI.Free ;
  end ;

end;

procedure TfSat.btSalvarParamsClick(Sender: TObject);
Var
  ArqINI : String ;
  INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
    INI.WriteInteger('SAT','Modelo',cbxModelo.ItemIndex);
    INI.WriteString('SAT','ArqLog',edLog.Text);
    INI.WriteString('SAT','NomeDLL',edNomeDLL.Text);
    INI.WriteString('SAT','CodigoAtivacao',edtCodigoAtivacao.Text);
    INI.WriteString('SAT','CodigoUF',edtCodUF.Text);
    INI.WriteInteger('SAT','NumeroCaixa',seNumeroCaixa.Value);
    INI.WriteInteger('SAT','Ambiente',cbxAmbiente.ItemIndex);
    INI.WriteInteger('SAT','PaginaDeCodigo',sePagCod.Value);
    INI.WriteFloat('SAT','versaoDadosEnt', StringToFloatDef(sfeVersaoEnt.Text,cversaoDadosEnt));
    INI.WriteBool('SAT','FormatarXML', cbxFormatXML.Checked);
    INI.WriteBool('SAT','SalvarCFe', cbxSalvarCFe.Checked);
    INI.WriteBool('SAT','SalvarCFeCanc', cbxSalvarCFeCanc.Checked);
    INI.WriteBool('SAT','SalvarEnvio', cbxSalvarEnvio.Checked);
    INI.WriteBool('SAT','SepararPorCNPJ', cbxSepararPorCNPJ.Checked);
    INI.WriteBool('SAT','SepararPorMES', cbxSepararPorMES.Checked);
    INI.WriteString('SAT','PastaXml',edtPastaXml.Text);
    INI.WriteString('SAT','InfoAdicional',edtInfAdic.Text);

    INI.WriteInteger('PosPrinter','Modelo',cbxModeloPosPrinter.ItemIndex);
    INI.WriteString('PosPrinter','Porta',cbxPorta.Text);
    INI.WriteInteger('PosPrinter','PaginaDeCodigo',cbxPagCodigo.ItemIndex);
    INI.WriteString('PosPrinter','ParamsString',ACBrPosPrinter1.Device.ParamsString);
    INI.WriteInteger('PosPrinter','Colunas',seColunas.Value);
    INI.WriteInteger('PosPrinter','EspacoLinhas',seEspLinhas.Value);
    INI.WriteInteger('PosPrinter','LinhasEntreCupons',seLinhasPular.Value);

    INI.WriteString('Emit','CNPJ',edtEmitCNPJ.Text);
    INI.WriteString('Emit','IE',edtEmitIE.Text);
    INI.WriteString('Emit','IM',edtEmitIM.Text);
    INI.WriteInteger('Emit','RegTributario',cbxRegTributario.ItemIndex);
    INI.WriteInteger('Emit','RegTribISSQN',cbxRegTribISSQN.ItemIndex);
    INI.WriteInteger('Emit','IndRatISSQN',cbxIndRatISSQN.ItemIndex);

    INI.WriteString('SwH','CNPJ',edtSwHCNPJ.Text);
    INI.WriteString('SwH','Assinatura',edtSwHAssinatura.Text);

    INI.WriteBool('Fortes','UsarFortes',cbUsarFortes.Checked) ;
    INI.WriteInteger('Fortes','Largura',seLargura.Value);
    INI.WriteInteger('Fortes','MargemTopo',seMargemTopo.Value);
    INI.WriteInteger('Fortes','MargemFundo',seMargemFundo.Value);
    INI.WriteInteger('Fortes','MargemEsquerda',seMargemEsquerda.Value);
    INI.WriteInteger('Fortes','MargemDireita',seMargemDireita.Value);
    INI.WriteBool('Fortes','Preview',cbPreview.Checked);

    INI.WriteString('Printer','Name',lImpressora.Caption);
    INI.WriteBool('EscPos','ImprimirItemUmaLinha',cbImprimir1Linha.Checked);

    INI.WriteInteger('Rede','tipoInter',rgRedeTipoInter.ItemIndex);
    INI.WriteInteger('Rede','tipoLan',rgRedeTipoLan.ItemIndex);
    INI.WriteString('Rede','SSID',edRedeSSID.Text);
    INI.WriteInteger('Rede','seg',cbxRedeSeg.ItemIndex);
    INI.WriteString('Rede','codigo',edRedeCodigo.Text);
    INI.WriteString('Rede','lanIP',edRedeIP.Text);
    INI.WriteString('Rede','lanMask',edRedeMask.Text);
    INI.WriteString('Rede','lanGW',edRedeGW.Text);
    INI.WriteString('Rede','lanDNS1',edRedeDNS1.Text);
    INI.WriteString('Rede','lanDNS2',edRedeDNS2.Text);
    INI.WriteString('Rede','usuario',edRedeUsuario.Text);
    INI.WriteString('Rede','senha',edRedeSenha.Text);
    INI.WriteInteger('Rede','proxy',cbxRedeProxy.ItemIndex);
    INI.WriteString('Rede','proxy_ip',edRedeProxyIP.Text);
    INI.WriteInteger('Rede','proxy_porta',edRedeProxyPorta.Value);
    INI.WriteString('Rede','proxy_user',edRedeProxyUser.Text);
    INI.WriteString('Rede','proxy_senha',edRedeProxySenha.Text);
    
  finally
     INI.Free ;
  end ;

end;

procedure TfSat.bInicializarClick(Sender: TObject);
begin
  AjustaACBrSAT;

  ACBrSAT1.Inicializado := not ACBrSAT1.Inicializado ;

  if ACBrSAT1.Inicializado then
    bInicializar.Caption := 'DesInicializar'
  else
    bInicializar.Caption := 'Inicializar' ;

end;

procedure TfSat.AjustaACBrSAT;
begin
  with ACBrSAT1 do
  begin
    Modelo  := TACBrSATModelo( cbxModelo.ItemIndex ) ;
    ArqLOG  := edLog.Text;
    NomeDLL := edNomeDLL.Text;
    Config.ide_numeroCaixa := seNumeroCaixa.Value;
    Config.ide_tpAmb       := TpcnTipoAmbiente( cbxAmbiente.ItemIndex );
    Config.ide_CNPJ        := edtSwHCNPJ.Text;
    Config.emit_CNPJ       := edtEmitCNPJ.Text;
    Config.emit_IE         := edtEmitIE.Text;
    Config.emit_IM         := edtEmitIM.Text;
    Config.emit_cRegTrib      := TpcnRegTrib( cbxRegTributario.ItemIndex ) ;
    Config.emit_cRegTribISSQN := TpcnRegTribISSQN( cbxRegTribISSQN.ItemIndex ) ;
    Config.emit_indRatISSQN   := TpcnindRatISSQN( cbxIndRatISSQN.ItemIndex ) ;
    Config.PaginaDeCodigo     := sePagCod.Value;
    Config.EhUTF8             := cbxUTF8.Checked;
    Config.infCFe_versaoDadosEnt := StringToFloat( sfeVersaoEnt.Text );

    ConfigArquivos.SalvarCFe := cbxSalvarCFe.Checked;
    ConfigArquivos.SalvarCFeCanc := cbxSalvarCFeCanc.Checked;
    ConfigArquivos.SalvarEnvio := cbxSalvarEnvio.Checked;
    ConfigArquivos.SepararPorCNPJ := cbxSepararPorCNPJ.Checked;
    ConfigArquivos.SepararPorMes := cbxSepararPorMES.Checked;
  end;
end;

procedure TfSat.bImpressoraClick(Sender: TObject);
begin
  //if PrintDialog1.Execute then
  //  lImpressora.Caption := Printer.Printers[Printer.PrinterIndex];

end;

procedure TfSat.btSerialClick(Sender: TObject);
begin
  frConfiguraSerial := TfrConfiguraSerial.Create(self);

  try
    frConfiguraSerial.Device.Porta        := ACBrPosPrinter1.Device.Porta ;
    frConfiguraSerial.cmbPortaSerial.Text := cbxPorta.Text ;
    frConfiguraSerial.Device.ParamsString := ACBrPosPrinter1.Device.ParamsString ;

    if frConfiguraSerial.ShowModal = mrOk then
    begin
       cbxPorta.Text := frConfiguraSerial.Device.Porta ;
       ACBrPosPrinter1.Device.ParamsString := frConfiguraSerial.Device.ParamsString ;
    end ;
  finally
     FreeAndNil( frConfiguraSerial ) ;
  end ;


end;

procedure TfSat.SbArqLogClick(Sender: TObject);
begin
  //OpenURL( ExtractFilePath( Application.ExeName ) + edLog.Text);
end;

procedure TfSat.mAtivarSATClick(Sender: TObject);
begin
  ACBrSAT1.AtivarSAT( 1, edtEmitCNPJ.Text, StrToInt(edtCodUF.Text) );
end;

procedure TfSat.mComunicarCertificadoClick(Sender: TObject);
Var
  SL : TStringList;
begin
  OpenDialog1.Filter := 'Certificado|*.cer|Arquivo Texto|*.txt';
  if OpenDialog1.Execute then
  begin
    SL := TStringList.Create;
    try
      SL.LoadFromFile( OpenDialog1.FileName );

      ACBrSAT1.ComunicarCertificadoICPBRASIL( SL.Text );
    finally
      SL.Free;
    end ;
  end ;

end;

procedure TfSat.mAssociarAssinaturaClick(Sender: TObject);
begin
  ACBrSAT1.AssociarAssinatura( edtSwHCNPJ.Text + edtEmitCNPJ.Text, edtSwHAssinatura.Text );
end;

procedure TfSat.mBloquearSATClick(Sender: TObject);
begin
  ACBrSAT1.BloquearSAT;
end;

procedure TfSat.mDesbloquearSATClick(Sender: TObject);
begin
  ACBrSAT1.DesbloquearSAT;
end;

procedure TfSat.MenuItem5Click(Sender: TObject);
Var
  CodNovo, CodAtual, tipoCodigo: String;
begin
  CodNovo    := '';
  CodAtual   := edtCodigoAtivacao.Text;
  tipoCodigo := '1';

  if not InputQuery('Trocar Código de Ativação',
                    'Entre com o Código de Ativação ou de Emergência:', CodAtual ) then
    Exit;

  if not InputQuery('Trocar Código de Ativação',
                    'Qual o Tipo do Código Informado anteriormente ?'+sLineBreak+
                    '1 – Código de Ativação'+sLineBreak+
                    '2 – Código de Ativação de Emergência'+sLineBreak,
                    tipoCodigo ) then
    Exit;

  if not InputQuery('Trocar Código de Ativação',
                    'Entre com o Número do Novo Código de Ativação:', CodNovo ) then
    Exit;

  ACBrSAT1.TrocarCodigoDeAtivacao( CodAtual, StrToInt(tipoCodigo), CodNovo );

  if ACBrSAT1.Resposta.codigoDeRetorno = 1800 then
  begin
    edtCodigoAtivacao.Text := CodNovo;
    mLog.Lines.Add('Código de Ativação trocado com sucesso');
    btSalvarParams.Click;
  end ;

end;

procedure TfSat.mGerarVendaClick(Sender: TObject);
begin
  carregarVenda;
end;

function TfSat.carregarVenda: String;
var
  TotalItem: Double;
  vTot12741: Double;
  A: Integer;
  cvCFOP: String;
begin
  //PageControl1.ActivePage := tsGerado;

  ACBrSAT1.CFe.IdentarXML := cbxFormatXML.Checked;
  ACBrSAT1.CFe.TamanhoIdentacao := 3;

  mVendaEnviar.Clear;  

  // Trasnferindo Informações de Config para o CFe //
  AjustaACBrSAT;
  ACBrSAT1.InicializaCFe ;

  // Montando uma Venda //
  with ACBrSAT1.CFe do
  begin
    ide.numeroCaixa := 1;

    if (edCPF.Text <> '') then
    begin
      if (sClienteCODCLIENTE.AsInteger <> codConsumidorSat) then
      begin
        //Dest.CNPJCPF := RemoveChar(sClienteCNPJ.AsString);
        Dest.xNome := sClienteRAZAOSOCIAL.AsString;
        Entrega.xLgr := sClienteLOGRADOURO.AsString;
        Entrega.nro := sClienteNUMERO.AsString;
        Entrega.xCpl := sClienteCOMPLEMENTO.AsString;
        Entrega.xBairro := sClienteBAIRRO.AsString;
        Entrega.xMun := sClienteCIDADE.AsString;
        Entrega.UF := sClienteUF.AsString;
      end;
      Dest.CNPJCPF := RemoveChar(edCPF.Text);
    end;
    cdsItensNF.First;
    A := 0;
    While not cdsItensNF.Eof do
    begin
      with Det.Add do
      begin
        nItem := 1 + A;
        A := A + 1;
        Prod.cProd := cdsItensNFCODPRO.AsString;
        if (EAN13Valido(cdsItensNFCOD_BARRA.AsString) = True) then
        begin
          Prod.cEAN := cdsItensNFCOD_BARRA.AsString;
        end;
        cvCFOP := RemoveChar(cdsItensNFCFOP.AsString);
        Prod.xProd := cdsItensNFDESCPRODUTO.AsString;
        prod.NCM := RemoveChar(cdsItensNFNCM.AsString);
        Prod.CFOP := cvCFOP;
        Prod.uCom := cdsItensNFUNIDADEMEDIDA.AsString;
        Prod.qCom := cdsItensNFQUANTIDADE.AsFloat;
        Prod.vUnCom := cdsItensNFPRECO.AsFloat;
        Prod.indRegra := irArredondamento;
        Prod.vDesc := 0;

        if ((cvCFOP <> '5101') and (cvCFOP <> '5102') and (cvCFOP <> '5405') and
          (cvCFOP <> '6102') and (cvCFOP <> '6101') and (cvCFOP <> '6403')) then
        begin
          result := 'Produto - ' + cdsItensNFDESCPRODUTO.AsString +
            ' com CFOP inválido';
          exit;
        end;
        {
        with Prod.obsFiscoDet.Add do
        begin
          xCampoDet := 'campo';
          xTextoDet := 'texto';
        end;}

        prod.vProd := (Prod.qCom * Prod.vUnCom);
        Imposto.vItem12741 := cdsItensNFVLRTOT_TRIB.AsFloat;
        vTot12741 := vTot12741 + cdsItensNFVLRTOT_TRIB.AsFloat;
        if (trim(cdsItensNFORIGEM.AsString) = '') then
        begin
          result := 'Produto - ' + cdsItensNFDESCPRODUTO.AsString +
            ' sem código de ORIGEM';
          exit;
        end;
        if (trim(cdsItensNFORIGEM.AsString) = '0') then
          Imposto.ICMS.orig := oeNacional;
        if (trim(cdsItensNFORIGEM.AsString) = '1') then
          Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
        if (trim(cdsItensNFORIGEM.AsString) = '2') then
          Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
        if (trim(cdsItensNFORIGEM.AsString) = '3') then
          Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
        if (trim(cdsItensNFORIGEM.AsString) = '4') then
          Imposto.ICMS.orig := oeNacionalProcessosBasicos;
        if (trim(cdsItensNFORIGEM.AsString) = '5') then
          Imposto.ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
        if (trim(cdsItensNFORIGEM.AsString) = '6') then
          Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
        if (trim(cdsItensNFORIGEM.AsString) = '7') then
          Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
        if (trim(cdsItensNFORIGEM.AsString) = '8') then
          Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;

        //Imposto.ICMS.CST := cstICMSSN;
        //Imposto.ICMS.pICMS := 18;
        if ((Trim(cdsItensNFCST.AsString) = '') and (Trim(cdsItensNFCSOSN.AsString) = '')) then
        begin
          if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
          begin
            result := 'CST do ICMS em branco no item ' + cdsItensNFDESCPRODUTO.AsString;
            exit;
          end;  
        end;

        if( sEmpresaCRT.AsInteger = 0) then
        begin
          ACBrSAT1.CFe.Emit.cRegTrib := RTSimplesNacional;
          if (( cdsItensNFCSOSN.AsString = null) or ( cdsItensNFCSOSN.AsString = '')) then
          begin
            Imposto.ICMS.CSOSN := csosnVazio;
          end
          else if ( cdsItensNFCSOSN.AsString = '101') then
          begin
            result := 'CSOSN inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CSOSN inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            Imposto.ICMS.CSOSN := csosn101;
            {if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
            begin
              if (cdsItensNFICMS.AsVariant > 0 ) then
              begin
                pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
              end;
            end;}
          end
          else if ( cdsItensNFCSOSN.AsString = '102') then
            Imposto.ICMS.CSOSN := csosn102
          else if ( cdsItensNFCSOSN.AsString = '103') then
          begin
            Imposto.ICMS.CSOSN := csosn103;
            result := 'CSOSN inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CSOSN inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            exit;
          end
          else if ( cdsItensNFCSOSN.AsString = '201') then
          begin
            result := 'CSOSN inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CSOSN inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            Imposto.ICMS.CSOSN := csosn201;
            {if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
            begin
              if (cdsItensNFICMS.AsVariant > 0 ) then
              begin
                pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
              end;
            end;}
          end
          else if ( cdsItensNFCSOSN.AsString = '202') then
          begin
            result := 'CSOSN inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CSOSN inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            Imposto.ICMS.CSOSN := csosn202;
            exit;
          end
          else if ( cdsItensNFCSOSN.AsString = '203') then
          begin
            result := 'CSOSN inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CSOSN inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            Imposto.ICMS.CSOSN := csosn203;
            exit;
          end
          else if ( cdsItensNFCSOSN.AsString = '300') then
            Imposto.ICMS.CSOSN := csosn300
          else if ( cdsItensNFCSOSN.AsString = '400') then
          begin
            result := 'CSOSN inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CSOSN inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            Imposto.ICMS.CSOSN := csosn400;
            exit;
          end
          else if ( cdsItensNFCSOSN.AsString = '500') then
            Imposto.ICMS.CSOSN := csosn500
          else if ( cdsItensNFCSOSN.AsString = '900') then
            Imposto.ICMS.CSOSN := csosn900;
        end
        else begin
          ACBrSAT1.CFe.Emit.cRegTrib := RTRegimeNormal;
          if ((cdsItensNFCST.AsString = '000') or (cdsItensNFCST.AsString = '100') or (cdsItensNFCST.AsString = '200') or (cdsItensNFCST.AsString = '00')) then
          begin
            Imposto.ICMS.CST := cst00;
            Imposto.ICMS.pICMS := cdsItensNFICMS.AsFloat;
          end
          else if ((cdsItensNFCST.AsString = '010') or (cdsItensNFCST.AsString = '110') or (cdsItensNFCST.AsString = '210') or (cdsItensNFCST.AsString = '10')) then
          begin
            Imposto.ICMS.CST := cst10;
            result := 'CST inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CST inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            exit;
          end
          else if ((cdsItensNFCST.AsString = '020') or (cdsItensNFCST.AsString = '120') or (cdsItensNFCST.AsString = '220') or (cdsItensNFCST.AsString = '20')) then
            Imposto.ICMS.CST := cst20
          else if ((cdsItensNFCST.AsString = '030') or (cdsItensNFCST.AsString = '130') or (cdsItensNFCST.AsString = '230') or (cdsItensNFCST.AsString = '30')) then
          begin
            Imposto.ICMS.CST := cst30;
            result := 'CST inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CST inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            exit;
          end
          else if ((cdsItensNFCST.AsString = '040') or (cdsItensNFCST.AsString = '140') or (cdsItensNFCST.AsString = '240') or (cdsItensNFCST.AsString = '40')) then
            Imposto.ICMS.CST :=  cst40
          else if ((cdsItensNFCST.AsString = '041') or (cdsItensNFCST.AsString = '141') or (cdsItensNFCST.AsString = '241') or (cdsItensNFCST.AsString = '41')) then
            Imposto.ICMS.CST :=  cst41
          else if ((cdsItensNFCST.AsString = '050') or (cdsItensNFCST.AsString = '150') or (cdsItensNFCST.AsString = '250') or (cdsItensNFCST.AsString = '50')) then
          begin
            Imposto.ICMS.CST :=  cst50;
            result := 'CST inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CST inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            exit;
          end
          else if ((cdsItensNFCST.AsString = '051') or (cdsItensNFCST.AsString = '151') or (cdsItensNFCST.AsString = '251') or (cdsItensNFCST.AsString = '51')) then
          begin
            Imposto.ICMS.CST := cst51;
            result := 'CST inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CST inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            exit;
          end
          else if ((cdsItensNFCST.AsString = '060') or (cdsItensNFCST.AsString = '160') or (cdsItensNFCST.AsString = '260') or (cdsItensNFCST.AsString = '60')) then
          begin
            Imposto.ICMS.CST := cst60;
          end  
          else if ((cdsItensNFCST.AsString = '070') or (cdsItensNFCST.AsString = '170') or (cdsItensNFCST.AsString = '270') or (cdsItensNFCST.AsString = '70')) then
          begin
            Imposto.ICMS.CST := cst70;
            result := 'CST inválido para emissão do CFe.';
            mLog.Lines.Add('-------------------------------------------------');
            mLog.Lines.Add('CST inválido para emissão do CFe.');
            mLog.Lines.Add('-------------------------------------------------');
            exit;
          end
          else if ((cdsItensNFCST.AsString = '090') or (cdsItensNFCST.AsString = '190') or (cdsItensNFCST.AsString = '290') or (cdsItensNFCST.AsString = '90')) then
            Imposto.ICMS.CST := cst90
          else
            Imposto.ICMS.CST := cst00;
        end;
        Imposto.ICMS.vICMS := cdsItensNFVALOR_ICMS.AsFloat;


        if (Trim(cdsItensNFCSTPIS.AsString) = '') then
        begin
          if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
            result := 'CST do PIS em branco  no item ' + cdsItensNFDESCPRODUTO.AsString;
          Exit;
        end
        else
        begin
          if (cdsItensNFCSTPIS.AsString = '01') then
            Imposto.PIS.CST   := pis01
          else if (cdsItensNFCSTPIS.AsString = '02') then
            Imposto.PIS.CST   := pis02
          else if (cdsItensNFCSTPIS.AsString = '03') then
            Imposto.PIS.CST   := pis03
          else if (cdsItensNFCSTPIS.AsString = '04') then
            Imposto.PIS.CST   := pis04
          else if (cdsItensNFCSTPIS.AsString = '06') then
            Imposto.PIS.CST   := pis06
          else if (cdsItensNFCSTPIS.AsString = '07') then
            Imposto.PIS.CST   := pis07
          else if (cdsItensNFCSTPIS.AsString = '08') then
            Imposto.PIS.CST   := pis08
          else if (cdsItensNFCSTPIS.AsString = '09') then
            Imposto.PIS.CST   := pis09
          else if (cdsItensNFCSTPIS.AsString = '99') then
            Imposto.PIS.CST   := pis99
          else if (cdsItensNFCSTPIS.AsString = '49') then
            Imposto.PIS.CST   := pis49;
          Imposto.PIS.vBC := cdsItensNFVLRBC_PIS.AsFloat;
          Imposto.PIS.pPIS := 0;
          if (cdsItensNFPPIS.AsFloat > 0) then
            Imposto.PIS.pPIS := cdsItensNFPPIS.AsFloat/100;
        end;


        if (Trim(cdsItensNFCSTCOFINS.AsString) = '') then
        begin
          if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
            result := 'CST do COFINS em branco no item ' + cdsItensNFDESCPRODUTO.AsString;
          Exit;
        end
        else
        begin
          if (cdsItensNFCSTCOFINS.AsString = '01') then
            Imposto.COFINS.CST   := cof01
          else if (cdsItensNFCSTCOFINS.AsString = '02') then
            Imposto.COFINS.CST   := cof02
          else if (cdsItensNFCSTCOFINS.AsString = '03') then
            Imposto.COFINS.CST   := cof03
          else if (cdsItensNFCSTCOFINS.AsString = '04') then
            Imposto.COFINS.CST   := cof04
          else if (cdsItensNFCSTCOFINS.AsString = '06') then
            Imposto.COFINS.CST   := cof06
          else if (cdsItensNFCSTCOFINS.AsString = '07') then
            Imposto.COFINS.CST   := cof07
          else if (cdsItensNFCSTCOFINS.AsString = '08') then
            Imposto.COFINS.CST   := cof08
          else if (cdsItensNFCSTCOFINS.AsString = '09') then
            Imposto.COFINS.CST   := cof09
          else if (cdsItensNFCSTCOFINS.AsString = '99') then
            Imposto.COFINS.CST   := cof99
          else if (cdsItensNFCSTCOFINS.AsString = '49') then
            Imposto.COFINS.CST   := cof49;
          Imposto.COFINS.vBC := cdsItensNFVLRBC_COFINS.AsFloat;
          Imposto.COFINS.pCOFINS := 0;
          if (cdsItensNFPCOFINS.AsFloat > 0) then
            Imposto.COFINS.pCOFINS := cdsItensNFPCOFINS.AsFloat/100;
        end;


        //infAdProd := 'Informacoes adicionais';
      end;
      cdsItensNF.Next;

    end; // FIM WHILE
    InfAdic.infCpl := edtInfAdic.Text;
    Total.DescAcrEntr.vDescSubtot := 0;
    Total.vCFeLei12741 := vTot12741;

    //Pagto.Add.cMP := mpCreditoLoja;
    // TpcnCodigoMP = (mpDinheiro, mpCheque, mpCartaodeCredito, mpCartaodeDebito,
    // mpCreditoLoja, mpValeAlimentacao, mpValeRefeicao, mpValePresente, mpValeCombustivel, mpOutros);
    while not cdsFatura.Eof do
    begin
      with Pagto.Add do
      begin
        cMP := mpCreditoLoja;
        vMP := cdsFaturaVALOR_RESTO.AsFloat;
        if (cdsFaturaFORMARECEBIMENTO.AsString = '1') then
          cMP := mpDinheiro;
        if ((cdsFaturaFORMARECEBIMENTO.AsString = '2') or (cdsFaturaFORMARECEBIMENTO.AsString = '3')) then
          cMP := mpCheque;
        if (cdsFaturaFORMARECEBIMENTO.AsString = '4') then    // Boleto
          cMP := mpOutros;
        if (cdsFaturaFORMARECEBIMENTO.AsString = '5') then   // Duplicada
          cMP := mpOutros;
        if ((cdsFaturaFORMARECEBIMENTO.AsString = '6') or
          (cdsFaturaFORMARECEBIMENTO.AsString = 'I') or
          (cdsFaturaFORMARECEBIMENTO.AsString = 'K')) then
          cMP := mpCartaodeCredito;
        if ((cdsFaturaFORMARECEBIMENTO.AsString = '7') or
          (cdsFaturaFORMARECEBIMENTO.AsString = 'J') or
          (cdsFaturaFORMARECEBIMENTO.AsString = 'L')) then
          cMP := mpCartaodeDebito;
        if (cdsFaturaFORMARECEBIMENTO.AsString = '8') then   // Deposito
          cMP := mpOutros;
        if (cdsFaturaFORMARECEBIMENTO.AsString = 'G') then   // Vales
          cMP := mpValeAlimentacao;
      end;
      cdsFatura.Next;
    end;

    //InfAdic.infCpl := 'Acesse www.projetoacbr.com.br para obter mais;informações sobre o componente ACBrSAT;'+
    //                  'Precisa de um PAF-ECF homologado?;Conheça o DJPDV - www.djpdv.com.br'
  end;

  mVendaEnviar.Lines.Text := ACBrSAT1.CFe.GerarXML( True );    // True = Gera apenas as TAGs da aplicação
  result := '';
  mLog.Lines.Add('Venda Processada');
end;

procedure TfSat.enviarSAT;
var arquivosat: String;
TD: TTransactionDesc;
chave_sat: String;
begin
  if (edtPastaXml.Text = '') then
  begin
    MessageDlg('Informe a pasta onde salvará o XML , em parametros, Cupom, Configurar Sat;', mtWarning, [mbOK], 0);
    exit;
  end;
  if mVendaEnviar.Text = '' then
    mGerarVenda.Click;

  PageControl1.ActivePage := tsLog;
  acbrsat1.ConfigArquivos.PastaCFeVenda := edtPastaXml.Text;
  ACBrSAT1.EnviarDadosVenda( mVendaEnviar.Text );

  //if (edtPastaXml.text <> '') then
  //begin
  //  arquivosat := RightStr(ACBrSAT1.CFe.NomeArquivo, 50);
    if ( not DirectoryExists(ACBrSAT1.CFe.NomeArquivo)) then
      CreateDir(ACBrSAT1.CFe.NomeArquivo);
  //  arquivosat := edtPastaXml.Text + '\' + arquivosat;
  //end
  //else begin
  arquivosat := ACBrSAT1.CFe.NomeArquivo;
  //end;

  if ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
  begin
    LoadXML( ACBrSAT1.CFe.AsXMLString,  mRecebido);
    PageControl1.ActivePage := tsRecebido;

    if (cdsFaturaSTATUS.AsString = '7-') then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_CONTABIL INACTIVE');
        dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_REC INACTIVE');
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      chave_sat := Copy(ACBrSAT1.cfe.infCFe.ID,23,29);
      dm.sqlsisAdimin.ExecuteDirect('UPDATE VENDA SET STATUS1 = ' +
        QuotedStr('E') + ', OBS = ' + QuotedStr(arquivosat) +
        ' ,N_DOCUMENTO = ' + QuotedStr(IntToStr(ACBrSAT1.CFe.ide.nCFe)) +
        ' ,N_BOLETO = ' + QuotedStr(chave_sat) +
        ' WHERE CODVENDA = ' + IntToStr(codVendaSAT));
       dm.sqlsisAdimin.Commit(TD);
     except
       on E : Exception do
       begin
         ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       end;
     end;
    ACBrSAT1.CFe.SaveToFile(arquivosat);
    memo1.Lines.add('Cupom gerado com SUCESSO.');
    memo1.Lines.Add(arquivosat);
    if (cdsFaturaSTATUS.AsString = '7-') then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_CONTABIL ACTIVE');
        dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_REC ACTIVE');
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
    MessageDlg('Cupom criado com sucesso.', mtInformation, [mbOK], 0);
  end
  else begin
    MessageDlg('Erro para Gerar o Cupom, verifique o problema.', mtError, [mbOK], 0);
  end;

end;

procedure TfSat.mEnviarVendaClick(Sender: TObject);
begin
  enviarSAT;
end;

procedure TfSat.imprimirSat;
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtrato;
end;

procedure TfSat.imprimirSatReduz;
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtratoResumido;
end;

procedure TfSat.mImprimirExtratoVendaClick(Sender: TObject);
begin
  imprimirSat;
end;

procedure TfSat.mImprimirExtratoVendaResumidoClick(Sender: TObject);
begin
  imprimirSatReduz;
end;

procedure TfSat.FormShow(Sender: TObject);
begin
  cdsItensNF.Params[0].AsInteger := codVendaSAT;
  cdsItensNF.Open;
  cdsFatura.Params[0].AsInteger := codVendaSAT;
  cdsFatura.Open;
  edCPF.Text := '';
  RadioButton1.Checked := False;
  if (cdsItensNFSTATUS1.AsString = 'E') then
  begin
    Memo1.Lines.Text := 'Cupom Emitido : ' + cdsItensNFOBS_VENDA.AsString;
    ACBrSAT1.CFe.Clear;
    ACBrSAT1.CFe.LoadFromFile(cdsItensNFOBS_VENDA.AsString);
    //ACBrNFe1.NotasFiscais.Clear;
    //ACBrNFe1.NotasFiscais.LoadFromFile(cdsItensNFOBS_VENDA.AsString);
    LoadXML( ACBrSAT1.CFe.AsXMLString,  mRecebido);
    BitBtn2.Enabled := False;
    mEnviarVenda.Enabled := False;
  end;

  if (cdsItensNFSTATUS1.AsString = 'C') then
  begin
    mEnviarVenda.Enabled := False;
    BitBtn2.Enabled := False;
    Memo1.Lines.Add('............................');
    Memo1.Lines.Add('Cupom Emitido e Cancelado : ');
    Memo1.Lines.Add(cdsItensNFOBS_VENDA.AsString);
    ACBrSAT1.CFe.Clear;
    ACBrSAT1.CFe.LoadFromFile(cdsItensNFOBS_VENDA.AsString);
    LoadXML( ACBrSAT1.CFe.AsXMLString,  mRecebido);
    //ACBrNFe1.NotasFiscais.Clear;
    //ACBrNFe1.NotasFiscais.LoadFromFile(cdsItensNFOBS_VENDA.AsString)
  end;
  cds_Movimento.Params[0].AsInteger := cdsItensNFCODMOVIMENTO.AsInteger;
  cds_movimento.Open;

  cdsFatura.Params[0].AsInteger := codVendaSAT;
  cdsFatura.open;

  sCliente.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
  sCliente.Open;
  lblCli.Caption := sClienteNOMECLIENTE.AsString;
  lblEnd.Caption := sClienteLOGRADOURO.AsString + ', ' + sClienteNUMERO.AsString +
    ', ' + sClienteBAIRRO.AsString + ', ' + sClienteCIDADE.AsString + ', ' +
    sClienteUF.AsString;

  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Open;
  edtEmitCNPJ.Text := sEmpresaCNPJ_CPF.AsString;
  edtEmitIE.Text := sEmpresaIE_RG.AsString;

  codConsumidorSat := 0;
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
    try
      codConsumidorSat := StrToInt(dm.cds_parametroDADOS.AsString);
    except
      codConsumidorSat := 0;
    end;

  {if (sClienteCODCLIENTE.AsInteger <> codConsumidorSat) then
  begin
    if (sClienteTIPOFIRMA.AsInteger = 0) then
      edCPF.Text := sClienteCNPJ.AsString;
  end;}

end;


procedure TfSat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cds_Movimento.Close;
  cdsItensNF.Close;
  sEmpresa.close;
  sCliente.Close;
  cdsFatura.Close;
end;

function TfSat.RemoveChar(const Texto: String): String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;

end;

procedure TfSat.FormCreate(Sender: TObject);
var
  I : TACBrSATModelo ;
  J : TpcnTipoAmbiente ;
  K : TpcnRegTribISSQN ;
  L : TpcnindRatISSQN ;
  M : TpcnRegTrib ;
begin
  cbxModelo.Items.Clear ;
  For I := Low(TACBrSATModelo) to High(TACBrSATModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrSATModelo), integer(I) ) ) ;

  cbxAmbiente.Items.Clear ;
  For J := Low(TpcnTipoAmbiente) to High(TpcnTipoAmbiente) do
     cbxAmbiente.Items.Add( GetEnumName(TypeInfo(TpcnTipoAmbiente), integer(J) ) ) ;

  cbxRegTribISSQN.Items.Clear ;
  For K := Low(TpcnRegTribISSQN) to High(TpcnRegTribISSQN) do
     cbxRegTribISSQN.Items.Add( GetEnumName(TypeInfo(TpcnRegTribISSQN), integer(K) ) ) ;

  cbxIndRatISSQN.Items.Clear ;
  For L := Low(TpcnindRatISSQN) to High(TpcnindRatISSQN) do
     cbxIndRatISSQN.Items.Add( GetEnumName(TypeInfo(TpcnindRatISSQN), integer(L) ) ) ;

  cbxRegTributario.Items.Clear ;
  For M := Low(TpcnRegTrib) to High(TpcnRegTrib) do
     cbxRegTributario.Items.Add( GetEnumName(TypeInfo(TpcnRegTrib), integer(M) ) ) ;

  Application.OnException := TrataErros;

  btLerParams.Click;

end;

procedure TfSat.TrataErros(Sender: TObject; E: Exception);
var
  Erro : String ;
begin
  Erro := Trim(E.Message) ;
  ACBrSAT1.DoLog( E.ClassName+' - '+Erro);
end;

procedure TfSat.LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
begin
  WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml',
              AXML, False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml');
end;

procedure TfSat.PrepararImpressao;
begin
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModeloPosPrinter.ItemIndex );
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
  ACBrPosPrinter1.Porta := cbxPorta.Text;
  ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
  ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
  ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
  ACBrSATExtratoESCPOS1.ImprimeQRCode := True;
  ACBrSATExtratoESCPOS1.ImprimeEmUmaLinha := cbImprimir1Linha.Checked;
  // 29/12/2015
  if ACBrSAT1.Extrato = ACBrSATExtratoESCPOS1 then
  begin

    //ACBrSATExtratoESCPOS1.Device.Porta := edtPorta.Text;
    //ACBrSATExtratoESCPOS1.Device.Ativar;
    ACBrSATExtratoESCPOS1.ImprimeQRCode := True;
  end;
  {
  else
  begin
    ACBrSATExtratoFortes1.LarguraBobina    := seLargura.Value;
    ACBrSATExtratoFortes1.Margens.Topo     := seMargemTopo.Value ;
    ACBrSATExtratoFortes1.Margens.Fundo    := seMargemFundo.Value ;
    ACBrSATExtratoFortes1.Margens.Esquerda := seMargemEsquerda.Value ;
    ACBrSATExtratoFortes1.Margens.Direita  := seMargemDireita.Value ;
    ACBrSATExtratoFortes1.MostrarPreview   := cbPreview.Checked;

    try
      if lImpressora.Caption <> '' then
        ACBrSATExtratoFortes1.PrinterName := lImpressora.Caption;
    except
    end;
  end;}

end;

procedure TfSat.BitBtn1Click(Sender: TObject);
begin
  carregarVenda;
end;

procedure TfSat.BitBtn2Click(Sender: TObject);
var result_cVenda: string;
begin
  result_cVenda := carregarVenda;
  if (result_cVenda <> '') then
  begin
    MessageDlg(result_cVenda, mtWarning, [mbOK], 0);
    exit;
  end;
  ACBrSAT1.Inicializado := True;
  bInicializar.Caption := 'DesInicializar';
  enviarSAT;
end;

procedure TfSat.sePagCodChange(Sender: TObject);
begin
  ACBrSAT1.Config.PaginaDeCodigo := sePagCod.Value;
  cbxUTF8.Checked := ACBrSAT1.Config.EhUTF8;

end;

procedure TfSat.ACBrSAT1GetsignAC(var Chave: String);
begin
  Chave := edtSwHAssinatura.Text;
end;

procedure TfSat.ACBrSAT1GetcodigoDeAtivacao(var Chave: String);
begin
  Chave := edtCodigoAtivacao.Text
end;

procedure TfSat.ACBrSAT1GravarLog(const ALogLine: String;
  var Tratado: Boolean);
begin
  mLog.Lines.Add(ALogLine);
  StatusBar1.Panels[0].Text := IntToStr( ACBrSAT1.Resposta.numeroSessao );
  StatusBar1.Panels[1].Text := IntToStr( ACBrSAT1.Resposta.codigoDeRetorno );
  Tratado := False;
end;

procedure TfSat.btnExcluirClick(Sender: TObject);
begin
  edCPF.Text := '';
end;

procedure TfSat.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfSat.miGerarXMLCancelamentoClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo XML|*.xml';
  if OpenDialog1.Execute then
  begin
    ACBrSAT1.CFe.LoadFromFile( OpenDialog1.FileName );
    ACBrSAT1.CFe2CFeCanc;

    mCancelamentoEnviar.Lines.Text := ACBrSAT1.CFeCanc.GerarXML( True ) ;  // True = Gera apenas as TAGs da aplicação
    edChaveCancelamento.Text := ACBrSAT1.CFeCanc.infCFe.chCanc;
    PageControl1.ActivePage := tsCancelamento;
  end ;

end;

procedure TfSat.miEnviarCancelamentoClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsLog;
  if mCancelamentoEnviar.Lines.Count < 1 then
  begin
    ACBrSAT1.CancelarUltimaVenda;
    mCancelamentoEnviar.Lines.Text := ACBrSAT1.CFeCanc.GerarXML(True);
  end
  else
  begin
    if edChaveCancelamento.Text = '' then
    begin
      ACBrSAT1.CFeCanc.AsXMLString := mCancelamentoEnviar.Lines.Text;
      edChaveCancelamento.Text := ACBrSAT1.CFeCanc.infCFe.chCanc;
    end;

    ACBrSAT1.CancelarUltimaVenda( edChaveCancelamento.Text, mCancelamentoEnviar.Lines.Text );
  end ;

  if ACBrSAT1.Resposta.codigoDeRetorno = 7000 then
  begin
    LoadXML( ACBrSAT1.CFeCanc.AsXMLString, mRecebido );
    PageControl1.ActivePage := tsRecebido;
  end;
end;

procedure TfSat.miImprimirExtratoCancelamentoClick(Sender: TObject);
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtratoCancelamento;
end;

procedure TfSat.mTesteFimAFimClick(Sender: TObject);
begin
  if mVendaEnviar.Text = '' then
    mGerarVenda.Click;

  PageControl1.ActivePage := tsLog;

  ACBrSAT1.TesteFimAFim( mVendaEnviar.Text );

  if ACBrSAT1.Resposta.codigoDeRetorno = 9000 then
  begin
    LoadXML( ACBrSAT1.CFe.AsXMLString,  mRecebido);
    PageControl1.ActivePage := tsRecebido;
  end;
end;

procedure TfSat.BitBtn4Click(Sender: TObject);
var arquivosatcanc: String;
begin
  AjustaACBrSAT;
  ACBrSAT1.Inicializado := True;
  bInicializar.Caption := 'DesInicializar';
  miGerarXMLCancelamento.Click;
  miEnviarCancelamento.Click;
  arquivosatcanc := RightStr(ACBrSAT1.CFe.NomeArquivo, 50);
  ACBrSAT1.CFeCanc.SaveToFile(edtPastaXml.Text + '\canc\' + arquivosatcanc);
  dm.sqlsisAdimin.ExecuteDirect('UPDATE VENDA SET STATUS1 = ' +
    QuotedStr('C') + ', OBS = OBS || ' + QuotedStr(edtPastaXml.Text + '\' + arquivosatcanc) +
    ' WHERE CODVENDA = ' + IntToStr(codVendaSAT));

end;

procedure TfSat.BitBtn5Click(Sender: TObject);
begin
  //ACBrNFe1.NotasFiscais.Imprimir;
end;

procedure TfSat.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
  begin
    if (sClienteCODCLIENTE.AsInteger <> codConsumidorSat) then
      edCPF.Text := sClienteCNPJ.AsString;
  end;
end;

end.
