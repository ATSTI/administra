unit uRel_LucroPresumido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Buttons, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfRel_LucroPresumido = class(TForm)
    GroupBox1: TGroupBox;
    data1: TJvDatePickerEdit;
    data2: TJvDatePickerEdit;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    VCLReport1: TVCLReport;
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_LucroPresumido: TfRel_LucroPresumido;

implementation

uses UDm;

{$R *.dfm}

procedure TfRel_LucroPresumido.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfRel_LucroPresumido.btnImprimirClick(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'lucropresumido.rep';
  VCLReport1.Title := VCLReport1.Filename;
     VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', data1.Date);
  VCLReport1.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', data2.Date);
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
end;

end.
