unit uMostraSuites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, FMTBcd, DB,
  SqlExpr, Provider, DBClient, StdCtrls, Buttons, JvExMask, JvToolEdit,
  JvBaseEdits, Mask;

type
  TfMostraSuites = class(TForm)
    Panel1: TPanel;
    DBGrid1: TJvDBGrid;
    Panel2: TPanel;
    sPlano: TSQLDataSet;
    sPlanoCODIGO: TIntegerField;
    sPlanoNOME: TStringField;
    DtSrc1: TDataSource;
    cds_Mov_det: TClientDataSet;
    dsp_Mov_det: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_Mov_DetDESCPRODUTO: TStringField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetCODAUTORIZACAO: TIntegerField;
    sds_Mov_DetSTATUS: TStringField;
    sds_Mov_DetCODALMOXARIFADO: TSmallintField;
    sds_Mov_DetPERIODOINI: TSQLTimeStampField;
    sds_Mov_DetPERIODOFIM: TSQLTimeStampField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetNOME: TStringField;
    sds_Mov_DetNOMECLIENTE: TStringField;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detDESCPRODUTO: TStringField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detCODAUTORIZACAO: TIntegerField;
    cds_Mov_detSTATUS: TStringField;
    cds_Mov_detCODALMOXARIFADO: TSmallintField;
    cds_Mov_detPERIODOINI: TSQLTimeStampField;
    cds_Mov_detPERIODOFIM: TSQLTimeStampField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detNOME: TStringField;
    cds_Mov_detNOMECLIENTE: TStringField;
    cds_Mov_detValorTotal: TFloatField;
    sds_Mov_DetHORATERMINO: TSQLTimeStampField;
    cds_Mov_detHORATERMINO: TSQLTimeStampField;
    Label3: TLabel;
    horaentrada: TMaskEdit;
    Edit4: TJvCalcEdit;
    Label1: TLabel;
    Edit3: TJvCalcEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtExcede: TJvCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMostraSuites: TfMostraSuites;

implementation

uses uControle, UDm;

{$R *.dfm}

procedure TfMostraSuites.FormShow(Sender: TObject);
var horaecedeu : TDateTime;
    Result : integer;
    valorExcede : double;
begin
  if (sPlano.Active) then
    sPlano.Close;
  sPlano.Params[0].AsString := botao;
  sPlano.Open;
  if (not sPlano.IsEmpty) then
  begin
      if (cds_Mov_det.Active) then
        cds_Mov_det.Close;
      cds_Mov_det.Params[0].AsInteger := sPlanoCODIGO.AsInteger;
      cds_Mov_det.Open;
      horaecedeu := cds_Mov_detHORATERMINO.AsDateTime - now;
      MaskEdit1.Text := FormatDateTime('hh:mm', horaecedeu);
      Edit3.Value := cds_Mov_detQTDE_PCT.Value;
      Edit4.Value := cds_Mov_detPRECO.Value;
      horaentrada.Text := FormatDateTime('hh:mm', now);
      Result := (StrToInt(Copy(MaskEdit1.Text,1,2))*60) + StrToInt(Copy(MaskEdit1.Text,4,2));
      valorExcede := (Edit4.Value / Edit3.Value) * Result;
      edtExcede.Value := valorExcede;
      sPlano.Close;
  end;
  horaentrada.SetFocus;
end;

procedure TfMostraSuites.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  valor := 0;
 { if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else }
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfMostraSuites.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      if (cds_Mov_det.Active) then
        cds_Mov_det.Close;
end;

procedure TfMostraSuites.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMostraSuites.BitBtn1Click(Sender: TObject);
begin
  if (cds_Mov_det.State in [dsBrowse]) then
    cds_Mov_det.Edit;
  cds_Mov_detPERIODOFIM.AsDateTime := now;
  //cds_Mov_detPRECO.Value := edtExcede.Value;
  cds_mov_det.ApplyUpdates(0);  
end;

end.
