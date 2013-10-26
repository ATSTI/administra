unit uClientesAniversario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfClientesAniversario = class(TForm)
    Button1: TButton;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Data1: TJvDatePickerEdit;
    Data2: TJvDatePickerEdit;
    Button2: TButton;
    VCLReport1: TVCLReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientesAniversario: TfClientesAniversario;

implementation

uses UDm;

{$R *.dfm}

procedure TfClientesAniversario.Button1Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'rel_aniversarioclientes.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA1').Value := Data1.date;
  VCLReport1.Report.Params.ParamByName('DATA2').Value := Data2.date;
  VCLReport1.Title    := VCLReport1.FileName;
  VCLReport1.Execute;
end;

procedure TfClientesAniversario.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
