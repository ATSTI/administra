unit uClienteCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, DBCtrls, Mask, DBLocal, DBLocalS,
  EChkCNPJ, EChkCPF, ComCtrls, ImgList, rpcompobase, rpvclreport;

type
  TfClienteCadastro = class(TfPai)
    DBText1: TDBText;
    DBText2: TDBText;
    sds_cli: TSQLDataSet;
    dsp_cli: TDataSetProvider;
    cds_cli: TClientDataSet;
    cds_cliCODCLIENTE: TIntegerField;
    cds_cliNOMECLIENTE: TStringField;
    cds_cliRAZAOSOCIAL: TStringField;
    cds_cliCONTATO: TStringField;
    cds_cliTIPOFIRMA: TSmallintField;
    cds_cliCPF: TStringField;
    cds_cliCNPJ: TStringField;
    cds_cliINSCESTADUAL: TStringField;
    cds_cliRG: TStringField;
    cds_cliSEGMENTO: TSmallintField;
    cds_cliREGIAO: TSmallintField;
    cds_cliLIMITECREDITO: TFloatField;
    cds_cliDATACADASTRO: TDateField;
    cds_cliCODUSUARIO: TIntegerField;
    cds_cliSTATUS: TSmallintField;
    cds_cliHOMEPAGE: TStringField;
    cds_cliPRAZORECEBIMENTO: TSmallintField;
    cds_cliPRAZOENTREGA: TSmallintField;
    cds_cliCODBANCO: TSmallintField;
    cds_cliBASE_ICMS: TSmallintField;
    cds_cliDATANASC: TDateField;
    cds_cliCONTA_CLIENTE: TStringField;
    cds_cliOBS: TStringField;
    cds_cliBANCO: TStringField;
    cds_cliNOMEUSUARIO: TStringField;
    sds_cliCODCLIENTE: TIntegerField;
    sds_cliNOMECLIENTE: TStringField;
    sds_cliRAZAOSOCIAL: TStringField;
    sds_cliCONTATO: TStringField;
    sds_cliTIPOFIRMA: TSmallintField;
    sds_cliCPF: TStringField;
    sds_cliCNPJ: TStringField;
    sds_cliINSCESTADUAL: TStringField;
    sds_cliRG: TStringField;
    sds_cliSEGMENTO: TSmallintField;
    sds_cliREGIAO: TSmallintField;
    sds_cliLIMITECREDITO: TFloatField;
    sds_cliDATACADASTRO: TDateField;
    sds_cliCODUSUARIO: TIntegerField;
    sds_cliSTATUS: TSmallintField;
    sds_cliHOMEPAGE: TStringField;
    sds_cliPRAZORECEBIMENTO: TSmallintField;
    sds_cliPRAZOENTREGA: TSmallintField;
    sds_cliCODBANCO: TSmallintField;
    sds_cliBASE_ICMS: TSmallintField;
    sds_cliDATANASC: TDateField;
    sds_cliCONTA_CLIENTE: TStringField;
    sds_cliOBS: TStringField;
    sds_cliBANCO: TStringField;
    sds_cliNOMEUSUARIO: TStringField;
    sds_cliTEM_IE: TStringField;
    cds_cliTEM_IE: TStringField;
    scds_usuario_proc: TSQLClientDataSet;
    scds_usuario_procCODUSUARIO: TSmallintField;
    scds_usuario_procNOMEUSUARIO: TStringField;
    scds_usuario_procSTATUS: TSmallintField;
    scds_usuario_procPERFIL: TStringField;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    sds_estado: TSQLDataSet;
    sdsEnderecoCli: TSQLDataSet;
    sdsEnderecoCliCODENDERECO: TIntegerField;
    sdsEnderecoCliCODCLIENTE: TIntegerField;
    sdsEnderecoCliLOGRADOURO: TStringField;
    sdsEnderecoCliBAIRRO: TStringField;
    sdsEnderecoCliCOMPLEMENTO: TStringField;
    sdsEnderecoCliCIDADE: TStringField;
    sdsEnderecoCliUF: TStringField;
    sdsEnderecoCliCEP: TStringField;
    sdsEnderecoCliTELEFONE: TStringField;
    sdsEnderecoCliTELEFONE1: TStringField;
    sdsEnderecoCliTELEFONE2: TStringField;
    sdsEnderecoCliFAX: TStringField;
    sdsEnderecoCliE_MAIL: TStringField;
    sdsEnderecoCliRAMAL: TStringField;
    sdsEnderecoCliTIPOEND: TSmallintField;
    sdsEnderecoCliDADOSADICIONAIS: TStringField;
    sdsEnderecoCliDDD: TStringField;
    dspEnderecoCli: TDataSetProvider;
    cdsEnderecoCli: TClientDataSet;
    cdsEnderecoCliCODENDERECO: TIntegerField;
    cdsEnderecoCliCODCLIENTE: TIntegerField;
    cdsEnderecoCliLOGRADOURO: TStringField;
    cdsEnderecoCliBAIRRO: TStringField;
    cdsEnderecoCliCOMPLEMENTO: TStringField;
    cdsEnderecoCliCIDADE: TStringField;
    cdsEnderecoCliUF: TStringField;
    cdsEnderecoCliCEP: TStringField;
    cdsEnderecoCliTELEFONE: TStringField;
    cdsEnderecoCliTELEFONE1: TStringField;
    cdsEnderecoCliTELEFONE2: TStringField;
    cdsEnderecoCliFAX: TStringField;
    cdsEnderecoCliE_MAIL: TStringField;
    cdsEnderecoCliRAMAL: TStringField;
    cdsEnderecoCliTIPOEND: TSmallintField;
    cdsEnderecoCliDADOSADICIONAIS: TStringField;
    cdsEnderecoCliDDD: TStringField;
    DtSrcE: TDataSource;
    sdsEnderecoCliDDD2: TStringField;
    sdsEnderecoCliDDD3: TStringField;
    sdsEnderecoCliDDD1: TStringField;
    cdsEnderecoCliDDD2: TStringField;
    cdsEnderecoCliDDD3: TStringField;
    cdsEnderecoCliDDD1: TStringField;
    BitBtn4: TBitBtn;
    DBRadioGroup3: TDBRadioGroup;
    sds_cliDATARESC: TDateField;
    sds_cliNOMEMAE: TStringField;
    sds_cliSEXO: TStringField;
    sds_cliFORMA_CORRESPOND: TStringField;
    sds_cliGRUPO_CLIENTE: TStringField;
    sds_cliCODINCLUCANC: TIntegerField;
    sds_cliEXIST_COBERT: TStringField;
    sds_cliEXISTCOPART: TStringField;
    sds_cliDATAREINC: TDateField;
    sds_cliGERAAVISO: TStringField;
    sds_cliGERAENV: TStringField;
    sds_cliGERABOL: TStringField;
    sds_cliEMVIAGEM: TStringField;
    sds_cliDTAALTERA: TDateField;
    sds_cliSERIELETRA: TStringField;
    sds_cliSERIE: TStringField;
    sds_cliRA: TStringField;
    sds_cliCURSO: TStringField;
    cds_cliDATARESC: TDateField;
    cds_cliNOMEMAE: TStringField;
    cds_cliSEXO: TStringField;
    cds_cliFORMA_CORRESPOND: TStringField;
    cds_cliGRUPO_CLIENTE: TStringField;
    cds_cliCODINCLUCANC: TIntegerField;
    cds_cliEXIST_COBERT: TStringField;
    cds_cliEXISTCOPART: TStringField;
    cds_cliDATAREINC: TDateField;
    cds_cliGERAAVISO: TStringField;
    cds_cliGERAENV: TStringField;
    cds_cliGERABOL: TStringField;
    cds_cliEMVIAGEM: TStringField;
    cds_cliDTAALTERA: TDateField;
    cds_cliSERIELETRA: TStringField;
    cds_cliSERIE: TStringField;
    cds_cliRA: TStringField;
    cds_cliCURSO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton3: TSpeedButton;
    Label28: TLabel;
    Label29: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbeCNPJ: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit1: TDBEdit;
    TabRepresentante: TTabSheet;
    TabVeiculo: TTabSheet;
    TabAdm: TTabSheet;
    DtSrcVisita: TDataSource;
    TabVisitas: TTabSheet;
    MMJPanel3: TMMJPanel;
    btnGravar_rep: TBitBtn;
    btnIncluir_rep: TBitBtn;
    btncancelar_rep: TBitBtn;
    btnexcluir_rep: TBitBtn;
    BitBtn9: TBitBtn;
    btnsair_rep: TBitBtn;
    MMJPanel4: TMMJPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    MMJPanel6: TMMJPanel;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    DtSrcRepr: TDataSource;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBNavigator2: TDBNavigator;
    MMJPanel8: TMMJPanel;
    Panel1: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    sds_cliIP: TStringField;
    sds_cliN_CONTRATO: TStringField;
    sds_cliMAC: TStringField;
    sds_cliMARCA: TStringField;
    sds_cliBANDA_UPLOAD: TStringField;
    sds_cliBANDA_DOWLOAD: TStringField;
    sds_cliTORRE_CONECCAO: TStringField;
    cds_cliIP: TStringField;
    cds_cliN_CONTRATO: TStringField;
    cds_cliMAC: TStringField;
    cds_cliMARCA: TStringField;
    cds_cliBANDA_UPLOAD: TStringField;
    cds_cliBANDA_DOWLOAD: TStringField;
    cds_cliTORRE_CONECCAO: TStringField;
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
    cds_faixa: TClientDataSet;
    cds_faixaCODFAIXA: TIntegerField;
    cds_faixaDESCRICAO: TStringField;
    cds_faixaIDADE_MIN: TSmallintField;
    cds_faixaIDADE_MAX: TSmallintField;
    cds_faixaVALOR_PLANO: TFloatField;
    cds_faixaDESCONTO: TFloatField;
    cds_faixaUSO: TStringField;
    dsp_faixa: TDataSetProvider;
    sds_faixa: TSQLDataSet;
    sds_faixaCODFAIXA: TIntegerField;
    sds_faixaDESCRICAO: TStringField;
    sds_faixaIDADE_MIN: TSmallintField;
    sds_faixaIDADE_MAX: TSmallintField;
    sds_faixaVALOR_PLANO: TFloatField;
    sds_faixaDESCONTO: TFloatField;
    sds_faixaUSO: TStringField;
    sds_cliCOD_FAIXA: TIntegerField;
    sds_cliDESCONTO: TFloatField;
    cds_cliCOD_FAIXA: TIntegerField;
    cds_cliDESCONTO: TFloatField;
    proc_end: TSQLDataSet;
    proc_endCOUNT: TIntegerField;
    Label61: TLabel;
    sds_cliMENSALIDADE: TFloatField;
    sds_cliPAI: TStringField;
    sds_cliLOCALTRABALUNO: TStringField;
    cds_cliMENSALIDADE: TFloatField;
    cds_cliPAI: TStringField;
    cds_cliLOCALTRABALUNO: TStringField;
    sds_cliDIVERSO1: TStringField;
    sds_cliDIVERSO2: TStringField;
    cds_cliDIVERSO1: TStringField;
    cds_cliDIVERSO2: TStringField;
    sds_cliTELTRABALUNO: TStringField;
    cds_cliTELTRABALUNO: TStringField;
    Ficha1: TMenuItem;
    VCLReport1: TVCLReport;
    GroupBox1: TGroupBox;
    DBEdit17: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure cds_cliNewRecord(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeCNPJExit(Sender: TObject);
    procedure DtSrcEStateChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cdsEnderecoCliNewRecord(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnIncluir_repClick(Sender: TObject);
    procedure btnGravar_repClick(Sender: TObject);
    procedure btnexcluir_repClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DtSrcReprStateChange(Sender: TObject);
    procedure btncancelar_repClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Ficha1Click(Sender: TObject);
  private
    { Private declarations }
  public
//    function CalculaCnpjCpf(Numero : String) : String;
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
    { Public declarations }
  end;

var
  fClienteCadastro: TfClienteCadastro;
  vartipo, cod_vendedor: integer;
  nome_vendedor : string;

implementation

uses UDm, uProcurar, uListaClientes;

{$R *.dfm}

procedure TfClienteCadastro.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex=0 then
  begin
    cds_cliCNPJ.EditMask := '000.000.000-00;1;_';
    cds_cliTIPOFIRMA.AsInteger := 0;
  end
  else
  begin
    cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_cliTIPOFIRMA.AsInteger := 1;
  end;
  dbeCNPJ.Enabled:=True;

end;

procedure TfClienteCadastro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.BtnProcurar.Click;
  fProcurar.btnIncluir.Visible := True;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   varForm1 := 'vendedor';
   cod_vendedor := 0;
   nome_vendedor := '';
   if fProcurar.ShowModal=mrOk then
   begin
    if dtSrc.State=dsBrowse then
     cds_cli.Edit;
    cds_cliCODUSUARIO.AsInteger := cod_vendedor;
    cds_cliNOMEUSUARIO.AsString := nome_vendedor;
   end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfClienteCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage := TabSheet1;
  MMJPanel1.Align := alBottom;

  //Usa Cadastro de Veiculo
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    BitBtn2.Visible :=True//TabVeiculo.TabVisible := True
  else
    BitBtn2.Visible :=False;//TabVeiculo.TabVisible := False;

  //Usa REPRESENTANTE OU REFERENCIA
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'REFERENCIA' then
  begin
    TabRepresentante.Caption := 'REFERÊNCIA';
    Label40.Caption := 'Nome';
    Label41.Caption := 'Obs.';
  end;

  //Usa Cadastro de Visitas
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVISITAS';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    BitBtn4.Visible :=true //TabVisitas.TabVisible := True
  else
    BitBtn4.Visible :=False;//TabVisitas.TabVisible := False;

  //Usa Cadastro de Veiculo
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabVeiculo.TabVisible := True
  else
    TabVeiculo.TabVisible := False;

  //Usa Cadastro de Visitas
  {if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVISITAS';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabVisitas.TabVisible := True
  else
    TabVisitas.TabVisible := False;}

  //Usa Cadastro de Representantes
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROREPRESENTANTE';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabRepresentante.TabVisible := True
  else
    TabRepresentante.TabVisible := False;

  //Usa Cadastro de Representantes
  {if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROADM';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabAdm.TabVisible := True
  else
    TabAdm.TabVisible := False;
  dm.cds_parametro.Close;
  }
  
  if (sds_estado.Active) then
    sds_estado.Close;
  sds_estado.CommandText := 'SELECT DISTINCT UF FROM ESTADO_ICMS ';
  sds_estado.Open;
  while (not sds_estado.Eof) do
  begin
    DBComboBox1.Items.Add(sds_estado.Fields[0].asString);
    sds_estado.Next;
  end;


    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'LOGISTICA';
    dm.cds_parametro.Open;
    if (dm.cds_parametroCONFIGURADO.AsString <> 'S') then
        TabAdm.TabVisible := False;
    dm.cds_parametro.Close;
      
  {  if not cds_faixa.Active then
      cds_faixa.Open;
    // populo a combobox
    cds_faixa.First;
    while not cds_faixa.Eof do
    begin
      ComboBox1.Items.Add(cds_faixaDESCRICAO.AsString);
      cds_faixa.Next;
    end;}

  //Usa Cadastro de Veiculo
  {if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'EMPRESA';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD1.AsString =  'LOJA ROUPA') then
     TabSheet2.TabVisible := True
  else
     TabSheet2.TabVisible := False;
  dm.cds_parametro.Close;
  }

end;

procedure TfClienteCadastro.btnProcurarClick(Sender: TObject);
begin
  //inherited;
   if ((varform = 'consulta') or (varform = 'consultaescola') or (varform = 'consultapedagogico'))  then
   begin
     close;
     exit;
   end;

   if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'ESCOLA')) then
   begin
     fListaClientes:=TfListaClientes.Create(Application);
     fListaClientes.BitBtn8.Enabled := False;
     fListaClientes.ShowModal;
     try
      cds_cli.Close;
      cds_cli.Params[0].Clear;
      cds_cli.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
      cds_cli.Open;
      if cds_cliTIPOFIRMA.AsInteger = 0 then
       cds_cliCNPJ.EditMask := '000.000.000-00;1;_'
      else
       cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
      if cds_cliTEM_IE.AsString = 'S' then
         CheckBox1.Checked := True;
      if cds_cliTEM_IE.AsString = '' then
         CheckBox1.Checked := False;
      finally
        fListaClientes.Free;
        dbEdit2.SetFocus;
      end;
   end;

end;

procedure TfClienteCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;
  if Alterar = 'S' then
  begin
    BitBtn1.Enabled:=DtSrc.State in [dsBrowse];
    BitBtn2.Enabled:=DtSrc.State in [dsBrowse];
    BitBtn3.Enabled:=DtSrc.State in [dsBrowse];
    BitBtn4.Enabled:=DtSrc.State in [dsBrowse];    
  end
  else
  begin
    BitBtn1.Enabled:=False;
    BitBtn2.Enabled:=False;
    BitBtn3.Enabled:=False;
    BitBtn4.Enabled:=False;
  end;

end;

procedure TfClienteCadastro.cds_cliNewRecord(DataSet: TDataSet);
begin
  inherited;
    cds_cliDATACADASTRO.Value:=Date;
    cds_CliCODUSUARIO.AsInteger:=usulog;
    cds_CliCODBANCO.AsInteger:=1;
    if dm.scds_banco_proc.Active then
       dm.scds_banco_proc.Close;
    dm.scds_banco_proc.Params[0].AsInteger:=cds_CliCODBANCO.AsInteger;
    dm.scds_banco_proc.Open;
    cds_cliBANCO.asstring:=dm.scds_banco_procBANCO.asstring;
    if dm.scds_banco_proc.IsEmpty then
      cds_cliBANCO.asstring := 'x';
    dm.scds_banco_proc.Close;
    cds_cliRA.AsString := 'Não';

end;

procedure TfClienteCadastro.btnGravarClick(Sender: TObject);
var faixacod : integer;
begin
 if ((PageControl1.ActivePage = TabSheet1) or (PageControl1.ActivePage = TabAdm)) then
 begin
    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_cliCODCLIENTE.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      if CheckBox1.Checked = True then
         cds_cliTEM_IE.AsString := 'S';
    end;

    inherited;
     if (cdsEnderecoCli.State in [dsInsert, dsEdit]) then
     begin
        if (DBComboBox1.Text ='') then
        begin
         MessageDlg('Campo Estado está vazio , Favor Preencher ', mtWarning, [mbOK], 0);
           cds_cli.Edit;
        exit;
        end;

        if (sds_estado.Active) then
          sds_estado.Close;
        sds_estado.CommandText := 'SELECT UF FROM ESTADO_ICMS WHERE UF = ''' + DBComboBox1.Text + '''';
        sds_estado.Open;
        if (sds_estado.IsEmpty) then
        begin
         MessageDlg('Estado não cadastrado na Tabela ESTADO(icms). ', mtWarning, [mbOK], 0);
         exit;
        end;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cdsEnderecoCliCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
        if (cdsEnderecoCliCODCLIENTE.AsInteger = 0) then
          cdsEnderecoCliCODCLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
        cdsEnderecoCli.ApplyUpdates(0);
     end;
 end;
 if (PageControl1.ActivePage = TabRepresentante) then
   btnGravar_rep.Click;
end;

procedure TfClienteCadastro.btnIncluirClick(Sender: TObject);
begin
 if (PageControl1.ActivePage = TabSheet1) then
 begin
    inherited;
    if cdsEnderecoCli.Active then
       cdsEnderecoCli.Close;
    cdsEnderecoCli.Params[0].Clear;
    cdsEnderecoCli.Params[1].Clear;

    if (vartipo = 0) then
    begin
      cds_cliCNPJ.EditMask := '000.000.000-00';
      cds_cliTIPOFIRMA.AsInteger := 0;
    end
    else
    begin
      cds_cliCNPJ.EditMask := '00.000.000/0000-00';
      cds_cliTIPOFIRMA.AsInteger := 1;
    end;
    cds_cliSEGMENTO.Value:=1;
    cds_cliREGIAO.Value:=1;
    if (not scds_usuario_proc.Active) then
       scds_usuario_proc.Open;
    scds_usuario_proc.Locate('CODUSUARIO','1', [loCaseInsensitive]);
    cds_cliCODUSUARIO.Value := 1;
    cds_cliNOMEUSUARIO.AsString := scds_usuario_procNOMEUSUARIO.AsString;
    scds_usuario_proc.Close;
    cds_cliSTATUS.Value:=1;
    {CBox1.Checked := true;
    CBox1.Font.Color := clBlue;
    CBox2.Checked := false;}
    CheckBox1.Checked := False;
    cds_cliDATACADASTRO.Value:=Date;

    if not cdsEnderecoCli.Active then
       cdsEnderecoCli.open;
    cdsEnderecoCli.Append;
    cdsEnderecoCliUF.AsString := 'SP';

   // if ((varform <> 'venda') and (varform <> 'consulta')) then
      dbEdit2.SetFocus;
 end;
 if (PageControl1.ActivePage = TabRepresentante) then
   btnIncluir_rep.Click;

end;

procedure TfClienteCadastro.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DtSrc.State=dsInsert then
  cds_cliRAZAOSOCIAL.AsString := cds_cliNOMECLIENTE.AsString;
end;

procedure TfClienteCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (varform = 'venda') then
  begin
    codcli := cds_cliCODCLIENTE.AsInteger;
    fListaClientes.nomecli := cds_cliNOMECLIENTE.AsString;
    fListaClientes.edCodigo.Text := IntToStr(codcli);
    fListaClientes.BitBtn2.Click;
  end;
  if (varform = 'consulta') then
  begin
    fListaClientes.edNome.SetFocus;
  end;
  if ((varform <> 'consultaescola') and (varform <> 'consultapedagogico')) then
  if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'SAUDE')) then
  if (dm.var_teste = 'venda') then
  begin
    codcli := cds_cliCODCLIENTE.AsInteger;
    fListaClientes.nomecli := cds_cliNOMECLIENTE.AsString;
    fListaClientes.edCodigo.Text := IntToStr(codcli);
    fListaClientes.BitBtn2.Click;
  end;
  if ((varform <> 'consultaescola') and (varform <> 'consultapedagogico')) then
  if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'SAUDE')) then
  if (dm.var_teste = 'consulta') then
  begin
    fListaClientes.edNome.SetFocus;
  end;

  inherited;

end;

procedure TfClienteCadastro.dbeCNPJExit(Sender: TObject);
 Var str_cpf: String;
begin

  IF (dbeCNPJ.Text = '   .   .   -  ') or (dbeCNPJ.Text = '  .   .   /    -  ') then
    CheckBox1.SetFocus
  else
  begin
  inherited;
  if not cds_cliTIPOFIRMA.IsNull then
  begin
    if DBRadioGroup1.ItemIndex = 0 then
    begin
      str_cpf := copy(cds_cliCNPJ.AsString,0,3)+copy(cds_cliCNPJ.AsString,5,3)+
         copy(cds_cliCNPJ.AsString,9,3)+copy(cds_cliCNPJ.AsString,13,2);
      if cpf(str_cpf) = False then
      begin
        MessageDlg('CPF Inválido !', mtWarning,[mbOk], 0);
        dbeCNPJ.SetFocus;
        exit;
      end;
    end;
    if DBRadioGroup1.ItemIndex = 1 then
    begin
      str_cpf := copy(cds_cliCNPJ.AsString,0,2)+copy(cds_cliCNPJ.AsString,4,3)+
        copy(cds_cliCNPJ.AsString,8,3)+copy(cds_cliCNPJ.AsString,12,4)
        +copy(cds_cliCNPJ.AsString,17,2);
      if cgc(str_cpf) = False then
      begin
        MessageDlg('C.N.P.J. Inválido !', mtWarning,[mbOk], 0);
        dbeCNPJ.SetFocus;
        exit;
      end;
    end;
  end;
 end;

end;

function TfClienteCadastro.cgc(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  n10:=StrToInt(num[10]);
  n11:=StrToInt(num[11]);
  n12:=StrToInt(num[12]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];
  if calculado=digitado then
    cgc:=true
    else
    cgc:=false;
  end;
//*****************************************************************************

function TfClienteCadastro.cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[10]+num[11];
if calculado=digitado then
  cpf:=true
  else
  cpf:=false;
end;

procedure TfClienteCadastro.DtSrcEStateChange(Sender: TObject);
begin
  inherited;
  SpeedButton4.Enabled:=DtSrcE.State in [dsBrowse,dsInactive];
  SpeedButton5.Enabled:=DtSrcE.State in [dsBrowse];
  
  if (DtSrcE.State in [dsEdit,dsInsert]) then
    cds_cli.Edit;

end;

procedure TfClienteCadastro.btnExcluirClick(Sender: TObject);
begin
 if (PageControl1.ActivePage = TabSheet1) then
 begin
    inherited;
    dm.sqlsisAdimin.ExecuteDirect('delete from enderecocliente where codcliente='+
    intToStr(cds_cliCODCLIENTE.asInteger));
 end;
 if (PageControl1.ActivePage = TabRepresentante) then
   btnexcluir_rep.Click;
end;

procedure TfClienteCadastro.cdsEnderecoCliNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEnderecoCliCODCLIENTE.AsInteger:= cds_cliCODCLIENTE.AsInteger;
  cdsEnderecoCliTIPOEND.AsInteger:=0;
end;

procedure TfClienteCadastro.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var
  BtnName: string;
  begin
  case Button of
    nbFirst  : DBRadioGroup2.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    nbPrior  : DBRadioGroup2.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    nbNext   : DBRadioGroup2.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    nbLast   : DBRadioGroup2.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
  end;
end;

procedure TfClienteCadastro.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage := TabSheet1;
  if ((varform <> 'consultaescola') and (varform <> 'consultapedagogico')) then
  if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'SAUDE')) then
  if (dm.var_teste = 'consulta') then
  begin
    if (cds_cli.Active) then
      cds_cli.Close;
    cds_cli.Params[0].Clear;
    cds_cli.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
    cds_cli.Open;
    if cdsEnderecoCli.Active then
       cdsEnderecoCli.Close;
       cdsEnderecoCli.Params[0].Clear;
       cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsEnderecoCli.Open;
  end;

  if ((varform = 'consultaescola') or (varform = 'consultapedagogico')) then
  begin
    if (cds_cli.Active) then
      cds_cli.Close;
    cds_cli.Params[0].Clear;
    cds_cli.Params[0].AsInteger := codcli; //fListaCliEscola.cdsCODCLIENTE.AsInteger;
    cds_cli.Open;
    if cdsEnderecoCli.Active then
       cdsEnderecoCli.Close;
       cdsEnderecoCli.Params[0].Clear;
       cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsEnderecoCli.Open;
  end;

end;

procedure TfClienteCadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (cds_cli.State in [dsBrowse]) then
  begin
    cds_cli.Edit;
    cds_cliCNPJ.Clear;
    if DBRadioGroup1.ItemIndex=0 then
    begin
      cds_cliCNPJ.EditMask := '000.000.000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 0;
    end
    else
    begin
      cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 1;
    end;
    btnGravar.SetFocus;
  end;

  if (cds_cli.State in [dsEdit]) then
  begin
    cds_cliCNPJ.Clear;
    if DBRadioGroup1.ItemIndex=0 then
    begin
      cds_cliCNPJ.EditMask := '000.000.000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 0;
    end
    else
    begin
      cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 1;
    end;
    btnGravar.SetFocus;
  end;

end;

procedure TfClienteCadastro.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not DtSrcE.DataSet.Active then
     DtSrcE.DataSet.open;
  DtSrcE.DataSet.Append;
  DBEdit10.SetFocus;
end;

procedure TfClienteCadastro.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     if proc_end.Active then
        proc_end.Close;
     proc_end.Params[0].AsInteger := cds_cliCODCLIENTE.AsInteger;
     proc_end.Open;
     if proc_endCOUNT.AsInteger = 1 then
     begin
       MessageDlg('Não é possivel excluir esse endereço, você pode alterá-lo.. ', mtWarning, [mbOK], 0);
       exit;
     end;
     DtSrcE.DataSet.Delete;
     (DtSrcE.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfClienteCadastro.PageControl1Change(Sender: TObject);
begin
  inherited;
  if ((PageControl1.ActivePage = TabSheet1) or (PageControl1.ActivePage = TabAdm)) then
     MMJPanel1.Align := alBottom
  else
     MMJPanel1.Align := alNone;
end;

procedure TfClienteCadastro.btnIncluir_repClick(Sender: TObject);
begin
  if (not dm.cds_repcli.Active) then
     dm.cds_repcli.Open;
  dm.cds_repcli.Append;
  DBEdit35.SetFocus;
end;

procedure TfClienteCadastro.btnGravar_repClick(Sender: TObject);
begin
    if dm.cds_repcli.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI_REP, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      dm.cds_repcliCOD_REPRCLI.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      dm.cds_repcliCOD_CLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
    end;
    dm.cds_repcli.ApplyUpdates(0);
end;

procedure TfClienteCadastro.btnexcluir_repClick(Sender: TObject);
begin
  inherited;
  if Excluir = 'N' then Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrcRepr.DataSet.Delete;
     (DtSrcRepr.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfClienteCadastro.btnCancelarClick(Sender: TObject);
begin
 if (PageControl1.ActivePage = TabSheet1) then
 begin
   if Cancelar = 'N' then Exit;
     inherited;
 end;
 if (PageControl1.ActivePage = TabRepresentante) then
   btncancelar_rep.Click;
end;

procedure TfClienteCadastro.DtSrcReprStateChange(Sender: TObject);
var icomp: integer;
begin
 if DtSrc.DataSet.State in [dsInactive] then
    Exit;
 if DtSrc.DataSet.State in [dsInsert, dsEdit] then
    btnGravar.Click;

 if Incluir = 'S' then
   btnIncluir_rep.Enabled:=DtSrcRepr.State in [dsBrowse,dsInactive]
 else
   btnIncluir_rep.Enabled:= False;

 if Alterar = 'S' then
   btnGravar_rep.Enabled:=DtSrcRepr.State in [dsInsert,dsEdit]
 else
   btnGravar_rep.Enabled:=False;

 if Cancelar = 'S' then
   btncancelar_rep.Enabled:=DtSrcRepr.State in [dsInsert,dsEdit]
 else
   btncancelar_rep.Enabled:=false;

 if Excluir = 'S' then
   btnexcluir_rep.Enabled:=DtSrcRepr.State in [dsBrowse]
 else
   btnexcluir_rep.Enabled:=false;

 btnsair_rep.Enabled:=DtSrcRepr.State in [dsBrowse,dsInactive];

 for icomp:=0 to ComponentCount - 1 do
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrcRepr.State in [dsInsert,dsEdit, dsBrowse];

  if DtSrcRepr.State in [dsInsert, dsEdit] then
  begin
    btnIncluir_rep.Visible := False;
    btnexcluir_rep.Visible := False;
    btnGravar_rep.Visible := True;
    btncancelar_rep.Visible := True;
  end;

  if DtSrcRepr.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir_rep.Visible := True;
    btnexcluir_rep.Visible := True;
    btnGravar_rep.Visible := False;
    btncancelar_rep.Visible := False;
  end;
end;

procedure TfClienteCadastro.btncancelar_repClick(Sender: TObject);
begin
 if Cancelar = 'N' then Exit;
    DtSrcRepr.DataSet.Cancel;

end;

procedure TfClienteCadastro.ComboBox1Change(Sender: TObject);
var faixa : integer;
begin
  inherited;

     
end;

procedure TfClienteCadastro.Ficha1Click(Sender: TObject);
begin
  inherited;
  if (cds_cli.State in [dsBrowse]) then
  begin
    VCLReport1.Filename := str_relatorio + 'fichacliente.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('COD').Value := cds_cliCODCLIENTE.AsInteger;
    VCLReport1.Execute;
  end;
end;

end.
