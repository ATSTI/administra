unit ufNFeExe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfNFeExe = class(TForm)
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNFeExe: TfNFeExe;

implementation

{$R *.dfm}

procedure TfNFeExe.FormShow(Sender: TObject);
begin
  WinExec('Nfe.exe', SW_NORMAL);
  Windows.SetParent(FindWindow(nil,'NFe'),panel1.handle);
  Close;
end;

end.
