unit uEmpresaProcura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, StdCtrls,
  DB, XPMenu, SqlExpr, Menus, DBClient, Provider;

type
  TfEmpresaProcura = class(TForm)
    MMJPanel1: TMMJPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    sds: TSQLDataSet;
    XPMenu1: TXPMenu;
    DtSrc: TDataSource;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODIGO: TIntegerField;
    cdsEMPRESA: TStringField;
    cdsRAZAO: TStringField;
    cdsCNPJ_CPF: TStringField;
    PopupMenu1: TPopupMenu;
    SQLDataSet1: TSQLDataSet;
    XPMenu2: TXPMenu;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    PopupMenu2: TPopupMenu;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtCNPJ: TEdit;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmpresaProcura: TfEmpresaProcura;

implementation

uses UDm;

{$R *.dfm}

procedure TfEmpresaProcura.SpeedButton1Click(Sender: TObject);
var
  sql, sql1 : string;
begin
    if sds.Active then
      sds.Close;
    sds.CommandText := '';

   sql := 'Select * from Empresa ';

   if edtCodigo.Text <> '' then
    if sql1 = '' then
       sql1 := sql1 + ' WHERE CODIGO = '
    else
      sql1 := sql1 + ' AND CODIGO = ';
      sql1 := sql1 + edtCodigo.Text;

   if edtNome.Text <> '' then
    if sql1 = '' then
       sql1 := sql1 + ' WHERE EMPRESA = '
    else
      sql1 := sql1 + ' AND EMPRESA = ';
      sql1 := sql1 + edtNome.Text;

   if edtCNPJ.Text <> '' then
    if sql1 = '' then
       sql1 := sql1 + ' WHERE CNPJ_CPF = '
    else
      sql1 := sql1 + ' AND CNPJ_CPF = ';
      sql1 := sql1 + edtNome.Text;

    sds.CommandText := sql + sql1;

    sds.Open;
    if cds.Active then
      cds.Close;
    cds.Open;  


end;

end.
