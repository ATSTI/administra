unit uCadRG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatButtonUnit, StdCtrls, JvExControls, JvGradient, Mask,
  Buttons;

type
  TfCadRG = class(TForm)
    Button1: TButton;
    JvGradient2: TJvGradient;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadRG: TfCadRG;

implementation

{$R *.dfm}

procedure TfCadRG.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
