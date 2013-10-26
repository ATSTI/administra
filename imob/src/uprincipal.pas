unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, XPMenu;

type
  TfPrincipal = class(TForm)
    statusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Inquilinos1: TMenuItem;
    Proprietrios1: TMenuItem;
    Interessados1: TMenuItem;
    Outros1: TMenuItem;
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    Imveis1: TMenuItem;
    DeLocao1: TMenuItem;
    DeVenda1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

end.
