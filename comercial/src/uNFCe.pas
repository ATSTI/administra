unit uNFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrNFe, StdCtrls, FMTBcd, DBClient, Provider, DB, SqlExpr,
  ExtCtrls, MaskUtils, ACBrBase, ACBrValidador, StrUtils, DBXpress, ACBrDFe,
  pcnConversaoNFe, pcnConversao,pcnNFe, ACBrUtil, ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass, ComCtrls, Buttons, ACBrDfeSSL, ACBrNFeDANFeESCPOS,
  ACBrPosPrinter, Spin, IniFiles,TypInfo, OleCtrls, SHDocVw,
  ACBrDANFCeFortesFr, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, ACBrDANFCeFortesFrA4, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrDFeUTil;

type
  TfNFCe = class(TForm)
    edNFCe: TEdit;
    Label1: TLabel;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    chkAvista: TCheckBox;
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
    Label2: TLabel;
    edtCliente: TEdit;
    sdsNF: TSQLDataSet;
    sdsNFCFOP: TStringField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCODCLIENTE: TIntegerField;
    sdsNFNUMNF: TIntegerField;
    sdsNFCODVENDA: TIntegerField;
    sdsNFBASE_ICMS: TFloatField;
    sdsNFVALOR_ICMS: TFloatField;
    sdsNFBASE_ICMS_SUBST: TFloatField;
    sdsNFVALOR_ICMS_SUBST: TFloatField;
    sdsNFVALOR_PRODUTO: TFloatField;
    sdsNFVALOR_FRETE: TFloatField;
    sdsNFVALOR_SEGURO: TFloatField;
    sdsNFOUTRAS_DESP: TFloatField;
    sdsNFVALOR_IPI: TFloatField;
    sdsNFVALOR_TOTAL_NOTA: TFloatField;
    sdsNFFRETE: TStringField;
    sdsNFCNPJ_CPF: TStringField;
    sdsNFNOMETRANSP: TStringField;
    sdsNFINSCRICAOESTADUAL: TStringField;
    sdsNFEND_TRANSP: TStringField;
    sdsNFCIDADE_TRANSP: TStringField;
    sdsNFUF_TRANSP: TStringField;
    sdsNFPLACATRANSP: TStringField;
    sdsNFUF_VEICULO_TRANSP: TStringField;
    sdsNFQUANTIDADE: TFloatField;
    sdsNFESPECIE: TStringField;
    sdsNFMARCA: TStringField;
    sdsNFNUMERO: TStringField;
    sdsNFPESOLIQUIDO: TBCDField;
    sdsNFPESOBRUTO: TBCDField;
    sdsNFRAZAOSOCIAL: TStringField;
    sdsNFCNPJ: TStringField;
    sdsNFHORASAIDA: TTimeField;
    sdsNFNOTASERIE: TStringField;
    sdsNFSELECIONOU: TStringField;
    sdsNFREDUZICMS: TFloatField;
    sdsNFPROTOCOLOENV: TStringField;
    sdsNFNUMRECIBO: TStringField;
    sdsNFPROTOCOLOCANC: TStringField;
    sdsNFENTRADA: TFloatField;
    sdsNFVALOR_PAGAR: TFloatField;
    sdsNFFATURA: TStringField;
    sdsNFNATUREZA: TSmallintField;
    sdsNFCORPONF4: TStringField;
    sdsNFCORPONF3: TStringField;
    sdsNFCORPONF2: TStringField;
    sdsNFCORPONF1: TStringField;
    sdsNFVALOR_PIS: TFloatField;
    sdsNFVALOR_COFINS: TFloatField;
    sdsNFCORPONF5: TStringField;
    sdsNFCORPONF6: TStringField;
    sdsNFVALOR_DESCONTO: TFloatField;
    sdsNFIDCOMPLEMENTAR: TStringField;
    sdsNFXMLNFE: TGraphicField;
    sdsNFII: TFloatField;
    sdsNFBCII: TFloatField;
    sdsNFTRANSP2: TStringField;
    sdsNFCODTRANSP: TIntegerField;
    sdsNFBASE_IPI: TFloatField;
    sdsNFBASE_PIS: TFloatField;
    sdsNFBASE_COFINS: TFloatField;
    sdsNFVLRTOT_TRIB: TFloatField;
    sdsNFSTATUS: TStringField;
    sdsNFNOMEXML: TStringField;
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
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    cdsNFFRETE: TStringField;
    cdsNFCNPJ_CPF: TStringField;
    cdsNFNOMETRANSP: TStringField;
    cdsNFINSCRICAOESTADUAL: TStringField;
    cdsNFEND_TRANSP: TStringField;
    cdsNFCIDADE_TRANSP: TStringField;
    cdsNFUF_TRANSP: TStringField;
    cdsNFPLACATRANSP: TStringField;
    cdsNFUF_VEICULO_TRANSP: TStringField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFESPECIE: TStringField;
    cdsNFMARCA: TStringField;
    cdsNFNUMERO: TStringField;
    cdsNFPESOLIQUIDO: TBCDField;
    cdsNFPESOBRUTO: TBCDField;
    cdsNFRAZAOSOCIAL: TStringField;
    cdsNFCNPJ: TStringField;
    cdsNFCFOP: TStringField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFNUMNF: TIntegerField;
    cdsNFCODVENDA: TIntegerField;
    cdsNFBASE_ICMS: TFloatField;
    cdsNFVALOR_ICMS: TFloatField;
    cdsNFBASE_ICMS_SUBST: TFloatField;
    cdsNFVALOR_ICMS_SUBST: TFloatField;
    cdsNFVALOR_PRODUTO: TFloatField;
    cdsNFVALOR_FRETE: TFloatField;
    cdsNFVALOR_SEGURO: TFloatField;
    cdsNFOUTRAS_DESP: TFloatField;
    cdsNFVALOR_IPI: TFloatField;
    cdsNFVALOR_TOTAL_NOTA: TFloatField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFHORASAIDA: TTimeField;
    cdsNFNOTASERIE: TStringField;
    cdsNFSELECIONOU: TStringField;
    cdsNFREDUZICMS: TFloatField;
    cdsNFPROTOCOLOENV: TStringField;
    cdsNFNUMRECIBO: TStringField;
    cdsNFPROTOCOLOCANC: TStringField;
    cdsNFENTRADA: TFloatField;
    cdsNFVALOR_PAGAR: TFloatField;
    cdsNFFATURA: TStringField;
    cdsNFNATUREZA: TSmallintField;
    cdsNFCORPONF1: TStringField;
    cdsNFCORPONF2: TStringField;
    cdsNFCORPONF3: TStringField;
    cdsNFCORPONF4: TStringField;
    cdsNFVALOR_PIS: TFloatField;
    cdsNFVALOR_COFINS: TFloatField;
    cdsNFCORPONF5: TStringField;
    cdsNFCORPONF6: TStringField;
    cdsNFVALOR_DESCONTO: TFloatField;
    cdsNFIDCOMPLEMENTAR: TStringField;
    cdsNFXMLNFE: TMemoField;
    cdsNFII: TFloatField;
    cdsNFBCII: TFloatField;
    cdsNFTRANSP2: TStringField;
    cdsNFCODTRANSP: TIntegerField;
    cdsNFBASE_IPI: TFloatField;
    cdsNFBASE_PIS: TFloatField;
    cdsNFBASE_COFINS: TFloatField;
    cdsNFVLRTOT_TRIB: TFloatField;
    cdsNFSTATUS: TStringField;
    cdsNFNOMEXML: TStringField;
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
    dspItensNF: TDataSetProvider;
    sdsItensNFNCM: TStringField;
    cdsItensNFNCM: TStringField;
    sdsItensNFORIGEM: TIntegerField;
    cdsItensNFORIGEM: TIntegerField;
    ACBrValidador1: TACBrValidador;
    sqlBuscaNota: TSQLQuery;
    sdsNFNOMECLIENTE: TStringField;
    sdsNFRAZAOSOCIAL_1: TStringField;
    sdsNFCNPJ_1: TStringField;
    sdsNFINSCESTADUAL: TStringField;
    sdsNFLOGRADOURO: TStringField;
    sdsNFNUMERO_1: TStringField;
    sdsNFCOMPLEMENTO: TStringField;
    sdsNFBAIRRO: TStringField;
    sdsNFCIDADE: TStringField;
    sdsNFUF: TStringField;
    sdsNFTELEFONE: TStringField;
    sdsNFDDD: TStringField;
    sdsNFCEP: TStringField;
    sdsNFE_MAIL: TStringField;
    cdsNFNOMECLIENTE: TStringField;
    cdsNFRAZAOSOCIAL_1: TStringField;
    cdsNFCNPJ_1: TStringField;
    cdsNFINSCESTADUAL: TStringField;
    cdsNFLOGRADOURO: TStringField;
    cdsNFNUMERO_1: TStringField;
    cdsNFCOMPLEMENTO: TStringField;
    cdsNFBAIRRO: TStringField;
    cdsNFCIDADE: TStringField;
    cdsNFUF: TStringField;
    cdsNFTELEFONE: TStringField;
    cdsNFDDD: TStringField;
    cdsNFCEP: TStringField;
    cdsNFE_MAIL: TStringField;
    sdsNFCD_IBGE: TStringField;
    cdsNFCD_IBGE: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    memoDados: TMemo;
    MemoResp: TMemo;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    edtNumSerie: TEdit;
    sbtnGetCert: TSpeedButton;
    Label4: TLabel;
    edSerie: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    btnSair: TBitBtn;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    cboFrete: TComboBox;
    TabSheet3: TTabSheet;
    rgAmbiente: TRadioGroup;
    rgRegime: TRadioGroup;
    rgTipoEmissao: TRadioGroup;
    Label10: TLabel;
    Label9: TLabel;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    Label24: TLabel;
    edtRecebimento: TEdit;
    sqlTotal_tributos: TSQLQuery;
    sdsItensNFCODMOVIMENTO: TIntegerField;
    cdsItensNFCODMOVIMENTO: TIntegerField;
    sbtnCaminhoCert: TSpeedButton;
    BitBtn2: TBitBtn;
    ACBrPosPrinter1: TACBrPosPrinter;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    Label11: TLabel;
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
    edtInfAdic: TEdit;
    Label32: TLabel;
    Label31: TLabel;
    edtPastaXml: TEdit;
    cbCortarPapel: TCheckBox;
    BitBtn4: TBitBtn;
    cbUsarFortes: TRadioButton;
    Panel1: TPanel;
    mRecebido: TWebBrowser;
    edDesconto: TJvCalcEdit;
    ACBrNFe1: TACBrNFe;
    Label12: TLabel;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
    edUFEmissao: TEdit;
    Label13: TLabel;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    BitBtn6: TBitBtn;
    edAno: TEdit;
    edSerieInutiliza: TEdit;
    edModelo: TEdit;
    edNumIni: TEdit;
    edNumFim: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edJust: TEdit;
    Label20: TLabel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    edCancelamentoMotivo: TEdit;
    BitBtn5: TBitBtn;
    lblCancelamento: TLabel;
    lblCancelamento2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    rbPorMes: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    path_nfce: String;
    nova_nota: String;
    codnf: Integer;
    totalNFCe: Double;
    tk, id_tk: String;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    
    //ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    //ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
    function RemoveChar(Const Texto:String):String;
    procedure GerarNFCe(NumNFe: String);
    procedure pegaItens;
    procedure pegaTributos(codMov: Integer;codProd: Integer);
    procedure prepararImpressao();
    procedure LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
    { Private declarations }
  public
    NFCe_serieNF: String;
    NFCe_codNF: Integer;
    NFCe_codMov: Integer;
    NFCe_codCliente: Integer;
    NFCe_dataVenda: TDateTime;
    NFCe_dataVencimento: TDateTime;
    { Public declarations }
  end;

var
  fNFCe: TfNFCe;

implementation

uses UDm, UDMNF;

{$R *.dfm}

procedure TfNFCe.Button1Click(Sender: TObject);
var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
 Protocolo, Recibo: String;
 str: String;
 TD: TTransactionDesc;
begin
  ACBrNFe1.NotasFiscais.Clear;

  if ((edit2.Text = '') and (Trim(edUFEmissao.Text) = 'SP')) then
  begin
    if (MessageDlg('DESEJA CPF NA NOTA ?',
      mtConfirmation, [mbYes, mbNo],0) = mrYes) then
    begin
      edit2.SetFocus;
      exit;
    end;
  end;
  if (edtNumSerie.Text = '') then
  begin
    MessageDlg('Informe o certificado.',mtError,[mbok],0);
    exit;
  end;
  nova_nota := 'S';

  vAux := edNFCe.Text;
  //if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
  //  exit;

  //if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
  //  exit;

  vSincrono := '1';
  Sincrono := True;
  //if not(InputQuery('WebServices Enviar', 'Envio Síncrono(1=Sim, 0=Não)', vSincrono)) then
  //  exit;

  vNumLote := '1';

  if Trim(vNumLote) = '' then
  begin
    MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
    exit;
  end;

  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inválido.',mtError,[mbok],0);
     exit;
   end;

  //if (Trim(vSincrono) = '1') then
  //  Sincrono := True
  //else
  // 05/10/21  comentei aqui pra ficar sincrono := True;
  //Sincrono := False;

  // carlos 23/12/14
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode := veqr200;
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.Salvar   := True;
  ACBrNFe1.Configuracoes.Arquivos.Salvar:= True;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorMes:= rbPorMes.Checked;
  ACBrNFe1.Configuracoes.Arquivos.SalvarEvento:= True;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;

  //ACBrNFe1.Configuracoes.Geral.IdCSC := dmPdv.id_tk;
  //ACBrNFe1.Configuracoes.Geral.CSC := dmPdv.tk;
  ACBrNFe1.Configuracoes.WebServices.TimeOut := 35000;
  ACBrNFe1.Configuracoes.Geral.IdCSC := id_tk;
  ACBrNFe1.Configuracoes.Geral.CSC := tk;

  edtCaminho.Text := 's';
  ACBrNFe1.Configuracoes.Geral.SSLLib := libCapicom;

  {with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    infRespTec.CNPJ := '08382545000111';
    infRespTec.email:= 'carlos@atsti.com.br';
    infRespTec.xContato := 'Carlos R. Silveira';
    infRespTec.fone := '19992159534';
  end;}

  //ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
  //ACBrNFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;

  //edtSenha.text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
  //edtSenha.Text := ACBrNFe1.Configuracoes.Certificados.DadosPFX;

  GerarNFCe(vAux);

  ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;
  //if (sEmpresaUF.AsString = 'SP') then
  //  ACBrNFe1.Configuracoes.WebServices.UFCodigo := 35;
  //if (sEmpresaUF.AsString = 'MG') then
  //  ACBrNFe1.Configuracoes.WebServices.UFCodigo := 31;

  AcbrNfe1.Configuracoes.Arquivos.PathSalvar := edit1.Text;
  edtCaminho.Text := ACBrNFe1.SSL.CertCNPJ;
  ACBrNFe1.NotasFiscais.GravarXML();
  ACBrNFe1.NotasFiscais.Assinar;
  ACBrNFe1.NotasFiscais.Validar;
  LoadXML(ACBrNFe1.NotasFiscais.Items[0].XML,  mRecebido);
  // carlos 06/01/2015

  prepararImpressao();
  // ############# descomentar a linha abaixo
  ACBrNFe1.DANFE := ACBrNFeDANFeESCPOS1;
  if cbUsarFortes.Checked then
    ACBrNFe1.DANFE := ACBrNFeDANFCeFortesA41;
  //ACBrNFeDANFeESCPOS1.ImprimirDANFE();

  //ACBrNFe1.DANFE.TipoDANFE := tiNFCeA4;

  ACBrNFe1.Enviar(vNumLote,True,Sincrono);


  MemoResp.Lines.Add(UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS));
  memoResp.Lines.Add(UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS));
  //LoadXML(MemoResp, WBResposta);

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
  MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
  MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Enviar.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt);

  { ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].tpAmb
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].verAplic
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo }

  ShowMessage('Nº do Protocolo de envio ' + ACBrNFe1.WebServices.Retorno.Protocolo);
  ShowMessage('Nº do Recibo de envio ' + ACBrNFe1.WebServices.Retorno.Recibo);

  if (ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat = 100) then
  begin
    Protocolo := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
    Recibo := ACBrNFe1.WebServices.Enviar.Recibo;
  end;
  // comentei as duas abaixo e adicionei o if acima
  //Protocolo := ACBrNFe1.WebServices.Retorno.Protocolo;
  //Recibo := ACBrNFe1.WebServices.Retorno.Recibo;
  LoadXML(ACBrNFe1.NotasFiscais.Items[0].XML,  mRecebido);
  //ACBrNFe1.NotasFiscais.Imprimir;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  DecimalSeparator := '.';

  dm.sqlsisAdimin.StartTransaction(TD);
  try
    str := 'UPDATE NOTAFISCAL SET ';
    str := str + ' XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML);
    str := str + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,
      (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
    str := str + ', STATUS = ' + QuotedStr('E');
    if (Protocolo <> '') then
      str := str + ', PROTOCOLOENV = ' + quotedStr(Protocolo);
    if (Recibo <> '') then
      str := str + ', NUMRECIBO = ' + QuotedStr(Recibo);
    str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
    dm.sqlsisAdimin.ExecuteDirect(str);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
  except
    on E : Exception do
    begin
      DecimalSeparator := ',';
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Nota Fiscal Consumidor, gerada com sucesso.');
  MemoDados.Lines.Add('');

end;

procedure TfNFCe.GerarNFCe(NumNFe: String);
var contaItens: Integer;
   //ipVista, ipPrazo: TpcnIndicadorPagamento;
   infCplTrib: String;
begin

  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := dm.CCustoPadrao; //Buscar de parametro
  sEmpresa.Open;

  if (sEmpresa.IsEmpty) then
  begin
    MessageDlg('Veja no cadastro da Empresa, se é o Centro de Custo 51, que está configurado.', mtWarning, [mbOK], 0);
    exit;
  end;


  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.cNF       := GerarCodigoNumerico(StrToInt(NumNFe)); //Caso não seja preenchido será gerado um número aleatório pelo componente
    Ide.natOp     := 'VENDA';
    if (chkAvista.Checked) then
      Ide.indPag    := ipVista
    else
      Ide.indPag    := ipPrazo;
    Ide.modelo    := 65;
    Ide.serie     := 1;
    Ide.nNF       := StrToInt(NumNFe);
    Ide.dEmi      := now;
    Ide.dSaiEnt   := now;
    Ide.hSaiEnt   := now;
    Ide.tpNF      := tnSaida;
    case rgTipoEmissao.ItemIndex of
      0: Ide.tpEmis := teNormal;
      1: Ide.tpEmis := teContingencia;
      2: Ide.tpEmis := teOffLine;
    end;
    //Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
    case rgAmbiente.ItemIndex of
      0: Ide.tpAmb := taProducao;
      1: Ide.tpAmb := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
    end;
    if (Trim(sEmpresaUF.AsString) = 'SP') then
      Ide.cUF     := 35;
    if (Trim(sEmpresaUF.AsString) = 'MS') then
      Ide.cUF     := 50;
    if (Trim(sEmpresaUF.AsString) = 'MG') then
      Ide.cUF     := 31;

    Ide.cMunFG    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    Ide.finNFe    := fnNormal;
    Ide.tpImp     := tiNFCe;
    Ide.indFinal  := cfConsumidorFinal;
    Ide.indPres   := pcPresencial;
    //autXML.Add.CNPJCPF := RemoveChar(sEmpresaCNPJ_CPF.AsString);

    //     Ide.dhCont := date;
    //     Ide.xJust  := 'Justificativa Contingencia';
    label8.Caption := RemoveChar(sEmpresaCNPJ_CPF.AsString);
    Emit.CNPJCPF           := RemoveChar(sEmpresaCNPJ_CPF.AsString);
    Emit.IE                := RemoveChar(sEmpresaIE_RG.AsString);
    Emit.xNome             := sEmpresaRAZAO.AsString;
    Emit.xFant             := sEmpresaEMPRESA.AsString;
    Emit.EnderEmit.fone    := RemoveChar(sEmpresaDDD.AsString + sEmpresaFONE.AsString);
    Emit.EnderEmit.CEP     := StrToInt(RemoveChar(sEmpresaCEP.AsString));
    Emit.EnderEmit.xLgr    := sEmpresaENDERECO.AsString;
    Emit.EnderEmit.nro     := sEmpresaNUMERO.AsString;
    Emit.EnderEmit.xCpl    := sEmpresaLOGRADOURO.AsString;
    Emit.EnderEmit.xBairro := sEmpresaBAIRRO.AsString;
    Emit.EnderEmit.cMun    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    Emit.EnderEmit.xMun    := sEmpresaCIDADE.AsString;
    Emit.EnderEmit.UF      := sEmpresaUF.AsString;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';
    Emit.IEST              := '';
    //      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
    //      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe

    case rgRegime.ItemIndex of
      0: Emit.CRT := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
      1: Emit.CRT := crtSimplesExcessoReceita;
      2: Emit.CRT := crtRegimeNormal;
    end;

    infRespTec.CNPJ := '08382545000111';
    infRespTec.xContato := 'Carlos R. Silveira';
    infRespTec.email := 'ats@atsti.com.br';
    infRespTec.fone := '19992159534';

    if (edit2.Text <> '') then
    begin
      Dest.CNPJCPF := edit2.Text;
      Dest.indIEDest := inNaoContribuinte;
      Dest.EnderDest.cPais := 1058;
    end;
    {
      //Dest.IE                := '687138770110'; //NFC-e não aceita IE
      Dest.ISUF              := cdsNFUF.AsString;
      Dest.xNome             := cdsNFRAZAOSOCIAL_1.AsString;

      Dest.EnderDest.Fone    := removeChar(cdsNFDDD.AsString + cdsNFTELEFONE.AsString);
      Dest.EnderDest.CEP     := StrToInt(removeChar(cdsNFCEP.AsString));
      Dest.EnderDest.xLgr    := cdsNFLOGRADOURO.AsString;
      Dest.EnderDest.nro     := cdsNFNUMERO_1.AsString;
      Dest.EnderDest.xCpl    := cdsNFCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := cdsNFBAIRRO.AsString;
      Dest.EnderDest.cMun    := StrToInt(RemoveChar(cdsNFCD_IBGE.AsString));
      Dest.EnderDest.xMun    := cdsNFCIDADE.AsString;
      Dest.EnderDest.UF      := cdsNFUF.AsString;
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';
    end;
    }
    pegaItens;

    {  TpcnFormaPagamento = (fpDinheiro, fpCheque, fpCartaoCredito, fpCartaoDebito, fpCreditoLoja,
                        fpValeAlimentacao, fpValeRefeicao, fpValePresente, fpValeCombustivel,
                        fpOutro}
    with pag.Add do
    begin
      tPag := fpCreditoLoja;
      if (edtRecebimento.Text = '1-DINHEIRO') then
        tPag := fpDinheiro
      else if ((edtRecebimento.Text = '2-CHEQUE') or (edtRecebimento.Text = '2-CHEQUE-PRÉ')) then
        tPag := fpCheque
      else if (edtRecebimento.Text = '6-CARTÃO CRÉDITO') or
        (edtRecebimento.Text = '18-VISA CRÉDITO') or
        (edtRecebimento.Text = '20-MASTER CRÉDITO') then
        tPag := fpCartaoCredito
      else if (edtRecebimento.Text = '7-CARTÃO DÉBITO') or
        (edtRecebimento.Text = '19-VISA DÉBITO') or
        (edtRecebimento.Text = '21-MASTER DÉBITO') then
        tPag := fpCartaoDebito
      else
        tPag := fpOutro;

      vPag := sqlBuscaNota.fieldByName('VALOR').AsFloat;
    end;


    pegaTributos(cdsItensNFCODMOVIMENTO.AsInteger, 0);
    if (not sqlTotal_tributos.IsEmpty)  then
    begin
      infCplTrib := 'Trib aprox R$:' +
        format('%8.2n', [sqlTotal_tributos.Fields[0].AsFloat]) + '-Fed, ' +
        format('%8.2n', [sqlTotal_tributos.Fields[1].AsFloat]) + '-Est e ' +
        format('%8.2n', [sqlTotal_tributos.Fields[2].AsFloat]) + '-Mun ';
      InfAdic.infCpl := infCplTrib + 'Fonte: IBPT';//Fonte: IBPT/FECOMERCIO RJ Xe67eQ
      // DESCOMENTAR #################################
      ACBrNFeDANFCeFortesA41.FonteTributos := 'Fonte: IBPT';
      ACBrNFeDANFCeFortesA41.vTribFed := sqlTotal_tributos.Fields[0].AsFloat;
      ACBrNFeDANFCeFortesA41.vTribEst := sqlTotal_tributos.Fields[1].AsFloat;
      ACBrNFeDANFCeFortesA41.vTribMun := sqlTotal_tributos.Fields[2].AsFloat;
      ACBrNFeDANFeESCPOS1.FonteTributos := 'Fonte: IBPT';
      ACBrNFeDANFeESCPOS1.vTribFed := sqlTotal_tributos.Fields[0].AsFloat;
      ACBrNFeDANFeESCPOS1.vTribEst := sqlTotal_tributos.Fields[1].AsFloat;
      ACBrNFeDANFeESCPOS1.vTribMun := sqlTotal_tributos.Fields[2].AsFloat;
    end;


//Adicionando Serviços
{      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descrição do Serviço';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informação Adicional do Serviço';

//Grupo para serviços
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := 1402; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;
}
  //    With ACBrNFe1.NotasFiscais.Add.NFe do
  //    begin
      Total.ICMSTot.vBC     := 0;
      Total.ICMSTot.vICMS   := 0;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := sqlBuscaNota.fieldByName('VALOR').AsFloat; // totalNFCe;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := edDesconto.Value;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := sqlBuscaNota.fieldByName('VALOR').AsFloat - edDesconto.Value; //totalNFCe;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;
   //   end;
{      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

   //   Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

{      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;
 }

 { carlos
      with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpDinheiro;
         vPag := 100;
       end;

      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';
}
{      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end; }
   end;

end;

procedure TfNFCe.pegaItens;
var contaItens :integer;
  desc, BC, BCST: variant;
  cod_barra: String;
begin
  totalNFCe := 0;
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    with Transp do
    begin
        case cboFrete.ItemIndex of
          0 : modFrete := mfContaEmitente;
          1 : modFrete := mfContaDestinatario;
          2 : modFrete := mfContaTerceiros;
          3 : modFrete := mfSemFrete;
        end;
    end;
    //Adicionando Produtos
    contaItens := 0;
    cdsItensNF.First;
    while not cdsItensNF.Eof do
    begin
      totalNFCe := totalNFCe + cdsItensNFVLR_BASE.AsFloat;
      contaItens := contaItens + 1;
      with Det.Add do
      begin
        Prod.nItem    := contaItens; // Número sequencial, para cada item deve ser incrementado

        if (dm.mascaraProduto <> '') then
          Prod.cProd    := FormatMaskText(dm.mascaraProduto+';0;_', cdsItensNFCODPRO.AsString)
        else
          Prod.cProd    := cdsItensNFCODPRO.AsString;
        //Prod.cEAN     := '7896523206646';
        Prod.xProd    := LeftStr(cdsItensNFDESCPRODUTO.AsString, 99);
        Prod.CFOP     := cdsItensNFCFOP.AsString;
        Prod.uCom     := cdsItensNFUNIDADEMEDIDA.AsString;
        Prod.qCom     := cdsItensNFQUANTIDADE.AsFloat;
        Prod.vUnCom   := cdsItensNFVALTOTAL.AsFloat/cdsItensNFQUANTIDADE.AsFloat;
        Prod.uTrib    := cdsItensNFUNIDADEMEDIDA.AsString;
        Prod.qTrib    := cdsItensNFQUANTIDADE.AsFloat;
        Prod.vUnTrib  := cdsItensNFVALTOTAL.AsFloat/cdsItensNFQUANTIDADE.AsFloat;

        Prod.NCM      := cdsItensNFNCM.AsString;
        Prod.EXTIPI   := '';

        cod_barra := cdsItensNFCOD_BARRA.AsString;
        ACBrValidador1.Documento := cod_barra;
        ACBrValidador1.TipoDocto := docGTIN;
        if not ACBrValidador1.Validar then
          cod_barra := 'SEM GTIN';
        ACBrValidador1.TipoDocto := docPrefixoGTIN;
        if not ACBrValidador1.Validar then
          cod_barra := 'SEM GTIN';

        Prod.cEAN := cod_barra;
        Prod.cEANTrib := cod_barra;

        desc := StrLen(PChar(MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)));
        if ( desc > 0) then
          infAdProd     := MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)  + cdsItensNFOBS.AsString
        else
          infAdProd     := cdsItensNFOBS.AsString;

        Prod.vProd    := cdsItensNFVALTOTAL.AsFloat;
        Prod.vFrete   := cdsItensNFFRETE.AsCurrency;
        Prod.vDesc    := cdsItensNFVALOR_DESCONTO.AsCurrency;
        Prod.vOutro   := cdsItensNFVALOR_OUTROS.AsCurrency;
        Prod.vSeg     := cdsItensNFVALOR_SEGURO.AsCurrency;

        with Imposto do
        begin
          // lei da transparencia nos impostos
          vTotTrib := cdsItensNFVLRTOT_TRIB.AsFloat;
          // ***********************  ICMS ********************************
          with ICMS do
          begin
            if (cdsItensNFORIGEM.IsNull) then
            begin
              MessageDlg('Origem do Produto(CADASTRO PRODUTO) não informado, Cod. Prod: ' + cdsItensNFCODPRO.AsString, mtError, [mbOK], 0);
              //exit;
            end;

            if( sEmpresaCRT.AsInteger = 0) then
            begin
              if (( cdsItensNFCSOSN.AsString = null) or ( cdsItensNFCSOSN.AsString = '')) then
              begin
                CSOSN := csosnVazio;
              end
              else if ( cdsItensNFCSOSN.AsString = '101') then
              begin
                CSOSN := csosn101;
                if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
                begin
                  if (cdsItensNFICMS.AsVariant > 0 ) then
                  begin
                    pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                    vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
                  end;
                end;
              end
              else if ( cdsItensNFCSOSN.AsString = '102') then
                CSOSN := csosn102
              else if ( cdsItensNFCSOSN.AsString = '103') then
                CSOSN := csosn103
              else if ( cdsItensNFCSOSN.AsString = '201') then
              begin
                CSOSN := csosn201;
                if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
                begin
                  if (cdsItensNFICMS.AsVariant > 0 ) then
                  begin
                    pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                    vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
                  end;
                end;
              end
              else if ( cdsItensNFCSOSN.AsString = '202') then
                CSOSN := csosn202
              else if ( cdsItensNFCSOSN.AsString = '203') then
                CSOSN := csosn203
              else if ( cdsItensNFCSOSN.AsString = '300') then
                CSOSN := csosn300
              else if ( cdsItensNFCSOSN.AsString = '400') then
                CSOSN := csosn400
              else if ( cdsItensNFCSOSN.AsString = '500') then
                CSOSN := csosn500
              else if ( cdsItensNFCSOSN.AsString = '900') then
                CSOSN := csosn900;
            end; // CRT = 0

            // CST's

            if ((Trim(cdsItensNFCST.AsString) = '') and (Trim(cdsItensNFCSOSN.AsString) = '')) then
            begin
              if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
                MessageDlg('CST do ICMS em branco no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
              Exit;
            end
            else
            begin
              if ((cdsItensNFCST.AsString = '000') or (cdsItensNFCST.AsString = '100') or (cdsItensNFCST.AsString = '200') or (cdsItensNFCST.AsString = '00')) then
                CST := cst00
              else if ((cdsItensNFCST.AsString = '010') or (cdsItensNFCST.AsString = '110') or (cdsItensNFCST.AsString = '210') or (cdsItensNFCST.AsString = '10')) then
                CST := cst10
              else if ((cdsItensNFCST.AsString = '020') or (cdsItensNFCST.AsString = '120') or (cdsItensNFCST.AsString = '220') or (cdsItensNFCST.AsString = '20')) then
                CST := cst20
              else if ((cdsItensNFCST.AsString = '030') or (cdsItensNFCST.AsString = '130') or (cdsItensNFCST.AsString = '230') or (cdsItensNFCST.AsString = '30')) then
                CST := cst30
              else if ((cdsItensNFCST.AsString = '040') or (cdsItensNFCST.AsString = '140') or (cdsItensNFCST.AsString = '240') or (cdsItensNFCST.AsString = '40')) then
                CST :=  cst40
              else if ((cdsItensNFCST.AsString = '041') or (cdsItensNFCST.AsString = '141') or (cdsItensNFCST.AsString = '241') or (cdsItensNFCST.AsString = '41')) then
                CST :=  cst41
              else if ((cdsItensNFCST.AsString = '050') or (cdsItensNFCST.AsString = '150') or (cdsItensNFCST.AsString = '250') or (cdsItensNFCST.AsString = '50')) then
                CST :=  cst50
              else if ((cdsItensNFCST.AsString = '051') or (cdsItensNFCST.AsString = '151') or (cdsItensNFCST.AsString = '251') or (cdsItensNFCST.AsString = '51')) then
                CST := cst51
              else if ((cdsItensNFCST.AsString = '060') or (cdsItensNFCST.AsString = '160') or (cdsItensNFCST.AsString = '260') or (cdsItensNFCST.AsString = '60')) then
                CST := cst60
              else if ((cdsItensNFCST.AsString = '070') or (cdsItensNFCST.AsString = '170') or (cdsItensNFCST.AsString = '270') or (cdsItensNFCST.AsString = '70')) then
                CST := cst70
              else if ((cdsItensNFCST.AsString = '090') or (cdsItensNFCST.AsString = '190') or (cdsItensNFCST.AsString = '290') or (cdsItensNFCST.AsString = '90')) then
                CST := cst90
              else
                CST := cst00;
            end;

            orig  := cdsItensNFORIGEM.AsVariant;                       //ORIGEM DO PRODUTO
            modBC := BC;                                              //MODO DE BASE DE CALCULO (0) POR %
            //Não carregar ICMS para Simples Nacional
            if not ((ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional) and (cdsItensNFCSOSN.AsString <> '900')) then
            begin
              vBC := cdsItensNFVLR_BASEICMS.AsVariant;                //VALOR DA BASE DE CALCULO
              pICMS := cdsItensNFICMS.AsVariant;                     //ALIQUOTA DO ICMS
              vICMS := cdsItensNFVALOR_ICMS.AsVariant;                  //VALOR DO ICMS
            end;
            modBCST :=  BCST;                                         //MODO DE BASE DE CALCULO SUBST. TRIBUTÁRIA(4) POR %
            vBCST := 0;
            if (not cdsItensNFICMS_SUBSTD.IsNull) then
              vBCST :=    cdsItensNFICMS_SUBSTD.AsVariant;                 //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA

            if (cdsItensNFCFOP.AsString <> '') then
            begin
              if (cdsItensNFICMS_SUBST.IsNull) then
                pMVAST := 0
              else
                pMVAST := cdsItensNFICMS_SUBST.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
              if (cdsItensNFICMS_SUBSTD.IsNull) then
                pRedBCST := 0
              else
                pRedBCST := cdsItensNFICMS_SUBSTD.AsVariant;                 //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
              if (cdsItensNFICMS_SUBSTD.IsNull) then
                pICMSST := 0
              else
                pICMSST :=  cdsItensNFICMS_SUBSTD.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
            end
            else begin
              if (cdsItensNFICMS_SUBST.IsNull) then
                pMVAST := 0
              else
                pMVAST := cdsItensNFICMS_SUBST.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
              if (cdsItensNFICMS_SUBSTD.IsNull) then
                pRedBCST := 0
              else
                pRedBCST := cdsItensNFICMS_SUBSTD.AsVariant;                 //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
              if (cdsItensNFICMS_SUBST.IsNull) then
                pICMSST := 0
              else
                pICMSST := cdsItensNFICMS_SUBST.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
            end;

            //if (sCFOPREDUCAO.IsNull) then
            pRedBC := 0;
            //else
            //  pRedBC :=   sCFOPREDUCAO.AsVariant;                          //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO
            if (cdsItensNFICMS_SUBST.isnull) then
              vICMSST := 0
            else
              vICMSST :=  cdsItensNFICMS_SUBST.AsVariant;                  //VALOR DO ICMS DA SUBST. TRIBUTÁRIA
          end;
          //ICMS.orig    := oeNacional;
          //ICMS.modBC   := dbiValorOperacao;
          //ICMS.modBCST := dbisMargemValorAgregado;

          // ***********************  FIM ICMS ********************************

          // ***********************  PIS ********************************
          with PIS do
          begin
            CST      := pis99;
            PIS.vBC  := 0;
            PIS.pPIS := 0;
            PIS.vPIS := 0;

            PIS.qBCProd   := 0;
            PIS.vAliqProd := 0;
            PIS.vPIS      := 0;
          end;
          // ***********************  FIM PIS ********************************
          with PISST do
          begin
            vBc       := 0;
            pPis      := 0;
            qBCProd   := 0;
            vAliqProd := 0;
            vPIS      := 0;
          end;

          with COFINS do
          begin
            CST            := cof99;
            COFINS.vBC     := 0;
            COFINS.pCOFINS := 0;
            COFINS.vCOFINS := 0;
            COFINS.qBCProd   := 0;
            COFINS.vAliqProd := 0;
          end;

          with COFINSST do
          begin
            vBC       := 0;
            pCOFINS   := 0;
            qBCProd   := 0;
            vAliqProd := 0;
            vCOFINS   := 0;
          end;

          //Grupo para serviços
          {with ISSQN do
          begin
            vBC       := 0;
            vAliq     := 0;
            vISSQN    := 0;
            cMunFG    := 0;
            cListServ := 1402; // Preencha este campo usando a tabela disponível
                            // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
          {end;}
        end;
      end ;
      cdsItensNF.Next;
    end;
  end;
end;

function TfNFCe.RemoveChar(const Texto: String): String;
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

procedure TfNFCe.FormShow(Sender: TObject);
var str_sql:string;
  TD: TTransactionDesc;
  ArqINI : String ;
  INI : TIniFile ;
begin
  edCancelamentoMotivo.Text := '';
  memoDados.Lines.Clear;
  nova_nota := 'N';
  ACBrNFe1.NotasFiscais.Clear;
  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := DM.CCustoPadrao; //Buscar de parametro
  sEmpresa.Open;

  if (not sEmpresa.IsEmpty) then
  begin
    edUFEmissao.Text := sEmpresaUF.AsString;
    edit1.Text := sEmpresaDIVERSOS1.AsString + 'nfce';
    if (sEmpresaDIVERSOS3.AsString <> '') then
    begin
      ACBrNFe1.Configuracoes.WebServices.TimeZoneConf.TimeZoneStr := sEmpresaDIVERSOS3.AsString;
    end;
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar := edit1.Text;
    if ( not DirectoryExists(edit1.Text)) then
       CreateDir(edit1.Text);
    if (sEmpresaTIPO.AsString = '1') then
    begin
      rgAmbiente.ItemIndex := 0;
      ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
    end
    else begin
      rgAmbiente.ItemIndex := 1;
      ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
    end;
    if ( sEmpresaCRT.AsInteger = 0) Then
    begin
      //ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT := crtSimplesNacional;
      rgRegime.ItemIndex := 0;
    end
    else if ( sEmpresaCRT.AsInteger = 1) Then
    begin
      //ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT := crtSimplesExcessoReceita;
      rgRegime.ItemIndex := 1;
    end
    else if ( sEmpresaCRT.AsInteger = 2) Then
    begin
      rgRegime.ItemIndex := 2;
      //ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT := crtRegimeNormal;
    end;
  end;

  Edit2.Text := '';
  // abri a nota fiscal
  if (sqlBuscaNota.Active) then
    sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select v.CODVENDA, v.VALOR, v.DESCONTO' +
    '  from MOVIMENTO m, VENDA v ' +
    ' where (m.CODMOVIMENTO = v.CODMOVIMENTO) ' +
    '   and (m.CODNATUREZA = 30) ' +
    '   and (m.CONTROLE = ' + QuotedStr(IntToStr(NFCe_codMov)) + ')');
  sqlBuscaNota.Open;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFCe';
  dm.cds_parametro.Open;

  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('Cadastre: '+#13+#10+''+#13+#10+'Natureza Operação : 30 para Nota Fiscal Consumidor;'+#13+#10+''+#13+#10+'Série                         : para ser usada na NFCe;'+#13+#10+''+#13+#10+'Parametro                : SERIENFCe com a série criada no campo D1;', mtWarning, [mbOK], 0);
    exit;
  end;

  id_tk := dm.cds_parametroD4.AsString;
  tk := dm.cds_parametroDADOS.AsString;

  if (sqlBuscaNota.IsEmpty) then
  begin
    { 03/08/17
    if (dmnf.scds_serienfe.Active) then
      dmnf.scds_serienfe.Close;
    dmnf.scds_serienfe.Params[0].AsString := dm.cds_parametroD1.AsString;

    dmnf.scds_serienfe.Open;

    if (not dmnf.scds_serienfe.IsEmpty) then
    begin
      NFCe_serieNF := dmnf.scds_serienfeSERIE.AsString;
      NFCe_numNf   := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end
    else begin
      MessageDlg('Cadastre: '+#13+#10+''+#13+#10+'Natureza Operação : 30 para Nota Fiscal Consumidor;'+#13+#10+''+#13+#10+'Série                         : para ser usada na NFCe;'+#13+#10+''+#13+#10+'Parametro                : SERIENFCe com a série criada no campo D1;', mtWarning, [mbOK], 0);
      exit;
    end;
    }
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'EXECUTE PROCEDURE GERA_NF_VENDA(';
      str_sql := str_sql + IntToStr(NFCe_codCliente);
      str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', NFCe_dataVenda));
      str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', NFCe_dataVencimento));
      str_sql := str_sql + ', ' + QuotedStr(NFCe_serieNF);
      str_sql := str_sql + ', ' + QuotedStr(inttostr(NFCe_codNF));
      str_sql := str_sql + ', ' + IntToStr(NFCe_codMov);
      str_sql := str_sql + ', ' + '30)';

      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        Exit;
      end;
    end;
    sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select v.CODVENDA, v.VALOR, v.DESCONTO from MOVIMENTO m, VENDA v ' +
      ' where (m.CODMOVIMENTO = v.CODMOVIMENTO) ' +
      '   and (m.CODNATUREZA = 30) ' +
      '   and (m.CONTROLE = ' + QuotedStr(IntToStr(NFCe_codMov)) + ')');
    sqlBuscaNota.Open;
  end;
  if (cdsNF.Active) then
    cdsNF.Close;
  cdsNF.Params.ParamByName('pCODVENDA').AsInteger := sqlBuscaNota.fieldByName('CODVENDA').AsInteger;
  cdsNF.Open;
  codnf := cdsNFNUMNF.AsInteger;
  if (cdsItensNF.Active) then
    cdsItensNF.Close;
  cdsItensNF.Params.ParamByName('id').AsInteger := sqlBuscaNota.fieldByName('CODVENDA').AsInteger;
  cdsItensNF.Open;
  //edNFCe.Text := cdsNFNOTASERIE.AsString;
  edtCliente.Text := cdsNFNOMECLIENTE.AsString;
  edit3.Text := 'R$ ' + FloatToStr(sqlBuscaNota.fieldByName('VALOR').AsFloat);

  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;
  INI := TIniFile.Create(ArqINI);
  try
    //sePagCod.Value         := INI.ReadInteger('SAT','PaginaDeCodigo',0);
    //sfeVersaoEnt.Text      := FloatToString( INI.ReadFloat('SAT','versaoDadosEnt', cversaoDadosEnt) );
    //cbxFormatXML.Checked   := INI.ReadBool('SAT','FormatarXML', True);
    //cbxSalvarCFe.Checked     := INI.ReadBool('SAT','SalvarCFe', True);
    //cbxSalvarCFeCanc.Checked := INI.ReadBool('SAT','SalvarCFeCanc', True);
    //cbxSalvarEnvio.Checked   := INI.ReadBool('SAT','SalvarEnvio', True);
    //cbxSepararPorCNPJ.Checked:= INI.ReadBool('SAT','SepararPorCNPJ', False);
    //cbxSepararPorMES.Checked := INI.ReadBool('SAT','SepararPorMES', False);
    edtPastaXml.Text         := INI.ReadString('SAT','PastaXml','c:\home\sat');
    edtInfAdic.Text          := INI.ReadString('SAT','InfoAdicional','ICMS a ser recolhido conforme LC 123/2006 - Simples Nacional');
    cbxModeloPosPrinter.ItemIndex := INI.ReadInteger('PosPrinter', 'Modelo', Integer(ACBrPosPrinter1.Modelo));
    ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModeloPosPrinter.ItemIndex );
    cbxPorta.Text := INI.ReadString('PosPrinter','Porta',ACBrPosPrinter1.Porta);
    cbxPagCodigo.ItemIndex := INI.ReadInteger('PosPrinter','PaginaDeCodigo',Integer(ACBrPosPrinter1.PaginaDeCodigo));
    ACBrPosPrinter1.Device.ParamsString := INI.ReadString('PosPrinter','ParamsString','');
    seColunas.Value := INI.ReadInteger('PosPrinter','Colunas',ACBrPosPrinter1.ColunasFonteNormal);
    seEspLinhas.Value := INI.ReadInteger('PosPrinter','EspacoLinhas',ACBrPosPrinter1.EspacoEntreLinhas);
    seLinhasPular.Value := INI.ReadInteger('PosPrinter','LinhasEntreCupons',ACBrPosPrinter1.LinhasEntreCupons);
    cbCortarPapel.Checked := INI.ReadBool('PosPrinter','CortarPapel', True);
    cbUsarFortes.Checked   := INI.ReadBool('Fortes','UsarFortes', True) ;
    cbUsarEscPos.Checked   := not cbUsarFortes.Checked;
    rbPorMes.Checked := INI.ReadBool('SAT','SepararPorMES', False);
  finally
     INI.Free ;
  end ;
  if (edtPastaXml.Text <> '') then
  begin
    edit1.Text := edtPastaXml.Text;
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar := edit1.Text;
    if ( not DirectoryExists(edit1.Text)) then
       CreateDir(edit1.Text);
  end;
end;

procedure TfNFCe.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;


   {$ENDIF}
   if ( ((ACBrNFe1.SSL.CertDataVenc - Now) < 30) and ((ACBrNFe1.SSL.CertDataVenc - Now) > 0)) then
     MessageDlg( 'Seu certificado expira dia ' + DateToStr(ACBrNFe1.SSL.CertDataVenc) , mtInformation, [mbOK], 0);


end;

procedure TfNFCe.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfNFCe.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TfNFCe.pegaTributos(codMov, codProd: Integer);
var pegaTribSql : String;
begin
  pegaTribSql := 'SELECT CODPRODUTO ' +
    ' , TRIB_FED ' +
    ' , TRIB_EST ' +
    ' , TRIB_MUN ' +
    ' , TOT_TRIB_FED ' +
    ' , TOT_TRIB_EST ' +
    ' , TOT_TRIB_MUN ' +
    ' , FONTE ' +
    ' , CHAVE ' +
    ' FROM TOTAL_TRIBUTOS(' +
    IntToStr(codMov) + ')';
  if (codProd > 0) then
  begin
    pegaTribSql := pegaTribSql +
      ' WHERE CODPRODUTO = ' + IntToStr(codProd);
  end;
  if (codProd = 0) then
  begin
    pegaTribSql := 'SELECT ' +
      ' SUM(TRIB_FED) ' +
      ' , SUM(TRIB_EST) ' +
      ' , SUM(TRIB_MUN) ' +
      ' FROM TOTAL_TRIBUTOS(' +
      IntToStr(codMov) + ')';
  end;
  if (sqlTotal_tributos.Active) then
    sqlTotal_tributos.Close;
  sqlTotal_tributos.SQL.Clear;
  sqlTotal_tributos.SQL.Add(pegaTribSql);
  sqlTotal_tributos.Open;
end;

procedure TfNFCe.BitBtn2Click(Sender: TObject);
var arquivx:string;
begin
  prepararImpressao();
  if (nova_nota = 'N') then
  begin
    OpenDialog1.Title := 'Selecione a NFCe';
    OpenDialog1.DefaultExt := '*.XML';
    OpenDialog1.Filter := 'Arquivos NFCe (*-nfce.XML)|*.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
    if OpenDialog1.Execute then
    begin
      arquivx := OpenDialog1.FileName;
    end;
    ACBrNFe1.NotasFiscais.LoadFromFile(arquivx)
  end;
  //ACBrNFeDANFeRL1.ImprimirDANFE();

  // DESCOMENTAR 2 LINHAS ABAIXO #############################
  if cbUsarFortes.Checked then
  begin
    ACBrNFe1.DANFE := ACBrNFeDANFCeFortesA41;
    ACBrNFeDANFCeFortesA41.ImprimirDANFE();
  end
  else begin
    ACBrNFeDANFeESCPOS1.ACBrNFe := ACBrNFe1;
    ACBrNFeDANFeESCPOS1.ImprimirDANFE();
  end;  
end;

procedure TfNFCe.BitBtn3Click(Sender: TObject);
var arquivx:string;
begin
  prepararImpressao();
  if (nova_nota = 'N') then
  begin
    OpenDialog1.Title := 'Selecione a NFCe';
    OpenDialog1.DefaultExt := '*.XML';
    OpenDialog1.Filter := 'Arquivos NFCe (*-nfce.XML)|*.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
    if OpenDialog1.Execute then
    begin
      arquivx := OpenDialog1.FileName;
    end;
    ACBrNFe1.NotasFiscais.LoadFromFile(arquivx)
  end;
  //ACBrNFeDANFeRL1.ImprimirDANFE();

  // DESCOMENTAR 2 LINHAS ABAIXO #############################
  ACBrNFeDANFeESCPOS1.ACBrNFe := ACBrNFe1;
  ACBrNFeDANFeESCPOS1.ImprimirDANFEResumido();
end;

procedure TfNFCe.prepararImpressao;
begin
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModeloPosPrinter.ItemIndex );
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
  ACBrPosPrinter1.Porta := cbxPorta.Text;
  ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
  ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
  ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
  //ACBrSATExtratoESCPOS1.ImprimeQRCode := True;
  //ACBrSATExtratoESCPOS1.ImprimeEmUmaLinha := cbImprimir1Linha.Checked;

  // DESCOMENTAR 1 LINHAS ABAIXO #############################
  ACBrNFeDANFeESCPOS1.ImprimeEmUmaLinha := cbImprimir1Linha.Checked;
end;

procedure TfNFCe.BitBtn4Click(Sender: TObject);
var arquivx:string;
begin
  prepararImpressao();
  if (nova_nota = 'N') then
  begin
    OpenDialog1.Title := 'Selecione a NFCe';
    OpenDialog1.DefaultExt := '*.XML';
    OpenDialog1.Filter := 'Arquivos NFCe (*-nfce.XML)|*.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathNFe;
    if OpenDialog1.Execute then
    begin
      arquivx := OpenDialog1.FileName;
    end;
    ACBrNFe1.NotasFiscais.LoadFromFile(arquivx)
  end;
  //ACBrNFeDANFeRL1.ACBrNFe := ACBrNFe1;
  //ACBrNFeDANFeRL1.TipoDANFE := tiNFCeA4;

  // DESCOMENTAR  linha abaixo #########################
  ACBrNFe1.DANFE := ACBrNFeDANFCeFortesA41;

  //ACBrNFe1.DANFE.TipoDANFE := tiNFCeA4;
  //ACBrNFeDANFCeFortes1.TipoDANFE := tiNFCeA4;

  //ACBrNFeDANFCeFortes1.ACBrNFe := ACBrNFe1;
  acbrNFe1.NotasFiscais.Imprimir;
end;

procedure TfNFCe.FormCreate(Sender: TObject);
var   N: TACBrPosPrinterModelo;
begin
  edCancelamentoMotivo.Text := '';
  //ACBrNFeDANFeRL1 := TACBrNFeDANFeRL.Create(nil);
  //ACBrNFeDANFeESCPOS1 := TACBrNFeDANFeESCPOS.Create(nil);
  //ACBrNFeDANFCeFortes1 := TACBrNFeDANFCeFortes.Create(nil);
  //ACBrNFeDANFCeFortesA41 := TACBrNFeDANFCeFortesA4.Create(nil);
  cbxModeloPosPrinter.Items.Clear ;
  For N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;
end;

procedure TfNFCe.LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
begin
  WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml',
              AXML, False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml');
end;

procedure TfNFCe.FormDestroy(Sender: TObject);
begin
  //ACBrNFeDANFeRL1.Destroy;
  //ACBrNFeDANFeESCPOS1.Destroy;
  //ACBrNFeDANFCeFortesA41.Destroy;
  //ACBrNFeDANFCeFortes1.Destroy;
end;

procedure TfNFCe.BitBtn5Click(Sender: TObject);
var idLote,vAux : String;
begin
  if (edCancelamentoMotivo.Text = '') then
  begin
    ShowMessage('Informe o Motivo do Cancelamento');
    exit;
  end;

  // ######## carregando acbr
  ACBrNFe1.NotasFiscais.Clear;

  //vAux := edNFCe.Text;
  //if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
  //  exit;

  //if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
  //  exit;

  //vSincrono := '1';
  //Sincrono := True;
  //if not(InputQuery('WebServices Enviar', 'Envio Síncrono(1=Sim, 0=Não)', vSincrono)) then
  //  exit;

  //vNumLote := '1';

  // carlos 23/12/14
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode := veqr200;
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.Salvar   := True;
  ACBrNFe1.Configuracoes.Arquivos.Salvar:= True;
  ACBrNFe1.Configuracoes.Arquivos.SalvarEvento:= True;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;

  ACBrNFe1.Configuracoes.WebServices.TimeOut := 35000;
  ACBrNFe1.Configuracoes.Geral.IdCSC := id_tk;
  ACBrNFe1.Configuracoes.Geral.CSC := tk;

  edtCaminho.Text := 's';
  ACBrNFe1.Configuracoes.Geral.SSLLib := libCapicom;

  //ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
  //ACBrNFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;

  //edtSenha.text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
  //edtSenha.Text := ACBrNFe1.Configuracoes.Certificados.DadosPFX;


  ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;
  //if (sEmpresaUF.AsString = 'SP') then
  //  ACBrNFe1.Configuracoes.WebServices.UFCodigo := 35;
  //if (sEmpresaUF.AsString = 'MG') then
  //  ACBrNFe1.Configuracoes.WebServices.UFCodigo := 31;

  AcbrNfe1.Configuracoes.Arquivos.PathSalvar := edit1.Text;
  // #######################  ate aqui carregando o acbr

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

    lblCancelamento.Caption := 'Chave ' + acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
    ACBrNFe1.EventoNFe.idLote := 1;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.tpAmb := acbrnfe1.NotasFiscais.Items[0].NFe.Ide.tpAmb;
      infEvento.CNPJ := acbrnfe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
      infEvento.cOrgao := acbrnfe1.NotasFiscais.Items[0].NFe.Ide.cUF;
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCancelamento;
      infEvento.nSeqEvento := 1;
      infEvento.detEvento.xJust := edCancelamentoMotivo.Text;
      infEvento.chNFe := acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
      infEvento.detEvento.nProt := acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      InfEvento.versaoEvento:='1.0';
    end;
    lblCancelamento.Caption := 'Gerando xml ' + DateTimeToStr(now);
    Try
      ACBrNFe1.EventoNFe.GerarXML;
      ACBrNFe1.EventoNFe.Gerador.SalvarArquivo('C:\home\evento.xml');
    Except
      ShowMessage('Erro para Gravar o XML : ' +
        AcbrNfe1.Configuracoes.Arquivos.PathSalvar);
    end;
    lblCancelamento2.Caption := 'Enviando Evento, lote : ' + idLote;
    Try
      if (ACBrNFe1.EnviarEvento(StrToInt(idLote))) then
      begin
        with ACBrNFe1.WebServices.EnvEvento do
        begin
          if (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <>  135) then
          begin
            raise Exception.CreateFmt(
              'Ocorreu erro para cancelar a NFCe %d ,' + sLineBreak +
              ' Motivo : %s', [
              EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
              EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
            ]);
          end;
        end;
      end
      else begin
        with ACBrNFe1.WebServices.EnvEvento do
        begin
          raise Exception.Create(
            'Ocorreram erros no cancelamento :' + sLineBreak +
            'Ambiente : ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
            'Orgao : ' + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
            'Status : ' + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo : ' + EventoRetorno.xMotivo
          );
        end;
      end;
    Except
      on E:Exception do
         ShowMessage('Erro para enviar NFCe : ' + e.Message);
    end;
    MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
    memoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
    //LoadXML(MemoResp, WBResposta);
    //ShowMessage(IntToStr(ACBrNFe1.WebServices.EnvEvento.cStat));
    //ShowMessage(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
  end;
end;

procedure TfNFCe.BitBtn6Click(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
  ACBrNFe1.NotasFiscais.Clear;
  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := dm.CCustoPadrao; //Buscar de parametro
  sEmpresa.Open;

  edSerieInutiliza.Text := edSerie.Text;
  // gerar nfce
  //carregaAcbr;
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode := veqr200;
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.Salvar   := True;
  ACBrNFe1.Configuracoes.Arquivos.Salvar:= True;
  ACBrNFe1.Configuracoes.Arquivos.SalvarEvento:= True;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
  ACBrNFe1.Configuracoes.WebServices.TimeOut := 35000;
  ACBrNFe1.Configuracoes.Geral.IdCSC := id_tk;
  ACBrNFe1.Configuracoes.Geral.CSC := tk;

  ACBrNFe1.Configuracoes.Geral.SSLLib := libCapicom;
  ACBrNFe1.Configuracoes.WebServices.UF := sEmpresaUF.AsString;
  AcbrNfe1.Configuracoes.Arquivos.PathSalvar := edit1.Text;


  begin
   if (edAno.Text = '') then
   begin
     ShowMessage('Preencha o Ano');
      exit;
   end;
   if (edSerieInutiliza.Text = '') then
   begin
     ShowMessage('Preencha a Serie da NFCe');
      exit;
   end;

   if (edModelo.Text = '') then
   begin
     ShowMessage('Preencha o Modelo da NFCe');
      exit;
   end;
   if (edNumIni.Text = '') then
   begin
     ShowMessage('Preencha o Número Inicial');
      exit;
   end;
   if (edNumFim.Text = '') then
   begin
     ShowMessage('Preencha o Número Final');
      exit;
   end;

   if (edJust.Text = '') then
   begin
     ShowMessage('Preencha a Justificativa');
      exit;
   end;

    ACBrNFe1.WebServices.Inutiliza(RemoveChar(sEmpresaCNPJ_CPF.AsString),
      edJust.Text, StrToInt(edAno.Text), StrToInt(edModelo.Text), StrToInt(edSerieInutiliza.Text),
      StrToInt(edNumIni.Text), StrToInt(edNumFim.Text));
    Memo2.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetWS;
    Memo2.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetornoWS;
    //LoadXML(MemoResp, WBResposta);

    //pgRespostas.ActivePageIndex := 1;

    Memo1.Lines.Append('');
    Memo1.Lines.Append('Inutilização');
    Memo1.Lines.Append('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
    Memo1.Lines.Append('verAplic: ' +ACBrNFe1.WebServices.Inutilizacao.verAplic);
    Memo1.Lines.Append('cStat: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
    Memo1.Lines.Append('xMotivo: '  +ACBrNFe1.WebServices.Inutilizacao.xMotivo);
    Memo1.Lines.Append('cUF: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
    Memo1.Lines.Append('Ano: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
    Memo1.Lines.Append('CNPJ: '      +ACBrNFe1.WebServices.Inutilizacao.CNPJ);
    Memo1.Lines.Append('Modelo: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
    Memo1.Lines.Append('Serie: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
    Memo1.Lines.Append('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
    Memo1.Lines.Append('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
    Memo1.Lines.Append('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
    Memo1.Lines.Append('Protocolo: '      +ACBrNFe1.WebServices.Inutilizacao.Protocolo);
  end;
end;

end.
