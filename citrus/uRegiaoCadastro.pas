unit uRegiaoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, DBCtrls, SqlExpr, DBClient, Provider, Menus, XPMenu,
  Buttons, ExtCtrls, MMJPanel;

type
  TfRegiaoCadastro = class(TfPai_new)
    DataSetProvider1: TDataSetProvider;
    cdsRegiao: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    SQLDataSet1CODDADOS: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1USO: TStringField;
    SQLDataSet1CODIGOS: TStringField;
    SQLDataSet1OUTROS: TStringField;
    cdsRegiaoCODDADOS: TIntegerField;
    cdsRegiaoDESCRICAO: TStringField;
    cdsRegiaoUSO: TStringField;
    cdsRegiaoCODIGOS: TStringField;
    cdsRegiaoOUTROS: TStringField;
    DBNavigator1: TDBNavigator;
    Label9: TLabel;
    Label10: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsRegiaoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    tipoRegiao : string;
  end;

var
  fRegiaoCadastro: TfRegiaoCadastro;

implementation

uses UDm;

{$R *.dfm}

procedure TfRegiaoCadastro.btnGravarClick(Sender: TObject);
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsRegiaoCODDADOS.AsInteger := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;
  inherited;

end;

procedure TfRegiaoCadastro.FormShow(Sender: TObject);
begin
  inherited;
    if (cdsRegiao.Active) then
      cdsRegiao. close;
    cdsRegiao.Params[0].AsString := tipoRegiao;
    cdsRegiao.Open;
end;

procedure TfRegiaoCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (cdsRegiao.Active) then
    cdsRegiao.Close;
  inherited;

end;

procedure TfRegiaoCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfRegiaoCadastro.cdsRegiaoNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (tipoRegiao = 'regiao') then
    cdsRegiaoUSO.AsString := 'regiao';
  if (tipoRegiao = 'regiaoFor') then
    cdsRegiaoUSO.AsString := 'regiaoFor';
end;

end.
