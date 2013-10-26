unit uMapeamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, Mask, DBCtrls;

type
  TfMapeamento = class(TfPai)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsIDMAPEAMENTO: TIntegerField;
    cdsCRTR: TStringField;
    cdsN_BB: TIntegerField;
    cdsLOTE: TStringField;
    cdsI_S: TStringField;
    cdsDT_VALIDADE: TDateField;
    cdsRUA: TIntegerField;
    cdsTRAVESSA: TStringField;
    cdsANDAR: TStringField;
    cdsTOPO: TStringField;
    sdsIDMAPEAMENTO: TIntegerField;
    sdsCRTR: TStringField;
    sdsN_BB: TIntegerField;
    sdsLOTE: TStringField;
    sdsI_S: TStringField;
    sdsDT_VALIDADE: TDateField;
    sdsRUA: TIntegerField;
    sdsTRAVESSA: TStringField;
    sdsANDAR: TStringField;
    sdsTOPO: TStringField;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    JvDBGrid1: TJvDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMapeamento: TfMapeamento;

implementation

uses UDm;

{$R *.dfm}

end.
