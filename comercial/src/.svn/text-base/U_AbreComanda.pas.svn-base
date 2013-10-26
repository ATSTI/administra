unit U_AbreComanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, JvExControls,
  JvLabel, ExtCtrls, MMJPanel, FMTBcd, DB, SqlExpr;

type
  Tf_AbreComanda = class(TForm)
    MMJPanel7: TMMJPanel;
    JvLabel6: TJvLabel;
    edtPedido: TJvCalcEdit;
    s_movimento: TSQLDataSet;
    s_movimentoCODMOVIMENTO: TIntegerField;
    procedure edtPedidoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_AbreComanda: Tf_AbreComanda;

implementation

uses UDm, UDM_MOV;

{$R *.dfm}

procedure Tf_AbreComanda.edtPedidoKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
      DM_MOV.ID_DO_MOVIMENTO := 0;
      if (s_movimento.Active) then
         s_movimento.Close;
      s_movimento.Params[0].AsInteger := edtPedido.AsInteger;
      s_movimento.Open;
      if (s_movimento.IsEmpty) then
      begin
        ShowMessage('Pedido não localizado');
        edtPedido.Text := '';
        s_movimento.Close;
        Exit;
      end
      else
      begin
        DM_MOV.ID_DO_MOVIMENTO := s_movimentoCODMOVIMENTO.AsInteger;
      end;
      s_movimento.Close;
      Close;
   end;
end;

end.
