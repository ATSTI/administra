unit uCombo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Mask, DBCtrls, Grids, DBGrids, EDBFind, uPai, FMTBcd, DBClient, Provider,
  SqlExpr;

type
  TfCombo = class(TfPai)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EvDBFind1: TEvDBFind;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    sdsCombo: TSQLDataSet;
    dspCombo: TDataSetProvider;
    cdsCombo: TClientDataSet;
    sdsComboCODDADOS: TIntegerField;
    sdsComboDESCRICAO: TStringField;
    sdsComboUSO: TStringField;
    sdsComboCODIGOS: TStringField;
    sdsComboOUTROS: TStringField;
    cdsComboCODDADOS: TIntegerField;
    cdsComboDESCRICAO: TStringField;
    cdsComboUSO: TStringField;
    cdsComboCODIGOS: TStringField;
    cdsComboOUTROS: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCombo: TfCombo;
  uso: string;
implementation

uses UDm ;


{$R *.dfm}

procedure TfCombo.btnIncluirClick(Sender: TObject);
begin
  DBEdit1.SetFocus;
  inherited;
    fCombo.cdsComboUSO.AsString := uso;
  if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    fCombo.cdsComboCODDADOS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

end;

procedure TfCombo.FormShow(Sender: TObject);
begin
//  inherited;
if (fCombo.cdsCombo.Active) then
    fCombo.cdsCombo.Close;
    fCombo.cdsCombo.Open;
  uso := 'TIPO ATENDIMENTO';
  EvDBFind1.SetFocus;
end;

procedure TfCombo.FormCreate(Sender: TObject);
begin
//  inherited;

end;

end.
