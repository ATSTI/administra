unit uProdFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DBCtrls, Grids, DBGrids, StdCtrls, Mask, DB, Menus,
  XPMenu, Buttons, ExtCtrls, MMJPanel, FMTBcd, DBClient, Provider, SqlExpr,
  TFlatGaugeUnit, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfProdFornecedor = class(TfPai)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sdsCODLISTAPRECO: TIntegerField;
    sdsUNIDADE: TStringField;
    sdsCODPRODUTO: TIntegerField;
    sdsCODFORNECEDOR: TIntegerField;
    sdsPRODUTO: TStringField;
    sdsCODIGO: TStringField;
    sdsPRECOLISTA: TFloatField;
    cdsCODLISTAPRECO: TIntegerField;
    cdsUNIDADE: TStringField;
    cdsCODPRODUTO: TIntegerField;
    cdsCODFORNECEDOR: TIntegerField;
    cdsPRODUTO: TStringField;
    cdsCODIGO: TStringField;
    cdsPRECOLISTA: TFloatField;
    sdsTIPOOPERACAO: TStringField;
    cdsTIPOOPERACAO: TStringField;
    BitBtn2: TBitBtn;
    cdsP: TClientDataSet;
    dspP: TDataSetProvider;
    sdsP: TSQLDataSet;
    cdsPCODPRODUTO: TIntegerField;
    cdsPFAMILIA: TStringField;
    cdsPCATEGORIA: TStringField;
    cdsPMARCA: TStringField;
    cdsPUNIDADEMEDIDA: TStringField;
    cdsPDATAULTIMACOMPRA: TDateField;
    cdsPESTOQUEMAXIMO: TFloatField;
    cdsPESTOQUEATUAL: TFloatField;
    cdsPESTOQUEREPOSICAO: TFloatField;
    cdsPESTOQUEMINIMO: TFloatField;
    cdsPVALORUNITARIOATUAL: TFloatField;
    cdsPVALORUNITARIOANTERIOR: TFloatField;
    cdsPICMS: TFloatField;
    cdsPCODALMOXARIFADO: TIntegerField;
    cdsPIPI: TFloatField;
    cdsPCLASSIFIC_FISCAL: TStringField;
    cdsPCST: TStringField;
    cdsPBASE_ICMS: TFloatField;
    cdsPPRODUTO: TStringField;
    cdsPPRECOMEDIO: TBCDField;
    cdsPCOD_COMISSAO: TIntegerField;
    cdsPMARGEM_LUCRO: TFloatField;
    cdsPCOD_BARRA: TStringField;
    cdsPVALOR_PRAZO: TFloatField;
    cdsPTIPO: TStringField;
    cdsPCONTA_DESPESA: TStringField;
    cdsPCONTA_RECEITA: TStringField;
    cdsPCONTA_ESTOQUE: TStringField;
    cdsPRATEIO: TStringField;
    cdsPCODPRO: TStringField;
    cdsPQTDE_PCT: TFloatField;
    cdsPPESO_QTDE: TFloatField;
    cdsPDATACADASTRO: TSQLTimeStampField;
    cdsPMARGEM: TFloatField;
    cdsPPRO_COD: TStringField;
    cdsPDATAGRAV: TDateField;
    cdsPCODFORN: TStringField;
    cdsPFOTOPRODUTO: TStringField;
    cdsPUSA: TStringField;
    cdsPLOTES: TStringField;
    cdsPLOCALIZACAO: TStringField;
    cdsPTIPOPRECOVENDA: TStringField;
    cdsPVALORMINIMO: TFloatField;
    cdsPVALORCOMISSAO: TFloatField;
    cdsPGERADESCONTO: TStringField;
    cdsPIMPRIMIR: TStringField;
    sdsPCODPRODUTO: TIntegerField;
    sdsPFAMILIA: TStringField;
    sdsPCATEGORIA: TStringField;
    sdsPMARCA: TStringField;
    sdsPUNIDADEMEDIDA: TStringField;
    sdsPDATAULTIMACOMPRA: TDateField;
    sdsPESTOQUEMAXIMO: TFloatField;
    sdsPESTOQUEATUAL: TFloatField;
    sdsPESTOQUEREPOSICAO: TFloatField;
    sdsPESTOQUEMINIMO: TFloatField;
    sdsPVALORUNITARIOATUAL: TFloatField;
    sdsPVALORUNITARIOANTERIOR: TFloatField;
    sdsPICMS: TFloatField;
    sdsPCODALMOXARIFADO: TIntegerField;
    sdsPIPI: TFloatField;
    sdsPCLASSIFIC_FISCAL: TStringField;
    sdsPCST: TStringField;
    sdsPBASE_ICMS: TFloatField;
    sdsPPRODUTO: TStringField;
    sdsPPRECOMEDIO: TBCDField;
    sdsPCOD_COMISSAO: TIntegerField;
    sdsPMARGEM_LUCRO: TFloatField;
    sdsPCOD_BARRA: TStringField;
    sdsPVALOR_PRAZO: TFloatField;
    sdsPTIPO: TStringField;
    sdsPCONTA_DESPESA: TStringField;
    sdsPCONTA_RECEITA: TStringField;
    sdsPCONTA_ESTOQUE: TStringField;
    sdsPRATEIO: TStringField;
    sdsPCODPRO: TStringField;
    sdsPQTDE_PCT: TFloatField;
    sdsPPESO_QTDE: TFloatField;
    sdsPDATACADASTRO: TSQLTimeStampField;
    sdsPMARGEM: TFloatField;
    sdsPPRO_COD: TStringField;
    sdsPDATAGRAV: TDateField;
    sdsPCODFORN: TStringField;
    sdsPFOTOPRODUTO: TStringField;
    sdsPUSA: TStringField;
    sdsPLOTES: TStringField;
    sdsPLOCALIZACAO: TStringField;
    sdsPTIPOPRECOVENDA: TStringField;
    sdsPVALORMINIMO: TFloatField;
    sdsPVALORCOMISSAO: TFloatField;
    sdsPGERADESCONTO: TStringField;
    sdsPIMPRIMIR: TStringField;
    MMJPanel3: TMMJPanel;
    Label7: TLabel;
    FlatGauge1: TFlatGauge;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsDESCR: TStringField;
    cdsDESCR: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    codFornecedor, listatipooper : integer;   // 0 Fornecedor 1 Cliente

    { Public declarations }
  end;

var
  fProdFornecedor: TfProdFornecedor;


implementation

uses UDm, ufprocura_prod, sCtrlResize;

{$R *.dfm}

procedure TfProdFornecedor.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Dbedit1.SetFocus;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODLISTA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsCODLISTAPRECO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  if(listatipooper = 0)  then
   cdsTIPOOPERACAO.AsString := 'F'
   else
   cdsTIPOOPERACAO.AsString := 'C';



end;

procedure TfProdFornecedor.FormShow(Sender: TObject);
begin
  inherited;
   //sCtrlResize.CtrlResize(TForm(fProdFornecedor));
   if (cds.Active) then
     cds.Close;
   cds.Params[0].AsInteger := codFornecedor;
   if(listatipooper = 0)  then
   cds.Params[1].AsString := 'F'
   else
   cds.Params[1].AsString := 'C';
   
   cds.Open;
end;

procedure TfProdFornecedor.BitBtn1Click(Sender: TObject);
var sql, sql1: string;
begin
  inherited;
  fProcura_prod.cbTipo.ItemIndex := 5;
  fProcura_prod.btnIncluir.Visible := true;

  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    fProcura_prod.BitBtn1.Click;
  end
  
  else
  begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'cadfornecedor';
  var_F := 'cadfornecedor';
  fProcura_prod.ShowModal;

  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := StrToInt(DBEdit1.Text);
  dm.scds_produto_proc.Params[1].AsString := DBEdit1.Text;
  dm.scds_produto_proc.Open;

  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  if cds.State in [dsInsert] then
    DBEdit1.SetFocus;
  if cds.State in [dsBrowse] then
    btnIncluir.SetFocus;
end;

procedure TfProdFornecedor.DBEdit1Exit(Sender: TObject);
begin
  inherited;
 if dbedit1.Text='' then exit;
  if (cds.State in [dsInsert, dsEdit]) then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := dbedit1.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      bitbtn1.Click;
      exit;
    end;
    cdsCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
    cdsCODIGO.AsString := dm.scds_produto_procCODPRO.AsString;
    cdsPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
    cdsUNIDADE.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
    cdsCODFORNECEDOR.AsInteger := fProdFornecedor.codFornecedor;
    
    dm.scds_produto_proc.Close;
    Dbedit3.SetFocus;
  end;
end;

procedure TfProdFornecedor.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Visible = True) then
    btnGravar.SetFocus;
end;

procedure TfProdFornecedor.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfProdFornecedor.BitBtn2Click(Sender: TObject);
begin
  inherited;
  FlatGauge1.Progress := 0;
  Label7.Visible := True;
  cdsp.Open;
  cdsp.first;
  FlatGauge1.MaxValue := cdsP.RecordCount;
  while not cdsp.Eof do
  begin
    if(not cds.Active) then
      cds.Open;
    cds.Append;

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODLISTA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsCODLISTAPRECO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    if(listatipooper = 0)  then
     cdsTIPOOPERACAO.AsString := 'F'
    else
     cdsTIPOOPERACAO.AsString := 'C';

    cdsCODPRODUTO.AsInteger := cdsPCODPRODUTO.AsInteger;
    cdsCODIGO.AsString := cdsPCODPRO.AsString;
    cdsDESCR.AsString := cdsPPRODUTO.AsString;
    cdsPRECOLISTA.Value := cdsPVALOR_PRAZO.Value;
    cdsUNIDADE.AsString := cdsPUNIDADEMEDIDA.AsString;
    cdsCODFORNECEDOR.AsInteger := fProdFornecedor.codFornecedor;
    cds.ApplyUpdates(0);
    FlatGauge1.Progress := cdsp.RecNo;
    cdsP.Next;
  end;
  cdsP.Close;
  Label7.Visible := False;
end;

end.
