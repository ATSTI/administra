unit uSplash_mat;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg, MMJPanel, TFlatProgressBarUnit,
  TFlatGaugeUnit, EOneInst;

type
  TfSplash_mat = class(TForm)
    Image1: TImage;
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EvOneInstance1: TEvOneInstance;
    procedure FormShow(Sender: TObject);
  end;

var
  fSplash_mat: TfSplash_mat;
  varSplashMat : string;

implementation

uses UDm;

{$R *.DFM}

procedure TfSplash_mat.FormShow(Sender: TObject);
var contador: integer;
begin
    varSplashMat := 'MATERIAIS';
end;

end.
