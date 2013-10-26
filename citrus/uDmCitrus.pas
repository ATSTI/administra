unit uDmCitrus;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TDmCitrus = class(TDataModule)
    cdsProdutor: TClientDataSet;
    dspProdutor: TDataSetProvider;
    sdsProdutor: TSQLDataSet;
    sdsProduto: TSQLDataSet;
    cdsProdutorCODFORNECEDOR: TIntegerField;
    cdsProdutorNOMEFORNECEDOR: TStringField;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoCODPRODUTO: TIntegerField;
    cdsProdutoPRODUTO: TStringField;
    cdsProdutoCODPRO: TStringField;
    dsProdutor: TDataSource;
    dsProduto: TDataSource;
    sdsCFO: TSQLDataSet;
    dspCFO: TDataSetProvider;
    cdsCFO: TClientDataSet;
    sdsCFOCODLOTE: TIntegerField;
    sdsCFOLOTE: TStringField;
    sdsCFOCODPRODUTO: TIntegerField;
    sdsCFODATAFABRICACAO: TDateField;
    sdsCFODATAVENCIMENTO: TDateField;
    sdsCFOESTOQUE: TFloatField;
    sdsCFOPRECO: TFloatField;
    cdsCFOCODLOTE: TIntegerField;
    cdsCFOLOTE: TStringField;
    cdsCFOCODPRODUTO: TIntegerField;
    cdsCFODATAFABRICACAO: TDateField;
    cdsCFODATAVENCIMENTO: TDateField;
    cdsCFOESTOQUE: TFloatField;
    cdsCFOPRECO: TFloatField;
    sdsBusca: TSQLDataSet;
    sdsCompra: TSQLDataSet;
    dspCompra: TDataSetProvider;
    cdsCompra: TClientDataSet;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODCLIENTE: TIntegerField;
    cdsClienteNOMECLIENTE: TStringField;
    cdsClienteRAZAOSOCIAL: TStringField;
    dsCliente: TDataSource;
    cdsColhedor: TClientDataSet;
    cdsFretista: TClientDataSet;
    dspColhedor: TDataSetProvider;
    dspFretista: TDataSetProvider;
    dsColhedor: TDataSource;
    dsFretista: TDataSource;
    sdsColhedor: TSQLDataSet;
    sdsFretista: TSQLDataSet;
    cdsColhedorCODFORNECEDOR: TIntegerField;
    cdsColhedorNOMEFORNECEDOR: TStringField;
    cdsFretistaCODFORNECEDOR: TIntegerField;
    cdsFretistaNOMEFORNECEDOR: TStringField;
    cdsComprador: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dspComprador: TDataSetProvider;
    DataSource1: TDataSource;
    sdsComprador: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCitrus: TDmCitrus;

implementation

uses UDm;

{$R *.dfm}

end.
