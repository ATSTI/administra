unit uEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, StdCtrls, DBCtrls, ExtCtrls, Mask, DB, DBClient,
  Provider, SqlExpr, Menus, XPMenu, Buttons, MMJPanel,jpeg, JvExExtCtrls,
  JvImage, ExtDlgs, JvExControls, JvLabel, DBLocal, DBLocalS, DBXpress,
  JvExStdCtrls, JvCombobox, JvExtComponent, JvCaptionPanel, ComCtrls,
  JvExComCtrls, JvComCtrls, JvHtControls;

type
  TfEmpresa = class(TfPai)
    DBNavigator1: TDBNavigator;
    OpenPictureDialog1: TOpenPictureDialog;
    JvLabel1: TJvLabel;
    procIBGE: TSQLClientDataSet;
    procIBGENM_MUNICIPIO: TStringField;
    procIBGECD_UF: TStringField;
    procIBGECD_IBGE: TStringField;
    procIBGENM_LOCALIDADE: TStringField;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    sdsEstado: TSQLDataSet;
    sdsEstadoCODIGO: TIntegerField;
    sdsEstadoSIGLA: TStringField;
    sdsEstadoNOME: TStringField;
    dspEstado: TDataSetProvider;
    cdsEstado: TClientDataSet;
    cdsEstadoCODIGO: TIntegerField;
    cdsEstadoSIGLA: TStringField;
    cdsEstadoNOME: TStringField;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvCaptionPanel1: TJvCaptionPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit18: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Image1: TJvImage;
    ComboBox1: TComboBox;
    DBEdit19: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    cbEstado: TJvComboBox;
    Label29: TLabel;
    cbTACBrIndicadorAtividade: TComboBox;
    Label30: TLabel;
    cbTACBrIndicadorNaturezaPJ: TComboBox;
    cbTACBrCodIndIncTributaria: TComboBox;
    Label31: TLabel;
    cbTACBrIndAproCred: TComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cbTACBrCodIndTipoCon: TComboBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    cbTACBrCodIndCritEscrit: TComboBox;
    cbTACBrIndCodIncidencia: TComboBox;
    cbTACBrIndCTA: TComboBox;
    cbTACBrIndEscrituracao: TComboBox;
    cbTACBrBaseCalculoCredito: TComboBox;
    Label40: TLabel;
    Label41: TLabel;
    cbTACBrIndAJ: TComboBox;
    cbTACBrCodAj: TComboBox;
    Label42: TLabel;
    cbTACBrApuracaoIPI: TComboBox;
    TabSheet3: TTabSheet;
    DBEdit25: TDBEdit;
    Label43: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit37: TDBEdit;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure cbEstadoChange(Sender: TObject);
    procedure cbTACBrCodAjChange(Sender: TObject);
    procedure cbTACBrIndicadorNaturezaPJChange(Sender: TObject);
    procedure cbTACBrIndicadorAtividadeChange(Sender: TObject);
    procedure cbTACBrCodIndIncTributariaChange(Sender: TObject);
    procedure cbTACBrIndAproCredChange(Sender: TObject);
    procedure cbTACBrCodIndTipoConChange(Sender: TObject);
    procedure cbTACBrCodIndCritEscritChange(Sender: TObject);
    procedure cbTACBrIndCodIncidenciaChange(Sender: TObject);
    procedure cbTACBrIndCTAChange(Sender: TObject);
    procedure cbTACBrIndEscrituracaoChange(Sender: TObject);
    procedure cbTACBrBaseCalculoCreditoChange(Sender: TObject);
    procedure cbTACBrIndAJChange(Sender: TObject);
  private
    TACBrCodAj, TACBrIndAJ, TACBrBaseCalculoCredito, TACBrIndEscrituracao,
    TACBrIndCTA, TACBrIndCodIncidencia, TACBrCodIndCritEscrit, TACBrCodIndTipoCon,
    TACBrIndAproCred, TACBrCodIndIncTributaria, TACBrIndicadorAtividade, TACBrIndicadorNaturezaPJ  : String;
    { Private declarations }
  public
    TD: TTransactionDesc;
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses UDm, uEmpresaProcura, sCtrlResize, uProcurar;

{$R *.dfm}

procedure TfEmpresa.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fEmpresaProcura := TfEmpresaProcura.Create(Application);
  try
   fEmpresaProcura.ShowModal;
  finally
   fEmpresaProcura.Free;
  end;
end;

procedure TfEmpresa.FormShow(Sender: TObject);
VAR S     : TStream;
    Imagem : TJPEGImage;
    var conta_local: String;
begin
//  inherited;
//  sCtrlResize.CtrlResize(TForm(fEmpresa));
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;

    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;

    // populo a combobox Centro de Custo
    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    DM.cds_ccusto.First;

    while not DM.cds_ccusto.Eof do
    begin
      ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;

    dm.cds_ccusto.Locate('CODIGO', dm.cds_empresaCCUSTO.AsInteger ,[loCaseInsensitive]);
       ComboBox1.Text := dm.cds_ccustoNOME.AsString;

  if (not DM.cds_empresaLOGOTIPO.IsNull) then
  begin
    S :=   DM.cds_empresa.CreateBlobStream(DM.cds_empresaLOGOTIPO,bmread);
    Imagem    := TJPEGImage.Create;
    Imagem.LoadFromStream(S);
    Image1.Picture.Assign(Imagem);
  end
  else begin
    Image1.Picture := nil ;
  end;
  if (not cdsEstado.Active) then
    cdsEstado.Open;
  if (cdsEstado.Locate('SIGLA', DM.cds_empresaUF.asString, [loCaseInsensitive])) then
     cbEstado.ItemIndex := cdsEstado.RecNo-1;

  cbTACBrIndicadorAtividade.ItemIndex   := dm.cds_empresaINDICADORATIVIDADE.AsInteger;
  cbTACBrIndicadorNaturezaPJ.ItemIndex  := dm.cds_empresaINDICADORNATUREZAPJ.AsInteger;

  cbTACBrCodIndIncTributaria.Text  := dm.cds_empresaCODINDINCTRIBUTARIA.AsString;
  cbTACBrIndAproCred.Text          := dm.cds_empresaINDAPROCRED.AsString;
  cbTACBrCodIndTipoCon.Text        := dm.cds_empresaCODINDTIPOCON.AsString; 
end;

procedure TfEmpresa.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfEmpresa.btnIncluirClick(Sender: TObject);
begin
  DBEdit2.SetFocus;
  inherited;

end;

procedure TfEmpresa.BitBtn2Click(Sender: TObject);
begin
  inherited;
     if DM.cds_empresa.State in [dsbrowse] then
      DM.cds_empresa.Edit;
     DM.cds_empresaLOGOTIPO.Clear;
     DM.cds_empresa.ApplyUpdates(0);
     Image1.Picture := nil;
end;

procedure TfEmpresa.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if OpenPictureDialog1.Execute
   then Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

  if (DM.cds_empresa.State = dsbrowse) then
  begin
     DM.cds_empresa.Edit;
  end;
  DM.cds_empresaLOGOTIPO.LoadFromFile(OpenPictureDialog1.FileName);
  DM.cds_empresa.ApplyUpdates(0);

  {
    if OpenDialog1.Execute then
    begin
     if DM.cds_empresa.State in [dsbrowse] then
      DM.cds_empresa.Edit;
      DM.cds_empresaLOGOTIPO.LoadFromFile(OpenDialog1.FileName);
    end;
 }
end;

procedure TfEmpresa.FormCreate(Sender: TObject);
begin
 // inherited;
  if cdsEstado.Active then
    cdsEstado.Close;
  cdsEstado.Open;
  cdsEstado.First;
  while not cdsEstado.Eof do
  begin
    cbEstado.Items.Add(cdsEstadoSIGLA.AsString);
    cdsEstado.Next;
  end;
end;

procedure TfEmpresa.btnGravarClick(Sender: TObject);
begin
  if (not dm.cds_ccusto.Active) then
    dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
  DM.cds_empresaCCusto.asInteger := dm.cds_ccustoCODIGO.AsInteger;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (dm.sqlsisAdimin.ExecuteDirect('update plano set CODEMPRESA = ' + IntToStr(dm.cds_empresaCODIGO.AsInteger) + ' where CODIGO = ' + IntToStr(DM.cds_empresaCCusto.asInteger)  ) = 0) then
    begin
      dm.sqlsisAdimin.Commit(TD);
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro ao gravar o centro de resultado)', mtWarning, [mbOK], 0);
    abort;
  end;
  inherited;
  case dm.cds_empresaCRT.AsInteger of
   0 : DM.regimeEmpresa := 'SIMPLES';
   1 : DM.regimeEmpresa := 'SIMPLES';
   2 : DM.regimeEmpresa := 'NORMAL';
  end;
end;

procedure TfEmpresa.BitBtn3Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_LOCALIDADE';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       DM.cds_empresa.Edit;
     DBEdit10.Text := procIBGENM_MUNICIPIO.AsString;
     if (not cdsEstado.Active) then
       cdsEstado.Open;
     if (cdsEstado.Locate('SIGLA', procIBGECD_UF.AsString, [loCaseInsensitive])) then
       cbEstado.ItemIndex := cdsEstado.RecNo-1;
     DBEdit20.Text := procIBGECD_IBGE.AsString;
   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;
end;

procedure TfEmpresa.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    DM.cds_empresa.Edit;
end;

procedure TfEmpresa.cbEstadoChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
    dm.cds_empresa.Edit;
  dm.cds_empresaUF.AsString := cbEstado.Text;
end;

procedure TfEmpresa.cbTACBrCodAjChange(Sender: TObject);
begin
  if (dm.cds_empresa.State in [dsBrowse]) then
    dm.cds_empresa.Edit;
  Case cbTACBrCodAj.ItemIndex of
    0: dm.cds_empresaCodAj.AsString := 'codAjAcaoJudicial';      // '01' // Ajuste Oriundo de Ação Judicial
    1: dm.cds_empresaCodAj.AsString := 'codAjProAdministrativo'; // '02' // Ajuste Oriundo de Processo Administrativo
    2: dm.cds_empresaCodAj.AsString := 'codAjLegTributaria';     // '03' // Ajuste Oriundo da Legislação Tributária
    3: dm.cds_empresaCodAj.AsString := 'codAjEspRTI';            // '04' // Ajuste Oriundo Especificamente do RTT
    4: dm.cds_empresaCodAj.AsString := 'codAjOutrasSituacaoes';  // '05' // Ajuste Oriundo de Outras Situações
    5: dm.cds_empresaCodAj.AsString := 'codAjEstorno';           // '06' // Estorno
  end;  
end;

procedure TfEmpresa.cbTACBrIndicadorNaturezaPJChange(Sender: TObject);
begin
  if (dm.cds_empresa.State in [dsBrowse]) then
    dm.cds_empresa.Edit;

  dm.cds_empresaINDICADORNATUREZAPJ.AsInteger := cbTACBrIndicadorNaturezaPJ.ItemIndex;
end;

procedure TfEmpresa.cbTACBrIndicadorAtividadeChange(Sender: TObject);
begin
  if (dm.cds_empresa.State in [dsBrowse]) then
    dm.cds_empresa.Edit;
  dm.cds_empresaIndicadorAtividade.AsInteger := cbTACBrIndicadorAtividade.ItemIndex;
end;

procedure TfEmpresa.cbTACBrCodIndIncTributariaChange(Sender: TObject);
begin
  if (dm.cds_empresa.State in [dsBrowse]) then
    dm.cds_empresa.Edit;
  dm.cds_empresaCODINDINCTRIBUTARIA.AsInteger := cbTACBrCodIndIncTributaria.ItemIndex;
end;

procedure TfEmpresa.cbTACBrIndAproCredChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
  dm.cds_empresa.Edit;
  dm.cds_empresaINDAPROCRED.AsInteger :=  cbTACBrIndAproCred.ItemIndex;
end;

procedure TfEmpresa.cbTACBrCodIndTipoConChange(Sender: TObject);
begin
  inherited;
   if (dm.cds_empresa.State in [dsBrowse]) then
   dm.cds_empresa.Edit;
   dm.cds_empresaCODINDTIPOCON.AsInteger := cbTACBrCodIndTipoCon.ItemIndex;
end;

procedure TfEmpresa.cbTACBrCodIndCritEscritChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
  dm.cds_empresa.Edit;
  dm.cds_empresaCODINDCRITESCRIT.AsInteger := cbTACBrCodIndCritEscrit.ItemIndex;
end;

procedure TfEmpresa.cbTACBrIndCodIncidenciaChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
  dm.cds_empresa.Edit;
  dm.cds_empresaINDCODINCIDENCIA.AsInteger := cbTACBrIndCodIncidencia.ItemIndex;
end;

procedure TfEmpresa.cbTACBrIndCTAChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
  dm.cds_empresa.Edit;
  dm.cds_empresaINDCTA.AsInteger := cbTACBrIndCTA.ItemIndex;
end;

procedure TfEmpresa.cbTACBrIndEscrituracaoChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
  dm.cds_empresa.Edit;
  dm.cds_empresaINDESCRITURACAO.AsInteger := cbTACBrIndEscrituracao.ItemIndex;
end;

procedure TfEmpresa.cbTACBrBaseCalculoCreditoChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
  dm.cds_empresa.Edit;
  dm.cds_empresaBASECALCULOCREDITO.AsInteger :=  cbTACBrBaseCalculoCredito.ItemIndex;
end;

procedure TfEmpresa.cbTACBrIndAJChange(Sender: TObject);
begin
  inherited;
  if (dm.cds_empresa.State in [dsBrowse]) then
  dm.cds_empresa.Edit;
  dm.cds_empresaINDAJ.AsInteger := cbTACBrIndAJ.ItemIndex;
end;

end.
