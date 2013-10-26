unit uMaterias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Mask, DBCtrls, Grids, DBGrids, DBClient, Provider,
  SqlExpr;

type
  TfMaterias = class(TfPai_new)
    Label7: TLabel;
    Label6: TLabel;
    tableTipoEnsino: TSQLDataSet;
    tableTipoEnsinoTIPOENSINO: TStringField;
    Label3: TLabel;
    ComboBox1: TComboBox;
    DBTextCodigo: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBGridMaterias: TDBGrid;
    EditPesquisa: TEdit;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Click(Sender: TObject);
    procedure EditPesquisaChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMaterias: TfMaterias;

implementation

uses UDm;

{$R *.dfm}

procedure TfMaterias.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (dm.TableMaterias.Active) then
    dm.TableMaterias.Close;
  dm.TableMaterias.CommandText := 'select * from TABMATERIAS where TIPOENSINO = ' +
    QuotedStr(ComboBox1.Text);
  dm.TableMaterias.Open;
end;

procedure TfMaterias.FormShow(Sender: TObject);
begin
  inherited;
  if not tableTipoEnsino.Active then
    tableTipoEnsino.Open;
  tableTipoEnsino.First;
  while not tableTipoEnsino.Eof do
  begin
    ComboBox1.Items.Add(tableTipoEnsinoTIPOENSINO.AsString);
    tableTipoEnsino.Next;
  end;
end;

procedure TfMaterias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   dm.TableMaterias.Close;
   dm.TableTipoSerie.Close;
end;

procedure TfMaterias.ComboBox1Click(Sender: TObject);
begin
  inherited;
  if (dm.TableMaterias.Active) then
    dm.TableMaterias.Close;
end;

procedure TfMaterias.EditPesquisaChange(Sender: TObject);
begin
  inherited;
 Dm.TableMaterias.Locate('Materias',varArrayOf([EditPesquisa.Text]),[loPartialKey,LocaseInsensitive]);
end;

procedure TfMaterias.btnGravarClick(Sender: TObject);
begin
  if (DBEdit1.Text = '') then exit;
  if (dm.TableMaterias.State in [dsInsert]) then
  begin
     if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_TABMATERIAS, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      dm.TableMateriasIDMATERIAS.Value := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      dm.TableMateriasTIPOENSINO.AsString := ComboBox1.Text;
  end;
  if (dm.TableMaterias.State in [dsEdit]) then
    dm.TableMateriasTIPOENSINO.AsString := ComboBox1.Text;
  inherited;
  btnIncluir.SetFocus;end;

procedure TfMaterias.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbedit1.SetFocus;
end;

procedure TfMaterias.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
    btnGravar.SetFocus;
end;

end.
