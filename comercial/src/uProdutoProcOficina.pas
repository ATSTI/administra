unit uProdutoProcOficina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB, DBClient,
  Provider, SqlExpr, StdCtrls, EDBFind, Buttons;

type
  TfProdutoProcOficina = class(TForm)
    sds: TSQLDataSet;
    sdsCODPRODUTO: TIntegerField;
    sdsCOD_BARRA: TStringField;
    sdsCODPRO: TStringField;
    sdsPRODUTO: TStringField;
    sdsPRECO_VENDA: TFloatField;
    sdsPRECO_COMPRA: TFloatField;
    sdsQTDE_PCT: TFloatField;
    sdsUNIDADEMEDIDA: TStringField;
    sdsGRUPO: TStringField;
    sdsSUBGRUPO: TStringField;
    sdsMARCA: TStringField;
    sdsESTOQUEATUAL: TFloatField;
    sdsCODALMOXARIFADO: TIntegerField;
    sdsICMS: TFloatField;
    sdsTIPO: TStringField;
    sdsLOCALIZACAO: TStringField;
    sdsLOTES: TStringField;
    sdsPRECOMEDIO: TBCDField;
    sdsPESO_QTDE: TFloatField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsCOD_BARRA: TStringField;
    cdsCODPRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsPRECO_VENDA: TFloatField;
    cdsPRECO_COMPRA: TFloatField;
    cdsQTDE_PCT: TFloatField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsGRUPO: TStringField;
    cdsSUBGRUPO: TStringField;
    cdsMARCA: TStringField;
    cdsESTOQUEATUAL: TFloatField;
    cdsCODALMOXARIFADO: TIntegerField;
    cdsICMS: TFloatField;
    cdsTIPO: TStringField;
    cdsLOCALIZACAO: TStringField;
    cdsLOTES: TStringField;
    cdsPRECOMEDIO: TBCDField;
    cdsPESO_QTDE: TFloatField;
    DtSrc: TDataSource;
    JvDBGrid1: TJvDBGrid;
    EvDBFind1: TEvDBFind;
    Label1: TLabel;
    EvDBFind2: TEvDBFind;
    Label2: TLabel;
    JvDBGrid2: TJvDBGrid;
    SQLDataSet1: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField4: TFloatField;
    IntegerField2: TIntegerField;
    FloatField5: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    BCDField1: TBCDField;
    FloatField6: TFloatField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField10: TFloatField;
    IntegerField4: TIntegerField;
    FloatField11: TFloatField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    BCDField2: TBCDField;
    FloatField12: TFloatField;
    DataSource1: TDataSource;
    BtnOk: TBitBtn;
    procedure EvDBFind1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    vCodProduto : Integer;
    vdescProduto: String;
    vCodProd    : String;
    vPrecoVenda : Double;
    //function buscaProd(vCodProd1: String): vCodProduto1: Integer; vDescProduto: String;
    { Public declarations }
  end;

var
  fProdutoProcOficina: TfProdutoProcOficina;

implementation

uses UDm;

{$R *.dfm}

procedure TfProdutoProcOficina.EvDBFind1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    vCodProduto  := cdsCODPRODUTO.AsInteger;
    vdescProduto := cdsPRODUTO.AsString;
    vCodProd     := cdsCODPRO.AsString;
    vPrecoVenda  := cdsPRECO_VENDA.AsFloat; 
  end;
end;

end.
