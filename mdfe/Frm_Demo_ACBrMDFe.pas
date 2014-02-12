{$I ACBr.inc}

unit Frm_Demo_ACBrMDFe;

interface

uses IniFiles, ShellAPI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OleCtrls, SHDocVw, StdCtrls, Buttons, ExtCtrls,
  pcnConversao, pmdfeConversao, ACBrMDFe, ACBrMDFeDAMDFeClass,
  ACBrMDFeDAMDFEQRClass, FMTBcd, DB, SqlExpr, Mask, JvExMask, JvToolEdit,
  JvBaseEdits;

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
    ACBrMDFe1: TACBrMDFe;
    DAMDFE: TACBrMDFeDAMDFEQR;
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
    Label46: TLabel;
    edNFe2: TEdit;
    Label47: TLabel;
    edNFe3: TEdit;
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
    Label59: TLabel;
    edPesoVol2: TJvCalcEdit;
    Label60: TLabel;
    edPesoVol3: TJvCalcEdit;
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
    {
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    }
  private
    { Private declarations }
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
  public
    { Public declarations }
  end;

var
  fACBrMDFe: TfACBrMDFe;

implementation

uses
 FileCtrl, DateUtils,
 ufrmStatus,
 ACBrMDFeManifestos, ACBrMDFeUtil, udm, pmdfeMDFe;

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
    edtPathLogs.Text         := Ini.ReadString( 'Geral','PathSalvar'  , '');

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
 ACBrMDFe1.Configuracoes.Arquivos.PastaMensal      := True;
 ACBrMDFe1.Configuracoes.Arquivos.PathMDFe         := Trim(edtPathLogs.Text);
 ACBrMDFe1.Configuracoes.Arquivos.Salvar           := True;

 PathMensal := ACBrMDFe1.Configuracoes.Arquivos.GetPathMDFe(0);

 // Configurações -> Geral
 ACBrMDFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));
 ACBrMDFe1.Configuracoes.Geral.PathSalvar   := PathMensal;
 ACBrMDFe1.Configuracoes.Geral.Salvar       := ckSalvar.Checked;
 case rgVersaoDF.ItemIndex of
  0: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve100;
  1: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve100a;
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
   ACBrMDFe1.DAMDFe.ExpandirLogoMarca := False;
   ACBrMDFe1.DAMDFe.ImprimirDescPorc  := False;
   ACBrMDFe1.DAMDFe.Logo              := edtLogoMarca.Text;
   ACBrMDFe1.DAMDFe.MostrarPreview    := True;
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
begin
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
    Ide.tpEmit  := teTranspCargaPropria;
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
    Ide.UFIni   := edtEmitUF.Text;
    Ide.UFFim   := edUFDescarga.Text;

    with Ide.infMunCarrega.Add do
    begin
      cMunCarrega := StrToInt(RemoveChar(edtEmitCodCidade.Text));
      xMunCarrega := edtEmitCidade.Text;
    end;

    //
    // Dados do Emitente
    //
    Emit.CNPJ  := edtEmitCNPJ.Text;
    Emit.IE    := edtEmitIE.Text;
    Emit.xNome := edtEmitRazao.Text;
    Emit.xFant := edtEmitFantasia.Text;

    Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
    Emit.EnderEmit.nro     := edtEmitNumero.Text;
    Emit.EnderEmit.xCpl    := edtEmitComp.Text;
    Emit.EnderEmit.xBairro := edtEmitBairro.Text;
    Emit.EnderEmit.cMun    := StrToInt(RemoveChar(edtEmitCodCidade.Text));
    Emit.EnderEmit.xMun    := edtEmitCidade.Text;
    Emit.EnderEmit.CEP     := StrToIntDef(edtEmitCEP.Text, 0);
    Emit.EnderEmit.UF      := edtEmitUF.Text;
    Emit.EnderEmit.fone    := edtEmitFone.Text;
    Emit.enderEmit.email   := edtSmtpUser.Text;

    rodo.RNTRC := edRntrc.Text;
    rodo.CIOT  := edCIOT.Text;

    rodo.veicTracao.cInt  := edCINT.Text;
    rodo.veicTracao.placa := edPlaca.Text;
    rodo.veicTracao.tara  := StrToInt(edTara.Text);
    rodo.veicTracao.capKG := StrToInt(edCapKg.Text);
    rodo.veicTracao.capM3 := strToInt(edCapM3.Text);

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

    {with rodo.veicReboque.Add do
    begin
      cInt  := '002';
      placa := 'XYZ4567';
      tara  := 4000;
      capKG := 3000;
      capM3 := 300;
      //     RNTRC := '87654321';
    end;
    }
    {with rodo.valePed.disp.Add do
    begin
      CNPJForn := '12345678000199';
      CNPJPg   := '21543876000188';
      nCompra  := '789';
    end;
    }
    with infDoc.infMunDescarga.Add do
    begin
      cMunDescarga := StrToInt(edCodIbgeDescarga.Text);
      xMunDescarga := edMunicipioDescarga.Text;

      with infNFe.Add do
      begin
        chNFe := edNFe1.Text;

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
               end;
              qtdRat := 1.0;}
            end;
            qtdRat := 1.0;
          end;
        end; // fim do with NFe7
      end;
    end;
    tot.qNFe := StrToInt(edQtdeNF.Text);
    tot.vCarga := edValorTotal.Value;
    // UnidMed = (,uKG, uTON, uUNIDADE, uLITROS);
    case cbUnidade.ItemIndex of
      0: tot.cUnid := uM3;
      1: tot.cUnid := uKG;
      2: tot.cUnid := uTON;
      3: tot.cUnid := uUNIDADE;
      4: tot.cUnid := uLITROS;
      5: tot.cUnid := uMMBTU;
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
  edtNumSerie.Text := ACBrMDFe1.Configuracoes.Certificados.SelecionarCertificado;
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
  ACBrMDFe1.Configuracoes.Geral.PathSalvar := edtPathLogs.Text;
  LerConfiguracao;
 //gravarMDFe;
end;

procedure TfACBrMDFe.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
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
 //if not(InputQuery('WebServices Enviar', 'Numero do Manifesto', vAux))
 // then exit;
 if (dm.sqlBusca.Active) then
   dm.sqlBusca.Close;
 dm.sqlBusca.sql.Clear;
 dm.sqlBusca.sql.Add('SELECT MAX(COD_MDFE) COD FROM MDFE');
 dm.sqlBusca.Open;
 if (dm.sqlBusca.fieldByName('COD').asInteger > 0) then
   codMDFe := dm.sqlBusca.fieldByName('COD').asInteger + 1
 else
   codMDFe := 1;
   
 vAux := IntToStr(codMDFe);

 ACBrMDFe1.Manifestos.Clear;
 GerarMDFe(vAux);
 ACBrMDFe1.Manifestos.Items[0].SaveToFile('');

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
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   ACBrMDFe1.Manifestos.Valida;
   showmessage('Manifesto Eletrônico de Documentos Fiscais Valido');
  end;
end;

procedure TfACBrMDFe.btnCriarEnviarClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
 {if not(InputQuery('WebServices Enviar', 'Numero do Manifesto', vAux))
  then exit;

 if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote))
  then exit;}
 vAux := IntToStr(codMdfe);
 vNumLote := '1';

 ACBrMDFe1.Manifestos.Clear;
 GerarMDFe(vAux);
 ACBrMDFe1.Enviar(StrToInt(vNumLote));

 MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.Retorno.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.Retorno.RetWS);
 LoadXML(MemoResp, WBResposta);

 PageControl2.ActivePageIndex := 5;
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
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

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
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);

   with ACBrMDFe1.EventoMDFe.Evento.Add do
    begin
     infEvento.chMDFe   := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
     infEvento.CNPJ     := edtEmitCNPJ.Text;
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

   ACBrMDFe1.EnviarEventoMDFe( 1 ); // 1 = Numero do Lote

   MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
   LoadXML(MemoResp, WBResposta);
  end;
end;

procedure TfACBrMDFe.btnCancelamentoClick(Sender: TObject);
var
 vAux : String;
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
    then exit;

   with ACBrMDFe1.EventoMDFe.Evento.Add do
    begin
     infEvento.chMDFe   := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
     infEvento.CNPJ     := edtEmitCNPJ.Text;
     infEvento.dhEvento := now;
//  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
//                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
//                  teEncerramento);
     infEvento.tpEvento   := teCancelamento;
     infEvento.nSeqEvento := 1;

     infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
     infEvento.detEvento.xJust := trim(vAux);
    end;

   ACBrMDFe1.EnviarEventoMDFe( 1 ); // 1 = Numero do Lote

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
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

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
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

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
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

  if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   CC:=TstringList.Create;
   CC.Add('email_1@provedor.com'); //especifique um email válido
   CC.Add('email_2@provedor.com.br'); //especifique um email válido
   ACBrMDFe1.Manifestos.Items[0].EnviarEmail(edtSmtpHost.Text
                                             , edtSmtpPort.Text
                                             , edtSmtpUser.Text
                                             , edtSmtpPass.Text
                                             , edtSmtpUser.Text
                                             , Para
                                             , edtEmailAssunto.Text
                                             , mmEmailMsg.Lines
                                             , cbEmailSSL.Checked
                                             , False //Enviar PDF junto
                                             , nil //Lista com emails que serão enviado cópias - TStrings
                                             , nil // Lista de anexos - TStrings
                                             , False ); //Pede confirmação de leitura do email
   CC.Free;
  end;
end;

procedure TfACBrMDFe.btnImprimirEventoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-mdfe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

  ACBrMDFe1.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

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
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

  ACBrMDFe1.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

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
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

  ACBrMDFe1.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Geral.PathSalvar;

  if OpenDialog1.Execute then
  begin
    Evento := TStringList.Create;
    Evento.Clear;
    Evento.Add(OpenDialog1.FileName);
    ACBrMDFe1.EventoMDFe.Evento.Clear;
    ACBrMDFe1.EventoMDFe.LerXML(OpenDialog1.FileName);
    CC:=TstringList.Create;
    CC.Add('andrefmoraes@gmail.com'); //especifique um email válido
    CC.Add('anfm@zipmail.com.br');    //especifique um email válido
    ACBrMDFe1.EnviarEmailEvento(edtSmtpHost.Text
                             , edtSmtpPort.Text
                             , edtSmtpUser.Text
                             , edtSmtpPass.Text
                             , edtSmtpUser.Text
                             , Para
                             , edtEmailAssunto.Text
                             , mmEmailMsg.Lines
                             , cbEmailSSL.Checked // SSL - Conexão Segura
                             , True //Enviar PDF junto
                             , CC //Lista com emails que serão enviado cópias - TStrings
                             , Evento // Lista de anexos - TStrings
                             , False  //Pede confirmação de leitura do email
                             , False  //Aguarda Envio do Email(não usa thread)
                             , 'ACBrMDFe' // Nome do Rementente
                             , cbEmailSSL.Checked ); // Auto TLS
    CC.Free;
    Evento.Free;
  end;
end;

procedure TfACBrMDFe.gravarMDFe;
var strInsere: String;
  codMDFe: Integer;
begin
  codMDFe := 1;
  DecimalSeparator := '.';
  strInsere := 'INSERT INTO MDFE (COD_MDFE, CODEMITENTE, ' +
    ' TIPOEMITENTE, MODELO, SERIE, NUMERO_MDF, ' +
    ' CHAVE_MDF, MODALIDADE, DATA_MDF, ' +
    ' FORMA_EMISSAO, VERSAO_APLICATIVO, ' +
    ' UF_CARREGAMENTO, UF_DESCARREGAMENTO, ' +
    ' COD_MUNICIPIO_CARREG, MUNICIPO_CARREG, ' +
    ' UF_PERCURSO, COD_MUNICIPIO_DESCARREG, ' +
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
    ' PESO_VOLUME1, PESO_VOLUME2, ' +
    ' PESO_VOLUME3, PESO_VOLUME4, PESO_VOLUME5, ' +
    ' PESO_VOLUME6, PESO_VOLUME7, ' +
    ' CHAVE_MDFE ' +
    ') VALUES ( ';

    {    ' REBOQUE_CINT, REBOQUE_PLACA, ' +
    ' REBOQUE_TARA, REBOQUE_CAPKG, REBOQUE_CAPM3, ' +
    ' REBOQUE_CPF, REBOQUE_CNPJ, REBOQUE_RNTRC, ' +
    ' REBOQUE_NOME, REBOQUE_IE, REBOQUE_UF, ' +
    ' REBOQUE_TIPOPROP, REBOQUE_TIPOCARROCERIA, ' +
    ' REBOQUE_UFVEICULO, ' +}

  strInsere := strInsere + IntToStr(codMDFe);
  strInsere := strInsere + ', ' + IntToStr(codEmitente);
  strInsere := strInsere + ', ' + IntToStr(2) + ', 58, 1 ';   // 1-teTransportadora, 2-teTranspCargaPropria + Modelo e Serie
  strInsere := strInsere + ', ' + IntToStr(codMDFe) + ', ' + IntToStr(codMDFe) + ', 1';  // MODALIDADE :1-moRodoviario, 2-moAereo, moAquaviario, moFerroviario
  strInsere := strInsere + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy hh:MM', now));
  strInsere := strInsere + ', 1,' + QuotedStr('1.01'); //TpcnTipoEmissao = (1-teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
  strInsere := strInsere + ', ' + QuotedStr(edtEmitUF.Text) + ', ' +  QuotedStr(edUFDescarga.Text);
  strInsere := strInsere + ', ' + QuotedStr(edtEmitCodCidade.Text) + ', ' + QuotedStr(edtEmitCidade.Text);
  strInsere := strInsere + ', ' + QuotedStr('') + ', ' + QuotedStr(edCodIbgeDescarga.Text);
  strInsere := strInsere + ', ' + QuotedStr(edMunicipioDescarga.Text) + ', ' + QuotedStr(edNFe1.Text);
  strInsere := strInsere + ', ' + editParaSql('S',edNFe2.Text);
  strInsere := strInsere + ', ' + editParaSql('S',edNFe3.Text);
  strInsere := strInsere + ', ' + editParaSql('S',edNFe4.Text);
  strInsere := strInsere + ', ' + editParaSql('S',edNFe5.Text);
  strInsere := strInsere + ', ' + editParaSql('S',edNFe6.Text);
  strInsere := strInsere + ', ' + editParaSql('S',edNFe7.Text);
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
  strInsere := strInsere + ', ' + QuotedStr(chave_mdfe);

  {rodo.veicTracao.tpRod := trTruck; //trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros
  rodo.veicTracao.tpCar := tcNaoAplicavel; // tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider
  rodo.veicTracao.UF    := edUFLicVeiculo.Text;
   }
  strInsere := strInsere + ')';
  DecimalSeparator := ',';
  dm.sc.ExecuteDirect(strInsere);
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

end.
