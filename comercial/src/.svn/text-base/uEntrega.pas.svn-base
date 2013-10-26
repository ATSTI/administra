unit uEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvLabel, ExtCtrls, MMJPanel,
  SqlExpr, DB, DBClient;

type
  TfEntrega = class(TForm)
    MMJPanel7: TMMJPanel;
    JvLabel6: TJvLabel;
    btn1: TBitBtn;
    cbb1: TComboBox;
    procedure btn1Click(Sender: TObject);
  private
    sqlUpdate  : TSqlQuery;
    v_SqlTexto : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEntrega: TfEntrega;

implementation

uses UDm, UDM_MOV;

{$R *.dfm}

procedure TfEntrega.btn1Click(Sender: TObject);
begin
  if (cbb1.Text = '') then
  begin
    ShowMessage('Informe o nome do Entregador');
    Exit;
  end;
  try
    sqlUpdate :=  TSqlQuery.Create(nil);
    sqlUpdate.SQLConnection := dm.sqlsisAdimin;
    v_SqlTexto := 'UPDATE FROM MOVIMENTO WHERE ENTREGA = ' + QuotedStr(cbb1.Text);
    v_SqlTexto := v_SqlTexto + ' AND CODMOVIMENTO = ' + IntToStr(DM_MOV.ID_DO_MOVIMENTO);
    sqlUpdate.SQL.Add(v_SqlTexto);
    sqlUpdate.Open;
  finally
    sqlUpdate.Free;
  end;
end;

end.
