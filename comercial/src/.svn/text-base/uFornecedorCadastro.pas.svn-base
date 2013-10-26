unit uFornecedorCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, Mask, rpcompobase,
  rpvclreport, DBLocal, DBLocalS, JvExStdCtrls, JvCombobox;

type
  TfFornecedorCadastro = class(TfPai)
    sds_fornecedor: TSQLDataSet;
    sds_fornecedorCODFORNECEDOR: TIntegerField;
    sds_fornecedorNOMEFORNECEDOR: TStringField;
    sds_fornecedorRAZAOSOCIAL: TStringField;
    sds_fornecedorCONTATO: TStringField;
    sds_fornecedorTIPOFIRMA: TSmallintField;
    sds_fornecedorCPF: TStringField;
    sds_fornecedorCNPJ: TStringField;
    sds_fornecedorINSCESTADUAL: TStringField;
    sds_fornecedorRG: TStringField;
    sds_fornecedorSEGMENTO: TSmallintField;
    sds_fornecedorREGIAO: TSmallintField;
    sds_fornecedorLIMITECREDITO: TFloatField;
    sds_fornecedorDATACADASTRO: TDateField;
    sds_fornecedorCODUSUARIO: TIntegerField;
    sds_fornecedorSTATUS: TSmallintField;
    sds_fornecedorHOMEPAGE: TStringField;
    sds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    sds_fornecedorPRAZOENTREGA: TSmallintField;
    dsp_fornecedor: TDataSetProvider;
    cds_fornecedor: TClientDataSet;
    cds_fornecedorCODFORNECEDOR: TIntegerField;
    cds_fornecedorNOMEFORNECEDOR: TStringField;
    cds_fornecedorRAZAOSOCIAL: TStringField;
    cds_fornecedorCONTATO: TStringField;
    cds_fornecedorTIPOFIRMA: TSmallintField;
    cds_fornecedorCPF: TStringField;
    cds_fornecedorCNPJ: TStringField;
    cds_fornecedorINSCESTADUAL: TStringField;
    cds_fornecedorRG: TStringField;
    cds_fornecedorSEGMENTO: TSmallintField;
    cds_fornecedorREGIAO: TSmallintField;
    cds_fornecedorLIMITECREDITO: TFloatField;
    cds_fornecedorDATACADASTRO: TDateField;
    cds_fornecedorCODUSUARIO: TIntegerField;
    cds_fornecedorSTATUS: TSmallintField;
    cds_fornecedorHOMEPAGE: TStringField;
    cds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    cds_fornecedorPRAZOENTREGA: TSmallintField;
    DBText2: TDBText;
    sds_fornecedorCONTA_FORNECEDOR: TStringField;
    cds_fornecedorCONTA_FORNECEDOR: TStringField;
    Ficha1: TMenuItem;
    VCLReport1: TVCLReport;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    dbeCNPJ: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    dtsrce: TDataSource;
    cds_endfor: TClientDataSet;
    cds_endforCODENDERECO: TIntegerField;
    cds_endforCODFORNECEDOR: TIntegerField;
    cds_endforLOGRADOURO: TStringField;
    cds_endforBAIRRO: TStringField;
    cds_endforCOMPLEMENTO: TStringField;
    cds_endforCIDADE: TStringField;
    cds_endforUF: TStringField;
    cds_endforCEP: TStringField;
    cds_endforDDD: TSmallintField;
    cds_endforTELEFONE: TStringField;
    cds_endforTELEFONE1: TStringField;
    cds_endforTELEFONE2: TStringField;
    cds_endforFAX: TStringField;
    cds_endforE_MAIL: TStringField;
    cds_endforRAMAL: TStringField;
    cds_endforTIPOEND: TSmallintField;
    cds_endforDADOSADICIONAIS: TStringField;
    dsp_endfor: TDataSetProvider;
    sds_endfor: TSQLDataSet;
    sds_endforCODENDERECO: TIntegerField;
    sds_endforCODFORNECEDOR: TIntegerField;
    sds_endforLOGRADOURO: TStringField;
    sds_endforBAIRRO: TStringField;
    sds_endforCOMPLEMENTO: TStringField;
    sds_endforCIDADE: TStringField;
    sds_endforUF: TStringField;
    sds_endforCEP: TStringField;
    sds_endforDDD: TSmallintField;
    sds_endforTELEFONE: TStringField;
    sds_endforTELEFONE1: TStringField;
    sds_endforTELEFONE2: TStringField;
    sds_endforFAX: TStringField;
    sds_endforE_MAIL: TStringField;
    sds_endforRAMAL: TStringField;
    sds_endforTIPOEND: TSmallintField;
    sds_endforDADOSADICIONAIS: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBComboBox1: TDBComboBox;
    ComboBox1: TComboBox;
    BitBtn3: TBitBtn;
    Label27: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODDADOS: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1USO: TStringField;
    SQLDataSet1CODIGOS: TStringField;
    SQLDataSet1OUTROS: TStringField;
    DataSetProvider1: TDataSetProvider;
    cdsRegiao: TClientDataSet;
    cdsRegiaoCODDADOS: TIntegerField;
    cdsRegiaoDESCRICAO: TStringField;
    cdsRegiaoUSO: TStringField;
    cdsRegiaoCODIGOS: TStringField;
    cdsRegiaoOUTROS: TStringField;
    DtSrcReg: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    SpeedButton6: TBitBtn;
    SpeedButton2: TBitBtn;
    SpeedButton1: TBitBtn;
    DBEdit9: TDBEdit;
    Label28: TLabel;
    sds_endforCD_IBGE: TStringField;
    sds_endforNUMERO: TStringField;
    cds_endforCD_IBGE: TStringField;
    cds_endforNUMERO: TStringField;
    Label29: TLabel;
    procIBGE: TSQLClientDataSet;
    procIBGENM_LOCALIDADE2: TStringField;
    procIBGECD_UF: TStringField;
    procIBGENM_MUNICIPIO: TStringField;
    procIBGECD_IBGE: TStringField;
    BitBtn22: TBitBtn;
    DBEdit23: TDBEdit;
    sqlPais: TClientDataSet;
    sqlPaisCODPAIS: TStringField;
    sqlPaisPAIS: TStringField;
    dspPais: TDataSetProvider;
    sdsPais: TSQLDataSet;
    sdsPaisCODPAIS: TStringField;
    sdsPaisPAIS: TStringField;
    cbPais: TJvComboBox;
    Label79: TLabel;
    sds_endforPAIS: TStringField;
    cds_endforPAIS: TStringField;
    DBEdit24: TDBEdit;
    BitBtn2: TBitBtn;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    chkAssistencia: TCheckBox;
    sds_fornecedorCODFOR: TStringField;
    sds_fornecedorCODTRANSP: TIntegerField;
    sds_fornecedorCONTACONTABIL: TStringField;
    cds_fornecedorCODFOR: TStringField;
    cds_fornecedorCODTRANSP: TIntegerField;
    cds_fornecedorCONTACONTABIL: TStringField;
    DtSrcTFiscal: TDataSource;
    cdsTFiscal: TClientDataSet;
    cdsTFiscalCODFISCAL: TStringField;
    cdsTFiscalDESCRICAO: TStringField;
    dspTFiscal: TDataSetProvider;
    sdsTFiscal: TSQLDataSet;
    sdsTFiscalCODFISCAL: TStringField;
    sdsTFiscalDESCRICAO: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    Label31: TLabel;
    sds_fornecedorCODFISCAL: TStringField;
    cds_fornecedorCODFISCAL: TStringField;
    Label32: TLabel;
    DBEdit26: TDBEdit;
    sds_fornecedorCAMPOADICIONAL: TStringField;
    sds_fornecedorCAMPOADICIONAL1: TStringField;
    sds_fornecedorCFOP: TStringField;
    cds_fornecedorCAMPOADICIONAL: TStringField;
    cds_fornecedorCAMPOADICIONAL1: TStringField;
    cds_fornecedorCFOP: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure Ficha1Click(Sender: TObject);
    procedure dtsrceStateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure cbPaisChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFornecedorCadastro: TfFornecedorCadastro;
  vartipo: integer;

implementation

uses UDm, uComercial, uProcurar, uFornecedorEndereco,
  uFornecedorRepresentante, uProdFornecedor, uRegiaoCadastro, sCtrlResize;

{$R *.dfm}

procedure TfFornecedorCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;

  if cds_endfor.Active then
     cds_endfor.Close;
  cds_endfor.Params[0].Clear;

  ComboBox1.Text := '';
  if (vartipo = 0) then
  begin
    cds_fornecedorCNPJ.EditMask := '000.000.000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 0;
  end
  else
  begin
    cds_fornecedorCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 1;
  end;

  if not cds_endfor.Active then
     cds_endfor.open;
  cds_endfor.Append;
  cds_endforUF.AsString := 'SP';
  cds_endforFAX.EditMask := '0000\-0099;1;_';

  cds_FoRNECEDORSEGMENTO.Value:=1;
  cds_FoRNECEDORREGIAO.Value:=1;
  cds_FoRNECEDORCODUSUARIO.Value:=1;
  cds_FoRNECEDORSTATUS.Value:=1;
  cds_FoRNECEDORDATACADASTRO.Value:=Date;

  dbEdit2.SetFocus;
  cbPais.ItemIndex := 29;
  cds_endforPAIS.AsString := cbPais.Text;
end;

procedure TfFornecedorCadastro.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_fornecedorCODFORNECEDOR.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    if (cds_fornecedorTIPOFIRMA.AsInteger <> 0) or (cds_fornecedorTIPOFIRMA.AsInteger <> 1)  then
    begin
       cds_fornecedorTIPOFIRMA.AsInteger := DBRadioGroup1.ItemIndex;
       vartipo := DBRadioGroup1.ItemIndex;
    end;
  end;
  if (dtsrce.State in [dsInsert]) then
  begin
    // Endereço
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR_END, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_endforCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    cds_endforCODFORNECEDOR.AsInteger :=  cds_fornecedorCODFORNECEDOR.AsInteger;
    cds_endforTIPOEND.AsInteger := 0;
  end;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if (ComboBox1.Text <> '') then
    begin
      dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
      cds_fornecedorCONTA_FORNECEDOR.AsString := dm.cds_ccustoCONTA.AsString;
    end;
    if ((CheckBox1.Checked) and (CheckBox2.Checked)) then
      cds_fornecedorSEGMENTO.AsInteger := 1
    else
    if ((CheckBox1.Checked) and (CheckBox2.Checked = False)) then
      cds_fornecedorSEGMENTO.AsInteger := 2
    else
      cds_fornecedorSEGMENTO.AsInteger := 3;
  end;
  try
    DtSrce.DataSet.Post;
    (DtSrce.DataSet as TClientDataset).ApplyUpdates(0);
  except
    MessageDlg('Erro ao gravar o Endereço !', mterror,[mbOk],0);
  end;
  if (chkAssistencia.Checked) then
     cds_fornecedorSEGMENTO.AsInteger := 4;
  inherited;
end;

procedure TfFornecedorCadastro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if cds_fornecedor.State in [dsInsert, dsEdit] then
   cds_fornecedor.ApplyUpdates(0);
   fFornecedorEndereco:=TfFornecedorEndereco.Create(Application);
   try
     fFornecedorEndereco.ShowModal;
   finally
     fFornecedorEndereco.Free;
   end;
end;

procedure TfFornecedorCadastro.FormShow(Sender: TObject);
begin
  //inherited;
  //sCtrlResize.CtrlResize(TForm(fFornecedorCadastro));
  vartipo := 1;

  if (not cdsRegiao.Active) then
    cdsRegiao.Open;

  if (not cdsTFiscal.Active) then
    cdsTFiscal.Open;

  if varForm1 <> 'compra' then
    btnIncluir.SetFocus;

  if dm.varFormemUso = 'nfcompra' then
    btnIncluir.Click;

  if (cds_endfor.Active) then
     cds_endfor.Close;
  cds_endfor.Params[0].AsInteger := cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_endfor.Open;
end;

procedure TfFornecedorCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  if (dtsrc.State in [dsEdit]) then
    if (dtsrce.State in [dsBrowse, dsInactive]) then
      dtsrce.DataSet.Edit;
  inherited;

end;

procedure TfFornecedorCadastro.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
    fProcurar.btnImprimir.Visible := true;
    fProcurar.RadioGroup1.Visible := true;
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;    
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.RadioGroup2.Visible := True;
    fProcurar.ShowModal;
    if cds_fornecedor.Active then
     cds_fornecedor.Close;
    cds_fornecedor.Params[0].AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_fornecedor.Open;
    if cds_fornecedorTIPOFIRMA.AsInteger = 0 then
     cds_FORNECEDORCNPJ.EditMask := '000.000.000-00;1;_'
    else
     cds_FORNECEDORCNPJ.EditMask := '00.000.000/0000-00;1;_';
    if (not cds_fornecedorCONTA_FORNECEDOR.IsNull) then
    begin
     if (dm.cds_ccusto.Locate('CONTA', cds_fornecedorCONTA_FORNECEDOR.AsString, [loCaseInsensitive])) then
        ComboBox1.Text := dm.cds_ccustoNOME.AsString
     else
        ComboBox1.Text := '';
    end;
    if (cds_fornecedorSEGMENTO.AsInteger = 1) then
    begin
      CheckBox1.Checked := True;
      CheckBox2.Checked := True;
    end
    else if (cds_fornecedorSEGMENTO.AsInteger = 2) then
    begin
      CheckBox1.Checked := True;
      CheckBox2.Checked := False;
    end
    else if (cds_fornecedorSEGMENTO.AsInteger = 3) then
    begin
      CheckBox2.Checked := True;
      CheckBox1.Checked := False;
    end;

    //Endereço
  if (cds_endfor.Active) then
     cds_endfor.Close;
  cds_endfor.Params[0].AsInteger := cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_endfor.Open;
  if (cds_endfor.IsEmpty) then
    dtsrce.DataSet.Append;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
  if (not sqlPais.Active) then
    sqlPais.Open;
  if (sqlPais.Locate('PAIS', cds_endforPAIS.asString, [loCaseInsensitive])) then
     cbPais.ItemIndex := sqlPais.RecNo-1;
end;

procedure TfFornecedorCadastro.BitBtn3Click(Sender: TObject);
begin
  inherited;
   if cds_fornecedor.State in [dsInsert, dsEdit] then
     cds_fornecedor.ApplyUpdates(0);
   fFornecedorRepresentante := TfFornecedorRepresentante.Create(Application);
   try
    fFornecedorRepresentante.ShowModal;
   finally
    fFornecedorRepresentante.Free;
   end;
end;

procedure TfFornecedorCadastro.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DtSrc.State=dsInsert then
  cds_fornecedorRAZAOSOCIAL.AsString := cds_fornecedorNOMEFORNECEDOR.AsString;
end;

procedure TfFornecedorCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.varNomeCliente := cds_fornecedorRAZAOSOCIAL.AsString;
  if (dm.scds_forn_proc.Active) then
    dm.scds_forn_proc.Close;
  dm.scds_forn_proc.Params[0].clear;
  dm.scds_forn_proc.Params[1].clear;
  dm.scds_forn_proc.Params[2].asInteger := cds_fornecedorCODFORNECEDOR.AsInteger;
  dm.scds_forn_proc.Open;
 if (cdsRegiao.Active) then
    cdsRegiao.Close;
 inherited;
 //Action := caFree;
 //fFornecedorCadastro := nil;
 if (cdsTFiscal.Active) then
    cdsTFiscal.Close;
  
end;

procedure TfFornecedorCadastro.FormCreate(Sender: TObject);
begin
  //inherited;
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  MMJPanel1.Background.EndColor   := dm.corStart;
  MMJPanel1.Background.StartColor := dm.corEnd;
  MMJPanel2.Background.EndColor   := dm.corEnd;
  MMJPanel2.Background.StartColor := dm.corStart;

  DBRadioGroup3.Color := dm.corEnd;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if (dm.cds_ccusto.Active) then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  dm.cds_ccusto.First;
  while not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;

  if sqlPais.Active then
    sqlPais.Close;
  sqlPais.Open;
  sqlPais.First;
  while not sqlPais.Eof do
  begin
    cbPais.Items.Add(sqlPaisPAIS.AsString);
    sqlPais.Next;
  end;

end;

procedure TfFornecedorCadastro.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse, dsInactive]) then
    DtSrc.Edit;
end;

procedure TfFornecedorCadastro.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  if (dbRadioGroup1.ItemIndex = 0) then
  begin
    cds_FORNECEDORCNPJ.EditMask := '000.000.000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 0;
  end
  else begin
    cds_FORNECEDORCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 1;
  end;
end;

procedure TfFornecedorCadastro.Ficha1Click(Sender: TObject);
begin
  inherited;
  if (cds_fornecedor.State in [dsBrowse]) then
  begin
    VCLReport1.Filename := str_relatorio + 'fichafornecedor.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('COD').Value := cds_fornecedorCODFORNECEDOR.AsInteger;
    VCLReport1.Execute;
  end;
end;

procedure TfFornecedorCadastro.dtsrceStateChange(Sender: TObject);
begin
  inherited;
  if (dtsrce.State in [dsEdit, dsInsert]) then
   if (dtsrc.State in [dsBrowse, dsInactive]) then
     dtsrc.DataSet.Edit;
end;

procedure TfFornecedorCadastro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  fProdFornecedor := TfProdFornecedor.Create(Application);
  try
    fProdFornecedor.codFornecedor := cds_fornecedorCODFORNECEDOR.AsInteger;
    fProdFornecedor.listatipooper := 0 ;
    fProdFornecedor.ShowModal;
  finally
    fProdFornecedor.free;
  end;
end;

procedure TfFornecedorCadastro.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  fRegiaoCadastro := TfRegiaoCadastro.Create(Application);
  try
    fRegiaoCadastro.tipoRegiao := 'regiaoFor';
    fRegiaoCadastro.ShowModal;
  finally
    fRegiaoCadastro.Free;
  end;
  if (cdsRegiao.Active) then
      cdsRegiao.Close;
  cdsRegiao.Open;
end;

procedure TfFornecedorCadastro.BitBtn22Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_LOCALIDADE';
   if fProcurar.ShowModal=mrOk then
   begin
     if(dtsrce.State in [dsbrowse,dsinactive]) then
       cds_endfor.Edit;
     DBEdit13.Text := procIBGENM_MUNICIPIO.AsString;
     DBComboBox1.Text := procIBGECD_UF.AsString;
     DBEdit23.Text := procIBGECD_IBGE.AsString;
   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;
end;

procedure TfFornecedorCadastro.cbPaisChange(Sender: TObject);
begin
  inherited;
  if (cds_fornecedor.State in [dsBrowse]) then
    cds_fornecedor.Edit;
  if(cds_endfor.State in [dsBrowse]) then
    cds_endfor.Edit;
  cds_endforPAIS.AsString := cbPais.Text;
end;

end.
