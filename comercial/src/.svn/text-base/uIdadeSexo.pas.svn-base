unit uIdadeSexo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, Buttons, rpcompobase,
  rpvclreport;

type
  TfIdadeSexo = class(TForm)
    BitBtn1: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    VCLReport1: TVCLReport;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIdadeSexo: TfIdadeSexo;

implementation

uses UDm;

{$R *.dfm}

procedure TfIdadeSexo.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'idade_sexo.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DE').Value := Edit1.Text;
  VCLReport1.Report.Params.ParamByName('ATE').Value := Edit2.Text;
  VCLReport1.Report.Params.ParamByName('SEXO').Value := ComboBox1.Text;
  VCLReport1.Execute;
end;

end.
