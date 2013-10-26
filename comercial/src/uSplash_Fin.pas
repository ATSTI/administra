unit uSplash_Fin;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg, MMJPanel, TFlatProgressBarUnit,
  TFlatGaugeUnit;

type
  TfSplash_Fin = class(TForm)
    Image1: TImage;
    MMJPanel1: TMMJPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
  end;

var
  fSplash_Fin: TfSplash_Fin;
  varSplash1 : string;

implementation

uses UDm;

{$R *.DFM}

procedure TfSplash_Fin.FormShow(Sender: TObject);
var contador: integer;
begin
    varSplash1 := 'FINANCEIRO';
end;


end.
