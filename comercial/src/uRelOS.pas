unit uRelOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, rpcompobase, rpvclreport;

type
  TfRelOs = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    btnVendaServico: TBitBtn;
    btnSair: TBitBtn;
    rep: TVCLReport;
    procedure btnVendaServicoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelOs: TfRelOs;

implementation

uses uUtils, UDm;


{$R *.dfm}

procedure TfRelOs.btnVendaServicoClick(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'comissao_os.rep';
  Rep.Title    := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(dta2.Text);
  rep.execute;
end;

procedure TfRelOs.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfRelOs.cbMesChange(Sender: TObject);
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
