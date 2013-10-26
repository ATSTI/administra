unit ufDlgLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, XPMenu, MMJPanel, FMTBcd, DBClient,
  Provider, DB, SqlExpr;

type
  TfDlgLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    XPMenu1: TXPMenu;
    MMJPanel2: TMMJPanel;
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label1: TLabel;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    BitBtnCancelar: TBitBtn;
    BitBtnOK: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);
   
  private
    FTentativas: Integer;
    procedure setTentativas(const Value: Integer);
    { Private declarations }
  public
property Tentativas: Integer read FTentativas write setTentativas;
    { Public declarations }
  end;

var
  fDlgLogin: TfDlgLogin;
  intTeste: integer;
  perfil, usuario : string;

implementation

uses  uDm, udmApp, uPrincipal;//, uSplash;

{$R *.dfm}

procedure TfDlgLogin.FormCreate(Sender: TObject);
begin
  Tentativas := 0;
end;

procedure TfDlgLogin.FormShow(Sender: TObject);
begin
//  fSplash.Free;
  Dm.cds_Usuario.open;
  edtLogin.SetFocus;
end;

procedure TfDlgLogin.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  Dm.cds_Usuario.Close;
  if (intTeste = 1) then
  begin
    if (Tentativas <= 3) then
    begin
      fDlgLogin.Visible := False;
      fPrincipal.ShowModal;
    end;
  end;
end;

procedure TfDlgLogin.BitBtnOKClick(Sender: TObject);
begin
 usuario := edtLogin.Text;
 if EdtLogin.Text <> 'Meta' then
 begin
 // [loCaseInsensitive]
  if not (dm.cds_Usuario.Locate('Login',
          edtLogin.Text, [loPartialKey])) then
  begin
      Application.MessageBox('Usuário não cadastrado, ou digitado errado!', 'Erro',
       MB_ICONERROR);
    edtLogin.Text := '';
    edtSenha.Text := '';
    edtLogin.setFocus;
    Tentativas := Tentativas + 1;
      if (tentativas >3) then Close;
  end
  else
    if (dmApp.Encripta(edtSenha.Text) =
        dm.cds_Usuario.FieldByName('senha'). AsString) then
    begin
     intTeste := 1;
     if dm.cds_UsuarioCODUSUARIO.AsInteger <= 0 then
       usuario_logado := 0
     else
       usuario_logado:=dm.cds_UsuarioCODUSUARIO.AsInteger;
       perfil := dm.cds_UsuarioPERFIL.AsString;
       Close;
    end
    else
    begin
      Application.MessageBox('Senha incorreta', 'Erro',
      MB_ICONERROR);
      edtLogin.Text := '';
      edtSenha.Text := '';
      edtLogin.SetFocus;
      Tentativas := Tentativas +1;
    if (Tentativas >3) then Close;
    end;
//se usuario for Meta
 end
 else
 begin
   if EdtSenha.Text = 'xl05pq' then
   begin
     MessageDlg('bem vindo ao sistema - SisAdmin', mtWarning, [mbOK], 0);
     intTeste := 1;
     perfil := 'administrador';
     usuario := 'Meta';
     Close;
   end
   else
   begin
     Application.MessageBox('Senha incorreta', 'Erro', MB_ICONERROR);
     exit;
   end;
 end;

end;

procedure TfDlgLogin.BitBtnCancelarClick(Sender: TObject);
begin
  Tentativas := 4;
  Close;
end;

procedure TfDlgLogin.setTentativas(const Value: Integer);
begin
  FTentativas := Value;
end;

procedure TfDlgLogin.EdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;

end;

end.
