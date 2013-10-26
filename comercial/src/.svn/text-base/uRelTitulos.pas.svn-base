unit uRelTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Mask, Buttons, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfRelTitulos = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    btnSair: TBitBtn;
    VCLReport1: TVCLReport;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelTitulos: TfRelTitulos;

implementation

uses UDm;

{$R *.dfm}

procedure TfRelTitulos.BitBtn1Click(Sender: TObject);
begin  
  if(RadioButton3.Checked)then
  begin
   VCLReport1.Filename := str_relatorio + 'tit_emitidos_descontados.rep';
  end;
  if(RadioButton2.Checked)then
  begin
   VCLReport1.Filename := str_relatorio + 'vendaProduto_mais.rep';
  end;
  if(RadioButton1.Checked)then
  begin
   VCLReport1.Filename := str_relatorio + 'vendaProduto_volume.rep';
  end;
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATAINI').Value := dta1.Text;
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := dta2.Text;
  VCLReport1.Execute;

end;

procedure TfRelTitulos.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
