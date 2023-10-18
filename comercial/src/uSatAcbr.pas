unit uSatAcbr ;

interface

uses
  Classes, SysUtils, Forms,
  Controls, Graphics, Dialogs, StdCtrls, ActnList, Menus, ExtCtrls, Buttons,
  ComCtrls, Spin, ACBrSAT, ACBrSATClass, ACBrPosPrinter, ACBrBase,
  OleCtrls, SHDocVw ,ACBrSATExtratoClass, ACBrSATExtratoESCPOS;

const
  cAssinatura = '9d4c4eef8c515e2c1269c2e4fff0719d526c5096422bf1defa20df50ba06469'+
                'a28adb25ba0447befbced7c0f805a5cc58496b7b23497af9a04f69c77f17c0c'+
                'e68161f8e4ca7e3a94c827b6c563ca6f47aea05fa90a8ce3e4327853bb2d664'+
                'ba226728fff1e2c6275ecc9b20129e1c1d2671a837aa1d265b36809501b519d'+
                'bc08129e1c1d2671a837aa1d265b36809501b519dbc08129e1c1d2671a837aa'+
                '1d265b36809501b519dbc08129e1c' ;
type

  { TForm1 }

  TfSatAcbr = class(TForm)
    ACBrSAT1 : TACBrSAT ;
    bImpressora: TButton;
    bInicializar : TButton ;
    btLerParams: TButton;
    btSalvarParams: TButton;
    btSerial: TBitBtn;
    cbUsarEscPos: TRadioButton;
    cbUsarFortes: TRadioButton;
    cbxSalvarCFe: TCheckBox;
    cbxModelo : TComboBox ;
    cbxAmbiente : TComboBox ;
    cbxIndRatISSQN : TComboBox ;
    cbxRegTribISSQN : TComboBox ;
    cbxRegTributario : TComboBox ;
    cbxUTF8: TCheckBox;
    cbxFormatXML: TCheckBox;
    cbPreview: TCheckBox;
    edChaveCancelamento: TEdit;
    edLog : TEdit ;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label6: TLabel;
    lImpressora: TLabel;
    mCancelamentoEnviar: TMemo;
    miGerarXMLCancelamento: TMenuItem;
    miEnviarCancelamento: TMenuItem;
    MenuItem12: TMenuItem;
    miImprimirExtratoCancelamento: TMenuItem;
    Panel2: TPanel;
    PrintDialog1: TPrintDialog;
    seLargura: TSpinEdit;
    seMargemDireita: TSpinEdit;
    seMargemEsquerda: TSpinEdit;
    seMargemFundo: TSpinEdit;
    seMargemTopo: TSpinEdit;
    sfeVersaoEnt: TEdit;
    Label13: TLabel;
    Label17 : TLabel ;
    Label8: TLabel;
    mLimpar : TMenuItem ;
    mImprimirExtratoVendaResumido : TMenuItem ;
    mImprimirExtratoVenda : TMenuItem ;
    seNumeroCaixa : TSpinEdit ;
    edNomeDLL : TEdit ;
    edtEmitCNPJ : TEdit ;
    edtEmitIE : TEdit ;
    edtEmitIM : TEdit ;
    edtSwHAssinatura : TEdit ;
    edtSwHCNPJ : TEdit ;
    edtCodigoAtivacao : TEdit ;
    edtCodUF : TEdit ;
    GroupBox1 : TGroupBox ;
    gpOperacao : TGroupBox ;
    Label1 : TLabel ;
    Label10 : TLabel ;
    Label11 : TLabel ;
    Label12 : TLabel ;
    Label14 : TLabel ;
    Label15 : TLabel ;
    Label16 : TLabel ;
    Label2 : TLabel ;
    Label3 : TLabel ;
    Label4 : TLabel ;
    Label5 : TLabel ;
    Label9 : TLabel ;
    MainMenu1 : TMainMenu ;
    MenuItem1 : TMenuItem ;
    MenuItem2 : TMenuItem ;
    mAtivarSAT : TMenuItem ;
    mComunicarCertificado : TMenuItem ;
    mAssociarAssinatura : TMenuItem ;
    mBloquearSAT : TMenuItem ;
    MenuItem3 : TMenuItem ;
    mDesbloquearSAT : TMenuItem ;
    MenuItem4 : TMenuItem ;
    MenuItem5 : TMenuItem ;
    MenuItem6 : TMenuItem ;
    mConsultarStatusOperacional : TMenuItem ;
    mConsultarSAT : TMenuItem ;
    mConsultarNumeroSessao : TMenuItem ;
    MenuItem7 : TMenuItem ;
    MenuItem8 : TMenuItem ;
    mAtaulizarSoftwareSAT : TMenuItem ;
    mConfigurarInterfaceRede : TMenuItem ;
    mExtrairLogs : TMenuItem ;
    mLog : TMemo ;
    mTesteFimAFim : TMenuItem ;
    mEnviarVenda : TMenuItem ;
    mGerarVenda : TMenuItem ;
    OpenDialog1 : TOpenDialog ;
    PageControl1 : TPageControl ;
    PageControl2 : TPageControl ;
    Panel1 : TPanel ;
    SbArqLog : TSpeedButton ;
    sePagCod: TSpinEdit;
    Splitter1 : TSplitter ;
    StatusBar1 : TStatusBar ;
    mVendaEnviar: TMemo;
    mRecebido: TWebBrowser;
    Impressao: TTabSheet;
    tsCancelamento: TTabSheet;
    tsDadosEmit : TTabSheet ;
    tsDadosSAT : TTabSheet ;
    tsDadosSwHouse : TTabSheet ;
    tsRecebido : TTabSheet ;
    tsLog : TTabSheet ;
    tsGerado : TTabSheet ;
    tsRede: TTabSheet;
    gbPPPoE: TGroupBox;
    lSSID7: TLabel;
    edRedeUsuario: TEdit;
    lSSID8: TLabel;
    edRedeSenha: TEdit;
    gbIPFix: TGroupBox;
    lSSID2: TLabel;
    edRedeIP: TEdit;
    lSSID3: TLabel;
    edRedeMask: TEdit;
    lSSID4: TLabel;
    edRedeGW: TEdit;
    lSSID5: TLabel;
    lSSID6: TLabel;
    edRedeDNS1: TEdit;
    edRedeDNS2: TEdit;
    rgRedeTipoInter: TRadioGroup;
    gbWiFi: TGroupBox;
    lSSID: TLabel;
    edRedeSSID: TEdit;
    Label24: TLabel;
    cbxRedeSeg: TComboBox;
    lSSID1: TLabel;
    edRedeCodigo: TEdit;
    rgRedeTipoLan: TRadioGroup;
    gbProxy: TGroupBox;
    cbxRedeProxy: TComboBox;
    lSSID9: TLabel;
    edRedeProxyIP: TEdit;
    lSSID10: TLabel;
    lSSID11: TLabel;
    edRedeProxyUser: TEdit;
    lSSID12: TLabel;
    edRedeProxySenha: TEdit;
    edRedeProxyPorta: TSpinEdit;
    tsRedeXML: TTabSheet;
    mRede: TWebBrowser;
    N1: TMenuItem;
    N2: TMenuItem;
    LerXMLinterfaceRede1: TMenuItem;
    GerarXMLInterfaceRede1: TMenuItem;
    SaveDialog1: TSaveDialog;
    cbxSalvarCFeCanc: TCheckBox;
    cbxSalvarEnvio: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    cbxSepararPorMES: TCheckBox;
    ACBrPosPrinter1: TACBrPosPrinter;
    cbxModeloPosPrinter: TComboBox;
    Label25: TLabel;
    Label26: TLabel;
    cbxPorta: TComboBox;
    Label7: TLabel;
    cbxPagCodigo: TComboBox;
    Label27: TLabel;
    seColunas: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seLinhasPular: TSpinEdit;
    Label28: TLabel;
    Label29: TLabel;
    cbImprimir1Linha: TCheckBox;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    procedure ACBrSAT1Log(const AString: String);
    procedure bImpressoraClick(Sender: TObject);
    procedure bInicializarClick(Sender : TObject) ;
    procedure btLerParamsClick(Sender : TObject) ;
    procedure btSalvarParamsClick(Sender : TObject) ;
    procedure btSerialClick(Sender: TObject);
    procedure cbUsarEscPosClick(Sender: TObject);
    procedure cbUsarFortesClick(Sender: TObject);
    procedure cbxModeloChange(Sender : TObject) ;
    procedure cbxUTF8Change(Sender: TObject);
    procedure miGerarXMLCancelamentoClick(Sender: TObject);
    procedure miEnviarCancelamentoClick(Sender: TObject);
    procedure miImprimirExtratoCancelamentoClick(Sender: TObject);
    procedure mTesteFimAFimClick(Sender: TObject);
    procedure sfeVersaoEntChange(Sender: TObject);
    procedure FormCreate(Sender : TObject) ;
    procedure mAssociarAssinaturaClick(Sender : TObject) ;
    procedure mAtaulizarSoftwareSATClick(Sender : TObject) ;
    procedure mAtivarSATClick(Sender : TObject) ;
    procedure mBloquearSATClick(Sender : TObject) ;
    procedure mComunicarCertificadoClick(Sender : TObject) ;
    procedure mConfigurarInterfaceRedeClick(Sender : TObject) ;
    procedure mConsultarNumeroSessaoClick(Sender : TObject) ;
    procedure mConsultarSATClick(Sender : TObject) ;
    procedure mConsultarStatusOperacionalClick(Sender : TObject) ;
    procedure mDesbloquearSATClick(Sender : TObject) ;
    procedure MenuItem5Click(Sender : TObject) ;
    procedure mEnviarVendaClick(Sender : TObject) ;
    procedure mExtrairLogsClick(Sender : TObject) ;
    procedure mGerarVendaClick(Sender : TObject) ;
    procedure mImprimirExtratoVendaClick(Sender : TObject) ;
    procedure mImprimirExtratoVendaResumidoClick(Sender : TObject) ;
    procedure mLimparClick(Sender : TObject) ;
    procedure SbArqLogClick(Sender : TObject) ;
    procedure sePagCodChange(Sender: TObject);
    procedure rgRedeTipoInterClick(Sender: TObject);
    procedure rgRedeTipoLanClick(Sender: TObject);
    procedure cbxRedeProxyChange(Sender: TObject);
    procedure LerXMLinterfaceRede1Click(Sender: TObject);
    procedure GerarXMLInterfaceRede1Click(Sender: TObject);
    procedure ACBrSAT1GravarLog(const ALogLine: String;
      var Tratado: Boolean);
    procedure cbxSalvarCFeCancChange(Sender: TObject);
    procedure cbxSalvarCFeChange(Sender: TObject);
    procedure cbxSalvarEnvioChange(Sender: TObject);
    procedure cbxSepararPorCNPJChange(Sender: TObject);
    procedure cbxSepararPorMESChange(Sender: TObject);
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: String);
    procedure ACBrSAT1GetsignAC(var Chave: String);
  private
    { private declarations }

    procedure ConfiguraRedeSAT;
    procedure LeDadosRedeSAT;
    procedure PrepararImpressao;
    procedure TrataErros(Sender : TObject ; E : Exception) ;
    procedure AjustaACBrSAT ;
    procedure LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
  public
    { public declarations }
  end ;

var
  fSatAcbr : TfSatAcbr ;

implementation

Uses typinfo, ACBrUtil, pcnConversao, pcnRede, synacode, IniFiles, ConfiguraSerial,
  RLPrinters, Printers;

{$R *.dfm}

{ TForm1 }

procedure TfSatAcbr.FormCreate(Sender : TObject) ;
var
  I : TACBrSATModelo ;
  J : TpcnTipoAmbiente ;
  K : TpcnRegTribISSQN ;
  L : TpcnindRatISSQN ;
  M : TpcnRegTrib ;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;  
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

  cbxModeloPosPrinter.Items.Clear ;
  For N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

  cbxPagCodigo.Items.Clear ;
  For O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;

  cbxPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );
  cbxPorta.Items.Add('LPT1') ;
  cbxPorta.Items.Add('LPT2') ;
  cbxPorta.Items.Add('/dev/ttyS0') ;
  cbxPorta.Items.Add('/dev/ttyS1') ;
  cbxPorta.Items.Add('/dev/ttyUSB0') ;
  cbxPorta.Items.Add('/dev/ttyUSB1') ;
  cbxPorta.Items.Add('\\localhost\Epson') ;
  cbxPorta.Items.Add('c:\temp\ecf.txt') ;
  cbxPorta.Items.Add('/tmp/ecf.txt') ;         

  Application.OnException := TrataErros ;

  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;

  btLerParams.Click;
end;

procedure TfSatAcbr.mAssociarAssinaturaClick(Sender : TObject) ;
begin
  ACBrSAT1.AssociarAssinatura( edtSwHCNPJ.Text + edtEmitCNPJ.Text, edtSwHAssinatura.Text );
end;

procedure TfSatAcbr.mAtaulizarSoftwareSATClick(Sender : TObject) ;
begin
  ACBrSAT1.AtualizarSoftwareSAT;
end;

procedure TfSatAcbr.TrataErros(Sender: TObject; E: Exception);
var
  Erro : String ;
begin
  Erro := Trim(E.Message) ;
  ACBrSAT1.DoLog( E.ClassName+' - '+Erro);
end ;

procedure TfSatAcbr.AjustaACBrSAT ;
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
  end
end ;

procedure TfSatAcbr.ACBrSAT1Log(const AString: String);
begin
  mLog.Lines.Add(AString);
  StatusBar1.Panels[0].Text := IntToStr( ACBrSAT1.Resposta.numeroSessao );
  StatusBar1.Panels[1].Text := IntToStr( ACBrSAT1.Resposta.codigoDeRetorno );
end;

procedure TfSatAcbr.bImpressoraClick(Sender: TObject);
begin
  if PrintDialog1.Execute then
    lImpressora.Caption := Printer.Printers[Printer.PrinterIndex] ;  
end;

procedure TfSatAcbr.bInicializarClick(Sender : TObject) ;
begin
  AjustaACBrSAT;

  ACBrSAT1.Inicializado := not ACBrSAT1.Inicializado ;

  if ACBrSAT1.Inicializado then
    bInicializar.Caption := 'DesInicializar'
  else
    bInicializar.Caption := 'Inicializar' ;
end;

procedure TfSatAcbr.btLerParamsClick(Sender : TObject) ;
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
    cbxSepararPorCNPJ.Checked:= INI.ReadBool('SAT','SepararPorCNPJ', True);
    cbxSepararPorMES.Checked := INI.ReadBool('SAT','SepararPorMES', True);
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

procedure TfSatAcbr.btSalvarParamsClick(Sender : TObject) ;
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

procedure TfSatAcbr.btSerialClick(Sender: TObject);
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

procedure TfSatAcbr.cbUsarEscPosClick(Sender: TObject);
begin
  cbUsarFortes.Checked := False;
  //ACBrSAT1.Extrato := ACBrSATExtratoESCPOS1;
end;

procedure TfSatAcbr.cbUsarFortesClick(Sender: TObject);
begin
  cbUsarEscPos.Checked := False;
  //ACBrSAT1.Extrato := ACBrSATExtratoFortes1
end;

procedure TfSatAcbr.cbxModeloChange(Sender : TObject) ;
begin
  try
    ACBrSAT1.Modelo := TACBrSATModelo( cbxModelo.ItemIndex ) ;
  except
    cbxModelo.ItemIndex := Integer( ACBrSAT1.Modelo ) ;
    raise ;
  end ;
end;

procedure TfSatAcbr.cbxUTF8Change(Sender: TObject);
begin
  ACBrSAT1.Config.EhUTF8 := cbxUTF8.Checked;
  sePagCod.Value := ACBrSAT1.Config.PaginaDeCodigo;
end;

procedure TfSatAcbr.miGerarXMLCancelamentoClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo XML|*.xml';
  if OpenDialog1.Execute then
  begin
    ACBrSAT1.CFe.LoadFromFile( OpenDialog1.FileName );
    ACBrSAT1.CFe2CFeCanc;

    mCancelamentoEnviar.Lines.Text := ACBrSAT1.CFeCanc.GerarXML( True ) ;  // True = Gera apenas as TAGs da aplica��o
    edChaveCancelamento.Text := ACBrSAT1.CFeCanc.infCFe.chCanc;
    PageControl1.ActivePage := tsCancelamento;
  end ;
end;

procedure TfSatAcbr.miEnviarCancelamentoClick(Sender: TObject);
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

procedure TfSatAcbr.miImprimirExtratoCancelamentoClick(Sender: TObject);
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtratoCancelamento;
end;

procedure TfSatAcbr.mTesteFimAFimClick(Sender: TObject);
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

procedure TfSatAcbr.sfeVersaoEntChange(Sender: TObject);
begin
  ACBrSAT1.Config.infCFe_versaoDadosEnt := StringToFloatDef(sfeVersaoEnt.Text,cversaoDadosEnt);
end;

procedure TfSatAcbr.mAtivarSATClick(Sender : TObject) ;
begin
  ACBrSAT1.AtivarSAT( 1, edtEmitCNPJ.Text, StrToInt(edtCodUF.Text) );
end;

procedure TfSatAcbr.mBloquearSATClick(Sender : TObject) ;
begin
  ACBrSAT1.BloquearSAT;
end;

procedure TfSatAcbr.mComunicarCertificadoClick(Sender : TObject) ;
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

procedure TfSatAcbr.mConfigurarInterfaceRedeClick(Sender : TObject) ;
begin
  ConfiguraRedeSAT;
  LoadXML( ACBrSAT1.Rede.AsXMLString,  mRede );

  ACBrSAT1.ConfigurarInterfaceDeRede( );
end;

procedure TfSatAcbr.mConsultarNumeroSessaoClick(Sender : TObject) ;
Var
  strSessao: String ;
  nSessao : Integer ;
begin
  strSessao := '';
  if not InputQuery('Consultar N�mero de Sess�o',
                    'Entre com o N�mero de Sess�o a ser consultada:', strSessao ) then
    Exit;

  nSessao := StrToIntDef(strSessao, 0);
  if nSessao <= 0 then
    raise Exception.Create('Numero de sess�o informado � inv�lido') ;

  ACBrSAT1.ConsultarNumeroSessao( nSessao );
end;

procedure TfSatAcbr.mConsultarSATClick(Sender : TObject) ;
begin
  ACBrSAT1.ConsultarSAT;
end;

procedure TfSatAcbr.mConsultarStatusOperacionalClick(Sender : TObject) ;
begin
  ACBrSAT1.ConsultarStatusOperacional;

  with ACBrSAT1.Status do
  begin
    mLog.Lines.Add('NSERIE.........: '+NSERIE);
    mLog.Lines.Add('LAN_MAC........: '+LAN_MAC);
    mLog.Lines.Add('STATUS_LAN.....: '+StatusLanToStr(STATUS_LAN));
    mLog.Lines.Add('NIVEL_BATERIA..: '+NivelBateriaToStr(NIVEL_BATERIA));
    mLog.Lines.Add('MT_TOTAL.......: '+MT_TOTAL);
    mLog.Lines.Add('MT_USADA.......: '+MT_USADA);
    mLog.Lines.Add('DH_ATUAL.......: '+DateTimeToStr(DH_ATUAL));
    mLog.Lines.Add('VER_SB.........: '+VER_SB);
    mLog.Lines.Add('VER_LAYOUT.....: '+VER_LAYOUT);
    mLog.Lines.Add('ULTIMO_CFe.....: '+ULTIMO_CFe);
    mLog.Lines.Add('LISTA_INICIAL..: '+LISTA_INICIAL);
    mLog.Lines.Add('LISTA_FINAL....: '+LISTA_FINAL);
    mLog.Lines.Add('DH_CFe.........: '+DateTimeToStr(DH_CFe));
    mLog.Lines.Add('DH_ULTIMA......: '+DateTimeToStr(DH_CFe));
    mLog.Lines.Add('CERT_EMISSAO...: '+DateToStr(CERT_EMISSAO));
    mLog.Lines.Add('CERT_VENCIMENTO: '+DateToStr(CERT_VENCIMENTO));
    mLog.Lines.Add('ESTADO_OPERACAO: '+EstadoOperacaoToStr(ESTADO_OPERACAO));
  end;

  LeDadosRedeSAT;
end;

procedure TfSatAcbr.mDesbloquearSATClick(Sender : TObject) ;
begin
  ACBrSAT1.DesbloquearSAT;
end;

procedure TfSatAcbr.MenuItem5Click(Sender : TObject) ;
Var
  CodNovo, CodAtual, tipoCodigo: String;
begin
  CodNovo    := '';
  CodAtual   := edtCodigoAtivacao.Text;
  tipoCodigo := '1';

  if not InputQuery('Trocar C�digo de Ativa��o',
                    'Entre com o C�digo de Ativa��o ou de Emerg�ncia:', CodAtual ) then
    Exit;

  if not InputQuery('Trocar C�digo de Ativa��o',
                    'Qual o Tipo do C�digo Informado anteriormente ?'+sLineBreak+
                    '1 � C�digo de Ativa��o'+sLineBreak+
                    '2 � C�digo de Ativa��o de Emerg�ncia'+sLineBreak,
                    tipoCodigo ) then
    Exit;

  if not InputQuery('Trocar C�digo de Ativa��o',
                    'Entre com o N�mero do Novo C�digo de Ativa��o:', CodNovo ) then
    Exit;

  ACBrSAT1.TrocarCodigoDeAtivacao( CodAtual, StrToInt(tipoCodigo), CodNovo );

  if ACBrSAT1.Resposta.codigoDeRetorno = 1800 then
  begin
    edtCodigoAtivacao.Text := CodNovo;
    mLog.Lines.Add('C�digo de Ativa��o trocado com sucesso');
    btSalvarParams.Click;
  end ;
end;

procedure TfSatAcbr.mEnviarVendaClick(Sender : TObject) ;
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

procedure TfSatAcbr.mExtrairLogsClick(Sender : TObject) ;
Var
  NomeArquivo: String ;
begin
  NomeArquivo := ExtractFilePath(Application.ExeName)+'SAT.LOG';
  if not InputQuery('ExtrairLogs',
                    'Informe o nome para cria��o do Arquivo de Log:', NomeArquivo ) then
    Exit;

  ACBrSAT1.ExtrairLogs( NomeArquivo );
end;

procedure TfSatAcbr.mGerarVendaClick(Sender : TObject) ;
var
  TotalItem: Double;
  A: Integer;
  TotalProdutos, TotalImpostoAprox: Double;
begin
  PageControl1.ActivePage := tsGerado;

  ACBrSAT1.CFe.IdentarXML := cbxFormatXML.Checked;
  ACBrSAT1.CFe.TamanhoIdentacao := 3;

  mVendaEnviar.Clear;

  // Trasnferindo Informa��es de Config para o CFe //
  AjustaACBrSAT;
  ACBrSAT1.InicializaCFe ;

  // Montando uma Venda //
  with ACBrSAT1.CFe do
  begin
    ide.numeroCaixa := 1;

    Dest.CNPJCPF := '05481336000137';
    Dest.xNome   := 'D.J. SYSTEM';

    Entrega.xLgr    := 'logradouro';
    Entrega.nro     := '112233';
    Entrega.xCpl    := 'complemento';
    Entrega.xBairro := 'bairro';
    Entrega.xMun    := 'municipio';
    Entrega.UF      := 'RJ';

    TotalProdutos     := 0;
    TotalImpostoAprox := 0;
    for A := 1 to 1 do
    begin
      with Det.Add do
      begin
        nItem         := A;
        Prod.cProd    := 'ACBR' + Format('%3.3d', [A]);
        Prod.cEAN     := '6291041500213';
        Prod.xProd    := 'DESCRICAO DO PRODUTO GIGANTE ' + Format('%3.3d', [A]);
        prod.NCM      := '99';
        Prod.CFOP     := '5120';
        Prod.uCom     := 'UN';
        Prod.indRegra := irTruncamento;
        Prod.qCom     := 1;
        Prod.vUnCom   := 10;
        Prod.vDesc    := 0;
        Prod.vOutro   := 0;

        //with Prod.obsFiscoDet.Add do
        //begin
        //  xCampoDet := 'campo';
        //  xTextoDet := 'texto';
        //end;

        Imposto.ICMS.orig  := oeNacional;
        if ACBrSAT1.Config.emit_cRegTrib = RTRegimeNormal then
        begin
          Imposto.ICMS.CST   := cst00;
          Imposto.ICMS.pICMS := 18;
        end
        else
        begin
          Imposto.ICMS.CSOSN := csosn102;
        end;

        Imposto.PIS.CST  := pis49;
        Imposto.PIS.vBC  := 0;
        Imposto.PIS.pPIS := 0;

        Imposto.COFINS.CST     := cof49;
        Imposto.COFINS.vBC     := 0;
        Imposto.COFINS.pCOFINS := 0;

        infAdProd := 'Informacoes adicionais';

        // imposto aproximado
        TotalItem := (Prod.qCom * Prod.vUnCom);
        Imposto.vItem12741 := TotalItem * 0.12;

        TotalProdutos     := TotalProdutos     + TotalItem;
        TotalImpostoAprox := TotalImpostoAprox + Imposto.vItem12741;
      end;
    end;

    Total.DescAcrEntr.vDescSubtot := 0;
    Total.vCFeLei12741            := TotalImpostoAprox;

    with Pagto.Add do
    begin
      cMP := mpDinheiro;
      vMP := 100;
    end;

//    with Pagto.Add do
//    begin
//      cMP   := mpCartaodeCredito;
//      vMP   := 50;
//      cAdmC := 999;
//    end;

    InfAdic.infCpl := 'Acesse www.projetoacbr.com.br para obter mais;informa��es sobre o componente ACBrSAT;'+
                      'Precisa de um PAF-ECF homologado?;Conhe�a o DJPDV - www.djpdv.com.br'
  end;

  mVendaEnviar.Lines.Text := ACBrSAT1.CFe.GerarXML( True );    // True = Gera apenas as TAGs da aplica��o

  mLog.Lines.Add('Venda Gerada');
end;

procedure TfSatAcbr.mImprimirExtratoVendaClick(Sender : TObject) ;
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtrato;
end;

procedure TfSatAcbr.mImprimirExtratoVendaResumidoClick(Sender : TObject) ;
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtratoResumido;
end;

procedure TfSatAcbr.mLimparClick(Sender : TObject) ;
begin
  mVendaEnviar.Clear;
  LoadXML('', mRecebido);
  mCancelamentoEnviar.Clear;
end;

procedure TfSatAcbr.SbArqLogClick(Sender : TObject) ;
begin
  OpenURL( ExtractFilePath( Application.ExeName ) + edLog.Text);
end;

procedure TfSatAcbr.sePagCodChange(Sender: TObject);
begin
  ACBrSAT1.Config.PaginaDeCodigo := sePagCod.Value;
  cbxUTF8.Checked := ACBrSAT1.Config.EhUTF8;
end;

procedure TfSatAcbr.PrepararImpressao;
begin
  {if ACBrSAT1.Extrato = ACBrSATExtratoESCPOS1 then
  begin   }
    ACBrPosPrinter1.Desativar;
    ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModeloPosPrinter.ItemIndex );
    ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
    ACBrPosPrinter1.Porta := cbxPorta.Text;
    ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
    ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
    ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
    ACBrSATExtratoESCPOS1.ImprimeQRCode := True;
    ACBrSATExtratoESCPOS1.ImprimeEmUmaLinha := cbImprimir1Linha.Checked;
{  end
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


procedure TfSatAcbr.LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
begin
  WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml',
              AXML, False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml');
end;

procedure TfSatAcbr.rgRedeTipoInterClick(Sender: TObject);
begin
  gbWiFi.Visible := (rgRedeTipoInter.ItemIndex = 1);
end;

procedure TfSatAcbr.rgRedeTipoLanClick(Sender: TObject);
begin
  gbPPPoE.Visible := (rgRedeTipoLan.ItemIndex = 1);
  gbIPFix.Visible := (rgRedeTipoLan.ItemIndex = 2);
end;

procedure TfSatAcbr.cbxRedeProxyChange(Sender: TObject);
begin
  edRedeProxyIP.Enabled    := (cbxRedeProxy.ItemIndex > 0);
  edRedeProxyPorta.Enabled := edRedeProxyIP.Enabled;
  edRedeProxyUser.Enabled  := edRedeProxyIP.Enabled;
  edRedeProxySenha.Enabled := edRedeProxyIP.Enabled;
end;

procedure TfSatAcbr.LerXMLinterfaceRede1Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo XML|*.xml';
  if OpenDialog1.Execute then
  begin
    ACBrSAT1.Rede.LoadFromFile( OpenDialog1.FileName );

    LeDadosRedeSAT;
    ACBrSAT1.ConfigurarInterfaceDeRede( );
  end ;
end;

procedure TfSatAcbr.GerarXMLInterfaceRede1Click(Sender: TObject);
begin
  ConfiguraRedeSAT;
  LoadXML( ACBrSAT1.Rede.AsXMLString,  mRede );

  PageControl1.ActivePage := tsRedeXML;

  SaveDialog1.Filter   := 'Arquivo XML|*.xml';
  SaveDialog1.FileName := 'Rede.xml';
  if SaveDialog1.Execute then
  begin
     ACBrSAT1.Rede.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TfSatAcbr.ConfiguraRedeSAT;
begin
  with ACBrSAT1.Rede do
  begin
    tipoInter   := TTipoInterface( rgRedeTipoInter.ItemIndex );
    SSID        := edRedeSSID.Text ;
    seg         := TSegSemFio( cbxRedeSeg.ItemIndex ) ;
    codigo      := edRedeCodigo.Text ;
    tipoLan     := TTipoLan( rgRedeTipoLan.ItemIndex ) ;
    lanIP       := edRedeIP.Text ;
    lanMask     := edRedeMask.Text ;
    lanGW       := edRedeGW.Text ;
    lanDNS1     := edRedeDNS1.Text ;
    lanDNS2     := edRedeDNS2.Text ;
    usuario     := edRedeUsuario.Text ;
    senha       := edRedeSenha.Text ;
    proxy       := cbxRedeProxy.ItemIndex ;
    proxy_ip    := edRedeProxyIP.Text ;
    proxy_porta := edRedeProxyPorta.Value ;
    proxy_user  := edRedeProxyUser.Text ;
    proxy_senha := edRedeProxySenha.Text ;
  end;
end;

procedure TfSatAcbr.ACBrSAT1GravarLog(const ALogLine: String;
  var Tratado: Boolean);
begin
  mLog.Lines.Add(ALogLine);
  StatusBar1.Panels[0].Text := IntToStr( ACBrSAT1.Resposta.numeroSessao );
  StatusBar1.Panels[1].Text := IntToStr( ACBrSAT1.Resposta.codigoDeRetorno );
  Tratado := False;
end;

procedure TfSatAcbr.LeDadosRedeSAT;
begin
  with ACBrSAT1.Rede do
  begin
    rgRedeTipoInter.ItemIndex := Integer(tipoInter);
    edRedeSSID.Text           := SSID ;
    cbxRedeSeg.ItemIndex      := Integer(seg) ;
    edRedeCodigo.Text         := codigo ;
    rgRedeTipoLan.ItemIndex   := Integer(tipoLan);
    edRedeIP.Text             := lanIP;
    edRedeMask.Text           := lanMask;
    edRedeGW.Text             := lanGW;
    edRedeDNS1.Text           := lanDNS1;
    edRedeDNS2.Text           := lanDNS2;
    edRedeUsuario.Text        := usuario;
    edRedeSenha.Text          := senha;
    cbxRedeProxy.ItemIndex    := proxy;
    edRedeProxyIP.Text        := proxy_ip;
    edRedeProxyPorta.Value    := proxy_porta;
    edRedeProxyUser.Text      := proxy_user;
    edRedeProxySenha.Text     := proxy_senha;
  end;
end;

procedure TfSatAcbr.cbxSalvarCFeCancChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SalvarCFeCanc := cbxSalvarCFeCanc.Checked;
end;

procedure TfSatAcbr.cbxSalvarCFeChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SalvarCFe := cbxSalvarCFe.Checked;
end;

procedure TfSatAcbr.cbxSalvarEnvioChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SalvarEnvio := cbxSalvarEnvio.Checked;
end;

procedure TfSatAcbr.cbxSepararPorCNPJChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SepararPorCNPJ := cbxSepararPorCNPJ.Checked;
end;

procedure TfSatAcbr.cbxSepararPorMESChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SepararPorMes := cbxSepararPorMES.Checked;
end;

procedure TfSatAcbr.ACBrSAT1GetcodigoDeAtivacao(var Chave: String);
begin
  Chave := edtCodigoAtivacao.Text
end;

procedure TfSatAcbr.ACBrSAT1GetsignAC(var Chave: String);
begin
  Chave := edtSwHAssinatura.Text;
end;

end.


