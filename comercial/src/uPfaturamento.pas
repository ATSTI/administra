unit uPfaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Buttons, ExtCtrls, MMJPanel,
  rpcompobase, rpvclreport;

type
  TfPfaturamento = class(TForm)
    MMJPanel1: TMMJPanel;
    btnSair: TBitBtn;
    BitBtn2: TBitBtn;
    VCLReport1: TVCLReport;
    dta2: TJvDatePickerEdit;
    Label2: TLabel;
    dta1: TJvDatePickerEdit;
    cbMes: TComboBox;
    Label1: TLabel;
    procedure cbMesChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPfaturamento: TfPfaturamento;

implementation

uses uUtils, UDm, uProcurar;

{$R *.dfm}

procedure TfPfaturamento.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);  
  dta1.Text := periodo.PeriodoIni;
  dta2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfPfaturamento.btnSairClick(Sender: TObject);
begin
  fPfaturamento.Close;
end;

procedure TfPfaturamento.BitBtn2Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'pre_faturamento.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTAINI').Value := StrToDate(Dta1.Text);
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Dta2.Text);
  VCLReport1.execute;
end;

end.
