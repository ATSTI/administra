unit uNFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrNFe, StdCtrls, FMTBcd, DBClient, Provider, DB, SqlExpr,
  ExtCtrls, MaskUtils, ACBrBase, ACBrValidador, StrUtils;

type
  TfNFCe = class(TForm)
    Button1: TButton;
    ACBrNFe1: TACBrNFe;
    memoDados: TMemo;
    edNFCe: TEdit;
    Label1: TLabel;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    chkAvista: TCheckBox;
    rgTipoEmissao: TRadioGroup;
    rgAmbiente: TRadioGroup;
    sEmpresa: TSQLDataSet;
    sEmpresaEMPRESA: TStringField;
    sEmpresaRAZAO: TStringField;
    sEmpresaCNPJ_CPF: TStringField;
    sEmpresaENDERECO: TStringField;
    sEmpresaLOGRADOURO: TStringField;
    sEmpresaBAIRRO: TStringField;
    sEmpresaCIDADE: TStringField;
    sEmpresaUF: TStringField;
    sEmpresaCEP: TStringField;
    sEmpresaDDD: TStringField;
    sEmpresaFONE: TStringField;
    sEmpresaFONE_1: TStringField;
    sEmpresaFONE_2: TStringField;
    sEmpresaFAX: TStringField;
    sEmpresaE_MAIL: TStringField;
    sEmpresaWEB: TStringField;
    sEmpresaLOGOTIPO: TGraphicField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TStringField;
    sEmpresaIE_RG: TStringField;
    sEmpresaSLOGAN: TStringField;
    sEmpresaOUTRAS_INFO: TStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TStringField;
    sEmpresaDIVERSOS2: TStringField;
    sEmpresaDIVERSOS3: TStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TStringField;
    sEmpresaSENHA: TStringField;
    sEmpresaNUMERO: TStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaCD_IBGE: TStringField;
    sEmpresaCRT: TIntegerField;
    rgRegime: TRadioGroup;
    Label2: TLabel;
    edtCliente: TEdit;
    sdsNF: TSQLDataSet;
    sdsNFCFOP: TStringField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCODCLIENTE: TIntegerField;
    sdsNFNUMNF: TIntegerField;
    sdsNFCODVENDA: TIntegerField;
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
    sdsNFFRETE: TStringField;
    sdsNFCNPJ_CPF: TStringField;
    sdsNFNOMETRANSP: TStringField;
    sdsNFINSCRICAOESTADUAL: TStringField;
    sdsNFEND_TRANSP: TStringField;
    sdsNFCIDADE_TRANSP: TStringField;
    sdsNFUF_TRANSP: TStringField;
    sdsNFPLACATRANSP: TStringField;
    sdsNFUF_VEICULO_TRANSP: TStringField;
    sdsNFQUANTIDADE: TFloatField;
    sdsNFESPECIE: TStringField;
    sdsNFMARCA: TStringField;
    sdsNFNUMERO: TStringField;
    sdsNFPESOLIQUIDO: TBCDField;
    sdsNFPESOBRUTO: TBCDField;
    sdsNFRAZAOSOCIAL: TStringField;
    sdsNFCNPJ: TStringField;
    sdsNFHORASAIDA: TTimeField;
    sdsNFNOTASERIE: TStringField;
    sdsNFSELECIONOU: TStringField;
    sdsNFREDUZICMS: TFloatField;
    sdsNFPROTOCOLOENV: TStringField;
    sdsNFNUMRECIBO: TStringField;
    sdsNFPROTOCOLOCANC: TStringField;
    sdsNFENTRADA: TFloatField;
    sdsNFVALOR_PAGAR: TFloatField;
    sdsNFFATURA: TStringField;
    sdsNFNATUREZA: TSmallintField;
    sdsNFCORPONF4: TStringField;
    sdsNFCORPONF3: TStringField;
    sdsNFCORPONF2: TStringField;
    sdsNFCORPONF1: TStringField;
    sdsNFVALOR_PIS: TFloatField;
    sdsNFVALOR_COFINS: TFloatField;
    sdsNFCORPONF5: TStringField;
    sdsNFCORPONF6: TStringField;
    sdsNFVALOR_DESCONTO: TFloatField;
    sdsNFIDCOMPLEMENTAR: TStringField;
    sdsNFXMLNFE: TGraphicField;
    sdsNFII: TFloatField;
    sdsNFBCII: TFloatField;
    sdsNFTRANSP2: TStringField;
    sdsNFCODTRANSP: TIntegerField;
    sdsNFBASE_IPI: TFloatField;
    sdsNFBASE_PIS: TFloatField;
    sdsNFBASE_COFINS: TFloatField;
    sdsNFVLRTOT_TRIB: TFloatField;
    sdsNFSTATUS: TStringField;
    sdsNFNOMEXML: TStringField;
    sdsItensNF: TSQLDataSet;
    sdsItensNFCODPRODUTO: TIntegerField;
    sdsItensNFQUANTIDADE: TFloatField;
    sdsItensNFPRECO: TFloatField;
    sdsItensNFCFOP: TStringField;
    sdsItensNFCODPRO: TStringField;
    sdsItensNFUNIDADEMEDIDA: TStringField;
    sdsItensNFICMS: TFloatField;
    sdsItensNFPIPI: TFloatField;
    sdsItensNFVIPI: TFloatField;
    sdsItensNFVLR_BASEICMS: TFloatField;
    sdsItensNFVALOR_ICMS: TFloatField;
    sdsItensNFVLR_BASE: TFloatField;
    sdsItensNFICMS_SUBST: TFloatField;
    sdsItensNFICMS_SUBSTD: TFloatField;
    sdsItensNFVALTOTAL: TFloatField;
    sdsItensNFCSOSN: TStringField;
    sdsItensNFFRETE: TFloatField;
    sdsItensNFVALOR_DESCONTO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFVALOR_SEGURO: TFloatField;
    sdsItensNFVALOR_OUTROS: TFloatField;
    sdsItensNFCODDETALHE: TIntegerField;
    sdsItensNFCST: TStringField;
    sdsItensNFVALOR_PIS: TFloatField;
    sdsItensNFVALOR_COFINS: TFloatField;
    sdsItensNFII: TFloatField;
    sdsItensNFBCII: TFloatField;
    sdsItensNFOBS: TStringField;
    sdsItensNFCSTIPI: TStringField;
    sdsItensNFCSTPIS: TStringField;
    sdsItensNFCSTCOFINS: TStringField;
    sdsItensNFPPIS: TFloatField;
    sdsItensNFPCOFINS: TFloatField;
    sdsItensNFNITEMPED: TIntegerField;
    sdsItensNFPEDIDO: TStringField;
    sdsItensNFVLRBC_IPI: TFloatField;
    sdsItensNFVLRBC_PIS: TFloatField;
    sdsItensNFVLRBC_COFINS: TFloatField;
    sdsItensNFVLRTOT_TRIB: TFloatField;
    sdsItensNFCOD_BARRA: TStringField;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    cdsNFFRETE: TStringField;
    cdsNFCNPJ_CPF: TStringField;
    cdsNFNOMETRANSP: TStringField;
    cdsNFINSCRICAOESTADUAL: TStringField;
    cdsNFEND_TRANSP: TStringField;
    cdsNFCIDADE_TRANSP: TStringField;
    cdsNFUF_TRANSP: TStringField;
    cdsNFPLACATRANSP: TStringField;
    cdsNFUF_VEICULO_TRANSP: TStringField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFESPECIE: TStringField;
    cdsNFMARCA: TStringField;
    cdsNFNUMERO: TStringField;
    cdsNFPESOLIQUIDO: TBCDField;
    cdsNFPESOBRUTO: TBCDField;
    cdsNFRAZAOSOCIAL: TStringField;
    cdsNFCNPJ: TStringField;
    cdsNFCFOP: TStringField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFNUMNF: TIntegerField;
    cdsNFCODVENDA: TIntegerField;
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
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFHORASAIDA: TTimeField;
    cdsNFNOTASERIE: TStringField;
    cdsNFSELECIONOU: TStringField;
    cdsNFREDUZICMS: TFloatField;
    cdsNFPROTOCOLOENV: TStringField;
    cdsNFNUMRECIBO: TStringField;
    cdsNFPROTOCOLOCANC: TStringField;
    cdsNFENTRADA: TFloatField;
    cdsNFVALOR_PAGAR: TFloatField;
    cdsNFFATURA: TStringField;
    cdsNFNATUREZA: TSmallintField;
    cdsNFCORPONF1: TStringField;
    cdsNFCORPONF2: TStringField;
    cdsNFCORPONF3: TStringField;
    cdsNFCORPONF4: TStringField;
    cdsNFVALOR_PIS: TFloatField;
    cdsNFVALOR_COFINS: TFloatField;
    cdsNFCORPONF5: TStringField;
    cdsNFCORPONF6: TStringField;
    cdsNFVALOR_DESCONTO: TFloatField;
    cdsNFIDCOMPLEMENTAR: TStringField;
    cdsNFXMLNFE: TMemoField;
    cdsNFII: TFloatField;
    cdsNFBCII: TFloatField;
    cdsNFTRANSP2: TStringField;
    cdsNFCODTRANSP: TIntegerField;
    cdsNFBASE_IPI: TFloatField;
    cdsNFBASE_PIS: TFloatField;
    cdsNFBASE_COFINS: TFloatField;
    cdsNFVLRTOT_TRIB: TFloatField;
    cdsNFSTATUS: TStringField;
    cdsNFNOMEXML: TStringField;
    cdsItensNF: TClientDataSet;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFCFOP: TStringField;
    cdsItensNFCODPRO: TStringField;
    cdsItensNFUNIDADEMEDIDA: TStringField;
    cdsItensNFICMS: TFloatField;
    cdsItensNFPIPI: TFloatField;
    cdsItensNFVIPI: TFloatField;
    cdsItensNFVLR_BASEICMS: TFloatField;
    cdsItensNFVALOR_ICMS: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    cdsItensNFICMS_SUBST: TFloatField;
    cdsItensNFICMS_SUBSTD: TFloatField;
    cdsItensNFVALTOTAL: TFloatField;
    cdsItensNFCSOSN: TStringField;
    cdsItensNFFRETE: TFloatField;
    cdsItensNFVALOR_DESCONTO: TFloatField;
    cdsItensNFDESCPRODUTO: TStringField;
    cdsItensNFVALOR_SEGURO: TFloatField;
    cdsItensNFVALOR_OUTROS: TFloatField;
    cdsItensNFCODDETALHE: TIntegerField;
    cdsItensNFCST: TStringField;
    cdsItensNFVALOR_PIS: TFloatField;
    cdsItensNFVALOR_COFINS: TFloatField;
    cdsItensNFII: TFloatField;
    cdsItensNFBCII: TFloatField;
    cdsItensNFOBS: TStringField;
    cdsItensNFCSTIPI: TStringField;
    cdsItensNFCSTPIS: TStringField;
    cdsItensNFCSTCOFINS: TStringField;
    cdsItensNFPPIS: TFloatField;
    cdsItensNFPCOFINS: TFloatField;
    cdsItensNFNITEMPED: TIntegerField;
    cdsItensNFPEDIDO: TStringField;
    cdsItensNFVLRBC_IPI: TFloatField;
    cdsItensNFVLRBC_PIS: TFloatField;
    cdsItensNFVLRBC_COFINS: TFloatField;
    cdsItensNFVLRTOT_TRIB: TFloatField;
    cdsItensNFCOD_BARRA: TStringField;
    dspItensNF: TDataSetProvider;
    sdsItensNFNCM: TStringField;
    cdsItensNFNCM: TStringField;
    sdsItensNFORIGEM: TIntegerField;
    cdsItensNFORIGEM: TIntegerField;
    ACBrValidador1: TACBrValidador;
    procedure Button1Click(Sender: TObject);
  private
    function RemoveChar(Const Texto:String):String;
    procedure GerarNFCe(NumNFe: String);
    procedure pegaItens;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNFCe: TfNFCe;

implementation

uses UDm, pcnConversao, pcnNFe;

{$R *.dfm}

procedure TfNFCe.Button1Click(Sender: TObject);
var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
begin
  vAux := edNFCe.Text;

  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vSincrono := '1';
  if not(InputQuery('WebServices Enviar', 'Envio S�ncrono(1=Sim, 0=N�o)', vSincrono)) then
    exit;

  vNumLote := '1';

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False;

  ACBrNFe1.NotasFiscais.Clear;

  // carlos 23/12/14
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;

  GerarNFCe(vAux);

  { carlos 06/01/2015
  ACBrNFe1.Enviar(vNumLote,True,Sincrono);

  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
  LoadXML(MemoResp, WBResposta);

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
  MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
  MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
// MemoDados.Lines.Add('cStat: '+ ACBrNFe1.WebServices.Retorno.NFeRetorno;
   }

   { ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].tpAmb
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].verAplic
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo }

  ACBrNFe1.NotasFiscais.Clear;
end;

procedure TfNFCe.GerarNFCe(NumNFe: String);
var contaItens: Integer;
   //ipVista, ipPrazo: TpcnIndicadorPagamento;
begin

  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := 51; //Buscar de parametro
  sEmpresa.Open;

  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.cNF       := StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
    Ide.natOp     := 'VENDA';
    if (chkAvista.Checked) then
      Ide.indPag    := ipVista
    else
      Ide.indPag    := ipPrazo;
    Ide.modelo    := 65;
    Ide.serie     := 1;
    Ide.nNF       := StrToInt(NumNFe);
    Ide.dEmi      := now;
    Ide.dSaiEnt   := now;
    Ide.hSaiEnt   := now;
    Ide.tpNF      := tnSaida;
    case rgTipoEmissao.ItemIndex of
      0: Ide.tpEmis := teNormal;
      1: Ide.tpEmis := teContingencia;
      2: Ide.tpEmis := teOffLine;
    end;
    //Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
    case rgAmbiente.ItemIndex of
      1: Ide.tpAmb := taProducao;
      0: Ide.tpAmb := taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o
    end;

    Ide.cUF       := 35; // SP
    Ide.cMunFG    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    Ide.finNFe    := fnNormal;
    Ide.tpImp     := tiNFCe;
    Ide.indFinal  := cfConsumidorFinal;
    Ide.indPres   := pcPresencial;

    //     Ide.dhCont := date;
    //     Ide.xJust  := 'Justificativa Contingencia';

    Emit.CNPJCPF           := RemoveChar(sEmpresaCNPJ_CPF.AsString);
    Emit.IE                := RemoveChar(sEmpresaIE_RG.AsString);
    Emit.xNome             := sEmpresaRAZAO.AsString;
    Emit.xFant             := sEmpresaEMPRESA.AsString;
    Emit.EnderEmit.fone    := RemoveChar(sEmpresaDDD.AsString + sEmpresaFONE.AsString);
    Emit.EnderEmit.CEP     := StrToInt(RemoveChar(sEmpresaCEP.AsString));
    Emit.EnderEmit.xLgr    := sEmpresaENDERECO.AsString;
    Emit.EnderEmit.nro     := sEmpresaNUMERO.AsString;
    Emit.EnderEmit.xCpl    := sEmpresaLOGRADOURO.AsString;
    Emit.EnderEmit.xBairro := sEmpresaBAIRRO.AsString;
    Emit.EnderEmit.cMun    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    Emit.EnderEmit.xMun    := sEmpresaCIDADE.AsString;
    Emit.EnderEmit.UF      := sEmpresaUF.AsString;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';

    Emit.IEST              := '';
    //      Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
    //      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe

    case rgRegime.ItemIndex of
      0: Emit.CRT := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
      1: Emit.CRT := crtSimplesExcessoReceita;
      2: Emit.CRT := crtRegimeNormal;
    end;

    if (edtCliente.Text <> 'Consumidor') then
    begin
      Dest.CNPJCPF           := '05481336000137';
      //      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
      Dest.ISUF              := '';
      Dest.xNome             := 'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    := '1533243333';
      Dest.EnderDest.CEP     := 18270170;
      Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     := '973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := 'Centro';
      Dest.EnderDest.cMun    := 3554003;
      Dest.EnderDest.xMun    := 'Tatu�';
      Dest.EnderDest.UF      := 'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';
    end;

    pegaItens;
 
//Adicionando Servi�os
{      with Det.Add do
       begin
         Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descri��o do Servi�o';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informa��o Adicional do Servi�o';

//Grupo para servi�os
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := 1402; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;
}
      Total.ICMSTot.vBC     := 100;
      Total.ICMSTot.vICMS   := 18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := 100;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := 100;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

{      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

   //   Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE

{      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;
 }

 { carlos
      with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpDinheiro;
         vPag := 100;
       end;

      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';
}
{      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end; }
   end;

end;

procedure TfNFCe.pegaItens;
var contaItens :integer;
  desc, BC, BCST: variant;
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    //Adicionando Produtos
    contaItens := 0;
    while not cdsItensNF.Eof do
    begin
      contaItens := contaItens + 1;
      with Det.Add do
      begin
        Prod.nItem    := contaItens; // N�mero sequencial, para cada item deve ser incrementado

        if (dm.mascaraProduto <> '') then
          Prod.cProd    := FormatMaskText(dm.mascaraProduto, cdsItensNFCODPRO.AsString)
        else
          Prod.cProd    := cdsItensNFCODPRO.AsString;
        //Prod.cEAN     := '7896523206646';
        Prod.xProd    := LeftStr(cdsItensNFDESCPRODUTO.AsString, 99);
        Prod.CFOP     := cdsItensNFCFOP.AsString;
        Prod.uCom     := cdsItensNFUNIDADEMEDIDA.AsString;
        Prod.qCom     := cdsItensNFQUANTIDADE.AsFloat;
        Prod.vUnCom   := cdsItensNFVLR_BASE.AsFloat;
        Prod.uTrib    := cdsItensNFUNIDADEMEDIDA.AsString;
        Prod.qTrib    := cdsItensNFQUANTIDADE.AsFloat;

        Prod.NCM      := cdsItensNFNCM.AsString;
        Prod.EXTIPI   := '';

        if (ACBrValidadorValidarGTIN(cdsItensNFCOD_BARRA.AsString) = '') then
        begin
          Prod.cEAN := cdsItensNFCOD_BARRA.AsString;
          Prod.cEANTrib := cdsItensNFCOD_BARRA.AsString;;
        end;
        desc := StrLen(PChar(MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)));
        if ( desc > 0) then
          infAdProd     := MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)  + cdsItensNFOBS.AsString
        else
          infAdProd     := cdsItensNFOBS.AsString;

        Prod.vProd    := cdsItensNFVALTOTAL.AsFloat;
        Prod.vFrete   := cdsItensNFFRETE.AsCurrency;
        Prod.vDesc    := cdsItensNFVALOR_DESCONTO.AsCurrency;
        Prod.vOutro   := cdsItensNFVALOR_OUTROS.AsCurrency;
        Prod.vSeg     := cdsItensNFVALOR_SEGURO.AsCurrency;

        with Imposto do
        begin
          // lei da transparencia nos impostos
          vTotTrib := cdsItensNFVLRTOT_TRIB.AsFloat;

          // ***********************  ICMS ********************************
          with ICMS do
          begin
            if (cdsItensNFORIGEM.IsNull) then
            begin
              MessageDlg('Origem do Produto(CADASTRO PRODUTO) n�o informado.', mtError, [mbOK], 0);
              //exit;
            end;

            if( sEmpresaCRT.AsInteger = 0) then
            begin
              if (( cdsItensNFCSOSN.AsString = null) or ( cdsItensNFCSOSN.AsString = '')) then
              begin
                CSOSN := csosnVazio;
              end
              else if ( cdsItensNFCSOSN.AsString = '101') then
              begin
                CSOSN := csosn101;
                if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
                begin
                  if (cdsItensNFICMS.AsVariant > 0 ) then
                  begin
                    pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                    vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
                  end;
                end;
              end
              else if ( cdsItensNFCSOSN.AsString = '102') then
                CSOSN := csosn102
              else if ( cdsItensNFCSOSN.AsString = '103') then
                CSOSN := csosn103
              else if ( cdsItensNFCSOSN.AsString = '201') then
              begin
                CSOSN := csosn201;
                if (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
                begin
                  if (cdsItensNFICMS.AsVariant > 0 ) then
                  begin
                    pCredSN := cdsItensNFICMS.AsVariant; //Aliquota ICMS SIMPLES
                    vCredICMSSN := cdsItensNFVALOR_ICMS.AsVariant; //ICMS SIMPLES
                  end;
                end;
              end
              else if ( cdsItensNFCSOSN.AsString = '202') then
                CSOSN := csosn202
              else if ( cdsItensNFCSOSN.AsString = '203') then
                CSOSN := csosn203
              else if ( cdsItensNFCSOSN.AsString = '300') then
                CSOSN := csosn300
              else if ( cdsItensNFCSOSN.AsString = '400') then
                CSOSN := csosn400
              else if ( cdsItensNFCSOSN.AsString = '500') then
                CSOSN := csosn500
              else if ( cdsItensNFCSOSN.AsString = '900') then
                CSOSN := csosn900;
            end; // CRT = 0

            // CST's

            if ((Trim(cdsItensNFCST.AsString) = '') and (Trim(cdsItensNFCSOSN.AsString) = '')) then
            begin
              if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
                MessageDlg('CST do ICMS em branco no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
              Exit;
            end
            else
            begin
              if ((cdsItensNFCST.AsString = '000') or (cdsItensNFCST.AsString = '100') or (cdsItensNFCST.AsString = '200') or (cdsItensNFCST.AsString = '00')) then
                CST := cst00
              else if ((cdsItensNFCST.AsString = '010') or (cdsItensNFCST.AsString = '110') or (cdsItensNFCST.AsString = '210') or (cdsItensNFCST.AsString = '10')) then
                CST := cst10
              else if ((cdsItensNFCST.AsString = '020') or (cdsItensNFCST.AsString = '120') or (cdsItensNFCST.AsString = '220') or (cdsItensNFCST.AsString = '20')) then
                CST := cst20
              else if ((cdsItensNFCST.AsString = '030') or (cdsItensNFCST.AsString = '130') or (cdsItensNFCST.AsString = '230') or (cdsItensNFCST.AsString = '30')) then
                CST := cst30
              else if ((cdsItensNFCST.AsString = '040') or (cdsItensNFCST.AsString = '140') or (cdsItensNFCST.AsString = '240') or (cdsItensNFCST.AsString = '40')) then
                CST :=  cst40
              else if ((cdsItensNFCST.AsString = '041') or (cdsItensNFCST.AsString = '141') or (cdsItensNFCST.AsString = '241') or (cdsItensNFCST.AsString = '41')) then
                CST :=  cst41
              else if ((cdsItensNFCST.AsString = '050') or (cdsItensNFCST.AsString = '150') or (cdsItensNFCST.AsString = '250') or (cdsItensNFCST.AsString = '50')) then
                CST :=  cst50
              else if ((cdsItensNFCST.AsString = '051') or (cdsItensNFCST.AsString = '151') or (cdsItensNFCST.AsString = '251') or (cdsItensNFCST.AsString = '51')) then
                CST := cst51
              else if ((cdsItensNFCST.AsString = '060') or (cdsItensNFCST.AsString = '160') or (cdsItensNFCST.AsString = '260') or (cdsItensNFCST.AsString = '60')) then
                CST := cst60
              else if ((cdsItensNFCST.AsString = '070') or (cdsItensNFCST.AsString = '170') or (cdsItensNFCST.AsString = '270') or (cdsItensNFCST.AsString = '70')) then
                CST := cst70
              else if ((cdsItensNFCST.AsString = '090') or (cdsItensNFCST.AsString = '190') or (cdsItensNFCST.AsString = '290') or (cdsItensNFCST.AsString = '90')) then
                CST := cst90
              else
                CST := cst00;
            end;

            orig  := cdsItensNFORIGEM.AsVariant;                       //ORIGEM DO PRODUTO
            modBC := BC;                                              //MODO DE BASE DE CALCULO (0) POR %
            //N�o carregar ICMS para Simples Nacional
            if not ((ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional) and (cdsItensNFCSOSN.AsString <> '900')) then
            begin
              vBC := cdsItensNFVLR_BASEICMS.AsVariant;                //VALOR DA BASE DE CALCULO
              pICMS := cdsItensNFICMS.AsVariant;                     //ALIQUOTA DO ICMS
              vICMS := cdsItensNFVALOR_ICMS.AsVariant;                  //VALOR DO ICMS
            end;
            modBCST :=  BCST;                                         //MODO DE BASE DE CALCULO SUBST. TRIBUT�RIA(4) POR %
            vBCST := 0;
            if (not cdsItensNFICMS_SUBSTD.IsNull) then
              vBCST :=    cdsItensNFICMS_SUBSTD.AsVariant;                 //VALOR DA BASE DE CALCULO DA SUBST. TRIBUT�RIA

            if (cdsItensNFCFOP.AsString <> '') then
            begin
              if (cdsItensNFICMS_SUBST.IsNull) then
                pMVAST := 0
              else
                pMVAST := cdsItensNFICMS_SUBST.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
              if (cdsItensNFICMS_SUBSTD.IsNull) then
                pRedBCST := 0
              else
                pRedBCST := cdsItensNFICMS_SUBSTD.AsVariant;                 //ALIQUOTA DA REDU��O DA BASE DE CALCULO DA SUBST. TRIBUT�RIA
              if (cdsItensNFICMS_SUBSTD.IsNull) then
                pICMSST := 0
              else
                pICMSST :=  cdsItensNFICMS_SUBSTD.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUT�RIA
            end
            else begin
              if (cdsItensNFICMS_SUBST.IsNull) then
                pMVAST := 0
              else
                pMVAST := cdsItensNFICMS_SUBST.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
              if (cdsItensNFICMS_SUBSTD.IsNull) then
                pRedBCST := 0
              else
                pRedBCST := cdsItensNFICMS_SUBSTD.AsVariant;                 //ALIQUOTA DA REDU��O DA BASE DE CALCULO DA SUBST. TRIBUT�RIA
              if (cdsItensNFICMS_SUBST.IsNull) then
                pICMSST := 0
              else
                pICMSST := cdsItensNFICMS_SUBST.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUT�RIA
            end;

            //if (sCFOPREDUCAO.IsNull) then
            pRedBC := 0;
            //else
            //  pRedBC :=   sCFOPREDUCAO.AsVariant;                          //ALIQUOTA DA REDU��O DA BASE DE CALCULO
            if (cdsItensNFICMS_SUBST.isnull) then
              vICMSST := 0
            else
              vICMSST :=  cdsItensNFICMS_SUBST.AsVariant;                  //VALOR DO ICMS DA SUBST. TRIBUT�RIA
          end;
          //ICMS.orig    := oeNacional;
          //ICMS.modBC   := dbiValorOperacao;
          //ICMS.modBCST := dbisMargemValorAgregado;

          // ***********************  FIM ICMS ********************************

          // ***********************  PIS ********************************
          with PIS do
          begin
            CST      := pis99;
            PIS.vBC  := 0;
            PIS.pPIS := 0;
            PIS.vPIS := 0;

            PIS.qBCProd   := 0;
            PIS.vAliqProd := 0;
            PIS.vPIS      := 0;
          end;
          // ***********************  FIM PIS ********************************
          with PISST do
          begin
            vBc       := 0;
            pPis      := 0;
            qBCProd   := 0;
            vAliqProd := 0;
            vPIS      := 0;
          end;

          with COFINS do
          begin
            CST            := cof99;
            COFINS.vBC     := 0;
            COFINS.pCOFINS := 0;
            COFINS.vCOFINS := 0;
            COFINS.qBCProd   := 0;
            COFINS.vAliqProd := 0;
          end;

          with COFINSST do
          begin
            vBC       := 0;
            pCOFINS   := 0;
            qBCProd   := 0;
            vAliqProd := 0;
            vCOFINS   := 0;
          end;

          //Grupo para servi�os
          {with ISSQN do
          begin
            vBC       := 0;
            vAliq     := 0;
            vISSQN    := 0;
            cMunFG    := 0;
            cListServ := 1402; // Preencha este campo usando a tabela dispon�vel
                            // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
          {end;}
        end;
      end ;
    end;
  end;  
end;

function TfNFCe.RemoveChar(const Texto: String): String;
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

end.