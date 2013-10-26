unit uPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfPeriodo = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    procedure cbMesChange(Sender: TObject);
  private
    function GetDataFim: TDateTime;
    function GetDataIni: TDateTime;
    procedure SetDataFim(const Value: TDateTime);
    procedure SetDataIni(const Value: TDateTime);

    { Private declarations }
  public
    property DataIni: TDateTime read GetDataIni write SetDataIni;
    property DataFim: TDateTime read GetDataFim write SetDataFim;
    { Public declarations }
  end;

var
  fPeriodo: TfPeriodo;

implementation

uses uUtils;

{$R *.dfm}

procedure TfPeriodo.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  Try
    periodo := TUtils.Create;
    periodo.criaIni(cbMes.text);
    periodo.criaFim(cbMes.text);
    dta1.Text := periodo.PeriodoIni;
    dta2.Text := periodo.PeriodoFim;
  Finally
    periodo.Destroy;
  end;
end;

function TfPeriodo.GetDataFim: TDateTime;
begin
  Result := Dta2.Date;
end;

function TfPeriodo.GetDataIni: TDateTime;
begin
  Result := Dta1.Date;
end;

procedure TfPeriodo.SetDataFim(const Value: TDateTime);
begin
  Dta2.Date := Value;
end;

procedure TfPeriodo.SetDataIni(const Value: TDateTime);
begin
  Dta1.Date := Value;
end;

end.
