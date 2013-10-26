unit uFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, XPMenu;

type
  TfFinanceiro = class(TForm)
    XPMenu1: TXPMenu;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    StatusBar1: TStatusBar;
    Cadastros1: TMenuItem;
    Bancos1: TMenuItem;
    PlanodeContas1: TMenuItem;
    ransportadoras1: TMenuItem;
    Lanamentos1: TMenuItem;
    Restries1: TMenuItem;
    AssociaoComercial1: TMenuItem;
    SPC1: TMenuItem;
    ContasPagar1: TMenuItem;
    ContasReceber1: TMenuItem;
    Receitas1: TMenuItem;
    Despesas1: TMenuItem;
    MovimentaoFinanceira1: TMenuItem;
    EmissodeNotasFiscais1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Agenda1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFinanceiro: TfFinanceiro;

implementation

{$R *.dfm}

end.
