unit uComplementar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls;

type
  TfComplementar = class(TForm)
    btnSair: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fComplementar: TfComplementar;

implementation

uses UDMNF;

{$R *.dfm}

procedure TfComplementar.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
