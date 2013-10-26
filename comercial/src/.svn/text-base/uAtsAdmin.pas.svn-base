unit uAtsAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, XPMenu, dxCore, dxButton, ExtCtrls, MMJPanel,DB,
  Buttons, StdCtrls, FMTBcd, DBClient, Provider, SqlExpr, EOneInst, ImgList,
  rpcompobase, rpvclreport, DBxpress, UCBase, ActnList, RXCtrls, RxGIF,
  jpeg, EAppProt, TFlatSpeedButtonUnit, StdActns, UCHist_Base,
  UCHistDataset, JvGIF, WinInet,URLMon, ShellApi, JvExControls,
  JvOutlookBar, IniFiles;

type
  TfAtsAdmin = class(TForm)
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Lanamentos1: TMenuItem;
    compras: TMenuItem;
    venda: TMenuItem;
    NotasFiscais: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    StatusBar1: TStatusBar;
    MMJPanel2: TMMJPanel;
    Terminal: TMenuItem;
    Sair1: TMenuItem;
    Vendas1: TMenuItem;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    Estoque1: TMenuItem;
    N1: TMenuItem;
    Compras1: TMenuItem;
    NotasFiscais1: TMenuItem;
    Timer1: TTimer;
    ImageList1: TImageList;
    RelatriodeVendasporProduto1: TMenuItem;
    RelatrioListadeProdutos1: TMenuItem;
    RelatrioListadeProdporLote1: TMenuItem;
    VCLReport_lista_produtos: TVCLReport;
    erminal1: TMenuItem;
    Clientes1: TMenuItem;
    RelatrioVendasprSrieSubGrupoetc1: TMenuItem;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    Romaneio1: TMenuItem;
    RelatrioNotasCompras1: TMenuItem;
    sds_video: TSQLDataSet;
    sds_parametroLOGIN: TStringField;
    sds_parametroSENHA: TStringField;
    sds_parametroPERFIL: TStringField;
    sds_parametroCODUSUARIO: TIntegerField;
    sds_videoMICRO: TStringField;
    sds_videoP1: TStringField;
    sds_videoP2: TStringField;
    dsp_video: TDataSetProvider;
    cds_video: TClientDataSet;
    cds_parametroLOGIN: TStringField;
    cds_parametroSENHA: TStringField;
    cds_parametroPERFIL: TStringField;
    cds_parametroCODUSUARIO: TIntegerField;
    cds_videoMICRO: TStringField;
    cds_videoP1: TStringField;
    cds_videoP2: TStringField;
    ListadeCompras1: TMenuItem;
    RelatriodeCompras1: TMenuItem;
    RelatriodeComprasVendaICMS1: TMenuItem;
    mnDevCompra: TMenuItem;
    DevolucaoVendas1: TMenuItem;
    N2: TMenuItem;
    Usuarios1: TMenuItem;
    rocarSenha1: TMenuItem;
    RocarUsuarioLogOff1: TMenuItem;
    Historico1: TMenuItem;
    Financeiro: TActionList;
    acCompras: TAction;
    acVendas: TAction;
    acNFiscais: TAction;
    acTerminal: TAction;
    acEstoque: TAction;
    acClientes: TAction;
    acAgenda: TAction;
    UserControlComercial: TUserControl;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    Receber1: TMenuItem;
    Pagar1: TMenuItem;
    LanarDespesas1: TMenuItem;
    LanarReceitas1: TMenuItem;
    acReceber: TAction;
    RelastriosFinanceiros1: TMenuItem;
    ContEstoque1: TMenuItem;
    MovimentaoFinanceira1: TMenuItem;
    GerarMensalidades1: TMenuItem;
    VerMovimentaodecheques1: TMenuItem;
    RelContasaPagar1: TMenuItem;
    RelContasaReceber1: TMenuItem;
    RelDRE1: TMenuItem;
    RelBalancete1: TMenuItem;
    RelResumo1: TMenuItem;
    RelCaixa1: TMenuItem;
    FluxoCaixa1: TMenuItem;
    dxButton1: TdxButton;
    dxButton9: TdxButton;
    dxButton8: TdxButton;
    dxButton7: TdxButton;
    SpeedButton4: TdxButton;
    btnsair: TdxButton;
    mSuporte: TMenuItem;
    Empresa1: TMenuItem;
    VerEstoque1: TMenuItem;
    EntradadeEstoque1: TMenuItem;
    SaidadeEstoque1: TMenuItem;
    MovimentaodeEstoque1: TMenuItem;
    RelatrioListadeProdutos2: TMenuItem;
    RelatrioListadeProdporLote2: TMenuItem;
    VCLReport1: TVCLReport;
    N3: TMenuItem;
    Image1: TImage;
    acAPagar: TEditCut;
    acDespesa: TAction;
    acReceitas: TAction;
    acBanco: TAction;
    acPrazo: TAction;
    ArquivoRetorno: TMenuItem;
    acArquivoRetorno: TAction;
    acClienteBloqueio: TAction;
    LanamentoPassivo1: TMenuItem;
    LanarOS1: TMenuItem;
    ExportaNotaFiscal1: TMenuItem;
    UCControlHistorico1: TUCControlHistorico;
    ListaOS1: TMenuItem;
    RelatriodeVendasprEstado1: TMenuItem;
    FechamentodeContas1: TMenuItem;
    RelProgramaodeRecebimento1: TMenuItem;
    ExportarTabelas1: TMenuItem;
    RelatrioGuiaConehcimento1: TMenuItem;
    tulosDescontados1: TMenuItem;
    NotaFiscalPaulista1: TMenuItem;
    RelatrioDeComisso1: TMenuItem;
    RelatriodeDivergncias1: TMenuItem;
    OrdemdeAssitnciaTcnica1: TMenuItem;
    MapeamentodeEstoque1: TMenuItem;
    AlterarValordosProdutosprFornecedor1: TMenuItem;
    ExportaoparaContMatic1: TMenuItem;
	Parametro1: TMenuItem;    RelatriodePrFaturamento1: TMenuItem;
    NotaFiscalEletrnica1: TMenuItem;    dxButton10: TdxButton;
    acCupom: TAction;
    OrdemdeProduo1: TMenuItem;
    ApontarProduo1: TMenuItem;
    CallCenter1: TMenuItem;
    GerarEtiquetas1: TMenuItem;
    CorrigeEstoque1: TMenuItem;
    NotaFiscal1: TMenuItem;
    AlterarValordeVendadosProdutos1: TMenuItem;
    Inventario1: TMenuItem;
    SolicitacaoCompras1: TMenuItem;
    CotacaoCompras1: TMenuItem;
    Agenda1: TMenuItem;
    ApontamentodeHoras1: TMenuItem;
    NFeNoPeriodo1: TMenuItem;
    RecebimentoMateriais1: TMenuItem;
	DeclaraodeImportao1: TMenuItem;
    Cotao1: TMenuItem;
    CotaoPedido1: TMenuItem;
    Compra1: TMenuItem;
    Button1: TButton;
    btnBoleto: TButton;
    SaveDialog1: TSaveDialog;
    EvAppProtect1: TEvAppProtect;
    acBoletoAts: TAction;
    Expedio1: TMenuItem;
    AdmCaixaBanco1: TMenuItem;
    Maquinas2: TMenuItem;
    RelatriodeFornecedores1: TMenuItem;
    RelatriodeClientes1: TMenuItem;
    ComboBox14: TComboBox;
    ComboBox13: TComboBox;
    ListaEstoque1: TMenuItem;
    ProdutosSemMovimentao1: TMenuItem;
    Fechamento1: TMenuItem;
    JvOutlookBar1: TJvOutlookBar;
    Label1: TLabel;
    GrficodeVendas1: TMenuItem;
    PaineldeControleCompra1: TMenuItem;
    CartadeCorreoEletrnica1: TMenuItem;
    AjusteEstoque1: TMenuItem;
    ConciliaoBancaria1: TMenuItem;
    RelLucroPresumido1: TMenuItem;
    SpedPisCofins1: TMenuItem;
    lblMensagemSistema: TLabel;
    RelatorioTitulos1: TMenuItem;
    dxButton11: TdxButton;
    RelatriodeVendas1: TMenuItem;
    RelNotaFistalLote1: TMenuItem;
    FluxodeEstoque1: TMenuItem;
    CadastroDepartamento1: TMenuItem;
    CadastroSetor1: TMenuItem;
    CadastroTipoDoc1: TMenuItem;
    SpedFiscalICMS1: TMenuItem;
    Auditoria1: TMenuItem;
    CadastrarSemanas1: TMenuItem;
    AniversrioClientes1: TMenuItem;
    UnidadeMedida1: TMenuItem;
    ExportarCupom1: TMenuItem;
    ListadePreo1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
    procedure produtosClick(Sender: TObject);
    procedure comissaoClick(Sender: TObject);
    procedure SriaNotaFiscal1Click(Sender: TObject);
    procedure transportadorasClick(Sender: TObject);
    procedure AgendaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure usoprodClick(Sender: TObject);
    procedure Lotes1Click(Sender: TObject);
    procedure RelatrioListadeProdutos1Click(Sender: TObject);
    procedure RelatrioListadeProdporLote1Click(Sender: TObject);
    procedure ListaClientes1Click(Sender: TObject);
    procedure ListausoProduto1Click(Sender: TObject);
    procedure RelatrioVendasprSrieSubGrupoetc1Click(Sender: TObject);
    procedure Visitas1Click(Sender: TObject);
    procedure Romaneio1Click(Sender: TObject);
    procedure RelatrioNotasCompras1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListadeCompras1Click(Sender: TObject);
    procedure RelatriodeCompras1Click(Sender: TObject);
    procedure RelatriodeComprasVendaICMS1Click(Sender: TObject);
    procedure mnDevCompraClick(Sender: TObject);
    procedure DevolucaoVendas1Click(Sender: TObject);
    procedure acComprasExecute(Sender: TObject);
    procedure acVendasExecute(Sender: TObject);
    procedure acNFiscaisExecute(Sender: TObject);
    procedure acTerminalExecute(Sender: TObject);
    procedure acEstoqueExecute(Sender: TObject);
    procedure acClientesExecute(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure acReceberExecute(Sender: TObject);
    procedure MovimentaoFinanceira1Click(Sender: TObject);
    procedure GerarMensalidades1Click(Sender: TObject);
    procedure VerMovimentaodecheques1Click(Sender: TObject);
    procedure RelContasaPagar1Click(Sender: TObject);
    procedure RelContasaReceber1Click(Sender: TObject);
    procedure RelDRE1Click(Sender: TObject);
    procedure mPlanoContasClick(Sender: TObject);
    procedure mSuporteClick(Sender: TObject);
    procedure mCadColaboradorClick(Sender: TObject);
    procedure CFOPEstados1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure VerEstoque1Click(Sender: TObject);
    procedure EntradadeEstoque1Click(Sender: TObject);
    procedure SaidadeEstoque1Click(Sender: TObject);
    procedure MovimentaodeEstoque1Click(Sender: TObject);
    procedure RelatrioListadeProdutos2Click(Sender: TObject);
    procedure RelatrioListadeProdporLote2Click(Sender: TObject);
    procedure RelCaixa1Click(Sender: TObject);
    procedure FluxoCaixa1Click(Sender: TObject);
    procedure acAPagarExecute(Sender: TObject);
    procedure acDespesaExecute(Sender: TObject);
    procedure acReceitasExecute(Sender: TObject);
    procedure acBancoExecute(Sender: TObject);
    procedure Prazos1Click(Sender: TObject);
    procedure acPrazoExecute(Sender: TObject);
    procedure acArquivoRetornoExecute(Sender: TObject);
    procedure acClienteBloqueioExecute(Sender: TObject);
    procedure LanamentoPassivo1Click(Sender: TObject);
    procedure LanarOS1Click(Sender: TObject);
    procedure ExportaNotaFiscal1Click(Sender: TObject);
    procedure Maquinas1Click(Sender: TObject);
    procedure ListaOS1Click(Sender: TObject);
    procedure RelatriodeVendasprEstado1Click(Sender: TObject);
    procedure Controlede1Click(Sender: TObject);
    procedure FechamentodeContas1Click(Sender: TObject);
    procedure RelProgramaodeRecebimento1Click(Sender: TObject);
    procedure ExportarTabelas1Click(Sender: TObject);
    procedure RelatrioGuiaConehcimento1Click(Sender: TObject);
    procedure tulosDescontados1Click(Sender: TObject);
    procedure NotaFiscalPaulista1Click(Sender: TObject);
    procedure RelatrioDeComisso1Click(Sender: TObject);
    procedure RelatriodeDivergncias1Click(Sender: TObject);
    procedure MapeamentodeEstoque1Click(Sender: TObject);
    procedure AlterarValordosProdutosprFornecedor1Click(Sender: TObject);
    procedure OrdemdeAssitnciaTcnica1Click(Sender: TObject);
    procedure ExportaoparaContMatic1Click(Sender: TObject);
    procedure Parametro1Click(Sender: TObject);
    procedure acCupomExecute(Sender: TObject);
    procedure OS1Click(Sender: TObject);
    procedure RelatriodePrFaturamento1Click(Sender: TObject);
    procedure NotaFiscalEletrnica1Click(Sender: TObject);
    procedure CidadesIBGE1Click(Sender: TObject);
    procedure OrdemdeProduo1Click(Sender: TObject);
    procedure ApontarProduo1Click(Sender: TObject);
    procedure CallCenter1Click(Sender: TObject);
    procedure ipoAtendimento1Click(Sender: TObject);
    procedure GerarEtiquetas1Click(Sender: TObject);
    procedure CorrigeEstoque1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure RelBalancete1Click(Sender: TObject);
    procedure AlterarValordeVendadosProdutos1Click(Sender: TObject);
    procedure Inventario1Click(Sender: TObject);
    procedure SolicitacaoCompras1Click(Sender: TObject);
    procedure CotacaoCompras1Click(Sender: TObject);
    procedure ApontamentodeHoras1Click(Sender: TObject);
    procedure NFeNoPeriodo1Click(Sender: TObject);
    procedure RecebimentoMateriais1Click(Sender: TObject);
    procedure CotaoPedido1Click(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure DeclaraodeImportao1Click(Sender: TObject);
    procedure Similares1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure acBoletoAtsExecute(Sender: TObject);
    procedure Expedio1Click(Sender: TObject);
    procedure AdmCaixaBanco1Click(Sender: TObject);
    procedure RelatriodeFornecedores1Click(Sender: TObject);
    procedure RelatriodeClientes1Click(Sender: TObject);
    procedure NaturezaOperao1Click(Sender: TObject);
    procedure acAgendaExecute(Sender: TObject);
    procedure ListaEstoque1Click(Sender: TObject);
    procedure ProdutosSemMovimentao1Click(Sender: TObject);
    procedure Fechamento1Click(Sender: TObject);
    procedure MesasComandas1Click(Sender: TObject);
    procedure GrficodeVendas1Click(Sender: TObject);
    procedure acPagarUsuarioExecute(Sender: TObject);
    procedure PaineldeControleCompra1Click(Sender: TObject);
    procedure CartadeCorreoEletrnica1Click(Sender: TObject);
    procedure AjusteEstoque1Click(Sender: TObject);
    procedure ConciliaoBancaria1Click(Sender: TObject);
    procedure RelLucroPresumido1Click(Sender: TObject);
    procedure SpedPisCofins1Click(Sender: TObject);
    procedure RelatorioTitulos1Click(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure Correio1Click(Sender: TObject);
    procedure ListadeVendas1Click(Sender: TObject);
    procedure RelatriodeVendas1Click(Sender: TObject);
    procedure RelNotaFistalLote1Click(Sender: TObject);
    procedure FluxodeEstoque1Click(Sender: TObject);
    procedure CadastroDepartamento1Click(Sender: TObject);
    procedure CadastroSetor1Click(Sender: TObject);
    procedure CadastroTipoDoc1Click(Sender: TObject);
    procedure ipoDocumentos1Click(Sender: TObject);
    procedure SpedFiscalICMS1Click(Sender: TObject);
    procedure Auditoria1Click(Sender: TObject);
    procedure UserControlComercialAfterLogin(Sender: TObject);
    procedure CadastrarSemanas1Click(Sender: TObject);
    procedure AniversrioClientes1Click(Sender: TObject);
    procedure UnidadeMedida1Click(Sender: TObject);
    procedure ExportarCupom1Click(Sender: TObject);
    procedure CFOPNCM1Click(Sender: TObject);
    procedure ListadePreo1Click(Sender: TObject);
  private
    STime: TDateTime;
    tempo_medio:  double;
    bytes_transf: longword;
    tamanho_arquivo : longword;
    function DownloadFile(SourceFile, DestFile: string): Boolean;
    function RemoveChar(Const Texto:String):String;
    function ClienteOk(): Boolean;
    { Private declarations }
  public
    { Public declarations }
    function GetVersion: string;
    Function NomeComputador: string;
  end;

var
  fAtsAdmin: TfAtsAdmin;
  tema, tema1 : string;

implementation

uses uVendas, ufprocura_prod, uVendaFinalizar, uMostra_Contas, uCheques_bol,
  uClienteCadastro, uFornecedorCadastro, uProdutoCadastro,
  uComissaoCadastro, uCompra, uCompraFinalizar, uSeriaNF, uRateioPag, UDM,
  uftransp, ufNotafiscalProc, uSobre, uUso_Prod, uRelVendas, uITENS_NF,
  uLotes, uTerminal, uListaClientes, ufListaProd, uRel_vendas,
  uTerminal_Delivery, uTipoVisita, uAgendamento, uRomaneio, ufDlgLogin,
  uFiltroMovimento, uListadeCompra, uRel, uEstoqueCorrige, uTerminalLoja,
  sCtrlResize, ufcr, uCrTituloInclui, uFiltro_forn_plano, ufcpproc,
  ufcrtitulo, uCrTituloPagto, uSplash, ucrTitulo, ufContabilLanc, uGeraCob,
  uProcuraCheque, uRelatorio, uRelatorioReceber, uNF, uProdudoBusca,
  uNotaf, ufContasAssistente, ufuncionario, uEstado, uEmpresa,
  uFiltroEstoque, uEntra_Sai_estoque, uRelatorioFin, uRelatorioCaixa,
  uFluxoCaixa, uNFCompra, uEscolherNF, uProcura_produtos, uMovLinhas ,ubanco,
  uAtualizaSistema, uPrazo, uArquivoRetorno, uClienteBloqueio, uPassivo,
  uMaquinaControle, uNotaFiscalExporta, uClienteVeiculo, uFiltroContMaq,
  uRelVendasUF, uControle, uFrequancia, uComanda, uProcura_prod2,
  uMovCaixa, uCaixaReceber, uComissaoColaborador, uRatearConta, uDespRec,
  uMostraSuites, uBarCaixa, uRelProgReceb, ucopiailha, uRel_Guia,
  ucrdescontado, uNFPaulista, uselectempresa,  uRel_comissao,
  uMapeamento, uGeraAumento, uOrdemAssistencia, uExpContMat, DateUtils, uParametrosTerminal,
  uOs, uPfaturamento, uNFeletronica, uTb_Ibge, uOf, uCallCenter, uCombo,
  uGeraEtiquetas, ufParametro, uCfop, uBalancete, uProdGeraAumento,
  uInventario, uCompraSolicitacao, uCompraCotacao, uApontHoras, uRelNfe,
  uCompraRecebimento, uCompraCotacao2, uCotacoesHist, uFiltroMov_compra,
  uDeclaracaoImportacao, uDadosImportacao, u_SIMILARES, U_AUTOPECAS,
  uExpedicao, uProcura_prodOficina, uCaixaBanco, uMovimenta_Estoque,
  uEndereco, uCliente1, uNaturezaOperacao, JvJVCLUtils,
  uListaEstoque, uOsFiltro, uPainelControle, uPainelControleCompra,u_mesas,
  uEstoqueAjuste, uCCe, uBancoExtrato, uBancoDePara,
  uRel_LucroPresumido, uNfePisCofins, uRelTitulos,
  uTerminalNTC, uCorreio, uListaVenda, uVendaRelPorNotaFiscalLote, uCadDep,
  uCadSetor, uCadDoc, uImport, uNfeIcms, uperiodoSem, uClientesAniversario,
  uLogs, uUnidadeMedida, uSincronizar, uFluxoEstoque, uClassificacaoFiscalNCM, 
  uNCM, uFiltroCorreio, uTerminal2;

{$R *.dfm}

(**********************************************************************)
Function Saudacao : string;
begin
 result:='Boa-noite!';
 if (time>=0.25) and (time<0.5) then result:='Bom-dia!';
 if (time>=0.5) and (time<0.80) then result:='Boa-tarde!';
end;
(**********************************************************************)

procedure TfAtsAdmin.FormCreate(Sender: TObject);
var
 vSaudacao : string;
begin
  DM.MODULOUSERCONTROL := 'atsadmin';
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fAtsAdmin));
  StatusBar1.Panels[0].Text := ' ATS - Admin versao: ' + GetVersion;
  StatusBar1.Panels[2].Text := Saudacao + ' Hoje e '+formatdatetime('dddddd',date);

  {ComboBox14.ItemIndex := 0;
  ComboBox13.ItemIndex := 0;
  ComboBox14Change(ComboBox14);
  ComboBox13Change(ComboBox13);}

  if (dm.moduloUsado = 'AUTOMOTIVA') then
  begin
    //dxButton2.Caption := 'Ordem Serv.(CTRL+V)';
    //dxButton5.Caption := 'Proc. Pecas(CTRL+E)';
    //dxButton4.Enabled := False;
    //dxButton6.Enabled := False;
    MainMenu1.Items.Items[0].Items[9].Caption := 'Cad. Pecas/Servicos';
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    //dxButton1.Caption := 'Ent./Colheita(CTRL+C)';
    //dxButton5.Caption := 'Proc. Frutos(CTRL+E)';
    //dxButton6.Enabled := False;
    MainMenu1.Items.Items[0].Items[9].Caption := 'Cad. Frutas';
  end;
  if (FileExists('logo.jpg')) then
    Image1.Picture.LoadFromFile('logo.jpg');

end;

procedure TfAtsAdmin.ClientesClick(Sender: TObject);
begin
  if (varform <> '') then
    varform := '';
  if (dm.cadastroClienteTipo = 'COMPLETO') then
  begin
    fClienteCadastro := TfClienteCadastro.Create(Application);
    try
      fClienteCadastro.ShowModal;
    finally
      fClienteCadastro.Free;
      varform := '';
    end;
  end;
  if (dm.cadastroClienteTipo = 'SIMPLES') then
  begin
    fCliente1 := TfCliente1.Create(Application);
    try
      fCliente1.ShowModal;
    finally
      fCliente1.Free;
      varform := '';
    end;
  end;
end;

procedure TfAtsAdmin.FornecedoresClick(Sender: TObject);
begin
  fFornecedorCadastro := TfFornecedorCadastro.Create(Application);
  try
    fFornecedorCadastro.ShowModal;
  finally
    fFornecedorCadastro.Free;
  end;
  //fFornecedorCadastro := TfFornecedorCadastro.Create(Application);
  //sCtrlResize.CtrlResize(TForm(fFornecedorCadastro));
end;

procedure TfAtsAdmin.produtosClick(Sender: TObject);
begin
  fProdutoCadastro := TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.Free;
  end;
end;

procedure TfAtsAdmin.comissaoClick(Sender: TObject);
begin
  fComissaoCadastro := TfComissaoCadastro.Create(Application);
  try
    fComissaoCadastro.ShowModal;
  finally
    fComissaoCadastro.Free;
  end;
 { fComissaoColaborador := TfComissaoColaborador.Create(Application);
  try
    fComissaoColaborador.ShowModal;
  finally
    fComissaoColaborador.Free;
  end;
  }
end;

procedure TfAtsAdmin.SriaNotaFiscal1Click(Sender: TObject);
begin
 fSeriaNF := TfSeriaNF.Create(Application);
 try
  fSeriaNF.ShowModal;
 finally
  fSeriaNF.Free;
 end;
end;

procedure TfAtsAdmin.transportadorasClick(Sender: TObject);
begin
   ftransp := Tftransp.Create(Application);
   try
     ftransp.ShowModal;
   finally
     ftransp.Free;
   end;
end;

procedure TfAtsAdmin.AgendaClick(Sender: TObject);
begin
  fAgendamento := TfAgendamento.Create(Application);
  try
    fAgendamento.ShowModal;
  finally
    fAgendamento.Free;
  end;
end;

procedure TfAtsAdmin.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TfAtsAdmin.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 statusBar1.Canvas.Brush.Color := clSilver; //GradientActiveCaption;//$00AEB7D2;
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
 ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TfAtsAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
var
X : Byte;
begin

  if MDIChildCount > 0 then
    for X := 0 to Pred(MDIChildCount) do
       MDIChildren[X].Close;
  if (dm.sistemaLiberado = 'S') then 
  if MessageDlg('Voce realmente deseja encerrar o sistema ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
    
    Application.Terminate;
  end
  else
    abort;

end;

procedure TfAtsAdmin.SobreoSistema1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TfAtsAdmin.usoprodClick(Sender: TObject);
begin
  fUso_Prod := TfUso_Prod.Create(Application);
  try
    fUso_Prod.ShowModal;
  finally
    fUso_Prod.Free;
  end;
end;

procedure TfAtsAdmin.Lotes1Click(Sender: TObject);
begin
    fLotes := TfLotes.Create(Application);
    try
      fLotes.ShowModal;
    finally
      fLotes.Free;
    end;
end;

procedure TfAtsAdmin.RelatrioListadeProdutos1Click(Sender: TObject);
begin
  fProcura_prod.ShowModal;
end;

procedure TfAtsAdmin.RelatrioListadeProdporLote1Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtosLotes.rep';
  VCLReport_lista_produtos.report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.FileName;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.ListaClientes1Click(Sender: TObject);
begin
   fListaClientes:=TfListaClientes.Create(Application);
   try
   fListaClientes.ShowModal;
   finally
       fListaClientes.Free;
   end;
end;

function TfAtsAdmin.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfAtsAdmin.ListausoProduto1Click(Sender: TObject);
begin
  fListaProd:=TfListaProd.Create(Application);
  // fListaClientes.edNome.SetFocus;
  try
    fListaProd.ShowModal;
  finally
    fListaProd.Free;
    // dbEdit2.SetFocus;
  end;
end;

procedure TfAtsAdmin.RelatrioVendasprSrieSubGrupoetc1Click(
  Sender: TObject);
begin
  fRel_Vendas:=TfRel_Vendas.Create(Application);
  try
    fRel_Vendas.BitBtn3.Visible := False;
    fRel_Vendas.ShowModal;
  finally
    fRel_Vendas.Free;
  end;
end;

function TfAtsAdmin.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TfAtsAdmin.Visitas1Click(Sender: TObject);
begin
  fTipoVisita := TfTipoVisita.Create(Application);
  try
     fTipoVisita.ShowModal;
  finally
     fTipoVisita.Free;
  end;
end;

procedure TfAtsAdmin.Romaneio1Click(Sender: TObject);
begin
   fRomaneio := TfRomaneio.Create(Application);
   try
      fRomaneio.ShowModal;
   finally
      fRomaneio.Free;
   end;
end;

procedure TfAtsAdmin.RelatrioNotasCompras1Click(Sender: TObject);
begin
  {Notas de Compras }
  VCLReport_lista_produtos.FileName := str_relatorio + 'rel_notasCompras.rep';
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.FormShow(Sender: TObject);
var TD: TTransactionDesc;
 caminho, caminho2, arquivo, empresa: String;
 tempo : Integer;
begin
  lblMensagemSistema.Caption := dm.mensagemInicial;
  if (dm.sistemaLiberado = 'N') then
  begin
    MessageDlg('Licença do uso expirada, entre em contato com a ATS (19)3877-4889.', mtWarning, [mbOK], 0);
    Close;
  end;
  if (UserControlComercial.AutoStart = False) then
  begin
    UserControlComercial.AutoStart := True;
    UserControlComercial.Execute;
  end;  

  if (dm.VISTO_FTP = '') then
    dm.VISTO_FTP := '01/01/2001';
  if (dm.BAIXADO_BOLETO <> '') then
  begin
    btnBoleto.Top := screen.DesktopHeight - 200;
    btnBoleto.Left := Screen.DesktopWidth - 350;
//    btnBoleto.Visible := True;
    btnBoleto.Caption := 'Boleto Mensal.';
  end;
  if (StrToDateTime(dm.VISTO_FTP) <> today) then
  begin
    empresa := RemoveChar(dm.empresa);
    // URL Location
    caminho := 'http://www.atsti.com.br/boleto/' + empresa + '.pdf';
    // Where to save the file
    arquivo := 'ATS_Boleto.pdf';

    if DownloadFile(caminho, arquivo) then
    begin
      btnBoleto.Top := screen.DesktopHeight - 200;
      btnBoleto.Left := Screen.DesktopWidth - 350;
//      btnBoleto.Visible := True;
      btnBoleto.Caption := 'Boleto Mensal.';
    end;

    empresa := RemoveChar(dm.empresa);
    // URL Location
    caminho := 'http://www.atsti.com.br/boleto/' + empresa + 'lock.pdf';
    // Where to save the file
    arquivo := 'ATS_Boleto.pdf';

    if DownloadFile(caminho, arquivo) then
    begin
      tempo := DayOf(StrToDateTime(dm.VISTO_FTP));
      Label1.Caption := 'A Licença do Aplicativo expirará em ' ;
      btnBoleto.Left := Screen.DesktopWidth - 350;
//      btnBoleto.Visible := True;
      btnBoleto.Caption := 'Boleto Mensal.';
    end;

    dm.sqlsisAdimin.ExecuteDirect('UPDATE PARAMETRO SET D9 = ' +
    QuotedStr(FormatDateTime('dd/mm/yyyy', today))  +
    ' , D8 = ' + QuotedStr('BOLETO') + 
    ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
  end;
    Dm.varLogado := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
  //Se tiver Agendamento para o dia abro a agenda
  if (dm.cds_ag.Active) then
    dm.cds_ag.Close;
  dm.cds_ag.Params[0].Clear;
  dm.cds_ag.Params[1].AsInteger := 9999999;
  dm.cds_ag.Params[2].Value := Now;
  dm.cds_ag.Params[3].Value := Now;
  dm.cds_ag.Params[4].Clear;
  dm.cds_ag.Params[5].AsInteger := 9999999;
  dm.cds_ag.Open;
  if (not dm.cds_ag.IsEmpty) then
  begin
    dm.cds_ag.Close;
    fAgendamento := TfAgendamento.Create(Application);
    try
      fAgendamento.ShowModal;
    finally
      fAgendamento.Free;
    end;
  end
  else
  begin
    dm.cds_ag.Close;
    if (dm.ag_dia.Active) then
      dm.ag_dia.Close;
    dm.ag_dia.Params[0].Value := now;
    dm.ag_dia.Open;
    if (dm.ag_dia.IsEmpty) then
      dm.ag_dia.Close
    else
      begin
        dm.ag_dia.Close;
        fAgendamento := TfAgendamento.Create(Application);
      try
        fAgendamento.ShowModal;
      finally
        fAgendamento.Free;
      end;
    end;
  end;
  //************************************************************
  //fAtualizaSistema := TfAtualizaSistema.Create(Application);
  //try
    // nao preciso visualizar.
    //fAtualizaSistema.ShowModal;
  //finally
  // fAtualizaSistema.Free;
 //end;
 if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SELECIONAEMPRESA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    fSelecionaEmpresa := TfSelecionaEmpresa.Create(Application);
    try
      fSelecionaEmpresa.ShowModal;
    finally
      fSelecionaEmpresa.Free;
    end;
  end
  else
  begin
    dm.emppadrao := '';
  end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD3.AsString = 'BLOQUEIOATRASADOS') then
  if (dm.cds_parametroD4.AsString <> FormatDateTime('ddmmyyyy', today) ) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('execute procedure BLOQUEIACLIENTES');
    dm.sqlsisAdimin.Commit(TD);
    dm.cds_parametro.edit;
    dm.cds_parametroD4.AsString := FormatDateTime('ddmmyyyy', today);
    dm.cds_parametro.ApplyUpdates(0);
  end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD2.AsString = 'EXIBEANIVERSARIO') then
  begin
    VCLReport1.Filename := str_relatorio + 'clienteAniversario.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.execute;
  end;
  usulog :=  UserControlComercial.CurrentUser.UserID;
  nome_user := UserControlComercial.CurrentUser.UserName;
end;

procedure TfAtsAdmin.ListadeCompras1Click(Sender: TObject);
begin
  fListadeCompra := TfListadeCompra.Create(Application);
  try
    fListadeCompra.ShowModal;
  finally
    fListadeCompra.Free;
  end;
end;

procedure TfAtsAdmin.RelatriodeCompras1Click(Sender: TObject);
begin
  fRel := TfRel.Create(Application);
  try
    fRel.ShowModal;
  finally
    fRel.Free;
  end;
end;

procedure TfAtsAdmin.RelatriodeComprasVendaICMS1Click(Sender: TObject);
begin
  fRel_Vendas:=TfRel_Vendas.Create(Application);
  try
    fRel_Vendas.GroupBox1.Visible := false;
    fRel_Vendas.RadioButton1.Visible := False;
    fRel_Vendas.RadioButton2.Visible := False;
    fRel_Vendas.RadioButton3.Visible := False;
    fRel_Vendas.RadioButton4.Visible := False;
    fRel_Vendas.btnImprimir.Visible := False;
    fRel_Vendas.ComboBox1.Visible := False;
    fRel_Vendas.ComboBox2.Visible := False;
    fRel_Vendas.Label3.Visible := False;
    fRel_Vendas.Label4.Visible := False;
    fRel_Vendas.ShowModal;
  finally
    fRel_Vendas.Free;
  end;
end;

procedure TfAtsAdmin.mnDevCompraClick(Sender: TObject);
begin
    DM.tipoCompra := 'DEVOLUCAO';
    fCompra.ShowModal;
end;

procedure TfAtsAdmin.DevolucaoVendas1Click(Sender: TObject);
begin
   DM.tipoVenda := 'DEVOLUCAO';
   fVendas.ShowModal;
end;

procedure TfAtsAdmin.acComprasExecute(Sender: TObject);
begin
  // fRateioPag := TfRateioPag.Create(Application);
  // try
  DM.tipoCompra := 'COMPRA';
  fCompra.MMJPanel1.Background.EndColor   := dm.corEnd;
  fCompra.MMJPanel1.Background.StartColor := dm.corStart;
  fCompra.MMJPanel2.Background.EndColor   := dm.corStart;
  fCompra.MMJPanel2.Background.StartColor := dm.corEnd;

  fCompra.ShowModal;
  //finally
  // fRateioPag.Free;
  //end;
end;

procedure TfAtsAdmin.acVendasExecute(Sender: TObject);
begin
 //fMostra_Contas := TfMostra_Contas.Create(Application);
// fVendaFinalizar := TfVendaFinalizar.Create(Application);
 //fCheques_bol := TfCheques_bol.Create(Application);
// try
   DM.tipoVenda := 'VENDA';
   fVendas.ShowModal;
 //finally
 // fCheques_bol.Free;
 // fMostra_Contas.Free;
  //fVendaFinalizar.Free;
 //end;
end;

procedure TfAtsAdmin.acNFiscaisExecute(Sender: TObject);
begin
  usulog :=  UserControlComercial.CurrentUser.UserID;
  nome_user := UserControlComercial.CurrentUser.UserName;
  fEscolherNF := TfEscolherNF.Create(Application);
  try
    fEscolherNF.ShowModal;
  finally
    fEscolherNF.Free;
  end;
end;

procedure TfAtsAdmin.acTerminalExecute(Sender: TObject);
var
  empresaemuso : string;
begin
  usulog :=  UserControlComercial.CurrentUser.UserID;
  nome_user := UserControlComercial.CurrentUser.UserName;

  if (DM.cds_parametro.Active) then
       DM.cds_parametro.Close;
  DM.cds_parametro.Params[0].AsString := 'PDVNTC';
  DM.cds_parametro.Open;
  if (DM.cds_parametro.Eof) then
  begin
    //WinExec('prjTerminal.EXE', SW_SHOWNORMAL);
    fTerminal2 := TfTerminal2.Create(Application);
    try
      fTerminal2.ShowModal;
    finally
      fTerminal2.Free;
    end;

  end
  else
  begin
    fTerminalNTC := TfTerminalNTC.Create(Application);
    try
      sCtrlResize.CtrlResize(TForm(fTerminalNTC));
      fTerminalNTC.ShowModal;
    finally
      fTerminalNTC.Free;
    end;
  end;
end;

procedure TfAtsAdmin.acEstoqueExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'AUTOMOTIVAXXX') then
  begin
    fProcura_prodOficina.btnIncluir.Visible := true;
    fProcura_prodOficina.ShowModal;
    fProcura_prodOficina.cbMarca.Text := '';
  end else begin
    fProcura_produtos.btnIncluir.Visible := true;
    fProcura_produtos.ShowModal;
    fProcura_produtos.cbMarca.Text := '';
  end;
end;

procedure TfAtsAdmin.acClientesExecute(Sender: TObject);
begin
   fListaClientes := TfListaClientes.Create(Application);
   //fClienteCadastro := TfClienteCadastro.Create(Application);
   try
     varform := 'consulta';
     dm.var_teste := 'consulta';
     fListaClientes.ShowModal;
   finally
     //fClienteCadastro.Free;
     fListaClientes.Free;
     varform := '';
     dm.var_teste := '';
   end;
end;

procedure TfAtsAdmin.btnsairClick(Sender: TObject);
begin
  close;
end;

procedure TfAtsAdmin.acReceberExecute(Sender: TObject);
var
  TD: TTransactionDesc;
begin
  { Limpo a Tabela caso o sistema foi fechado de forma incorreta }
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP is not null');
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
  end;

  fcrproc := Tfcrproc.Create(Application);
  try
     fcrproc.ShowModal;
  finally
     fcrproc.Free;
  end;

end;

procedure TfAtsAdmin.MovimentaoFinanceira1Click(Sender: TObject);
begin
  fContabilLanc := TfContabilLanc.Create(Application);
  try
    fContabilLanc.ShowModal;
  finally
    fContabilLanc.Free;
  end;
end;

procedure TfAtsAdmin.GerarMensalidades1Click(Sender: TObject);
begin
  fGeraCob := TfGeraCob.Create(Application);
  try
    fGeraCob.ComboBox2.Visible := true;
    fGeraCob.Label3.Visible := true;
    fGeraCob.ComboBox3.Visible := False;
    fGeraCob.Label12.Visible := False;
   if (dm.moduloUsado = 'SAUDE') then
   begin
    fGeraCob.edCodCCusto.Visible := TRUE;
   END;
    fGeraCob.Label11.Visible := False;
    fGeraCob.ShowModal;
  finally
    fGeraCob.Free;
  end;

end;

procedure TfAtsAdmin.VerMovimentaodecheques1Click(Sender: TObject);
begin
  fProcuraCheque := TfProcuraCheque.Create(Application);
  try
    fProcuraCheque.ShowModal;
  finally
    fProcuraCheque.Free;
  end; 
end;

procedure TfAtsAdmin.RelContasaPagar1Click(Sender: TObject);
begin
  //fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);
  fRelatorio := TfRelatorio.Create(Application);
  try
    fRelatorio.ShowModal;
  finally
    //fFiltro_forn_plano.Free;
    fRelatorio.Free;
  end;
end;

procedure TfAtsAdmin.RelContasaReceber1Click(Sender: TObject);
begin
  fRelatorioReceber := TfRelatorioReceber.Create(Application);
  try
    fRelatorioReceber.ShowModal;
  finally
    fRelatorioreceber.Free;
  end;
end;

procedure TfAtsAdmin.RelDRE1Click(Sender: TObject);
begin
  fRelatorioFin := TfRelatorioFin.Create(Application);
  try
    fRelatorioFin.ShowModal;
  finally
    fRelatorioFin.Free;
  end;
end;

procedure TfAtsAdmin.mPlanoContasClick(Sender: TObject);
begin
 fContasAssistente := TfContasAssistente.Create(Application);
 try
  fContasAssistente.ShowModal;
 finally
  fContasAssistente.Free;
 end;
end;

procedure TfAtsAdmin.mSuporteClick(Sender: TObject);
begin
  WinExec('atsSuporte.EXE', SW_SHOWNORMAL);
end;

procedure TfAtsAdmin.mCadColaboradorClick(Sender: TObject);
begin
  // Carlos
  fFuncionario := TfFuncionario.Create(Application);
  try
    fFuncionario.ShowModal;
  finally
    fFuncionario.Free;
  end;
end;

procedure TfAtsAdmin.CFOPEstados1Click(Sender: TObject);
begin
  fEstado := TfEstado.Create(Application);
  try
    fEstado.ShowModal;
  finally
    fEstado.Free;
  end;
end;

procedure TfAtsAdmin.Empresa1Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Application);
  try
    fEmpresa.ShowModal;
  finally
    fEmpresa.Free;
  end;
end;

procedure TfAtsAdmin.VerEstoque1Click(Sender: TObject);
begin
 fFiltroEstoque := TfFiltroEstoque.Create(Application);
 try
   fFiltroEstoque.ShowModal;
 finally
   fFiltroEstoque.Free;
 end;
end;

procedure TfAtsAdmin.EntradadeEstoque1Click(Sender: TObject);
begin
 fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
 try
   with fEntra_Sai_estoque do
   begin
     label1.visible := False;
     dbEdit1.Visible := False;
     Label2.Visible := False;
     Combobox1.Visible := False;
     Label11.Visible := False;
     Edit1.Visible := False;
     label13.Top := label13.Top - 15;
     MaskEdit1.Top := MaskEdit1.Top - 15;
     Label3.Top := Label3.Top - 15;
     Combobox2.Top := Combobox2.Top - 15;
     Label12.Top := Label12.Top - 15;
     Edit2.Top := Edit2.Top - 15;
     entsai := 0;
     Label15.Caption := 'Entrada de Mercadorias de Estoque';

     cbCodigo.DataField := '';
     cbNome.DataField := '';
     if (cdsB.Active) then
       cdsB.Close;
     cdsB.CommandText := 'SELECT CODFORNECEDOR, NOMEFORNECEDOR FROM FORNECEDOR WHERE ' +
       ' STATUS = 1';
     cdsB.Open;
     cbCodigo.DataField := 'CODFORNECEDOR';
     cbNome.DataField := 'NOMEFORNECEDOR';

     ShowModal;
   end;
 finally
   fEntra_Sai_estoque.Free;
 end;

end;

procedure TfAtsAdmin.SaidadeEstoque1Click(Sender: TObject);
begin
  fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
 try
   with fEntra_Sai_estoque do
   begin
     label13.visible := False;
     MaskEdit1.Visible := False;
     Label3.Visible := False;
     Combobox2.Visible := False;
     Label12.Visible := False;
     Edit2.Visible := False;
     label1.Top := label1.Top + 15;
     DbEdit1.Top := DbEdit1.Top + 15;
     Label2.Top := Label2.Top + 15;
     Combobox1.Top := Combobox1.Top + 15;
     Label11.Top := Label11.Top + 15;
     Edit1.Top := Edit1.Top + 15;
     entsai := 1;
     Label15.Caption := 'Saida de Mercadorias de Estoque';

     cbCodigo.DataField := '';
     cbNome.DataField := '';
     if (cdsB.Active) then
       cdsB.Close;
     cdsB.CommandText := 'SELECT CODCLIENTE, NOMECLIENTE FROM CLIENTES WHERE ' +
       ' STATUS = 1';
     cdsB.Open;
     cbCodigo.DataField := 'CODCLIENTE';
     cbNome.DataField := 'NOMECLIENTE';

     ShowModal;
   end;
 finally
   fEntra_Sai_estoque.Free;
 end;
end;

procedure TfAtsAdmin.MovimentaodeEstoque1Click(Sender: TObject);
begin
  {fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
  try
   with fEntra_Sai_estoque do
   begin
     entsai := 1;
     Label14.visible := False;
     Label16.visible := False;
     cbCodigo.visible := False;
     cbNome.visible := False;
     Label15.Caption := 'Movimento de Mercadorias no Estoque';
     ShowModal;
   end;
  finally
   fEntra_Sai_estoque.Free;
  end; }
  {
  fMovLinhas := TfMovLinhas.Create(Application);
  try
    fMovLinhas.ShowModal;
  finally
    fMovLinhas.Free;
  end;
  }

  fMovimenta_Estoque := TfMovimenta_Estoque.Create(Application);
  try
    fMovimenta_Estoque.ShowModal;
  finally
    fMovimenta_Estoque.Free;
  end;


end;

procedure TfAtsAdmin.RelatrioListadeProdutos2Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtos.rep';
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.RelatrioListadeProdporLote2Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtosLotes.rep';
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.RelCaixa1Click(Sender: TObject);
begin
 fRelatorioCaixa := TfRelatorioCaixa.Create(Application);
 try
   fRelatorioCaixa.ShowModal;
 finally
   fRelatorioCaixa.Free;
 end;
end;

procedure TfAtsAdmin.FluxoCaixa1Click(Sender: TObject);
begin
 fFluxoCaixa := TfFluxoCaixa.Create(Application);
 try
   fFluxoCaixa.ShowModal;
 finally
   fFluxoCaixa.Free;
 end;

end;

procedure TfAtsAdmin.acAPagarExecute(Sender: TObject);
begin
 fCpProc:=TfCpProc.Create(Application);
 try
   fCpProc.usuarioCPProc := 'GERAL';
   fCpProc.bitbtn9.visible := False;
   fCpProc.ShowModal;
 finally
   fCpProc.Free;
 end;
end;

procedure TfAtsAdmin.acDespesaExecute(Sender: TObject);
begin
  // Verifica se usa centro de Custo
 { if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRO CUSTO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
      fRateioPag:=TfRateioPag.Create(Application);
  try
    fcrTituloPagto.ShowModal;
  finally
    if dm.cds_parametroDADOS.AsString = 'S' then
      fRateioPag.Free;
  end;
  dm.cds_parametro.Close; }
  fcrTituloPagto.consultaUser := 'GERAL';
  DM.varAplicacaoID := fAtsAdmin.UserControlComercial.ApplicationID;
  Dm.varUSERID := fAtsAdmin.UserControlComercial.CurrentUser.UserID;
  fcrTituloPagto.ShowModal;
end;

procedure TfAtsAdmin.acReceitasExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'ESCOLA') then
  begin
    fcrTituloInclui.DBEdit4.Visible := True;
    fcrTituloInclui.Label9.Caption := 'RA';
    fcrTituloInclui.Label10.Caption := 'Aluno';
  end;
  fcrTituloInclui.ShowModal;

end;

procedure TfAtsAdmin.acBancoExecute(Sender: TObject);
begin
 fbanco:=Tfbanco.Create(Application);
 try
   dm.cdsBanco.Open;
   fbanco.ShowModal;
 finally
   dm.cdsBanco.Close;
   fbanco.Free;
 end;
end;

procedure TfAtsAdmin.Prazos1Click(Sender: TObject);
begin
 fPrazo := TfPrazo.Create(Application);
 try
   dm.cdsPrazo.Open;
   fPrazo.ShowModal;
 finally
   dm.cdsPrazo.Close;
   fPrazo.Free;
 end;
end;

procedure TfAtsAdmin.acPrazoExecute(Sender: TObject);
begin
 fPrazo := TfPrazo.Create(Application);
 try
   dm.cdsPrazo.Open;
   fPrazo.ShowModal;
 finally
   dm.cdsPrazo.Close;
   fPrazo.Free;
 end;
end;
procedure TfAtsAdmin.acArquivoRetornoExecute(Sender: TObject);
begin
  fArquivoRetorno := TfArquivoRetorno.Create(Application);
  try
    fArquivoRetorno.ShowModal;
  finally
    fArquivoRetorno.Free;
  end;
end;

procedure TfAtsAdmin.acClienteBloqueioExecute(Sender: TObject);
begin
  fClienteBloqueio := TfClienteBloqueio.Create(Application);
  try
    fClienteBloqueio.ShowModal;
  finally
    fClienteBloqueio.Free;
  end;

end;

procedure TfAtsAdmin.LanamentoPassivo1Click(Sender: TObject);
begin
  fPassivo := TfPassivo.Create(Application);
  try
    fPassivo.ShowModal;
  finally
    fPassivo.Free;
  end;

end;

procedure TfAtsAdmin.LanarOS1Click(Sender: TObject);
begin
  {fOs := TfOs.Create(Application);
  try}
    fOsFiltro.ShowModal;
  {finally
    fOS.Free;
  end; }
{  fMaquinasControle := TfMaquinasControle.Create(Application);
  try
    fMaquinasControle.ShowModal;
  finally
    fMaquinasControle.Free;
  end;}
end;

procedure TfAtsAdmin.ExportaNotaFiscal1Click(Sender: TObject);
begin
  fNotaFiscalExporta := TfNotaFiscalExporta.Create(Application);
  try
    fNotaFiscalExporta.ShowModal;
  finally
    fNotaFiscalExporta.Free;
  end;
end;

procedure TfAtsAdmin.Maquinas1Click(Sender: TObject);
begin
   fClienteVeiculo := TfClienteVeiculo.Create(Application);
   try
     cod_cli := 0;//cds_MovimentoCODCLIENTE.AsInteger;
     fClienteVeiculo.ShowModal;
   finally
     fClienteVeiculo.varplaca := '';
     fClienteVeiculo.Free;
   end;
end;

procedure TfAtsAdmin.ListaOS1Click(Sender: TObject);
begin
  fFintroContMaq := TfFintroContMaq.Create(Application);
  try
    fFintroContMaq.VarForm := '';  
    fFintroContMaq.ShowModal;
  finally
    fFintroContMaq.free;
  end;  
end;

procedure TfAtsAdmin.RelatriodeVendasprEstado1Click(Sender: TObject);
begin
  fRelVendasUF := TfRelVendasUF.Create(Application);
  try
    fRelVendasUF.ShowModal;
  finally
    fRelVendasUF.Free;
  end;
end;

procedure TfAtsAdmin.Controlede1Click(Sender: TObject);
begin
  fFrequencia := TfFrequencia.Create(Application);
  try
    fFrequencia.ShowModal;
  finally
    fFrequencia.free;
  end;
end;

procedure TfAtsAdmin.FechamentodeContas1Click(Sender: TObject);
begin
  fDespRec := TfDespRec.Create(Application);
  try
    fDespRec.ShowModal;
  finally
    fDespRec.free;
  end;
end;

procedure TfAtsAdmin.RelProgramaodeRecebimento1Click(Sender: TObject);
begin
   fRelProgReceb := TfRelProgReceb.Create(Application);
   try
     fRelProgReceb.ShowModal;
   finally
     fRelProgReceb.Free;
   end;  
end;

procedure TfAtsAdmin.ExportarTabelas1Click(Sender: TObject);
begin
 { fSincronizar := TfSincronizar.Create(Application);
  try
    fSincronizar.ShowModal;
  finally
    fSincronizar.Free;
  end;}
  fImport := TfImport.Create(Application);
  try
    fImport.ShowModal;
  finally
    fImport.Free;
  end;
end;

procedure TfAtsAdmin.RelatrioGuiaConehcimento1Click(Sender: TObject);
begin
  fRel_Guia := TfRel_Guia.Create(Application);
  try
    fRel_Guia.ShowModal;
  finally
    fRel_Guia.Free;
  end;
end;

procedure TfAtsAdmin.tulosDescontados1Click(Sender: TObject);
begin
  fcrdescontado := Tfcrdescontado.Create(Application);
  try
      fcrdescontado.ShowModal;
  finally
    fcrdescontado.Free;
  end;
end;

procedure TfAtsAdmin.NotaFiscalPaulista1Click(Sender: TObject);
begin
    fNFPaulista := TfNFPaulista.Create(Application);
  try
      fNFPaulista.ShowModal;
  finally
    fNFPaulista.Free;
  end;
end;

procedure TfAtsAdmin.RelatrioDeComisso1Click(Sender: TObject);
begin
    fRel_comissao := TfRel_comissao.Create(Application);
  try
      fRel_comissao.ShowModal;
  finally
    fRel_comissao.Free;
  end;
end;

procedure TfAtsAdmin.RelatriodeDivergncias1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_divergencias.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.execute;
end;


procedure TfAtsAdmin.OrdemdeAssitnciaTcnica1Click(Sender: TObject);
begin
    fOrdemAssistencia := TfOrdemAssistencia.Create(Application);
  try
      fOrdemAssistencia.ShowModal;
  finally
    fOrdemAssistencia.Free;
  end;
end;

procedure TfAtsAdmin.MapeamentodeEstoque1Click(Sender: TObject);
begin
   fMapeamento := TfMapeamento.Create(Application);
   try
     fMapeamento.ShowModal;
   finally
     fMapeamento.Free;
   end;
end;

procedure TfAtsAdmin.AlterarValordosProdutosprFornecedor1Click(
  Sender: TObject);
begin
   fGeraAumento := TfGeraAumento.Create(Application);
   try
     fGeraAumento.ShowModal;
   finally
     fGeraAumento.Free;
   end;
end;

procedure TfAtsAdmin.ExportaoparaContMatic1Click(Sender: TObject);
begin
   fExpContMat := TfExpContMat.Create(Application);
   try
     fExpContMat.ShowModal;
   finally
     fExpContMat.Free;
   end;
end;

procedure TfAtsAdmin.Parametro1Click(Sender: TObject);
begin
  fParametro := TfParametro.Create(Application);
  try
    fParametro.ShowModal;
  finally
    fParametro.Free;
  end;
  {ComboBox14.ItemIndex := 3;
  ComboBox13.ItemIndex := 1;
  ComboBox14Change(ComboBox14);
  ComboBox13Change(ComboBox13);
  }
end;

procedure TfAtsAdmin.acCupomExecute(Sender: TObject);
begin
	fTerminal_Delivery := TfTerminal_Delivery.Create(Application);
	try
		fTerminal_Delivery.ShowModal;
	finally
		fTerminal_Delivery.Free;
	end;
end;

Procedure TfAtsAdmin.OS1Click(Sender: TObject);
begin   
	fOs := TfOs.Create(Application);
	try
		fOs.ShowModal;
	finally
		fOs.Free;
	end;
end;

Procedure TfAtsAdmin.RelatriodePrFaturamento1Click(Sender: TObject);
begin   
	fPfaturamento := TfPfaturamento.Create(Application);
	try
		fPfaturamento.ShowModal;
	finally
		fPfaturamento.Free;
	end;
end;

procedure TfAtsAdmin.NotaFiscalEletrnica1Click(Sender: TObject);
begin
      fNFeletronica.ShowModal;
end;

procedure TfAtsAdmin.CidadesIBGE1Click(Sender: TObject);
begin
    fTb_Ibge := TfTb_Ibge.Create(Application);
  try
      fTb_Ibge.ShowModal;
  finally
    fTb_Ibge.Free;
  end;
end;

procedure TfAtsAdmin.OrdemdeProduo1Click(Sender: TObject);
begin
	fOf := TfOf.Create(Application);
	try
    fOf.OfTipo := 'OP';
		fOf.ShowModal;
	finally
		fOf.Free;
	end;
end;

procedure TfAtsAdmin.ApontarProduo1Click(Sender: TObject);
begin
	fOf := TfOf.Create(Application);
	try
    fOf.OfTipo := 'APONTAMENTO';
    fOf.JvLabel1.Caption := 'Apontamento de Produção';
    fOf.Caption := 'Apontamento de Produção';
		fOf.ShowModal;
	finally
		fOf.Free;
	end;

end;

procedure TfAtsAdmin.CallCenter1Click(Sender: TObject);
begin
  usulog :=  UserControlComercial.CurrentUser.UserID;
	fCallCenter := TfCallCenter.Create(Application);
	try
		fCallCenter.ShowModal;
	finally
		fCallCenter.Free;
	end;
end;

procedure TfAtsAdmin.ipoAtendimento1Click(Sender: TObject);
begin
  fCombo:=TfCombo.Create(Application);
  fCombo.Label1.Caption := 'TIPO ATENDIMENTO';
  fCombo.Label2.Caption := 'TIPO ATENDIMENTO';
  fCombo.DBRadioGroup1.Visible := false;  
  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;

end;

procedure TfAtsAdmin.GerarEtiquetas1Click(Sender: TObject);
begin
    fGeraEtiquetas := TfGeraEtiquetas.Create(Application);
  try
      fGeraEtiquetas.ShowModal;
  finally
    fGeraEtiquetas.Free;
  end;
end;

procedure TfAtsAdmin.CorrigeEstoque1Click(Sender: TObject);
begin
  {Corrige o Estoque }
  fEstoqueCorrige := TfEstoqueCorrige.Create(Application);
  try
    fEstoqueCorrige.ShowModal;
  finally
    fEstoqueCorrige.Free;
  end;
end;

procedure TfAtsAdmin.CFOP1Click(Sender: TObject);
begin
  fCfop := TfCfop.Create(Application);
  try
    fCfop.ShowModal;
  finally
    fCfop.Free;
  end;
end;

procedure TfAtsAdmin.RelBalancete1Click(Sender: TObject);
begin
  fBalancete.ShowModal;
end;

procedure TfAtsAdmin.AlterarValordeVendadosProdutos1Click(Sender: TObject);
begin
  fProdGeraAumento := TfProdGeraAumento.Create(Application);
  try
    fProdGeraAumento.ShowModal;
  finally
    fProdGeraAumento.Free;
  end;
end;

procedure TfAtsAdmin.Inventario1Click(Sender: TObject);
begin
 fInventario := TfInventario.Create(Application);
 try
   fInventario.ShowModal;
 finally
   fInventario.Free;
 end;
end;

procedure TfAtsAdmin.SolicitacaoCompras1Click(Sender: TObject);
begin
  //WinExec('prjCompras', SW_SHOWNORMAL);
  fSolicitacaoCompra := TfSolicitacaoCompra.Create(Application);
  try
    fSolicitacaoCompra.ShowModal;
  finally
    fSolicitacaoCompra.Free;
  end;
end;

procedure TfAtsAdmin.CotacaoCompras1Click(Sender: TObject);
begin
  fCompraCotacao := TfCompraCotacao.Create(Application);
  try
    fCompraCotacao.ShowModal;
  finally
    fCompraCotacao.Free;
  end;
end;

procedure TfAtsAdmin.ApontamentodeHoras1Click(Sender: TObject);
begin
  fApontHoras := TfApontHoras.Create(Application);
  try
    fApontHoras.ShowModal;
  finally
    fApontHoras.Free;
  end;
end;

procedure TfAtsAdmin.NFeNoPeriodo1Click(Sender: TObject);
begin
  fRelNfe := TfRelNfe.Create(Application);
  try
    fRelNfe.ShowModal;
  finally
    fRelNfe.Free;
  end;
end;

procedure TfAtsAdmin.RecebimentoMateriais1Click(Sender: TObject);
begin
  fCompraRecebimento := TfCompraRecebimento.Create(Application);
  try
    fCompraRecebimento.ShowModal;
  finally
    fCompraRecebimento.Free;
  end;

end;

procedure TfAtsAdmin.Cotao1Click(Sender: TObject);
begin
  fCompraCotacao2 := TfCompraCotacao2.Create(Application);
  fCotacoesHist := TfCotacoesHist.Create(Application);
  try
    fCompraCotacao2.ShowModal;
  finally
    fCompraCotacao2.Free;
    fCotacoesHist.Free;
  end;
end;

procedure TfAtsAdmin.CotaoPedido1Click(Sender: TObject);
begin
  fCompra.Caption := 'Pedido - Cotacao';
  fCompra.btnIncluir.Left := -200;
  fCompra.BitBtn1.Visible := False;
  dm.tipoCompra := 'COTACAO';
  fCompra.MMJPanel1.Background.EndColor := clYellow;
  fCompra.MMJPanel2.Background.StartColor := clYellow;
  fCompra.ShowModal;
  fCompra.btnIncluir.Left := 4;
    fCompra.BitBtn1.Visible := True;
end;
procedure TfAtsAdmin.DeclaraodeImportao1Click(Sender: TObject);
begin
  fDadosImportacao := TfDadosImportacao.Create(Application);
  try
    fDadosImportacao.ShowModal;
  finally
    fDadosImportacao.Free;
  end;
end;
procedure TfAtsAdmin.Similares1Click(Sender: TObject);
begin
  F_SIMILARES := TF_SIMILARES.Create(Application);
  try
    F_SIMILARES.ShowModal;
  finally
    F_SIMILARES.Free;
  end;
end;

procedure TfAtsAdmin.Button1Click(Sender: TObject);
var str: string;
begin
  Dm.varLogado        := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
  str := 'INSERT INTO LOG_ACESSO (LOGIN, MICRO, ' +
    'ID_LOG)  VALUES (' +
    QuotedStr(dm.varLogado) + ', ' + QuotedStr(dm.NomeComputador) + ', ' +
    'GEN_ID(GEN_ID_LOG,1))';
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

function TfAtsAdmin.DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;

function TfAtsAdmin.RemoveChar(const Texto: String): String;
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

procedure TfAtsAdmin.acBoletoAtsExecute(Sender: TObject);
var caminho, arquivo, empresa: String;
Save_Cursor:TCursor;
begin
  empresa := RemoveChar(dm.empresa);
  // URL Location
  caminho := 'http://www.atsti.com.br/boleto/' + empresa + '.pdf';
  // Where to save the file
  arquivo := 'ATS_Boleto.pdf';
  if (SaveDialog1.Execute) then
  begin
    SaveDialog1.InitialDir := GetCurrentDir;
    arquivo := SaveDialog1.FileName;
  end;
  try
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;    // Show hourglass cursor
    if DownloadFile(caminho, arquivo) then
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE PARAMETRO SET ' +
    ' D8 = ' + QuotedStr('') +
    ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
      ShowMessage('Baixado com sucesso!');
      // Show downloaded image in your browser
      ShellExecute(Application.Handle, PChar('open'), PChar(arquivo), PChar(''), nil, SW_NORMAL);
    end
    else
      ShowMessage('Erro para baixar arquivo ' + empresa + '.pdf')
  finally
    Screen.Cursor := Save_Cursor;  //Always restore to normal
  end;
end;

procedure TfAtsAdmin.Expedio1Click(Sender: TObject);
begin
  fExpedicao := TfExpedicao.Create(Application);
  try
    fExpedicao.ShowModal;
  finally
    fExpedicao.Free;
  end;

end;

procedure TfAtsAdmin.AdmCaixaBanco1Click(Sender: TObject);
begin
  fCaixaBanco := TfCaixaBanco.Create(Application);
  try
    fCaixaBanco.ShowModal;
  finally
    fCaixaBanco.Free;
  end;

end;

procedure TfAtsAdmin.RelatriodeFornecedores1Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'fornecedorCadastro.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Execute;
end;

procedure TfAtsAdmin.RelatriodeClientes1Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'rel_cliente.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Execute;
end;

procedure TfAtsAdmin.NaturezaOperao1Click(Sender: TObject);
begin
  fNaturezaOperacao := TfNaturezaOperacao.Create(Application);
  try
    fNaturezaOperacao.ShowModal;
  finally
    fNaturezaOperacao.Free;
  end;

end;


procedure TfAtsAdmin.acAgendaExecute(Sender: TObject);
begin
  fAgendamento := TfAgendamento.Create(Application);
  try
    fAgendamento.ShowModal;
  finally
    fAgendamento.Free;
  end;
end;

procedure TfAtsAdmin.ListaEstoque1Click(Sender: TObject);
begin
 fListaEstoque := TfListaEstoque.Create(Application);
 try
   fListaEstoque.ShowModal;
 finally
   fListaEstoque.Free;
 end;
end;

procedure TfAtsAdmin.ProdutosSemMovimentao1Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'prod_sem_mov.rep';
  VCLReport1.Title    := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Execute;
end;

procedure TfAtsAdmin.Fechamento1Click(Sender: TObject);
begin
 { F_Fechamento := TF_Fechamento.Create(Application);
  try
    F_Fechamento.ShowModal;
  finally
    F_Fechamento.Free;
  end;
  }
end;

procedure TfAtsAdmin.MesasComandas1Click(Sender: TObject);
begin
  F_MESAS := TF_MESAS.Create(Application);
  try
    F_MESAS.ShowModal;
  finally
    F_MESAS.Free;
  end;
end;

function TfAtsAdmin.ClienteOk: Boolean;
var
  // variável que irá conter o arquivo
  config : TIniFile;
  // variável que irá armazenar parâmetro a ser lido do arquivo
  param : string;
begin
  {Exemplo de arquivo INI
   [PARAMETRO]
   SENHA=12345}
  // associa o arquivo de configuração a variável
  config := TIniFile.Create('C:\Aplicacao\config.ini');
  //variável param recebe 12345
  param := config.readstring('PARAMETRO','SENHA','');
end;


procedure TfAtsAdmin.GrficodeVendas1Click(Sender: TObject);
begin
  fPainelControle := TfPainelControle.Create(Application);
  try
    fPainelControle.ShowModal;
  finally
    fPainelControle.Free;
  end;
end;

procedure TfAtsAdmin.acPagarUsuarioExecute(Sender: TObject);
begin
  fcrTituloPagto.consultaUser := 'USUARIO';
  DM.varAplicacaoID := fAtsAdmin.UserControlComercial.ApplicationID;
  Dm.varUSERID := fAtsAdmin.UserControlComercial.CurrentUser.UserID;
  fcrTituloPagto.ShowModal;
end;

procedure TfAtsAdmin.PaineldeControleCompra1Click(Sender: TObject);
begin
  fPainelControleCompra := TfPainelControleCompra.Create(Application);
  try
    fPainelControleCompra.ShowModal;
  finally
    fPainelControleCompra.Free;
  end;
end;

procedure TfAtsAdmin.CartadeCorreoEletrnica1Click(Sender: TObject);
begin
   fCCe := TfCCe.Create(Application);
  try
    fCCe.ShowModal;
  finally
    fCCe.Free;
  end;
end;

procedure TfAtsAdmin.AjusteEstoque1Click(Sender: TObject);
begin
 fEstoqueAjuste := TfEstoqueAjuste.Create(Application);
 try
   fEstoqueAjuste.ShowModal;
 finally
   fEstoqueAjuste.Free;
 end;
 end;

procedure TfAtsAdmin.ConciliaoBancaria1Click(Sender: TObject);
begin
 fBancoExtrato := TfBancoExtrato.Create(Application);
 fBancoDePara := TfBancoDePara.Create(Application);
 try
   fBancoExtrato.beUsuarioLogado := UserControlComercial.CurrentUser.UserID;
   fBancoExtrato.ShowModal;
 finally
   fBancoExtrato.Free;
   fBancoDePara.Free;
 end;
end;

procedure TfAtsAdmin.RelLucroPresumido1Click(Sender: TObject);
begin
  fRel_LucroPresumido := TfRel_LucroPresumido.Create(Application);
  try
    fRel_LucroPresumido.ShowModal;
  finally
    fRel_LucroPresumido.Free;
  end;
end;

procedure TfAtsAdmin.SpedPisCofins1Click(Sender: TObject);
begin
  //Gerar Arquivo Pis/Cofins
  fNfePisCofins := TfNfePisCofins.Create(Application);
  try
    fNfePisCofins.ShowModal;
  finally
    fNfePisCofins.Free;
  end;
end;

procedure TfAtsAdmin.RelatorioTitulos1Click(Sender: TObject);
begin
  fRelTitulos := TfRelTitulos.Create(Application);
  try
    fRelTitulos.ShowModal;
  finally
    fRelTitulos.Free;
  end;
end;

procedure TfAtsAdmin.dxButton11Click(Sender: TObject);
begin
  // Chat
  WinExec('Pandion\Application\pandion.exe', SW_NORMAL);  
end;

procedure TfAtsAdmin.Correio1Click(Sender: TObject);
begin
   fCorreio := TfCorreio.Create(Application);
   FiltroCorreio := TFiltroCorreio.Create(Application);
   try
      fCorreio.ShowModal;
   finally
     FiltroCorreio.Free;
     fCorreio.Free;
   end;
end;

procedure TfAtsAdmin.ListadeVendas1Click(Sender: TObject);
begin
   fListaVenda := TfListaVenda.Create(Application);
   try
      fListaVenda.ShowModal;
   finally
      fListaVenda.Free;
   end;
end;

procedure TfAtsAdmin.RelatriodeVendas1Click(Sender: TObject);
begin
  fRelVenda := TfRelVenda.Create(Application);
  try
    fRelVenda.ShowModal;
  finally
    fRelVenda.Free;
  end;
end;

procedure TfAtsAdmin.RelNotaFistalLote1Click(Sender: TObject);
begin
  fVendaRelPorNotaFiscalLote := TfVendaRelPorNotaFiscalLote.Create(Application);
  try
    fVendaRelPorNotaFiscalLote.ShowModal;
  finally
    fVendaRelPorNotaFiscalLote.Free;
  end;
end;

procedure TfAtsAdmin.FluxodeEstoque1Click(Sender: TObject);
begin
  fFluxoEstoque := TfFluxoEstoque.Create(Application);
  try
    fFluxoEstoque.ShowModal;
  finally
    fFluxoEstoque.Free;
  end;
end;

procedure TfAtsAdmin.CadastroDepartamento1Click(Sender: TObject);
begin
  fCadDep := TfCadDep.Create(Application);
  try
    fCadDep.ShowModal;
  finally
    fCadDep.Free;
  end;
end;

procedure TfAtsAdmin.CadastroSetor1Click(Sender: TObject);
begin
  fCadSetor := TfCadSetor.Create(Application);
  try
    fCadSetor.ShowModal;
  finally
    fCadSetor.Free;
  end;
end;

procedure TfAtsAdmin.CadastroTipoDoc1Click(Sender: TObject);
begin
  FCadDoc := TFCadDoc.Create(Application);
  try
    FCadDoc.ShowModal;
  finally
    FCadDoc.Free;
  end;
end;

procedure TfAtsAdmin.ipoDocumentos1Click(Sender: TObject);
begin
//
end;

procedure TfAtsAdmin.SpedFiscalICMS1Click(Sender: TObject);
begin
  fNfeIcms := TfNfeIcms.Create(Application);
  try
    fNfeIcms.ShowModal;
  finally
    fNfeIcms.Free;
  end;
end;

procedure TfAtsAdmin.Auditoria1Click(Sender: TObject);
begin
  fLogs := TfLogs.Create(Application);
  try
    fLogs.ShowModal;
  finally
    fLogs.Free;
  end;
end;

procedure TfAtsAdmin.UserControlComercialAfterLogin(Sender: TObject);
begin
  Dm.varLogado := UserControlComercial.CurrentUser.UserLogin;
end;

procedure TfAtsAdmin.CadastrarSemanas1Click(Sender: TObject);
begin
  fPeriodoSem := TfPeriodoSem.Create(Application);
  try
    fPeriodoSem.ShowModal;
  finally
    fPeriodoSem.Free;
  end;
end;

procedure TfAtsAdmin.AniversrioClientes1Click(Sender: TObject);
begin
  //SELCIONAR O PERIODO
  fClientesAniversario := TfClientesAniversario.Create(Application);
  try
    fClientesAniversario.ShowModal;
  finally
    fClientesAniversario.Free;
  end;
end;

procedure TfAtsAdmin.UnidadeMedida1Click(Sender: TObject);
begin
  fUnidadeMedida := TfUnidadeMedida.Create(Application);
  try
    fUnidadeMedida.ShowModal;
  finally
    fUnidadeMedida.Free;
  end;
end;

procedure TfAtsAdmin.ExportarCupom1Click(Sender: TObject);
begin
  fSincronizar := TfSincronizar.Create(Application);
  try
    fSincronizar.ShowModal;
  finally
    fSincronizar.Free;
  end;
end;

procedure TfAtsAdmin.CFOPNCM1Click(Sender: TObject);
begin
  fNCM := TfNCM.Create(Application);
  try
    fNCM.ShowModal;
  finally
    fNCM.Free;
  end;
end;

procedure TfAtsAdmin.ListadePreo1Click(Sender: TObject);
begin
  fListaVenda := TfListaVenda.Create(Application);
  try
    fListaVenda.ShowModal;
  finally
    fListaVenda.Free;
  end;
end;

end.
