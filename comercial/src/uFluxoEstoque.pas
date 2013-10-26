unit uFluxoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, rpcompobase, rpvclreport;

type
  TfFluxoEstoque = class(TForm)
    Button1: TButton;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Data1: TJvDatePickerEdit;
    Data2: TJvDatePickerEdit;
    GroupBox1: TGroupBox;
    cbTipo: TComboBox;
    VCLReport1: TVCLReport;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFluxoEstoque: TfFluxoEstoque;

implementation

uses UDm;

{$R *.dfm}

procedure TfFluxoEstoque.Button1Click(Sender: TObject);
var tipo: string;
begin
  VCLReport1.FileName := str_relatorio + 'fluxo_estoque.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA1').Value := Data1.date;
  VCLReport1.Report.Params.ParamByName('DATA2').Value := Data2.date;
  case (cbTipo.ItemIndex) of
    0 : VCLReport1.Report.Params.ParamByName('TIPO').Value := 'PROD';
    1 : VCLReport1.Report.Params.ParamByName('TIPO').Value := 'COMPRA';
    2 : VCLReport1.Report.Params.ParamByName('TIPO').Value := 'VENDA';
    3 : VCLReport1.Report.Params.ParamByName('TIPO').Value := 'SERV';
    4 : VCLReport1.Report.Params.ParamByName('TIPO').Value := 'LOCA';
  end;
  VCLReport1.Title    := VCLReport1.FileName;
  VCLReport1.Execute;
end;

procedure TfFluxoEstoque.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
