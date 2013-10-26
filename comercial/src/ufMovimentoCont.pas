unit ufMovimentoCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids;

type
  TfMovimentoCont = class(TfPai)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovimentoCont: TfMovimentoCont;

implementation

uses UDm;

{$R *.dfm}

end.
