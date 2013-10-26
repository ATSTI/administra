unit uCfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfCfop = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    BitBtn12: TBitBtn;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    cbTotalTributos: TCheckBox;
    cbFreteBC: TCheckBox;
    cbIpiBc: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbIpiBcClick(Sender: TObject);
    procedure cbFreteBCClick(Sender: TObject);
    procedure cbTotalTributosClick(Sender: TObject);
  private
    procedure IpiBaseCalculo;
    procedure FreteBaseCalculo;
    procedure TotalTributosNF;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCfop: TfCfop;

implementation

uses UDm;

{$R *.dfm}

procedure TfCfop.FormCreate(Sender: TObject);
begin
//  inherited;
  if not dm.cds_cfop.Active then
    dm.cds_cfop.Open;
end;

procedure TfCfop.FormDestroy(Sender: TObject);
begin
  inherited;
  if dm.cds_cfop.Active then
    dm.cds_cfop.Close;
end;

procedure TfCfop.FormShow(Sender: TObject);
begin
//    inherited;
  dbedit1.Enabled := True;
  dbedit2.Enabled := True;
end;

procedure TfCfop.BitBtn12Click(Sender: TObject);
var stra: string;
begin
  inherited;
  if (dbEdit1.Text = '') then
  begin
    dm.cds_cfop.Cancel;
    dm.cds_cfop.Filtered := False;
    exit;
  end;
  stra := dbEdit1.Text;
  dm.cds_cfop.Cancel;
  if (dm.cds_cfop.Filtered = True) then
    dm.cds_cfop.Filtered := False;
  dm.cds_cfop.Filter := 'CFCOD = ''' + stra + '*''';
  if (stra <> '') then
    dm.cds_cfop.Filtered := True
  else
    dm.cds_cfop.Filtered := False;
  TotalTributosNF;
  IpiBaseCalculo;
  FreteBaseCalculo;    
end;

procedure TfCfop.BitBtn1Click(Sender: TObject);
var stra: string;
begin
  inherited;
  if (dbEdit2.Text = '') then
  begin
    dm.cds_cfop.Cancel;  
    dm.cds_cfop.Filtered := False;
    exit;
  end;
  stra := dbEdit2.Text;
  dm.cds_cfop.Cancel;
  if (dm.cds_cfop.Filtered = True) then
    dm.cds_cfop.Filtered := False;
  dm.cds_cfop.Filter := 'CFNOME = ''' + stra + '*''';
  if (stra <> '') then
    dm.cds_cfop.Filtered := True
  else
    dm.cds_cfop.Filtered := False;
  TotalTributosNF;
  IpiBaseCalculo;
  FreteBaseCalculo;
end;

procedure TfCfop.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Excluir := 'S';
  Alterar := 'S';
  Cancelar := 'S';
  Procurar :=  'S';
  inherited;

end;

procedure TfCfop.btnGravarClick(Sender: TObject);
var atualizaCfop: String;
begin
  atualizaCfop := 'UPDATE CFOP SET ';
  if (cbIpiBc.Checked) then
    atualizaCfop := atualizaCfop + ' IPIBC = ' + QuotedStr('T')
  else
    atualizaCfop := atualizaCfop + ' IPIBC = NULL ';

  if (cbFreteBC.Checked) then
    atualizaCfop := atualizaCfop + ', FRETEBC = ' + QuotedStr('T')
  else
    atualizaCfop := atualizaCfop + ', FRETEBC = NULL ';

  if (cbTotalTributos.Checked) then
    atualizaCfop := atualizaCfop + ', TOTTRIB = ' + QuotedStr('T')
  else
    atualizaCfop := atualizaCfop + ', TOTTRIB = NULL ';

  atualizaCfop := atualizaCfop + ', CFNOME = ' + QuotedStr(dbEdit2.Text);

  atualizaCfop := atualizaCfop + ' WHERE  CFCOD = ' + QuotedStr(dm.cds_cfopCFCOD.AsString);
  dm.sqlsisAdimin.ExecuteDirect(atualizaCfop);
  inherited;
end;

procedure TfCfop.FreteBaseCalculo;
begin
  if (dm.cds_cfopFRETEBC.IsNull) then
    cbFreteBC.Checked := False;
  if (dm.cds_cfopFRETEBC.AsString = 'T') then
    cbFreteBC.Checked := True;
  if (dm.cds_cfopFRETEBC.AsString <> 'T') then
    cbFreteBC.Checked := False;

end;

procedure TfCfop.IpiBaseCalculo;
begin
  if (dm.cds_cfopIPIBC.IsNull) then
    cbIpiBc.Checked := False;
  if (dm.cds_cfopIPIBC.AsString = 'T') then
    cbIpiBc.Checked := True;
  if (dm.cds_cfopIPIBC.AsString <> 'T') then
    cbIpiBc.Checked := False;

end;

procedure TfCfop.TotalTributosNF;
begin
  if (dm.cds_cfopTOTTRIB.IsNull) then
    cbTotalTributos.Checked := False;
  if (dm.cds_cfopTOTTRIB.AsString = 'T') then
    cbTotalTributos.Checked := True;
  if (dm.cds_cfopTOTTRIB.AsString <> 'T') then
    cbTotalTributos.Checked := False;
end;

procedure TfCfop.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  TotalTributosNF;
  IpiBaseCalculo;
  FreteBaseCalculo;
end;

procedure TfCfop.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  TotalTributosNF;
  IpiBaseCalculo;
  FreteBaseCalculo;
end;

procedure TfCfop.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  TotalTributosNF;
  IpiBaseCalculo;
  FreteBaseCalculo;
end;

procedure TfCfop.cbIpiBcClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in  [dsBrowse]) then
    DtSrc.DataSet.Edit;
end;

procedure TfCfop.cbFreteBCClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in  [dsBrowse]) then
    DtSrc.DataSet.Edit;

end;

procedure TfCfop.cbTotalTributosClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in  [dsBrowse]) then
    DtSrc.DataSet.Edit;

end;

end.
