unit uRelNfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, rpcompobase, rpvclreport,
  Buttons, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfRelNfe = class(TForm)
    Label5: TLabel;
    VCLReport1: TVCLReport;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    btnSair: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelNfe: TfRelNfe;

implementation

uses uUtils, UDm;

{$R *.dfm}


procedure TfRelNfe.BitBtn2Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'nota_fiscal_rel_emissao.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := StrToDate(Dta1.Text);
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Dta2.Text);
  VCLReport1.execute;
end;

procedure TfRelNfe.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'nota_fiscal_UF.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := StrToDate(Dta1.Text);
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Dta2.Text);
  VCLReport1.execute;
end;

procedure TfRelNfe.BitBtn3Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'nota_fiscal_rel_emissao_d.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := StrToDate(Dta1.Text);
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Dta2.Text);
  VCLReport1.execute;
end;

procedure TfRelNfe.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfRelNfe.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  dta1.Text := periodo.PeriodoIni;
  dta2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

end.
