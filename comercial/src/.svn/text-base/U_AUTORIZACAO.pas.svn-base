unit U_AUTORIZACAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, EOneInst, SqlExpr, Provider, DB, DBClient, XPMenu,
  StdCtrls, Buttons, MMJPanel, ExtCtrls;

type
  TF_AUTORIZACAO = class(TForm)
    Panel2: TPanel;
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label1: TLabel;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    Panel1: TPanel;
    MMJPanel2: TMMJPanel;
    BitBtnCancelar: TBitBtn;
    BitBtnOK: TBitBtn;
    s_parametro: TSQLDataSet;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    S_PERFIL: TSQLDataSet;
    S_PERFILUCIDUSER: TIntegerField;
    S_USER: TSQLDataSet;
    S_USERUCPROFILE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
  private
    PERFIL01, PERFIL02, PERFIL03, PERFIL04, user_logado : String;
    id_01, id_02, id_03, id_04, id_perfil : Integer;
    FTentativas: Integer;
    procedure setTentativas(const Value: Integer);  
    { Private declarations }
  public
   property Tentativas: Integer read FTentativas write setTentativas;  
    { Public declarations }
  end;

var
  F_AUTORIZACAO: TF_AUTORIZACAO;
  EXISTEPERFIL : string;

implementation

uses UDm, uAtsAdmin;

{$R *.dfm}

{ TForm2 }

procedure TF_AUTORIZACAO.setTentativas(const Value: Integer);
begin
  FTentativas := Value;
end;

procedure TF_AUTORIZACAO.FormCreate(Sender: TObject);
begin
  if (s_parametro.Active) then
   s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'PERFIL';
  s_parametro.Open;
  if (not s_parametro.IsEmpty) then
  begin
     EXISTEPERFIL := 'TRUE';
     if ((s_parametroD1.IsNull) or (s_parametroD1.AsString = ''))then
       PERFIL01 := ''
     else
       PERFIL01 := s_parametroD1.AsString;
     if ((s_parametroD2.IsNull) or (s_parametroD2.AsString = ''))then
       PERFIL02 := ''
     else
       PERFIL02 := s_parametroD2.AsString;
     if ((s_parametroD3.IsNull) or (s_parametroD3.AsString = ''))then
       PERFIL03 := ''
     else
       PERFIL03 := s_parametroD3.AsString;
     if ((s_parametroD4.IsNull) or (s_parametroD4.AsString = ''))then
       PERFIL04 := ''
     else
       PERFIL04 := s_parametroD4.AsString;
     s_parametro.Close;
  end
  else
  begin
     ShowMessage('Não foram criados os Parametros para Aprovação..');
     EXISTEPERFIL := 'FALSE';
     Exit;
  end;

  id_01 := 0;
  id_02 := 0;
  id_03 := 0;
  id_04 := 0;

  if (PERFIL01 <> '') then
  begin
    if (S_PERFIL.Active) then
      S_PERFIL.Close;
    S_PERFIL.Params[0].Clear;
    S_PERFIL.Params[0].AsString := PERFIL01;
    S_PERFIL.Open;
    if (not S_PERFIL.IsEmpty) then
      id_01 := S_PERFILUCIDUSER.AsInteger;
    S_PERFIL.Close;
  end;
  if (PERFIL02 <> '') then
  begin
    if (S_PERFIL.Active) then
      S_PERFIL.Close;
    S_PERFIL.Params[0].Clear;
    S_PERFIL.Params[0].AsString := PERFIL02;
    S_PERFIL.Open;
    if (not S_PERFIL.IsEmpty) then
      id_02 := S_PERFILUCIDUSER.AsInteger;
    S_PERFIL.Close;
  end;

  if (PERFIL03 <> '') then
  begin
    if (S_PERFIL.Active) then
      S_PERFIL.Close;
    S_PERFIL.Params[0].Clear;
    S_PERFIL.Params[0].AsString := PERFIL03;
    S_PERFIL.Open;
    if (not S_PERFIL.IsEmpty) then
      id_03 := S_PERFILUCIDUSER.AsInteger;
    S_PERFIL.Close;
  end;

  if (PERFIL04 <> '') then
  begin
    if (S_PERFIL.Active) then
      S_PERFIL.Close;
    S_PERFIL.Params[0].Clear;
    S_PERFIL.Params[0].AsString := PERFIL04;
    S_PERFIL.Open;
    if (not S_PERFIL.IsEmpty) then
      id_04 := S_PERFILUCIDUSER.AsInteger;
    S_PERFIL.Close;
  end;

  Tentativas := 0;

end;

procedure TF_AUTORIZACAO.EdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
     key:= #0;
     SelectNext((Sender as TwinControl),True,True);
   end;
end;

procedure TF_AUTORIZACAO.FormShow(Sender: TObject);
begin
  EdtLogin.SetFocus;
  DM.RESULTADO_APROVA := False;  
end;

procedure TF_AUTORIZACAO.BitBtnOKClick(Sender: TObject);
begin
  if (fAtsAdmin.UserControlComercial.VerificaLogin(EdtLogin.Text,edtSenha.Text) = 0) then
  begin
    user_logado := EdtLogin.Text;
    if (S_USER.Active) then
      S_USER.Close;
    S_USER.Params[0].AsString := user_logado;
    S_USER.Open;
    if (not S_USER.IsEmpty) then
      id_perfil := S_USERUCPROFILE.AsInteger
    else
      id_perfil := 0;
    if ((id_perfil = id_01) or (id_perfil = id_02) or (id_perfil = id_03) or (id_perfil = id_04))then
    begin
       DM.RESULTADO_APROVA := True;
       close;
    end
    else
    begin
       DM.RESULTADO_APROVA := False;
       Application.MessageBox('Usuário sem autorização', 'Erro', MB_ICONERROR);
       edtLogin.Text := '';
       edtSenha.Text := '';
       edtLogin.SetFocus;
       Tentativas := Tentativas + 1;
       if (Tentativas > 3) then
        Exit;
    end;
  end
  else
  begin
    Application.MessageBox('Usuário sem autorização ', 'Erro', MB_ICONERROR);
    edtLogin.Text := '';
    edtSenha.Text := '';
    edtLogin.SetFocus;
    Tentativas := Tentativas + 1;
    if (Tentativas > 3) then
      Exit;
  end;

end;

end.
