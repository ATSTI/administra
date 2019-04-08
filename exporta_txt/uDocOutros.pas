unit uDocOutros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfDocOutros = class(TForm)
    Label1: TLabel;
    edtNFeChave: TEdit;
    btnOk: TButton;
    btnFechar: TButton;
    btnEdita: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDocOutros: TfDocOutros;

implementation

{$R *.dfm}

end.
