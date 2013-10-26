unit uParametrosTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Mask, DBCtrls, DB, DBClient,
  Provider, SqlExpr;

type
  TfParametrosTerminal = class(TForm)
    sParametro: TSQLDataSet;
    sParametroD1: TStringField;
    sParametroD2: TStringField;
    sParametroD3: TStringField;
    sParametroD4: TStringField;
    sParametroD5: TStringField;
    sParametroD6: TStringField;
    pParametro: TDataSetProvider;
    cParametro: TClientDataSet;
    DataSource1: TDataSource;
    cParametroD1: TStringField;
    cParametroD2: TStringField;
    cParametroD3: TStringField;
    cParametroD4: TStringField;
    cParametroD5: TStringField;
    cParametroD6: TStringField;
    sParametroD7: TStringField;
    sParametroD8: TStringField;
    sParametroD9: TStringField;
    cParametroD7: TStringField;
    cParametroD8: TStringField;
    cParametroD9: TStringField;
    sParametroDADOS: TStringField;
    cParametroDADOS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    sParametroPARAMETRO: TStringField;
    cParametroPARAMETRO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fParametrosTerminal: TfParametrosTerminal;

implementation

uses UDm;

{$R *.dfm}

procedure TfParametrosTerminal.FormShow(Sender: TObject);
begin
  if (not cParametro.Active) then
     cParametro.Open;
  cParametro.Edit;
end;

procedure TfParametrosTerminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     cParametro.ApplyUpdates(0);
     cParametro.Close;
end;

procedure TfParametrosTerminal.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
