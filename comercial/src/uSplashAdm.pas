unit uSplashAdm;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg, MMJPanel, TFlatProgressBarUnit,
  TFlatGaugeUnit, EOneInst;

type
  TfSplashAdm = class(TForm)
    Image1: TImage;
    MMJPanel1: TMMJPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    EvOneInstance1: TEvOneInstance;
    procedure FormShow(Sender: TObject);
    Function NomeComputador: string;    
  end;

var
  fSplashAdm: TfSplashAdm;
  varSplashAdm : string;

implementation

uses UDm;

{$R *.DFM}

procedure TfSplashAdm.FormShow(Sender: TObject);
var contador: integer;
begin
    varSplashAdm := 'ADM';
{    contador := 20;
    FlatGauge1.MaxValue := 0;
    For contador := 1 to 50 do
    begin
     FlatGauge1.Progress := FlatGauge1.Progress + 1;
    end;}
end;

function TfSplashAdm.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

end.
