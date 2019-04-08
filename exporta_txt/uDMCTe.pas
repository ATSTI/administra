unit uDMCTe;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection,IniFiles,ExtCtrls,OleCtrls,Dialogs,
   ShellAPI,Windows,ComCtrls, Variants, Messages, Graphics, Controls, Forms,
    SHDocVw, StdCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Datasnap.DBClient, Datasnap.Provider;


type
  Tdm = class(TDataModule)
    con: TZConnection;
    cdsCliEnd: TClientDataSet;
    dspCliEnd: TDataSetProvider;
    sqlCliEnd: TZQuery;
    cdsCliEndCODCLIENTE: TIntegerField;
    cdsCliEndNOMECLIENTE: TWideStringField;
    cdsCliEndRAZAOSOCIAL: TWideStringField;
    cdsCliEndCNPJ: TWideStringField;
    cdsCliEndINSCESTADUAL: TWideStringField;
    cdsCliEndCODENDERECO: TIntegerField;
    cdsCliEndCODCLIENTE_1: TIntegerField;
    cdsCliEndLOGRADOURO: TWideStringField;
    cdsCliEndBAIRRO: TWideStringField;
    cdsCliEndCOMPLEMENTO: TWideStringField;
    cdsCliEndCIDADE: TWideStringField;
    cdsCliEndUF: TWideStringField;
    cdsCliEndCEP: TWideStringField;
    cdsCliEndTELEFONE: TWideStringField;
    cdsCliEndTELEFONE1: TWideStringField;
    cdsCliEndTELEFONE2: TWideStringField;
    cdsCliEndFAX: TWideStringField;
    cdsCliEndE_MAIL: TWideStringField;
    cdsCliEndRAMAL: TWideStringField;
    cdsCliEndTIPOEND: TSmallintField;
    cdsCliEndDADOSADICIONAIS: TWideStringField;
    cdsCliEndDDD: TWideStringField;
    cdsCliEndDDD1: TWideStringField;
    cdsCliEndDDD2: TWideStringField;
    cdsCliEndDDD3: TWideStringField;
    cdsCliEndNUMERO: TWideStringField;
    cdsCliEndCD_IBGE: TWideStringField;
    cdsCliEndPAIS: TWideStringField;
    cdsProd: TClientDataSet;
    dspProd: TDataSetProvider;
    qProd: TZQuery;
    qCD_IBGE: TZQuery;
    qCD_IBGENM_LOCALIDADE: TWideStringField;
    qCD_IBGECD_IBGE: TWideStringField;
    qCD_IBGENM_MUNICIPIO: TWideStringField;
    qCD_IBGENM_TIPO_LOCALIDADE: TWideStringField;
    qCD_IBGESQ_IBGE: TIntegerField;
    qCD_IBGECD_UF: TWideStringField;
    dspCD_IBGE: TDataSetProvider;
    cdsCD_IBGE: TClientDataSet;
    cdsCD_IBGENM_LOCALIDADE: TWideStringField;
    cdsCD_IBGECD_IBGE: TWideStringField;
    cdsCD_IBGENM_MUNICIPIO: TWideStringField;
    cdsCD_IBGENM_TIPO_LOCALIDADE: TWideStringField;
    cdsCD_IBGESQ_IBGE: TIntegerField;
    cdsCD_IBGECD_UF: TWideStringField;
    cdsGen: TClientDataSet;
    dspGen: TDataSetProvider;
    cdsGenCODIGO: TIntegerField;
    dsMot: TDataSource;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaEMPRESA: TWideStringField;
    cdsEmpresaRAZAO: TWideStringField;
    cdsEmpresaCNPJ_CPF: TWideStringField;
    cdsEmpresaENDERECO: TWideStringField;
    cdsEmpresaLOGRADOURO: TWideStringField;
    cdsEmpresaBAIRRO: TWideStringField;
    cdsEmpresaCIDADE: TWideStringField;
    cdsEmpresaUF: TWideStringField;
    cdsEmpresaCEP: TWideStringField;
    cdsEmpresaDDD: TWideStringField;
    cdsEmpresaFONE: TWideStringField;
    cdsEmpresaFONE_1: TWideStringField;
    cdsEmpresaFONE_2: TWideStringField;
    cdsEmpresaFAX: TWideStringField;
    cdsEmpresaE_MAIL: TWideStringField;
    cdsEmpresaWEB: TWideStringField;
    cdsEmpresaLOGOTIPO: TBlobField;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaTIPO: TWideStringField;
    cdsEmpresaIE_RG: TWideStringField;
    cdsEmpresaSLOGAN: TWideStringField;
    cdsEmpresaOUTRAS_INFO: TWideStringField;
    cdsEmpresaCODIGO_CONTA: TIntegerField;
    cdsEmpresaDIVERSOS1: TWideStringField;
    cdsEmpresaDIVERSOS2: TWideStringField;
    cdsEmpresaDIVERSOS3: TWideStringField;
    cdsEmpresaANOLETIVO: TIntegerField;
    cdsEmpresaMEDIA_ESCOLA: TFloatField;
    cdsEmpresaPORTA: TIntegerField;
    cdsEmpresaSMTP: TWideStringField;
    cdsEmpresaSENHA: TWideStringField;
    cdsEmpresaCCUSTO: TIntegerField;
    cdsEmpresaNUMERO: TWideStringField;
    cdsEmpresaCD_IBGE: TWideStringField;
    cdsEmpresaCRT: TIntegerField;
    cdsEmpresaIM: TWideStringField;
    cdsEmpresaTREGIME: TIntegerField;
    cdsEmpresaCONTADOR: TWideStringField;
    cdsEmpresaCONTADOR_CRC: TWideStringField;
    cdsEmpresaCONTADOR_CNPJ: TWideStringField;
    cdsEmpresaCONTADOR_CPF: TWideStringField;
    cdsEmpresaCONTADOR_CEP: TWideStringField;
    cdsEmpresaCONTADOR_END: TWideStringField;
    cdsEmpresaCONTADOR_NUMEND: TWideStringField;
    cdsEmpresaCONTADOR_COMPL: TWideStringField;
    cdsEmpresaCONTADOR_BAIRRO: TWideStringField;
    cdsEmpresaCONTADOR_FONE: TWideStringField;
    cdsEmpresaCONTADOR_FAX: TWideStringField;
    cdsEmpresaCONTADOR_EMAIL: TWideStringField;
    cdsEmpresaCONTADOR_COD_MUN: TWideStringField;
    cdsEmpresaCNPJPREFEITURA: TWideStringField;
    cdsEmpresaNOMEPREFEITURA: TWideStringField;
    cdsEmpresaCHAVELIC: TWideStringField;
    cdsEmpresaCHAVECONT: TWideStringField;
    cdsEmpresaMODELOCUPOM: TWideStringField;
    cdsEmpresaECFMOD: TWideStringField;
    cdsEmpresaECFFAB: TWideStringField;
    cdsEmpresaECFCX: TWideStringField;
    cdsEmpresaCODINDTIPOCON: TSmallintField;
    cdsEmpresaINDAPROCRED: TSmallintField;
    cdsEmpresaCODINDINCTRIBUTARIA: TSmallintField;
    cdsEmpresaINDICADORATIVIDADE: TSmallintField;
    cdsEmpresaINDICADORNATUREZAPJ: TSmallintField;
    cdsEmpresaINDCODINCIDENCIA: TSmallintField;
    cdsEmpresaCODINDCRITESCRIT: TSmallintField;
    cdsEmpresaINDESCRITURACAO: TSmallintField;
    cdsEmpresaINDCTA: TSmallintField;
    cdsEmpresaINDTIPCOOP: TSmallintField;
    cdsEmpresaINDAJ: TSmallintField;
    cdsEmpresaBASECALCULOCREDITO: TSmallintField;
    cdsEmpresaCODAJ: TSmallintField;
    cdsEmpresaINDNATREC: TSmallintField;
    cdsEmpresaCODCRED: TSmallintField;
    cdsEmpresaNATCREDDESC: TSmallintField;
    cdsEmpresaINDCREDORI: TSmallintField;
    cdsEmpresaINDREC: TSmallintField;
    cdsEmpresaCODCONT: TSmallintField;
    cdsEmpresaINDDESCCRED: TSmallintField;
    cdsEmpresaINDORIGEMDIVERSAS: TSmallintField;
    cdsEmpresaINDNATRETFONTE: TSmallintField;
    cdsEmpresaINDTPOPERACAORECEITA: TSmallintField;
    cdsEmpresaINDNATDEDUCAO: TSmallintField;
    dspEmpresa: TDataSetProvider;
    dsNFe: TDataSource;
    cdsNFe: TClientDataSet;
    cdsNFeCOD_CTE_NFE: TIntegerField;
    cdsNFeCTE_NFE: TIntegerField;
    cdsNFeCHAVE: TWideStringField;
    cdsNFePIN: TIntegerField;
    cdsNFeDPREV: TDateField;
    dspNFe: TDataSetProvider;
    qEmp: TZQuery;
    qEmpEMPRESA: TWideStringField;
    qEmpRAZAO: TWideStringField;
    qEmpCNPJ_CPF: TWideStringField;
    qEmpENDERECO: TWideStringField;
    qEmpLOGRADOURO: TWideStringField;
    qEmpBAIRRO: TWideStringField;
    qEmpCIDADE: TWideStringField;
    qEmpUF: TWideStringField;
    qEmpCEP: TWideStringField;
    qEmpDDD: TWideStringField;
    qEmpFONE: TWideStringField;
    qEmpFONE_1: TWideStringField;
    qEmpFONE_2: TWideStringField;
    qEmpFAX: TWideStringField;
    qEmpE_MAIL: TWideStringField;
    qEmpWEB: TWideStringField;
    qEmpLOGOTIPO: TBlobField;
    qEmpCODIGO: TIntegerField;
    qEmpTIPO: TWideStringField;
    qEmpIE_RG: TWideStringField;
    qEmpSLOGAN: TWideStringField;
    qEmpOUTRAS_INFO: TWideStringField;
    qEmpCODIGO_CONTA: TIntegerField;
    qEmpDIVERSOS1: TWideStringField;
    qEmpDIVERSOS2: TWideStringField;
    qEmpDIVERSOS3: TWideStringField;
    qEmpANOLETIVO: TIntegerField;
    qEmpMEDIA_ESCOLA: TFloatField;
    qEmpPORTA: TIntegerField;
    qEmpSMTP: TWideStringField;
    qEmpSENHA: TWideStringField;
    qEmpCCUSTO: TIntegerField;
    qEmpNUMERO: TWideStringField;
    qEmpCD_IBGE: TWideStringField;
    qEmpCRT: TIntegerField;
    qEmpIM: TWideStringField;
    qEmpTREGIME: TIntegerField;
    qEmpCONTADOR: TWideStringField;
    qEmpCONTADOR_CRC: TWideStringField;
    qEmpCONTADOR_CNPJ: TWideStringField;
    qEmpCONTADOR_CPF: TWideStringField;
    qEmpCONTADOR_CEP: TWideStringField;
    qEmpCONTADOR_END: TWideStringField;
    qEmpCONTADOR_NUMEND: TWideStringField;
    qEmpCONTADOR_COMPL: TWideStringField;
    qEmpCONTADOR_BAIRRO: TWideStringField;
    qEmpCONTADOR_FONE: TWideStringField;
    qEmpCONTADOR_FAX: TWideStringField;
    qEmpCONTADOR_EMAIL: TWideStringField;
    qEmpCONTADOR_COD_MUN: TWideStringField;
    qEmpCNPJPREFEITURA: TWideStringField;
    qEmpNOMEPREFEITURA: TWideStringField;
    qEmpCHAVELIC: TWideStringField;
    qEmpCHAVECONT: TWideStringField;
    qEmpMODELOCUPOM: TWideStringField;
    qEmpECFMOD: TWideStringField;
    qEmpECFFAB: TWideStringField;
    qEmpECFCX: TWideStringField;
    qEmpCODINDTIPOCON: TSmallintField;
    qEmpINDAPROCRED: TSmallintField;
    qEmpCODINDINCTRIBUTARIA: TSmallintField;
    qEmpINDICADORATIVIDADE: TSmallintField;
    qEmpINDICADORNATUREZAPJ: TSmallintField;
    qEmpINDCODINCIDENCIA: TSmallintField;
    qEmpCODINDCRITESCRIT: TSmallintField;
    qEmpINDESCRITURACAO: TSmallintField;
    qEmpINDCTA: TSmallintField;
    qEmpINDTIPCOOP: TSmallintField;
    qEmpINDAJ: TSmallintField;
    qEmpBASECALCULOCREDITO: TSmallintField;
    qEmpCODAJ: TSmallintField;
    qEmpINDNATREC: TSmallintField;
    qEmpCODCRED: TSmallintField;
    qEmpNATCREDDESC: TSmallintField;
    qEmpINDCREDORI: TSmallintField;
    qEmpINDREC: TSmallintField;
    qEmpCODCONT: TSmallintField;
    qEmpINDDESCCRED: TSmallintField;
    qEmpINDORIGEMDIVERSAS: TSmallintField;
    qEmpINDNATRETFONTE: TSmallintField;
    qEmpINDTPOPERACAORECEITA: TSmallintField;
    qEmpINDNATDEDUCAO: TSmallintField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;
  dbxconec: TStringList;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
  var Ini: TIniFile;
      IniFile    : String;
begin
   Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'dbx.ini');
   try
        con.Connected       := False;
        con.HostName        := Ini.ReadString('con', 'Hostname', '');
        con.Port            := Ini.ReadInteger('con', 'Port', 0);
        con.Protocol        := Ini.ReadString('con', 'Protocol', '');
        con.User            := Ini.ReadString('con', 'User', '');
        con.Password        := Ini.ReadString('con', 'Password', '');
        con.Database        := Ini.ReadString('con', 'Database', '');
        con.ClientCodepage  := Ini.ReadString('con', 'ClientCodepage', '');

   except
         on E:Exception do
         MessageDlg('Erro ao conectar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
   end;
   Ini.Free;
end;

end.
