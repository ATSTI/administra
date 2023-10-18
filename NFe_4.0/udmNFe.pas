unit udmNFe;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.DBClient,IniFiles,
  Datasnap.Provider,ExtCtrls,OleCtrls,SHDocVw, StdCtrls,Dialogs,
  ShellAPI,Windows,ComCtrls, Variants, Messages, Graphics, Controls, Forms;

type
  TdmNFe = class(TDataModule)
    dsp_parametro: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    sds_parametro: TZQuery;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    sds_parametroVALOR: TFloatField;
    dspTransp: TDataSetProvider;
    cdsTransp: TClientDataSet;
    cdsTranspCODTRANSP: TIntegerField;
    cdsTranspNOMETRANSP: TStringField;
    cdsTranspPLACATRANSP: TStringField;
    cdsTranspCNPJ_CPF: TStringField;
    cdsTranspEND_TRANSP: TStringField;
    cdsTranspCIDADE_TRANSP: TStringField;
    cdsTranspUF_VEICULO_TRANSP: TStringField;
    cdsTranspUF_TRANSP: TStringField;
    cdsTranspFRETE: TStringField;
    cdsTranspINSCRICAOESTADUAL: TStringField;
    cdsTranspCORPONF6: TStringField;
    cdsTranspCORPONF5: TStringField;
    cdsTranspCORPONF1: TStringField;
    cdsTranspCORPONF2: TStringField;
    cdsTranspCORPONF3: TStringField;
    cdsTranspCORPONF4: TStringField;
    cdsTranspFONE: TStringField;
    cdsTranspFONE2: TStringField;
    cdsTranspFAX: TStringField;
    cdsTranspCONTATO: TStringField;
    cdsTranspCEP: TStringField;
    cdsTranspBAIRRO: TStringField;
    cdsTranspFANTASIA: TStringField;
    cdsTranspEMAIL: TStringField;
    sdsTransp: TZQuery;
    sdsTranspCODTRANSP: TIntegerField;
    sdsTranspNOMETRANSP: TStringField;
    sdsTranspPLACATRANSP: TStringField;
    sdsTranspCNPJ_CPF: TStringField;
    sdsTranspEND_TRANSP: TStringField;
    sdsTranspCIDADE_TRANSP: TStringField;
    sdsTranspUF_VEICULO_TRANSP: TStringField;
    sdsTranspUF_TRANSP: TStringField;
    sdsTranspFRETE: TStringField;
    sdsTranspINSCRICAOESTADUAL: TStringField;
    sdsTranspCORPONF1: TStringField;
    sdsTranspCORPONF2: TStringField;
    sdsTranspCORPONF3: TStringField;
    sdsTranspCORPONF4: TStringField;
    sdsTranspCORPONF5: TStringField;
    sdsTranspCORPONF6: TStringField;
    sdsTranspFONE: TStringField;
    sdsTranspFONE2: TStringField;
    sdsTranspFAX: TStringField;
    sdsTranspCONTATO: TStringField;
    sdsTranspBAIRRO: TStringField;
    sdsTranspCEP: TStringField;
    sdsTranspFANTASIA: TStringField;
    sdsTranspEMAIL: TStringField;
    listaTransp: TClientDataSet;
    listaTranspCODTRANSP: TIntegerField;
    listaTranspNOMETRANSP: TStringField;
    listaTranspPLACATRANSP: TStringField;
    listaTranspCNPJ_CPF: TStringField;
    listaTranspEND_TRANSP: TStringField;
    listaTranspCIDADE_TRANSP: TStringField;
    listaTranspUF_VEICULO_TRANSP: TStringField;
    listaTranspUF_TRANSP: TStringField;
    listaTranspFRETE: TStringField;
    listaTranspINSCRICAOESTADUAL: TStringField;
    listaTranspCORPONF1: TStringField;
    listaTranspCORPONF2: TStringField;
    listaTranspCORPONF3: TStringField;
    listaTranspCORPONF4: TStringField;
    listaTranspCORPONF5: TStringField;
    listaTranspCORPONF6: TStringField;
    listaTranspFONE: TStringField;
    listaTranspFANTASIA: TStringField;
    dspListaTransp: TDataSetProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmNFe: TdmNFe;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmNFe.DataModuleCreate(Sender: TObject);
  var Ini: TIniFile;
      IniFile    : String;
begin
  { Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'dbx.ini');
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
   }
end;



end.
