unit uSat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrBase, ACBrSAT, ACBrSATClass, Buttons, ExtCtrls, Spin, ComCtrls,
  Menus, OleCtrls, SHDocVw, FMTBcd, DB, DBClient, Provider, SqlExpr, IniFiles,
  ACBrSATExtratoClass, ACBrSATExtratoESCPOS, ACBrSATExtratoFortesFr, pcnConversao, ACBrValidador,
  TypInfo, ACBrUtil, ACBrSATExtratoFortes;

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
    edtPorta: TEdit;
    btSerial: TBitBtn;
    cbUsarEscPos: TRadioButton;
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
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    OpenDialog1: TOpenDialog;
    PrintDialog1: TPrintDialog;
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
  private
    codConsumidorSat : integer;
    { Private declarations }
    Function RemoveChar(Const Texto:String):String;
    procedure AjustaACBrSAT ;
    procedure carregarVenda;
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

uses UDm;

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
    edtCodigoAtivacao.Text := INI.ReadString('SAT','CodigoAtivacao','123456');
    edtCodUF.Text          := INI.ReadString('SAT','CodigoUF','35');
    seNumeroCaixa.Value    := INI.ReadInteger('SAT','NumeroCaixa',1);
    cbxAmbiente.ItemIndex  := INI.ReadInteger('SAT','Ambiente',1);
    sePagCod.Value         := INI.ReadInteger('SAT','PaginaDeCodigo',0);
    sfeVersaoEnt.Text      := FloatToStr( INI.ReadFloat('SAT','versaoDadosEnt', cversaoDadosEnt) );
    cbxFormatXML.Checked   := INI.ReadBool('SAT','FormatarXML', True);
    cbxSalvarCFe.Checked   := INI.ReadBool('SAT','SalvarCFe', True);
    //sePagCodChange(Sender);

    edtPorta.Text := INI.ReadString('Extrato','Porta','COM1');
    // 29/12/2015
    //ACBrSATExtratoESCPOS1.Device.ParamsString := INI.ReadString('Extrato','ParamsString','');

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
    seLargura.Value        := INI.ReadInteger('Fortes','Largura',ACBrSATExtratoFortes1.LarguraBobina);
    seMargemTopo.Value     := INI.ReadInteger('Fortes','MargemTopo',ACBrSATExtratoFortes1.Margens.Topo);
    seMargemFundo.Value    := INI.ReadInteger('Fortes','MargemFundo',ACBrSATExtratoFortes1.Margens.Fundo);
    seMargemEsquerda.Value := INI.ReadInteger('Fortes','MargemEsquerda',ACBrSATExtratoFortes1.Margens.Esquerda);
    seMargemDireita.Value  := INI.ReadInteger('Fortes','MargemDireita',ACBrSATExtratoFortes1.Margens.Direita);
    cbPreview.Checked      := INI.ReadBool('Fortes','Preview',True);

    lImpressora.Caption := INI.ReadString('Printer','Name','');

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
    INI.WriteFloat('SAT','versaoDadosEnt', StrToFloatDef(sfeVersaoEnt.Text,cversaoDadosEnt));
    INI.WriteBool('SAT','FormatarXML', cbxFormatXML.Checked);
    INI.ReadBool('SAT','SalvarCFe', cbxSalvarCFe.Checked);

    INI.WriteString('Extrato','Porta',edtPorta.Text);
    // 29/12/2015
    //INI.WriteString('Extrato','ParamsString',ACBrSATExtratoESCPOS1.Device.ParamsString);

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
    Config.ide_CNPJ        := RemoveChar(edtSwHCNPJ.Text);
    Config.emit_CNPJ       := RemoveChar(edtEmitCNPJ.Text);
    Config.emit_IE         := RemoveChar(edtEmitIE.Text);
    Config.emit_IM         := RemoveChar(edtEmitIM.Text);
    Config.emit_cRegTrib      := TpcnRegTrib( cbxRegTributario.ItemIndex ) ;
    Config.emit_cRegTribISSQN := TpcnRegTribISSQN( cbxRegTribISSQN.ItemIndex ) ;
    Config.emit_indRatISSQN   := TpcnindRatISSQN( cbxIndRatISSQN.ItemIndex ) ;
    Config.PaginaDeCodigo     := sePagCod.Value;
    Config.EhUTF8             := cbxUTF8.Checked;
    Config.infCFe_versaoDadosEnt := StrToFloat( sfeVersaoEnt.Text );
    // 29/12/2015
    //SalvarCFes := cbxSalvarCFe.Checked;
  end;
end;

procedure TfSat.bImpressoraClick(Sender: TObject);
begin
  //if PrintDialog1.Execute then
  //  lImpressora.Caption := Printer.Printers[Printer.PrinterIndex];

end;

procedure TfSat.btSerialClick(Sender: TObject);
begin
  {frConfiguraSerial := TfrConfiguraSerial.Create(self);

  try
    frConfiguraSerial.Device.Porta        := ACBrSATExtratoESCPOS1.Device.Porta ;
    frConfiguraSerial.cmbPortaSerial.Text := edtPorta.Text ;
    frConfiguraSerial.Device.ParamsString := ACBrSATExtratoESCPOS1.Device.ParamsString ;

    if frConfiguraSerial.ShowModal = mrOk then
    begin
       edtPorta.Text := frConfiguraSerial.Device.Porta ;
       ACBrSATExtratoESCPOS1.Device.ParamsString := frConfiguraSerial.Device.ParamsString ;
    end ;
  finally
     FreeAndNil( frConfiguraSerial ) ;
  end ;}

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

procedure TfSat.carregarVenda;
var
  TotalItem: Double;
  vTot12741: Double;
  A: Integer;
begin
  //PageControl1.ActivePage := tsGerado;

  ACBrSAT1.CFe.IdentarXML := cbxFormatXML.Checked;
  ACBrSAT1.CFe.TamanhoIdentacao := 3;

  // Trasnferindo Informações de Config para o CFe //
  AjustaACBrSAT;
  ACBrSAT1.InicializaCFe ;

  // Montando uma Venda //
  with ACBrSAT1.CFe do
  begin
    ide.numeroCaixa := 1;

    if (sClienteCODCLIENTE.AsInteger = codConsumidorSat) then
    begin
      if (edCPF.Text <> '') then
        Dest.CNPJCPF := RemoveChar(edCPF.Text);
    end
    else begin
      Dest.CNPJCPF := RemoveChar(sClienteCNPJ.AsString);
      Dest.xNome := sClienteRAZAOSOCIAL.AsString;
      Entrega.xLgr := sClienteLOGRADOURO.AsString;
      Entrega.nro := sClienteNUMERO.AsString;
      Entrega.xCpl := sClienteCOMPLEMENTO.AsString;
      Entrega.xBairro := sClienteBAIRRO.AsString;
      Entrega.xMun := sClienteCIDADE.AsString;
      Entrega.UF := sClienteUF.AsString;
    end;
    cdsItensNF.First;
    While not cdsItensNF.Eof do
    begin
      with Det.Add do
      begin
        nItem := 1 + A;
        Prod.cProd := cdsItensNFCODPRO.AsString;
        if (EAN13Valido(cdsItensNFCOD_BARRA.AsString) = True) then
        begin
          Prod.cEAN := cdsItensNFCOD_BARRA.AsString;
        end;
        Prod.xProd := cdsItensNFDESCPRODUTO.AsString;
        prod.NCM := RemoveChar(cdsItensNFNCM.AsString);
        Prod.CFOP := RemoveChar(cdsItensNFCFOP.AsString);
        Prod.uCom := cdsItensNFUNIDADEMEDIDA.AsString;
        Prod.qCom := cdsItensNFQUANTIDADE.AsFloat;
        Prod.vUnCom := cdsItensNFPRECO.AsFloat;
        Prod.indRegra := irArredondamento;
        Prod.vDesc := 0;

        {
        with Prod.obsFiscoDet.Add do
        begin
          xCampoDet := 'campo';
          xTextoDet := 'texto';
        end;}

        TotalItem := (Prod.qCom * Prod.vUnCom);
        Imposto.vItem12741 := cdsItensNFVLRTOT_TRIB.AsFloat;
        vTot12741 := vTot12741 + cdsItensNFVLRTOT_TRIB.AsFloat;

        if (cdsItensNFORIGEM.AsString = '0') then
          Imposto.ICMS.orig := oeNacional;
        if (cdsItensNFORIGEM.AsString = '1') then
          Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
        if (cdsItensNFORIGEM.AsString = '2') then
          Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
        if (cdsItensNFORIGEM.AsString = '3') then
          Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
        if (cdsItensNFORIGEM.AsString = '4') then
          Imposto.ICMS.orig := oeNacionalProcessosBasicos;
        if (cdsItensNFORIGEM.AsString = '5') then
          Imposto.ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
        if (cdsItensNFORIGEM.AsString = '6') then
          Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
        if (cdsItensNFORIGEM.AsString = '7') then
          Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
        if (cdsItensNFORIGEM.AsString = '8') then
          Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;

        //Imposto.ICMS.CST := cstICMSSN;
        //Imposto.ICMS.pICMS := 18;
        if ((Trim(cdsItensNFCST.AsString) = '') and (Trim(cdsItensNFCSOSN.AsString) = '')) then
        begin
          if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
            MessageDlg('CST do ICMS em branco no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
          Exit;
        end
        else
        begin
          if ((cdsItensNFCST.AsString = '000') or (cdsItensNFCST.AsString = '100') or (cdsItensNFCST.AsString = '200') or (cdsItensNFCST.AsString = '00')) then
            Imposto.ICMS.CST := cst00
          else if ((cdsItensNFCST.AsString = '010') or (cdsItensNFCST.AsString = '110') or (cdsItensNFCST.AsString = '210') or (cdsItensNFCST.AsString = '10')) then
            Imposto.ICMS.CST := cst10
          else if ((cdsItensNFCST.AsString = '020') or (cdsItensNFCST.AsString = '120') or (cdsItensNFCST.AsString = '220') or (cdsItensNFCST.AsString = '20')) then
            Imposto.ICMS.CST := cst20
          else if ((cdsItensNFCST.AsString = '030') or (cdsItensNFCST.AsString = '130') or (cdsItensNFCST.AsString = '230') or (cdsItensNFCST.AsString = '30')) then
            Imposto.ICMS.CST := cst30
          else if ((cdsItensNFCST.AsString = '040') or (cdsItensNFCST.AsString = '140') or (cdsItensNFCST.AsString = '240') or (cdsItensNFCST.AsString = '40')) then
            Imposto.ICMS.CST :=  cst40
          else if ((cdsItensNFCST.AsString = '041') or (cdsItensNFCST.AsString = '141') or (cdsItensNFCST.AsString = '241') or (cdsItensNFCST.AsString = '41')) then
            Imposto.ICMS.CST :=  cst41
          else if ((cdsItensNFCST.AsString = '050') or (cdsItensNFCST.AsString = '150') or (cdsItensNFCST.AsString = '250') or (cdsItensNFCST.AsString = '50')) then
            Imposto.ICMS.CST :=  cst50
          else if ((cdsItensNFCST.AsString = '051') or (cdsItensNFCST.AsString = '151') or (cdsItensNFCST.AsString = '251') or (cdsItensNFCST.AsString = '51')) then
            Imposto.ICMS.CST := cst51
          else if ((cdsItensNFCST.AsString = '060') or (cdsItensNFCST.AsString = '160') or (cdsItensNFCST.AsString = '260') or (cdsItensNFCST.AsString = '60')) then
            Imposto.ICMS.CST := cst60
          else if ((cdsItensNFCST.AsString = '070') or (cdsItensNFCST.AsString = '170') or (cdsItensNFCST.AsString = '270') or (cdsItensNFCST.AsString = '70')) then
            Imposto.ICMS.CST := cst70
          else if ((cdsItensNFCST.AsString = '090') or (cdsItensNFCST.AsString = '190') or (cdsItensNFCST.AsString = '290') or (cdsItensNFCST.AsString = '90')) then
            Imposto.ICMS.CST := cst90
          else
            Imposto.ICMS.CST := cst00;
        end;

        Imposto.ICMS.vICMS := cdsItensNFVALOR_ICMS.AsFloat;
        Imposto.ICMS.pICMS := cdsItensNFICMS.AsFloat;

        if (Trim(cdsItensNFCSTPIS.AsString) = '') then
        begin
          if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
            MessageDlg('CST do PIS em branco  no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
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
            Imposto.PIS.CST   := pis99;
        end;

        Imposto.PIS.vBC := cdsItensNFVLRBC_PIS.AsFloat;
        Imposto.PIS.pPIS := cdsItensNFVALOR_PIS.AsFloat;

        if (Trim(cdsItensNFCSTCOFINS.AsString) = '') then
        begin
          if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
            MessageDlg('CST do COFINS em branco no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
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
            Imposto.COFINS.CST   := cof99;
        end;

        Imposto.COFINS.vBC := cdsItensNFVLRBC_COFINS.AsFloat;
        Imposto.COFINS.pCOFINS := cdsItensNFVALOR_COFINS.AsFloat;

        //infAdProd := 'Informacoes adicionais';
      end;
      cdsItensNF.Next;

    end; // FIM WHILE

    Total.DescAcrEntr.vDescSubtot := 0;
    Total.vCFeLei12741 := vTot12741;

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

  mLog.Lines.Add('Venda Processada');
end;

procedure TfSat.enviarSAT;
begin
  if mVendaEnviar.Text = '' then
    mGerarVenda.Click;

  PageControl1.ActivePage := tsLog;

  ACBrSAT1.EnviarDadosVenda( mVendaEnviar.Text );

  if ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
  begin
    LoadXML( ACBrSAT1.CFe.AsXMLString,  mRecebido);
    PageControl1.ActivePage := tsRecebido;
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
  cds_Movimento.Params[0].AsInteger := cdsItensNFCODMOVIMENTO.AsInteger;
  cds_movimento.Open;

  cdsFatura.Params[0].AsInteger := codVendaSAT;
  cdsFatura.open;

  sCliente.Params[0].AsInteger := cds_MovimentoCODCLIENTE.AsInteger;
  sCliente.Open;

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
  // 29/12/2015
  {
  if ACBrSAT1.Extrato = ACBrSATExtratoESCPOS1 then
  begin
    ACBrSATExtratoESCPOS1.Device.Porta := edtPorta.Text;
    ACBrSATExtratoESCPOS1.Device.Ativar;
    ACBrSATExtratoESCPOS1.ImprimeQRCode := True;
  end
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
  end;
  }
end;

end.
