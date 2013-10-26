unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, MMJPanel;

type
  TfSobre = class(TForm)
    MMJPanel2: TMMJPanel;
    MMJPanel1: TMMJPanel;
    BitBtn1: TBitBtn;
    ProductName: TLabel;
    ProgramIcon: TImage;
    Label4: TLabel;
    Version: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation

{$R *.dfm}

end.
