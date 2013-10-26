unit ufprocura_prod1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufprocura_prod, FMTBcd, rpcompobase, rpvclreport, XPMenu, Menus,
  DB, DBClient, Provider, SqlExpr, Buttons, MMJPanel, Grids, DBGrids,
  EDBFind, StdCtrls, DBCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, JvExControls, JvLabel;

type
  TfProcura_prod1 = class(TfProcura_prod)
    JvLabel1: TJvLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcura_prod1: TfProcura_prod1;

implementation

uses uProduto_Mat_prima;

{$R *.dfm}

procedure TfProcura_prod1.BitBtn3Click(Sender: TObject);
begin
  close;
  //inherited;

end;

procedure TfProcura_prod1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 { if (Panel1.Visible = True) then
    if (var_F = 'mat_prima') then
    begin
         fProduto_Mat_prima.cdsMtCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
         fProduto_Mat_prima.cdsMtCODPRO.AsString := cds_procCODPRO.AsString;
         fProduto_Mat_prima.cdsMtPRODUTO.Value := cds_procPRODUTO.Value;
    end;
  }
  //inherited;

end;

procedure TfProcura_prod1.BitBtn1Click(Sender: TObject);
begin
  //inherited;
  if (not cds_proc.Active) then
    cds_proc.Open;
end;

procedure TfProcura_prod1.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfProcura_prod1.FormShow(Sender: TObject);
begin
  //inherited;

end;

procedure TfProcura_prod1.BitBtn4Click(Sender: TObject);
begin
 // inherited;
   fProduto_Mat_prima.cdsMtCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
   fProduto_Mat_prima.cdsMtCODPRO.AsString := cds_procCODPRO.AsString;
   fProduto_Mat_prima.cdsMtPRODUTO.Value := cds_procPRODUTO.Value;
   fProduto_Mat_prima.cdsMtQTDEUSADA.Value := Edit3.Value;
   fProduto_Mat_prima.btnGravar.Click;
   BitBtn4.Enabled := false;
   BitBtn5.Enabled := true;
   BitBtn5.SetFocus;

end;

procedure TfProcura_prod1.BitBtn5Click(Sender: TObject);
begin
 // inherited;
    fProduto_Mat_prima.btnIncluir.Click;
    BitBtn5.Enabled := false;
    BitBtn4.Enabled := true;
    EvDBFind1.SetFocus;
end;

procedure TfProcura_prod1.BitBtn6Click(Sender: TObject);
begin
 // inherited;
   fProduto_Mat_prima.cdsMtCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
   fProduto_Mat_prima.cdsMtCODPRO.AsString := cds_procCODPRO.AsString;
   fProduto_Mat_prima.cdsMtPRODUTO.Value := cds_procPRODUTO.Value;
   fProduto_Mat_prima.cdsMtQTDEUSADA.Value := Edit3.Value;
   close;
end;

procedure TfProcura_prod1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;
 if (key = #13) then
   BitBtn6.Click;
end;

end.
