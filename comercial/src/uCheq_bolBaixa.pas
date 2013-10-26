unit uCheq_bolBaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, Grids, DBGrids,
  JvExDBGrids, JvDBGrid;

type
  TfCheq_bolBaixa = class(TForm)
    JvDBGrid1: TJvDBGrid;
    dspCheque: TDataSetProvider;
    cdsCheque: TClientDataSet;
    dsCheque: TDataSource;
    sdsCheque: TSQLDataSet;
    sdsChequeCOD_CHEQ_BOL: TIntegerField;
    sdsChequeCOD_ORIGEM: TIntegerField;
    sdsChequeTIPO_ORIGEM: TStringField;
    sdsChequeNUMERO_DOC: TIntegerField;
    sdsChequeCODCLI_FORN: TIntegerField;
    sdsChequeCLI_OU_FORN: TStringField;
    sdsChequeCONTACORRENTE: TStringField;
    sdsChequeDATAEMISSAO: TDateField;
    sdsChequeDATALANCAMENTO: TDateField;
    sdsChequeDATADEPOSITO: TDateField;
    sdsChequeVALORCHEQUE: TFloatField;
    sdsChequeDESCRICAO: TStringField;
    sdsChequeBANCO: TSmallintField;
    sdsChequeAGENCIA: TStringField;
    sdsChequeTIPO_DOC: TSmallintField;
    sdsChequeLANCADO: TSmallintField;
    cdsChequeCOD_CHEQ_BOL: TIntegerField;
    cdsChequeCOD_ORIGEM: TIntegerField;
    cdsChequeTIPO_ORIGEM: TStringField;
    cdsChequeNUMERO_DOC: TIntegerField;
    cdsChequeCODCLI_FORN: TIntegerField;
    cdsChequeCLI_OU_FORN: TStringField;
    cdsChequeCONTACORRENTE: TStringField;
    cdsChequeDATAEMISSAO: TDateField;
    cdsChequeDATALANCAMENTO: TDateField;
    cdsChequeDATADEPOSITO: TDateField;
    cdsChequeVALORCHEQUE: TFloatField;
    cdsChequeDESCRICAO: TStringField;
    cdsChequeBANCO: TSmallintField;
    cdsChequeAGENCIA: TStringField;
    cdsChequeTIPO_DOC: TSmallintField;
    cdsChequeLANCADO: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCheq_bolBaixa: TfCheq_bolBaixa;

implementation

uses UDm;

{$R *.dfm}

end.
