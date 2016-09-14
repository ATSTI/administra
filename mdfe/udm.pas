unit udm;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Dialogs, FMTBcd, DBClient,
  Provider;

type
  Tdm = class(TDataModule)
    sc: TSQLConnection;
    sqlBusca: TSQLQuery;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCOD_MDFE: TIntegerField;
    cdsCODEMITENTE: TIntegerField;
    cdsTIPOEMITENTE: TSmallintField;
    cdsMODELO: TSmallintField;
    cdsSERIE: TSmallintField;
    cdsNUMERO_MDF: TIntegerField;
    cdsCHAVE_MDF: TIntegerField;
    cdsDIGITO_MDF: TSmallintField;
    cdsMODALIDADE: TSmallintField;
    cdsDATA_MDF: TSQLTimeStampField;
    cdsFORMA_EMISSAO: TSmallintField;
    cdsVERSAO_APLICATIVO: TStringField;
    cdsUF_CARREGAMENTO: TStringField;
    cdsUF_DESCARREGAMENTO: TStringField;
    cdsCOD_MUNICIPIO_CARREG: TStringField;
    cdsMUNICIPO_CARREG: TStringField;
    cdsUF_PERCURSO: TStringField;
    cdsCOD_MUNICIPIO_DESCARREG: TIntegerField;
    cdsMUNICIPO_DESCARREG: TStringField;
    cdsCHAVE_NFE1: TStringField;
    cdsCHAVE_NFE2: TStringField;
    cdsCHAVE_NFE3: TStringField;
    cdsCHAVE_NFE4: TStringField;
    cdsCHAVE_NFE5: TStringField;
    cdsCHAVE_NFE6: TStringField;
    cdsCHAVE_NFE7: TStringField;
    cdsTIPO_TRANSP: TSmallintField;
    cdsUNID_TRANSP: TStringField;
    cdsTIPO_CARGA: TSmallintField;
    cdsUNID_CARGA: TStringField;
    cdsIDENT_CARGA: TStringField;
    cdsQTDE_NFE: TSmallintField;
    cdsVALOR_CARGA: TFloatField;
    cdsUNID_PESO: TSmallintField;
    cdsPESO_BRUTO: TFloatField;
    cdsCNPJ_AUTORIZADO1: TStringField;
    cdsCNPJ_AUTORIZADO2: TStringField;
    cdsINFO_ADIC_FISCO: TStringField;
    cdsINFO_ADIC_CONTRIBUINTE: TStringField;
    cdsRNTRC: TStringField;
    cdsCIOT: TStringField;
    cdsCINT: TStringField;
    cdsPLACA: TStringField;
    cdsTARA: TIntegerField;
    cdsCAPKG: TIntegerField;
    cdsCAPM3: TIntegerField;
    cdsPROP_CNPJ: TStringField;
    cdsPROP_RNTRC: TStringField;
    cdsPROP_NOME: TStringField;
    cdsPROP_IE: TStringField;
    cdsPROP_UF: TStringField;
    cdsPROP_TIPO: TSmallintField;
    cdsCONDUTOR_NOME: TStringField;
    cdsCONDUTOR_CPF: TStringField;
    cdsTIPO_RODADO: TSmallintField;
    cdsTIPO_CARROCERIA: TSmallintField;
    cdsUF_VEICULO: TStringField;
    cdsREBOQUE_CINT: TStringField;
    cdsREBOQUE_PLACA: TStringField;
    cdsREBOQUE_TARA: TIntegerField;
    cdsREBOQUE_CAPKG: TIntegerField;
    cdsREBOQUE_CAPM3: TIntegerField;
    cdsREBOQUE_CPF: TStringField;
    cdsREBOQUE_CNPJ: TStringField;
    cdsREBOQUE_RNTRC: TStringField;
    cdsREBOQUE_NOME: TStringField;
    cdsREBOQUE_IE: TStringField;
    cdsREBOQUE_UF: TStringField;
    cdsREBOQUE_TIPOPROP: TSmallintField;
    cdsREBOQUE_TIPOCARROCERIA: TSmallintField;
    cdsREBOQUE_UFVEICULO: TStringField;
    cdsPESO_VOLUME1: TFloatField;
    cdsPESO_VOLUME2: TFloatField;
    cdsPESO_VOLUME3: TFloatField;
    cdsPESO_VOLUME4: TFloatField;
    cdsPESO_VOLUME5: TFloatField;
    cdsPESO_VOLUME6: TFloatField;
    cdsPESO_VOLUME7: TFloatField;
    cdsCHAVE_MDFE: TStringField;
    cdsPROTOCOLOENV: TStringField;
    cdsNF1_CNPJ: TStringField;
    cdsNF1_NUM: TIntegerField;
    cdsNF1_SERIE: TIntegerField;
    cdsNF1_UF: TStringField;
    cdsNF1_PIN: TIntegerField;
    cdsNF1_VALOR: TFloatField;
    cdsNF2_CNPJ: TStringField;
    cdsNF2_NUM: TIntegerField;
    cdsNF2_SERIE: TIntegerField;
    cdsNF2_UF: TStringField;
    cdsNF2_PIN: TIntegerField;
    cdsNF2_VALOR: TFloatField;
    cdsNF3_CNPJ: TStringField;
    cdsNF3_NUM: TIntegerField;
    cdsNF3_SERIE: TIntegerField;
    cdsNF3_UF: TStringField;
    cdsNF3_PIN: TIntegerField;
    cdsNF3_VALOR: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  try
    sc.Connected := False;
    sc.LoadParamsFromIniFile('dbxconnections.ini');
    sc.LibraryName := 'dbexpUIBfire15.dll';
    sc.VendorLib := 'FBCLIENT.DLL';
    sc.Connected := True;
  Except
    ShowMessage('Banco de Dados invalido!');
  end;
end;

end.
