unit uDmTransp;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmTransp = class(TDataModule)
    sdsCarretaTipo: TSQLDataSet;
    dspCarretaTipo: TDataSetProvider;
    cdsCarretaTipo: TClientDataSet;
    cdsCarretaTipoCODDADOS: TIntegerField;
    cdsCarretaTipoDESCRICAO: TStringField;
    c_6_genid: TClientDataSet;
    c_6_genidCODIGO: TIntegerField;
    d_6: TDataSetProvider;
    s_6: TSQLDataSet;
    s_6CODIGO: TIntegerField;
    sdsTipoOper: TSQLDataSet;
    dspTipoOper: TDataSetProvider;
    cdsTipoOper: TClientDataSet;
    cdsCarretaTipoUSO: TStringField;
    cdsTipoOperCODDADOS: TIntegerField;
    cdsTipoOperDESCRICAO: TStringField;
    cdsTipoOperUSO: TStringField;
    sdsTipoOperCODDADOS: TIntegerField;
    sdsTipoOperDESCRICAO: TStringField;
    sdsTipoOperUSO: TStringField;
    sdsOper: TSQLDataSet;
    dspOper: TDataSetProvider;
    cdsOper: TClientDataSet;
    cdsOperCODFAIXADET: TIntegerField;
    cdsOperCODFAIXA: TIntegerField;
    cdsOperDESCRICAO: TStringField;
    cdsOperTIPO: TStringField;
    sdsOperCODFAIXADET: TIntegerField;
    sdsOperCODFAIXA: TIntegerField;
    sdsOperDESCRICAO: TStringField;
    sdsOperTIPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    vRelatorio : string;
    vCodPalm : integer;   
  end;

var
  dmTransp: TdmTransp;

implementation

uses UDm;

{$R *.dfm}


end.
