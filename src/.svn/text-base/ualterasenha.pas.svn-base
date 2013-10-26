unit uAlteraSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxCore, dxButton, StdCtrls, DB, XPMenu;

type
  TfAlteraSenha = class(TForm)
    Label1: TLabel;
    leAtual: TEdit;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    leNova: TLabeledEdit;
    leConfirmacao: TLabeledEdit;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure leAtualExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAlteraSenha: TfAlteraSenha;

implementation

uses UDM, uDmApp;

{$R *.dfm}

procedure TfAlteraSenha.dxButton1Click(Sender: TObject);
begin
  if leNova.Text <> leConfirmacao.Text then
  begin
    Application.MessageBox('Nova senha e confirmação são' + ' diferentes. Por Favor,' + ' redigite', 'Erro', MB_ICONERROR);
    leNova.Text := '';
    leConfirmacao.Text := '';
    leNova.SetFocus;
    exit;
  end;
  with dm.cds_Usuario do
  begin
    Locate('Login', dm.cds_UsuarioLOGIN.AsString, [loCaseInsensitive]);
    Edit;
    FieldByName('Senha').AsString := dmApp.Encripta(leNova.Text);
    ApplyUpdates(0);
    end;
    Application.MessageBox('Senha alterada com sucesso.', 'Aviso', MB_ICONEXCLAMATION);
end;

procedure TfAlteraSenha.dxButton2Click(Sender: TObject);
begin
  if dm.cds_Usuario.State in [dsInsert, dsEdit] then
    dm.cds_Usuario.Cancel;
    close;
end;

procedure TfAlteraSenha.leAtualExit(Sender: TObject);
begin
  if (dmApp.Encripta(leAtual.Text) <>
    dm.cds_Usuario.FieldByName('senha'). AsString) then
  begin
   Application.MessageBox('Senha incorreta', 'Erro');
   leAtual.Text:='';
   leAtual.SetFocus;
  end;
  leNova.Text:='';
  leConfirmacao.Text:='';
end;

procedure TfAlteraSenha.FormShow(Sender: TObject);
begin
  if not dm.cds_Usuario.Active then
    dm.cds_Usuario.Open;
  leAtual.SetFocus;
end;

procedure TfAlteraSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;
end;

end.
