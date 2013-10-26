unit ufParametro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, Grids, DBGrids, DBClient, Provider, DB, SqlExpr,
  Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls,
  ComCtrls,DBXpress, JvExExtCtrls, JvExtComponent, JvDBRadioPanel,
  JvExStdCtrls, JvCheckBox, JvExMask, JvToolEdit, JvBaseEdits,
  JvComponentBase, JvNavigationPane, ImgList, JvExControls, JvOutlookBar,
  DBLocal, DBLocalS, JvRadioGroup;

type
  TfParametro = class(TfPai)
    DataSource1: TDataSource;
    Parametro: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Edit12: TEdit;
    BitBtn4: TBitBtn;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    BitBtn5: TBitBtn;
    Image1: TImage;
    sbusca: TSQLDataSet;
    TabSheet3: TTabSheet;
    GroupBox9: TGroupBox;
    Label19: TLabel;
    BitBtn9: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label20: TLabel;
    GroupBox13: TGroupBox;
    Label24: TLabel;
    Label27: TLabel;
    BitBtn13: TBitBtn;
    ComboBox8: TComboBox;
    Edit15: TEdit;
    TabSheet4: TTabSheet;
    GroupBox14: TGroupBox;
    BitBtn14: TBitBtn;
    JvCheckBox1: TJvCheckBox;
    JvCheckBox2: TJvCheckBox;
    JvCheckBox3: TJvCheckBox;
    JvCheckBox4: TJvCheckBox;
    JvCheckBox5: TJvCheckBox;
    JvCheckBox6: TJvCheckBox;
    GroupBox15: TGroupBox;
    Label28: TLabel;
    Edit16: TEdit;
    BitBtn15: TBitBtn;
    TabSheet5: TTabSheet;
    GroupBox16: TGroupBox;
    Label29: TLabel;
    BitBtn16: TBitBtn;
    ComboBox7: TComboBox;
    GroupBox17: TGroupBox;
    Label30: TLabel;
    BitBtn17: TBitBtn;
    cbUsaJuros: TComboBox;
    Label31: TLabel;
    Label32: TLabel;
    edJuros: TJvCalcEdit;
    TabSheet6: TTabSheet;
    GroupBox20: TGroupBox;
    Label35: TLabel;
    BitBtn20: TBitBtn;
    ComboBox10: TComboBox;
    GroupBox21: TGroupBox;
    BitBtn21: TBitBtn;
    GroupBox22: TGroupBox;
    BitBtn22: TBitBtn;
    GroupBox23: TGroupBox;
    Label36: TLabel;
    BitBtn23: TBitBtn;
    GroupBox24: TGroupBox;
    Label37: TLabel;
    BitBtn24: TBitBtn;
    Label38: TLabel;
    Label39: TLabel;
    Image3: TImage;
    Image2: TImage;
    Image4: TImage;
    Compras: TTabSheet;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Edit13: TEdit;
    BitBtn2: TBitBtn;
    GroupBox11: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    BitBtn11: TBitBtn;
    ComboBox6: TComboBox;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    GroupBox19: TGroupBox;
    Label34: TLabel;
    BitBtn19: TBitBtn;
    ComboBox9: TComboBox;
    GroupBox25: TGroupBox;
    Label40: TLabel;
    BitBtn25: TBitBtn;
    ComboBox11: TComboBox;
    Label41: TLabel;
    edUserRespAprovaCompra: TEdit;
    GroupBox26: TGroupBox;
    Label43: TLabel;
    BitBtn26: TBitBtn;
    Edit22: TEdit;
    GroupBox27: TGroupBox;
    Label42: TLabel;
    Image5: TImage;
    Image6: TImage;
    BitBtn27: TBitBtn;
    GroupBox28: TGroupBox;
    Label44: TLabel;
    Image7: TImage;
    Image8: TImage;
    BitBtn28: TBitBtn;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    TabSheet7: TTabSheet;
    GroupBox8: TGroupBox;
    BitBtn8: TBitBtn;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    GroupBox29: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Edit23: TEdit;
    ComboBox12: TComboBox;
    GroupBox10: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn10: TBitBtn;
    ComboBox5: TComboBox;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    GroupBox7: TGroupBox;
    Label9: TLabel;
    Label47: TLabel;
    ComboBox1: TComboBox;
    MaskEdit4: TMaskEdit;
    BitBtn6: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox30: TGroupBox;
    Label10: TLabel;
    TabSheet8: TTabSheet;
    GroupBox18: TGroupBox;
    Label33: TLabel;
    Edit20: TEdit;
    BitBtn18: TBitBtn;
    cbCentroCusto: TComboBox;
    Edit21: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    TabSheet9: TTabSheet;
    JvOutlookBar1: TJvOutlookBar;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ImageList1: TImageList;
    ImageList2: TImageList;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    TabPDV: TTabSheet;
    s_parametro: TSQLDataSet;
    s_parametroDESCRICAO: TStringField;
    s_parametroPARAMETRO: TStringField;
    s_parametroCONFIGURADO: TStringField;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    s_parametroD5: TStringField;
    s_parametroD6: TStringField;
    s_parametroD7: TStringField;
    s_parametroD8: TStringField;
    s_parametroD9: TStringField;
    s_parametroINSTRUCOES: TStringField;
    s_parametroVALOR: TFloatField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    chkImpUmRecibo: TCheckBox;
    chkcontroleCaixa: TCheckBox;
    chkImpressaoResumida: TCheckBox;
    chkBloquearComanda: TCheckBox;
    chkPedirSenha: TCheckBox;
    chkNaoAlterarPreco: TCheckBox;
    chkDelivery: TCheckBox;
    chkComandas: TCheckBox;
    chkVendaConsumidor: TCheckBox;
    chkImprimirTXT: TCheckBox;
    rgPgComissao: TRadioGroup;
    rgUsaLote: TRadioGroup;
    rgBuscaPadrao: TRadioGroup;
    rgTipoImpressao: TRadioGroup;
    lbl1: TLabel;
    edtMensagem: TEdit;
    edtMensagem1: TEdit;
    edtMensagem2: TEdit;
    lbl2: TLabel;
    edtEdtPorta: TEdit;
    edtSetor2: TEdit;
    edtSetor3: TEdit;
    edtEdtSerie: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    grp1: TGroupBox;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edtPerfil01: TEdit;
    edtPerfil02: TEdit;
    edtPerfil04: TEdit;
    edtPerfil03: TEdit;
    grp2: TGroupBox;
    lbl10: TLabel;
    chkUsaDLL: TCheckBox;
    chkImpAoGravar: TCheckBox;
    chkAbrirGavetaAoGravar: TCheckBox;
    edtModelo: TEdit;
    rgEstoqueNegativo: TRadioGroup;
    ts2: TTabSheet;
    edt1: TEdit;
    lbl11: TLabel;
    chk1: TCheckBox;
    BitBtn30: TBitBtn;
    Label50: TLabel;
    Edit14: TEdit;
    Button1: TButton;
    edtCXInterno: TEdit;
    lbl12: TLabel;
    edtCXSangria: TEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    edtTela: TEdit;
    edtPorc: TEdit;
    lbl15: TLabel;
    rg1: TRadioGroup;
    edtCaixinha: TEdit;
    lbl16: TLabel;
    GroupBox31: TGroupBox;
    MaskEdit3: TMaskEdit;
    Label51: TLabel;
    BitBtn31: TBitBtn;
    RadioGroup3: TRadioGroup;
    BitBtn32: TBitBtn;
    rgBloqueio: TRadioGroup;
    edtModelo2: TEdit;
    edtModelo3: TEdit;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Pc2: TEdit;
    Pc1: TEdit;
    Pc3: TEdit;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit17: TEdit;
    BitBtn7: TBitBtn;
    Edit18: TEdit;
    Edit19: TEdit;
    ComboBox2: TComboBox;
    GroupBox12: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    BitBtn12: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    GroupBox32: TGroupBox;
    Label57: TLabel;
    btnNFSerie: TBitBtn;
    edtSerieNF: TEdit;
    BitBtn34: TBitBtn;
    GroupBox33: TGroupBox;
    Label58: TLabel;
    BitBtn33: TBitBtn;
    edNotaFiscalNatureza: TEdit;
    BitBtn35: TBitBtn;
    edNotaFiscalNaturezaDesc: TEdit;
    GroupBox34: TGroupBox;
    Label59: TLabel;
    BitBtn36: TBitBtn;
    edSerieScan: TEdit;
    BitBtn37: TBitBtn;
    BitBtn39: TBitBtn;
    BitBtn40: TBitBtn;
    GroupBox35: TGroupBox;
    edNumNfe: TEdit;
    btnNumNfe: TBitBtn;
    GroupBox36: TGroupBox;
    edNumNfeScam: TEdit;
    BitBtn41: TBitBtn;
    tsCupom: TTabSheet;
    rgPesqProdCupom: TRadioGroup;
    GroupBox37: TGroupBox;
    cbCupom: TCheckBox;
    Label60: TLabel;
    edtConsumidor: TEdit;
    rgCadastroCliente: TRadioGroup;
    GroupBox38: TGroupBox;
    Label61: TLabel;
    edListaCondicao1: TEdit;
    edListaCondicaoCalc1: TEdit;
    BitBtn38: TBitBtn;
    edListaCondicao2: TEdit;
    Label62: TLabel;
    edListaCondicaoCalc2: TEdit;
    Label63: TLabel;
    edListaCondicao3: TEdit;
    edListaCondicaoCalc3: TEdit;
    Label64: TLabel;
    edCondicaoArredondar: TEdit;
    rgDataNF: TRadioGroup;
    GroupBox39: TGroupBox;
    BitBtn42: TBitBtn;
    rgMesmoNumero: TRadioGroup;
    GroupBox40: TGroupBox;
    RadioGroup4: TRadioGroup;
    BitBtn43: TBitBtn;
    rgNfe: TRadioGroup;
    gbOP: TGroupBox;
    LISTAPRECOGrava: TBitBtn;
    RadioGroup5: TJvRadioGroup;
    lblSerie: TLabel;
    btnGravarOP: TBitBtn;
    edtOP: TEdit;
    edCodigoListaPadrao: TEdit;
    Label66: TLabel;
    btnOp: TBitBtn;
    GroupBox41: TGroupBox;
    rgEntSaiObg: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure ComboBox14Change(Sender: TObject);
    procedure ComboBox13Change(Sender: TObject);
    procedure rgTipoImpressaoClick(Sender: TObject);
    procedure ParametroChange(Sender: TObject);
    procedure rgUsaLoteClick(Sender: TObject);
    procedure rgBuscaPadraoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkImprimirTXTClick(Sender: TObject);
    procedure edtMensagemChange(Sender: TObject);
    procedure chkVendaConsumidorClick(Sender: TObject);
    procedure chkComandasClick(Sender: TObject);
    procedure chkDeliveryClick(Sender: TObject);
    procedure edtEdtPortaChange(Sender: TObject);
    procedure edtPerfil01Change(Sender: TObject);
    procedure edtPerfil02Change(Sender: TObject);
    procedure edtPerfil03Change(Sender: TObject);
    procedure edtPerfil04Change(Sender: TObject);
    procedure chkPedirSenhaClick(Sender: TObject);
    procedure chkUsaDLLClick(Sender: TObject);
    procedure edtEdtSerieChange(Sender: TObject);
    procedure rgEstoqueNegativoClick(Sender: TObject);
    procedure chkImpAoGravarClick(Sender: TObject);
    procedure chkAbrirGavetaAoGravarClick(Sender: TObject);
    procedure rgPgComissaoClick(Sender: TObject);
    procedure edtModeloChange(Sender: TObject);
    procedure edtSetor2Change(Sender: TObject);
    procedure edtSetor3Change(Sender: TObject);
    procedure edtMensagem1Change(Sender: TObject);
    procedure edtMensagem2Change(Sender: TObject);
    procedure chkBloquearComandaClick(Sender: TObject);
    procedure chkImpressaoResumidaClick(Sender: TObject);
    procedure chkcontroleCaixaClick(Sender: TObject);
    procedure chkImpUmReciboClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtCXInternoChange(Sender: TObject);
    procedure edtCXSangriaChange(Sender: TObject);
    procedure edtTelaChange(Sender: TObject);
    procedure edtPorcChange(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure edtCaixinhaChange(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure rgBloqueioClick(Sender: TObject);
    procedure rgNfeClick(Sender: TObject);
    procedure rgCadastroClienteClick(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure btnNFSerieClick(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure btnNumNfeClick(Sender: TObject);
    procedure BitBtn41Click(Sender: TObject);
    procedure rgPesqProdCupomClick(Sender: TObject);
    procedure cbCupomClick(Sender: TObject);
    procedure edtConsumidorChange(Sender: TObject);
    procedure LISTAPRECOGravaClick(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure rgDataNFClick(Sender: TObject);
    procedure BitBtn42Click(Sender: TObject);
    procedure BitBtn43Click(Sender: TObject);
    procedure btnOpClick(Sender: TObject);
    procedure btnGravarOPClick(Sender: TObject);
    procedure rgEntSaiObgClick(Sender: TObject);
  private
    procedure carregaParametroNotaFiscal;
    { Private declarations }
  public
    procedure DoCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
    AStage: TJvOutlookBarCustomDrawStage; AIndex:integer; ADown, AInside: boolean;
    var DefaultDraw:boolean);
    { Public declarations }
  end;

var
  fParametro: TfParametro;
  TD: TTransactionDesc;
  strSql : string;
  
implementation

uses UDm, JvJVCLUtils, uAtsAdmin, uCargosFuncoes, uProcurar, uSeriaNF,
  UDMNF;

{$R *.dfm}

procedure TfParametro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if dm.cds_param.Active then
   dm.cds_param.Close;
  fAtsAdmin.ComboBox14.ItemIndex := ComboBox14.ItemIndex;
  fAtsAdmin.ComboBox13.ItemIndex := ComboBox13.ItemIndex;
  inherited;
end;

procedure TfParametro.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfParametro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  If (RadioGroup1.ItemIndex = 0) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'ANOTACOESVENDAS';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Preenche a Combobox na tela de vendas com os dados D1 .. D9';
      dm.cds_parametroPARAMETRO.AsString := 'ANOTACOESVENDAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := 'S';
    end
    else
      dm.cds_parametro.Edit;
      edit3.Text := dm.cds_parametroD1.AsString;
      edit4.Text := dm.cds_parametroD2.AsString;
      edit5.Text := dm.cds_parametroD3.AsString;
      edit6.Text := dm.cds_parametroD4.AsString;
      edit7.Text := dm.cds_parametroD5.AsString;
      edit8.Text := dm.cds_parametroD6.AsString;
      edit9.Text := dm.cds_parametroD7.AsString;
      edit10.Text := dm.cds_parametroD8.AsString;
      edit11.Text := dm.cds_parametroD9.AsString;
  end
  else begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'ANOTACOESVENDAS';
    dm.cds_parametro.Open;
    if (not dm.cds_parametro.IsEmpty) then
      dm.cds_parametro.Delete;
  end;

  if (dm.cds_parametro.State in [dsInsert, dsEdit]) then
  begin
    try
      dm.cds_parametroD1.AsString := edit3.Text;
      dm.cds_parametroD2.AsString := edit4.Text;
      dm.cds_parametroD3.AsString := edit5.Text;
      dm.cds_parametroD4.AsString := edit6.Text;
      dm.cds_parametroD5.AsString := edit7.Text;
      dm.cds_parametroD6.AsString := edit8.Text;
      dm.cds_parametroD7.AsString := edit9.Text;
      dm.cds_parametroD8.AsString := edit10.Text;
      dm.cds_parametroD9.AsString := edit11.Text;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
end;

procedure TfParametro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'VIDEO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Configuração de Video';
      dm.cds_parametroPARAMETRO.AsString := 'VIDEO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit1.Text;
      dm.cds_parametroD2.AsString := edit2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit1.Text;
      dm.cds_parametroD2.AsString := edit2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn4Click(Sender: TObject);
begin
  inherited;
  try
    if (not dm.c_1_planoc.Active) then
      dm.c_1_planoc.Open;
    if (not dm.c_1_planoc.Locate('CONTA',Edit12.Text, [loCaseInsensitive])) then
    begin
      MessageDlg('A Conta informada não existe no plano de contas.', mtInformation,
      [mbOk], 0);
      Edit12.SetFocus;
      exit;
    end;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CONTA_CLIENTE';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Conta usada no cadastro de cada Cliente (CONTA_CLIENTE)';
      dm.cds_parametroPARAMETRO.AsString := 'CONTA_CLIENTE';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit12.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit12.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
  try
    if  MessageDlg('Deseja atualizar a Tabela Cliente com está conta ?',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE CLIENTES SET CONTA_CLIENTE = ' +
        '''' + Edit12.Text + '''');
      MessageDlg('Atualização realizada com sucesso.', mtInformation,
        [mbOk], 0);
    end;
  except
    MessageDlg('A Tabela cliente não foi atualizada, notifique o administrador !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.FormCreate(Sender: TObject);
begin
  ComboBox14.ItemIndex := 0;
  JvOutlookBar1.OnCustomDraw := DoCustomDraw;
  ComboBox13.ItemIndex := 0;
  ComboBox14Change(ComboBox14);
  ComboBox13Change(ComboBox13);

  //inherited;
  dm.cds_param.Open;
  if (dm.cds_param.Locate('PARAMETRO','ANOTACOESVENDAS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'S') then
      RadioGroup1.ItemIndex := 0
    else
      RadioGroup1.ItemIndex := 1;
    edit3.Text := dm.cds_paramD1.AsString;
    edit4.Text := dm.cds_paramD2.AsString;
    edit5.Text := dm.cds_paramD3.AsString;
    edit6.Text := dm.cds_paramD4.AsString;
    edit7.Text := dm.cds_paramD5.AsString;
    edit8.Text := dm.cds_paramD6.AsString;
    edit9.Text := dm.cds_paramD7.AsString;
    edit10.Text := dm.cds_paramD8.AsString;
    edit11.Text := dm.cds_paramD9.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','VIDEO', [loCaseInsensitive])) then
  begin
    Edit1.Text := dm.cds_paramD1.AsString;
    Edit2.Text := dm.cds_paramD2.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','CONTA_CLIENTE', [loCaseInsensitive])) then
  begin
    Edit12.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','CONTA_FORNECEDOR', [loCaseInsensitive])) then
  begin
    Edit13.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','PDV', [loCaseInsensitive])) then
  begin
    Edit18.Text := dm.cds_paramDADOS.AsString;
    Edit17.Text := dm.cds_paramD1.AsString;
    Edit19.Text := dm.cds_paramD2.AsString;
    ComboBox2.Text := dm.cds_paramD3.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO', 'TERMINALVENDAS', [loCaseInsensitive])) then
  begin
     if (dm.cds_paramDADOS.AsString = 'PROC_PROD_SIMPLES') then
       RadioGroup2.ItemIndex := 0
     else
       RadioGroup2.ItemIndex := 1;
  end;
  if (dm.cds_param.Locate('PARAMETRO','PRECOLISTA', [loCaseInsensitive])) then
  begin
    ComboBox3.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','LISTAPRECO', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      RadioGroup5.ItemIndex := 1;
    end;
    if (dm.cds_paramD4.AsString <> '') then
      edCodigoListaPadrao.Text := dm.cds_paramD4.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','CADASTROVEICULO', [loCaseInsensitive])) then
  begin
    ComboBox4.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CONTROLE', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
      ComboBox12.ItemIndex := 0
    else
      ComboBox12.ItemIndex := 1;
    edit23.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','PADRAOFILTROVENDA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox5.ItemIndex := 0;
      meDta1.Text := dm.cds_paramD1.AsString;
      meDta2.Text := dm.cds_paramD2.AsString;
    end
    else
      ComboBox5.ItemIndex := 1;
  end;

  if (dm.cds_param.Locate('PARAMETRO','PADRAOFILTROCOMPRA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox6.ItemIndex := 0;
      meDta3.Text := dm.cds_paramD1.AsString;
      meDta4.Text := dm.cds_paramD2.AsString;
    end
    else
      ComboBox6.ItemIndex := 1;
  end;
  if (dm.cds_param.Locate('PARAMETRO','FORMATACAO', [loCaseInsensitive])) then
  begin
    MaskEdit1.Text := dm.cds_paramD1.AsString;
    MaskEdit2.Text := dm.cds_paramD2.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','EMPRESA', [loCaseInsensitive])) then
  begin
    Edit15.Text := dm.cds_paramDADOS.AsString;
    ComboBox8.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','MODULO', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramD1.AsString = 'S') then
      jvCheckBox1.Checked := True
    else
      jvCheckBox1.Checked := False;
    if (dm.cds_paramD2.AsString = 'S') then
      jvCheckBox2.Checked := True
    else
      jvCheckBox2.Checked := False;
    if (dm.cds_paramD3.AsString = 'S') then
      jvCheckBox3.Checked := True
    else
      jvCheckBox3.Checked := False;
    if (dm.cds_paramD4.AsString = 'S') then
      jvCheckBox4.Checked := True
    else
      jvCheckBox4.Checked := False;
    if (dm.cds_paramD5.AsString = 'S') then
      jvCheckBox5.Checked := True
    else
      jvCheckBox5.Checked := False;
    if (dm.cds_paramD6.AsString = 'S') then
      jvCheckBox6.Checked := True
    else
      jvCheckBox6.Checked := False;
  end;
  if (dm.cds_param.Locate('PARAMETRO','GRUPOMARCA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'SIM') then
    begin
      Edit16.Text := 'SIM';
    end
    else
      Edit16.text := '';
  end;
  if (dm.cds_param.Locate('PARAMETRO','USARECEITAS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'S') then
    begin
      ComboBox7.Text := 'S';
    end
    else
      ComboBox7.text := '';
  end;
  if (dm.cds_param.Locate('PARAMETRO','RECEBERJUROS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      cbUsaJuros.Text := dm.cds_paramCONFIGURADO.AsString;
      edJuros.Text := dm.cds_paramDADOS.AsString;
    end
    else begin
      cbUsaJuros.Text := 'N';
      edJuros.Text := '0';
    end;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CENTROCUSTO', [loCaseInsensitive])) then
  begin
    cbCentroCusto.Text := dm.cds_paramCONFIGURADO.AsString;
    Edit20.Text := dm.cds_paramDADOS.AsString;
    Edit21.Text := dm.cds_paramD1.AsString;
  end;

  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + QuotedStr('I') +
    ' OR SERIE = ' + QuotedStr('O');
  dm.cdsBusca.Open;
  if (dm.cdsBusca.RecordCount > 0) then
  begin
    While not dm.cdsBusca.Eof do
    begin
      if (dm.cdsBusca.FieldByName('SERIE').AsString = 'O') then
      begin
        Label39.Caption := 'Sério "O"  = ' + IntToStr(dm.cdsBusca.FieldByName('ULTIMO_NUMERO').AsInteger);
        Label39.Font.Color := clHotLight;
        Image9.Visible := False;
        Image10.Visible := True;
      end;
      if (dm.cdsBusca.FieldByName('SERIE').AsString = 'I') then
      begin
        Label38.Caption := 'Sério "I"  = ' + IntToStr(dm.cdsBusca.FieldByName('ULTIMO_NUMERO').AsInteger);
        Label38.Font.Color := clHotLight;
        Image12.Visible := False;
        Image11.Visible := True;
      end;
      dm.cdsBusca.Next;
    end;
  end
  else begin
    Label39.Caption := 'Sério "O" não incluída.';
    Label39.Font.Color := clRed;
    Label38.Caption := 'Sério "I" não incluída.';
    Label38.Font.Color := clRed;
    Image10.Visible := False;
    Image9.Visible := True;
    Image11.Visible := False;
    Image12.Visible := True;
  end;

  // Usuarios Obrigatorios
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT CODUSUARIO FROM USUARIO WHERE CODUSUARIO = 0' + 
    ' OR CODUSUARIO = 1';
  dm.cdsBusca.Open;
  if (dm.cdsBusca.RecordCount > 0) then
  begin
    While not dm.cdsBusca.Eof do
    begin
      if (dm.cdsBusca.FieldByName('CODUSUARIO').AsInteger = 0) then
      begin
       Image1.Visible := False;
       Image3.Visible := True;
      end;
      if (dm.cdsBusca.FieldByName('CODUSUARIO').AsInteger = 1) then
      begin
       Image2.Visible := False;
       Image4.Visible := True;
      end;
      dm.cdsBusca.Next;
    end;
  end
  else begin
    Image1.Visible := True;
    Image2.Visible := True;
    Image3.Visible := False;
    Image4.Visible := False;
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'COMPRA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      ComboBox11.ItemIndex := 0;
    if (dm.cds_parametroCONFIGURADO.AsString = 'N') then
      ComboBox11.ItemIndex := 1;
    edUserRespAprovaCompra.Text  := dm.cds_parametroD1.AsString;
    edit22.Text := dm.cds_parametroD1.AsString;
  end;


  // Cliente Obrigatorio
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE CODCLIENTE = 0';
  dm.cdsBusca.Open;
  if (not dm.cdsBusca.IsEmpty) then
  begin
    Image5.Visible := False;
    Image6.Visible := True;
  end
  else begin
    Image6.Visible := True;
    Image5.Visible := False;
  end;

  // Fornecedor Obrigatorio
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT CODFORNECEDOR FROM FORNECEDOR WHERE CODFORNECEDOR = 0';
  dm.cdsBusca.Open;
  if (not dm.cdsBusca.IsEmpty) then
  begin
    Image7.Visible := False;
    Image8.Visible := True;
  end
  else begin
    Image7.Visible := True;
    Image8.Visible := False;
  end;

  // Margem Venda
  if (dm.cds_param.Locate('PARAMETRO','MARGEMVENDA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox1.ItemIndex := 0;
      MaskEdit4.Text := dm.cds_paramD1.AsString;
    end
    else
      ComboBox1.ItemIndex := 1;
  end;

  // Venda Usuario Logado
  if (dm.cds_param.Locate('PARAMETRO','USUARIOVENDA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      RadioGroup3.ItemIndex := 0;
    end
    else
      RadioGroup3.ItemIndex := 1;
  end;

  if (dm.cds_param.Locate('PARAMETRO','SERIENFE', [loCaseInsensitive])) then
  begin
    rgMesmoNumero.ItemIndex := 0;
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
      rgMesmoNumero.ItemIndex := 1;
    edtSerieNF.Text := dm.cds_paramD1.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CARGO/FUNCAO', [loCaseInsensitive])) then
  begin
    Edit14.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CONSUMIDOR', [loCaseInsensitive])) then
  begin
    edtConsumidor.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (dm.cds_parametroD3.AsString = 'COMPLETO') then
    begin
      rgCadastroCliente.ItemIndex := 0;
    end;
    if (dm.cds_parametroD3.AsString = 'SIMPLES') then
    begin
      rgCadastroCliente.ItemIndex := 1;
    end;
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'LISTAPRODUTOCONDICAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    edListaCondicao1.Text     := dm.cds_parametroD1.AsString;
    edListaCondicaoCalc1.Text := dm.cds_parametroD2.AsString;
    edListaCondicao2.Text     := dm.cds_parametroD3.AsString;
    edListaCondicaoCalc2.Text := dm.cds_parametroD4.AsString;
    edListaCondicao3.Text     := dm.cds_parametroD5.AsString;
    edListaCondicaoCalc3.Text := dm.cds_parametroD6.AsString;
    edCondicaoArredondar.Text := dm.cds_parametroD7.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','SERIEOP', [loCaseInsensitive])) then
  begin
    edtOP.Text := dm.cds_paramD1.AsString;
  end;

end;


procedure TfParametro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    if (not dm.c_1_planoc.Active) then
      dm.c_1_planoc.Open;
    if (not dm.c_1_planoc.Locate('CONTA',Edit13.Text, [loCaseInsensitive])) then
    begin
      MessageDlg('A Conta informada não existe no plano de contas.', mtInformation,
      [mbOk], 0);
      Edit13.SetFocus;
      exit;
    end;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CONTA_FORNECEDOR';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Conta usada no cadastro de cada Fornecedor (CONTA_FORNECEDOR)';
      dm.cds_parametroPARAMETRO.AsString := 'CONTA_FORNECEDOR';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit13.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit13.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
  try
    if  MessageDlg('Deseja atualizar a Tabela FORNECEDOR com está conta ?',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE FORNECEDOR SET CONTA_FORNECEDOR = ' +
        '''' + Edit13.Text + '''');
      MessageDlg('Atualização realizada com sucesso.', mtInformation,
        [mbOk], 0);
    end;
  except
    MessageDlg('A Tabela Fornecedor não foi atualizada, notifique o administrador !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn5Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'insert into USUARIO (CODUSUARIO, NOMEUSUARIO, STATUS' +
            ', PERFIL) VALUES (0, ' + QuotedStr('Usuário Sistema') +
            ',0,'+ QuotedStr('Vendas') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     Image1.Visible := True;
     Image3.Visible := False;
     MessageDlg('Usuário inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Usuário não incluído!', mtError,
         [mbOk], 0);
  end;
end;
procedure TfParametro.BitBtn7Click(Sender: TObject);
var
   strsql : string;
begin
  // Pesquisando se os dados inseridos existem no sistema
  // -----------------CODCLIENTE------------------------------
  if (sbusca.Active) then
    sbusca.Close;
  strsql := 'SELECT CODCLIENTE FROM CLIENTES where CODCLIENTE = ';
  strsql := strsql + Edit18.Text;
  sbusca.CommandText := strsql;
  sbusca.Open;
  if (sbusca.IsEmpty) then
  begin
    MessageDlg('Não existe cliente com esse código no sistema, informe um cliente válido !', mtWarning, [mbOK], 0);
    exit;
  end;
  // -----------------CODALMOXARIFADO------------------------------
  // Não tem chave estrangeira
  // --------------------------------------------------------------
  // -----------------CODNATUREZA----------------------------------
  if (sbusca.Active) then
    sbusca.Close;
  strsql := 'SELECT CODNATUREZA FROM NATUREZAOPERACAO where CODNATUREZA = ';
  strsql := strsql + Edit19.Text;
  sbusca.CommandText := strsql;
  sbusca.Open;
  if (sbusca.IsEmpty) then
  begin
    MessageDlg('Não existe NaturezaOperação com esse código'+#13#10+'no sistema, informe um código válido !', mtWarning, [mbOK], 0);
    exit;
  end;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'PDV';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado PDV: Inseri CODCLIENTE, CODALMOXARIFADO, CODNATUREZA';
      dm.cds_parametroPARAMETRO.AsString := 'PDV';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := edit18.Text;
      dm.cds_parametroD1.AsString := edit17.Text;
      dm.cds_parametroD2.AsString := edit19.Text;
      dm.cds_parametroD3.AsString := ComboBox2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := edit18.Text;
      dm.cds_parametroD1.AsString := edit17.Text;
      dm.cds_parametroD2.AsString := edit19.Text;
      dm.cds_parametroD3.AsString := ComboBox2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;


end;

procedure TfParametro.BitBtn8Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'TERMINALVENDAS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Form Procura usado terminal Vendas';
      dm.cds_parametroPARAMETRO.AsString := 'TERMINALVENDAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      Case RadioGroup2.ItemIndex of
        0: dm.cds_parametroDADOS.AsString := 'PROC_PROD_SIMPLES';
        1: dm.cds_parametroDADOS.AsString := 'PROC_PROD_COMPLETO';
      end;
    end
    else begin
      dm.cds_parametro.Edit;
      Case RadioGroup2.ItemIndex of
        0: dm.cds_parametroDADOS.AsString := 'PROC_PROD_SIMPLES';
        1: dm.cds_parametroDADOS.AsString := 'PROC_PROD_COMPLETO';
      end;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn9Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'PRECOLISTA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa Lista de Preço de Terceiros ?';
      dm.cds_parametroPARAMETRO.AsString := 'PRECOLISTA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox3.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox3.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa Cadastro de Veículos ?';
      dm.cds_parametroPARAMETRO.AsString := 'CADASTROVEICULO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox4.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox4.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;


end;

procedure TfParametro.BitBtn6Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CONTROLE';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Campo usado no Form Finalizar Venda';
      dm.cds_parametroPARAMETRO.AsString := 'CONTROLE';
      if (ComboBox1.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroDADOS.AsString := edit23.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      if (ComboBox1.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroDADOS.AsString := edit23.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn10Click(Sender: TObject);
begin
  inherited;
  // PADRAOFILTROVENDA
  if (ComboBox5.ItemIndex = 0) then
  begin
    // ----------------------------------------------------
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROVENDA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Dados Padrões usado no FiltroMovimento';
        dm.cds_parametroPARAMETRO.AsString := 'PADRAOFILTROVENDA';
        dm.cds_parametroCONFIGURADO.AsString := 'S';
        dm.cds_parametroD1.AsString := meDta1.Text;
        dm.cds_parametroD2.AsString := meDta2.Text;
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroD1.AsString := meDta1.Text;
        dm.cds_parametroD2.AsString := meDta2.Text;
      end;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
  if (ComboBox5.ItemIndex = 1) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROVENDA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Delete;
        dm.cds_parametro.ApplyUpdates(0);
        meDta1.Text := '';
        meDta2.Text := '';
      end;
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
end;

procedure TfParametro.BitBtn11Click(Sender: TObject);
begin
  inherited;
  // PADRAOFILTROCOMPRA
  if (ComboBox6.ItemIndex = 0) then
  begin
    // ----------------------------------------------------
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROCOMPRA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Dados Padrões usado no FiltroMovimentoCompra';
        dm.cds_parametroPARAMETRO.AsString := 'PADRAOFILTROCOMPRA';
        dm.cds_parametroCONFIGURADO.AsString := 'S';
        dm.cds_parametroD1.AsString := meDta3.Text;
        dm.cds_parametroD2.AsString := meDta4.Text;
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroD1.AsString := meDta3.Text;
        dm.cds_parametroD2.AsString := meDta4.Text;
      end;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
  if (ComboBox6.ItemIndex = 1) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROCOMPRA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Delete;
        dm.cds_parametro.ApplyUpdates(0);
        meDta3.Text := '';
        meDta4.Text := '';
      end;
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;

end;

procedure TfParametro.BitBtn12Click(Sender: TObject);
begin
  inherited;
  { Usado para configurar o Display Format em alguns forms }
  // FORMATACAO
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'FORMATACAO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Formatação usadas no sistema (n. casas decimais...) D1 : Qtde, D2 : Valor';
      dm.cds_parametroPARAMETRO.AsString := 'FORMATACAO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := MaskEdit1.Text;
      dm.cds_parametroD2.AsString := MaskEdit2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := MaskEdit1.Text;
      dm.cds_parametroD2.AsString := MaskEdit2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn13Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'EMPRESA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'empresa que usa (Dados - Nome empresa, D1 - AUTOMOTIVA (OFICINA, PECAS, ETc.)';
      dm.cds_parametroPARAMETRO.AsString := 'EMPRESA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := Edit15.Text;
      dm.cds_parametroD1.AsString := combobox8.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := Edit15.Text;
      dm.cds_parametroD1.AsString := combobox8.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn14Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'MODULO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Módulos utilizados.';
      dm.cds_parametroPARAMETRO.AsString := 'MODULO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      if (jvCheckBox1.Checked) then
        dm.cds_parametroD1.AsString := 'S'
      else
        dm.cds_parametroD1.AsString := 'N';
      if (jvCheckBox2.Checked) then
        dm.cds_parametroD2.AsString := 'S'
      else
        dm.cds_parametroD2.AsString := 'N';
      if (jvCheckBox3.Checked) then
        dm.cds_parametroD3.AsString := 'S'
      else
        dm.cds_parametroD3.AsString := 'N';
      if (jvCheckBox4.Checked) then
        dm.cds_parametroD4.AsString := 'S'
      else
        dm.cds_parametroD4.AsString := 'N';
      if (jvCheckBox5.Checked) then
        dm.cds_parametroD5.AsString := 'S'
      else
        dm.cds_parametroD5.AsString := 'N';
      if (jvCheckBox6.Checked) then
        dm.cds_parametroD6.AsString := 'S'
      else
        dm.cds_parametroD6.AsString := 'N';
    end
    else begin
      dm.cds_parametro.Edit;
      if (jvCheckBox1.Checked) then
        dm.cds_parametroD1.AsString := 'S'
      else
        dm.cds_parametroD1.AsString := 'N';
      if (jvCheckBox2.Checked) then
        dm.cds_parametroD2.AsString := 'S'
      else
        dm.cds_parametroD2.AsString := 'N';
      if (jvCheckBox3.Checked) then
        dm.cds_parametroD3.AsString := 'S'
      else
        dm.cds_parametroD3.AsString := 'N';
      if (jvCheckBox4.Checked) then
        dm.cds_parametroD4.AsString := 'S'
      else
        dm.cds_parametroD4.AsString := 'N';
      if (jvCheckBox5.Checked) then
        dm.cds_parametroD5.AsString := 'S'
      else
        dm.cds_parametroD5.AsString := 'N';
      if (jvCheckBox6.Checked) then
        dm.cds_parametroD6.AsString := 'S'
      else
        dm.cds_parametroD6.AsString := 'N';
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn15Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'GRUPOMARCA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Se GRUPOMARCA DADOS = SIM então ' +
        'usa o campo MARCA relacionado com o campo GRUPO';
      dm.cds_parametroPARAMETRO.AsString := 'GRUPOMARCA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := Edit16.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := Edit16.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn16Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'USARECEITAS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Se USA O BOTÃO RECEITAS E O MENU LANÇAR COBRANÇA ' +
        ' no FINANCEIRO.';
      dm.cds_parametroPARAMETRO.AsString := 'USARECEITAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox7.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox7.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn17Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'RECEBERJUROS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa no Títulos de Contas a Receber o Cálculo ' +
        ' de Juros.';
      dm.cds_parametroPARAMETRO.AsString := 'RECEBERJUROS';
      dm.cds_parametroCONFIGURADO.AsString := cbUsaJuros.Text;
      dm.cds_parametroDADOS.AsString := edJuros.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbUsaJuros.Text;
      dm.cds_parametroDADOS.AsString := edJuros.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn18Click(Sender: TObject);
begin
  inherited;
  if ((edit20.Text = '') or (edit21.Text = '')) then
  begin
    MessageDlg('Preencha a Conta Padrão e o Local Padrão.', mtWarning,
    [mbOk], 0) ;
    Exit;
  end;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CENTROCUSTO';   // Centro de Custo Padrao
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado no Form de COMPRA';
      dm.cds_parametroPARAMETRO.AsString := 'CENTROCUSTO';
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  // USA CENTRO DE CUSTO
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CENTRO CUSTO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado para Buscar Estoque por Centro Custo';
      dm.cds_parametroPARAMETRO.AsString := 'CENTRO CUSTO';
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
      dm.cds_parametro.ApplyUpdates(0);
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CENTRO RECEITA PADRAO';   // Centro de Custo Padrao
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Centro de Receita PADRÃO';
      dm.cds_parametroPARAMETRO.AsString := 'CENTRO RECEITA PADRAO';
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;      
    end;
    dm.cds_parametro.ApplyUpdates(0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  MessageDlg('Registro gravado com sucesso.', mtInformation,
  [mbOk], 0);
end;

procedure TfParametro.BitBtn19Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'LISTAPRECO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa preço pôr Fornecedor';
      dm.cds_parametroPARAMETRO.AsString := 'LISTAPRECO';
      if (combobox9.text = 'Sim') then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
      else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end
    else begin
      dm.cds_parametro.Edit;
      if (combobox9.text = 'Sim') then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
      else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn20Click(Sender: TObject);
begin
  inherited;
  if (ComboBox10.Text = 'REPRESENTANTE') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'S';
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'S';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      // Removo a REFERENCIA
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := '';
        dm.cds_parametro.ApplyUpdates(0);
      end;

      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
  if (ComboBox10.Text = 'REFERENCIA') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de REFERÊNCIA COMERCIAL.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := 'REFERENCIA';
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := 'REFERENCIA';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      //Removo o Representante
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'N';
      end;
      dm.cds_parametro.ApplyUpdates(0);

      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
  if (ComboBox10.Text = '') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := '';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'N';
      end;
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;

end;

procedure TfParametro.BitBtn23Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'insert into USUARIO (CODUSUARIO, NOMEUSUARIO, STATUS' +
            ', PERFIL) VALUES (1, ' + QuotedStr('Usuário Sistema') +
            ',0,'+ QuotedStr('Ambos') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     Image2.Visible := True;
     Image4.Visible := False;
     MessageDlg('Usuário inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Usuário não incluído!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn24Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'insert into SERIES (SERIE, ULTIMO_NUMERO' +
    ') VALUES (' + QuotedStr('O') + ', 0)';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  strsql := 'insert into SERIES (SERIE, ULTIMO_NUMERO' +
    ') VALUES (' + QuotedStr('I') + ', 0)';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Séries inserida com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Séries não incluída!', mtError,
         [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn25Click(Sender: TObject);
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'COMPRA';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Compras - Paramentros.';
    dm.cds_parametroPARAMETRO.AsString := 'COMPRA';
    if (ComboBox11.ItemIndex = -1) then
    begin
      MessageDlg('Selecione a opção SIM/NÃO.', mtError,[mbOk], 0);
      exit;
    end;
    if (ComboBox11.ItemIndex = 0) then
    begin
      dm.cds_parametroDADOS.AsString := 'S';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString    := edUserRespAprovaCompra.Text;
    end;
    if (ComboBox11.ItemIndex = 1) then
    begin
      dm.cds_parametroDADOS.AsString := 'N';
      dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroD1.AsString    := '';
    end;
  end
  else begin
    dm.cds_parametro.Edit;
    if (ComboBox11.ItemIndex = 0) then
    begin
      dm.cds_parametroDADOS.AsString := 'S';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString    := edUserRespAprovaCompra.Text;
    end;
    if (ComboBox11.ItemIndex = 1) then
    begin
      dm.cds_parametroDADOS.AsString := 'N';
      dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroD1.AsString    := '';
    end;
  end;
  dm.cds_parametro.ApplyUpdates(0);
end;

procedure TfParametro.BitBtn27Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'INSERT INTO CLIENTES (CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, ' +
    'CONTATO, TIPOFIRMA, CPF, CNPJ, INSCESTADUAL, RG, SEGMENTO, REGIAO, LIMITECREDITO, ' +
    'DATACADASTRO, CODUSUARIO, STATUS, CONTA_CLIENTE) VALUES (' +
    '0, ' + QuotedStr('Cliente Sistema') + ', ' + QuotedStr('Cliente Sistema') + ', NULL, 0, ' +
    ' NULL, NULL, NULL, NULL, 0, 0, NULL, ' + QuotedStr('01.01.2006') +
    ' , 1, 1, ' + QuotedStr('1.1.2.03.0') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Cliente inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Cliente não incluído!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn28Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'INSERT INTO FORNECEDOR (CODFORNECEDOR, NOMEFORNECEDOR, RAZAOSOCIAL, ' +
  ' CONTATO, TIPOFIRMA, CPF, CNPJ, INSCESTADUAL, RG, SEGMENTO, REGIAO, LIMITECREDITO, ' +
  ' DATACADASTRO, CODUSUARIO, STATUS, HOMEPAGE, PRAZOPAGAMENTO, PRAZOENTREGA, ' +
  ' CONTA_FORNECEDOR) VALUES (0, ' +
  QuotedStr('Fornecedor  do Sistema') + ', ' +  QuotedStr('Fornecedor  do Sistema') +
  ', NULL, 1, NULL, NULL, NULL, NULL, 1, 1, NULL,' + QuotedStr('09.10.2006') + ', 1, 1, ' +
  ' NULL, NULL, NULL, ' + QuotedStr('2.1.1.01.15') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Fornecedor inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Fornecedor não incluído!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn29Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'MARGEMVENDA';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    strsql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, DADOS, D1, D2)' +
      ' VALUES (' + QuotedStr('Margem de venda Minima permitida por Pedido') + ', ' +
      QuotedStr('MARGEMVENDA') + ', ';
    if (ComboBox1.ItemIndex = 0) then
      strsql := strsql + QuotedStr('S')
    else
      strsql := strsql + QuotedStr('N');
    strsql := strsql + ', NULL,' + QuotedStr(MaskEdit4.Text) +
      ', NULL)';
  end
  else
    strsql := 'UPDATE PARAMETRO SET CONFIGURADO = ';
    if (ComboBox1.ItemIndex = 0) then
      strsql := strsql + QuotedStr('S')
    else
      strsql := strsql + QuotedStr('N');

    strsql := strsql + ', D1 = ' + QuotedStr(MaskEdit4.Text) +
     ' WHERE PARAMETRO = ' + QuotedStr('MARGEMVENDA');

  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Margem Venda inserida/alterada com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Margem não incluída!', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.ComboBox14Change(Sender: TObject);
begin
//  inherited;
  JvNavPaneStyleManager1.Theme := TJvNavPanelTheme(ComboBox14.ItemIndex);
  JvOutlookBar1.Invalidate;
end;

procedure TfParametro.ComboBox13Change(Sender: TObject);
begin
//  inherited;
  JvOutlookBar1.ButtonSize := TJvBarButtonSize(ComboBox13.ItemIndex);
end;

procedure TfParametro.DoCustomDraw(Sender: TObject; ACanvas: TCanvas;  ARect: TRect; AStage: TJvOutlookBarCustomDrawStage; AIndex: integer;  ADown, AInside: boolean; var DefaultDraw: boolean);
begin
  DefaultDraw := False;
  case AStage of
  odsBackground:
     with JvNavPaneStyleManager1.Colors do
       GradientFillRect(ACanvas, ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
  odsPage:
     with JvNavPaneStyleManager1.Colors do
       GradientFillRect(ACanvas,ARect, ButtonColorFrom, ButtonColorTo, fdTopToBottom, 255);
  odsPageButton:
  begin
     with JvNavPaneStyleManager1.Colors do
       GradientFillRect(ACanvas,ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
     if ADown then
       OffsetRect(ARect,1,1);
     ACanvas.Font.Color := clWhite;
     DrawText(ACanvas.Handle, PChar(JvOutlookBar1.Pages[AIndex].Caption), Length(JvOutlookBar1.Pages[AIndex].Caption), ARect, DT_SINGLELINE or DT_VCENTER or DT_CENTER);
  end;
  odsButtonFrame:
  begin
    if ADown then
      ACanvas.Brush.Color := clNavy
    else
      ACanvas.Brush.Color := clBlack;
    ACanvas.FrameRect(ARect);
    InflateRect(ARect,-1,-1);
    if not ADown then
      ACanvas.Brush.Color := clWhite;
    ACanvas.FrameRect(ARect);
  end;
  odsButton:
    DefaultDraw := True;
  end;
end;

procedure TfParametro.rgTipoImpressaoClick(Sender: TObject);
begin
  //inherited;
  strSql := '';
  if (rgTipoImpressao.ItemIndex = 0) then  // Cupom
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CUPOMPDV';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Tipo de Impressão PDV') + ', ';
        strSql := strSql + QuotedStr('CUPOMPDV');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'RECIBOPDV';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
        strSql := strSql + QuotedStr('RECIBOPDV');

        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;

  end;

  if (rgTipoImpressao.ItemIndex = 1) then  // Recibo
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'RECIBOPDV';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Tipo de Impressão PDV') + ', ';
        strSql := strSql + QuotedStr('RECIBOPDV');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CUPOMPDV';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
        strSql := strSql + QuotedStr('CUPOMPDV');
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.ParametroChange(Sender: TObject);
begin
  inherited;
  if (TabSheet3.Visible = True) then
    carregaParametroNotaFiscal;

  if (Parametro.ActivePage = TabPDV) then
  begin

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'DLLBEMATECH';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkUsaDLL.Checked := True
     else
        chkUsaDLL.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFIL';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       edtPerfil01.Text := s_parametroD1.AsString;
       edtPerfil02.Text := s_parametroD2.AsString;
       edtPerfil03.Text := s_parametroD3.AsString;
       edtPerfil04.Text := s_parametroD4.AsString;
     end;
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFILSEMAUTORIZACAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edt1.Text := s_parametroD1.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFILTELA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtTela.Text := s_parametroD1.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CONTACAIXAINTERNA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtCXInterno.Text := s_parametroD1.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CONTACAIXASANGRIA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtCXSangria.Text := s_parametroD1.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CONTACAIXINHA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtCaixinha.Text := s_parametroD1.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtEdtPorta.Text := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PORTA SETOR2';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtSetor2.Text := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PORTA SETOR3';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtSetor3.Text := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'SERIETERMINAL';
     if (not s_parametro.Eof) then
       edtEdtSerie.Text := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MODELOIMPRESSORA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        Pc1.Text := s_parametroD1.AsString;
        edtModelo.Text := s_parametroD2.AsString;
        Pc2.Text := s_parametroD3.AsString;
        edtModelo2.Text := s_parametroD4.AsString;
        Pc3.Text := s_parametroD5.AsString;
        edtModelo3.Text := s_parametroD6.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'APROVACAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkPedirSenha.Checked := True
     else
        chkPedirSenha.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PDV';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkVendaConsumidor.Checked := True
     else
        chkVendaConsumidor.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'COMANDA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkComandas.Checked := True
     else
        chkComandas.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'DELIVERY';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkDelivery.Checked := True
     else
        chkDelivery.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PDVNTC';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chk1.Checked := True
     else
        chk1.Checked := False;


     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BLOQUEARMESA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkBloquearComanda.Checked := True
     else
        chkBloquearComanda.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPRESSAORESUMIDA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkImpressaoResumida.Checked := True
     else
        chkImpressaoResumida.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'USACONTROLECAIXA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkcontroleCaixa.Checked := True
     else
        chkcontroleCaixa.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'SOMARECIBOS';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkImpUmRecibo.Checked := True
     else
        chkImpUmRecibo.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtMensagem.Text := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM_1';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtMensagem1.Text := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM_2';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       edtMensagem2.Text := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkImprimirTXT.Checked := True
     else
        chkImprimirTXT.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'RECIBOPDV';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        rgTipoImpressao.ItemIndex := 1;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CUPOMPDV';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        rgTipoImpressao.ItemIndex := 0;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BUSCAPRODUTO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        if (s_parametroDADOS.AsString = 'CODBARRA') then
          rgBuscaPadrao.ItemIndex := 0;

        if (s_parametroDADOS.AsString = 'CODPRO') then
          rgBuscaPadrao.ItemIndex := 1;
     end;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BUSCACUPOM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        rgUsaLote.ItemIndex := 0
     else
        rgUsaLote.ItemIndex := 1;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        rgEstoqueNegativo.ItemIndex := 0
     else
        rgEstoqueNegativo.ItemIndex := 1;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMP_AOGRAVAR';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkImpAoGravar.Checked := True
     else
        chkImpAoGravar.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ABRIR_GAVETA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        chkAbrirGavetaAoGravar.Checked := True
     else
        chkAbrirGavetaAoGravar.Checked := False;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        rgPgComissao.ItemIndex := 0;
        edtPorc.Enabled := True;
        edtPorc.Text := s_parametroDADOS.AsString;
     end
     else
     begin
        rgPgComissao.ItemIndex := 1;
        edtPorc.Text := '0';
     end;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'LANCACOMISSAOCR';
     s_parametro.Open;
     if (not s_parametro.Eof) then
        rg1.ItemIndex := 0
     else
        rg1.ItemIndex := 1;

     s_parametro.Close;
     MMJPanel1.Visible := False;
  end
  else
  begin
     if (MMJPanel1.Visible = False) then
        MMJPanel1.Visible := True;
  end;


end;

procedure TfParametro.rgUsaLoteClick(Sender: TObject);
begin
//  inherited;
  strSql := '';
  if (rgUsaLote.ItemIndex = 0) then  // Utiliza Lote no PDV
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BUSCACUPOM';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Utiliza Controle de LOTE no PDV') + ', ';
        strSql := strSql + QuotedStr('BUSCACUPOM') + ', ';
        strSql := strSql + '3';
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BUSCACUPOM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
        strSql := strSql + QuotedStr('BUSCACUPOM');

        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.rgBuscaPadraoClick(Sender: TObject);
begin
//  inherited;
  strSql := '';


   if (s_parametro.Active) then
     s_parametro.Close;
   s_parametro.Params[0].AsString := 'BUSCAPRODUTO';
   s_parametro.Open;
   if (s_parametro.Eof) then
   begin
      strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
      strSql := strSql + ') VALUES (';
      strSql := strSql + QuotedStr('Busca Produto CODIGO DE BARRA ou CODIGO do PRODUTO') + ', ';
      strSql := strSql + QuotedStr('BUSCAPRODUTO') + ', ';
      if (rgBuscaPadrao.ItemIndex = 0) then
        strSql := strSql + QuotedStr('CODBARRA')
      else
        strSql := strSql + QuotedStr('CODPRO');
      strSql := strSql + ')';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
         MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
             [mbOk], 0);
      end;
   end
   else if (rgBuscaPadrao.ItemIndex = 1) then  // Busca pelo Codigo do Produto
   begin
      strSql := 'UPDATE PARAMETRO SET DADOS = ';
      strSql := strSql + QuotedStr('CODPRO');
      strSql := strSql + ' where PARAMETRO = ' + QuotedStr('BUSCAPRODUTO');
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
         MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
             [mbOk], 0);
      end;
   end
   else if (rgBuscaPadrao.ItemIndex = 0) then  // Busca pelo Codigo de Barra
   begin

        strSql := 'UPDATE PARAMETRO SET DADOS = ';
        strSql := strSql + QuotedStr('CODBARRA');
        strSql := strSql + ' where PARAMETRO = ' + QuotedStr('BUSCAPRODUTO');
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
   end;
end;

procedure TfParametro.FormShow(Sender: TObject);
begin
//  inherited;
  Parametro.ActivePage := TabSheet2;
end;

procedure TfParametro.chkImprimirTXTClick(Sender: TObject);
begin
  if (chkImprimirTXT.Checked = True) then  // Busca pelo Codigo de Barra
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Imprimir em Arquivo') + ', ';
        strSql := strSql + QuotedStr('IMPARQUIVO') + ', ';
        strSql := strSql + QuotedStr('TXT');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('IMPARQUIVO');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.edtMensagemChange(Sender: TObject);
begin
  if (edtMensagem.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtMensagem.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtMensagem.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('MENSAGEM');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Mensagem para Impressão') + ', ';
        strSql := strSql + QuotedStr('MENSAGEM') + ', ';
        strSql := strSql + QuotedStr(edtMensagem.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.chkVendaConsumidorClick(Sender: TObject);
begin
  if (chkVendaConsumidor.Checked = True) then  // Busca pelo Codigo de Barra
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PDV';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Usa Ponto de Venda') + ', ';
        strSql := strSql + QuotedStr('PDV');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PDV';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('PDV');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.chkComandasClick(Sender: TObject);
begin
  if (chkComandas.Checked = True) then  // Busca pelo Codigo de Barra
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'COMANDA';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Usa Contrle de COMANDA/MESAS') + ', ';
        strSql := strSql + QuotedStr('COMANDA');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'COMANDA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('COMANDA');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.chkDeliveryClick(Sender: TObject);
begin
  if (chkDelivery.Checked = True) then  // Busca pelo Codigo de Barra
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'DELIVERY';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Usa Contrle de COMANDA/MESAS') + ', ';
        strSql := strSql + QuotedStr('DELIVERY');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'DELIVERY';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('DELIVERY');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.edtEdtPortaChange(Sender: TObject);
begin
  if (edtEdtPorta.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtEdtPorta.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtEdtPorta.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PORTA IMPRESSORA');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Porta para impressão') + ', ';
        strSql := strSql + QuotedStr('PORTA IMPRESSORA') + ', ';
        strSql := strSql + QuotedStr(edtEdtPorta.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.edtPerfil01Change(Sender: TObject);
begin
  if (edtPerfil01.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFIL';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtPerfil01.Text <> s_parametroD1.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET D1 = ';
          strSql := strSql + QuotedStr(edtPerfil01.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PERFIL');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Perfil para Aprovação/exclusão/cancelamento') + ', ';
        strSql := strSql + QuotedStr('PERFIL') + ', ';
        strSql := strSql + QuotedStr(edtPerfil01.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtPerfil02Change(Sender: TObject);
begin
  if (edtPerfil02.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFIL';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtPerfil02.Text <> s_parametroD2.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET D2 = ';
          strSql := strSql + QuotedStr(edtPerfil02.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PERFIL');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D2';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Perfil para Aprovação/exclusão/cancelamento') + ', ';
        strSql := strSql + QuotedStr('PERFIL') + ', ';
        strSql := strSql + QuotedStr(edtPerfil02.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtPerfil03Change(Sender: TObject);
begin
  if (edtPerfil03.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFIL';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtPerfil03.Text <> s_parametroD3.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET D3 = ';
          strSql := strSql + QuotedStr(edtPerfil03.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PERFIL');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D3';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Perfil para Aprovação/exclusão/cancelamento') + ', ';
        strSql := strSql + QuotedStr('PERFIL') + ', ';
        strSql := strSql + QuotedStr(edtPerfil03.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtPerfil04Change(Sender: TObject);
begin
  if (edtPerfil04.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFIL';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtPerfil01.Text <> s_parametroD4.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET D4 = ';
          strSql := strSql + QuotedStr(edtPerfil04.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PERFIL');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D4';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Perfil para Aprovação/exclusão/cancelamento') + ', ';
        strSql := strSql + QuotedStr('PERFIL') + ', ';
        strSql := strSql + QuotedStr(edtPerfil04.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.chkPedirSenhaClick(Sender: TObject);
begin
  if (chkPedirSenha.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'APROVACAO';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Usa Aprovação na exclusão de Pedidos') + ', ';
        strSql := strSql + QuotedStr('APROVACAO');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'APROVACAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('APROVACAO');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.chkUsaDLLClick(Sender: TObject);
begin
  if (chkUsaDLL.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'DLLBEMATECH';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Usa DLL Bematech para impressora não Fiscal') + ', ';
        strSql := strSql + QuotedStr('DLLBEMATECH');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'DLLBEMATECH';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('DLLBEMATECH');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.edtEdtSerieChange(Sender: TObject);
begin
  if (edtEdtSerie.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'SERIETERMINAL';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtEdtSerie.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtEdtSerie.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('SERIETERMINAL');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Serie Padrão PDV') + ', ';
        strSql := strSql + QuotedStr('SERIETERMINAL') + ', ';
        strSql := strSql + QuotedStr(edtEdtSerie.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.rgEstoqueNegativoClick(Sender: TObject);
begin
//  inherited;
  strSql := '';
  if (rgEstoqueNegativo.ItemIndex = 0) then  // Utiliza Lote no PDV
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('não aceita estoque negativo') + ', ';
        strSql := strSql + QuotedStr('ESTOQUENEGATIVO') + ', ';
        strSql := strSql + '3';
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ESTOQUENEGATIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
        strSql := strSql + QuotedStr('ESTOQUENEGATIVO');

        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.chkImpAoGravarClick(Sender: TObject);
begin
  if (chkImpAoGravar.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMP_AOGRAVAR';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Imprimir ao gravar pedido') + ', ';
        strSql := strSql + QuotedStr('IMP_AOGRAVAR');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMP_AOGRAVAR';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('IMP_AOGRAVAR');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.chkAbrirGavetaAoGravarClick(Sender: TObject);
begin
  if (chkAbrirGavetaAoGravar.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ABRIR_GAVETA';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Abrir a gaveta ao gravar pedido') + ', ';
        strSql := strSql + QuotedStr('ABRIR_GAVETA');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ABRIR_GAVETA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('ABRIR_GAVETA');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.rgPgComissaoClick(Sender: TObject);
begin
  strSql := '';
  if (rgPgComissao.ItemIndex = 0) then  // Utiliza Lote no PDV
  begin
    edtPorc.Enabled := True;
    { if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Paga comissão atendente') + ', ';
        strSql := strSql + QuotedStr('PAGA_COMISSAO') + ', ';
        strSql := strSql + QuotedStr(edtPorc.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;    }
  end
  else
  begin
    edtPorc.Text := '0';
    edtPorc.Enabled := False;
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
        strSql := strSql + QuotedStr('PAGA_COMISSAO');
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.edtModeloChange(Sender: TObject);
begin
//  inherited;
  if (edtModelo.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MODELOIMPRESSORA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtModelo.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtModelo.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('MODELOIMPRESSORA');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Modelo da impressora') + ', ';
        strSql := strSql + QuotedStr('MODELOIMPRESSORA') + ', ';
        strSql := strSql + QuotedStr('7');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtSetor2Change(Sender: TObject);
begin
//  inherited;
  if (edtSetor2.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PORTA SETOR2';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtSetor2.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtSetor2.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PORTA SETOR2');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Porta para impressão') + ', ';
        strSql := strSql + QuotedStr('PORTA SETOR2') + ', ';
        strSql := strSql + QuotedStr(edtSetor2.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.edtSetor3Change(Sender: TObject);
begin
//  inherited;
  if (edtSetor3.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PORTA SETOR3';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtSetor2.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtSetor3.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PORTA SETOR3');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Porta para impressão') + ', ';
        strSql := strSql + QuotedStr('PORTA SETOR3') + ', ';
        strSql := strSql + QuotedStr(edtSetor3.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtMensagem1Change(Sender: TObject);
begin
  if (edtMensagem1.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM_1';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtMensagem1.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtMensagem1.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('MENSAGEM_1');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Mensagem para Impressão') + ', ';
        strSql := strSql + QuotedStr('MENSAGEM_1') + ', ';
        strSql := strSql + QuotedStr(edtMensagem1.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtMensagem2Change(Sender: TObject);
begin
  if (edtMensagem2.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM_2';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtMensagem2.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtMensagem2.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('MENSAGEM_2');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Mensagem para Impressão') + ', ';
        strSql := strSql + QuotedStr('MENSAGEM_2') + ', ';
        strSql := strSql + QuotedStr(edtMensagem2.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.chkBloquearComandaClick(Sender: TObject);
begin
  if (chkBloquearComanda.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BLOQUEARMESA';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Bloqueia Mesa ao imprimir parcial') + ', ';
        strSql := strSql + QuotedStr('BLOQUEARMESA');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BLOQUEARMESA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('BLOQUEARMESA');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.chkImpressaoResumidaClick(Sender: TObject);
begin
  if (chkImpressaoResumida.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPRESSAORESUMIDA';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Imprimir descrição do produto resumida, no fechamento') + ', ';
        strSql := strSql + QuotedStr('IMPRESSAORESUMIDA');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPRESSAORESUMIDA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('IMPRESSAORESUMIDA');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.chkcontroleCaixaClick(Sender: TObject);
begin
  if (chkcontroleCaixa.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'USACONTROLECAIXA';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Usa Controle de Caixa ?') + ', ';
        strSql := strSql + QuotedStr('USACONTROLECAIXA');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'USACONTROLECAIXA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('USACONTROLECAIXA');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.chkImpUmReciboClick(Sender: TObject);
begin
  if (chkImpUmRecibo.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'SOMARECIBOS';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Imprime 1 recibo para os selecionados ?') + ', ';
        strSql := strSql + QuotedStr('SOMARECIBOS');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'SOMARECIBOS';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('SOMARECIBOS');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.edt1Change(Sender: TObject);
begin
  if (edtPerfil01.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFILSEMAUTORIZACAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtPerfil01.Text <> s_parametroD1.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET D1 = ';
          strSql := strSql + QuotedStr(edt1.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PERFILSEMAUTORIZACAO');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Perfil sem autorização para Abertura de Comandas') + ', ';
        strSql := strSql + QuotedStr('PERFILSEMAUTORIZACAO') + ', ';
        strSql := strSql + QuotedStr(edt1.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.chk1Click(Sender: TObject);
begin
  if (chk1.Checked = True) then  // Usa Aprovação no exluir Pedido
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PDVNTC';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Usa Tela de Venda NTC') + ', ';
        strSql := strSql + QuotedStr('PDVNTC');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PDVNTC';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
       strSql := strSql + QuotedStr('PDVNTC');
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
          dm.sqlsisAdimin.Commit(TD);
       except
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
              [mbOk], 0);
       end;
     end;
     if (s_parametro.Active) then
        s_parametro.Close;
  end;
end;

procedure TfParametro.BitBtn30Click(Sender: TObject);
begin
  inherited;
  if ((edit14.Text = '') or (edit14.Text = '')) then
  begin
    MessageDlg('Preencha o Cargo/Função Utilizado.', mtWarning, [mbOk], 0) ;
    Exit;
  end;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CARGO/FUNCAO';   // Centro de Custo Padrao
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Defini tipo de cliente controla entrada saida';
      dm.cds_parametroPARAMETRO.AsString := 'CARGO/FUNCAO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := edit14.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := edit14.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.Button1Click(Sender: TObject);
begin
    DM.v_CargoFuncao := '';
    fCargosFuncoes := TfCargosFuncoes.Create(Application);
    try
      fCargosFuncoes.ShowModal;
      Edit14.Text := DM.v_CargoFuncao;
    finally
      fCargosFuncoes.Free;
    end;
end;

procedure TfParametro.edtCXInternoChange(Sender: TObject);
begin
  if (edtCXInterno.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CONTACAIXAINTERNA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
          strSql := 'UPDATE PARAMETRO SET D1 = ';
          strSql := strSql + QuotedStr(edtCXInterno.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('CONTACAIXAINTERNA');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Conta Caixa Interno') + ', ';
        strSql := strSql + QuotedStr('CONTACAIXAINTERNA') + ', ';
        strSql := strSql + QuotedStr(edtCXInterno.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtCXSangriaChange(Sender: TObject);
begin
  if (edtCXSangria.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CONTACAIXASANGRIA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
          strSql := 'UPDATE PARAMETRO SET D1 = ';
          strSql := strSql + QuotedStr(edtCXSangria.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('CONTACAIXASANGRIA');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Conta Caixa Sangria') + ', ';
        strSql := strSql + QuotedStr('CONTACAIXASANGRIA') + ', ';
        strSql := strSql + QuotedStr(edtCXSangria.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtTelaChange(Sender: TObject);
begin
  if (edtTela.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PERFILTELA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtTela.Text <> s_parametroD1.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET D1 = ';
          strSql := strSql + QuotedStr(edtTela.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PERFILTELA');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Perfil para Usar Tela Completa') + ', ';
        strSql := strSql + QuotedStr('PERFILTELA') + ', ';
        strSql := strSql + QuotedStr(edtTela.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtPorcChange(Sender: TObject);
begin
  if (StrToInt(edtPorc.Text) > 0) then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtPorc.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('PAGA_COMISSAO');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, DADOS';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Paga comissão atendente') + ', ';
        strSql := strSql + QuotedStr('PAGA_COMISSAO') + ', ';
        strSql := strSql + QuotedStr(edtPorc.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.rg1Click(Sender: TObject);
begin
  strSql := '';
  if (rg1.ItemIndex = 0) then  // Utiliza Lote no PDV
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'LANCACOMISSAOCR';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Lança comissão no contas à Receber') + ', ';
        strSql := strSql + QuotedStr('LANCACOMISSAOCR');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
    edtPorc.Text := '0';
    edtPorc.Enabled := False;
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'LANCACOMISSAOCR';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
        strSql := strSql + QuotedStr('LANCACOMISSAOCR');
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.edtCaixinhaChange(Sender: TObject);
begin
  if (edtCaixinha.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CONTACAIXINHA';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
          strSql := 'UPDATE PARAMETRO SET D1 = ';
          strSql := strSql + QuotedStr(edtCaixinha.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('CONTACAIXINHA');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Conta Caixinha') + ', ';
        strSql := strSql + QuotedStr('CONTACAIXINHA') + ', ';
        strSql := strSql + QuotedStr(edtCaixinha.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfParametro.BitBtn31Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SUFRAMA';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    strsql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, DADOS, D1)' +
      ' VALUES (' + QuotedStr('Desconto Venda Cliente com SUFRAMA') + ', ' +
      QuotedStr('SUFRAMA') + ', ' + QuotedStr('S') + ', NULL,' + QuotedStr(MaskEdit3.Text) +')';
  end
  else
    strsql := 'UPDATE PARAMETRO SET D1 = ' + QuotedStr(MaskEdit3.Text) + ' WHERE PARAMETRO = ' + QuotedStr('SUFRAMA');

  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Desconto Venda Cliente com SUFRAMA inserida/alterada com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Desconto SUFRAMA não incluído/alterado!', mtError,
         [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn32Click(Sender: TObject);
begin
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'USUARIOVENDA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Campo usado na Venda para usar mesmo Usuário Logado';
      dm.cds_parametroPARAMETRO.AsString := 'USUARIOVENDA';
      if (RadioGroup3.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end
    else
    begin
      dm.cds_parametro.Edit;
      if (RadioGroup3.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.rgBloqueioClick(Sender: TObject);
begin
  //inherited;
  strSql := '';
  if (rgBloqueio.ItemIndex = 0) then  // Mensagem Personalizada de Bloqueio
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'BLOQUEIOPERSONALIZADO';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Mensagem Personalizada de Bloqueio') + ', ';
        strSql := strSql + QuotedStr('BLOQUEIOPERSONALIZADO') + ', ';
        strSql := strSql + QuotedStr('S');        
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
    if(s_parametro.Active) then
     s_parametro.Close;
    s_parametro.Params[0].AsString := 'BLOQUEIOPERSONALIZADO';
    s_parametro.Open;
    if (not s_parametro.Eof) then
    begin
      strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
      strSql := strSql + QuotedStr('BLOQUEIOPERSONALIZADO');

      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        MessageDlg('Erro no sistema, parametro não foi gravado.', mtError, [mbOk], 0);
      end;
    end;
   end;
end;

procedure TfParametro.rgNfeClick(Sender: TObject);
begin
  inherited;
  strSql := '';
  if (rgBloqueio.ItemIndex = 1) then  // Mensagem Personalizada de Bloqueio
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'EMAILAUTOMÁTICO';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Mensagem Personalizada de Bloqueio') + ', ';
        strSql := strSql + QuotedStr('EMAILAUTOMATICO') + ', ';
        strSql := strSql + QuotedStr('S');
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end
  else
  begin
    if(s_parametro.Active) then
     s_parametro.Close;
    s_parametro.Params[0].AsString := 'EMAILAUTOMATICO';
    s_parametro.Open;
    if (not s_parametro.Eof) then
    begin
      strSql := 'DELETE FROM PARAMETRO WHERE PARAMETRO = ';
      strSql := strSql + QuotedStr('EMAILAUTOMATICO');

      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        MessageDlg('Erro no sistema, parametro não foi gravado.', mtError, [mbOk], 0);
      end;
    end;
   end;
end;

procedure TfParametro.BitBtn34Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
     edtSerieNF.Text := scds_serie_procSERIE.AsString;
   finally
    scds_serie_proc.Close;
    fProcurar.Free;
   end;
    edtSerieNF.SetFocus;
end;

procedure TfParametro.BitBtn26Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'COMPRA';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    begin
      MessageDlg('O Parametro "Aprovação de Compras" é obrigatório para usar esta opção.', mtError,[mbOk], 0);
      exit;
    end;
  end
  else begin
    dm.cds_parametro.Edit;
    dm.cds_parametroD2.AsString := edit22.Text;
  end;
  dm.cds_parametro.ApplyUpdates(0);
end;

procedure TfParametro.btnNFSerieClick(Sender: TObject);
begin
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFE';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Serie para nota fiscal eletronica') + ', ';
        strSql := strSql + QuotedStr('SERIENFE') + ', ';
        strSql := strSql + QuotedStr('S') + ', ';
        strSql := strSql + QuotedStr(edtSerieNF.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    dm.cds_parametroD1.AsString := edtSerieNF.Text;
    dm.cds_parametro.ApplyUpdates(0);
  end;
end;

procedure TfParametro.rgCadastroClienteClick(Sender: TObject);
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;

  // Insere ou Altera a tabela PARAMETROS
  if (not dm.cds_parametro.IsEmpty) then
  begin
    dm.cds_parametro.Edit;
    if (rgCadastroCliente.ItemIndex = 0) then
    begin
      dm.cds_parametroD3.AsString := 'COMPLETO';
      dm.cadastroClienteTipo := 'COMPLETO';
    end;
    if (rgCadastroCliente.ItemIndex = 1) then
    begin
      dm.cds_parametroD3.AsString := 'SIMPLES';
      dm.cadastroClienteTipo := 'SIMPLES';
    end;
    dm.cds_parametro.ApplyUpdates(0);
  end
  else begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, D3';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Cadastro do Cliente Completo ou Simples') + ', ';
    strSql := strSql + QuotedStr('CADASTROCLIENTE') + ', ';
    strSql := strSql + QuotedStr('S') + ', ';
    if (rgCadastroCliente.ItemIndex = 0) then
    begin
      dm.cadastroClienteTipo := 'COMPLETO';
      strSql := strSql + QuotedStr('COMPLETO');
    end;
    if (rgCadastroCliente.ItemIndex = 1) then
    begin
      strSql := strSql + QuotedStr('SIMPLES');
      dm.cadastroClienteTipo := 'SIMPLES';
    end;
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
           [mbOk], 0);
    end;
  end;
end;

procedure TfParametro.BitBtn33Click(Sender: TObject);
begin
  inherited;
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'NATUREZANF';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, D1';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Serie para nota fiscal eletronica') + ', ';
    strSql := strSql + QuotedStr('SERIENFE') + ', ';
    strSql := strSql + QuotedStr('S') + ', ';
    strSql := strSql + QuotedStr(edtSerieNF.Text);
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
          [mbOk], 0);
    end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    dm.cds_parametroD1.AsString := edtSerieNF.Text;
    dm.cds_parametro.ApplyUpdates(0);
  end;
end;

procedure TfParametro.BitBtn37Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
     edSerieScan.Text := scds_serie_procSERIE.AsString;
   finally
    scds_serie_proc.Close;
    fProcurar.Free;
   end;
    edtSerieNF.SetFocus;
end;

procedure TfParametro.BitBtn36Click(Sender: TObject);
begin
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFESCAN';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, D1';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Serie para nota fiscal eletronica - SCAN') + ', ';
    strSql := strSql + QuotedStr('SERIENFESCAN') + ', ';
    strSql := strSql + QuotedStr('S') + ', ';
    strSql := strSql + QuotedStr(edSerieScan.Text);
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
           [mbOk], 0);
    end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    dm.cds_parametroD1.AsString := edSerieScan.Text;
    dm.cds_parametro.ApplyUpdates(0);
  end;
end;

procedure TfParametro.btnNumNfeClick(Sender: TObject);
var numNf: Integer;
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFE';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('Cadastre a Série primeiro.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (dmnf.scds_serienfe.Active) then
    dmnf.scds_serienfe.Close;
  dmnf.scds_serienfe.Params[0].AsString := edtSerieNF.Text;

  dmnf.scds_serienfe.Open;
  if (not dmnf.scds_serienfe.IsEmpty) then
  begin
    MessageDlg('Já existe Notas com está série, não precisa informar número inicial.', mtWarning, [mbOK], 0);
    exit;
  end;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  NUMNF := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  strSql := 'INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NATUREZA, SERIE, CORPONF1';
  strSql := strSql + ') VALUES (';
  strSql := strSql + QuotedStr(edNumNfe.Text) + ', ';
  strSql := strSql + IntToStr(numNf) + ', ';
  strSql := strSql + edNotaFiscalNatureza.Text + ', ';
  strSql := strSql + QuotedStr(edtSerieNF.Text) + ', ';
  strSql := strSql + QuotedStr('NOTA INICIAL CADASTRADO EM PARAMETRO - ' +
    dm.varLogado + ' - ' + DateToStr(now));
  strSql := strSql + ')';
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
         [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn41Click(Sender: TObject);
var numNf: Integer;
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFESCAN';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('Cadastre a Série - SCAN primeiro.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (dmnf.scds_serienfe.Active) then
    dmnf.scds_serienfe.Close;
  dmnf.scds_serienfe.Params[0].AsString := edSerieScan.Text;

  dmnf.scds_serienfe.Open;
  if (not dmnf.scds_serienfe.IsEmpty) then
  begin
    MessageDlg('Já existe Notas com está série, não precisa informar número inicial.', mtWarning, [mbOK], 0);
    exit;
  end;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  NUMNF := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  strSql := 'INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NATUREZA, SERIE, CORPONF1';
  strSql := strSql + ') VALUES (';
  strSql := strSql + QuotedStr(edNumNfeScam.Text) + ', ';
  strSql := strSql + IntToStr(numNf) + ', ';
  strSql := strSql + edNotaFiscalNatureza.Text + ', ';
  strSql := strSql + QuotedStr(edSerieScan.Text) + ', ';
  strSql := strSql + QuotedStr('NOTA INICIAL CADASTRADO EM PARAMETRO - ' +
    dm.varLogado + ' - ' + DateToStr(now));
  strSql := strSql + ')';
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
         [mbOk], 0);
  end;
end;

procedure TfParametro.carregaParametroNotaFiscal;
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFE';
  dm.cds_parametro.Open;
  edtSerieNF.Text := dm.cds_parametroD1.AsString;
  if (dmnf.scds_serienfe.Active) then
    dmnf.scds_serienfe.Close;
  dmnf.scds_serienfe.Params[0].AsString := edtSerieNF.Text;
  dmnf.scds_serienfe.Open;
  if (not dmnf.scds_serienfe.IsEmpty) then
  begin
    edNumNfe.Text := IntToStr(dmnf.scds_serienfeNOTASERIE.AsInteger + 1);
  end;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFESCAN';
  dm.cds_parametro.Open;
  edSerieScan.Text := dm.cds_parametroD1.AsString;
  if (not dmnf.scds_serienfe.Active) then
    dmnf.scds_serienfe.Close;
  dmnf.scds_serienfe.Params[0].AsString := edSerieScan.Text;
  dmnf.scds_serienfe.Open;
  if (dmnf.scds_serienfe.IsEmpty) then
  begin
    edNumNfeScam.Text := IntToStr(dmnf.scds_serienfeNOTASERIE.AsInteger + 1);
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'NOTAFISCALDESATIVADO';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (dm.cds_parametroCONFIGURADO.AsString = 'N') then
      RadioGroup4.ItemIndex := 0;
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      RadioGroup4.ItemIndex := 1;
  end;

end;

procedure TfParametro.rgPesqProdCupomClick(Sender: TObject);
begin
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'BUSCACUPOM';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Tipo Pesquisa Cupom') + ', ';
    strSql := strSql + QuotedStr('BUSCACUPOM') + ', ';
    if (rgPesqProdCupom.ItemIndex = 0) then
      strSql := strSql + QuotedStr('0')
    else
      strSql := strSql + QuotedStr('1');
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
          [mbOk], 0);
    end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    if (rgPesqProdCupom.ItemIndex = 0) then
      dm.cds_parametroCONFIGURADO.AsString := '0'
    else
      dm.cds_parametroCONFIGURADO.AsString := '1';
    dm.cds_parametro.ApplyUpdates(0);
  end;
end;

procedure TfParametro.cbCupomClick(Sender: TObject);
begin
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'USACUPOM';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Usa Cupom') + ', ';
    strSql := strSql + QuotedStr('USACUPOM') + ', ';
    if (cbCupom.Checked) then
      strSql := strSql + QuotedStr('S')
    else
      strSql := strSql + QuotedStr('N');
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
          [mbOk], 0);
    end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    if (cbCupom.Checked) then
      dm.cds_parametroCONFIGURADO.AsString := 'S'
    else
      dm.cds_parametroCONFIGURADO.AsString := 'N';
    dm.cds_parametro.ApplyUpdates(0);
  end;
end;
procedure TfParametro.edtConsumidorChange(Sender: TObject);
begin
  inherited;
  if (edtConsumidor.Text <> '') then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'CONSUMIDOR';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       if (edtConsumidor.Text <> s_parametroDADOS.AsString) then
       begin
          strSql := 'UPDATE PARAMETRO SET DADOS = ';
          strSql := strSql + QuotedStr(edtConsumidor.Text);
          strSql := strSql + ' where PARAMETRO = ' + QuotedStr('CONSUMIDOR');
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(strSql);
          Try
             dm.sqlsisAdimin.Commit(TD);
          except
             dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
                 [mbOk], 0);
          end;
       end;
     end
     else
     begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Codigo do Cliente Consumidor') + ', ';
        strSql := strSql + QuotedStr('CONSUMIDOR') + ', ';
        strSql := strSql + QuotedStr(edtConsumidor.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
     end;
  end;

end;

procedure TfParametro.LISTAPRECOGravaClick(Sender: TObject);
begin
  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'LISTAPRECO';
  s_parametro.Open;
  if (s_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, D4';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Utiliza Lista de Preço por cliente') + ', ';
    strSql := strSql + QuotedStr('LISTAPRECO') + ', ';
    if (RadioGroup5.ItemIndex = 1) then
      strSql := strSql + QuotedStr('S');
    if (RadioGroup5.ItemIndex = 0) then
      strSql := strSql + QuotedStr('N');
    if (edCodigoListaPadrao.Text <> '') then
      strSql := strSql + ', ' + edCodigoListaPadrao.Text
    else
      strSql := strSql + ', null';
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Reinicie o sistema para usar a nova configuração.', mtWarning, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
          [mbOk], 0);
    end;
  end
  else begin
    strSql := 'UPDATE PARAMETRO SET CONFIGURADO = ';
    if (RadioGroup5.ItemIndex = 1) then
      strSql := strSql + QuotedStr('S');
    if (RadioGroup5.ItemIndex = 0) then
      strSql := strSql + QuotedStr('N');
    if (edCodigoListaPadrao.Text <> '') then
      strSql := strSql + ', D4 = ' + edCodigoListaPadrao.Text;
    strSql := strSql + ' where PARAMETRO = ' + QuotedStr('LISTAPRECO');
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Reinicie o sistema para usar a nova configuração.', mtWarning, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
        [mbOk], 0);
    end;
  end;

end;

procedure TfParametro.BitBtn38Click(Sender: TObject);
var testaConversao: Double;
begin
  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'LISTAPRODUTOCONDICAO';
  s_parametro.Open;
  try
    testaConversao := StrToFloat(edListaCondicaoCalc1.Text);
    testaConversao := StrToFloat(edListaCondicaoCalc2.Text);
    testaConversao := StrToFloat(edListaCondicaoCalc3.Text);
    testaConversao := StrToFloat(edCondicaoArredondar.Text);
  except
    MessageDlg('Este campo tem que ser número, será usado para fazer cálculo na Lista de Produto.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (s_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, D1, D2, D3, D4, D5, D6, D7';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Exibe condiçoes na lista de produto') + ', ';
    strSql := strSql + QuotedStr('LISTAPRODUTOCONDICAO') + ', ';
    strSql := strSql + QuotedStr(edListaCondicao1.Text)+ ', ';
    strSql := strSql + QuotedStr(edListaCondicaoCalc1.Text)+ ', ';
    strSql := strSql + QuotedStr(edListaCondicao2.Text)+ ', ';
    strSql := strSql + QuotedStr(edListaCondicaoCalc2.Text)+ ', ';
    strSql := strSql + QuotedStr(edListaCondicao3.Text)+ ', ';
    strSql := strSql + QuotedStr(edListaCondicaoCalc3.Text)+ ', ';
    strSql := strSql + QuotedStr(edCondicaoArredondar.Text);
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Reinicie o sistema para usar a nova configuração.', mtWarning, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
          [mbOk], 0);
    end;
  end
  else begin
    strSql := 'UPDATE PARAMETRO SET ';
    strSql := strSql + ' D1 = ' + QuotedStr(edListaCondicao1.Text)+ ', ';
    strSql := strSql + ' D2 = ' + QuotedStr(edListaCondicaoCalc1.Text)+ ', ';
    strSql := strSql + ' D3 = ' + QuotedStr(edListaCondicao2.Text)+ ', ';
    strSql := strSql + ' D4 = ' + QuotedStr(edListaCondicaoCalc2.Text)+ ', ';
    strSql := strSql + ' D5 = ' + QuotedStr(edListaCondicao3.Text)+ ', ';
    strSql := strSql + ' D6 = ' + QuotedStr(edListaCondicaoCalc3.Text)+ ', ';
    strSql := strSql + ' D7 = ' + QuotedStr(edCondicaoArredondar.Text);
    strSql := strSql + ' where PARAMETRO = ' + QuotedStr('LISTAPRODUTOCONDICAO');
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Reinicie o sistema para usar a nova configuração.', mtWarning, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
        [mbOk], 0);
    end;
  end;

end;

procedure TfParametro.rgDataNFClick(Sender: TObject);
begin
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'DATANF';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Verifica se a data da NF difere da atual') + ', ';
    strSql := strSql + QuotedStr('DATANF') + ', ';
    if (rgDataNF.ItemIndex = 0) then
      strSql := strSql + QuotedStr('N');
    if (rgDataNF.ItemIndex = 1) then
      strSql := strSql + QuotedStr('S');
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
          [mbOk], 0);
    end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    if (rgDataNF.ItemIndex = 0) then
      dm.cds_parametroCONFIGURADO.AsString := 'N';
    if (rgDataNF.ItemIndex = 1) then
      dm.cds_parametroCONFIGURADO.AsString := 'S';
    dm.cds_parametro.ApplyUpdates(0);
  end;
end;

procedure TfParametro.BitBtn42Click(Sender: TObject);
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFE';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('Cadastre a Série primeiro.', mtWarning, [mbOK], 0);
    exit;
  end;

  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    dm.cds_parametro.Edit;
    if (rgMesmoNumero.ItemIndex = 0) then
      dm.cds_parametroCONFIGURADO.AsString := 'N';
    if (rgMesmoNumero.ItemIndex = 1) then
      dm.cds_parametroCONFIGURADO.AsString := 'S';

    dm.cds_parametro.ApplyUpdates(0);

    dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
         [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn43Click(Sender: TObject);
begin
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'NOTAFISCALDESATIVADO';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Permite alteração do número da Nota') + ', ';
    strSql := strSql + QuotedStr('NOTAFISCALDESATIVADO') + ', ';
    if (RadioGroup4.ItemIndex = 0) then
      strSql := strSql + QuotedStr('N');
    if (RadioGroup4.ItemIndex = 1) then
      strSql := strSql + QuotedStr('S');
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
          [mbOk], 0);
    end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    if (RadioGroup4.ItemIndex = 0) then
      dm.cds_parametroCONFIGURADO.AsString := 'N';
    if (RadioGroup4.ItemIndex = 1) then
      dm.cds_parametroCONFIGURADO.AsString := 'S';
    dm.cds_parametro.ApplyUpdates(0);
  end;

end;

procedure TfParametro.btnOpClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if fProcurar.ShowModal=mrOk then
     edtOP.Text := scds_serie_procSERIE.AsString;
   finally
    scds_serie_proc.Close;
    fProcurar.Free;
   end;
    edtOP.SetFocus;
end;

procedure TfParametro.btnGravarOPClick(Sender: TObject);
begin
  inherited;
  strSql := '';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIEOP';
  dm.cds_parametro.Open;
  // Insere ou Altera a tabela PARAMETROS
  if (dm.cds_parametro.IsEmpty) then
  begin
        strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO, D1';
        strSql := strSql + ') VALUES (';
        strSql := strSql + QuotedStr('Serie para ordem de produção/apontamento') + ', ';
        strSql := strSql + QuotedStr('SERIEOP') + ', ';
        strSql := strSql + QuotedStr('S') + ', ';
        strSql := strSql + QuotedStr(edtOP.Text);
        strSql := strSql + ')';
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
               [mbOk], 0);
        end;
  end
  else
  begin
    dm.cds_parametro.Edit;
    dm.cds_parametroD1.AsString := edtOP.Text;
    dm.cds_parametro.ApplyUpdates(0);
  end;
end;

procedure TfParametro.rgEntSaiObgClick(Sender: TObject);
begin
  if(dm.cds_parametro.Active) then
   dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ENTSAICAMPOBRIG';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    strSql := 'INSERT INTO PARAMETRO (DESCRICAO, PARAMETRO, CONFIGURADO';
    strSql := strSql + ') VALUES (';
    strSql := strSql + QuotedStr('Mensagem Personalizada de Bloqueio') + ', ';
    strSql := strSql + QuotedStr('ENTSAICAMPOBRIG') + ', ';
    if (rgEntSaiObg.ItemIndex = 1) then
      strSql := strSql + QuotedStr('S')
    else
      strSql := strSql + QuotedStr('N');
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro no sistema, parametro não foi gravado.', mtError,
           [mbOk], 0);
    end;
  end
  else
  begin
      dm.sqlsisAdimin.StartTransaction(TD);
      Try
        dm.cds_parametro.Edit;
        if (rgEntSaiObg.ItemIndex = 1) then
          dm.cds_parametroCONFIGURADO.AsString := 'S'
        else
          dm.cds_parametroCONFIGURADO.AsString := 'N';
        dm.cds_parametro.ApplyUpdates(0);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro no sistema, parametro não foi gravado.', mtError, [mbOk], 0);
      end;
  end;

end;

end.
