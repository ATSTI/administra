unit uRelVendasUF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, rpcompobase, rpvclreport;

type
  TfRelVendasUF = class(TForm)
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cbMes: TComboBox;
    data1: TJvDatePickerEdit;
    data2: TJvDatePickerEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Rep: TVCLReport;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelVendasUF: TfRelVendasUF;

implementation

uses uUtils, UDm;

{$R *.dfm}

procedure TfRelVendasUF.BitBtn1Click(Sender: TObject);
begin
    Rep.Filename := str_relatorio + 'vendasPorUF.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Data2.Text);
    Rep.Execute;
end;

procedure TfRelVendasUF.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfRelVendasUF.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  data1.Text := periodo.PeriodoIni;
  data2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

end.
