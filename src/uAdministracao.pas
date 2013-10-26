unit uAdministracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMenu, Menus, ComCtrls, DB;

type
  TfAdministracao = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastro1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    Backup1: TMenuItem;
    Acessos1: TMenuItem;
    Parmetros1: TMenuItem;
    Agenda1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    CadEmpresas1: TMenuItem;
    CadUsurios1: TMenuItem;
    SrieNF1: TMenuItem;
    Fiscais1: TMenuItem;
    CFOP1: TMenuItem;
    EstadosCFOP1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    StatusBar1: TStatusBar;
    procedure CadEmpresas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadUsurios1Click(Sender: TObject);
    procedure SrieNF1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdministracao: TfAdministracao;

implementation

uses uEmpresa, uPrincipal, uUsuarioCadastro, uSerieNF;

{$R *.dfm}

procedure TfAdministracao.CadEmpresas1Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Application);
  try
    fEmpresa.ShowModal;
  finally
    fEmpresa.Free;
  end;
end;

procedure TfAdministracao.FormCreate(Sender: TObject);
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

procedure TfAdministracao.CadUsurios1Click(Sender: TObject);
begin
  fUsuarioCadastro := TfUsuarioCadastro.Create(Application);
  try
    fUsuarioCadastro.ShowModal;
  finally
    fUsuarioCadastro.Free;
  end;
end;

procedure TfAdministracao.SrieNF1Click(Sender: TObject);
begin
  fSerieNF := TfSerieNF.Create(Application);
  try
    fSerieNF.ShowModal;
  finally
    fSerieNF.Free;
  end;
end;

end.
