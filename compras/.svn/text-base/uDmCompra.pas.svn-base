unit uDmCompra;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  TdmCompra = class(TDataModule)
    sdsSolic: TSQLDataSet;
    dspSolic: TDataSetProvider;
    cdsSolic: TClientDataSet;
    dsSolic: TDataSource;
    cdsSolicSOLIC_CODIGO: TIntegerField;
    cdsSolicSOLIC_DATA: TDateField;
    cdsSolicSOLIC_QUANTIDADE: TFloatField;
    cdsSolicSOLIC_SOLICITANTE: TIntegerField;
    cdsSolicSOLIC_SITUACAO: TStringField;
    cdsSolicSOLIC_APROVACAO: TIntegerField;
    cdsSolicSOLIC_DATAAPROV: TDateField;
    cdsSolicSOLIC_DESCRICAO: TStringField;
    cdsSolicSOLIC_TIPO: TStringField;
    sqBusca: TSQLQuery;
    cdsSolicSOLIC_PRODUTO: TStringField;
    procedure cdsSolicNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;                      

var
  dmCompra: TdmCompra;

implementation

uses UDm;

{$R *.dfm}

procedure TdmCompra.cdsSolicNewRecord(DataSet: TDataSet);
begin
  cdsSolicSOLIC_CODIGO.AsInteger      := 1;
  cdsSolicSOLIC_DATA.AsDateTime       := now;
  cdsSolicSOLIC_SOLICITANTE.AsInteger := dm.varUSERID; // Usuario que gerou a solicitacao.
  cdsSolicSOLIC_SITUACAO.AsString     := 'P';
end;

end.
