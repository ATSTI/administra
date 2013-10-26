unit uCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBCtrls, Grids, DBGrids, Mask, SqlExpr, Provider, DBClient,
  JvExControls, JvLabel;

type
  TfCategoria = class(TfPai)
    ComboBox1: TComboBox;
    Label3: TLabel;
    DataSource1: TDataSource;
    cds_familia: TClientDataSet;
    cds_familiaDESCFAMILIA: TStringField;
    cds_familiaCOD_FAMILIA: TIntegerField;
    dsp_familia: TDataSetProvider;
    sds_familia: TSQLDataSet;
    sds_familiaDESCFAMILIA: TStringField;
    sds_familiaCOD_FAMILIA: TIntegerField;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    JvLabel1: TJvLabel;
    btnConfirma: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCategoria: TfCategoria;
  origem_a_cat: String;  

implementation

uses uComercial, UDm, uProdutoCadastro, sCtrlResize;

{$R *.dfm}

procedure TfCategoria.FormDestroy(Sender: TObject);
begin
  inherited;
  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].Clear;
  DM.cds_categoria.Params[1].AsString := 'todos';
  DM.cds_categoria.Open;
end;

procedure TfCategoria.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfCategoria.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfCategoria.btnGravarClick(Sender: TObject);
var cod_fam, str_nova : String;
begin
  if cds_familia.Active then
    cds_familia.Close;
  str_nova :=  'select * from FAMILIAPRODUTOS ';
  str_nova := str_nova + 'where DESCFAMILIA = ';
  str_nova := str_nova + '''' + ComboBox1.Text + '''';
  cds_familia.CommandText := str_nova;
  cds_familia.Open;
  if (DtSrc.State in [dsInsert]) then
  begin
    DM.cds_categoriaCOD_FAMILIA.AsInteger := cds_familiaCOD_FAMILIA.AsInteger;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_CATEGORIA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM.cds_categoriaCOD_CATEGORIA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
  btnIncluir.SetFocus;
  cds_familia.Close;
end;

procedure TfCategoria.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfCategoria.FormShow(Sender: TObject);
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(fCategoria));
end;

procedure TfCategoria.btnConfirmaClick(Sender: TObject);
begin
  if dm.cds_produto.Active then
  begin
    if dm.cds_produto.State = dsbrowse then
      dm.cds_produto.Edit;
    if ( not DM.cds_categoriaDESCCATEGORIA.IsNull) then
      dm.cds_produtoCATEGORIA.AsString := DM.cds_categoriaDESCCATEGORIA.AsString;
  end;
  btnSair.Click;
end;

end.
