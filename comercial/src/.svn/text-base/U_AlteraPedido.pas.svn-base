unit U_AlteraPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExStdCtrls, JvEdit, JvValidateEdit, StdCtrls, Mask, DBCtrls,
  JvSpeedButton, JvExControls, JvLabel, ExtCtrls, MMJPanel, Menus;

type
  TF_AlteraPedido = class(TForm)
    MMJPanel8: TMMJPanel;
    JvLabel1: TJvLabel;
    MMJPanel5: TMMJPanel;
    MMJPanel1: TMMJPanel;
    JvSpeedButton4: TJvSpeedButton;
    JvSpeedButton5: TJvSpeedButton;
    DBEdit2: TDBEdit;
    JvLabel2: TJvLabel;
    JvQtde: TJvValidateEdit;
    JvUnitario: TJvValidateEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    PopupMenu1: TPopupMenu;
    Salvar1: TMenuItem;
    F9Voltar1: TMenuItem;
    procedure JvSpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JvSpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AlteraPedido: TF_AlteraPedido;

implementation

uses UDM_MOV, uTerminal2;

{$R *.dfm}

procedure TF_AlteraPedido.JvSpeedButton4Click(Sender: TObject);
begin
  DM_MOV.c_movdetQUANTIDADE.AsFloat := JvQtde.AsFloat;
  DM_MOV.c_movdetPRECO.AsFloat := JvUnitario.AsFloat;
  DM_MOV.c_movdetvalortotal.AsFloat := DM_MOV.c_movdetQUANTIDADE.AsFloat * DM_MOV.c_movdetPRECO.AsFloat;
  DM_MOV.c_movdet.ApplyUpdates(0);
  fTerminal2.JvTotal.Value := DM_MOV.c_movdettotalpedido.Value;
  close;
end;

procedure TF_AlteraPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TF_AlteraPedido.JvSpeedButton5Click(Sender: TObject);
begin
  Close;
end;

end.
