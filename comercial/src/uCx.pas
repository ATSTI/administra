unit uCx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Mask, DBCtrls, DB, SqlExpr, Provider,
  DBClient, Grids, DBGrids, Menus;

type
  TfCx = class(TForm)
    cdsCx: TClientDataSet;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1ID: TIntegerField;
    cdsCxID: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btnver: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Sair1: TMenuItem;
    procedure btnverClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCx: TfCx;

implementation

uses UDm, uCorreio;

{$R *.dfm}

procedure TfCx.btnverClick(Sender: TObject);
begin
 if(cdsCx.Active) then
 cdsCx.Close;
 cdsCx.Open;
 
end;

procedure TfCx.BitBtn1Click(Sender: TObject);
begin
  fCorreio.DBEdit3.Text := DBEdit1.Text;   
  fCx.Close;
end;

end.
