unit uComercial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, XPMenu, dxCore, dxButton, ExtCtrls, MMJPanel,DB,
  Buttons, StdCtrls;

type
  TfComercial = class(TForm)
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes: TMenuItem;
    Fornecedores: TMenuItem;
    produtos: TMenuItem;
    usoprod: TMenuItem;
    comissao: TMenuItem;
    Agenda: TMenuItem;
    Lanamentos1: TMenuItem;
    compras: TMenuItem;
    venda: TMenuItem;
    NotasFiscais: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    StatusBar1: TStatusBar;
    transportadoras: TMenuItem;
    MMJPanel1: TMMJPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    MMJPanel2: TMMJPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    Terminal: TMenuItem;
    rocadeusurio1: TMenuItem;
    Sair1: TMenuItem;
    Vendas1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure vendaClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fComercial: TfComercial;

implementation

uses uPrincipal, uVendas, ufprocura_prod;

{$R *.dfm}

procedure TfComercial.FormCreate(Sender: TObject);
begin
  fPrincipal.cds_parametro.Locate('PARAMETRO', 'VIDEO',[loPartialKey]);
  videoW := fPrincipal.cds_parametroD1.AsString;
  videoH := fPrincipal.cds_parametroD2.AsString;

  if videoW = '800' then
    fPrincipal.Position := poDesigned;

  if videoW <> '' then
  begin
   ScreenWidth := StrToInt(videoW);
   ScreenHeight := StrToInt(videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end; 
end;

procedure TfComercial.vendaClick(Sender: TObject);
begin
  fVendas.ShowModal;
end;

procedure TfComercial.SpeedButton3Click(Sender: TObject);
begin
   close;
end;

procedure TfComercial.dxButton5Click(Sender: TObject);
begin
  fProcura_prod.ShowModal;
end;

end.
