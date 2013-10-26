unit LoginWindow_U;

interface

{$I 'UserControl.inc'}

uses
{$IFDEF DELPHI5_UP}
  Variants,
{$ENDIF}
  Buttons,
  Classes,
  Controls,
  Dialogs,
  ExtCtrls,
  Forms,
  Graphics,
  Math,
  Messages,
  StdCtrls,
  SysUtils,
  UCBase,
  Windows, ComCtrls;

type
  TfrmLoginWindow = class(TForm)
    PTop:        TPanel;
    ImgTop:      TImage;
    PLeft:       TPanel;
    imgLeft:     TImage;
    PBottom:     TPanel;
    ImgBottom:   TImage;
    Panel1:      TPanel;
    PLogin:      TPanel;
    LbUsuario:   TLabel;
    LbSenha:     TLabel;
    EditUsuario: TEdit;
    EditSenha:   TEdit;
    btOK:        TBitBtn;
    BtCancela:   TBitBtn;
    lbEsqueci:   TLabel;
    StatusBar: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditUsuarioChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure BotoesClickVisualizacao(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  public
    FUserControl: TUserControl;
  end;

implementation

uses UDm;

{$R *.dfm}

procedure TfrmLoginWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  senha_user := EditSenha.Text;
  Action := caFree;
end;

procedure TfrmLoginWindow.BotoesClickVisualizacao(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TfrmLoginWindow.BtCancelaClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLoginWindow.FormShow(Sender: TObject);
var
  w, h: Integer;
begin
  w := Max(ImgTop.Width, ImgLeft.Width + PLogin.Width);
  w := Max(w, ImgBottom.Width);
  h := Max(ImgLeft.Height + ImgTop.Height + ImgBottom.Height, ImgTop.Height + PLogin.Height + ImgBottom.Height);

  Width  := w;
  Height := h + 28;
  If FUserControl.Login.MaxLoginAttempts > 0 then
    Begin
      Height := Height + 19; // by vicente barros leonel and Petrus van Breda
      StatusBar.Panels[ 0 ].Text := FUserControl.UserSettings.Login.LabelTentativa;
      StatusBar.Panels[ 2 ].Text := FUserControl.UserSettings.Login.LabelTentativas;
    End;

  // Topo
  PTop.Height     := ImgTop.Height;
  ImgTop.AutoSize := False;
  ImgTop.Align    := alClient;
  ImgTop.Center   := True;

  //Centro
  PLeft.Width      := ImgLeft.Width;
  ImgLeft.AutoSize := False;
  ImgLeft.Align    := alClient;
  ImgLeft.Center   := True;

  //Bottom
  PBottom.Height     := ImgBottom.Height;
  ImgBottom.AutoSize := False;
  ImgBottom.Align    := alClient;
  ImgBottom.Center   := True;

  PTop.Visible    := ImgTop.Picture <> nil;
  PLeft.Visible   := ImgLeft.Picture <> nil;
  PBottom.Visible := ImgBottom.Picture <> nil;

  if FUserControl.Login.GetLoginName = lnUserName then
    EditUsuario.Text := FUserControl.GetLocalUserName;
  if FUserControl.Login.GetLoginName = lnMachineName then
    EditUsuario.Text := FUserControl.GetLocalComputerName;
  if FUserControl.Login.GetLoginName <> lnNone then
    EditSenha.SetFocus;
end;

procedure TfrmLoginWindow.EditUsuarioChange(Sender: TObject);
begin
  lbEsqueci.Enabled := Length(EditUsuario.Text) > 0;
end;

procedure TfrmLoginWindow.FormKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    End;
end;

procedure TfrmLoginWindow.FormActivate(Sender: TObject);
begin
 EditUsuario.CharCase := Self.FUserControl.Login.CharCaseUser;
 EditSenha.CharCase   := Self.FUserControl.Login.CharCasePass; { Por Vicente Barros Leonel }
end;

end.

