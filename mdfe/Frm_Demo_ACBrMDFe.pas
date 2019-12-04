{$I ACBr.inc}

unit Frm_Demo_ACBrMDFe;

interface

uses IniFiles, ShellAPI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OleCtrls, SHDocVw, StdCtrls, Buttons, ExtCtrls,
  pcnConversao, ACBrMDFe, ACBrMDFeDAMDFeClass,
  FMTBcd, DB, SqlExpr, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, dbXpress,
  ACBrBase, ACBrDFe, ACBrMDFeDAMDFeRLClass, pmdfeConversaoMDFe, ACBrMail,
  DBClient, Provider, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  ACBrNFe, ACBrDFeReport;

type
  TfACBrMDFe = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    sbtnLogoMarca: TSpeedButton;
    sbtnPathSalvar: TSpeedButton;
    edtLogoMarca: TEdit;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    rgTipoDAMDFe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    ckVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    TabSheet4: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    btnSalvarConfig: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancelamento: TButton;
    btnCriarEnviar: TButton;
    btnGerarMDFe: TButton;
    btnGerarPDF: TButton;
    btnConsultarRecibo: TButton;
    btnConsultarChave: TButton;
    btnEncerramento: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwMDFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    OpenDialog1: TOpenDialog;
    rgVersaoDF: TRadioGroup;
    btnImprimirEvento: TButton;
    btnEnviarEventoEmail: TButton;
    btnEnviarMDFeEmail: TButton;
    btnGerarPDFEvento: TButton;
    sqlEmitente: TSQLQuery;
    TabSheet11: TTabSheet;
    Label29: TLabel;
    edRntrc: TEdit;
    Label30: TLabel;
    edCIOT: TEdit;
    Label31: TLabel;
    edCINT: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    edTara: TEdit;
    edCapKg: TEdit;
    edCapM3: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    edPlaca: TEdit;
    Label36: TLabel;
    edRNTRCProp: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    edCondutor: TEdit;
    Label39: TLabel;
    edCondutorCPF: TEdit;
    Label40: TLabel;
    edMunicipioDescarga: TEdit;
    Label41: TLabel;
    TabSheet12: TTabSheet;
    Label42: TLabel;
    edNFe1: TEdit;
    rgTipoUnidCarga: TRadioGroup;
    cbTransporte: TComboBox;
    Label43: TLabel;
    Label44: TLabel;
    edIdentUnidTransp: TEdit;
    Label45: TLabel;
    edIdentUnidCarga: TEdit;
    Label48: TLabel;
    edNFe4: TEdit;
    Label49: TLabel;
    edNFe5: TEdit;
    Label50: TLabel;
    edNFe6: TEdit;
    Label51: TLabel;
    edNFe7: TEdit;
    Label52: TLabel;
    edQtdeNF: TEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    edValorTotal: TJvCalcEdit;
    edPesoBruto: TJvCalcEdit;
    TabSheet13: TTabSheet;
    memInfoFisco: TMemo;
    memInfoContribuinte: TMemo;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    edPesoVol1: TJvCalcEdit;
    Label61: TLabel;
    edPesoVol4: TJvCalcEdit;
    Label62: TLabel;
    edPesoVol5: TJvCalcEdit;
    Label63: TLabel;
    edPesoVol6: TJvCalcEdit;
    Label64: TLabel;
    edPesoVol7: TJvCalcEdit;
    GroupBox6: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    edtEmitIE: TEdit;
    edtEmitCNPJ: TEdit;
    Label14: TLabel;
    edtEmitRazao: TEdit;
    Label15: TLabel;
    edtEmitFantasia: TEdit;
    Label24: TLabel;
    Label23: TLabel;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    edtEmitNumero: TEdit;
    edtEmitLogradouro: TEdit;
    Label18: TLabel;
    edtEmitComp: TEdit;
    Label19: TLabel;
    edtEmitBairro: TEdit;
    Label20: TLabel;
    edtEmitCodCidade: TEdit;
    Label21: TLabel;
    edtEmitCidade: TEdit;
    Label22: TLabel;
    edtEmitUF: TEdit;
    cbUnidade: TComboBox;
    Label65: TLabel;
    edUFDescarga: TEdit;
    Label66: TLabel;
    edUFLicVeiculo: TEdit;
    edCodIbgeDescarga: TMaskEdit;
    TabSheet14: TTabSheet;
    GroupBox7: TGroupBox;
    Label67: TLabel;
    edAutorizado1: TEdit;
    Label68: TLabel;
    edAutorizado2: TEdit;
    GroupBox8: TGroupBox;
    Label69: TLabel;
    edPropCNPJ: TEdit;
    Label70: TLabel;
    edPropRntrc: TEdit;
    cbPropTipo: TComboBox;
    Label71: TLabel;
    Label72: TLabel;
    edPropNome: TEdit;
    GroupBox9: TGroupBox;
    Label73: TLabel;
    edPropIE: TEdit;
    Label74: TLabel;
    edPropUF: TEdit;
    cbTipoRodado: TComboBox;
    cbTipoCarroceria: TComboBox;
    Label75: TLabel;
    Label76: TLabel;
    GroupBox10: TGroupBox;
    Label77: TLabel;
    edNumMdfe: TEdit;
    Label78: TLabel;
    dtaMdfe: TJvDatePickerEdit;
    ACBrMail1: TACBrMail;
    TabSheet15: TTabSheet;
    GroupBox11: TGroupBox;
    Label79: TLabel;
    edNFCnpj1: TEdit;
    edNFUF1: TEdit;
    Label80: TLabel;
    edNFNum1: TEdit;
    Label81: TLabel;
    edNFSerie1: TEdit;
    LblNFVl: TLabel;
    edNFPin1: TEdit;
    Label82: TLabel;
    edNFValor1: TJvCalcEdit;
    Label86: TLabel;
    GroupBox12: TGroupBox;
    Label87: TLabel;
    edtUFCarregamento: TEdit;
    Label85: TLabel;
    edtMunCarregaIBGE: TEdit;
    edtMunicipioCarrega: TEdit;
    Label84: TLabel;
    Label83: TLabel;
    edtPathSchemas: TEdit;
    TabSheet16: TTabSheet;
    BitBtn1: TBitBtn;
    GroupBox13: TGroupBox;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    edNFCnpj2: TEdit;
    edNFUF2: TEdit;
    edNFNum2: TEdit;
    edNFSerie2: TEdit;
    edNFPin2: TEdit;
    edNFValor2: TJvCalcEdit;
    GroupBox14: TGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    edNFCnpj3: TEdit;
    edNFUF3: TEdit;
    edNFNum3: TEdit;
    edNFSerie3: TEdit;
    edNFPin3: TEdit;
    edNFValor3: TJvCalcEdit;
    dtNF1: TJvDatePickerEdit;
    dtNF2: TJvDatePickerEdit;
    dtNF3: TJvDatePickerEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    sqlProc: TSQLQuery;
    BitBtn4: TBitBtn;
    sqlProcNM_LOCALIDADE: TStringField;
    sqlProcCD_UF: TStringField;
    sqlProcCD_IBGE: TStringField;
    sqlProcNM_MUNICIPIO: TStringField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsMdfeDocs: TSQLDataSet;
    dspMdfeDocs: TDataSetProvider;
    cdsMdfeDocs: TClientDataSet;
    dsMdfeDocs: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    edValorNFe1: TJvCalcEdit;
    Label98: TLabel;
    OpenDialog2: TOpenDialog;
    rgOrigemNFe: TRadioGroup;
    sqlProcNfe: TSQLQuery;
    cdsMdfeDocsMDFE: TIntegerField;
    cdsMdfeDocsCHAVE_NFE: TStringField;
    cdsMdfeDocsPESO_VOLUME: TFloatField;
    cdsMdfeDocsVALOR_NF: TFloatField;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    GroupBox15: TGroupBox;
    edUFPercuso: TEdit;
    edUFPercuso2: TEdit;
    edUFPercuso3: TEdit;
    edUFPercuso4: TEdit;
    edUFPercuso5: TEdit;
    edUFPercuso6: TEdit;
    edPlacaMDFE: TEdit;
    Label46: TLabel;
    Label47: TLabel;
    edLacreMDFE: TEdit;
    edUnidCargaMDFE: TEdit;
    lblidunid: TLabel;
    Label59: TLabel;
    edLacreCargaMDFE: TEdit;
    Label60: TLabel;
    edMunNfe: TEdit;
    edxMunNfe: TEdit;
    Label99: TLabel;
    cdsMdfeDocsCD_IBGE: TIntegerField;
    cdsMdfeDocsMUNICIPIO: TStringField;
    ACBrNFe1: TACBrNFe;
    ACBrMDFe1: TACBrMDFe;
    sqlMDFEMun: TSQLDataSet;
    dspMun: TDataSetProvider;
    cdsMun: TClientDataSet;
    cdsMunMUNICIPIO: TStringField;
    cdsMunCD_IBGE: TIntegerField;
    cbTipoEmit: TComboBox;
    BitBtn10: TBitBtn;
    cdsProc: TClientDataSet;
    dsProc: TDataSource;
    DataSetProvider1: TDataSetProvider;
    Label106: TLabel;
    cdsMdfeDocsTIPO_DOC: TIntegerField;
    pnCity: TPanel;
    BitBtn11: TBitBtn;
    DBGrid1: TDBGrid;
    edCnpjCpfContratante: TEdit;
    Label107: TLabel;
    Label100: TLabel;
    cbSegResp: TComboBox;
    Label104: TLabel;
    edSegCNPJCPF: TEdit;
    Label101: TLabel;
    Label105: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    edSeguradora: TEdit;
    edSegCnpj: TEdit;
    edApolice: TEdit;
    edAverba: TEdit;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    GroupBox16: TGroupBox;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    edRebocoCint: TEdit;
    edRebocoPlaca: TEdit;
    edRebocoTara: TEdit;
    edRebocoCapM: TEdit;
    edRebocoCapKg: TEdit;
    edRebocoRNTRC: TEdit;
    edRebocoNome: TEdit;
    edRebocoIE: TEdit;
    edRebocoUF: TEdit;
    edRebocoTipoProp: TEdit;
    edRebocoTipoCarroc: TEdit;
    edRebocoUFVeic: TEdit;
    edRebocoCPF: TEdit;
    Label114: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    edRebocoCint2: TEdit;
    edRebocoPlaca2: TEdit;
    edRebocoTara2: TEdit;
    edRebocoCapM2: TEdit;
    edRebocoCapKg2: TEdit;
    edRebocoCPF2: TEdit;
    edRebocoRNTRC2: TEdit;
    edRebocoNome2: TEdit;
    edRebocoIE2: TEdit;
    edRebocoUF2: TEdit;
    edRebocoTipoProp2: TEdit;
    edRebocoTipoCarroc2: TEdit;
    edRebocoUFVeic2: TEdit;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure lblColaboradorClick(Sender: TObject);
    procedure lblPatrocinadorClick(Sender: TObject);
    procedure lblDoar1Click(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnCriarEnviarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnCancelamentoClick(Sender: TObject);
    procedure btnEncerramentoClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure btnGerarMDFeClick(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure ACBrMDFe1StatusChange(Sender: TObject);
    procedure ACBrMDFe1GerarLog(const Mensagem: String);
    procedure btnImprimirEventoClick(Sender: TObject);
    procedure btnEnviarEventoEmailClick(Sender: TObject);
    procedure btnEnviarMDFeEmailClick(Sender: TObject);
    procedure btnGerarPDFEventoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure cbSegRespChange(Sender: TObject);
    procedure cbTransporteChange(Sender: TObject);
    {
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    }
  private
    { Private declarations }
    td: TTransactionDesc;
    codMdfe: Integer;
    codEmitente: integer;
    codigoUfEmitenteMDFe: Integer;
    ufDestinatarioMDFe: String;
    chave_mdfe: String;
    function RemoveChar(Const Texto:String):String;
    function editParaSql(tipo: String;conteudoEdit: String): String;
    procedure gravarMDFe;
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    procedure ConfiguraComponente;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure GerarMDFe(NumMDFe : String);
    procedure PreencherCampos;
    procedure BuscaCidade;
  public
    modoAbertura: String;
    { Public declarations }
  end;

var
  fACBrMDFe: TfACBrMDFe;

implementation

uses
 FileCtrl, DateUtils,
 ufrmStatus,
 ACBrMDFeManifestos, udm, pmdfeMDFe, pcnNFe, ufMunicipios;

const
  SELDIRHELP = 1000;

{$R *.dfm}

(*
procedure TForm1.lblMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TForm1.lblMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;
*)
procedure TfACBrMDFe.GravarConfiguracao;
var
 IniFile    : String;
 Ini        : TIniFile;
 StreamMemo : TMemoryStream;
begin
 IniFile := ChangeFileExt( Application.ExeName, '.ini');

 Ini := TIniFile.Create( IniFile );
 try
  Ini.WriteString( 'Certificado','Caminho' , edtCaminho.Text);
  Ini.WriteString( 'Certificado','Senha'   , edtSenha.Text);
  Ini.WriteString( 'Certificado','NumSerie', edtNumSerie.Text);

  Ini.WriteInteger( 'Geral','DAMDFe'      , rgTipoDAMDFe.ItemIndex);
  Ini.WriteInteger( 'Geral','FormaEmissao', rgFormaEmissao.ItemIndex);
  Ini.WriteString( 'Geral','LogoMarca'    , edtLogoMarca.Text);
  Ini.WriteBool(   'Geral','Salvar'       , ckSalvar.Checked);
  Ini.WriteString( 'Geral','PathSalvar'   , edtPathLogs.Text);
  Ini.WriteString( 'Geral','PathSchema'   , edtPathSchemas.Text);
  Ini.WriteInteger( 'Geral','VersaoDF'    , rgVersaoDF.ItemIndex);

  Ini.WriteString( 'WebService','UF'        , cbUF.Text);
  Ini.WriteInteger( 'WebService','Ambiente' , rgTipoAmb.ItemIndex);
  Ini.WriteBool(   'WebService','Visualizar', ckVisualizar.Checked);

  Ini.WriteString( 'Proxy','Host' , edtProxyHost.Text);
  Ini.WriteString( 'Proxy','Porta', edtProxyPorta.Text);
  Ini.WriteString( 'Proxy','User' , edtProxyUser.Text);
  Ini.WriteString( 'Proxy','Pass' , edtProxySenha.Text);

  Ini.WriteString( 'Emitente','CNPJ'       , edtEmitCNPJ.Text);
  Ini.WriteString( 'Emitente','IE'         , edtEmitIE.Text);
  Ini.WriteString( 'Emitente','RazaoSocial', edtEmitRazao.Text);
  Ini.WriteString( 'Emitente','Fantasia'   , edtEmitFantasia.Text);
  Ini.WriteString( 'Emitente','Fone'       , edtEmitFone.Text);
  Ini.WriteString( 'Emitente','CEP'        , edtEmitCEP.Text);
  Ini.WriteString( 'Emitente','Logradouro' , edtEmitLogradouro.Text);
  Ini.WriteString( 'Emitente','Numero'     , edtEmitNumero.Text);
  Ini.WriteString( 'Emitente','Complemento', edtEmitComp.Text);
  Ini.WriteString( 'Emitente','Bairro'     , edtEmitBairro.Text);
  Ini.WriteString( 'Emitente','CodCidade'  , edtEmitCodCidade.Text);
  Ini.WriteString( 'Emitente','Cidade'     , edtEmitCidade.Text);
  Ini.WriteString( 'Emitente','UF'         , edtEmitUF.Text);

  Ini.WriteString( 'Email','Host'   , edtSmtpHost.Text);
  Ini.WriteString( 'Email','Port'   , edtSmtpPort.Text);
  Ini.WriteString( 'Email','User'   , edtSmtpUser.Text);
  Ini.WriteString( 'Email','Pass'   , edtSmtpPass.Text);
  Ini.WriteString( 'Email','Assunto', edtEmailAssunto.Text);
  Ini.WriteBool(   'Email','SSL'    , cbEmailSSL.Checked );

  StreamMemo := TMemoryStream.Create;
  mmEmailMsg.Lines.SaveToStream(StreamMemo);
  StreamMemo.Seek(0,soFromBeginning);
  Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo);

  StreamMemo.Free;
 finally
  Ini.Free;
 end;
end;

procedure TfACBrMDFe.LerConfiguracao;
var
 IniFile    : String;
 Ini        : TIniFile;
 StreamMemo : TMemoryStream;
begin
 IniFile := ChangeFileExt( Application.ExeName, '.ini');

 Ini := TIniFile.Create( IniFile );
 try
    {$IFDEF ACBrMDFeOpenSSL}
     edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'');
     edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'');
     edtNumSerie.Visible := False;
     Label25.Visible     := False;
     sbtnGetCert.Visible := False;
    {$ELSE}
     edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','');
     Label1.Caption := 'Informe o número de série do certificado'#13+
                       'Disponível no Internet Explorer no menu'#13+
                       'Ferramentas - Opções da Internet - Conteúdo '#13+
                       'Certificados - Exibir - Detalhes - '#13+
                       'Número do certificado';
     Label2.Visible     := False;
     edtCaminho.Visible := False;
     edtSenha.Visible   := False;
     sbtnCaminhoCert.Visible := False;
    {$ENDIF}

    rgFormaEmissao.ItemIndex := Ini.ReadInteger('Geral','FormaEmissao', 0);
    ckSalvar.Checked         := Ini.ReadBool(   'Geral','Salvar'      , True);
    edtPathLogs.Text         := Ini.ReadString( 'Geral','PathSalvar' , '');
    edtPathSchemas.Text      := Ini.ReadString( 'Geral','PathSchema' , '');

    cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString('WebService','UF', 'SP'));
    rgTipoAmb.ItemIndex  := Ini.ReadInteger('WebService','Ambiente'  , 0);
    ckVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar', False);

    edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host' , '');
    edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta', '');
    edtProxyUser.Text  := Ini.ReadString( 'Proxy','User' , '');
    edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass' , '');

    rgTipoDAMDFe.ItemIndex := Ini.ReadInteger( 'Geral','DAMDFe'  , 0);
    edtLogoMarca.Text      := Ini.ReadString( 'Geral','LogoMarca', '');

    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo);
    mmEmailMsg.Lines.LoadFromStream(StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;
  sqlEmitente.SQL.Clear;
  sqlEmitente.SQL.Add('SELECT EMP.*, UF.CODIGO CODIGO_UF FROM EMPRESA EMP, ESTADO UF ' +
    ' WHERE UF.SIGLA = EMP.UF');
  sqlEmitente.Open;

  codEmitente            := 1;
  edtEmitCNPJ.Text       := sqlEmitente.fieldByName('CNPJ_CPF').AsString;
  edtEmitIE.Text         := Copy(sqlEmitente.fieldByName('IE_RG').AsString,1,15);
  edtEmitRazao.Text      := Copy(sqlEmitente.fieldByName('RAZAO').AsString,1,60);
  edtEmitFantasia.Text   := Copy(sqlEmitente.fieldByName('EMPRESA').AsString,1,60);
  edtEmitFone.Text       := sqlEmitente.fieldByName('FONE').AsString;
  edtEmitCEP.Text        := sqlEmitente.fieldByName('CEP').AsString;
  edtEmitLogradouro.Text := sqlEmitente.fieldByName('ENDERECO').AsString;
  edtEmitNumero.Text     := sqlEmitente.fieldByName('NUMERO').AsString;
  edtEmitComp.Text       := '';
  edtEmitBairro.Text     := sqlEmitente.fieldByName('BAIRRO').AsString;
  edtEmitCodCidade.Text  := sqlEmitente.fieldByName('CD_IBGE').AsString;
  edtEmitCidade.Text     := sqlEmitente.fieldByName('CIDADE').AsString;
  edtEmitUF.Text         := sqlEmitente.fieldByName('UF').AsString;
  codigoUfEmitenteMDFe   := sqlEmitente.fieldByName('CODIGO_UF').AsInteger;

  edtSmtpHost.Text      := sqlEmitente.fieldByName('SMTP').AsString;
  edtSmtpPort.Text      := sqlEmitente.fieldByName('PORTA').AsString;
  edtSmtpUser.Text      := sqlEmitente.fieldByName('E_MAIL').AsString;
  edtSmtpPass.Text      := sqlEmitente.fieldByName('SENHA').AsString;
  edtEmailAssunto.Text  := sqlEmitente.fieldByName('OUTRAS_INFO').AsString;
  cbEmailSSL.Checked    := cbEmailSSL.Checked;

  sqlEmitente.Close;

  ConfiguraComponente;
end;

procedure TfACBrMDFe.ConfiguraComponente;
var
 Ok: Boolean;
 PathMensal: String;
begin
 // Configurações -> Certificados
 {$IFDEF ACBrMDFeOpenSSL}
   ACBrMDFe1.Configuracoes.Certificados.Certificado := edtCaminho.Text;
   ACBrMDFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
 {$ELSE}
   ACBrMDFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
 {$ENDIF}

 // Configurações -> Arquivos
 ACBrMDFe1.Configuracoes.Arquivos.AdicionarLiteral := True;
 ACBrMDFe1.Configuracoes.Arquivos.EmissaoPathMDFe  := True;
 //ACBrMDFe1.Configuracoes.Arquivos.PastaMensal      := True;
 ACBrMDFe1.Configuracoes.Arquivos.PathMDFe         := Trim(edtPathLogs.Text);
 ACBrMDFe1.Configuracoes.Arquivos.Salvar           := True;

 PathMensal := ACBrMDFe1.Configuracoes.Arquivos.GetPathMDFe(0);

 // Configurações -> Geral
 ACBrMDFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));
 //ACBrMDFe1.Configuracoes.Geral.PathSalvar   := PathMensal;
 ACBrMDFe1.Configuracoes.Arquivos.PathSalvar :=  Trim(edtPathLogs.Text);
 ACBrMDFe1.Configuracoes.Geral.Salvar       := ckSalvar.Checked;
 case rgVersaoDF.ItemIndex of
  0: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve100;
  //1: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve100a;
  1: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve300;
 end;
 // Configurações -> WebServices
 ACBrMDFe1.Configuracoes.WebServices.AguardarConsultaRet      := 0;
 ACBrMDFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
 ACBrMDFe1.Configuracoes.WebServices.Ambiente                 := StrToTpAmb(Ok, IntToStr(rgTipoAmb.ItemIndex+1));
 ACBrMDFe1.Configuracoes.WebServices.IntervaloTentativas      := 0;
 ACBrMDFe1.Configuracoes.WebServices.Tentativas               := 5;
 ACBrMDFe1.Configuracoes.WebServices.UF                       := cbUF.Text;
 ACBrMDFe1.Configuracoes.WebServices.Visualizar               := ckVisualizar.Checked;
 ACBrMDFe1.Configuracoes.WebServices.ProxyHost                := edtProxyHost.Text;
 ACBrMDFe1.Configuracoes.WebServices.ProxyPort                := edtProxyPorta.Text;
 ACBrMDFe1.Configuracoes.WebServices.ProxyUser                := edtProxyUser.Text;
 ACBrMDFe1.Configuracoes.WebServices.ProxyPass                := edtProxySenha.Text;

 // DAMDFe
 if ACBrMDFe1.DAMDFe <> nil then
  begin
   ACBrMDFe1.DAMDFe.PathPDF           := PathMensal;
   //ACBrMDFe1.DAMDFe.ExpandirLogoMarca := False;
   //ACBrMDFe1.DAMDFe.ImprimirDescPorc  := False;
   ACBrMDFe1.DAMDFe.Logo              := edtLogoMarca.Text;
   //ACBrMDFe1.DAMDFe.MostrarPreview    := True;
   ACBrMDFe1.DAMDFe.TipoDAMDFe        := StrToTpImp(OK, IntToStr(rgTipoDaMDFe.ItemIndex+1));
  end;

end;

procedure TfACBrMDFe.LoadXML(MyMemo: TMemo;
  MyWebBrowser: TWebBrowser);
begin
 MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
 MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

procedure TfACBrMDFe.GerarMDFe(NumMDFe: String);
var qnf: integer;
  cod_mun: integer;
  tot_nf: integer;
  tot_cte: integer;
begin
  qnf := 0;
  tot_nf := 0;
  tot_cte := 0;
  
  case rgVersaoDF.ItemIndex of
    0: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve100;
    1: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve300;
  end;
  if (edtEmitCodCidade.Text = '') then
  begin
    MessageDlg('Informe o Código do IBGE do múnicipio do Emitente', mtWarning, [mbOK], 0);
    exit;
  end;
  with ACBrMDFe1.Manifestos.Add.MDFe do
  begin
    //
    // Dados de Identificação do MDF-e
    //
    Ide.cUF := codigoUfEmitenteMDFe;

    // TpcnTipoAmbiente = (taProducao, taHomologacao);
    case rgTipoAmb.ItemIndex of
      0: Ide.tpAmb := taProducao;
      1: Ide.tpAmb := taHomologacao;
    end;

    // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
    //teTransportadora, teTranspCargaPropria,
    //                 teTranspCTeGlobalizado
    if (cbTipoEmit.ItemIndex = 0) then
      Ide.tpEmit  := teTranspCargaPropria;
    if (cbTipoEmit.ItemIndex = 1) then
    begin
      Ide.tpEmit  := teTransportadora;
      {
      With Seg.Add do
      begin
         respSeg := rsEmitente;
         xSeg    := edSeguradora.Text;
         nApol   := edApolice.Text;
         aver.Add.nAver := edAverba.Text;
         if edSegCNPJCPF.Text <> '' then
           CNPJCPF := edSegCNPJCPF.Text;
         if edSegCNPJ.Text <> '' then
           CNPJ := edSegCNPJ.Text;
      end;}      
    end;


    Ide.modelo  := '58';
    Ide.serie   := 1;
    Ide.nMDF    := StrToIntDef(NumMDFe, 0);
    Ide.cMDF    := 1;  // Código Aleatório
    // TMDFeModal = ( moRodoviario, moAereo, moAquaviario, moFerroviario );
    Ide.modal   := moRodoviario;
    Ide.dhEmi   := Now;
    // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
    Ide.tpEmis  := teNormal;
    // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
    Ide.procEmi := peAplicativoContribuinte;
    Ide.verProc := '1.0';
    Ide.UFIni   := edtUFCarregamento.Text;
    Ide.UFFim   := edUFDescarga.Text;
    
    with Ide.infMunCarrega.Add do
    begin
      if (edtMunCarregaIBGE.Text = '') then
      begin
        MessageDlg('Preencha o municipio de Carregamento.', mtWarning, [mbOK], 0);
        exit;
      end;
      cMunCarrega := StrToInt(RemoveChar(edtMunCarregaIBGE.Text));//edtEmitCodCidade.Text));
      xMunCarrega := edtMunicipioCarrega.Text;//edtEmitCidade.Text;
    end;
    if (edUFPercuso.Text <> '') then
    begin
      with Ide.infPercurso.Add do
      begin
        UFPer := edUFPercuso.Text;
      end;
      if (edUFPercuso2.Text <> '') then
        with Ide.infPercurso.Add do
        begin
          UFPer := edUFPercuso2.Text;
        end;
      if (edUFPercuso3.Text <> '') then
        with Ide.infPercurso.Add do
        begin
          UFPer := edUFPercuso3.Text;
        end;
      if (edUFPercuso4.Text <> '') then
        with Ide.infPercurso.Add do
        begin
          UFPer := edUFPercuso4.Text;
        end;
      if (edUFPercuso5.Text <> '') then
        with Ide.infPercurso.Add do
        begin
          UFPer := edUFPercuso5.Text;
        end;
      if (edUFPercuso6.Text <> '') then
        with Ide.infPercurso.Add do
        begin
          UFPer := edUFPercuso6.Text;
        end;
    end;
    //
    // Dados do Emitente
    //

    Emit.CNPJCPF  := edtEmitCNPJ.Text;
    Emit.IE    := edtEmitIE.Text;
    Emit.xNome := edtEmitRazao.Text;
    Emit.xFant := edtEmitFantasia.Text;

    Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
    Emit.EnderEmit.nro     := edtEmitNumero.Text;
    Emit.EnderEmit.xCpl    := edtEmitComp.Text;
    Emit.EnderEmit.xBairro := edtEmitBairro.Text;
    try
      Emit.EnderEmit.cMun    := StrToInt(RemoveChar(edtEmitCodCidade.Text));
    except
      MessageDlg('Faltando Cód. Cidade Emitente.', mtWarning, [mbOK], 0);
      exit;
    end;
    Emit.EnderEmit.xMun    := edtEmitCidade.Text;
    Emit.EnderEmit.CEP     := StrToIntDef(edtEmitCEP.Text, 0);
    Emit.EnderEmit.UF      := edtEmitUF.Text;
    Emit.EnderEmit.fone    := edtEmitFone.Text;
    Emit.enderEmit.email   := edtSmtpUser.Text;

    rodo.RNTRC := edRntrc.Text;
    rodo.CIOT  := edCIOT.Text;
    if (cbTipoEmit.ItemIndex = 0) then
    begin
      rodo.infANTT.infContratante.Add.CNPJCPF := edtEmitCNPJ.Text;
    end
    else begin
      rodo.infANTT.infContratante.Add.CNPJCPF := edCnpjCpfContratante.Text;
    end;

    rodo.veicTracao.cInt  := edCINT.Text;
    rodo.veicTracao.placa := edPlaca.Text;
    try
      rodo.veicTracao.tara  := StrToInt(edTara.Text);
    except
      MessageDlg('Faltando Tara.', mtWarning, [mbOK], 0);
      Exit;
    end;
    try
      rodo.veicTracao.capKG := StrToInt(edCapKg.Text);
    except
      MessageDlg('Faltando Capacidade Carga kg.', mtWarning, [mbOK], 0);
      Exit;
    end;
    try
      rodo.veicTracao.capM3 := strToInt(edCapM3.Text);
    except
      MessageDlg('Faltando Capacidade m³.', mtWarning, [mbOK], 0);
      Exit;
    end;

    rodo.veicTracao.tpRod := trNaoAplicavel;
    case cbTipoRodado.ItemIndex of //trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros
      0: rodo.veicTracao.tpRod := trNaoAplicavel;
      1: rodo.veicTracao.tpRod := trTruck;
      2: rodo.veicTracao.tpRod := trToco;
      3: rodo.veicTracao.tpRod := trCavaloMecanico;
      4: rodo.veicTracao.tpRod := trVAN;
      5: rodo.veicTracao.tpRod := trUtilitario;
      6: rodo.veicTracao.tpRod := trOutros;
    end;

    rodo.veicTracao.tpCar := tcNaoAplicavel;
    case cbTipoCarroceria.ItemIndex of // tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider
      0: rodo.veicTracao.tpCar := tcNaoAplicavel;
      1: rodo.veicTracao.tpCar := tcAberta;
      2: rodo.veicTracao.tpCar := tcFechada;
      3: rodo.veicTracao.tpCar := tcGraneleira;
      4: rodo.veicTracao.tpCar := tcPortaContainer;
      5: rodo.veicTracao.tpCar := tcSider;
    end;

    rodo.veicTracao.UF    := edUFLicVeiculo.Text;

    with rodo.veicTracao.condutor.Add do
    begin
      xNome := edCondutor.Text;
      CPF   := edCondutorCPF.Text;
    end;

    if (cbTransporte.ItemIndex = 1) then
    begin
      with rodo.veicReboque.Add do
      begin
        cInt  := edRebocoCint.Text;
        placa := edRebocoPlaca.Text;
        tara  := StrToInt(edRebocoTara.Text);
        capKG := StrToInt(edRebocoCapKg.Text);
        capM3 := StrToInt(edRebocoCapM.Text);
        RENAVAM := edRebocoRNTRC.Text;
        //RNTRC := edReboco ;
      end;
      if (edRebocoCint2.Text <> '') then
      begin
        with rodo.veicReboque.Add do
        begin
          cInt  := edRebocoCint2.Text;
          placa := edRebocoPlaca2.Text;
          tara  := StrToInt(edRebocoTara2.Text);
          capKG := StrToInt(edRebocoCapKg2.Text);
          capM3 := StrToInt(edRebocoCapM2.Text);
          RENAVAM := edRebocoRNTRC2.Text;
         //RNTRC := edReboco ;
        end;
      end;
    end;
    {with rodo.valePed.disp.Add do
    begin
      CNPJForn := '12345678000199';
      CNPJPg   := '21543876000188';
      nCompra  := '789';
    end;
    }

    if (edRntrc.Text <> '') then
      rodo.infANTT.RNTRC := edRntrc.Text;

    //if (edCIOT.Text <> '') then
    //  rodo.infANTT.infCIOT.

    with infDoc do
    begin
      if (cdsMun.Active) then
        cdsMun.Close;
      cdsMun.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
      cdsMun.Open;
      if (cdsMun.IsEmpty) then
      begin
        with infMunDescarga.Add do
        begin
          try
            cMunDescarga := StrToInt(RemoveChar(edCodIbgeDescarga.Text));
          except
            MessageDlg('Faltando Cód. Cidade Descarga.', mtWarning, [mbOK], 0);
            Exit;
          end;
            xMunDescarga := edMunicipioDescarga.Text;
      if (edNFCnpj1.Text <> '') then
      begin
        qnf := qnf + 1;
        with infNF.add do
        begin
          CNPJ := edNFCnpj1.Text;
          UF := edNFUF1.Text;
          dEmi := dtNF1.Date;
          Try
            nNF := StrToInt(edNFNum1.Text);
            serie := StrToInt(edNFSerie1.Text);
          except
            MessageDlg('Número e Série da Nota precisa ser Números.', mtWarning, [mbOK], 0);
            exit;
          end;
          vNF := edNFValor1.Value;
          if (edNFPin1.Text <> '') then
          begin
            Try
              PIN := StrToInt(edNFPin1.Text);
            except
              MessageDlg('PIN precisa ser Números.', mtWarning, [mbOK], 0);
              exit;
            end;
          end;
          //infNF.Add.infUnidTransp
        end;
      end;
      if (edNFCnpj2.Text <> '') then
      begin
        qnf := qnf + 1;
        with infNF.add do
        begin
          CNPJ := edNFCnpj2.Text;
          UF := edNFUF2.Text;
          dEmi := dtNF2.Date;
          Try
            nNF := StrToInt(edNFNum2.Text);
            serie := StrToInt(edNFSerie2.Text);
          except
            MessageDlg('Número e Série da Nota precisa ser Números.', mtWarning, [mbOK], 0);
            exit;
          end;
          vNF := edNFValor2.Value;
          if (edNFPin2.Text <> '') then
          begin
            Try
              PIN := StrToInt(edNFPin2.Text);
            except
              MessageDlg('PIN precisa ser Números.', mtWarning, [mbOK], 0);
              exit;
            end;
          end;
          //infNF.Add.infUnidTransp
        end;
      end;
      if (edNFCnpj3.Text <> '') then
      begin
        qnf := qnf + 1;
        with infNF.add do
        begin
          CNPJ := edNFCnpj3.Text;
          UF := edNFUF3.Text;
          dEmi := dtNF3.Date;
          Try
            nNF := StrToInt(edNFNum3.Text);
            serie := StrToInt(edNFSerie3.Text);
          except
            MessageDlg('Número e Série da Nota precisa ser Números.', mtWarning, [mbOK], 0);
            exit;
          end;
          vNF := edNFValor3.Value;
          if (edNFPin3.Text <> '') then
          begin
            Try
              PIN := StrToInt(edNFPin3.Text);
            except
              MessageDlg('PIN precisa ser Números.', mtWarning, [mbOK], 0);
              exit;
            end;
          end;
          //infNF.Add.infUnidTransp
        end;
      end;
      end;
      end; // nao tem cdsMdfeDocs
      cod_mun := 0;
      while not cdsMun.Eof do
      begin
        with infMunDescarga.Add do
        begin
          cMunDescarga := cdsMunCD_IBGE.AsInteger;
          xMunDescarga := cdsMunMUNICIPIO.AsString;
          if (cdsMdfeDocs.Active) then
            cdsMdfeDocs.Close;
          cdsMdfeDocs.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
          cdsMdfeDocs.Params[1].AsInteger := cdsMunCD_IBGE.AsInteger;
          cdsMdfeDocs.Open;
          while not cdsMdfeDocs.Eof do
          begin
            if (cdsMdfeDocsTIPO_DOC.AsInteger = 2) then
            begin
              if (cbTipoEmit.ItemIndex = 0) then
                 MessageDlg('O Emitente não é Transportadora, CTe nao irá aparecer no MDFe.', mtWarning, [mbOK], 0);
              tot_cte := tot_cte + 1;
              with infCTe.Add do
              begin
                chCTe := cdsMdfeDocsCHAVE_NFE.AsString;

                with infUnidTransp.Add do
                begin
                  tpUnidTransp := utRodoTracao;
                  idUnidTransp := edPlaca.Text;
                  {
                  with lacUnidTransp.Add do
                  begin
                    nLacre := edLacreMdfe.Text;
                  end; }
                  with infUnidCarga.Add do
                  begin
                    // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
                    case rgTipoUnidCarga.ItemIndex of
                      0: tpUnidCarga := ucContainer;
                      1: tpUnidCarga := ucULD;
                      2: tpUnidCarga := ucPallet;
                      3: tpUnidCarga := ucOutros;
                    end;
                    idUnidCarga  := edIdentUnidCarga.Text;
                    qtdRat := 1.0;
                  end;
                  //idUnidCarga
                  if (edLacreCargaMDFE.Text <> '') then
                  begin
                    {
                    with lacUnidCarga.Add do
                    begin
                       nLacre := '123';
                    end;}
                    with lacres.Add do
                    begin
                      nLacre := edLacreCargaMDFE.Text;
                    end;
                  end;
                  qtdRat := 1.0;
                end;

              end;
            end;
            if (cdsMdfeDocsTIPO_DOC.AsInteger = 0) then
            begin
              tot_nf := tot_nf + 1;
              with infNFe.Add do
              begin
                chNFe := cdsMdfeDocsCHAVE_NFE.AsString;
                // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)
                with infUnidTransp.Add do
                begin
                  //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
                  case cbTransporte.ItemIndex of
                    0 : tpUnidTransp := utRodoTracao;
                    1 : tpUnidTransp := utRodoReboque;
                    2 : tpUnidTransp := utNavio;
                    3 : tpUnidTransp := utBalsa;
                    4 : tpUnidTransp := utAeronave;
                    5 : tpUnidTransp := utVagao;
                    6 : tpUnidTransp := utOutros;
                  end;
                  idUnidTransp := edPlaca.Text;
                  {with lacUnidTransp.Add do
                  begin
                    nLacre := '123';
                  end;}
                  // Informações das Unidades de carga (Containeres/ULD/Outros)
                  with infUnidCarga.Add do
                  begin
                    // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
                    case rgTipoUnidCarga.ItemIndex of
                      0: tpUnidCarga := ucContainer;
                      1: tpUnidCarga := ucULD;
                      2: tpUnidCarga := ucPallet;
                      3: tpUnidCarga := ucOutros;
                    end;
                    idUnidCarga := edIdentUnidCarga.Text;
                    {with lacUnidCarga.Add do
                    begin
                       nLacre := '123';
                    end;}
                    qtdRat := 1.0;
                  end;
                  qtdRat := 1.0;
                end;
              end; // fim do with NFe1

            end;
            cdsMdfeDocs.Next;
          end;// fim while mdfeDocs
        end; // fim with municipio
        cdsMun.Next;
      end;
      if (edSeguradora.Text <> '') then
      begin
        with seg.Add do
        begin
          if cbSegResp.ItemIndex = 0 then
            respSeg := rsEmitente
          else
            respSeg := rsTomadorServico;
          xSeg := edSeguradora.Text;
          CNPJ := edSegCnpj.Text;
          if edSegCNPJCPF.Text <> '' then
            CNPJCPF := edSegCNPJCPF.Text;
          nApol := edApolice.Text;
          With aver.Add do
          begin
            nAver := edAverba.Text;
          end;
        end;
      end;
      {
      if (edNFe2.Text <> '') then
      begin
        with infNFe.Add do
        begin
          chNFe := edNFe2.Text;

          // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)

          with infUnidTransp.Add do
          begin
            //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
            case cbTransporte.ItemIndex of
              0 : tpUnidTransp := utRodoTracao;
              1 : tpUnidTransp := utRodoReboque;
              2 : tpUnidTransp := utNavio;
              3 : tpUnidTransp := utBalsa;
              4 : tpUnidTransp := utAeronave;
              5 : tpUnidTransp := utVagao;
              6 : tpUnidTransp := utOutros;
            end;
            idUnidTransp := edIdentUnidTransp.Text;
            //with lacUnidTransp.Add do
            //begin
            //  nLacre := '123';
            //end;
            // Informações das Unidades de carga (Containeres/ULD/Outros)
            with infUnidCarga.Add do
            begin
              // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
              case rgTipoUnidCarga.ItemIndex of
                0: tpUnidCarga := ucContainer;
                1: tpUnidCarga := ucULD;
                2: tpUnidCarga := ucPallet;
                3: tpUnidCarga := ucOutros;
              end;
              idUnidCarga := edIdentUnidCarga.Text;
              //with lacUnidCarga.Add do
              //begin
              //  nLacre := '123';
              //end;
              qtdRat := 1.0;
            end;
            qtdRat := 1.0;
          end;
        end; // fim do with NFe2
      end;

      if (edNFe3.Text <> '') then
      begin
        with infNFe.Add do
        begin
          chNFe := edNFe3.Text;

          // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)

          with infUnidTransp.Add do
          begin
            //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
            case cbTransporte.ItemIndex of
              0 : tpUnidTransp := utRodoTracao;
              1 : tpUnidTransp := utRodoReboque;
              2 : tpUnidTransp := utNavio;
              3 : tpUnidTransp := utBalsa;
              4 : tpUnidTransp := utAeronave;
              5 : tpUnidTransp := utVagao;
              6 : tpUnidTransp := utOutros;
            end;
            idUnidTransp := edIdentUnidTransp.Text;
            // Informações das Unidades de carga (Containeres/ULD/Outros)
            with infUnidCarga.Add do
             begin
              // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
              case rgTipoUnidCarga.ItemIndex of
                0: tpUnidCarga := ucContainer;
                1: tpUnidCarga := ucULD;
                2: tpUnidCarga := ucPallet;
                3: tpUnidCarga := ucOutros;
              end;
              idUnidCarga := edIdentUnidCarga.Text;
              qtdRat := 1.0;
             end;
            qtdRat := 1.0;
          end;
        end; // fim do with NFe3
      end;

      if (edNFe4.Text <> '') then
      begin
        with infNFe.Add do
        begin
          chNFe := edNFe4.Text;
          // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)

          with infUnidTransp.Add do
          begin
            //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
            case cbTransporte.ItemIndex of
              0 : tpUnidTransp := utRodoTracao;
              1 : tpUnidTransp := utRodoReboque;
              2 : tpUnidTransp := utNavio;
              3 : tpUnidTransp := utBalsa;
              4 : tpUnidTransp := utAeronave;
              5 : tpUnidTransp := utVagao;
              6 : tpUnidTransp := utOutros;
            end;
            idUnidTransp := edIdentUnidTransp.Text;
            // Informações das Unidades de carga (Containeres/ULD/Outros)
            with infUnidCarga.Add do
            begin
              // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
              case rgTipoUnidCarga.ItemIndex of
                0: tpUnidCarga := ucContainer;
                1: tpUnidCarga := ucULD;
                2: tpUnidCarga := ucPallet;
                3: tpUnidCarga := ucOutros;
              end;
              idUnidCarga := edIdentUnidCarga.Text;
              qtdRat := 1.0;
            end;
            qtdRat := 1.0;
          end;
        end; // fim do with NFe4
      end;

      if (edNFe5.Text <> '') then
      begin
        with infNFe.Add do
        begin
          chNFe := edNFe5.Text;
          // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)

          with infUnidTransp.Add do
          begin
            //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
            case cbTransporte.ItemIndex of
              0 : tpUnidTransp := utRodoTracao;
              1 : tpUnidTransp := utRodoReboque;
              2 : tpUnidTransp := utNavio;
              3 : tpUnidTransp := utBalsa;
              4 : tpUnidTransp := utAeronave;
              5 : tpUnidTransp := utVagao;
              6 : tpUnidTransp := utOutros;
            end;
            idUnidTransp := edIdentUnidTransp.Text;
            // Informações das Unidades de carga (Containeres/ULD/Outros)
            with infUnidCarga.Add do
             begin
              // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
              case rgTipoUnidCarga.ItemIndex of
                0: tpUnidCarga := ucContainer;
                1: tpUnidCarga := ucULD;
                2: tpUnidCarga := ucPallet;
                3: tpUnidCarga := ucOutros;
              end;
              idUnidCarga := edIdentUnidCarga.Text;
              qtdRat := 1.0;
             end;
            qtdRat := 1.0;
          end;
        end; // fim do with NFe5
      end;

      if (edNFe6.Text <> '') then
      begin
        with infNFe.Add do
        begin
          chNFe := edNFe6.Text;

          // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)

          with infUnidTransp.Add do
          begin
            //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
            case cbTransporte.ItemIndex of
              0 : tpUnidTransp := utRodoTracao;
              1 : tpUnidTransp := utRodoReboque;
              2 : tpUnidTransp := utNavio;
              3 : tpUnidTransp := utBalsa;
              4 : tpUnidTransp := utAeronave;
              5 : tpUnidTransp := utVagao;
              6 : tpUnidTransp := utOutros;
            end;
            idUnidTransp := edIdentUnidTransp.Text;
            // Informações das Unidades de carga (Containeres/ULD/Outros)
            with infUnidCarga.Add do
            begin
              // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
              case rgTipoUnidCarga.ItemIndex of
                0: tpUnidCarga := ucContainer;
                1: tpUnidCarga := ucULD;
                2: tpUnidCarga := ucPallet;
                3: tpUnidCarga := ucOutros;
              end;
              idUnidCarga := edIdentUnidCarga.Text;
              qtdRat := 1.0;
            end;
            qtdRat := 1.0;
          end;
        end; // fim do with NFe6
      end;

      if (edNFe7.Text <> '') then
      begin
        with infNFe.Add do
        begin
          chNFe := edNFe7.Text;

          // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)

          with infUnidTransp.Add do
          begin
            //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
            case cbTransporte.ItemIndex of
              0 : tpUnidTransp := utRodoTracao;
              1 : tpUnidTransp := utRodoReboque;
              2 : tpUnidTransp := utNavio;
              3 : tpUnidTransp := utBalsa;
              4 : tpUnidTransp := utAeronave;
              5 : tpUnidTransp := utVagao;
              6 : tpUnidTransp := utOutros;
            end;
            idUnidTransp := edIdentUnidTransp.Text;
            // Informações das Unidades de carga (Containeres/ULD/Outros)
            with infUnidCarga.Add do
            begin
              // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
              case rgTipoUnidCarga.ItemIndex of
                0: tpUnidCarga := ucContainer;
                1: tpUnidCarga := ucULD;
                2: tpUnidCarga := ucPallet;
                3: tpUnidCarga := ucOutros;
              end;
              idUnidCarga := edIdentUnidCarga.Text;
            end;
            qtdRat := 1.0;
          end;
        end; // fim do with NFe7
      end;}
    end;
    if (tot_cte > 0) then
      tot.qCTe := tot_cte;
    if (tot_nf > 0) then
      tot.qNFe := tot_nf;

    if (qNf > 0) then
      tot.qNF := qNF;
    tot.vCarga := edValorTotal.Value;
    // UnidMed = (,uKG, uTON, uUNIDADE, uLITROS);
    case cbUnidade.ItemIndex of
      //0: tot.cUnid := uM3;
      0: tot.cUnid := uKG;
      1: tot.cUnid := uTON;
      //3: tot.cUnid := uUNIDADE;
      //4: tot.cUnid := uLITROS;
      //5: tot.cUnid := uMMBTU;
    end;

    tot.qCarga := edPesoBruto.Value;
    {with lacres.Add do
    begin
      nLacre := '123';
    end;}

    infAdic.infCpl     := memInfoFisco.Text;
    infAdic.infAdFisco := memInfoContribuinte.Text;
  end;
end;

procedure TfACBrMDFe.sbtnCaminhoCertClick(Sender: TObject);
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

procedure TfACBrMDFe.sbtnGetCertClick(Sender: TObject);
begin
 {$IFNDEF ACBrMDFeOpenSSL}
  edtNumSerie.Text := ACBrMDFe1.SSL.SelecionarCertificado;
 {$ENDIF}
end;

procedure TfACBrMDFe.sbtnLogoMarcaClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o Logo';
 OpenDialog1.DefaultExt := '*.bmp';
 OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

 if OpenDialog1.Execute then
 begin
  edtLogoMarca.Text := OpenDialog1.FileName;
 end;
end;

procedure TfACBrMDFe.sbtnPathSalvarClick(Sender: TObject);
var
 Dir : string;
begin
 if Length(edtPathLogs.Text) <= 0
  then Dir := ExtractFileDir(application.ExeName)
  else Dir := edtPathLogs.Text;

 if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP)
  then edtPathLogs.Text := Dir;
end;

procedure TfACBrMDFe.FormCreate(Sender: TObject);
begin
  //ACBrMDFe1.Configuracoes.Geral.PathSalvar := edtPathLogs.Text;
  LerConfiguracao;
 //gravarMDFe;
end;

procedure TfACBrMDFe.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 //gravarMDFe;
 LerConfiguracao;
end;

procedure TfACBrMDFe.lblColaboradorClick(Sender: TObject);
begin
 ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/5', Nil, Nil, SW_NORMAL);
end;

procedure TfACBrMDFe.lblPatrocinadorClick(Sender: TObject);
begin
 ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/35', Nil, Nil, SW_NORMAL);
end;

procedure TfACBrMDFe.lblDoar1Click(Sender: TObject);
begin
 ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/14', Nil, Nil, SW_NORMAL);
end;

procedure TfACBrMDFe.ACBrMDFe1StatusChange(Sender: TObject);
begin
 case ACBrMDFe1.Status of
  stMDFeIdle : begin
               if ( frmStatus <> nil ) then frmStatus.Hide;
              end;
  stMDFeStatusServico : begin
                        if ( frmStatus = nil )
                         then frmStatus := TfrmStatus.Create(Application);
                        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
                        frmStatus.Show;
                        frmStatus.BringToFront;
                       end;
  stMDFeRecepcao : begin
                   if ( frmStatus = nil )
                    then frmStatus := TfrmStatus.Create(Application);
                   frmStatus.lblStatus.Caption := 'Enviando dados do MDFe...';
                   frmStatus.Show;
                   frmStatus.BringToFront;
                  end;
  stMDFeRetRecepcao : begin
                      if ( frmStatus = nil )
                       then frmStatus := TfrmStatus.Create(Application);
                      frmStatus.lblStatus.Caption := 'Recebendo dados do MDFe...';
                      frmStatus.Show;
                      frmStatus.BringToFront;
                     end;
  stMDFeConsulta : begin
                   if ( frmStatus = nil )
                    then frmStatus := TfrmStatus.Create(Application);
                   frmStatus.lblStatus.Caption := 'Consultando MDFe...';
                   frmStatus.Show;
                   frmStatus.BringToFront;
                  end;
  stMDFeEvento : begin
                  if ( frmStatus = nil )
                   then frmStatus := TfrmStatus.Create(Application);
                  frmStatus.lblStatus.Caption := 'Enviando cancelamento de MDFe...';
                  frmStatus.Show;
                  frmStatus.BringToFront;
                 end;
  stMDFeRecibo : begin
                 if ( frmStatus = nil )
                  then frmStatus := TfrmStatus.Create(Application);
                 frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
                 frmStatus.Show;
                 frmStatus.BringToFront;
                end;
 end;
 Application.ProcessMessages;
end;

procedure TfACBrMDFe.ACBrMDFe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TfACBrMDFe.btnStatusServClick(Sender: TObject);
begin
 ACBrMDFe1.WebServices.StatusServico.Executar;
 MemoResp.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.StatusServico.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.StatusServico.RetWS);
 LoadXML(MemoResp, WBResposta);

 PageControl2.ActivePageIndex := 5;
 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrMDFe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +ACBrMDFe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrMDFe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +ACBrMDFe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrMDFe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrMDFe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrMDFe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrMDFe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +ACBrMDFe1.WebServices.StatusServico.xObs);
end;

procedure TfACBrMDFe.btnGerarMDFeClick(Sender: TObject);
var
 vAux : String;
begin
  if (modoAbertura = 'EDITAR') then
  begin
    //codMdfe := dm.cds.FieldByName('COD_MDFE').asInteger;
    //edNumMdfe.Text := IntToStr(codMdfe);
  end;
  vAux := edNumMdfe.Text;

  ACBrMDFe1.Manifestos.Clear;
  GerarMDFe(vAux);
  //ACBrMDFe1.Manifestos.Items[0].GravarXML(edNumMdfe.Text, edtPathLogs.Text);
  ACBrMDFe1.Manifestos.Items[0].GravarXML('', '');

  ShowMessage('Arquivo gerado em: '+ACBrMDFe1.Manifestos.Items[0].NomeArq);
  MemoDados.Lines.Add('Arquivo gerado em: '+ACBrMDFe1.Manifestos.Items[0].NomeArq);
  MemoResp.Lines.LoadFromFile(ACBrMDFe1.Manifestos.Items[0].NomeArq);
  chave_mdfe := ExtractFileName(ACBrMDFe1.Manifestos.Items[0].NomeArq);
  LoadXML(MemoResp, WBResposta);
  PageControl2.ActivePageIndex := 1;
  gravarMDFe;
end;

procedure TfACBrMDFe.btnValidarXMLClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   ACBrMDFe1.Manifestos.Assinar;
   ACBrMDFe1.Manifestos.Validar;
   showmessage('Manifesto Eletrônico de Documentos Fiscais Valido');
  end;
end;

procedure TfACBrMDFe.btnCriarEnviarClick(Sender: TObject);
var
 vAux, vNumLote : String;
 vProtocoloEnv: String;
 strInsere: String;
begin
 {if not(InputQuery('WebServices Enviar', 'Numero do Manifesto', vAux))
  then exit;

 if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote))
  then exit;}
 vAux := edNumMdfe.Text;
 vNumLote := '1';

 ACBrMDFe1.Manifestos.Clear;
 GerarMDFe(vAux);
 ACBrMDFe1.Enviar(StrToInt(vNumLote));

 MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.Retorno.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.Retorno.RetWS);
 LoadXML(MemoResp, WBResposta);

 PageControl2.ActivePageIndex := 5;
 vProtocoloEnv := '';
 vProtocoloEnv := ACBrMDFe1.WebServices.Retorno.Protocolo;
 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Envio MDFe');
 MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrMDFe1.WebServices.Retorno.TpAmb));
 MemoDados.Lines.Add('verAplic: '+ ACBrMDFe1.WebServices.Retorno.verAplic);
 MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrMDFe1.WebServices.Retorno.cStat));
 MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrMDFe1.WebServices.Retorno.cUF));
 MemoDados.Lines.Add('xMotivo: '+ ACBrMDFe1.WebServices.Retorno.xMotivo);
 MemoDados.Lines.Add('xMsg: '+ ACBrMDFe1.WebServices.Retorno.Msg);
 MemoDados.Lines.Add('Recibo: '+ ACBrMDFe1.WebServices.Retorno.Recibo);
 MemoDados.Lines.Add('Protocolo: '+ ACBrMDFe1.WebServices.Retorno.Protocolo);

  if (vProtocoloEnv <> '') then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    begin
      dm.sc.StartTransaction(TD);
      try
        dm.sc.ExecuteDirect('UPDATE MDFE SET PROTOCOLOENV = ' + QuotedStr(vProtocoloEnv) +
          ' WHERE COD_MDFE = ' + edNumMdfe.Text);
        dm.sc.Commit(TD); {on success, commit the changes};
      except
        MessageDlg('Erro para gravar o Protocolo.', mtError, [mbOK], 0);
        dm.sc.Rollback(TD); {on failure, undo the changes};
      end;
    end;
  end;

 ACBrMDFe1.Manifestos.Clear;
end;

procedure TfACBrMDFe.btnConsultarReciboClick(Sender: TObject);
var
 aux : String;
begin
  if not(InputQuery('Consultar Recibo Lote', 'Número do Recibo', aux))
   then exit;

  ACBrMDFe1.WebServices.Recibo.Recibo := aux;
  ACBrMDFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.Recibo.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.Recibo.RetWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure TfACBrMDFe.btnConsultarClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   ACBrMDFe1.Consultar;

   ShowMessage(ACBrMDFe1.WebServices.Consulta.Protocolo);
   MemoResp.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.Consulta.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.Consulta.RetWS);
   LoadXML(MemoResp, WBResposta);
 end;
end;

procedure TfACBrMDFe.btnConsultarChaveClick(Sender: TObject);
begin
 ShowMessage('Opção não Implementada!');
end;

procedure TfACBrMDFe.btnEncerramentoClick(Sender: TObject);
var sProtocolo: String;
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);

   with ACBrMDFe1.EventoMDFe.Evento.Add do
    begin
     infEvento.chMDFe   := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
     infEvento.CNPJCPF     := edtEmitCNPJ.Text;
     infEvento.dhEvento := now;
//  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
//                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
//                  teEncerramento);
     infEvento.tpEvento   := teEncerramento;
     infEvento.nSeqEvento := 1;

     infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
     infEvento.detEvento.dtEnc := Date;
     infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
     infEvento.detEvento.cMun  := ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;
    end;
    ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote
    sProtocolo := '';
    sProtocolo := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
    MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
    LoadXML(MemoResp, WBResposta);
    if (sProtocolo <> '') then
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      begin
        dm.sc.StartTransaction(TD);
        try
          dm.sc.ExecuteDirect('UPDATE MDFE SET PROTOCOLOENC = ' + QuotedStr(sProtocolo) +
            ' WHERE COD_MDFE = ' + edNumMdfe.Text);
          dm.sc.Commit(TD); {on success, commit the changes};
        except
          MessageDlg('Erro para gravar o Protocolo.', mtError, [mbOK], 0);
          dm.sc.Rollback(TD); {on failure, undo the changes};
        end;
      end;
    end;
  end;
end;

procedure TfACBrMDFe.btnCancelamentoClick(Sender: TObject);
var
 vAux : String;
 sProtocolo: String;
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
    then exit;

   with ACBrMDFe1.EventoMDFe.Evento.Add do
    begin
     infEvento.chMDFe   := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
     infEvento.CNPJCPF  := edtEmitCNPJ.Text;
     infEvento.dhEvento := now;
//  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
//                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
//                  teEncerramento);
     infEvento.tpEvento   := teCancelamento;
     infEvento.nSeqEvento := 1;

     infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
     infEvento.detEvento.xJust := trim(vAux);
    end;

    ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote
    sProtocolo := '';
    sProtocolo := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;

    if (sProtocolo <> '') then
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      begin
        dm.sc.StartTransaction(TD);
        try
          dm.sc.ExecuteDirect('UPDATE MDFE SET PROTOCOLOENC = ' + QuotedStr(sProtocolo) +
            ' WHERE COD_MDFE = ' + edNumMdfe.Text);
          dm.sc.Commit(TD); {on success, commit the changes};
        except
          MessageDlg('Erro para gravar o Protocolo.', mtError, [mbOK], 0);
          dm.sc.Rollback(TD); {on failure, undo the changes};
        end;
      end;
    end;

   MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
   LoadXML(MemoResp, WBResposta);
  end;
end;

procedure TfACBrMDFe.btnImprimirClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   ACBrMDFe1.Manifestos.Imprimir;
  end;
end;

procedure TfACBrMDFe.btnGerarPDFClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute
  then begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   ACBrMDFe1.Manifestos.ImprimirPDF;
  end;
end;

procedure TfACBrMDFe.btnEnviarMDFeEmailClick(Sender: TObject);
var
 Para : String;
 CC   : Tstrings;
begin
 if not(InputQuery('Enviar Email', 'Email de destino', Para))
  then exit;

  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-mdfe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.Clear;
    ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
    CC:=TstringList.Create;
    //CC.Add('email_1@provedor.com'); //especifique um email válido
    //CC.Add('email_2@provedor.com.br'); //especifique um email válido
    ACBrMDFe1.MAIL.Host := edtSmtpHost.Text;
    ACBrMDFe1.MAIL.Port := edtSmtpPort.Text;
    ACBrMDFe1.MAIL.Username := edtSmtpUser.Text;
    ACBrMDFe1.MAIL.Password := edtSmtpPass.Text;
    ACBrMDFe1.MAIL.SetSSL   := cbEmailSSL.Checked;
    ACBrMDFe1.MAIL.ReadingConfirmation := False;
    ACBrMDFe1.Manifestos.Items[0].EnviarEmail(Para
                                             , edtEmailAssunto.Text
                                             , mmEmailMsg.Lines
                                             , False //Enviar PDF junto
                                             , nil //Lista com emails que serão enviado cópias - TStrings
                                             , nil // Lista de anexos - TStrings
                                              );
   CC.Free;
  end;
end;

procedure TfACBrMDFe.btnImprimirEventoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-mdfe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  ACBrMDFe1.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.EventoMDFe.Evento.Clear;
    ACBrMDFe1.EventoMDFe.LerXML(OpenDialog1.FileName);
    ACBrMDFe1.ImprimirEvento;
  end;
end;

procedure TfACBrMDFe.btnGerarPDFEventoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-mdfe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  ACBrMDFe1.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.EventoMDFe.Evento.Clear;
    ACBrMDFe1.EventoMDFe.LerXML(OpenDialog1.FileName);
    ACBrMDFe1.ImprimirEventoPDF;
  end;
end;

procedure TfACBrMDFe.btnEnviarEventoEmailClick(Sender: TObject);
var
 Para : String;
 CC, Evento: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;

  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-mdfe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  ACBrMDFe1.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    Evento := TStringList.Create;
    Evento.Clear;
    Evento.Add(OpenDialog1.FileName);
    ACBrMDFe1.EventoMDFe.Evento.Clear;
    ACBrMDFe1.EventoMDFe.LerXML(OpenDialog1.FileName);
    CC:=TstringList.Create;
    //CC.Add('andrefmoraes@gmail.com'); //especifique um email válido
    //CC.Add('anfm@zipmail.com.br');    //especifique um email válido
    ACBrMDFe1.MAIL.Host := edtSmtpHost.Text;
    ACBrMDFe1.MAIL.Port := edtSmtpPort.Text;
    ACBrMDFe1.MAIL.Username := edtSmtpUser.Text;
    ACBrMDFe1.MAIL.Password := edtSmtpPass.Text;
    ACBrMDFe1.MAIL.SetSSL   := cbEmailSSL.Checked;
    ACBrMDFe1.MAIL.ReadingConfirmation := False;
    ACBrMDFe1.Manifestos.Items[0].EnviarEmail(Para
                                           , edtEmailAssunto.Text
                                           , mmEmailMsg.Lines
                                           , False //Enviar PDF junto
                                           , nil //Lista com emails que serão enviado cópias - TStrings
                                           , nil // Lista de anexos - TStrings
                                            );
    CC.Free;
    Evento.Free;
  end;
end;

procedure TfACBrMDFe.gravarMDFe;
var strInsere: String;
  td: TTransactionDesc;
begin
  //edPlaca.Text
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (modoAbertura = 'EDITAR') then
  begin
    dm.sc.StartTransaction(TD);
    try
      dm.sc.ExecuteDirect('DELETE FROM MDFE WHERE COD_MDFE = ' + edNumMdfe.Text +
         ' and PROTOCOLOENV IS NULL');
      dm.sc.Commit(TD); {on success, commit the changes};
      modoAbertura := 'NOVO';
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
  end;

  if (modoAbertura = 'NOVO') then
  begin
    modoAbertura := 'EDITAR';
    DecimalSeparator := '.';
    strInsere := 'INSERT INTO MDFE (COD_MDFE, CODEMITENTE, ' +
      ' TIPOEMITENTE, MODELO, SERIE, NUMERO_MDF, ' +
      ' CHAVE_MDF, MODALIDADE, DATA_MDF, ' +
      ' FORMA_EMISSAO, VERSAO_APLICATIVO, ' +
      ' UF_CARREGAMENTO, UF_DESCARREGAMENTO, ' +
      ' COD_MUNICIPIO_CARREG, MUNICIPO_CARREG, ' +
      ' COD_MUNICIPIO_DESCARREG, ' +
      ' MUNICIPO_DESCARREG, CHAVE_NFE1, CHAVE_NFE2, ' +
      ' CHAVE_NFE3, CHAVE_NFE4, CHAVE_NFE5, ' +
      ' CHAVE_NFE6, CHAVE_NFE7, ' +
      ' TIPO_TRANSP, UNID_TRANSP, TIPO_CARGA, UNID_CARGA, ' +
      ' QTDE_NFE, VALOR_CARGA, UNID_PESO, ' +
      ' PESO_BRUTO, CNPJ_AUTORIZADO1, CNPJ_AUTORIZADO2, ' +
      ' INFO_ADIC_FISCO, INFO_ADIC_CONTRIBUINTE, ' +
      ' RNTRC, CIOT, CINT, PLACA, TARA, CAPKG, CAPM3, ' +
      ' PROP_CNPJ, PROP_RNTRC, PROP_NOME, ' +
      ' PROP_IE, PROP_UF, PROP_TIPO, CONDUTOR_NOME, ' +
      ' CONDUTOR_CPF, TIPO_RODADO, TIPO_CARROCERIA, ' +
      ' UF_VEICULO, ' +
      ' PESO_VOLUME1,' + // PESO_VOLUME2, ' +
      ' CHAVE_MDFE, NF1_CNPJ, NF1_NUM, NF1_SERIE, NF1_UF, NF1_PIN, NF1_VALOR' +
      ' ,NF2_CNPJ, NF2_NUM, NF2_SERIE, NF2_UF, NF2_PIN, NF2_VALOR' +
      ' ,NF3_CNPJ, NF3_NUM, NF3_SERIE, NF3_UF, NF3_PIN, NF3_VALOR' +
      ' ,UF_PERCURSO ,UF_PERCURSO2 ,UF_PERCURSO3 ,UF_PERCURSO4 '+
      ' ,UF_PERCURSO5 ,UF_PERCURSO6 , TIPO_EMITENTE' +
      ' ,SEG_RESP ' +
      ' ,SEG_CNPJ_EMITENTE, SEG_SEGURADORA, SEG_CNPJ_SEGURADORA' +
      ' ,SEG_APOLICE, SEG_AVERBA ' +

      ') VALUES ( ';
      //' PESO_VOLUME3, PESO_VOLUME4, PESO_VOLUME5, ' +
      //' PESO_VOLUME6, PESO_VOLUME7, ' +


      {    ' REBOQUE_CINT, REBOQUE_PLACA, ' +
      ' REBOQUE_TARA, REBOQUE_CAPKG, REBOQUE_CAPM3, ' +
      ' REBOQUE_CPF, REBOQUE_CNPJ, REBOQUE_RNTRC, ' +
      ' REBOQUE_NOME, REBOQUE_IE, REBOQUE_UF, ' +
      ' REBOQUE_TIPOPROP, REBOQUE_TIPOCARROCERIA, ' +
      ' REBOQUE_UFVEICULO, ' +}

    strInsere := strInsere + edNumMDFe.Text;
    strInsere := strInsere + ', ' + IntToStr(codEmitente);
    strInsere := strInsere + ', ' + IntToStr(2) + ', 58, 1 ';   // 1-teTransportadora, 2-teTranspCargaPropria + Modelo e Serie
    strInsere := strInsere + ', ' + edNumMdfe.Text + ', ' + edNumMdfe.Text + ', 1';  // MODALIDADE :1-moRodoviario, 2-moAereo, moAquaviario, moFerroviario
    strInsere := strInsere + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy hh:MM', now));
    strInsere := strInsere + ', 1,' + QuotedStr('1.01'); //TpcnTipoEmissao = (1-teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
    strInsere := strInsere + ', ' + QuotedStr(edtEmitUF.Text) + ', ' +  QuotedStr(edUFDescarga.Text);
    //strInsere := strInsere + ', ' + QuotedStr(edtEmitCodCidade.Text) + ', ' + QuotedStr(edtEmitCidade.Text);
    strInsere := strInsere + ', ' + QuotedStr(edtMunCarregaIBGE.Text) + ', ' + QuotedStr(edtMunicipioCarrega.Text);
    strInsere := strInsere + ', ' + RemoveChar(edCodIbgeDescarga.Text);
    strInsere := strInsere + ', ' + QuotedStr(edMunicipioDescarga.Text) + ', ' + QuotedStr(edNFe1.Text);
    strInsere := strInsere + ', Null'; //editParaSql('S',edNFe2.Text);
    strInsere := strInsere + ', Null'; // + editParaSql('S',edNFe3.Text);
    strInsere := strInsere + ', Null'; // + editParaSql('S',edNFe4.Text);
    strInsere := strInsere + ', Null'; // + editParaSql('S',edNFe5.Text);
    strInsere := strInsere + ', Null'; //+ editParaSql('S',edNFe6.Text);
    strInsere := strInsere + ', Null'; // + editParaSql('S',edNFe7.Text);
    strInsere := strInsere + ', ' + editParaSql('I',IntToStr(cbTransporte.ItemIndex+1)); // Tipo_Transp: 1 - Rodoviário Tração, 2 - Rodoviário Reboque, 3 - Navio, 4 - Balsa, 5 - Aeronave, 6 - Vagão, 7 - Outros
    strInsere := strInsere + ', ' + editParaSql('S',edIdentUnidTransp.Text); // Unidade Transp
    strInsere := strInsere + ', ' + editParaSql('I',IntToStr(rgTipoUnidCarga.ItemIndex+1)) ;// Tipo Carga 1 - Container; 2 - ULD; 3 - Pallet; 4 - Outros;
    strInsere := strInsere + ', ' + editParaSql('S',edIdentUnidCarga.Text); // Unidadde Carga
    strInsere := strInsere + ', ' + editParaSql('N',edQtdeNF.Text); //QTDE_NFE
    strInsere := strInsere + ', ' + Format('%8.2f', [edValorTotal.Value]); //VALOR_CARGA
    strInsere := strInsere + ', ' + editParaSql('I',IntToStr(cbUnidade.ItemIndex+1)) ;// UNID_PESO
    strInsere := strInsere + ', ' + Format('%8.2f', [edPesoBruto.Value]); // PESO_BRUTO
    strInsere := strInsere + ', ' + editParaSql('S',edAutorizado1.Text); // CNPJ_AUTORIZADO1
    strInsere := strInsere + ', ' + editParaSql('S',edAutorizado2.Text); // CNPJ_AUTORIZADO2
    strInsere := strInsere + ', ' + editParaSql('S',memInfoFisco.Text); // INFO_ADIC_FISCO
    strInsere := strInsere + ', ' + editParaSql('S',memInfoContribuinte.Text); //INFO_ADIC_CONTRIBUINTE,
    strInsere := strInsere + ', ' + editParaSql('S',edRntrc.Text) + ', ' + editParaSql('S',edCIOT.Text) + ', ' + editParaSql('S',edCINT.Text);  // RNTRC, CIOT, CINT
    strInsere := strInsere + ', ' + editParaSql('S',edPlaca.Text) + ', ' + editParaSql('N',edTara.Text); //PLACA, TARA
    strInsere := strInsere + ', ' + editParaSql('N',edCapKg.Text) + ', ' + editParaSql('N',edCapM3.Text); // CAPKG, CAPM3
    strInsere := strInsere + ', ' + editParaSql('S',edPropCNPJ.Text); // PROP_CNPJ
    strInsere := strInsere + ', ' + editParaSql('S',edPropRntrc.Text); // PROP_RNTRC
    strInsere := strInsere + ', ' + editParaSql('S',edPropNome.Text); // PROP_NOME
    strInsere := strInsere + ', ' + editParaSql('S',edPropIE.Text); // PROP_IE
    strInsere := strInsere + ', ' + editParaSql('S',edPropUF.Text); // PROP_UF
    strInsere := strInsere + ', ' + editParaSql('I',IntToStr(cbPropTipo.ItemIndex+1)) ;// PROP_TIPO
    strInsere := strInsere + ', ' + editParaSql('S', edCondutor.Text); // CONDUTOR_NOME
    strInsere := strInsere + ', ' + editParaSql('S', edCondutorCPF.Text); //  CONDUTOR_CPF
    strInsere := strInsere + ', ' + editParaSql('I',IntToStr(cbTipoRodado.ItemIndex+1)) ;// TIPO_RODADO
    strInsere := strInsere + ', ' + editParaSql('I',IntToStr(cbTipoCarroceria.ItemIndex+1)) ;// TIPO_CARROCERIA
    strInsere := strInsere + ', ' + editParaSql('S',edUFLicVeiculo.Text); // UF_VEICULO
    {, REBOQUE_CINT, REBOQUE_PLACA, ' +
      ' REBOQUE_TARA, REBOQUE_CAPKG, REBOQUE_CAPM3, ' +
      ' REBOQUE_CPF, REBOQUE_CNPJ, REBOQUE_RNTRC, ' +
      ' REBOQUE_NOME, REBOQUE_IE, REBOQUE_UF, ' +
      ' REBOQUE_TIPOPROP, REBOQUE_TIPOCARROCERIA, ' +
      ' REBOQUE_UFVEICULO, ' +
     }
    strInsere := strInsere + ', ' + Format('%8.2f', [edPesoVol1.Value]);
    {
    if (edNFe2.Text <> '') then
    begin
      strInsere := strInsere + ', ' + Format('%8.2f', [edPesoVol2.Value]);
    end
    else begin
      strInsere := strInsere + ', null ';
    end;
    if (edNFe3.Text <> '') then
    begin
      strInsere := strInsere + ', ' + Format('%8.2f', [edPesoVol3.Value]);
    end
    else begin
      strInsere := strInsere + ', null ';
    end;
    if (edNFe4.Text <> '') then
    begin
      strInsere := strInsere + ', ' + Format('%8.2f', [edPesoVol4.Value]);
    end
    else begin
      strInsere := strInsere + ', null ';
    end;
    if (edNFe5.Text <> '') then
    begin
      strInsere := strInsere + ', ' + Format('%8.2f', [edPesoVol5.Value]);
    end
    else begin
      strInsere := strInsere + ', null ';
    end;
    if (edNFe6.Text <> '') then
    begin
      strInsere := strInsere + ', ' + Format('%8.2f', [edPesoVol6.Value]);
    end
    else begin
      strInsere := strInsere + ', null ';
    end;
    if (edNFe7.Text <> '') then
    begin
      strInsere := strInsere + ', ' + Format('%8.2f', [edPesoVol7.Value]);
    end
    else begin
      strInsere := strInsere + ', null ';
    end;
    }
    strInsere := strInsere + ', ' + QuotedStr(chave_mdfe);
    //NF1_CNPJ, NF1_NUM, NF1_SERIE, NF1_UF' +
    if (edNFCnpj1.Text <> '') then
    begin
      if (edNFNum1.Text = '') then
      begin
        MessageDlg('Número da nota não informado.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (edNFSerie1.Text = '') then
      begin
        MessageDlg('Série da nota não informada.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (edNFUF1.Text = '') then
      begin
        MessageDlg('UF da nota não informado.', mtWarning, [mbOK], 0);
        exit;
      end;
      strInsere := strInsere + ', ' + QuotedStr(edNFCnpj1.Text);
      strInsere := strInsere + ', ' + edNFNum1.Text;
      strInsere := strInsere + ', ' + edNFSerie1.Text;
      strInsere := strInsere + ', ' + QuotedStr(edNFUF1.Text);
      if (edNFPin1.Text = '')
        then strInsere := strInsere + ', null '
        else strInsere := strInsere + ', ' + edNFPin1.Text;
      strInsere := strInsere + ', ' + Format('%8.2f', [edNFValor1.Value]);
    end
    else begin
      strInsere := strInsere + ', null, null, null, null, null, null'
    end;
    if (edNFCnpj2.Text <> '') then
    begin
      if (edNFNum2.Text = '') then
      begin
        MessageDlg('Número da nota não informado.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (edNFSerie2.Text = '') then
      begin
        MessageDlg('Série da nota não informada.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (edNFUF2.Text = '') then
      begin
        MessageDlg('UF da nota não informado.', mtWarning, [mbOK], 0);
        exit;
      end;
      strInsere := strInsere + ', ' + QuotedStr(edNFCnpj2.Text);
      strInsere := strInsere + ', ' + edNFNum2.Text;
      strInsere := strInsere + ', ' + edNFSerie2.Text;
      strInsere := strInsere + ', ' + QuotedStr(edNFUF2.Text);
      if (edNFPin2.Text = '')
        then strInsere := strInsere + ', null '
        else strInsere := strInsere + ', ' + edNFPin2.Text;
      strInsere := strInsere + ', ' + Format('%8.2f', [edNFValor2.Value]);
    end
    else begin
      strInsere := strInsere + ', null, null, null, null, null, null'
    end;

    if (edNFCnpj3.Text <> '') then
    begin
      if (edNFNum3.Text = '') then
      begin
        MessageDlg('Número da nota não informado.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (edNFSerie3.Text = '') then
      begin
        MessageDlg('Série da nota não informada.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (edNFUF3.Text = '') then
      begin
        MessageDlg('UF da nota não informado.', mtWarning, [mbOK], 0);
        exit;
      end;
      strInsere := strInsere + ', ' + QuotedStr(edNFCnpj3.Text);
      strInsere := strInsere + ', ' + edNFNum3.Text;
      strInsere := strInsere + ', ' + edNFSerie3.Text;
      strInsere := strInsere + ', ' + QuotedStr(edNFUF3.Text);
      if (edNFPin3.Text = '')
        then strInsere := strInsere + ', null '
        else strInsere := strInsere + ', ' + edNFPin3.Text;
      strInsere := strInsere + ', ' + Format('%8.2f', [edNFValor3.Value]);
    end
    else begin
      strInsere := strInsere + ', null, null, null, null, null, null'
    end;
    if (edUFPercuso.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edUFPercuso.Text)
    else
      strInsere := strInsere + ', null';
    if (edUFPercuso2.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edUFPercuso2.Text)
    else
      strInsere := strInsere + ', null';
    if (edUFPercuso3.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edUFPercuso3.Text)
    else
      strInsere := strInsere + ', null';
    if (edUFPercuso4.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edUFPercuso4.Text)
    else
      strInsere := strInsere + ', null';
    if (edUFPercuso5.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edUFPercuso5.Text)
    else
      strInsere := strInsere + ', null';
    if (edUFPercuso6.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edUFPercuso6.Text)
    else
      strInsere := strInsere + ', null';

    strInsere := strInsere + ', ' + IntToStr(cbTipoEmit.ItemIndex);

    //    ' ,a.SEG_RESP, a.SEG_CNPJ_EMITENTE, a.SEG_SEGURADORA, a.SEG_CNPJ_SEGURADORA' +
    //' ,a.SEG_APOLICE, a.SEG_AVERBA ' +

    if (cbSegResp.ItemIndex > -1) then
      strInsere := strInsere + ', ' + IntToStr(cbSegResp.ItemIndex)
    else
      strInsere := strInsere + ', 99';
    if (edSegCNPJCPF.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edSegCNPJCPF.Text)
    else
      strInsere := strInsere + ', NULL';
    if (edSeguradora.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edSeguradora.Text)
    else
      strInsere := strInsere + ', NULL';
    if (edSegCNPJ.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edSegCNPJ.Text)
    else
      strInsere := strInsere + ', NULL';
    if (edApolice.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edApolice.Text)
    else
      strInsere := strInsere + ', NULL';
    if (edAverba.Text <> '') then
      strInsere := strInsere + ', ' + QuotedStr(edAverba.Text)
    else
      strInsere := strInsere + ', NULL';


    {rodo.veicTracao.tpRod := trTruck; //trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros
    rodo.veicTracao.tpCar := tcNaoAplicavel; // tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider
    rodo.veicTracao.UF    := edUFLicVeiculo.Text;
     }
    strInsere := strInsere + ')';
    DecimalSeparator := ',';
    dm.sc.StartTransaction(TD);
    try
      dm.sc.ExecuteDirect(strInsere);
      dm.sc.Commit(TD); {on success, commit the changes};
      MessageDlg('MDF-e Gravada com sucesso.', mtInformation, [mbOK], 0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
  end;
  if (edRebocoCint.Text <> '') then
  begin
    DecimalSeparator := '.';
    strInsere := 'UPDATE MDFE SET REBOQUE_CINT = ' + QuotedStr(edRebocoCint.Text);
    if (edRebocoPlaca.Text <> '') then
      strInsere := strInsere + ', REBOQUE_PLACA = ' + QuotedStr(edRebocoPlaca.Text);
    if (edRebocoTara.Text <> '') then
      strInsere := strInsere + ', REBOQUE_TARA = ' + edRebocoTara.Text;
    if (edRebocoCapKg.Text <> '') then
      strInsere := strInsere + ', REBOQUE_CAPKG = ' + edRebocoCapKg.Text;
    if (edRebocoCapM.Text <> '') then
      strInsere := strInsere + ', REBOQUE_CAPM3 = ' + edRebocoCapM.Text;
    if (edRebocoRNTRC.Text <> '') then
      strInsere := strInsere + ', REBOQUE_RNTRC = ' + QuotedStr(edRebocoRNTRC.Text);
    if (edRebocoUF.Text <> '') then
      strInsere := strInsere + ', REBOQUE_UF = ' + QuotedStr(edRebocoUF.Text);
    strInsere := strInsere + ' WHERE COD_MDFE = ' + edNumMDFe.Text;
    DecimalSeparator := ',';
    dm.sc.StartTransaction(TD);
    try
      dm.sc.ExecuteDirect(strInsere);
      dm.sc.Commit(TD); {on success, commit the changes};
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
  end;
  if (edRebocoCint2.Text <> '') then
  begin
    DecimalSeparator := '.';
    strInsere := 'UPDATE MDFE SET REBOQUE_CINT2 = ' + QuotedStr(edRebocoCint2.Text);
    if (edRebocoPlaca2.Text <> '') then
      strInsere := strInsere + ', REBOQUE_PLACA2 = ' + QuotedStr(edRebocoPlaca2.Text);
    if (edRebocoTara2.Text <> '') then
      strInsere := strInsere + ', REBOQUE_TARA2 = ' + edRebocoTara2.Text;
    if (edRebocoCapKg2.Text <> '') then
      strInsere := strInsere + ', REBOQUE_CAPKG2 = ' + edRebocoCapKg2.Text;
    if (edRebocoCapM2.Text <> '') then
      strInsere := strInsere + ', REBOQUE_CAPM32 = ' + edRebocoCapM2.Text;
    if (edRebocoRNTRC2.Text <> '') then
      strInsere := strInsere + ', REBOQUE_RNTRC2 = ' + QuotedStr(edRebocoRNTRC2.Text);
    if (edRebocoUF2.Text <> '') then
      strInsere := strInsere + ', REBOQUE_UF2 = ' + QuotedStr(edRebocoUF2.Text);
    strInsere := strInsere + ' WHERE COD_MDFE = ' + edNumMDFe.Text;
    DecimalSeparator := ',';
    dm.sc.StartTransaction(TD);
    try
      dm.sc.ExecuteDirect(strInsere);
      dm.sc.Commit(TD); {on success, commit the changes};
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
  end;

end;

function TfACBrMDFe.RemoveChar(const Texto: String): String;
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

function TfACBrMDFe.editParaSql(tipo: String; conteudoEdit: String): String;
begin
  if (conteudoEdit <> '') then
  begin
    if (tipo = 'N') then
      result := conteudoEdit;
    if (tipo = 'S') then
      result := QuotedStr(conteudoEdit);
    if (tipo = 'I') then
    begin
      if (conteudoEdit = '0') then
        result := 'null'
      else
        result := conteudoEdit;
    end;
  end
  else begin
    result := 'null';
  end;
end;

procedure TfACBrMDFe.FormShow(Sender: TObject);
begin
  PreencherCampos;
  if ((modoAbertura = 'NOVO') and (edNumMdfe.Text = ''))  then
  begin
    if (dm.sqlBusca.Active) then
     dm.sqlBusca.Close;
    dm.sqlBusca.sql.Clear;
    dm.sqlBusca.sql.Add('SELECT MAX(COD_MDFE) COD FROM MDFE');
    dm.sqlBusca.Open;
    if (dm.sqlBusca.fieldByName('COD').asInteger > 0) then
    begin
      codMDFe := dm.sqlBusca.fieldByName('COD').asInteger + 1;
    end
    else
      codMDFe := 1;
    edNumMdfe.Text := IntToStr(codMdfe);
  end;
  if (dm.cds.FieldByName('TIPO_TRANSP').AsInteger = 2) then
    GroupBox16.Visible := True;
end;

procedure TfACBrMDFe.PreencherCampos;
var Dir : string;
begin
  if (modoAbertura = 'EDITAR') then
  begin
    edNumMdfe.Text := IntToStr(dm.cds.FieldByName('COD_MDFE').asInteger);
    codMDFe := dm.cds.FieldByName('COD_MDFE').asinteger;
    //strInsere := strInsere + ', ' + IntToStr(codEmitente);
    //strInsere := strInsere + ', ' + IntToStr(2) + ', 58, 1 ';   // 1-teTransportadora, 2-teTranspCargaPropria + Modelo e Serie
    //strInsere := strInsere + ', ' + IntToStr(codMDFe) + ', ' + IntToStr(codMDFe) + ', 1';  // MODALIDADE :1-moRodoviario, 2-moAereo, moAquaviario, moFerroviario
    dtaMdfe.Date := dm.cds.FieldByName('DATA_MDF').AsDateTime;
    //strInsere := strInsere + ', 1,' + QuotedStr('1.01'); //TpcnTipoEmissao = (1-teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
    edtUFCarregamento.Text := dm.cds.FieldByName('UF_CARREGAMENTO').asString;
    edUFDescarga.Text := dm.cds.FieldByName('UF_DESCARREGAMENTO').AsString;
    edtMunCarregaIBGE.Text := dm.cds.FieldByName('COD_MUNICIPIO_CARREG').AsString;
    edtMunicipioCarrega.Text := dm.cds.FieldByName('MUNICIPO_CARREG').AsString;
    edCodIbgeDescarga.Text  := dm.cds.FieldByName('COD_MUNICIPIO_DESCARREG').AsString;
    edMunicipioDescarga.Text  := dm.cds.FieldByName('MUNICIPO_DESCARREG').AsString;
    //edNFe1.Text := dm.cds.FieldByName('CHAVE_NFE1').AsString;
    {edNFe2.Text := dm.cds.FieldByName('CHAVE_NFE2').AsString;
    edNFe3.Text := dm.cds.FieldByName('CHAVE_NFE3').AsString;
    edNFe4.Text := dm.cds.FieldByName('CHAVE_NFE4').AsString;
    edNFe5.Text := dm.cds.FieldByName('CHAVE_NFE5').AsString;
    edNFe6.Text := dm.cds.FieldByName('CHAVE_NFE6').AsString;
    edNFe7.Text := dm.cds.FieldByName('CHAVE_NFE7').AsString;
    edPesoVol1.Value := dm.cds.FieldByName('PESO_VOLUME1').AsFloat;
    edPesoVol2.Value := dm.cds.FieldByName('PESO_VOLUME2').AsFloat;
    edPesoVol3.Value := dm.cds.FieldByName('PESO_VOLUME3').AsFloat;
    edPesoVol4.Value := dm.cds.FieldByName('PESO_VOLUME4').AsFloat;
    edPesoVol5.Value := dm.cds.FieldByName('PESO_VOLUME5').AsFloat;
    edPesoVol6.Value := dm.cds.FieldByName('PESO_VOLUME6').AsFloat;
    edPesoVol7.Value := dm.cds.FieldByName('PESO_VOLUME7').AsFloat;}
    cbTransporte.ItemIndex := dm.cds.FieldByName('TIPO_TRANSP').AsInteger - 1; // Tipo_Transp: 1 - Rodoviário Tração, 2 - Rodoviário Reboque, 3 - Navio, 4 - Balsa, 5 - Aeronave, 6 - Vagão, 7 - Outros
    edIdentUnidTransp.Text := dm.cds.FieldByName('UNID_TRANSP').AsString; // Unidade Transp
    rgTipoUnidCarga.ItemIndex := dm.cds.FieldByName('TIPO_CARGA').AsInteger - 1;// Tipo Carga 1 - Container; 2 - ULD; 3 - Pallet; 4 - Outros;
    edIdentUnidCarga.Text := dm.cds.FieldByName('UNID_CARGA').AsString; // Unidadde Carga
    edQtdeNF.Text := IntToStr(dm.cds.FieldByName('QTDE_NFE').AsInteger); //QTDE_NFE
    edValorTotal.Value := dm.cds.FieldByName('VALOR_CARGA').AsFloat; //VALOR_CARGA
    cbUnidade.ItemIndex := dm.cds.FieldByName('UNID_PESO').AsInteger - 1;// UNID_PESO
    edPesoBruto.Value := dm.cds.FieldByName('PESO_BRUTO').AsFloat; // PESO_BRUTO
    edAutorizado1.Text := dm.cds.FieldByName('CNPJ_AUTORIZADO1').AsString; // CNPJ_AUTORIZADO1
    edAutorizado2.Text := dm.cds.FieldByName('CNPJ_AUTORIZADO2').AsString; // CNPJ_AUTORIZADO2
    memInfoFisco.Text := dm.cds.FieldByName('INFO_ADIC_FISCO').AsString; // INFO_ADIC_FISCO
    memInfoContribuinte.Text := dm.cds.FieldByName('INFO_ADIC_CONTRIBUINTE').AsString; //INFO_ADIC_CONTRIBUINTE,
    edRntrc.Text := dm.cds.FieldByName('RNTRC').AsString;
    edCIOT.Text := dm.cds.FieldByName('CIOT').AsString;
    edCINT.Text := dm.cds.FieldByName('CINT').AsString;  // RNTRC, CIOT, CINT
    edPlaca.Text := dm.cds.FieldByName('PLACA').AsString;
    edTara.Text := dm.cds.FieldByName('TARA').AsString; //PLACA, TARA
    edCapKg.Text := dm.cds.FieldByName('CAPKG').AsString;
    edCapM3.Text := dm.cds.FieldByName('CAPM3').AsString; // CAPKG, CAPM3
    edPropCNPJ.Text := dm.cds.FieldByName('PROP_CNPJ').AsString; // PROP_CNPJ
    edPropRntrc.Text := dm.cds.FieldByName('PROP_RNTRC').AsString; // PROP_RNTRC
    edPropNome.Text := dm.cds.FieldByName('PROP_NOME').AsString; // PROP_NOME
    edPropIE.Text := dm.cds.FieldByName('PROP_IE').AsString; // PROP_IE
    edPropUF.Text := dm.cds.FieldByName('PROP_UF').AsString; // PROP_UF
    cbPropTipo.ItemIndex := dm.cds.FieldByName('PROP_TIPO').AsInteger - 1;// PROP_TIPO
    edCondutor.Text := dm.cds.FieldByName('CONDUTOR_NOME').AsString; // CONDUTOR_NOME
    edCondutorCPF.Text := dm.cds.FieldByName('CONDUTOR_CPF').AsString; //  CONDUTOR_CPF
    cbTipoRodado.ItemIndex := dm.cds.FieldByName('TIPO_RODADO').AsInteger - 1;// TIPO_RODADO
    cbTipoCarroceria.ItemIndex := dm.cds.FieldByName('TIPO_CARROCERIA').AsInteger - 1;// TIPO_CARROCERIA
    edUFLicVeiculo.Text := dm.cds.FieldByName('UF_VEICULO').AsString; // UF_VEICULO
    //NF1_CNPJ, NF1_NUM, NF1_SERIE, NF1_UF, NF1_PIN, NF1_VALOR' +
    edNFCnpj1.Text := dm.cds.FieldByName('NF1_CNPJ').AsString;
    edNFNum1.Text := IntToStr(dm.cds.FieldByName('NF1_NUM').AsInteger);
    edNFSerie1.Text := IntToStr(dm.cds.FieldByName('NF1_SERIE').AsInteger);
    edNFUF1.Text := dm.cds.FieldByName('NF1_UF').AsString;
    if (dm.cds.FieldByName('NF1_PIN').AsInteger = 0) then
       edNFPin1.Text := ''
    else edNFPin1.Text := IntToStr(dm.cds.FieldByName('NF1_PIN').AsInteger);
    edNFValor1.Value := dm.cds.FieldByName('NF1_VALOR').AsFloat;
    edNFCnpj2.Text := dm.cds.FieldByName('NF2_CNPJ').AsString;
    edNFNum2.Text := IntToStr(dm.cds.FieldByName('NF2_NUM').AsInteger);
    edNFSerie2.Text := IntToStr(dm.cds.FieldByName('NF2_SERIE').AsInteger);
    edNFUF2.Text := dm.cds.FieldByName('NF2_UF').AsString;
    if (dm.cds.FieldByName('NF2_PIN').AsInteger = 0) then
       edNFPin2.Text := ''
    else edNFPin2.Text := IntToStr(dm.cds.FieldByName('NF2_PIN').AsInteger);

    edRebocoCint.Text := dm.cds.FieldByName('REBOQUE_CINT').AsString;;
    edRebocoPlaca.Text := dm.cds.FieldByName('REBOQUE_PLACA').AsString;
    edRebocoTara.Text := dm.cds.FieldByName('REBOQUE_TARA').AsString;
    edRebocoCapKg.Text := dm.cds.FieldByName('REBOQUE_CAPKG').AsString;
    edRebocoCapM.Text := dm.cds.FieldByName('REBOQUE_CAPM3').AsString;
    edRebocoRNTRC.Text := dm.cds.FieldByName('REBOQUE_RNTRC').AsString;
    edRebocoUF.Text := dm.cds.FieldByName('REBOQUE_UF').AsString;

    edRebocoCint2.Text := dm.cds.FieldByName('REBOQUE_CINT2').AsString;;
    edRebocoPlaca2.Text := dm.cds.FieldByName('REBOQUE_PLACA2').AsString;
    edRebocoTara2.Text := dm.cds.FieldByName('REBOQUE_TARA2').AsString;
    edRebocoCapKg2.Text := dm.cds.FieldByName('REBOQUE_CAPKG2').AsString;
    edRebocoCapM2.Text := dm.cds.FieldByName('REBOQUE_CAPM32').AsString;
    edRebocoRNTRC2.Text := dm.cds.FieldByName('REBOQUE_RNTRC2').AsString;
    edRebocoUF2.Text := dm.cds.FieldByName('REBOQUE_UF2').AsString;

    edNFValor2.Value := dm.cds.FieldByName('NF2_VALOR').AsFloat;
    edNFCnpj3.Text := dm.cds.FieldByName('NF3_CNPJ').AsString;
    edNFNum3.Text := IntToStr(dm.cds.FieldByName('NF3_NUM').AsInteger);
    edNFSerie3.Text := IntToStr(dm.cds.FieldByName('NF3_SERIE').AsInteger);
    edNFUF3.Text := dm.cds.FieldByName('NF3_UF').AsString;
    if (dm.cds.FieldByName('NF3_PIN').AsInteger = 0) then
       edNFPin3.Text := ''
    else edNFPin3.Text := IntToStr(dm.cds.FieldByName('NF3_PIN').AsInteger);

    edNFValor3.Value := dm.cds.FieldByName('NF3_VALOR').AsFloat;
    edUFPercuso.Text := dm.cds.FieldByName('UF_PERCURSO').AsString;
    edUFPercuso2.Text := dm.cds.FieldByName('UF_PERCURSO2').AsString;
    edUFPercuso3.Text := dm.cds.FieldByName('UF_PERCURSO3').AsString;
    edUFPercuso4.Text := dm.cds.FieldByName('UF_PERCURSO4').AsString;
    edUFPercuso5.Text := dm.cds.FieldByName('UF_PERCURSO5').AsString;
    edUFPercuso6.Text := dm.cds.FieldByName('UF_PERCURSO6').AsString;
    // Seguro
    if dm.cds.FieldByName('SEG_RESP').AsInteger < 99 then
      cbSegResp.ItemIndex := dm.cds.FieldByName('SEG_RESP').AsInteger;
    edSegCNPJCPF.Text := dm.cds.FieldByName('SEG_CNPJ_EMITENTE').AsString;
    edSeguradora.Text := dm.cds.FieldByName('SEG_SEGURADORA').AsString;
    edSegCnpj.Text := dm.cds.FieldByName('SEG_CNPJ_SEGURADORA').AsString;
    edApolice.Text := dm.cds.FieldByName('SEG_APOLICE').AsString;
    edAverba.Text := dm.cds.FieldByName('SEG_AVERBA').AsString;

    cbTipoEmit.ItemIndex := dm.cds.FieldByName('TIPO_EMITENTE').AsInteger;
    if (cdsMun.Active) then
      cdsMun.Close;
    cdsMun.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
    cdsMun.Open;

    if (cdsMdfeDocs.Active) then
      cdsMdfeDocs.Close;
    cdsMdfeDocs.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
    cdsMdfeDocs.Params[1].AsInteger := 0;
    cdsMdfeDocs.Open;
    if (cdsMdfeDocs.RecNo > 0) then
    begin
      edNFe1.Text := cdsMdfeDocsCHAVE_NFE.AsString;
      edPesoVol1.Value := cdsMdfeDocsPESO_VOLUME.Value;
      edValorNFe1.Value := cdsMdfeDocsVALOR_NF.Value;
      rgOrigemNFe.ItemIndex := cdsMdfeDocsTIPO_DOC.AsInteger;
      edMunNfe.Text := IntToStr(cdsMdfeDocsCD_IBGE.AsInteger);
      edxMunNfe.Text := cdsMdfeDocsMUNICIPIO.AsString;
    end;
  end;
  if (modoAbertura = 'NOVO') then
  begin
    edNumMdfe.Text := '';
    dtaMdfe.Date   := now;
    //edtEmitUF.Text := '';
    edUFDescarga.Text := '';
    //edtEmitCodCidade.Text := '';
    //edtEmitCidade.Text := '';
    edCodIbgeDescarga.Text := '';
    edMunicipioDescarga.Text := '';
    edMunNfe.Text := '';
    edxMunNfe.Text := '';
    edNFe1.Text := '';
    {edNFe2.Text := '';
    edNFe3.Text := '';
    edNFe4.Text := '';
    edNFe5.Text := '';
    edNFe6.Text := '';
    edNFe7.Text := '';}
    cbTransporte.ItemIndex := 1; // Tipo_Transp: 1 - Rodoviário Tração, 2 - Rodoviário Reboque, 3 - Navio, 4 - Balsa, 5 - Aeronave, 6 - Vagão, 7 - Outros
    edIdentUnidTransp.Text := ''; // Unidade Transp
    rgTipoUnidCarga.ItemIndex := 4;// Tipo Carga 1 - Container; 2 - ULD; 3 - Pallet; 4 - Outros;
    edIdentUnidCarga.Text := ''; // Unidadde Carga
    edQtdeNF.Text := '0'; //QTDE_NFE
    edValorTotal.Value := 0; //VALOR_CARGA
    cbUnidade.ItemIndex := 1;// UNID_PESO
    edPesoBruto.Value := 0; // PESO_BRUTO
    edAutorizado1.Text := ''; // CNPJ_AUTORIZADO1
    edAutorizado2.Text := ''; // CNPJ_AUTORIZADO2
    memInfoFisco.Text := ''; // INFO_ADIC_FISCO
    memInfoContribuinte.Text := ''; //INFO_ADIC_CONTRIBUINTE,
    edRntrc.Text := '';
    edCIOT.Text := '';
    edCINT.Text := '';  // RNTRC, CIOT, CINT
    edPlaca.Text := '';
    edTara.Text := ''; //PLACA, TARA
    edCapKg.Text := '';
    edCapM3.Text := ''; // CAPKG, CAPM3
    edPropCNPJ.Text := ''; // PROP_CNPJ
    edPropRntrc.Text := ''; // PROP_RNTRC
    edPropNome.Text := ''; // PROP_NOME
    edPropIE.Text := ''; // PROP_IE
    edPropUF.Text := ''; // PROP_UF
    cbPropTipo.ItemIndex := 1;// PROP_TIPO
    edCondutor.Text := ''; // CONDUTOR_NOME
    edCondutorCPF.Text := ''; //  CONDUTOR_CPF
    cbTipoRodado.ItemIndex := 1;// TIPO_RODADO
    cbTipoCarroceria.ItemIndex := 1;// TIPO_CARROCERIA
    edUFLicVeiculo.Text := ''; // UF_VEICULO
    edPesoVol1.Value := 0;
    {edPesoVol2.Value := 0;
    edPesoVol3.Value := 0;
    edPesoVol4.Value := 0;
    edPesoVol5.Value := 0;
    edPesoVol6.Value := 0;
    edPesoVol7.Value := 0;}
    edNFCnpj1.Text := '';
    edNFNum1.Text := '';
    edNFSerie1.Text := '';
    edNFUF1.Text := '';
    edNFPin1.Text := '';
    edNFValor1.Value := 0;
    edNFCnpj2.Text := '';
    edNFNum2.Text := '';
    edNFSerie2.Text := '';
    edNFUF2.Text := '';
    edNFPin2.Text := '';
    edNFValor2.Value := 0;
    edNFCnpj3.Text := '';
    edNFNum3.Text := '';
    edNFSerie3.Text := '';
    edNFUF3.Text := '';
    edNFPin3.Text := '';
    edNFValor3.Value := 0;

  end;
  ACBrMDFe1.Configuracoes.Arquivos.PathSalvar := edtPathLogs.Text;
  ACBrMDFe1.Configuracoes.Arquivos.PathSchemas := edtPathSchemas.Text;
  if Length(edtPathSchemas.Text) <= 0
    then Dir := ExtractFileDir(application.ExeName)
    else Dir := edtPathSchemas.Text;

  //if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP)
  //  then edtPathSchemas.Text := Dir;
end;

procedure TfACBrMDFe.BitBtn1Click(Sender: TObject);
var strInsere: String;
  td: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF1_CNPJ VARCHAR(20)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF1_NUM INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF1_SERIE INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF1_UF CHAR(2)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF1_PIN INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF1_VALOR DOUBLE PRECISION');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF2_CNPJ VARCHAR(20)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF2_NUM INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF2_SERIE INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF2_UF CHAR(2)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF2_PIN INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF2_VALOR DOUBLE PRECISION');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;

  // nf3
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF3_CNPJ VARCHAR(20)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF3_NUM INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF3_SERIE INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF3_UF CHAR(2)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF3_PIN INTEGER');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD NF3_VALOR DOUBLE PRECISION');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  // Protocolo Encerramento
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD PROTOCOLOENC VARCHAR(20)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;

  // Protocolo Encerramento
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD PROTOCOLOENV VARCHAR(20)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;

  // Protocolo Cancelamento
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD PROTOCOLOCAN VARCHAR(20)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;

  // Tabela DOCUMENTOS MDFE
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('CREATE TABLE MDFE_DOCS (' +
       ' MDFE INTEGER ' +
       ', CHAVE_NFE VARCHAR(60)' +
       ', PESO_VOLUME DOUBLE PRECISION ' +
       ', VALOR_NF DOUBLE PRECISION ' +
       ', PRIMARY KEY (MDFE, CHAVE_NFE) ' +
       ')');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    //MessageDlg('Erro pra criar a tabela MDF_DOCS', mtError, [mbOK], 0);
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  // Protocolo Cancelamento
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD UF_PERCURSO2 CHAR(2)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD UF_PERCURSO3 CHAR(2)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD UF_PERCURSO4 CHAR(2)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD UF_PERCURSO5 CHAR(2)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD UF_PERCURSO6 CHAR(2)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE_DOCS ADD CD_IBGE INTEGER');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE_DOCS ADD MUNICIPIO VARCHAR(50)');    
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD TIPO_EMITENTE INTEGER');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE_DOCS ADD TIPO_DOC Integer');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;
  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD SEG_RESP INTEGER');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD SEG_CNPJ_EMITENTE VARCHAR(20)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD SEG_SEGURADORA VARCHAR(100)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD SEG_CNPJ_SEGURADORA VARCHAR(20)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD SEG_APOLICE VARCHAR(60)');
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD SEG_AVERBA VARCHAR(60)');        
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;

  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD CNPJ_CONTRATANTE VARCHAR(20)');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;

  dm.sc.StartTransaction(TD);
  try
    dm.sc.ExecuteDirect('ALTER TABLE MDFE ADD REBOQUE_CINT2 VARCHAR( 10 )' +
      ', ADD REBOQUE_PLACA2          VARCHAR( 10 )'+
      ', ADD REBOQUE_TARA2           INTEGER' +
      ', ADD REBOQUE_CAPKG2          INTEGER' +
      ', ADD REBOQUE_CAPM32          INTEGER' +
      ', ADD REBOQUE_CPF2            VARCHAR( 14 )'+
      ', ADD REBOQUE_CNPJ2           VARCHAR( 20 )' +
      ', ADD REBOQUE_RNTRC2          VARCHAR( 10 )' +
      ', ADD REBOQUE_NOME2           VARCHAR( 60 )' +
      ', ADD REBOQUE_IE2             VARCHAR( 20 )' +
      ', ADD REBOQUE_UF2             CHAR( 2 )' +
      ', ADD REBOQUE_TIPOPROP2       SMALLINT' +
      ', ADD REBOQUE_TIPOCARROCERIA2   SMALLINT' +
      ', ADD REBOQUE_UFVEICULO2      CHAR( 2 )');
    dm.sc.Commit(TD); {on success, commit the changes};
  except
    dm.sc.Rollback(TD); {on failure, undo the changes};
  end;

  MessageDlg('Banco de Dados atualizado com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfACBrMDFe.BitBtn2Click(Sender: TObject);
var strInsere: String;
  td: TTransactionDesc;
begin
  if (edNumMdfe.Text <> '0') then
  begin
    MessageDlg('Mude o número da MDFe para 0(ZERO), para poder excluí-la.', mtInformation, [mbOK], 0);
    exit;
  end;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (modoAbertura = 'EDITAR') then
  begin
    dm.sc.StartTransaction(TD);
    try
      dm.sc.ExecuteDirect('DELETE FROM MDFE WHERE COD_MDFE = ' + IntToStr(codMdfe) +
        ' and PROTOCOLOENV IS NULL');
      dm.sc.Commit(TD); {on success, commit the changes};
      Close;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
  end;
end;

procedure TfACBrMDFe.BitBtn3Click(Sender: TObject);
begin
  if (edtEmitCidade.Text <> '') then
  begin
    if (sqlProc.Active) then
      sqlProc.Close;
    sqlProc.SQL.Clear;
    sqlProc.SQL.Add('select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO ' +
      ' from TB_IBGE where NM_MUNICIPIO LIKE ' +
      QuotedStr('%' + edtEmitCidade.Text + '%'));
    sqlProc.Open;
    if (not sqlProc.IsEmpty) then
    begin
      edtEmitCIDADE.Text := sqlProcNM_MUNICIPIO.AsString;
      edtEmitCodCidade.text := sqlProcCD_IBGE.AsString;
      edtEmitUF.Text := sqlProcCD_UF.AsString;
    end
    else begin
      MessageDlg('Cidade não localizada.', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TfACBrMDFe.BitBtn4Click(Sender: TObject);
begin
  {
  if (edtMunicipioCarrega.Text <> '') then
  begin
    if (sqlProc.Active) then
      sqlProc.Close;
    sqlProc.SQL.Clear;
    sqlProc.SQL.Add('select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO ' +
      ' from TB_IBGE where NM_MUNICIPIO LIKE ' +
      QuotedStr('%' + edtMunicipioCarrega.Text + '%'));
    sqlProc.Open;
    if (not sqlProc.IsEmpty) then
    begin
      edtMunicipioCarrega.Text := sqlProcNM_MUNICIPIO.AsString;
      edtMunCarregaIBGE.text := sqlProcCD_IBGE.AsString;
      edtUFCarregamento.Text := sqlProcCD_UF.AsString;
    end
    else begin
      MessageDlg('Cidade não localizada.', mtWarning, [mbOK], 0);
    end;
  end;  }
  if edxMunNfe.Text <> '' then
    fBuscaMun.edMun.Text := edtMunicipioCarrega.Text;
  fBuscaMun.ShowModal;
  edtMunicipioCarrega.Text := fBuscaMun.varMun;
  edtMunCarregaIBGE.Text := fBuscaMun.varIBGE;
  edtUFCarregamento.Text := fBuscaMun.varUF;
end;

procedure TfACBrMDFe.BitBtn5Click(Sender: TObject);
var
  td: TTransactionDesc;
begin
  //if (modoAbertura = 'NOVO') then
  //  gravarMDFe();
  if ((rgOrigemNFe.ItemIndex = 0) or (rgOrigemNFe.ItemIndex = 2)) then
  begin
    if (sqlProcNfe.Active) then
      sqlProcNfe.Close;
    sqlProcNFe.SQL.Clear;
    sqlProcNfe.SQL.Add('SELECT NF.NOMEXML, NF.VALOR_TOTAL_NOTA, NF.PESOBRUTO, EC.CD_IBGE ' +
      ' , EC.CIDADE ' +
      ' FROM NOTAFISCAL NF ' +
      ' LEFT OUTER JOIN ENDERECOCLIENTE EC on EC.CODCLIENTE = NF.CODCLIENTE ' +
      ' WHERE NF.NOTASERIE = ' + QuotedStr(edNfe1.Text));
    sqlProcNFe.Open;
    if (not sqlProcNFe.IsEmpty) then
    begin
      edNFe1.Text := Copy(sqlProcNfe.fieldByName('NOMEXML').AsString,0,44);
      edPesoVol1.Value := sqlProcNfe.fieldByName('PESOBRUTO').AsFloat;
      edValorNFe1.Value := sqlProcNfe.fieldByName('VALOR_TOTAL_NOTA').AsFloat;
      edMunNfe.Text := RemoveChar(sqlProcNfe.fieldByName('CD_IBGE').AsString);
      edxMunNfe.Text := sqlProcNfe.fieldByName('CIDADE').AsString;
    end;
  end;
  if (edNFe1.Text = '') then
  begin
    OpenDialog2.Title := 'Selecione a NFe';
    OpenDialog2.DefaultExt := '*.xml';
    OpenDialog2.Filter := 'Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
    OpenDialog2.InitialDir := ExtractFileDir(application.ExeName);
    if OpenDialog2.Execute then
    begin
      edNFe1.Text := Copy(ExtractFileName(OpenDialog2.FileName),0,44);
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog2.FileName);
      With ACBrNFe1.NotasFiscais.Items[0].NFe do
      begin
         if Length(infNFe.ID) > 44 then
           edNFe1.Text := Copy(infNFe.ID,4,44)
         else
           edNFe1.Text := infNFe.ID;
         edPesoVol1.Value := Transp.Vol.Items[0].pesoB;
         edValorNFe1.Value := Total.ICMSTot.vNF;
         edMunNfe.Text := IntToStr(Dest.EnderDest.cMun);
         edxMunNfe.Text := Dest.EnderDest.xMun;
         {
         if (sqlProc.Active) then
           sqlProc.Close;
         sqlProc.SQL.Clear;
         sqlProc.SQL.Add('select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO ' +
           ' from TB_IBGE where NM_MUNICIPIO = ' +
           QuotedStr(Dest.EnderDest.xMun) +
           ' and CD_UF = ' + QuotedStr(Dest.EnderDest.UF));
         sqlProc.Open;
         if (not sqlProc.IsEmpty) then
         begin
           edMunNfe.Text := sqlProcCD_IBGE.AsString;
           edxMunNfe.Text := Dest.EnderDest.xMun;
         end; }
      end;
    end;
  end;
  if ((edNFe1.Text = '') or (Length(edNFe1.Text) > 8)) then
  begin
    if (sqlProcNFe.Active) then
      sqlProcNFe.Close;
    sqlProcNFe.SQL.Clear;
    sqlProcNfe.SQL.Add('SELECT CHAVE_NFE, MDFE FROM MDFE_DOCS WHERE CHAVE_NFE = ' +
      QuotedStr(edNFe1.Text));
    sqlProcNFe.Open;
    if (not sqlProcNfe.IsEmpty) then
    begin
      if (sqlProcNfe.fieldByName('MDFE').AsInteger <> StrToInt(edNumMdfe.Text)) then
      begin
        MessageDlg('Já existe esta NFe em outra MDFE.', mtWarning, [mbOK], 0);
        exit;
      end;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sc.StartTransaction(TD);
      try
        DecimalSeparator := '.';
        dm.sc.ExecuteDirect('UPDATE MDFE_DOCS SET ' +
          ' PESO_VOLUME = ' + FloatToStr(edPesoVol1.Value) +
          ' ,VALOR_NF = ' + FloatToStr(edValorNFe1.Value) +
          ' ,CD_IBGE = ' + RemoveChar(edMunNfe.Text) +
          ' ,MUNICIPIO = ' + QuotedStr(edxMunNfe.Text) +
          ' ,TIPO_DOC = ' + IntToStr(rgOrigemNFe.ItemIndex) + 
          ' WHERE CHAVE_NFE = ' + QuotedStr(edNFe1.Text));
        dm.sc.Commit(TD); {on success, commit the changes};
        if (cdsMun.Active) then
          cdsMun.Close;
        cdsMun.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
        cdsMun.Open;

        if (cdsMdfeDocs.Active) then
          cdsMdfeDocs.Close;
        cdsMdfeDocs.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
        cdsMdfeDocs.Params[1].AsInteger := 0;
        cdsMdfeDocs.Open;
        DecimalSeparator := ',';
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sc.Rollback(TD); //on failure, undo the changes}
          DecimalSeparator := ',';
          exit;
        end;
      end;
    end
    else begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sc.StartTransaction(TD);
      try
        if ((edMunNfe.Text = '') or (edxMunNfe.Text = '')) then
        begin
           MessageDlg('Informe o Código IBGE do Mun./Nome Municipio.', mtWarning, [mbOK], 0);
           exit;
        end;
        DecimalSeparator := '.';
        dm.sc.ExecuteDirect('INSERT INTO MDFE_DOCS (MDFE, CHAVE_NFE, PESO_VOLUME, ' +
          'VALOR_NF, CD_IBGE, MUNICIPIO, TIPO_DOC) VALUES (' +
          edNumMdfe.Text + ', ' + QuotedStr(edNFe1.Text) +
          ', ' + FloatToStr(edPesoVol1.Value) +
          ', ' + FloatToStr(edValorNFe1.Value) +
          ', ' + RemoveChar(edMunNfe.Text) +
          ', ' + QuotedStr(edxMunNfe.Text) +
          ', ' + IntToStr(rgOrigemNFe.ItemIndex) + 
          ')');
        //             MDFE WHERE COD_MDFE = ' + IntToStr(codMdfe) +

        dm.sc.Commit(TD); {on success, commit the changes};
        DecimalSeparator := ',';
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sc.Rollback(TD); //on failure, undo the changes}
          DecimalSeparator := ',';
          exit;
        end;
      end;
    end;
  end;
  if (cdsMun.Active) then
    cdsMun.Close;
  cdsMun.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
  cdsMun.Open;

  if (cdsMdfeDocs.Active) then
    cdsMdfeDocs.Close;
  cdsMdfeDocs.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
  cdsMdfeDocs.Params[1].AsInteger := 0;
  cdsMdfeDocs.Open;
  cdsMdfeDocs.DisableControls;
  edValorTotal.Value := 0;
  edPesoBruto.Value := 0;
  while not cdsMdfeDocs.Eof do
  begin
    edValorTotal.Value := edValorTotal.Value + cdsMdfeDocsVALOR_NF.AsFloat;
    edPesoBruto.Value := edPesoBruto.Value + cdsMdfeDocsPESO_VOLUME.AsFloat;
    edQtdeNF.Text := IntToStr(cdsMdfeDocs.RecNo);
    cdsMdfeDocs.Next;
  end;
  cdsMdfeDocs.EnableControls;
end;

procedure TfACBrMDFe.BitBtn6Click(Sender: TObject);
begin
  if (cdsMdfeDocs.RecNo > 0) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sc.StartTransaction(TD);
    try
      dm.sc.ExecuteDirect('DELETE FROM MDFE_DOCS ' +
        ' WHERE MDFE = ' + IntToStr(cdsMdfeDocsMDFE.AsInteger) +
        '   AND CHAVE_NFE = ' + QuotedStr(cdsMdfeDocsCHAVE_NFE.AsString));
      dm.sc.Commit(TD); {on success, commit the changes};

      if (cdsMdfeDocs.Active) then
        cdsMdfeDocs.Close;
      cdsMdfeDocs.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
      cdsMdfeDocs.Params[1].AsInteger := 0;
      cdsMdfeDocs.Open;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
    if (cdsMdfeDocs.Active) then
      cdsMdfeDocs.Close;
    cdsMdfeDocs.Params[0].AsInteger := StrToInt(edNumMdfe.Text);
    cdsMdfeDocs.Params[1].AsInteger := 0;
    cdsMdfeDocs.Open;
    cdsMdfeDocs.DisableControls;
    edValorTotal.Value := 0;
    edPesoBruto.Value := 0;
    while not cdsMdfeDocs.Eof do
    begin
      edValorTotal.Value := edValorTotal.Value + cdsMdfeDocsVALOR_NF.AsFloat;
      edPesoBruto.Value := edPesoBruto.Value + cdsMdfeDocsPESO_VOLUME.AsFloat;
      edQtdeNF.Text := IntToStr(cdsMdfeDocs.RecNo);
      cdsMdfeDocs.Next;
    end;
    cdsMdfeDocs.EnableControls;
  end;
end;

procedure TfACBrMDFe.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  edNFe1.Text := cdsMdfeDocsCHAVE_NFE.AsString;
  edPesoVol1.Value := cdsMdfeDocsPESO_VOLUME.Value;
  edValorNFe1.Value := cdsMdfeDocsVALOR_NF.Value;
  edMunNfe.Text := IntToStr(cdsMdfeDocsCD_IBGE.AsInteger);
  edxMunNfe.Text := cdsMdfeDocsMUNICIPIO.AsString;
end;

procedure TfACBrMDFe.BitBtn7Click(Sender: TObject);
begin
  edNFe1.Text := '';
  edPesoVol1.Text := '';
  edValorNFe1.Text := '';
  edNFe1.SetFocus;
end;

procedure TfACBrMDFe.BitBtn8Click(Sender: TObject);
begin
  {
  if (edMunicipioDescarga.Text <> '') then
  begin
    if (sqlProc.Active) then
      sqlProc.Close;
    sqlProc.SQL.Clear;
    sqlProc.SQL.Add('select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO ' +
      ' from TB_IBGE where NM_MUNICIPIO LIKE ' +
      QuotedStr('%' + edMunicipioDescarga.Text + '%'));
    sqlProc.Open;
    if (not sqlProc.IsEmpty) then
    begin
      edMunicipioDescarga.Text := sqlProcNM_MUNICIPIO.AsString;
      edCodIbgeDescarga.text := sqlProcCD_IBGE.AsString;
      edUFDescarga.Text := sqlProcCD_UF.AsString;
    end
    else begin
      MessageDlg('Cidade não localizada.', mtWarning, [mbOK], 0);
    end;
  end;
  }
  if edxMunNfe.Text <> '' then
    fBuscaMun.edMun.Text := edMunicipioDescarga.Text;
  fBuscaMun.ShowModal;
  edMunicipioDescarga.Text := fBuscaMun.varMun;
  edCodIbgeDescarga.Text := fBuscaMun.varIBGE;
  edUFDescarga.Text := fBuscaMun.varUF;
end;

procedure TfACBrMDFe.BitBtn9Click(Sender: TObject);
begin
  Close;
end;

procedure TfACBrMDFe.BitBtn10Click(Sender: TObject);
begin
  {
  if (edxMunNfe.Text <> '') then
  begin
    if (sqlProc.Active) then
      sqlProc.Close;
    sqlProc.SQL.Clear;
    sqlProc.SQL.Add('select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO ' +
      ' from TB_IBGE where NM_MUNICIPIO LIKE ' +
      QuotedStr('%' + edxMunNfe.Text + '%'));
    sqlProc.Open;
    if (not sqlProc.IsEmpty) then
    begin
      edxMunNfe.Text := sqlProcNM_MUNICIPIO.AsString;
      edMunNfe.text := sqlProcCD_IBGE.AsString;
    end
    else begin
      MessageDlg('Cidade não localizada.', mtWarning, [mbOK], 0);
    end;
  end;    }
  if edxMunNfe.Text <> '' then
    fBuscaMun.edMun.Text := edxMunNfe.Text;
  fBuscaMun.ShowModal;
  edxMunNfe.Text := fBuscaMun.varMun;
  edMunNfe.Text := fBuscaMun.varIBGE;
end;

procedure TfACBrMDFe.BitBtn11Click(Sender: TObject);
begin
  pnCity.Visible := False;
end;

procedure TfACBrMDFe.BuscaCidade;
begin
  //DBGrid1.Columns.Add := 'CD_IBGE';
  pnCity.Visible := True;
end;

procedure TfACBrMDFe.cbSegRespChange(Sender: TObject);
begin

  if (cbSegResp.ItemIndex = 0) then
  begin
    edCnpjCpfContratante.Text := edtEmitCNPJ.Text;
  end;
end;

procedure TfACBrMDFe.cbTransporteChange(Sender: TObject);
begin
  if cbTransporte.ItemIndex = 1 then
    GroupBox16.Visible := True;
  if cbTransporte.ItemIndex <> 1 then
    GroupBox16.Visible := False;

end;

end.
