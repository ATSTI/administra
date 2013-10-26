unit uRel_Guia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, StdCtrls, Buttons,
  Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, DB, Grids, DBGrids, DBCtrls, SqlExpr, Provider,
  DBClient, DBLocal, DBLocalS, rpcompobase, rpvclreport, JvExDBGrids,
  JvDBGrid, FMTBcd;

type
  TfRel_Guia = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    BitBtn2: TBitBtn;
    rep: TVCLReport;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    DtSrc: TDataSource;
    cGuia: TClientDataSet;
    cGuiaID_GUIA: TIntegerField;
    cGuiaCONHECIMENTO: TIntegerField;
    cGuiaNATOP: TStringField;
    cGuiaCODIGO: TStringField;
    cGuiaEMISSAOLOCAL: TStringField;
    cGuiaCOD_CLIENTE: TIntegerField;
    cGuiaCOD_CONSIGNATARIO: TIntegerField;
    cGuiaCOD_REDESPACHO: TIntegerField;
    cGuiaPAGO: TStringField;
    cGuiaAPAGAR: TStringField;
    cGuiaID_TRANSPORTADORA: TIntegerField;
    cGuiaBASECALCULO: TFloatField;
    cGuiaALIQUOTA: TFloatField;
    cGuiaICMS: TFloatField;
    cGuiaFRETEPESOVOLUME: TStringField;
    cGuiaFRETEVALOR: TFloatField;
    cGuiaCADSCE: TStringField;
    cGuiaDESPACHO: TStringField;
    cGuiaPEDAGIO: TFloatField;
    cGuiaOUTROES: TFloatField;
    cGuiaTOTALPRESTACAO: TFloatField;
    cGuiaCOLETA: TStringField;
    cGuiaENTREGA: TStringField;
    cGuiaOBS: TStringField;
    cGuiaDATA: TDateField;
    cGuiaCODTRANSP: TIntegerField;
    cGuiaPLACATRANSP: TStringField;
    cGuiaCIDADE_TRANSP: TStringField;
    cGuiaUF_VEICULO_TRANSP: TStringField;
    cGuiaNOTAFISCAL: TIntegerField;
    cGuiaVALOR_PROD1: TFloatField;
    cGuiaQUANTIDADE1: TFloatField;
    cGuiaUN1: TStringField;
    cGuiaDESCPRODUTO1: TStringField;
    cGuiaVALOR_PROD2: TFloatField;
    cGuiaNOTAFISCAL2: TIntegerField;
    cGuiaQUANTIDADE2: TFloatField;
    cGuiaUN2: TStringField;
    cGuiaDESCPRODUTO2: TStringField;
    cGuiaTotal: TFloatField;
    cGuiaTotal2: TFloatField;
    cGuiaCOD_REMETENTE: TIntegerField;
    sGuia: TSQLDataSet;
    pGuia: TDataSetProvider;
    cGuiaNOMETRANSP: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    sGuiaID_GUIA: TIntegerField;
    sGuiaCONHECIMENTO: TIntegerField;
    sGuiaNATOP: TStringField;
    sGuiaCODIGO: TStringField;
    sGuiaEMISSAOLOCAL: TStringField;
    sGuiaCOD_CLIENTE: TIntegerField;
    sGuiaCOD_CONSIGNATARIO: TIntegerField;
    sGuiaCOD_REDESPACHO: TIntegerField;
    sGuiaPAGO: TStringField;
    sGuiaAPAGAR: TStringField;
    sGuiaID_TRANSPORTADORA: TIntegerField;
    sGuiaBASECALCULO: TFloatField;
    sGuiaALIQUOTA: TFloatField;
    sGuiaICMS: TFloatField;
    sGuiaFRETEPESOVOLUME: TStringField;
    sGuiaFRETEVALOR: TFloatField;
    sGuiaCADSCE: TStringField;
    sGuiaDESPACHO: TStringField;
    sGuiaPEDAGIO: TFloatField;
    sGuiaOUTROES: TFloatField;
    sGuiaTOTALPRESTACAO: TFloatField;
    sGuiaCOLETA: TStringField;
    sGuiaENTREGA: TStringField;
    sGuiaOBS: TStringField;
    sGuiaDATA: TDateField;
    sGuiaNOTAFISCAL: TIntegerField;
    sGuiaVALOR_PROD1: TFloatField;
    sGuiaQUANTIDADE1: TFloatField;
    sGuiaUN1: TStringField;
    sGuiaDESCPRODUTO1: TStringField;
    sGuiaNOTAFISCAL2: TIntegerField;
    sGuiaVALOR_PROD2: TFloatField;
    sGuiaQUANTIDADE2: TFloatField;
    sGuiaUN2: TStringField;
    sGuiaDESCPRODUTO2: TStringField;
    sGuiaCOD_REMETENTE: TIntegerField;
    sGuiaCODTRANSP: TIntegerField;
    sGuiaPLACATRANSP: TStringField;
    sGuiaCIDADE_TRANSP: TStringField;
    sGuiaUF_VEICULO_TRANSP: TStringField;
    sGuiaNOMETRANSP: TStringField;
    procedure cbMesChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_Guia: TfRel_Guia;

implementation

uses uUtils ,UDm, uProcurar;

{$R *.dfm}

procedure TfRel_Guia.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin

end;

procedure TfRel_Guia.CheckBox1Click(Sender: TObject);
begin
 { if (CheckBox1.Checked) then
  begin
 //   Edit1.Enabled := True;
    Edit2.Enabled := True;
//    Edit1.Color := clWindow;
    Edit2.Color := clWindow;
  end
  else begin
  //  Edit1.Text := '';
    Edit2.Text := '';
  //  Edit1.Enabled := False;
    Edit2.Enabled := False;
  //  Edit1.Color := cl3DLight;
    Edit2.Color := cl3DLight;
  end; }
end;

procedure TfRel_Guia.Edit2Change(Sender: TObject);
begin
//  Edit1.Text := IntToStr(sqlForCODTRANSP.asInteger);

end;

procedure TfRel_Guia.BitBtn2Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'guia_conhecimento.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
//  Rep.Report.Params.ParamByName('PDATA1').Value := StrToDate(Dta1.Text);
//  Rep.Report.Params.ParamByName('PDATA2').Value := StrToDate(Dta2.Text);
 { if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PFORNECEDOR').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PFORNECEDOR').Value := '0';
 }
  rep.execute;
end;

procedure TfRel_Guia.BitBtn1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_transp_proc);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMETRANSP';
  if fProcurar.ShowModal=mrOk then
  begin
    if dtSrc.State=dsBrowse then
      cGuia.Edit;
    Edit1.Text := IntToStr(dm.scds_transp_procCODTRANSP.AsInteger);
    Edit2.Text := dm.scds_transp_procNOMETRANSP.AsString;
  end;
  finally
    dm.scds_transp_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfRel_Guia.btnProcurarClick(Sender: TObject);
begin
  if (cGuia.Active) then
    cGuia.Close;
  if (Edit1.Text <> '') then
    cGuia.Params[0].AsInteger := StrToInt(Edit1.Text)
  else
    cGuia.Params[1].AsInteger := 9999999;
  cGuia.Params[2].Value := dta1.Date;
  cGuia.Params[3].Value := dta2.Date;
  cGuia.Open;
end;

procedure TfRel_Guia.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
