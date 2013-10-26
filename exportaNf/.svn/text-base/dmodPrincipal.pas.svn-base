unit dmodPrincipal;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmPrincipal = class(TDataModule)
    sqlConexao: TSQLConnection;
    cdsNF: TClientDataSet;
    dspNF: TDataSetProvider;
    sdsNF: TSQLDataSet;
    cdsMovNF: TClientDataSet;
    dspMovNF: TDataSetProvider;
    sdsMovNF: TSQLDataSet;
    sdsNFNOTASERIE: TStringField;
    sdsNFNUMNF: TIntegerField;
    sdsNFNATUREZA: TSmallintField;
    sdsNFQUANTIDADE: TFloatField;
    sdsNFMARCA: TStringField;
    sdsNFPESOBRUTO: TBCDField;
    sdsNFPESOLIQUIDO: TBCDField;
    sdsNFESPECIE: TStringField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFUF: TStringField;
    sdsNFCODVENDA: TIntegerField;
    sdsNFCODTRANSP: TIntegerField;
    sdsNFNUMERO: TStringField;
    sdsNFNOTAFISCAL: TIntegerField;
    sdsNFBASE_ICMS: TFloatField;
    sdsNFVALOR_ICMS: TFloatField;
    sdsNFBASE_ICMS_SUBST: TFloatField;
    sdsNFVALOR_ICMS_SUBST: TFloatField;
    sdsNFVALOR_PRODUTO: TFloatField;
    sdsNFVALOR_FRETE: TFloatField;
    sdsNFVALOR_SEGURO: TFloatField;
    sdsNFOUTRAS_DESP: TFloatField;
    sdsNFVALOR_IPI: TFloatField;
    sdsNFVALOR_TOTAL_NOTA: TFloatField;
    sdsNFCFOP: TStringField;
    sdsNFCODCLIENTE: TIntegerField;
    sdsNFFATURA: TStringField;
    sdsNFICMS: TFloatField;
    sdsNFREDUZICMS: TFloatField;
    sdsNFNOMETRANSP: TStringField;
    sdsNFPLACATRANSP: TStringField;
    sdsNFCNPJ_CPF: TStringField;
    sdsNFEND_TRANSP: TStringField;
    sdsNFCIDADE_TRANSP: TStringField;
    sdsNFUF_VEICULO_TRANSP: TStringField;
    sdsNFUF_TRANSP: TStringField;
    sdsNFFRETE: TStringField;
    sdsNFINSCRICAOESTADUAL: TStringField;
    cdsNFNOTASERIE: TStringField;
    cdsNFNUMNF: TIntegerField;
    cdsNFNATUREZA: TSmallintField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFMARCA: TStringField;
    cdsNFPESOBRUTO: TBCDField;
    cdsNFPESOLIQUIDO: TBCDField;
    cdsNFESPECIE: TStringField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFUF: TStringField;
    cdsNFCODVENDA: TIntegerField;
    cdsNFCODTRANSP: TIntegerField;
    cdsNFNUMERO: TStringField;
    cdsNFNOTAFISCAL: TIntegerField;
    cdsNFBASE_ICMS: TFloatField;
    cdsNFVALOR_ICMS: TFloatField;
    cdsNFBASE_ICMS_SUBST: TFloatField;
    cdsNFVALOR_ICMS_SUBST: TFloatField;
    cdsNFVALOR_PRODUTO: TFloatField;
    cdsNFVALOR_FRETE: TFloatField;
    cdsNFVALOR_SEGURO: TFloatField;
    cdsNFOUTRAS_DESP: TFloatField;
    cdsNFVALOR_IPI: TFloatField;
    cdsNFVALOR_TOTAL_NOTA: TFloatField;
    cdsNFCFOP: TStringField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFFATURA: TStringField;
    cdsNFICMS: TFloatField;
    cdsNFREDUZICMS: TFloatField;
    cdsNFNOMETRANSP: TStringField;
    cdsNFPLACATRANSP: TStringField;
    cdsNFCNPJ_CPF: TStringField;
    cdsNFEND_TRANSP: TStringField;
    cdsNFCIDADE_TRANSP: TStringField;
    cdsNFUF_VEICULO_TRANSP: TStringField;
    cdsNFUF_TRANSP: TStringField;
    cdsNFFRETE: TStringField;
    cdsNFINSCRICAOESTADUAL: TStringField;
    cdsEmpresa: TClientDataSet;
    dspEmpresa: TDataSetProvider;
    sdsEmpresa: TSQLDataSet;
    sdsEmpresaRAZAO: TStringField;
    sdsEmpresaCNPJ_CPF: TStringField;
    sdsEmpresaENDERECO: TStringField;
    sdsEmpresaLOGRADOURO: TStringField;
    sdsEmpresaBAIRRO: TStringField;
    sdsEmpresaCIDADE: TStringField;
    sdsEmpresaUF: TStringField;
    sdsEmpresaCEP: TStringField;
    sdsEmpresaDDD: TStringField;
    sdsEmpresaFONE: TStringField;
    sdsEmpresaFONE_1: TStringField;
    sdsEmpresaIE_RG: TStringField;
    cdsEmpresaRAZAO: TStringField;
    cdsEmpresaCNPJ_CPF: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaLOGRADOURO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaDDD: TStringField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaFONE_1: TStringField;
    cdsEmpresaIE_RG: TStringField;
    sdsNFVLRTOTALEXP: TFloatField;
    sdsMovNFCODDETALHE: TIntegerField;
    sdsMovNFCODMOVIMENTO: TIntegerField;
    sdsMovNFCODALMOXARIFADO: TSmallintField;
    sdsMovNFCONTROLE: TSmallintField;
    sdsMovNFCODPRODUTO: TIntegerField;
    sdsMovNFQUANTIDADE: TFloatField;
    sdsMovNFPRECO: TFloatField;
    sdsMovNFICMS: TFloatField;
    sdsMovNFUN: TStringField;
    sdsMovNFQTDE_ALT: TFloatField;
    sdsMovNFBAIXA: TStringField;
    sdsMovNFVALTOTAL: TFloatField;
    sdsMovNFCOD_COMISSAO: TIntegerField;
    sdsMovNFLOTE: TStringField;
    sdsMovNFDTAFAB: TDateField;
    sdsMovNFDTAVCTO: TDateField;
    sdsMovNFPRECOCUSTO: TFloatField;
    sdsMovNFVLRESTOQUE: TFloatField;
    sdsMovNFQTDEESTOQUE: TFloatField;
    sdsMovNFNOTAFISCAL: TStringField;
    sdsMovNFDESCPRODUTO: TStringField;
    sdsMovNFPRECOULTIMACOMPRA: TFloatField;
    sdsMovNFCST: TStringField;
    sdsMovNFVALOR_ICMS: TFloatField;
    sdsMovNFVLR_BASE: TFloatField;
    sdsMovNFQTDE_NF: TFloatField;
    cdsMovNFCODDETALHE: TIntegerField;
    cdsMovNFCODMOVIMENTO: TIntegerField;
    cdsMovNFCODALMOXARIFADO: TSmallintField;
    cdsMovNFCONTROLE: TSmallintField;
    cdsMovNFCODPRODUTO: TIntegerField;
    cdsMovNFQUANTIDADE: TFloatField;
    cdsMovNFPRECO: TFloatField;
    cdsMovNFICMS: TFloatField;
    cdsMovNFUN: TStringField;
    cdsMovNFQTDE_ALT: TFloatField;
    cdsMovNFBAIXA: TStringField;
    cdsMovNFVALTOTAL: TFloatField;
    cdsMovNFCOD_COMISSAO: TIntegerField;
    cdsMovNFLOTE: TStringField;
    cdsMovNFDTAFAB: TDateField;
    cdsMovNFDTAVCTO: TDateField;
    cdsMovNFPRECOCUSTO: TFloatField;
    cdsMovNFVLRESTOQUE: TFloatField;
    cdsMovNFQTDEESTOQUE: TFloatField;
    cdsMovNFNOTAFISCAL: TStringField;
    cdsMovNFDESCPRODUTO: TStringField;
    cdsMovNFPRECOULTIMACOMPRA: TFloatField;
    cdsMovNFCST: TStringField;
    cdsMovNFVALOR_ICMS: TFloatField;
    cdsMovNFVLR_BASE: TFloatField;
    cdsMovNFQTDE_NF: TFloatField;
    sdsMovNFCODPRO: TStringField;
    cdsMovNFCODPRO: TStringField;
    sdsNFCODMOVIMENTO: TIntegerField;
    cdsNFVLRTOTALEXP: TFloatField;
    cdsNFCODMOVIMENTO: TIntegerField;
    sdsMovNFTOTALITENS: TFloatField;
    cdsMovNFTOTALITENS: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;
  dbxconec: TStringList;
  str_relatorio : String;

implementation

{$R *.dfm}

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
 sqlConexao.Connected := False;
 sqlConexao.LoadParamsFromIniFile('dbxconnections.ini');
 sqlConexao.LibraryName := 'dbexpUIBfire15.dll';
 sqlConexao.VendorLib := 'FBCLIENT.DLL';
 dbxconec := TStringList.Create;
 try
   dbxconec.LoadFromFile('dbxconnections.ini');
   str_relatorio := dbxconec[14];
   str_relatorio := copy(str_relatorio,16,length(str_relatorio));
 finally
   dbxconec.Free;
 end;
end;

end.
