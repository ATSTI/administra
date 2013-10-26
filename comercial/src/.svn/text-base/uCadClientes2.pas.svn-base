unit uCadClientes2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, Menus, XPMenu,
  Buttons, MMJPanel, FMTBcd, JvExMask, JvToolEdit, JvBaseEdits, DBLocals,
  JvDBControls, DBClient, Provider, SqlExpr;

type
  TfCadClientes2 = class(TfPai)
    grp1: TGroupBox;
    lblCnpj: TLabel;
    lblIE: TLabel;
    dbedtCNPJ: TDBEdit;
    dbedtINSCESTADUAL: TDBEdit;
    grp2: TGroupBox;
    lbl2: TLabel;
    dbedtDATANASC: TDBEdit;
    sds_cli: TSQLDataSet;
    dsp_cli: TDataSetProvider;
    cds_cli: TClientDataSet;
    lbl1: TLabel;
    dsDtsrc_e: TDataSource;
    cds_CliEnd: TClientDataSet;
    cds_CliEndLOGRADOURO: TStringField;
    cds_CliEndNUMERO: TStringField;
    cds_CliEndBAIRRO: TStringField;
    cds_CliEndCIDADE: TStringField;
    cds_CliEndUF: TStringField;
    cds_CliEndCODENDERECO: TIntegerField;
    cds_CliEndCODCLIENTE: TIntegerField;
    cds_CliEndCOMPLEMENTO: TStringField;
    cds_CliEndCEP: TStringField;
    cds_CliEndTELEFONE: TStringField;
    cds_CliEndTELEFONE1: TStringField;
    cds_CliEndTELEFONE2: TStringField;
    cds_CliEndFAX: TStringField;
    cds_CliEndE_MAIL: TStringField;
    cds_CliEndRAMAL: TStringField;
    cds_CliEndTIPOEND: TSmallintField;
    cds_CliEndDADOSADICIONAIS: TStringField;
    cds_CliEndDDD: TStringField;
    cds_CliEndDDD1: TStringField;
    cds_CliEndDDD2: TStringField;
    cds_CliEndDDD3: TStringField;
    cds_CliEndCD_IBGE: TStringField;
    cds_CliEndPAIS: TStringField;
    dsp_CliEnd: TDataSetProvider;
    sds_CliEnd: TSQLDataSet;
    sds_CliEndLOGRADOURO: TStringField;
    sds_CliEndNUMERO: TStringField;
    sds_CliEndBAIRRO: TStringField;
    sds_CliEndCIDADE: TStringField;
    sds_CliEndUF: TStringField;
    sds_CliEndCODENDERECO: TIntegerField;
    sds_CliEndCODCLIENTE: TIntegerField;
    sds_CliEndCOMPLEMENTO: TStringField;
    sds_CliEndCEP: TStringField;
    sds_CliEndTELEFONE: TStringField;
    sds_CliEndTELEFONE1: TStringField;
    sds_CliEndTELEFONE2: TStringField;
    sds_CliEndFAX: TStringField;
    sds_CliEndE_MAIL: TStringField;
    sds_CliEndRAMAL: TStringField;
    sds_CliEndTIPOEND: TSmallintField;
    sds_CliEndDADOSADICIONAIS: TStringField;
    sds_CliEndDDD: TStringField;
    sds_CliEndDDD1: TStringField;
    sds_CliEndDDD2: TStringField;
    sds_CliEndDDD3: TStringField;
    sds_CliEndCD_IBGE: TStringField;
    sds_CliEndPAIS: TStringField;
    grp3: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    btn1: TBitBtn;
    dbedtLOGRADOURO: TDBEdit;
    dbedtNUMERO: TDBEdit;
    dbedtBAIRRO: TDBEdit;
    dbedtCOMPLEMENTO: TDBEdit;
    dbedtCIDADE: TDBEdit;
    dbedtUF: TDBEdit;
    dbedtCEP: TDBEdit;
    dbedtCD_IBGE: TDBEdit;
    dbedtDDD: TDBEdit;
    dbedtTELEFONE: TDBEdit;
    dbedtE_MAIL: TDBEdit;
    dbedtDDD1: TDBEdit;
    dbedtTELEFONE1: TDBEdit;
    dbedtDDD2: TDBEdit;
    dbedtTELEFONE2: TDBEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
    JvDBCalcEdit3: TJvDBCalcEdit;
    lbl15: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    lbl16: TLabel;
    chk3: TCheckBox;
    grpNome: TGroupBox;
    lblNome: TLabel;
    lblRazao: TLabel;
    dbedtRAZAOSOCIAL: TDBEdit;
    dbedtNOMECLIENTE: TDBEdit;
    dbedtCOD_CLI: TDBEdit;
    rgTipo: TRadioGroup;
    rgSitCad: TRadioGroup;
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
    sds_cliTEM_IE: TStringField;
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
    sds_cliIP: TStringField;
    sds_cliN_CONTRATO: TStringField;
    sds_cliMAC: TStringField;
    sds_cliMARCA: TStringField;
    sds_cliBANDA_UPLOAD: TStringField;
    sds_cliBANDA_DOWLOAD: TStringField;
    sds_cliTORRE_CONECCAO: TStringField;
    sds_cliCOD_FAIXA: TIntegerField;
    sds_cliDESCONTO: TFloatField;
    sds_cliMENSALIDADE: TFloatField;
    sds_cliANUIDADE: TFloatField;
    sds_cliPARCELA: TIntegerField;
    sds_cliPARCELAGERADAS: TIntegerField;
    sds_cliNUMERO: TIntegerField;
    sds_cliDATANASCIMENTO: TSQLTimeStampField;
    sds_cliANOLETIVO: TStringField;
    sds_cliSITUACAOESCOLAR: TStringField;
    sds_cliRGMAE: TStringField;
    sds_cliCPFMAE: TStringField;
    sds_cliPAI: TStringField;
    sds_cliRGPAI: TStringField;
    sds_cliCPFPAI: TStringField;
    sds_cliLANCADOCLASSE: TIntegerField;
    sds_cliTRANSPORTE: TStringField;
    sds_cliCIDADENASC: TStringField;
    sds_cliUFNASC: TStringField;
    sds_cliNACIONALIDADE: TStringField;
    sds_cliCERTIDAONASCNUM: TStringField;
    sds_cliLIVRONASC: TStringField;
    sds_cliFLLIVRONASC: TStringField;
    sds_cliLOCALTRABPAI: TStringField;
    sds_cliLOCALTRABMAE: TStringField;
    sds_cliTELTRABPAI: TStringField;
    sds_cliTELTRABMAE: TStringField;
    sds_cliINFONECESSARIAS: TStringField;
    sds_cliCARTEIRAVACINACAO: TStringField;
    sds_cliRAPRODESP: TStringField;
    sds_cliLOCALTRABALUNO: TStringField;
    sds_cliTELTRABALUNO: TStringField;
    sds_cliRAPROD: TStringField;
    sds_cliCERT_NAS_COMARCA: TStringField;
    sds_cliCERT_NAS_UF: TStringField;
    sds_cliCERT_NAS_MUNICIPIO: TStringField;
    sds_cliCERT_NAS_DISTRITO: TStringField;
    sds_cliCERT_NAS_SUBDISTRITO: TStringField;
    sds_cliDIVERSO1: TStringField;
    sds_cliDIVERSO2: TStringField;
    sds_cliDATAEMISSAORG: TDateField;
    sds_cliESTADORG: TStringField;
    sds_cliCOMUNICAALUNO: TStringField;
    sds_cliFONEMAE: TStringField;
    sds_cliCELULARMAE: TStringField;
    sds_cliCOMUNICAMAE: TStringField;
    sds_cliFONEPAI: TStringField;
    sds_cliCELULARPAI: TStringField;
    sds_cliCOMUNICAPAI: TStringField;
    sds_cliVALOR_MATRICULA: TFloatField;
    sds_cliDATATRANSF: TDateField;
    sds_cliCOR_RACA: TStringField;
    sds_cliPERIODO: TStringField;
    sds_cliFOTO: TStringField;
    sds_cliDATA_MATRICULA: TSQLTimeStampField;
    sds_cliCODRESPONSAVEL: TIntegerField;
    sds_cliID_COB: TIntegerField;
    sds_cliCOD_TRANPORTADORA: TIntegerField;
    sds_cliBLOQUEADO: TStringField;
    sds_cliBLOQUEIO: TStringField;
    sds_cliCFOP: TStringField;
    sds_cliCOD_CLI: TStringField;
    sds_cliCORTESIA: TStringField;
    sds_cliVALOR_CONSUMO: TFloatField;
    sds_cliVALOR_CORTESIA: TFloatField;
    sds_cliE_FORNECEDOR: TStringField;
    sds_cliCODFORNECEDOR: TIntegerField;
    sds_cliBANCO: TStringField;
    sds_cliNOMEUSUARIO: TStringField;
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
    cds_cliTEM_IE: TStringField;
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
    cds_cliIP: TStringField;
    cds_cliN_CONTRATO: TStringField;
    cds_cliMAC: TStringField;
    cds_cliMARCA: TStringField;
    cds_cliBANDA_UPLOAD: TStringField;
    cds_cliBANDA_DOWLOAD: TStringField;
    cds_cliTORRE_CONECCAO: TStringField;
    cds_cliCOD_FAIXA: TIntegerField;
    cds_cliDESCONTO: TFloatField;
    cds_cliMENSALIDADE: TFloatField;
    cds_cliANUIDADE: TFloatField;
    cds_cliPARCELA: TIntegerField;
    cds_cliPARCELAGERADAS: TIntegerField;
    cds_cliNUMERO: TIntegerField;
    cds_cliDATANASCIMENTO: TSQLTimeStampField;
    cds_cliANOLETIVO: TStringField;
    cds_cliSITUACAOESCOLAR: TStringField;
    cds_cliRGMAE: TStringField;
    cds_cliCPFMAE: TStringField;
    cds_cliPAI: TStringField;
    cds_cliRGPAI: TStringField;
    cds_cliCPFPAI: TStringField;
    cds_cliLANCADOCLASSE: TIntegerField;
    cds_cliTRANSPORTE: TStringField;
    cds_cliCIDADENASC: TStringField;
    cds_cliUFNASC: TStringField;
    cds_cliNACIONALIDADE: TStringField;
    cds_cliCERTIDAONASCNUM: TStringField;
    cds_cliLIVRONASC: TStringField;
    cds_cliFLLIVRONASC: TStringField;
    cds_cliLOCALTRABPAI: TStringField;
    cds_cliLOCALTRABMAE: TStringField;
    cds_cliTELTRABPAI: TStringField;
    cds_cliTELTRABMAE: TStringField;
    cds_cliINFONECESSARIAS: TStringField;
    cds_cliCARTEIRAVACINACAO: TStringField;
    cds_cliRAPRODESP: TStringField;
    cds_cliLOCALTRABALUNO: TStringField;
    cds_cliTELTRABALUNO: TStringField;
    cds_cliRAPROD: TStringField;
    cds_cliCERT_NAS_COMARCA: TStringField;
    cds_cliCERT_NAS_UF: TStringField;
    cds_cliCERT_NAS_MUNICIPIO: TStringField;
    cds_cliCERT_NAS_DISTRITO: TStringField;
    cds_cliCERT_NAS_SUBDISTRITO: TStringField;
    cds_cliDIVERSO1: TStringField;
    cds_cliDIVERSO2: TStringField;
    cds_cliDATAEMISSAORG: TDateField;
    cds_cliESTADORG: TStringField;
    cds_cliCOMUNICAALUNO: TStringField;
    cds_cliFONEMAE: TStringField;
    cds_cliCELULARMAE: TStringField;
    cds_cliCOMUNICAMAE: TStringField;
    cds_cliFONEPAI: TStringField;
    cds_cliCELULARPAI: TStringField;
    cds_cliCOMUNICAPAI: TStringField;
    cds_cliVALOR_MATRICULA: TFloatField;
    cds_cliDATATRANSF: TDateField;
    cds_cliCOR_RACA: TStringField;
    cds_cliPERIODO: TStringField;
    cds_cliFOTO: TStringField;
    cds_cliDATA_MATRICULA: TSQLTimeStampField;
    cds_cliCODRESPONSAVEL: TIntegerField;
    cds_cliID_COB: TIntegerField;
    cds_cliCOD_TRANPORTADORA: TIntegerField;
    cds_cliBLOQUEADO: TStringField;
    cds_cliBLOQUEIO: TStringField;
    cds_cliCFOP: TStringField;
    cds_cliCOD_CLI: TStringField;
    cds_cliCORTESIA: TStringField;
    cds_cliVALOR_CONSUMO: TFloatField;
    cds_cliVALOR_CORTESIA: TFloatField;
    cds_cliE_FORNECEDOR: TStringField;
    cds_cliCODFORNECEDOR: TIntegerField;
    cds_cliBANCO: TStringField;
    cds_cliNOMEUSUARIO: TStringField;
    btn2: TBitBtn;
    dbedtCARGOFUNCAO: TDBEdit;
    sds_cliCARGOFUNCAO: TIntegerField;
    cds_cliCARGOFUNCAO: TIntegerField;
    sds_cliDESCRICAO: TStringField;
    cds_cliDESCRICAO: TStringField;
    lbl19: TLabel;
    lbl18: TLabel;
    dbedtDATANASC1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dsDtsrc_eStateChange(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgSitCadClick(Sender: TObject);
    procedure chk3Click(Sender: TObject);
  private
    procedure INSERE_FORNECEDOR;
    procedure UPDATE_FORNECEDOR;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadClientes2: TfCadClientes2;

implementation

uses UDm, uProcurar, uCargosFuncoes;

{$R *.dfm}

procedure TfCadClientes2.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfCadClientes2.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cds_cliVALOR_CORTESIA.asFloat := 0;
  if not dsDtsrc_e.DataSet.Active then
     dsDtsrc_e.DataSet.open;
  dsDtsrc_e.DataSet.Append;
  cds_cliCODUSUARIO.AsInteger := usulog;
  cds_cliDATACADASTRO.AsDateTime := Now;
  if (not DM.cds_empresa.Active) then
     DM.cds_empresa.Open;
  cds_CliEndUF.AsString := DM.cds_empresaUF.AsString;
  cds_CliEndCIDADE.AsString := DM.cds_empresaCIDADE.AsString;
  cds_CliEndCEP.AsString := DM.cds_empresaCEP.AsString;
  cds_CliEndTIPOEND.AsInteger := 0;// 0=eNDEREÇO pRINCIPAL
end;

procedure TfCadClientes2.chk2Click(Sender: TObject);
begin
  inherited;
  if (cds_cli.State in [dsInactive]) then
    Exit;
  if (cds_cli.State in [dsBrowse]) then
  begin
    cds_cli.Edit;
    if (cds_CliEnd.State in [dsBrowse]) then
       cds_CliEnd.Edit;
  end;

  if(chk2.Checked = True) then
  begin
    JvDBCalcEdit3.Enabled := True;
    cds_cliCORTESIA.AsString := 'S';
  end
  else
  begin
    cds_cliCORTESIA.AsString := 'N';
    JvDBCalcEdit3.Enabled := False;
  end;

end;

procedure TfCadClientes2.chk1Click(Sender: TObject);
begin
  inherited;

  if (cds_cli.State in [dsInactive]) then
    Exit;
  if (cds_cli.State in [dsBrowse]) then
  begin
    cds_cli.Edit;
    if (cds_CliEnd.State in [dsBrowse]) then
       cds_CliEnd.Edit;
  end;

  if (chk1.Checked = True) then
    cds_cliBLOQUEADO.AsString := 'S'
  else
    cds_cliBLOQUEADO.AsString := 'N';

end;

procedure TfCadClientes2.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,DM.scds_cli_proc);
  try
    fProcurar.btnImprimir.Visible := False;
    fProcurar.RadioGroup1.Visible := False;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar.RadioGroup2.Visible := False;
    fProcurar.btnIncluir.Visible := False;
    fProcurar.ShowModal;
    if cds_cli.Active then
     cds_cli.Close;
    cds_cli.Params[0].AsInteger := dm.scds_cli_procCODCLIENTE.AsInteger;
    cds_cli.Open;

    if(cds_cliCORTESIA.AsString = 'S') then
    begin
      chk2.Checked := True;
      JvDBCalcEdit3.Enabled := True;
    end
    else
    begin
      chk2.Checked := False;
      JvDBCalcEdit3.Enabled := False;
    end;

    if (cds_cliSTATUS.AsInteger = 0) then
       rgSitCad.ItemIndex := 0
    else
       rgSitCad.ItemIndex := 1;

    if (cds_cliTIPOFIRMA.AsInteger = 0) then
       rgTipo.ItemIndex := 0
    else
       rgTipo.ItemIndex := 1;

    if (cds_cliBLOQUEADO.AsString = 'S') then
      chk1.Checked := True
    else
      chk1.Checked := False;


    //Endereço
    if (cds_CliEnd.Active) then
       cds_CliEnd.Close;
    cds_CliEnd.Params[0].AsInteger := cds_cliCODCLIENTE.AsInteger;
    cds_CliEnd.Open;
    if (cds_CliEnd.IsEmpty) then
      dsDtsrc_e.DataSet.Append;
  finally
    dm.scds_cli_proc.Close;
    fProcurar.Free;
  end;
  if (btnCancelar.Enabled = True) then
      btnCancelar.Click;
end;

procedure TfCadClientes2.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_cliCODCLIENTE.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    if (dbedtCOD_CLI.Text = '') then
      cds_cliCOD_CLI.AsString := IntToStr(dm.c_6_genidCODIGO.AsInteger);

    cds_CliEndCODCLIENTE.AsInteger := dm.c_6_genidCODIGO.AsInteger;

    dm.c_6_genid.Close;
    if (rgTipo.ItemIndex = 0) then
       cds_cliTIPOFIRMA.AsInteger := 0
    else
       cds_cliTIPOFIRMA.AsInteger := 1;

    if (rgSitCad.ItemIndex = 0) then
       cds_cliSTATUS.AsInteger := 0
    else
       cds_cliSTATUS.AsInteger := 1;
    cds_cliSEGMENTO.AsInteger := 1;
    cds_cliREGIAO.AsInteger := 1;

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_CliEndCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  if DtSrc.DataSet.State in [dsEdit] then
  begin
    if (rgTipo.ItemIndex = 0) then
       cds_cliTIPOFIRMA.AsInteger := 0
    else
       cds_cliTIPOFIRMA.AsInteger := 1;

    if (rgSitCad.ItemIndex = 0) then
       cds_cliSTATUS.AsInteger := 0
    else
       cds_cliSTATUS.AsInteger := 1;
    cds_cliSEGMENTO.AsInteger := 1;
    cds_cliREGIAO.AsInteger := 1;
  end;
 // inherited;
  cds_cli.ApplyUpdates(0);
  dsDtsrc_e.DataSet.Post;
  (dsDtsrc_e.DataSet as TClientDataset).ApplyUpdates(0);
  // Incluir ou alterar dados do Fornecedor
  if (chk3.Checked = True) then
      INSERE_FORNECEDOR;
  // Se falso Fornecedor tem que ser Inativado ou excluido    
  if (chk3.Checked = False) then
      UPDATE_FORNECEDOR;
end;

procedure TfCadClientes2.dsDtsrc_eStateChange(Sender: TObject);
begin
  inherited;
  if (dsDtsrc_e.State in [dsEdit]) then
    DtSrc.Edit;
end;

procedure TfCadClientes2.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsEdit]) then
    dsDtsrc_e.Edit;
end;

procedure TfCadClientes2.btn2Click(Sender: TObject);
begin
  inherited;
      if (cds_cli.State in [dsInactive]) then
        Exit;
    DM.v_CargoFuncao := '';
    fCargosFuncoes := TfCargosFuncoes.Create(Application);
    try
      fCargosFuncoes.ShowModal;
      if (cds_cli.State in [dsBrowse]) then
        cds_cli.Edit;
        cds_cliCARGOFUNCAO.AsInteger := DM.v_CodFuncao;
        dbedtCARGOFUNCAO.Text        := DM.v_CargoFuncao;
    finally
      fCargosFuncoes.Free;
    end;
end;

procedure TfCadClientes2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (cds_CliEnd.Active) then
      cds_Cli.Close;
  inherited;

end;

procedure TfCadClientes2.rgSitCadClick(Sender: TObject);
begin
 // inherited;
  if (cds_cli.State in [dsInactive]) then
    Exit;
  if (cds_cli.State in [dsBrowse]) then
  begin
    cds_cli.Edit;
    if (cds_CliEnd.State in [dsBrowse]) then
       cds_CliEnd.Edit;
  end;

  if (rgSitCad.ItemIndex = 1) then
    cds_cliBLOQUEADO.AsString := 'S'
  else
    cds_cliBLOQUEADO.AsString := 'N';
    
end;

procedure TfCadClientes2.chk3Click(Sender: TObject);
begin
//  inherited;
  if (cds_cli.State in [dsInactive]) then
    Exit;
  if (cds_cli.State in [dsBrowse]) then
  begin
    cds_cli.Edit;
    if (cds_CliEnd.State in [dsBrowse]) then
       cds_CliEnd.Edit;
  end;

  if(chk3.Checked = True) then
    cds_cliE_FORNECEDOR.AsString := 'S'
  else
    cds_cliE_FORNECEDOR.AsString := 'N';
    
end;

procedure TfCadClientes2.INSERE_FORNECEDOR;
begin
// INSERIR CLIENTE COMO FORNECEDOR
end;

procedure TfCadClientes2.UPDATE_FORNECEDOR;
begin
//ATUALIZAR FORNECEDOR
end;

end.
