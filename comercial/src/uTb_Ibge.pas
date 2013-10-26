unit uTb_Ibge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, SqlExpr, Provider, DBClient, Grids, DBGrids, Mask, DBCtrls;

type
  TfTb_Ibge = class(TfPai)
    DBGrid1: TDBGrid;
    cds_IBGE: TClientDataSet;
    cds_IBGENM_LOCALIDADE: TStringField;
    cds_IBGECD_IBGE: TStringField;
    cds_IBGENM_MUNICIPIO: TStringField;
    cds_IBGENM_TIPO_LOCALIDADE: TStringField;
    cds_IBGESQ_IBGE: TIntegerField;
    cds_IBGECD_UF: TStringField;
    dsp_IBGE: TDataSetProvider;
    sds_IBGE: TSQLDataSet;
    sds_IBGENM_LOCALIDADE: TStringField;
    sds_IBGECD_IBGE: TStringField;
    sds_IBGENM_MUNICIPIO: TStringField;
    sds_IBGENM_TIPO_LOCALIDADE: TStringField;
    sds_IBGESQ_IBGE: TIntegerField;
    sds_IBGECD_UF: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTb_Ibge: TfTb_Ibge;

implementation

{$R *.dfm}

procedure TfTb_Ibge.FormCreate(Sender: TObject);
begin
  inherited;
  if (not cds_IBGE.Active) then
     cds_IBGE.Open;
end;

procedure TfTb_Ibge.BitBtn1Click(Sender: TObject);
Var str_sql2: string;
begin
  inherited;
  if cds_IBGE.Active then
    cds_IBGE.Close;
  if Edit1.Text <> '' then
  begin
    str_sql2 := 'Select * From TB_IBGE ';
    str_sql2 := str_sql2 + 'WHERE NM_LOCALIDADE LIKE ';
    str_sql2 := str_sql2 + '''' + Edit1.Text + '%''';
    str_sql2 := str_sql2 + ' order by CD_UF';
    cds_IBGE.CommandText := str_sql2;
    cds_IBGE.Open;
  end
  else
  begin
    str_sql2 := 'Select * From TB_IBGE ';
    str_sql2 := str_sql2 + ' order by CD_UF';
    cds_IBGE.CommandText := str_sql2;
    cds_IBGE.Open;
  end;
end;



procedure TfTb_Ibge.BitBtn2Click(Sender: TObject);
Var str_sql2: string;
begin
  inherited;
  if cds_IBGE.Active then
    cds_IBGE.Close;
  if Edit2.Text <> '' then
  begin
    str_sql2 := 'Select * From TB_IBGE ';
    str_sql2 := str_sql2 + 'WHERE CD_UF LIKE ';
    str_sql2 := str_sql2 + '''' + Edit2.Text + '%''';
    str_sql2 := str_sql2 + ' order by NM_LOCALIDADE';
    cds_IBGE.CommandText := str_sql2;
    cds_IBGE.Open;
  end
  else
  begin
    str_sql2 := 'Select * From TB_IBGE ';
    str_sql2 := str_sql2 + ' order by CD_UF';
    cds_IBGE.CommandText := str_sql2;
    cds_IBGE.Open;
  end;
end;

procedure TfTb_Ibge.BitBtn3Click(Sender: TObject);
Var str_sql2: string;
begin
  inherited;
  if cds_IBGE.Active then
    cds_IBGE.Close;
  if Edit3.Text <> '' then
  begin
    str_sql2 := 'Select * From TB_IBGE ';
    str_sql2 := str_sql2 + 'WHERE CD_IBGE LIKE ';
    str_sql2 := str_sql2 + '''' + Edit3.Text + '%''';
    str_sql2 := str_sql2 + ' order by NM_LOCALIDADE';
    cds_IBGE.CommandText := str_sql2;
    cds_IBGE.Open;
  end
  else
  begin
    str_sql2 := 'Select * From TB_IBGE ';
    str_sql2 := str_sql2 + ' order by CD_UF';
    cds_IBGE.CommandText := str_sql2;
    cds_IBGE.Open;
  end;
end;

end.
