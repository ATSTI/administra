unit UDm;

interface

uses
  Windows, SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  EOneInst, DBLocal, DBLocalS, StrUtils, Dialogs,
  Variants;

type
  TDM = class(TDataModule)
    sqlsisAdimin: TSQLConnection;
    sds_parametro: TSQLDataSet;
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
    c_6_genid: TClientDataSet;
    c_6_genidCODIGO: TIntegerField;
    d_6: TDataSetProvider;
    s_6: TSQLDataSet;
    s_6CODIGO: TIntegerField;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    scds_produto_proc: TSQLClientDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procCODPRO: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    scds_produto_procLOCALIZACAO: TStringField;
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    cds_Marca: TClientDataSet;
    cds_MarcaDESCMARCAS: TStringField;
    dsp_Marca: TDataSetProvider;
    sds_Marca: TSQLDataSet;
    sds_MarcaDESCMARCAS: TStringField;
    cds_familia: TClientDataSet;
    cds_familiaDESCFAMILIA: TStringField;
    cds_familiaCOD_FAMILIA: TIntegerField;
    dsp_familia: TDataSetProvider;
    sds_familia: TSQLDataSet;
    sds_familiaDESCFAMILIA: TStringField;
    sds_familiaCOD_FAMILIA: TIntegerField;
    cds_categoria: TClientDataSet;
    cds_categoriaDESCCATEGORIA: TStringField;
    cds_categoriaCOD_CATEGORIA: TIntegerField;
    cds_categoriaCOD_FAMILIA: TIntegerField;
    cds_categoriaCASE: TStringField;
    dsp_categoria: TDataSetProvider;
    sds_categoria: TSQLDataSet;
    sds_categoriaDESCCATEGORIA: TStringField;
    sds_categoriaCOD_CATEGORIA: TIntegerField;
    sds_categoriaCOD_FAMILIA: TIntegerField;
    sds_categoriaCASE: TStringField;
    cds_Usuario: TClientDataSet;
    cds_UsuarioLOGIN: TStringField;
    cds_UsuarioSENHA: TStringField;
    cds_UsuarioPERFIL: TStringField;
    cds_UsuarioCODUSUARIO: TIntegerField;
    dsp_usuario: TDataSetProvider;
    sds_usuario: TSQLDataSet;
    sds_usuarioLOGIN: TStringField;
    sds_usuarioSENHA: TStringField;
    sds_usuarioPERFIL: TStringField;
    sds_usuarioCODUSUARIO: TIntegerField;
    sResolucao: TSQLDataSet;
    sResolucaoLOGIN: TStringField;
    sResolucaoMICRO: TStringField;
    sResolucaoMODULO: TStringField;
    sResolucaoID_LOG: TIntegerField;
    sResolucaoUSUARIO: TStringField;
    EvOneInstance1: TEvOneInstance;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Function NomeComputador: string;  
    { Public declarations }
  end;

var
  DM: TDM;
  dbxconec: TStringList;
  str_relatorio, str_valor, conta_pl: String;
  altura, largura, cod_cli, codmovdet: Integer;
  videoW, videoH, MICRO1 : string;
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;  

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  MICRO1 := NomeComputador;
 sqlsisAdimin.LoadParamsFromIniFile('dbxconnections.ini');
 sqlsisAdimin.LibraryName := 'dbexpUIBfire15.dll';
 sqlsisAdimin.VendorLib := 'FBCLIENT.DLL';
 dbxconec := TStringList.Create;
 try
   dbxconec.LoadFromFile('dbxconnections.ini');
   str_relatorio := dbxconec[14];
   str_relatorio := copy(str_relatorio,16,length(str_relatorio));
 finally
   dbxconec.Free;
 end;
 

end;

function TDM.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

end.
