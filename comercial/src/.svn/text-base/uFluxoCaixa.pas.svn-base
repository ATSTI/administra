unit uFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Buttons,
  FMTBcd, DBClient, Provider, DB, SqlExpr, rpcompobase, rpvclreport;

type
  TfFluxoCaixa = class(TForm)
    GroupBox1: TGroupBox;
    data1: TJvDatePickerEdit;
    data2: TJvDatePickerEdit;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsGRUPO: TStringField;
    cdsTIPO: TStringField;
    cdsNOMECONTA: TStringField;
    cdsVALOR: TFloatField;
    cdsSALDO: TFloatField;
    cdsDIA1: TFloatField;
    cdsDIA2: TFloatField;
    cdsDIA3: TFloatField;
    cdsDIA4: TFloatField;
    cdsDIA5: TFloatField;
    cdsDIA6: TFloatField;
    cdsDIA7: TFloatField;
    cdsDIA8: TFloatField;
    cdsDIA9: TFloatField;
    cdsDIA10: TFloatField;
    cdsDIA11: TFloatField;
    cdsDIA12: TFloatField;
    cdsDIA13: TFloatField;
    cdsDIA14: TFloatField;
    cdsDIA15: TFloatField;
    cdsDIA16: TFloatField;
    cdsDIA17: TFloatField;
    cdsDIA18: TFloatField;
    cdsDIA19: TFloatField;
    cdsDIA20: TFloatField;
    cdsDIA21: TFloatField;
    cdsDIA22: TFloatField;
    cdsDIA23: TFloatField;
    cdsDIA24: TFloatField;
    cdsDIA25: TFloatField;
    cdsDIA26: TFloatField;
    cdsDIA27: TFloatField;
    cdsDIA28: TFloatField;
    cdsDIA29: TFloatField;
    cdsDIA30: TFloatField;
    cdsDIA31: TFloatField;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    BitBtn2: TBitBtn;
    procedure btnProcurarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFluxoCaixa: TfFluxoCaixa;

implementation

uses UDm;

{$R *.dfm}

procedure TfFluxoCaixa.btnProcurarClick(Sender: TObject);
//var i : integer;
begin
  {if (cds.Active) then
    cds.Close;
  cds.CommandText := 'SELECT * FROM FLUXOCAIXAVER(' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', data1.Date)) + ', ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', data2.Date)) + ') order by tipo';
  cds.Open;
  cds.DisableControls;
  cds.Last;
  // Vejo na última linha se o valor mudou
  for i := 5 to (cds.Fields.Count - 1) do
  begin
    grid.Columns[i-4].Title.Caption := FormatDateTime('dd/mm/yy', data1.Date + (i-5));
    if (cds.Fields[i-1].AsFloat = cds.Fields[i].AsFloat) then
    begin
      if (grid.Columns.Count > (i-4)) then
         grid.Columns[i-4].Visible := False;
    end
    else begin
      if (grid.Columns.Count > (i-4)) then
        grid.Columns[i-4].Visible := True;
    end;
  end;

  cds.EnableControls;}
end;

procedure TfFluxoCaixa.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfFluxoCaixa.btnImprimirClick(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'fluxoEntradaSaidaSintetico.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := data1.Date;
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := data2.Date;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
end;

procedure TfFluxoCaixa.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'fluxoEntradaSaida.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := data1.Date;
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := data2.Date;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
end;

procedure TfFluxoCaixa.BitBtn2Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'fluxo_caixa.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA1').Value := data1.Date;
  VCLReport1.Report.Params.ParamByName('DATA2').Value := data2.Date;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
end;

end.
