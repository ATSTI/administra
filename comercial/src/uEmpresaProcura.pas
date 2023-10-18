unit uEmpresaProcura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, StdCtrls,
  DB, XPMenu, SqlExpr, Menus, DBClient, Provider, JvExControls, JvLabel;

type
  TfEmpresaProcura = class(TForm)
    MMJPanel1: TMMJPanel;
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
    XPMenu2: TXPMenu;
    DataSource1: TDataSource;
    PopupMenu2: TPopupMenu;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    edtCodigo: TEdit;
    Label4: TLabel;
    edtNome: TEdit;
    Label6: TLabel;
    edtCNPJ: TEdit;
    btnProcurar: TBitBtn;
    BitBtn9: TBitBtn;
    btnSair: TBitBtn;
    Label10: TJvLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    filtrado : String;
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
  if (cds.Active) then
    cds.Close;
  cds.CommandText := '';

  sql := 'Select * from Empresa ';

  if (edtCodigo.Text <> '') then
  begin
    if (sql1 = '') then
    begin
      sql1 := sql1 + ' WHERE CODIGO = ';
    end
    else begin
      sql1 := sql1 + ' AND CODIGO = ';
    end;
    sql1 := sql1 + edtCodigo.Text;
  end;
  if (edtNome.Text <> '') then
  begin
    if (sql1 = '') then
    begin
       sql1 := sql1 + ' WHERE EMPRESA LIKE ';
    end
    else begin
      sql1 := sql1 + ' AND EMPRESA LIKE ';
    end;
    sql1 := sql1 + QuotedStr('%'+edtNome.Text+'%');
  end;
  if (edtCNPJ.Text <> '') then
  begin
    if (sql1 = '') then
    begin
      sql1 := sql1 + ' WHERE CNPJ_CPF = ';
    end
    else begin
      sql1 := sql1 + ' AND CNPJ_CPF = ';
    end;
    sql1 := sql1 + edtNome.Text;
  end;
  cds.CommandText := sql + sql1;

  cds.Open;
end;

procedure TfEmpresaProcura.SpeedButton2Click(Sender: TObject);
begin
  filtrado := 'S';
  Close;
end;

procedure TfEmpresaProcura.btnSairClick(Sender: TObject);
begin
  filtrado := '';
  Close;
end;

procedure TfEmpresaProcura.FormShow(Sender: TObject);
begin
  filtrado := '';
end;

procedure TfEmpresaProcura.DBGrid1DblClick(Sender: TObject);
begin
  filtrado := 'S';
  Close;
end;

end.
