unit ufDlgLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, XPMenu, MMJPanel, FMTBcd, DBClient,
  Provider, DB, SqlExpr, DBxpress, EOneInst, UCBase;

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
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    EvOneInstance1: TEvOneInstance;
    sPermissao: TSQLDataSet;
    sPermissaoUCIDUSER: TIntegerField;
    sPermissaoUCUSERNAME: TStringField;
    sPermissaoUCLOGIN: TStringField;
    sPermissaoUCPASSWORD: TStringField;
    sPermissaoUCPROFILE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
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

implementation

uses  uDm, uDmApp, uAtsAdmin, uControle, uVendaFinalizar;

{$R *.dfm}

procedure TfDlgLogin.FormCreate(Sender: TObject);
begin
  Tentativas := 0;
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

procedure TfDlgLogin.BitBtnOKClick(Sender: TObject);
begin
  usuautorizacao := 0;
  if (fAtsAdmin.UserControlComercial.VerificaLogin(EdtLogin.Text,edtSenha.Text) = 0) then
  begin
   sPermissao.Close;
   sPermissao.Params[0].AsString := EdtLogin.Text;
   sPermissao.Open;
   usuautorizacao := sPermissaoUCIDUSER.AsInteger;
   sPermissao.Close;
   close;
  end
  else
  begin
    Application.MessageBox('Usuário ou Senha incorreta', 'Erro', MB_ICONERROR);
    edtLogin.Text := '';
    edtSenha.Text := '';
    edtLogin.SetFocus;
    Tentativas := Tentativas + 1;
    if (Tentativas > 3) then
      Exit;
  end;
end;

procedure TfDlgLogin.FormShow(Sender: TObject);
begin
  EdtLogin.SetFocus;
end;

procedure TfDlgLogin.BitBtnCancelarClick(Sender: TObject);
begin
   // fControle.sitacao  := 'Cancelou';
end;

end.
