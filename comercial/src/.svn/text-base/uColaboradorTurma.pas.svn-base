unit uColaboradorTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Grids, DBGrids, SqlExpr, Provider, DBClient;

type
  TfColaboradorTurma = class(TfPai_new)
    cds: TClientDataSet;
    cdsCODCOLABORTURMA: TIntegerField;
    cdsIDPROFESSOR: TIntegerField;
    cdsSERIELETRA: TStringField;
    cdsIDMATERIAS: TIntegerField;
    cdsNOME: TStringField;
    cdsDESC_CLASSE: TStringField;
    cdsMATERIAS: TStringField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCODCOLABORTURMA: TIntegerField;
    sdsIDPROFESSOR: TIntegerField;
    sdsSERIELETRA: TStringField;
    sdsIDMATERIAS: TIntegerField;
    sdsNOME: TStringField;
    sdsDESC_CLASSE: TStringField;
    sdsMATERIAS: TStringField;
    dspProf: TDataSetProvider;
    sdsProf: TSQLDataSet;
    sdsProfIDPROFESSOR: TIntegerField;
    sdsProfNOME: TStringField;
    sdsProfENDERECO: TStringField;
    sdsProfCIDADE: TStringField;
    sdsProfCEP: TStringField;
    sdsProfFONE: TStringField;
    sdsProfTURNO: TStringField;
    sdsProfCLASSES: TStringField;
    sdsProfEMAIL: TStringField;
    sdsProfSEXO: TStringField;
    sdsProfMAE: TStringField;
    sdsProfBAIRRO: TStringField;
    sdsProfDATANASCIMENTO: TDateField;
    sdsProfRG: TStringField;
    sdsProfCPF: TStringField;
    sdsProfCTPS_SERIE: TStringField;
    sdsProfDATA_ADMISSAO: TDateField;
    sdsProfESTADO_CIVIL: TStringField;
    sdsProfNATURALIDADE: TStringField;
    sdsProfUF_NATURAL: TStringField;
    sdsProfCELULAR: TStringField;
    sdsProfCOMPLEMENTO: TStringField;
    sdsProfOBSERVACAO: TStringField;
    sdsProfDTADESLIGA: TDateField;
    sdsProfFUNCAO: TStringField;
    sdsMat: TSQLDataSet;
    dspMat: TDataSetProvider;
    cdsMat: TClientDataSet;
    cdsMatMATERIAS: TStringField;
    cdsMatIDMATERIAS: TIntegerField;
    cdsMatTIPOENSINO: TStringField;
    cdsProf: TClientDataSet;
    cdsProfIDPROFESSOR: TIntegerField;
    cdsProfNOME: TStringField;
    cdsProfENDERECO: TStringField;
    cdsProfCIDADE: TStringField;
    cdsProfCEP: TStringField;
    cdsProfFONE: TStringField;
    cdsProfTURNO: TStringField;
    cdsProfCLASSES: TStringField;
    cdsProfEMAIL: TStringField;
    cdsProfSEXO: TStringField;
    cdsProfMAE: TStringField;
    cdsProfBAIRRO: TStringField;
    cdsProfDATANASCIMENTO: TDateField;
    cdsProfRG: TStringField;
    cdsProfCPF: TStringField;
    cdsProfCTPS_SERIE: TStringField;
    cdsProfDATA_ADMISSAO: TDateField;
    cdsProfESTADO_CIVIL: TStringField;
    cdsProfNATURALIDADE: TStringField;
    cdsProfUF_NATURAL: TStringField;
    cdsProfCELULAR: TStringField;
    cdsProfCOMPLEMENTO: TStringField;
    cdsProfOBSERVACAO: TStringField;
    cdsProfDTADESLIGA: TDateField;
    cdsProfFUNCAO: TStringField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fColaboradorTurma: TfColaboradorTurma;

implementation

uses UDm;

{$R *.dfm}

procedure TfColaboradorTurma.BitBtn1Click(Sender: TObject);
begin
//  inherited;
 { if (cdsProf.Locate('NOME',comboBox1.Text, [loCaseInsensitive])) then
  if (cds.Active) then
    cds.Close;
  cds.Params[0].AsInteger := cdsProfIDPROFESSOR.AsInteger ;
  cds.Open;}
end;

procedure TfColaboradorTurma.FormCreate(Sender: TObject);
begin
  inherited;
 { if (not dm.TableSeries.Active) then
    dm.TableSeries.Open;
  while not dm.TableSeries.Eof do begin
    ComboBox2.Items.Add(dm.TableSeriesDESC_CLASSE.AsString);
    dm.TableSeries.Next;
  end;
  if (not cdsProf.Active) then
    cdsProf.Open;
  while not cdsProf.Eof do begin
    ComboBox1.Items.Add(cdsProfNOME.AsString);
    cdsProf.Next;
  end;
  if (not cdsMat.Active) then
    cdsMat.Open;
  while not cdsMat.Eof do begin
    ComboBox3.Items.Add(cdsMatMATERIAS.AsString);
    cdsMat.Next;
  end;}
end;

procedure TfColaboradorTurma.btnIncluirClick(Sender: TObject);
begin
 { if (comboBox1.Text = '') then
  begin
    MessageDlg('Selecione um Professor.', mtInformation, [mbOK], 0);
    ComboBox1.SetFocus;
    exit;
  end;
  ComboBox2.Enabled := True;
  ComboBox3.Enabled := True;
  if (cdsProf.Locate('NOME',comboBox1.Text, [loCaseInsensitive])) then
  if (cds.Active) then
    cds.Close;
  cds.Params[0].AsInteger := cdsProfIDPROFESSOR.AsInteger ;
  cds.Open;}
  inherited;

end;

procedure TfColaboradorTurma.btnGravarClick(Sender: TObject);
begin
 { if DmDados.sds_id.Active then
    DmDados.sds_id.Close;
  DmDados.sds_id.CommandText := 'SELECT CAST(GEN_ID(GEN_COLABTURMA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  DmDados.sds_id.Open;
  cdsCODCOLABORTURMA.AsInteger := DmDados.sds_id.Fields[0].AsInteger;
  DmDados.sds_id.Close;

  if (cdsProf.Locate('NOME',comboBox1.Text, [loCaseInsensitive])) then
    cdsIDPROFESSOR.AsInteger := cdsProfIDPROFESSOR.AsInteger ;
  if (dmdados.TableSeries.Locate('DESC_CLASSE',comboBox2.Text, [loCaseInsensitive])) then
    cdsSERIELETRA.AsString := dmdados.TableSeriesSERIELETRA.AsString;
  if (cdsMat.Locate('MATERIAS',comboBox3.Text, [loCaseInsensitive])) then
    cdsIDMATERIAS.AsInteger := cdsMatIDMATERIAS.AsInteger ;
  cdsDESC_CLASSE.AsString := ComboBox2.Text;
  cdsMATERIAS.AsString := ComboBox3.Text;
  inherited;
  ComboBox2.ItemIndex := -1;
  ComboBox3.ItemIndex := -1;
  ComboBox2.Enabled := False;
  ComboBox3.Enabled := False;}

end;

end.
