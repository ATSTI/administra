unit ufRelFortes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, FMTBcd, RLFilters, RLXLSFilter, DB, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, RLPreviewForm;

type
  TfRelFortes = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    sdsRel: TSQLDataSet;
    dspRel: TDataSetProvider;
    cdsRel: TClientDataSet;
    cdsRelCODPRO: TStringField;
    cdsRelPRODUTO: TStringField;
    cdsRelQUANTIDADE: TFloatField;
    cdsRelSUM: TFloatField;
    cdsRelCODCLIENTE: TIntegerField;
    cdsRelNOMECLIENTE: TStringField;
    cdsRelREGIAO: TSmallintField;
    dsRel: TDataSource;
    RLXLSFilter1: TRLXLSFilter;
    BitBtn1: TBitBtn;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelFortes: TfRelFortes;

implementation

uses UDm;

{$R *.dfm}

procedure TfRelFortes.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  cdsRel.Open;
end;

procedure TfRelFortes.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
