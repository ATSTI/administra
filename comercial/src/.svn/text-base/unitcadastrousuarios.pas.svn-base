unit UnitCadastroUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, XPMenu, ExtCtrls, Grids, DBGrids, DB,
  FMTBcd, DBClient, Provider, SqlExpr;

type
  TFormCadastroUsuarios = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    bbtnExcluir: TBitBtn;
    bbtnFechar: TBitBtn;
    XPMenu1: TXPMenu;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DtSrc: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure bbtnExcluirClick(Sender: TObject);
    procedure bbtnFecharClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuarios: TFormCadastroUsuarios;

implementation

uses UDM, UfDlgLogin, uNovoUsuario, uAlteraSenha;

{$R *.dfm}

procedure TFormCadastroUsuarios.FormShow(Sender: TObject);
begin
   if not dm.cds_Usuario.Active then
     dm.cds_Usuario.Open;
end;

procedure TFormCadastroUsuarios.bbtnExcluirClick(Sender: TObject);
begin
  dm.cds_Usuario.Delete;
  dm.cds_Usuario.ApplyUpdates(0);
end;

procedure TFormCadastroUsuarios.bbtnFecharClick(Sender: TObject);
begin
//**** abre acesso p/usuario logado ****
{   if dm.cds_acesso.Active then
    dm.cds_acesso.Close;
   dm.cds_acesso.Params[0].AsInteger := usuarioLogado;
   dm.cds_acesso.Open;
  dm.cds_senha.Close;}
end;

procedure TFormCadastroUsuarios.BitBtn1Click(Sender: TObject);
begin
  dm.cds_Usuario.Append;
  application.CreateForm(TfNovoUsuario, fNovoUsuario);
  fNovoUsuario.ShowModal;
  fNovoUsuario.Free;
end;

procedure TFormCadastroUsuarios.BitBtn2Click(Sender: TObject);
begin
  fAlteraSenha:=TfAlteraSenha.Create(Application);
  try
    fAlteraSenha.ShowModal;
  finally
    fAlteraSenha.Free;
  end;
end;

procedure TFormCadastroUsuarios.BitBtn3Click(Sender: TObject);
begin
{  fGerencia_Acessos := TfGerencia_Acessos.Create(Application);
  try
    fGerencia_Acessos.ShowModal;
  finally
    fGerencia_Acessos.Free;
  end;}
end;

procedure TFormCadastroUsuarios.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if not odd(dm.cds_Usuario.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;

end;

end.
