unit uNFeletronica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ImgList, DB, rpcompobase, rpvclreport, XPMenu,
  gbCobranca, Provider, DBClient, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ComCtrls, JvExComCtrls, JvProgressBar, JvExButtons, JvBitBtn,
  dxCore, dxButton, StdCtrls, Mask, JvExMask, JvToolEdit, Buttons,
  ExtCtrls, MMJPanel, ACBrNFeDANFEClass, pcnConversao, ACBrNFeDANFERave, ACBrNFe,
  ACBrNFeDANFeQRClass, xmldom, XMLIntf, msxmldom, XMLDoc, JvAppStorage,
  JvAppXMLStorage, JvComponentBase, DBCtrls, JvFormPlacement, JvExControls, JvLabel
  ,DBLocal, DBLocalS, DBXpress, ACBrBase, ACBrValidador;

type
  TfNFeletronica = class(TForm)
    sdsNF: TSQLDataSet;
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
    cdsNFCORPONF1: TStringField;
    cdsNFCORPONF2: TStringField;
    cdsNFHORASAIDA: TTimeField;
    cdsNFNOTASERIE: TStringField;
    cdsNFSELECIONOU: TStringField;
    dspNF: TDataSetProvider;
    sdsItensNF: TSQLDataSet;
    dspItensNF: TDataSetProvider;
    cdsItensNF: TClientDataSet;
    sMenorData: TSQLDataSet;
    sMenorDataMENORDATA: TDateField;
    sMaiorData: TSQLDataSet;
    sMaiorDataMAIORDATA: TDateField;
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
    gbCobranca1: TgbCobranca;
    sCFOP: TSQLDataSet;
    sCliente: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sClienteCONTATO: TStringField;
    sClienteINSCESTADUAL: TStringField;
    sClienteRAZAOSOCIAL: TStringField;
    sClienteCNPJ: TStringField;
    sClienteLOGRADOURO: TStringField;
    sClienteBAIRRO: TStringField;
    sClienteCOMPLEMENTO: TStringField;
    sClienteCIDADE: TStringField;
    sClienteUF: TStringField;
    sClienteCEP: TStringField;
    sClienteNUMERO: TStringField;
    OpenDialog1: TOpenDialog;
    sds_param: TSQLDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField8: TStringField;
    sds_paramDADOS: TStringField;
    sds_paramD1: TStringField;
    sds_paramD2: TStringField;
    sds_paramD3: TStringField;
    sds_paramD4: TStringField;
    sds_paramD5: TStringField;
    sds_paramD6: TStringField;
    sds_paramD7: TStringField;
    sds_paramD8: TStringField;
    sds_paramD9: TStringField;
    sds_paramINSTRUCOES: TStringField;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    StringField9: TStringField;
    StringField10: TStringField;
    cds_paramDADOS: TStringField;
    cds_paramD1: TStringField;
    cds_paramD2: TStringField;
    cds_paramD3: TStringField;
    cds_paramD4: TStringField;
    cds_paramD5: TStringField;
    cds_paramD6: TStringField;
    cds_paramD7: TStringField;
    cds_paramD8: TStringField;
    cds_paramD9: TStringField;
    cds_paramINSTRUCOES: TStringField;
    cds_paramCONFIGURADO: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    XPMenu1: TXPMenu;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_MovimentoCNPJ: TStringField;
    dsp_Movimento: TDataSetProvider;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    sds_MovimentoCNPJ: TStringField;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFERave1: TACBrNFeDANFERave;
    sClienteTELEFONE: TStringField;
    sClienteDDD: TStringField;
    sEmpresaNUMERO: TStringField;
    sTabIBGE: TSQLDataSet;
    sTabIBGENM_LOCALIDADE: TStringField;
    sTabIBGECD_IBGE: TStringField;
    sTabIBGENM_MUNICIPIO: TStringField;
    sTabIBGENM_TIPO_LOCALIDADE: TStringField;
    sTabIBGESQ_IBGE: TIntegerField;
    sTabIBGECD_UF: TStringField;
    sProdutos: TSQLDataSet;
    sProdutosCODPRODUTO: TIntegerField;
    sProdutosFAMILIA: TStringField;
    sProdutosCATEGORIA: TStringField;
    sProdutosMARCA: TStringField;
    sProdutosUNIDADEMEDIDA: TStringField;
    sProdutosDATAULTIMACOMPRA: TDateField;
    sProdutosESTOQUEMAXIMO: TFloatField;
    sProdutosESTOQUEATUAL: TFloatField;
    sProdutosESTOQUEREPOSICAO: TFloatField;
    sProdutosESTOQUEMINIMO: TFloatField;
    sProdutosVALORUNITARIOATUAL: TFloatField;
    sProdutosVALORUNITARIOANTERIOR: TFloatField;
    sProdutosICMS: TFloatField;
    sProdutosCODALMOXARIFADO: TIntegerField;
    sProdutosIPI: TFloatField;
    sProdutosCLASSIFIC_FISCAL: TStringField;
    sProdutosCST: TStringField;
    sProdutosBASE_ICMS: TFloatField;
    sProdutosPRODUTO: TStringField;
    sProdutosPRECOMEDIO: TBCDField;
    sProdutosCOD_COMISSAO: TIntegerField;
    sProdutosMARGEM_LUCRO: TFloatField;
    sProdutosCOD_BARRA: TStringField;
    sProdutosVALOR_PRAZO: TFloatField;
    sProdutosTIPO: TStringField;
    sProdutosCONTA_DESPESA: TStringField;
    sProdutosCONTA_RECEITA: TStringField;
    sProdutosCONTA_ESTOQUE: TStringField;
    sProdutosRATEIO: TStringField;
    sProdutosCODPRO: TStringField;
    sProdutosQTDE_PCT: TFloatField;
    sProdutosPESO_QTDE: TFloatField;
    sProdutosDATACADASTRO: TSQLTimeStampField;
    sProdutosMARGEM: TFloatField;
    sProdutosPRO_COD: TStringField;
    sProdutosDATAGRAV: TDateField;
    sProdutosCODFORN: TStringField;
    sProdutosFOTOPRODUTO: TStringField;
    sProdutosLOTES: TStringField;
    sProdutosUSA: TStringField;
    sProdutosLOCALIZACAO: TStringField;
    sProdutosTIPOPRECOVENDA: TStringField;
    sProdutosVALORMINIMO: TFloatField;
    sProdutosVALORCOMISSAO: TFloatField;
    sProdutosGERADESCONTO: TStringField;
    sProdutosIMPRIMIR: TStringField;
    sProdutosORIGEM: TIntegerField;
    cdsNFREDUZICMS: TFloatField;
    sClienteCD_IBGE: TStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaCD_IBGE: TStringField;
    XMLDocument1: TXMLDocument;
    cdsNFPROTOCOLOENV: TStringField;
    cdsNFNUMRECIBO: TStringField;
    cdsNFPROTOCOLOCANC: TStringField;
    sdsNFC: TSQLDataSet;
    sdsNFCNUMNF: TIntegerField;
    sdsNFCPROTOCOLOENV: TStringField;
    sdsNFCNUMRECIBO: TStringField;
    sdsNFCPROTOCOLOCANC: TStringField;
    sNFC: TClientDataSet;
    dspNFC: TDataSetProvider;
    sNFCNUMNF: TIntegerField;
    sNFCPROTOCOLOENV: TStringField;
    sNFCNUMRECIBO: TStringField;
    sNFCPROTOCOLOCANC: TStringField;
    sProdutosNCM: TStringField;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    sdsNFCFOP: TStringField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCORPONF1: TStringField;
    sdsNFCORPONF2: TStringField;
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
    cdsNFENTRADA: TFloatField;
    cdsNFVALOR_PAGAR: TFloatField;
    sEmail: TSQLDataSet;
    sEmailCODCLIENTE: TIntegerField;
    sEmailNOMECLIENTE: TStringField;
    sEmailRAZAOSOCIAL: TStringField;
    sEmailE_MAIL: TStringField;
    sdsNFCORPONF3: TStringField;
    sdsNFCORPONF4: TStringField;
    cdsNFCORPONF3: TStringField;
    cdsNFCORPONF4: TStringField;
    sdsNFFATURA: TStringField;
    cdsNFFATURA: TStringField;
    sdsFatura: TSQLDataSet;
    dspFatura: TDataSetProvider;
    cdsFatura: TClientDataSet;
    sdsFaturaDATAFATURA: TDateField;
    sdsFaturaVALOR: TFloatField;
    sdsFaturaNUMEROFATURA: TStringField;
    cdsFaturaDATAFATURA: TDateField;
    cdsFaturaVALOR: TFloatField;
    cdsFaturaNUMEROFATURA: TStringField;
    sdsNFNATUREZA: TSmallintField;
    cdsNFNATUREZA: TSmallintField;
    sFornec: TSQLDataSet;
    sFornecCODCLIENTE: TIntegerField;
    sFornecNOMECLIENTE: TStringField;
    sFornecCONTATO: TStringField;
    sFornecINSCESTADUAL: TStringField;
    sFornecRAZAOSOCIAL: TStringField;
    sFornecCNPJ: TStringField;
    sFornecLOGRADOURO: TStringField;
    sFornecBAIRRO: TStringField;
    sFornecCOMPLEMENTO: TStringField;
    sFornecCIDADE: TStringField;
    sFornecUF: TStringField;
    sFornecCEP: TStringField;
    sFornecNUMERO: TStringField;
    sFornecTELEFONE: TStringField;
    sFornecDDD: TSmallintField;
    sFornecCD_IBGE: TStringField;
    sProdutosGENERO: TIntegerField;
    sdsNFVALOR_PIS: TFloatField;
    sdsNFVALOR_COFINS: TFloatField;
    cdsNFVALOR_PIS: TFloatField;
    cdsNFVALOR_COFINS: TFloatField;
    sdsNFCORPONF5: TStringField;
    sdsNFCORPONF6: TStringField;
    cdsNFCORPONF5: TStringField;
    cdsNFCORPONF6: TStringField;
    sEmpresa1: TSQLDataSet;
    sEmpresa1EMPRESA: TStringField;
    sEmpresa1RAZAO: TStringField;
    sEmpresa1CNPJ_CPF: TStringField;
    sEmpresa1ENDERECO: TStringField;
    sEmpresa1LOGRADOURO: TStringField;
    sEmpresa1BAIRRO: TStringField;
    sEmpresa1CIDADE: TStringField;
    sEmpresa1UF: TStringField;
    sEmpresa1CEP: TStringField;
    sEmpresa1DDD: TStringField;
    sEmpresa1FONE: TStringField;
    sEmpresa1FONE_1: TStringField;
    sEmpresa1FONE_2: TStringField;
    sEmpresa1FAX: TStringField;
    sEmpresa1E_MAIL: TStringField;
    sEmpresa1WEB: TStringField;
    sEmpresa1LOGOTIPO: TGraphicField;
    sEmpresa1CODIGO: TIntegerField;
    sEmpresa1TIPO: TStringField;
    sEmpresa1IE_RG: TStringField;
    sEmpresa1SLOGAN: TStringField;
    sEmpresa1OUTRAS_INFO: TStringField;
    sEmpresa1CODIGO_CONTA: TIntegerField;
    sEmpresa1DIVERSOS1: TStringField;
    sEmpresa1DIVERSOS2: TStringField;
    sEmpresa1DIVERSOS3: TStringField;
    sEmpresa1ANOLETIVO: TIntegerField;
    sEmpresa1MEDIA_ESCOLA: TFloatField;
    sEmpresa1PORTA: TIntegerField;
    sEmpresa1SMTP: TStringField;
    sEmpresa1SENHA: TStringField;
    sEmpresa1CCUSTO: TIntegerField;
    sEmpresa1NUMERO: TStringField;
    sEmpresa1CD_IBGE: TStringField;
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
    sdsNFVALOR_DESCONTO: TFloatField;
    cdsNFVALOR_DESCONTO: TFloatField;
    sClienteE_MAIL: TStringField;
    sFornecE_MAIL: TStringField;
    sdsItensNFCSOSN: TStringField;
    cdsItensNFCSOSN: TStringField;
    sEmpresaCRT: TIntegerField;
    sdsItensNFFRETE: TFloatField;
    sdsItensNFVALOR_DESCONTO: TFloatField;
    cdsItensNFFRETE: TFloatField;
    cdsItensNFVALOR_DESCONTO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    cdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFVALOR_SEGURO: TFloatField;
    sdsItensNFVALOR_OUTROS: TFloatField;
    cdsItensNFVALOR_SEGURO: TFloatField;
    cdsItensNFVALOR_OUTROS: TFloatField;
    sAdicao: TSQLDataSet;
    sDI: TSQLDataSet;
    sAdicaoADIC_CODDET: TIntegerField;
    sAdicaoADIC_CODDI: TIntegerField;
    sAdicaoADIC_NADICAO: TIntegerField;
    sAdicaoADIC_NSEQUEN: TIntegerField;
    sAdicaoADIC_CODFAB: TStringField;
    sAdicaoADIC_VDESC: TIntegerField;
    sDIDI_CODDI: TIntegerField;
    sDIDI_NUMDI: TStringField;
    sDIDI_DATA: TDateField;
    sDIDI_LOCALDESEMB: TStringField;
    sDIDI_UFDESEMB: TStringField;
    sDIDI_DATADESEMB: TDateField;
    sDIDI_CODEXPORTADOR: TStringField;
    sdsItensNFCODDETALHE: TIntegerField;
    cdsItensNFCODDETALHE: TIntegerField;
    sdsNFIDCOMPLEMENTAR: TStringField;
    cdsNFIDCOMPLEMENTAR: TStringField;
    sdsNFXMLNFE: TGraphicField;
    cdsNFXMLNFE: TMemoField;
    sdsItensNFCST: TStringField;
    cdsItensNFCST: TStringField;
    sClientePAIS: TStringField;
    sFornecPAIS: TStringField;
    sFornecCODPAIS: TStringField;
    sClienteCODPAIS: TStringField;
    sdsItensNFVALOR_PIS: TFloatField;
    sdsItensNFVALOR_COFINS: TFloatField;
    cdsItensNFVALOR_PIS: TFloatField;
    cdsItensNFVALOR_COFINS: TFloatField;
    sCFOPCFCOD: TStringField;
    sCFOPCFNOME: TStringField;
    sCFOPUF: TStringField;
    sCFOPICMS: TFloatField;
    sCFOPREDUCAO: TFloatField;
    sCFOPIPI: TFloatField;
    sCFOPICMS_SUBSTRIB: TFloatField;
    sCFOPICMS_SUBSTRIB_IC: TFloatField;
    sCFOPICMS_SUBSTRIB_IND: TFloatField;
    sCFOPNAOENVFATURA: TStringField;
    sCFOPCSTPIS: TStringField;
    sCFOPCSTCOFINS: TStringField;
    sCFOPCOFINS: TFloatField;
    sCFOPPIS: TFloatField;
    sdsItensNFII: TFloatField;
    sdsItensNFBCII: TFloatField;
    cdsItensNFII: TFloatField;
    cdsItensNFBCII: TFloatField;
    sdsNFII: TFloatField;
    sdsNFBCII: TFloatField;
    cdsNFII: TFloatField;
    cdsNFBCII: TFloatField;
    sEstado: TSQLDataSet;
    sEstadoCODIGO: TIntegerField;
    sEstadoSIGLA: TStringField;
    sEstadoNOME: TStringField;
    sCFOPCSTIPI: TStringField;
    sdsNFTRANSP2: TStringField;
    cdsNFTRANSP2: TStringField;
    sdsNFCODTRANSP: TIntegerField;
    cdsNFCODTRANSP: TIntegerField;
    sdsItensNFOBS: TStringField;
    cdsItensNFOBS: TStringField;
    PageControl1: TPageControl;
    NFe: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    btnImprime: TBitBtn;
    btnGeraPDF: TBitBtn;
    Panel1: TPanel;
    sbtnGetCert: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    cbTipoNota: TRadioGroup;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    MemoResp: TMemo;
    edtNumSerie: TEdit;
    Edit1: TEdit;
    edSerie: TEdit;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    btnListar: TBitBtn;
    JvDateEdit2: TJvDateEdit;
    chkTodas: TCheckBox;
    ComboBox1: TComboBox;
    JvDateEdit1: TJvDateEdit;
    btnSairVenda: TBitBtn;
    btnSair: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    btnGeraNFe: TBitBtn;
    BtnPreVis: TBitBtn;
    BtnEnvEmail: TBitBtn;
    TabSheet2: TTabSheet;
    GroupBox6: TGroupBox;
    btnContingencia: TBitBtn;
    btnPreVisCont: TBitBtn;
    btnValidaXML: TBitBtn;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    btnSPED: TBitBtn;
    btnPreVisSped: TBitBtn;
    TabSheet4: TTabSheet;
    GroupBox8: TGroupBox;
    btnDpec: TBitBtn;
    btnPreVisDPEC: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet5: TTabSheet;
    GroupBox9: TGroupBox;
    btnFSDA: TBitBtn;
    btnPreVisFSDA: TBitBtn;
    BitBtn3: TBitBtn;
    TabSheet6: TTabSheet;
    btnStatus: TBitBtn;
    btnConsulta: TBitBtn;
    btnValidaNFe: TBitBtn;
    btnCancelaNFe: TBitBtn;
    btnInutilizar: TBitBtn;
    CCe: TTabSheet;
    Panel2: TPanel;
    GroupBox12: TGroupBox;
    Label11: TLabel;
    Memo1: TMemo;
    GroupBox13: TGroupBox;
    Label14: TLabel;
    btnListarCCe: TBitBtn;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    BitBtn8: TBitBtn;
    JvDBGrid2: TJvDBGrid;
    BtnCCe: TBitBtn;
    sdsCCE: TSQLDataSet;
    dspCCe: TDataSetProvider;
    cdsCCE: TClientDataSet;
    DtSrcCCe: TDataSource;
    GroupBox10: TGroupBox;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    edtNumSerie2: TEdit;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    sdsItensNFCSTIPI: TStringField;
    sdsItensNFCSTPIS: TStringField;
    sdsItensNFCSTCOFINS: TStringField;
    cdsItensNFCSTIPI: TStringField;
    cdsItensNFCSTPIS: TStringField;
    cdsItensNFCSTCOFINS: TStringField;
    sdsItensNFPPIS: TFloatField;
    sdsItensNFPCOFINS: TFloatField;
    cdsItensNFPPIS: TFloatField;
    cdsItensNFPCOFINS: TFloatField;
    sdsItensNFNITEMPED: TIntegerField;
    sdsItensNFPEDIDO: TStringField;
    cdsItensNFNITEMPED: TIntegerField;
    cdsItensNFPEDIDO: TStringField;
    VCLReport1: TVCLReport;
    sdsCCECHAVE: TStringField;
    sdsCCEORGAO: TIntegerField;
    sdsCCEDHENVIO: TSQLTimeStampField;
    sdsCCESEQUENCIA: TIntegerField;
    sdsCCECORRECAO: TStringField;
    sdsCCEPROTOCOLO: TStringField;
    sdsCCESELECIONOU: TStringField;
    sdsCCECNPJ: TStringField;
    sdsCCECONDICAO: TStringField;
    cdsCCECHAVE: TStringField;
    cdsCCEORGAO: TIntegerField;
    cdsCCEDHENVIO: TSQLTimeStampField;
    cdsCCESEQUENCIA: TIntegerField;
    cdsCCECORRECAO: TStringField;
    cdsCCEPROTOCOLO: TStringField;
    cdsCCESELECIONOU: TStringField;
    cdsCCECNPJ: TStringField;
    cdsCCECONDICAO: TStringField;
    btnImprimirCCe: TBitBtn;
    sClienteCODFISCAL: TStringField;
    sCFOPCODFISCAL: TStringField;
    sFornecCODFISCAL: TStringField;
    sClienteSUFRAMA: TStringField;
    sdsCfopProd: TSQLDataSet;
    sdsCfopProdCOD_PROD: TIntegerField;
    sdsCfopProdCFOP: TStringField;
    sdsCfopProdUF: TStringField;
    sdsCfopProdICMS_SUBST: TFloatField;
    sdsCfopProdICMS_SUBST_IC: TFloatField;
    sdsCfopProdICMS_SUBST_IND: TFloatField;
    sdsCfopProdICMS: TFloatField;
    sdsCfopProdICMS_BASE: TFloatField;
    sdsCfopProdCST: TStringField;
    sdsCfopProdIPI: TFloatField;
    sdsCfopProdCSOSN: TStringField;
    sdsCfopProdCSTIPI: TStringField;
    sdsCfopProdCSTPIS: TStringField;
    sdsCfopProdCSTCOFINS: TStringField;
    sdsCfopProdPIS: TFloatField;
    sdsCfopProdCOFINS: TFloatField;
    sdsItensNFVLRBC_IPI: TFloatField;
    sdsItensNFVLRBC_PIS: TFloatField;
    sdsItensNFVLRBC_COFINS: TFloatField;
    sdsItensNFVLRTOT_TRIB: TFloatField;
    cdsItensNFVLRBC_IPI: TFloatField;
    cdsItensNFVLRBC_PIS: TFloatField;
    cdsItensNFVLRBC_COFINS: TFloatField;
    cdsItensNFVLRTOT_TRIB: TFloatField;
    sdsNFBASE_IPI: TFloatField;
    sdsNFBASE_PIS: TFloatField;
    sdsNFBASE_COFINS: TFloatField;
    sdsNFVLRTOT_TRIB: TFloatField;
    cdsNFBASE_IPI: TFloatField;
    cdsNFBASE_PIS: TFloatField;
    cdsNFBASE_COFINS: TFloatField;
    cdsNFVLRTOT_TRIB: TFloatField;
    chkScan: TCheckBox;
    sdsNFSTATUS: TStringField;
    cdsNFSTATUS: TStringField;
    TabSheet7: TTabSheet;
    Label12: TLabel;
    edUfEmbarque: TEdit;
    Label13: TLabel;
    edLocalEmbarque: TEdit;
    btnAbaPrincipal: TBitBtn;
    ACBrValidador1: TACBrValidador;
    sdsItensNFCOD_BARRA: TStringField;
    cdsItensNFCOD_BARRA: TStringField;
    procedure btnGeraNFeClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnGeraPDFClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnCancelaNFeClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure ValidaNFeClick(Sender: TObject);
    procedure BtnEnvEmailClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPreVisClick(Sender: TObject);
    procedure btnSPEDClick(Sender: TObject);
    procedure btnSairVendaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnContingenciaClick(Sender: TObject);
    procedure btnPreVisContClick(Sender: TObject);
    procedure btnPreVisSpedClick(Sender: TObject);
    procedure btnPreVisDPECClick(Sender: TObject);
    procedure btnDpecClick(Sender: TObject);
    procedure btnFSDAClick(Sender: TObject);
    procedure btnPreVisFSDAClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnValidaXMLClick(Sender: TObject);
    procedure btnListarCCeClick(Sender: TObject);
    procedure BtnCCeClick(Sender: TObject);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure JvDBGrid2ColEnter(Sender: TObject);
    procedure JvDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirCCeClick(Sender: TObject);
    procedure EnviaEmail;
    procedure cbTipoNotaClick(Sender: TObject);
    procedure chkScanClick(Sender: TObject);
    procedure btnAbaPrincipalClick(Sender: TObject);

  private
    tpNFe : integer;
    numnf : WideString;
    envemail : string;
    TD: TTransactionDesc;
    function validaNumNfe():Boolean;
    function validaNumNfeScan():Boolean;
    procedure getCli_Fornec();
    procedure getEmpresa();
    procedure getItens(contador : integer);
    procedure getTransportadora();
    procedure getPagamento();
    procedure pegaItens(tpNf: integer);
    procedure imprimiCCe(protocolo: string; dthenvio : TDateTime; condicao : string);
  public
    { Public declarations }
  end;

var
  fNFeletronica: TfNFeletronica;
  conta_local: string;
  tp_amb : integer;

implementation

uses pcnNFe, ACBrNFeNotasFiscais, DateUtils, ACBrNFeUtil, UDm,
 ACBrNFeWebServices, uNFeInutilizar, ACBrNFeConfiguracoes, sCtrlResize,
  uNFeMail, uNotaf, uVendaFinalizar, uVendas, StrUtils, UDMNF;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
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

procedure TfNFeletronica.btnListarClick(Sender: TObject);
var str_nf: string;
begin
   if (cdsNF.Active) then
     cdsNF.Close;

   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Params[2].Clear;
   cdsNF.Params[3].Clear;
   cdsNf.Params.ParamByName('ENV').Clear;
   if (chkTodas.Checked) then
     cdsNf.Params.ParamByName('ENV').AsString := 'TODAS';

   if (edSerie.Text <> '') then
     cdsNF.Params[2].AsString := edSerie.Text
   else
     cdsNF.Params[3].AsString := 'todasasseriesdenotaf';
   if (cbTipoNota.ItemIndex = 0) then
   begin
    cdsNF.Params[4].AsSmallInt := 20;
      str_nf := 'select  nf.CFOP, nf.DTAEMISSAO, nf.DTASAIDA, nf.IDCOMPLEMENTAR,  nf.CORPONF1, nf.CORPONF2, nf.CORPONF3, nf.CORPONF4, nf.CORPONF5, nf.CORPONF6, nf.XMLNFE, nf.CODCLIENTE, nf.NUMNF, nf.CODVENDA, nf.fatura, nf.natureza, ' +
      'UDF_ROUNDDEC(nf.BASE_ICMS, 2) as BASE_ICMS, UDF_ROUNDDEC(nf.VALOR_ICMS, 2) as VALOR_ICMS, UDF_ROUNDDEC(nf.BASE_ICMS_SUBST, 2) as BASE_ICMS_SUBST, ' +
      'UDF_ROUNDDEC(nf.VALOR_ICMS_SUBST, 2) as VALOR_ICMS_SUBST, UDF_ROUNDDEC(nf.VALOR_PRODUTO, 2) as VALOR_PRODUTO, nf.VALOR_FRETE, nf.VALOR_SEGURO, nf.OUTRAS_DESP, nf.VALOR_IPI,' +
      'UDF_ROUNDDEC(nf.VALOR_TOTAL_NOTA, 2) as VALOR_TOTAL_NOTA,  nf.FRETE,   nf.CNPJ_CPF,  udf_left(nf.NOMETRANSP, 60)as NOMETRANSP,  nf.INSCRICAOESTADUAL,' +
      'udf_left(nf.END_TRANSP,60)as END_TRANSP,    udf_left(nf.CIDADE_TRANSP, 60) as CIDADE_TRANSP, nf.UF_TRANSP, UDF_ROUNDDEC(nf.II, 2) as II, UDF_ROUNDDEC(nf.BCII, 2) as BCII, '+
      'nf.PLACATRANSP, nf.UF_VEICULO_TRANSP, nf.CODTRANSP, nf.QUANTIDADE,  nf.ESPECIE,  nf.MARCA, nf.NUMERO, nf.PESOLIQUIDO, nf.VALOR_DESCONTO, ' +
      'nf.PESOBRUTO, f.RAZAOSOCIAL, f.CNPJ , nf.HORASAIDA,  nf.NOTASERIE, nf.SELECIONOU, nf.REDUZICMS, nf.PROTOCOLOENV, ' +
      'nf.NUMRECIBO, nf.PROTOCOLOCANC, c.ENTRADA, c.VALOR_PAGAR, VALOR_PIS, VALOR_COFINS, ' +
      ' nf.NOMETRANSP TRANSP2, nf.BASE_IPI, nf.BASE_PIS, nf.BASE_COFINS, ' +
      ' UDF_ROUNDDEC(nf.VLRTOT_TRIB, 2) as VLRTOT_TRIB, nf.STATUS  ' +
      '  from NOTAFISCAL nf ' +
      ' inner join FORNECEDOR f on f.CODFORNECEDOR = nf.CODCLIENTE ' +
      ' inner join enderecoFORNECEDOR endeforn on endeforn.CODFORNECEDOR = f.CODFORNECEDOR ' +
      '  left outer join COMPRA c on c.CODCOMPRA = nf.CODVENDA '+
      ' where (nf.DTAEMISSAO between :dta1 and :dta2) ' +
      '   and ((nf.SERIE = :pvendacusto) or (:pvendacusto = ' + quotedstr('todasasseriesdenotaf') + ')) '+
      '   and (endeforn.TIPOEND = 0) ' +
      '   and ((NF.NATUREZA = :natnf) or (NF.NATUREZA = 21)) ' +
      '   and ((nf.PROTOCOLOENV IS NULL) OR (:ENV = ' + quotedstr('TODAS') + ')) ' ;
      if (chkTodas.Checked = False) then
        str_nf := str_nf + ' and ((nf.STATUS IS NULL) or (nf.STATUS = ' + QuotedStr('E') + ')) ';
      str_nf := str_nf + ' order by nf.NOTASERIE DESC';
      cdsNF.CommandText := str_nf;
   end
   else
   begin
    cdsNF.Params[4].AsSmallInt := 15;
    str_nf := 'select  nf.CFOP, nf.DTAEMISSAO, nf.DTASAIDA, nf.CODTRANSP, nf.IDCOMPLEMENTAR,  nf.CORPONF1, nf.CORPONF2, nf.CORPONF3, nf.CORPONF4, nf.CORPONF5, nf.CORPONF6, nf.XMLNFE, nf.CODCLIENTE, nf.NUMNF, ' +
    'nf.CODVENDA, nf.fatura, nf.natureza, UDF_ROUNDDEC(nf.BASE_ICMS, 2) as BASE_ICMS, UDF_ROUNDDEC(nf.VALOR_ICMS, 2) as VALOR_ICMS, ' +
    'UDF_ROUNDDEC(nf.BASE_ICMS_SUBST, 2) as BASE_ICMS_SUBST, UDF_ROUNDDEC(nf.VALOR_ICMS_SUBST, 2) as VALOR_ICMS_SUBST, UDF_ROUNDDEC(nf.II, 2) as II, UDF_ROUNDDEC(nf.BCII, 2) as BCII, ' +
    'UDF_ROUNDDEC(nf.VALOR_PRODUTO, 2) as VALOR_PRODUTO, nf.VALOR_FRETE, nf.VALOR_SEGURO, nf.OUTRAS_DESP, nf.VALOR_IPI,' +
    'UDF_ROUNDDEC(nf.VALOR_TOTAL_NOTA, 2) as VALOR_TOTAL_NOTA,  nf.FRETE,   nf.CNPJ_CPF,  udf_left(nf.NOMETRANSP, 60)as NOMETRANSP,  '+
    'nf.INSCRICAOESTADUAL, udf_left(nf.END_TRANSP, 60)as END_TRANSP,    udf_left(nf.CIDADE_TRANSP, 60)as CIDADE_TRANSP, ' +
    'nf.UF_TRANSP, nf.PLACATRANSP, nf.UF_VEICULO_TRANSP, nf.QUANTIDADE,  nf.ESPECIE,  nf.MARCA, nf.NUMERO, nf.PESOLIQUIDO, nf.VALOR_DESCONTO, ' +
    'nf.PESOBRUTO, nf.HORASAIDA,  nf.NOTASERIE, nf.SELECIONOU, nf.REDUZICMS, ' +
    ' nf.PROTOCOLOENV, nf.NOMETRANSP TRANSP2, nf.NUMRECIBO, nf.PROTOCOLOCANC, ' +
    ' co.ENTRADA, co.VALOR_PAGAR, c.RAZAOSOCIAL, c.CNPJ, VALOR_PIS, VALOR_COFINS '+
    ', nf.BASE_IPI, nf.BASE_PIS, nf.BASE_COFINS, UDF_ROUNDDEC(nf.VLRTOT_TRIB, 2) ' +
    ' as VLRTOT_TRIB, nf.STATUS  ' +
    '  from NOTAFISCAL nf ' +
    ' inner join CLIENTES c on c.CODCLIENTE = nf.CODCLIENTE ' +
    ' inner join ENDERECOCLIENTE ec on ec.CODCLIENTE = c.CODCLIENTE '+
    '  left outer join VENDA co on co.CODVENDA = nf.CODVENDA  ' +
    ' where (nf.DTAEMISSAO between :dta1 and :dta2) ' +
    '   and ((nf.SERIE = :pvendacusto) or (:pvendacusto = ' + quotedstr('todasasseriesdenotaf') + ')) '+
    '   and (ec.TIPOEND = 0) ' +
    '   and ((NF.NATUREZA = :natnf) or (NF.NATUREZA = 12) or (NF.NATUREZA = 16))' +
    '   and ((nf.PROTOCOLOENV IS NULL) OR (:ENV = ' + quotedstr('TODAS') + ')) ';
      if (chkTodas.Checked = False) then
        str_nf := str_nf + ' and ((nf.STATUS IS NULL) or (nf.STATUS = ' + QuotedStr('E') + ')) ';
      str_nf := str_nf + ' order by nf.NOTASERIE DESC';
     cdsNF.CommandText := str_nf;
   end;
   cdsNF.Open;

  if (sMenorData.Active) then
     sMenorData.Close;
   sMenorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMenorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMenorData.Params[2].Clear;
   sMenorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMenorData.Params[2].AsString := edSerie.Text
   else
     sMenorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMenorData.Open;

   if (sMaiorData.Active) then
     sMaiorData.Close;
   sMaiorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMaiorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMaiorData.Params[2].Clear;
   sMaiorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMaiorData.Params[2].AsString := edSerie.Text
   else
     sMaiorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMaiorData.Open;


   if (not cdsNF.Eof) then
   begin
     btnGeraNFe.Enabled :=      True;
     btnContingencia.Enabled := True;
     btnSPED.Enabled :=         True;
     btnDpec.Enabled :=         True;
     btnFSDA.Enabled :=         True;
     BtnPreVis.Enabled :=       True;
     btnPreVisCont.Enabled :=   True;
     btnPreVisSped.Enabled :=   True;
     btnPreVisDPEC.Enabled :=   True;
     btnPreVisFSDA.Enabled :=   True;
   end
   else
   begin
     btnGeraNFe.Enabled :=      False;
     btnContingencia.Enabled := False;
     btnSPED.Enabled :=         False;
     btnDpec.Enabled :=         False;
     btnFSDA.Enabled :=         False;
     BtnPreVis.Enabled :=       False;
     btnPreVisCont.Enabled :=   False;
     btnPreVisSped.Enabled :=   False;
     btnPreVisDPEC.Enabled :=   False;
     btnPreVisFSDA.Enabled :=   False;
   end;

end;

procedure TfNFeletronica.btnGeraNFeClick(Sender: TObject);
var
  i, codnf: integer;
  Protocolo, Recibo, str, vAux, valida : String;
  tipoNota: Char;
begin
  if (tp_amb = 3) then
  begin
    if (validaNumNfeScan = false) then
    begin
      MessageDlg('Número da Nota Fiscal errado.', mtError, [mbOK], 0);
      exit;
    end;
  end;

   ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';

   if (not cds_ccusto.Active) then
     cds_ccusto.Open;
   cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
   cds_ccusto.Locate('NOME', ComboBox2.Text,[loCaseInsensitive]);

   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;
   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   //verifica se o CC foi selecionado caso não da mensagem avisando
   if(sEmpresa.IsEmpty) then
     MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);

   cdsNF.First;
   while not cdsNF.Eof do
   begin
      if (cdsNFSELECIONOU.AsString = 'S') then
      begin
        if(not cdsNFPROTOCOLOENV.IsNull) then
          exit;

        tipoNota := trim(cdsNFCFOP.AsString)[1];
        if (tipoNota in ['1','2','3']) then
          tpNFe := 0;
        if (tipoNota in ['5','6','7']) then
          tpNFe := 1;

         { isto estava fora do IF}
         if (cbTipoNota.ItemIndex = 1) then
         begin
           if (sCliente.Active) then
             sCliente.Close;
           sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
           sCliente.Open;
           if (sClienteUF.AsString = 'EX') then
           begin
             if (edUfEmbarque.Text = '') then
             begin
               MessageDlg('Preencha o UF e Local de Embarque.', mtWarning, [mbOK], 0);
               PageControl2.ActivePage := TabSheet7;
               edUfEmbarque.SetFocus;
               exit;
             end;
           end;
         end
         else
         begin
          if (sFornec.Active) then
            sFornec.Close;
          sFornec.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
          sFornec.Open;
         end;

         if (sCFOP.Active) then
           sCFOP.Close;
         sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
         if (cbTipoNota.ItemIndex = 1) then
         begin
          sCFOP.Params[1].AsString := sClienteUF.AsString;
          sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
         end
         else
         begin
          sCFOP.Params[1].AsString := sFornecUF.AsString;
          sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
         end;
         sCFOP.Open;
         if (sCFOP.IsEmpty) then
         begin
           MessageDlg('Não existe este CFOP cadastrado para este ESTADO.'+#13+#10+'(Cadastros -> CFOP-ESTADO).', mtWarning, [mbOK], 0);
           exit;
         end;

          ACBrNFe1.NotasFiscais.Clear;
          with ACBrNFe1.NotasFiscais.Add.NFe do
          begin
            //infNFe.ID := 0                                  // Chave de acesso da NF-e precedida do literal NFe acrescentado a validação do formato 2.0

            if (sEstado.Active) then
              sEstado.Close;
            sEstado.Params[0].AsString := sEmpresaUF.asString;
            sEstado.Open;
            Ide.cUF       := sEstadoCODIGO.AsInteger;                   // Codigo do UF do Emitente do documento fiscal
            Ide.cNF       := cdsNFNUMNF.AsInteger;
            Ide.natOp     := copy(sCFOPCFNOME.AsString,0,59);

            //Verifica tipo de Pagamento
            getPagamento;

            Ide.cMunFG    := 3554003;
            Ide.modelo    := 55;
            Ide.serie     := 1;
            if (tp_amb = 1) then
            begin
              Ide.tpEmis    := teNormal;
            end
            else if (tp_amb = 2) then
            begin
              Ide.tpEmis    := teContingencia;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Contingência', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end
            else if (tp_amb = 3) then
            begin
              Ide.tpEmis    := teSCAN;
              Ide.serie     := 900;
            end
            else if (tp_amb = 4) then
            begin
              Ide.tpEmis    := teDPEC;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Contingência', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end
            else if (tp_amb = 5) then
            begin
              Ide.tpEmis    := teFSDA;
              Ide.dhCont    := Now;
              InputQuery('Justificativa de entrada em Contingência', 'Justificativa', vAux);
              Ide.xJust     := vAux;
            end;
            if( (cdsNFIDCOMPLEMENTAR.IsNull) or (cdsNFIDCOMPLEMENTAR.AsString = '')) then
              ide.finNFe    := fnNormal
            else
            begin
              ide.finNFe    := fnComplementar;
              ide.NFref.Add.refNFe := cdsNFIDCOMPLEMENTAR.AsString;
            end;
            Ide.nNF       := StrToInt(cdsNFNOTASERIE.AsString);
            codnf         := cdsNFNUMNF.AsInteger;
            Ide.dEmi      := cdsNFDTAEMISSAO.AsDateTime;
            Ide.dSaiEnt   := cdsNFDTASAIDA.AsDateTime;
            Ide.hSaiEnt   := cdsNFHORASAIDA.AsDateTime;
            InfAdic.infCpl := cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString + ' ' + cdsNFCORPONF3.AsString + ' ' + cdsNFCORPONF4.AsString + ' ' + cdsNFCORPONF5.AsString + ' ' + cdsNFCORPONF6.AsString;
            // Tipo de movimentação 0 entrada 1 saida
            if (tpNFe = 0) then
            begin
              Ide.tpNF := tnEntrada;
            end;
            if (tpNFe = 1) then
            begin
              Ide.tpNF    := tnSaida;
            end;
            //Ide.tpAmb     := tn2;                           // 1 - Produção // 2 Homologação
            Ide.verProc   := '1.0.0.0';

            if (sTabIBGE.Active) then
              sTabIBGE.Close;
            sTabIBGE.Params[0].AsString := sEmpresaCIDADE.AsString;
            sTabIBGE.Open;
            //Carrega dados do Emitente
            if ((sEmpresaCD_IBGE.IsNull) or (sEmpresaCD_IBGE.AsString = '')) then
            begin
              MessageDlg('Codigo do IBGE da empresa não definido', mtError, [mbOK], 0);
              valida := 'N';
            end;
            if (valida = 'N') then
              exit;
            getEmpresa();
            //CARREGA OS DADOS DO DESTINATARIO CLIENTE/FORNECEDOR
            if( sFornec.Active) then
              if ((sFornecCD_IBGE.IsNull) or (sFornecCD_IBGE.AsString = '')) then
              begin
                MessageDlg('Codigo do IBGE do Fornecedor não definido', mtError, [mbOK], 0);
                valida := 'N';
              end;
            if( sCliente.Active) then
              if ((sClienteCD_IBGE.IsNull) or (sClienteCD_IBGE.AsString = '')) then
              begin
                MessageDlg('Codigo do IBGE do Cliente não definido', mtError, [mbOK], 0);
                valida := 'N';
              end;
            if (valida = 'N') then
              exit;
            getCLi_Fornec();

            pegaItens(cbTipoNota.ItemIndex);

            i := 1;
            while not cdsItensNF.Eof do // Escrevo os itens
            begin
              if (sProdutos.Active) then
                sProdutos.Close;
              sProdutos.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
              try
                sProdutos.Open;
              finally
                if ((sProdutosUNIDADEMEDIDA.AsString = '') or (sProdutosUNIDADEMEDIDA.IsNull) or (sProdutosUNIDADEMEDIDA.AsString = ' ')) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem Unidade de Medida', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if ((sProdutosNCM.AsString = '00000000') or (sProdutosNCM.IsNull) ) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com NCM Nulo ou Inválido', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if ((sProdutosORIGEM.IsNull) ) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com Origem Nula', mtError, [mbOK], 0);
                  valida := 'N';
                end;
                if (((cdsItensNFCSOSN.IsNull) or (cdsItensNFCSOSN.AsString = '')) and ((cdsItensNFCST.IsNull) or (cdsItensNFCST.AsString = ''))) then
                begin
                  MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem CST ou CSOSN', mtError, [mbOK], 0);
                  valida := 'N';
                end;
              end;
              // DADOS DOS PRODUTOS DA NOTA
              getItens(i);
              i := i + 1;
              cdsItensNF.Next;
            end;
            getTransportadora();

            if (sCliente.Active) then
            begin
              if (sClienteUF.AsString = 'EX') then
              begin
                exporta.UFembarq := edUfEmbarque.Text;
                exporta.xLocEmbarq := edLocalEmbarque.Text;
              end;
            end;  
            //VALOR TORAL

            if not (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional) then
            begin
              if (cdsNFBASE_ICMS.IsNull) then
                  MessageDlg('Base de cálculo nula', mtError, [mbOK], 0);
              Total.ICMSTot.vBC   := cdsNFBASE_ICMS.AsVariant;
              if (cdsNFVALOR_ICMS.IsNull) then
                  MessageDlg('ICMS nulo', mtError, [mbOK], 0);
              Total.ICMSTot.vICMS   := cdsNFVALOR_ICMS.AsVariant;
            end;

            if (cdsNFBASE_ICMS_SUBST.IsNull) then
                MessageDlg('Base ICMS ST nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;
            if (cdsNFVALOR_ICMS_SUBST.IsNull) then
                MessageDlg('ICMS ST nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vST   := cdsNFVALOR_ICMS_SUBST.AsVariant;
            if (cdsNFVALOR_PRODUTO.IsNull) then
                MessageDlg('Valor dos produtos nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vProd := cdsNFVALOR_PRODUTO.AsVariant;
            if (cdsNFVALOR_FRETE.IsNull) then
                MessageDlg('Valor do Frete nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vFrete := cdsNFVALOR_FRETE.AsVariant;
            if (cdsNFVALOR_SEGURO.IsNull) then
                MessageDlg('Valor do Seguro nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vSeg := cdsNFVALOR_SEGURO.AsVariant;
            Total.ICMSTot.vDesc := cdsNFVALOR_DESCONTO.AsVariant;
            Total.ICMSTot.vII := cdsNFII.AsVariant;
            if (cdsNFVALOR_IPI.IsNull) then
                MessageDlg('Valor do IPI nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vIPI := cdsNFVALOR_IPI.AsVariant;
            if ( (cdsNFVALOR_PIS.AsFloat <> 0 )or (cdsNFVALOR_PIS.AsFloat <> null )) then
              Total.ICMSTot.vPIS := cdsNFVALOR_PIS.AsFloat;
            if ( (cdsNFVALOR_COFINS.AsFloat <> 0) or (cdsNFVALOR_COFINS.AsFloat <> null )) then
              Total.ICMSTot.vCOFINS := cdsNFVALOR_COFINS.AsFloat;
            if (cdsNFOUTRAS_DESP.IsNull) then
                MessageDlg('Valor de outras despesas nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vOutro := cdsNFOUTRAS_DESP.AsVariant;
            if (cdsNFVALOR_TOTAL_NOTA.IsNull) then
                MessageDlg('Valor do Total da Nota nulo', mtError, [mbOK], 0);
            Total.ICMSTot.vNF   := cdsNFVALOR_TOTAL_NOTA.AsVariant;
            Total.ICMSTot.vTotTrib := cdsNFVLRTOT_TRIB.AsVariant;
          end;
      end;
      cdsNF.Next;
   end;
   AcbrNfe1.Configuracoes.Geral.PathSalvar := sempresaDIVERSOS1.AsString;
   ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
   MemoResp.Lines.LoadFromFile(ACBrNFe1.Configuracoes.Geral.PathSalvar+'\'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
   MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0);
   //Gera Envio da Nota
   ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
   ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
   ACBrNFeDANFERave1.CasasDecimais._vUnCom := dm.danfeDec;

   if ( (tp_amb = 2) or (tp_amb = 5)) then
   begin
     ACBrNFe1.NotasFiscais.Assinar;
     ACBrNFe1.NotasFiscais.Valida;
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     DecimalSeparator := '.';

     dm.sqlsisAdimin.StartTransaction(TD);
     try
       str := 'UPDATE NOTAFISCAL SET ';
       str := str + ' XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML);
       str := str + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
       str := str + ', STATUS = ' + QuotedStr('E');
       str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
       dm.sqlsisAdimin.ExecuteDirect(str);
       dm.sqlsisAdimin.Commit(TD);
     except
       on E : Exception do
       begin
         ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       end;
     end;



     //SALVA NFe e NOMEXML no BD
     DecimalSeparator := ',';
     ACBrNFe1.NotasFiscais.Imprimir;
   end
   else if (tp_amb = 4) then
   begin
     if ACBrNFe1.WebServices.EnviarDPEC.Executar then
     begin
       //protocolo de envio ao DPEC e impressão do DANFE
       ACBrNFe1.DANFE.ProtocoloNFe:=ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC+' '+
                                    DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
       ACBrNFe1.NotasFiscais.Imprimir;
       ShowMessage(DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC));
       ShowMessage(ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);
     end;

     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     DecimalSeparator := '.';

     dm.sqlsisAdimin.StartTransaction(TD);
     try
       //SALVA NFe e NOMEXML no BD
       //SALVA PROTOCOLO DPEC
       str := 'UPDATE NOTAFISCAL SET ';
       str := str + '  XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML);
       str := str + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
       str := str + ', STATUS = ' + QuotedStr('E');
       if (ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC <> '') then
         str := str + ', PROTOCOLOENV = ' + quotedStr(ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);
       str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
       dm.sqlsisAdimin.ExecuteDirect(str);
       dm.sqlsisAdimin.Commit(TD);
     except
       on E : Exception do
       begin
         ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       end;
     end;
   end
   else
   begin
     ACBrNFe1.Enviar(0);
     AcbrNfe1.Configuracoes.Geral.PathSalvar := sempresaDIVERSOS1.AsString;
     ShowMessage('Nº do Protocolo de envio ' + ACBrNFe1.WebServices.Retorno.Protocolo);
     ShowMessage('Nº do Recibo de envio ' + ACBrNFe1.WebServices.Retorno.Recibo);

     Protocolo := ACBrNFe1.WebServices.Retorno.Protocolo;
     Recibo := ACBrNFe1.WebServices.Retorno.Recibo;

     if (envemail = 'S') then
     begin
       if (cbTipoNota.ItemIndex = 1) then
       begin
         if (not sClienteE_MAIL.IsNull) then
           EnviaEmail
         else
           MessageDlg('Não foi possivel Enviar o Email, pois o cliente não possui email em seu cadastro.', mtError, [mbOK], 0);
       end;
     end;
    //PEGA A RESPOSTA
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;

     dm.sqlsisAdimin.StartTransaction(TD);
     try
       //SALVA NFe, PROTOCOLOS e NOMEXML no BD
       str := 'UPDATE NOTAFISCAL SET ';
       str := str + '  XMLNFE = ' + quotedStr(ACBrNFe1.NotasFiscais.Items[0].XML);
       str := str + ', NOMEXML = ' + QuotedStr(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
       str := str + ', STATUS = ' + QuotedStr('E');
       if (Protocolo <> '') then
         str := str + ', PROTOCOLOENV = ' + quotedStr(Protocolo);
       if (Recibo <> '') then
         str := str + ', NUMRECIBO = ' + QuotedStr(Recibo);
       str := str + ' WHERE NUMNF = ' + IntToStr(codnf);
       dm.sqlsisAdimin.ExecuteDirect(str);
       dm.sqlsisAdimin.Commit(TD);
     except
       on E : Exception do
       begin
         ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       end;
     end;

     DecimalSeparator := ',';
   end;

   btnListar.Click;
   ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
end;

procedure TfNFeletronica.JvDBGrid1CellClick(Column: TColumn);
begin
  cdsNF.Edit;
  if cdsNFSELECIONOU.AsString = 'S' then
    cdsNFSELECIONOU.AsString := ''
  else begin
    cdsNFSELECIONOU.AsString := 'S';
  end;
end;

procedure TfNFeletronica.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = cdsNFSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TfNFeletronica.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Selecionou
  if Column.Field = cdsNFSELECIONOU then
  begin
     JvDBGrid1.Canvas.FillRect(Rect);
     ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
     if cdsNFSELECIONOU.AsString = 'S' then
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
     else
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
  end;
end;

procedure TfNFeletronica.BitBtn3Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := 'S';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFeletronica.BitBtn4Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := '';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFeletronica.FormCreate(Sender: TObject);
var
 diretorio : string;
begin
//  sCtrlResize.CtrlResize(TForm(fNFeletronica));
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if cds_ccusto.Active then
    cds_ccusto.Close;
  cds_ccusto.Params[0].AsString := conta_local;
  cds_ccusto.Open;
  // populo a combobox
  cds_ccusto.First;
  while not cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(cds_ccustoNOME.AsString);
    ComboBox2.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;
  tp_amb := 1;
  ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';
  diretorio := GetCurrentDir;
  ACBrNFeDANFERave1.Logo :=  diretorio + '\logo.bmp';
  ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpEmis    := teNormal;
  ACBrNFe1.Configuracoes.Geral.PathSchemas := diretorio + '\Schemas'; 

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'EMAILAUTOMATICO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    envemail := dm.cds_parametroCONFIGURADO.AsString
  else
    envemail := 'N';
  dm.cds_parametro.Close;

end;

procedure TfNFeletronica.btnImprimeClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
    ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
    begin
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
       DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
      ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.Retorno.Protocolo;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
    end
    else
    begin
      ACBrNFe1.Consultar;
    end;
    ACBrNFe1.NotasFiscais.Imprimir;
   ACBrNFe1.NotasFiscais.Items[0].SaveToFile;

  end;
end;

procedure TfNFeletronica.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   edtNumSerie2.Text := edtNumSerie.Text;
   {$ENDIF}
   if ( ((ACBrNFe1.Configuracoes.Certificados.DataVenc - Now) < 30) and ((ACBrNFe1.Configuracoes.Certificados.DataVenc - Now) > 0)) then
     MessageDlg( 'Seu certificado expira dia ' + DateToStr(ACBrNFe1.Configuracoes.Certificados.DataVenc) , mtInformation, [mbOK], 0);

end;

procedure TfNFeletronica.btnGeraPDFClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFeDANFERave1.PathPDF := Edit1.Text;
    ACBrNFe1.NotasFiscais.ImprimirPDF;
  end;
end;

procedure TfNFeletronica.btnStatusClick(Sender: TObject);
var vXMLDoc: TXMLDocument;
    motivo: WideString;
    NomArquivo, Registro: String;
    arquivo: TextFile;
begin
  NomArquivo := 'c:\home\stats.xml';
  vXMLDoc := TXMLDocument.Create(self);
  Try
  //TESTA STATUS DO SERVIÇO
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);

  //SALVA RESPOSTA NO ARQUIVO
  AssignFile(Arquivo, NomArquivo);
  Rewrite(Arquivo);
  Registro := MemoResp.Text;
  writeln(Arquivo, Registro);
  CloseFile(arquivo);

  //ABRE A RESPOSTA NO ARQUIVO
  vXMLDoc.LoadFromFile('c:\home\stats.xml');

  //PEGA A RESPOSTA
   with vXMLDoc.DocumentElement  do
   begin
     motivo :=    ChildNodes['xMotivo'].text;
   end;
  MessageDlg( motivo, mtInformation, [mbOK], 0);
  finally
    VXMLDoc.Free;
  end;
end;

procedure TfNFeletronica.btnCancelaNFeClick(Sender: TObject);
var
  vXMLDoc: TXMLDocument;
  vAux, Protocolo, caminho, str : String;
  NumeroLote : Integer;
  //numnf : WideString;
begin
  Protocolo := '';
  vXMLDoc := TXMLDocument.Create(self);
  Try
    OpenDialog1.Title := 'Selecione a NFE';
    OpenDialog1.DefaultExt:= '*-nfe.XML';
    OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
    if OpenDialog1.Execute then
    begin
      ACBrNFe1.NotasFiscais.Clear;
      caminho := OpenDialog1.FileName;
      ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
      if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
        exit;
      NumeroLote := StrToInt(FormatDateTime('yymmddhhmm', NOW));
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.EventoNFe.idLote := NumeroLote;
      with ACBrNFe1.EventoNFe.Evento.Add do
      begin
        InfEvento.tpAmb := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb;
        infEvento.CNPJ := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
        InfEvento.cOrgao := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF;
        InfEvento.nSeqEvento := 1;
        InfEvento.chNFe := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
        InfEvento.dhEvento := Now;
        InfEvento.tpEvento := teCancelamento;
        infEvento.detEvento.xJust := vAux;
        InfEvento.detEvento.nProt := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      end;
      //ACBrNFe1.WebServices.EnvEvento.Executar;
      if ACBrNFe1.EnviarEventoNFe(NumeroLote) then
      begin
        with ACBrNFe1.WebServices.EnvEvento do
        begin
          if EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
          begin
            raise Exception.CreateFmt(
              'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
              'Código:%d' + sLineBreak +
              'Motivo: %s', [
                EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
            ]);
          end;
        end;
      end;
      MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
      ShowMessage('Nº do Protocolo de Cancelamento ' + ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
      Protocolo := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      AcbrNfe1.Configuracoes.Geral.Salvar := True;
    end;

      //ABRE A NOTA
      vXMLDoc.LoadFromFile(caminho);

      //PEGA A RESPOSTA
      with vXMLDoc.DocumentElement  do
      begin
        numnf := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
        if (numnf = '') then
          numnf := ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
      end;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;

      dm.sqlsisAdimin.StartTransaction(TD);
      try
        str := 'UPDATE NOTAFISCAL SET ';
        str := str + ' STATUS = ' + QuotedStr('C');
        if (protocolo <> '') then
          str := str + ' ,PROTOCOLOCANC = ' + quotedstr(Protocolo);
        str := str + ' WHERE NOTAFISCAL = ' + numnf;
        dm.sqlsisAdimin.ExecuteDirect(str);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;
    finally
      DecimalSeparator := ',';
      VXMLDoc.Free;
    end;
  chkTodas.Checked := True;
  btnListar.Click;

end;

procedure TfNFeletronica.btnConsultaClick(Sender: TObject);
var vXMLDoc: TXMLDocument;
    motivo: WideString;
    NomArquivo, Registro: String;
    arquivo: TextFile;
begin
  NomArquivo := 'c:\home\stats.xml';
  vXMLDoc := TXMLDocument.Create(self);
 Try
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
  end;

  //SALVA RESPOSTA NO ARQUIVO
  AssignFile(Arquivo, NomArquivo);
  Rewrite(Arquivo);
  Registro := MemoResp.Text;
  writeln(Arquivo, Registro);
  CloseFile(arquivo);

  //ABRE A RESPOSTA NO ARQUIVO
  vXMLDoc.LoadFromFile('c:\home\stats.xml');

  //PEGA A RESPOSTA
  with vXMLDoc.DocumentElement  do
  begin
    motivo := ChildNodes['protNFe'].ChildNodes['infProt'].ChildNodes['xMotivo'].text;
    if (motivo = '') then
      motivo := ChildNodes['infProt'].ChildNodes['xMotivo'].text;
    if (motivo = '') then
      motivo := ChildNodes['xMotivo'].text;      
  end;
  MessageDlg( motivo, mtInformation, [mbOK], 0);
 finally
   VXMLDoc.Free;
 end;
end;

procedure TfNFeletronica.ValidaNFeClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.NotasFiscais.Valida;
    showmessage('Nota Fiscal Eletrônica Valida');
  end;
end;

procedure TfNFeletronica.BtnEnvEmailClick(Sender: TObject);
begin
  fNFeMail:=TfNFeMail.Create(Application);
  try
    fNFeMail.ShowModal;
  finally
    fNFeMail.Free;
  end;
end;

procedure TfNFeletronica.btnInutilizarClick(Sender: TObject);
begin
 ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
 fNFeInutilizar:=TfNFeInutilizar.Create(Application);
 try
   fNFeInutilizar.ShowModal;
 finally
   fNFeInutilizar.Free;
 end;
end;

procedure TfNFeletronica.FormShow(Sender: TObject);
begin
 cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
 cds_ccusto.Locate('NOME', ComboBox2.Text,[loCaseInsensitive]);

 if (sEmpresa.Active) then
   sEmpresa.Close;
 sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
 sEmpresa.Open;

 if (sEmpresa1.Active) then
   sEmpresa1.Close;
 sEmpresa1.Open;

 Edit1.Text := sEmpresa1DIVERSOS1.AsString;
 Edit3.Text := sEmpresa1DIVERSOS1.AsString;

 if (sEmpresa1TIPO.AsString = '1') then
 begin
   ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
   label5.Font.Color := clBlue;
   Label5.Caption :=  'PRODUÇÃO.';
   label8.Font.Color := clBlue;
   Label8.Caption :=  'PRODUÇÃO.';
 end
 else
 begin
  ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
  label5.Font.Color := clRed;
  Label5.Caption :=  'HOMOLOGAÇÃO.';
  label8.Font.Color := clRed;
  Label8.Caption :=  'HOMOLOGAÇÃO.';
 end;
 ACBrNFe1.Configuracoes.Geral.PathSalvar := sEmpresa1DIVERSOS1.AsString;
 if ( not DirectoryExists(sEmpresa1DIVERSOS1.AsString)) then
    CreateDir(sEmpresa1DIVERSOS1.AsString);
 ACBrNFe1.Configuracoes.Arquivos.PathCan := sEmpresa1DIVERSOS1.AsString + 'Canceladas\';
 if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathCan)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathCan);
 ACBrNFe1.Configuracoes.Arquivos.PathCCe := sEmpresa1DIVERSOS1.AsString + 'CCe\';
 if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathCCe)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathCCe);
 ACBrNFe1.Configuracoes.Arquivos.PathDPEC := sEmpresa1DIVERSOS1.AsString + 'DPEC\';
 if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathDPEC)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathDPEC);
 ACBrNFe1.Configuracoes.Arquivos.PathInu := sEmpresa1DIVERSOS1.AsString + 'Inutilizadas\';
 if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathInu)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathInu);
 ACBrNFe1.Configuracoes.Arquivos.PathNFe := sEmpresa1DIVERSOS1.AsString + 'Notas Fiscais\';
 if ( not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathNFe)) then
    CreateDir(ACBrNFe1.Configuracoes.Arquivos.PathNFe);
 ACBrNFeDANFERave1.PathPDF := sEmpresa1DIVERSOS1.AsString;
 sEmpresa1.Close;
 if (JvDateEdit1.Text = '  /  /    ') then
   JvDateEdit1.Text := DateToStr(Now);
 if (JvDateEdit2.Text = '  /  /    ') then
   JvDateEdit2.Text := DateToStr(Now)

end;

procedure TfNFeletronica.BtnPreVisClick(Sender: TObject);
var
  i: integer;
  valida, codFisc : String;
  tipoNota: Char;
begin
  if (not cds_ccusto.Active) then
    cds_ccusto.Open;
  cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

  //Seleciona Empresa de acordo com o CCusto selecionado
  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
  sEmpresa.Open;

  //verifica se o CC foi selecionado caso não da mensagem avisando
  if(sEmpresa.IsEmpty) then
    MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);

 cdsNF.First;
 while not cdsNF.Eof do
 begin
  if (cdsNFSELECIONOU.AsString = 'S') then
  begin
    tipoNota := trim(cdsNFCFOP.AsString)[1];
    if (tipoNota in ['1','2','3']) then
      tpNFe := 0;
    if (tipoNota in ['5','6','7']) then
      tpNFe := 1;


   { Isto estava fora do IF }
   if (cbTipoNota.ItemIndex = 1) then
   begin
     if (sCliente.Active) then
       sCliente.Close;
     sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
     sCliente.Open;
     codFisc := sClienteCODFISCAL.AsString;
     if (sClienteCODFISCAL.AsString = '') then
     begin
       MessageDlg(sClienteNOMECLIENTE.AsString + ' - informe o CODIGO FISCAL no cadastro do cliente.', mtWarning, [mbOK], 0);
       exit;
     end;
   end
   else
   begin
     if (sFornec.Active) then
       sFornec.Close;
     sFornec.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
     sFornec.Open;
     codFisc := sFornecCODFISCAL.AsString;
     if (sFornecCODFISCAL.AsString = '') then
     begin
       MessageDlg(sFornecNOMECLIENTE.AsString + ' - informe o CODIGO FISCAL no cadastro do fornecedor.', mtWarning, [mbOK], 0);
       exit;
     end;
   end;

   if (sCFOP.Active) then
     sCFOP.Close;
   sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
   if (cbTipoNota.ItemIndex = 1) then
   begin
    sCFOP.Params[1].AsString := sClienteUF.AsString;
    sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
   end
   else
   begin
    sCFOP.Params[1].AsString := sFornecUF.AsString;
    sCFOP.Params[2].AsString := cdsNFCFOP.AsString;
   end;
   sCFOP.Open;

   ACBrNFe1.NotasFiscais.Clear;
   with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
    //infNFe.ID := 0                                  // Chave de acesso da NF-e precedida do literal NFe acrescentado a validação do formato 2.0
    if (sEstado.Active) then
      sEstado.Close;
    sEstado.Params[0].AsString := sEmpresaUF.asString;
    sEstado.Open;
    Ide.cUF       := sEstadoCODIGO.AsInteger;                               // Codigo do UF do Emitente do documento fiscal
    Ide.cNF       := cdsNFNUMNF.AsInteger;
    Ide.natOp     := copy(sCFOPCFNOME.AsString,0,59);
         //Verifica tipo de Pagamento
    getPagamento;
    Ide.cMunFG    := 3554003;
    Ide.modelo    := 55;
    if (tp_amb = 1) then
    begin
      Ide.serie     := 1;
      Ide.tpEmis    := teNormal;
    end
    else if (tp_amb = 2) then
    begin
      Ide.tpEmis    := teContingencia;
      Ide.serie     := 1;
    end
    else if (tp_amb = 3) then
    begin
      Ide.tpEmis    := teSCAN;
      Ide.serie     := 900;
    end
    else if (tp_amb = 4) then
    begin
      Ide.tpEmis    := teDPEC;
      Ide.serie     := 1;
    end
    else if (tp_amb = 5) then
    begin
      Ide.tpEmis    := teFSDA;
      Ide.serie     := 1;
    end;

    if( (cdsNFIDCOMPLEMENTAR.IsNull) or (cdsNFIDCOMPLEMENTAR.AsString = '')) then
      ide.finNFe    := fnNormal
    else
    begin
      ide.finNFe    := fnComplementar;
      ide.NFref.Add.refNFe := cdsNFIDCOMPLEMENTAR.AsString;
    end;
    Ide.nNF       := StrToInt(cdsNFNOTASERIE.AsString);
    Ide.dEmi      := cdsNFDTAEMISSAO.AsDateTime;
    Ide.dSaiEnt   := cdsNFDTASAIDA.AsDateTime;
    Ide.hSaiEnt   := cdsNFHORASAIDA.AsDateTime;
    InfAdic.infCpl := cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString + ' ' + cdsNFCORPONF3.AsString + ' ' + cdsNFCORPONF4.AsString + ' ' + cdsNFCORPONF5.AsString + ' ' + cdsNFCORPONF6.AsString;
    // Tipo de movimentação 0 entrada 1 saida
    if (tpNFe = 0) then
    begin
      Ide.tpNF := tnEntrada;
    end;
    if (tpNFe = 1) then
    begin
      Ide.tpNF    := tnSaida;
    end;
    //Ide.tpAmb     := tn2;                           // 1 - Produção // 2 Homologação
    Ide.verProc   := '1.0.0.0';

    if (sTabIBGE.Active) then
      sTabIBGE.Close;
    sTabIBGE.Params[0].AsString := sEmpresaCIDADE.AsString;
    sTabIBGE.Open;
    //Carrega dados do Emitente
    //VERIFICA SE CODIGO IBGE ESTÁ PREENCHIDO NA EMPRESA
    if ( (sEmpresaCD_IBGE.IsNull) or (sEmpresaCD_IBGE.AsString = '') ) then
    begin
      MessageDlg('Codigo do IBGE da empresa não definido', mtError, [mbOK], 0);
      valida := 'N';
    end;
    getEmpresa();
    //CARREGA OS DADOS DO DESTINATARIO CLIENTE/FORNECEDOR
    if( sFornec.Active) then
      if ((sFornecCD_IBGE.IsNull) or (sFornecCD_IBGE.AsString = '') ) then
      begin
        MessageDlg('Codigo do IBGE do Fornecedor não definido', mtError, [mbOK], 0);
        valida := 'N';
      end;
    if( sCliente.Active) then
      if ((sClienteCD_IBGE.IsNull) or (sClienteCD_IBGE.AsString = '') ) then
      begin
        MessageDlg('Codigo do IBGE do Cliente não definido', mtError, [mbOK], 0);
        valida := 'N';
      end;
      if (valida = 'N') then
        exit;
    getCLi_Fornec();

    //Carrega os itens da NF
    pegaItens(cbTipoNota.ItemIndex);

    i := 1;
    while not cdsItensNF.Eof do // Escrevo os itens
    begin
     if (sProdutos.Active) then
       sProdutos.Close;
     sProdutos.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
     try
       sProdutos.Open;
     finally
       if ((sProdutosUNIDADEMEDIDA.AsString = '') or (sProdutosUNIDADEMEDIDA.IsNull) or (sProdutosUNIDADEMEDIDA.AsString = ' ')) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem Unidade de Medida', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if ((sProdutosNCM.AsString = '00000000') or (sProdutosNCM.IsNull) ) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com NCM Nulo ou Inválido', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if ((sProdutosORIGEM.IsNull) ) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' com Origem Nula', mtError, [mbOK], 0);
         valida := 'N';
       end;
       if (((cdsItensNFCSOSN.IsNull) or (cdsItensNFCSOSN.AsString = '')) and ((cdsItensNFCST.IsNull) or (cdsItensNFCST.AsString = ''))) then
       begin
         MessageDlg('Produto ' + cdsItensNFDESCPRODUTO.AsString + ' sem CST ou CSOSN', mtError, [mbOK], 0);
         valida := 'N';
       end;
     end;
     if (valida = 'N') then
       exit;
      // DADOS DOS PRODUTOS DA NOTA
      getItens(i);
      i := i + 1;
      cdsItensNF.Next;
    end;
    getTransportadora();
    //VALOR TORAL
    if not (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional) then
    begin
      Total.ICMSTot.vBC   := cdsNFBASE_ICMS.AsVariant;
      Total.ICMSTot.vICMS   := cdsNFVALOR_ICMS.AsVariant;
    end;
    Total.ICMSTot.vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;
    Total.ICMSTot.vST   := cdsNFVALOR_ICMS_SUBST.AsVariant;
    Total.ICMSTot.vProd := cdsNFVALOR_PRODUTO.AsVariant;
    Total.ICMSTot.vFrete := cdsNFVALOR_FRETE.AsVariant;
    Total.ICMSTot.vSeg := cdsNFVALOR_SEGURO.AsVariant;
    Total.ICMSTot.vDesc   := cdsNFVALOR_DESCONTO.AsVariant;
    Total.ICMSTot.vIPI := cdsNFVALOR_IPI.AsVariant;
    if ( (cdsNFVALOR_PIS.AsFloat <> 0 )or (cdsNFVALOR_PIS.AsFloat <> null )) then
      Total.ICMSTot.vPIS := cdsNFVALOR_PIS.AsFloat;
    if ( (cdsNFVALOR_COFINS.AsFloat <> 0) or (cdsNFVALOR_COFINS.AsFloat <> null )) then
      Total.ICMSTot.vCOFINS := cdsNFVALOR_COFINS.AsFloat;
    Total.ICMSTot.vOutro := cdsNFOUTRAS_DESP.AsVariant;
    Total.ICMSTot.vNF   := cdsNFVALOR_TOTAL_NOTA.AsVariant;
    Total.ICMSTot.vTotTrib := cdsNFVLRTOT_TRIB.AsVariant;
    end;
  end;
  cdsNF.Next;
 end;
 ACBrNFeDANFERave1.RavFile := str_relatorio + 'NFe_Teste.rav';
 ACBrNFeDANFERave1.Site := sEmpresaWEB.AsString;
 ACBrNFeDANFERave1.Email := sEmpresaE_MAIL.AsString;
 ACBrNFeDANFERave1.CasasDecimais._vUnCom := dm.danfeDec;
 ACBrNFe1.NotasFiscais.Imprimir;
 ACBrNFeDANFERave1.RavFile := str_relatorio + 'NotaFiscalEletronica.rav';

end;

procedure TfNFeletronica.btnSPEDClick(Sender: TObject);
begin
  if (tp_amb = 1) then
  begin
    MessageDlg('Altere a noda para o Modo Scan.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (chkScan.Checked) then
  begin
    //tp_amb := 3;
    btnGeraNFeClick(Sender);
    //tp_amb := 1;
  end;  
end;

procedure TfNFeletronica.btnSairVendaClick(Sender: TObject);
begin
  if (dmnf.FormExiste(fVendas) = True) then
  begin
    if (dmnf.FormExiste(fVendaFinalizar) = True) then
    begin
      if (dmnf.FormExiste(fNotaf) = True) then
      begin
        fNotaf.Close;
        fVendaFinalizar.Close;
        fVendas.btnIncluir.Click;
        fVendas.btnCancelar.Click;
        fVendas.cds_Movimento.Params[0].Clear;
        fVendas.cds_Movimento.Close;
        Close;
      end;
    end;
  end;
end;

procedure TfNFeletronica.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfNFeletronica.getCLi_Fornec();
var
  IERG : integer;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    //Carrega dados do Destinatário
    // FORNECEDOR
    if (cbTipoNota.ItemIndex = 0) then
    begin
      Dest.CNPJCPF           := RemoveChar(sFornecCNPJ.AsString);
      Dest.xNome             := sFornecRAZAOSOCIAL.AsString;
      Dest.EnderDest.xLgr    := sFornecLOGRADOURO.AsString;
      if ((sFornecNUMERO.IsNull) or (sFornecNUMERO.AsString = '')) then
      begin
        Dest.EnderDest.nro     := 'S/N';
      end
      else
        Dest.EnderDest.nro     := sFornecNUMERO.AsString;
      if ((not sFornecCOMPLEMENTO.IsNull) or ( sFornecCOMPLEMENTO.AsString <> '')) then
        Dest.EnderDest.xCpl    := sFornecCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := sFornecBAIRRO.AsString;
      if (trim(sFornecCD_IBGE.AsString) = '') then
      begin
        MessageDlg('Fornecedor' + sFornecRAZAOSOCIAL.AsString +  'sem Código do IBGE.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.cMun    := StrToInt(RemoveChar(sFornecCD_IBGE.AsString));
      Dest.EnderDest.xMun    := sFornecCIDADE.AsString;
      Dest.EnderDest.UF      := sFornecUF.AsString;
      if (trim(sFornecCEP.AsString) = '') then
      begin
        MessageDlg('Fornecedor' + sFornecRAZAOSOCIAL.AsString +  'sem CEP.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.CEP     := StrToInt(RemoveChar(sFornecCEP.AsString));

      if (trim(sFornecCODPAIS.AsString) = '') then
      begin
        MessageDlg('Fornecedor' + sFornecRAZAOSOCIAL.AsString +  'sem PAIS.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.cPais   := StrToInt(sFornecCODPAIS.asString);
      Dest.EnderDest.xPais   := sFornecPAIS.AsString;
      Dest.EnderDest.Fone    := sFornecDDD.AsString + sFornecTELEFONE.AsString;
      Dest.IE                := RemoveChar(sFornecINSCESTADUAL.AsString);
    end
    //CLIENTE
    else
    begin
      if (sClienteUF.AsString <> 'EX') then
        Dest.CNPJCPF := RemoveChar(sClienteCNPJ.AsString);
      Dest.xNome             := sClienteRAZAOSOCIAL.AsString;
      if (sClienteSUFRAMA.Size = 9) then
        Dest.ISUF              := sClienteSUFRAMA.AsString;
      Dest.EnderDest.xLgr    := sClienteLOGRADOURO.AsString;
      if ((sClienteNUMERO.IsNull) or (sClienteNUMERO.AsString = '')) then
      begin
        Dest.EnderDest.nro     := 'S/N';
      end
      else
        Dest.EnderDest.nro     := sClienteNUMERO.AsString;
      if ((not sClienteCOMPLEMENTO.IsNull) or ( sClienteCOMPLEMENTO.AsString <> '')) then
        Dest.EnderDest.xCpl    := sClienteCOMPLEMENTO.AsString;
      Dest.EnderDest.xBairro := sClienteBAIRRO.AsString;

      if (trim(sClienteCD_IBGE.AsString) = '') then
      begin
        MessageDlg('Cliente' + sClienteRAZAOSOCIAL.AsString +  'sem Código do IBGE.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.cMun    := StrToInt(RemoveChar(sClienteCD_IBGE.AsString));

      Dest.EnderDest.xMun    := sClienteCIDADE.AsString;
      Dest.EnderDest.UF      := sClienteUF.AsString;

      if (trim(RemoveChar(sClienteCEP.AsString)) = '') then
      begin
        MessageDlg('Cliente' + sClienteRAZAOSOCIAL.AsString +  ' sem CEP.', mtWarning, [mbOK], 0);
        Exit;
      end
      else
        Dest.EnderDest.CEP     := StrToInt(RemoveChar(sClienteCEP.AsString));

      Dest.EnderDest.cPais   := StrToInt(sClienteCODPAIS.AsString);
      Dest.EnderDest.xPais   := sClientePAIS.AsString;
      Dest.EnderDest.Fone    := sClienteDDD.AsString + sClienteTELEFONE.AsString;
      IERG := StrLen(PChar(RemoveChar(sClienteINSCESTADUAL.AsString)));
      if ((sClienteUF.AsString = 'SP') or (sClienteUF.AsString = 'MG')) then
      begin
        if (IERG > 11) then
          Dest.IE := RemoveChar(sClienteINSCESTADUAL.AsString);
      end
      else begin
        if (sClienteUF.AsString <> 'EX') then
        begin
          if (IERG >= 5) then
            Dest.IE := RemoveChar(sClienteINSCESTADUAL.AsString);
        end;
      end;
    end;
  end;
end;

procedure TfNFeletronica.getEmpresa();
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    Emit.CNPJCPF           := RemoveChar(sEmpresaCNPJ_CPF.AsString);
    Emit.xNome             := sEmpresaRAZAO.AsString;
    Emit.xFant             := sEmpresaEMPRESA.AsString;
    Emit.EnderEmit.xLgr    := sEmpresaENDERECO.AsString;
    Emit.EnderEmit.nro     := sEmpresaNUMERO.AsString;
    if ((not sEmpresaOUTRAS_INFO.IsNull) or ( sEmpresaOUTRAS_INFO.AsString <> '')) then
      Emit.EnderEmit.xCpl    := sEmpresaLOGRADOURO.AsString;
    Emit.EnderEmit.xBairro := sEmpresaBAIRRO.AsString;
    Emit.EnderEmit.cMun    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
    Emit.EnderEmit.xMun    := sEmpresaCIDADE.AsString;
    Emit.EnderEmit.UF      := sEmpresaUF.AsString;
    if (not sEmpresaCEP.IsNull) then
      Emit.EnderEmit.CEP     := StrToInt(RemoveChar(sEmpresaCEP.AsString));
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';
    Emit.EnderEmit.fone    := sEmpresaDDD.AsString + sEmpresaFONE.AsString;
    Emit.IE                := RemoveChar(sEmpresaIE_RG.AsString);
    if ( sEmpresaCRT.AsInteger = 0) Then
      Emit.CRT               := crtSimplesNacional
    else if ( sEmpresaCRT.AsInteger = 1) Then
      Emit.CRT               := crtSimplesExcessoReceita
    else if ( sEmpresaCRT.AsInteger = 2) Then
      Emit.CRT               := crtRegimeNormal;
  end;
end;

procedure TfNFeletronica.getItens(contador: integer);
var
  BC, BCST, desc : Variant;
begin
   BC := 0;
   BCST := 4;
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    with Det.Add do
    begin
      if (not cdsItensNFPEDIDO.IsNull) then
        Prod.xPed := cdsItensNFPEDIDO.AsString;
      if (not cdsItensNFNITEMPED.IsNull) then
        Prod.nItemPed := cdsItensNFNITEMPED.AsInteger;
      if (sCFOP.Active) then
        sCFOP.Close;
      sCFOP.Params[0].AsString := cdsItensNFCFOP.AsString;
      sCFOP.Params[2].AsString := cdsItensNFCFOP.AsString;
      if (cbTipoNota.ItemIndex = 1) then
        sCFOP.Params[1].AsString := sClienteUF.AsString
      else
        sCFOP.Params[1].AsString := sFornecUF.AsString;
      sCFOP.Open;

      Prod.nItem    := contador;
      Prod.cProd    := cdsItensNFCODPRO.AsString;
      Prod.xProd    := LeftStr(cdsItensNFDESCPRODUTO.AsString, 99);
      Prod.CFOP     := cdsItensNFCFOP.AsString;
      Prod.uCom     := sProdutosUNIDADEMEDIDA.AsString;
      Prod.qCom     := cdsItensNFQUANTIDADE.AsFloat;
      Prod.vUnCom   := cdsItensNFVLR_BASE.AsFloat;
      Prod.uTrib    := sProdutosUNIDADEMEDIDA.AsString;
      Prod.qTrib    := cdsItensNFQUANTIDADE.AsFloat;
      Prod.vUnTrib  := cdsItensNFVLR_BASE.AsFloat;
      if (ACBrValidadorValidarGTIN(cdsItensNFCOD_BARRA.AsString) = '') then
      begin
        Prod.cEAN := cdsItensNFCOD_BARRA.AsString;
      end;
      desc := StrLen(PChar(MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)));
      if ( desc > 0) then
        infAdProd     := MidStr(cdsItensNFDESCPRODUTO.AsString, 100, 200)  + cdsItensNFOBS.AsString
      else
        infAdProd     := cdsItensNFOBS.AsString;
      Prod.NCM      := sProdutosNCM.AsString;
      Prod.vProd    := cdsItensNFVALTOTAL.AsFloat;
      Prod.vFrete   := cdsItensNFFRETE.AsCurrency;
      Prod.vDesc    := cdsItensNFVALOR_DESCONTO.AsCurrency;
      Prod.vOutro   := cdsItensNFVALOR_OUTROS.AsCurrency;
      Prod.vSeg     := cdsItensNFVALOR_SEGURO.AsCurrency;

      if(sFornec.Active) then
        if(sFornecUF.AsString = 'EX') then
        begin
          if(sAdicao.Active) then
            sAdicao.Close;
          sAdicao.Params[0].AsInteger := cdsItensNFCODDETALHE.AsInteger;
          sAdicao.Open;
          if(sDI.Active) then
           sDI.Close;
          sDi.Params[0].AsInteger := sAdicaoADIC_CODDI.AsInteger;
          sDI.Open;
          with prod.DI.Add do
          begin
            nDi         := sDIDI_NUMDI.AsString;
            dDi         := sDIDI_DATA.AsDateTime;
            xLocDesemb  := sDIDI_LOCALDESEMB.AsString;
            UFDesemb    := sDIDI_UFDESEMB.AsString;
            dDesemb     := sDIDI_DATADESEMB.AsDateTime;
            cExportador := sDIDI_CODEXPORTADOR.AsString;
            with adi.Add do
            begin
              nAdicao     := sAdicaoADIC_NADICAO.AsInteger;
              nSeqAdi     := sAdicaoADIC_NSEQUEN.AsInteger;
              cFabricante := sAdicaoADIC_CODFAB.AsString;
              vDescDI     := sAdicaoADIC_VDESC.AsInteger;
            end;
          end;
        end;
      Prod.genero   := sProdutosGENERO.AsInteger;
      //IMPOSTOS Do Produto
      with Imposto do
      begin
        Imposto.vTotTrib := cdsItensNFVLRTOT_TRIB.AsCurrency;      
        with IPI do
        begin
          if (cdsItensNFCSTIPI.AsString = '00') then
            CST := ipi00
          else if (cdsItensNFCSTIPI.AsString = '01') then
            CST := ipi01
          else if (cdsItensNFCSTIPI.AsString = '02') then
            CST := ipi02
          else if (cdsItensNFCSTIPI.AsString = '03') then
            CST := ipi03
          else if (cdsItensNFCSTIPI.AsString = '04') then
            CST :=  ipi04
          else if (cdsItensNFCSTIPI.AsString = '05') then
            CST :=  ipi05
          else if (cdsItensNFCSTIPI.AsString = '49') then
            CST :=  ipi49
          else if (cdsItensNFCSTIPI.AsString = '50') then
            CST := ipi50
          else if (cdsItensNFCSTIPI.AsString = '51') then
            CST := ipi51
          else if (cdsItensNFCSTIPI.AsString = '52') then
            CST := ipi52
          else if (cdsItensNFCSTIPI.AsString = '53') then
            CST := ipi53
          else if (cdsItensNFCSTIPI.AsString = '54') then
            CST := ipi54
          else if (cdsItensNFCSTIPI.AsString = '55') then
            CST := ipi55
          else if (cdsItensNFCSTIPI.AsString = '99') then
            CST := ipi99
          else
            CST := ipi00;
          vBC  := cdsItensNFVLRBC_IPI.AsCurrency;
          pIPI := cdsItensNFpIPI.AsCurrency;
          vIPI := cdsItensNFvIPI.AsCurrency;
        end;
        with ICMS do
        begin
          // Verifica Origem do Produto
          if (sProdutosORIGEM.IsNull) then
            MessageDlg('Origem do Produto não definida', mtError, [mbOK], 0);

          //CSOSN PREENCHIDO APENAS QUANDO EMPRESA OPTANTE PELO SIMPLES.
          //101 - Tributada pelo Simples Nacional com permissão de crédito - Classificam-se neste código as operações que permitem a indicação da alíquota do ICMS devido no Simples Nacional e o valor do crédito correspondente.
          //102 - Tributada pelo Simples Nacional sem permissão de crédito - Classificam-se neste código as operações que não permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e não estejam abrangidas nas hipóteses dos códigos 103, 203, 300, 400, 500 e 900.
          //103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contemplados com isenção concedida para faixa de receita bruta nos termos da Lei Complementar nº 123, de 2006.
          //201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária - Classificam-se neste código as operações que permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e com cobrança do ICMS por substituição tributária.
          //202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária - Classificam-se neste código as operações que não permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e não estejam abrangidas nas hipóteses dos códigos 103, 203, 300, 400, 500 e 900, e com cobrança do ICMS por substituição tributária.
          //203 - Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contemplados com isenção para faixa de receita bruta nos termos da Lei Complementar nº 123, de 2006, e com cobrança do ICMS por substituição tributária.
          //300 - Imune - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contempladas com imunidade do ICMS.
          //400 - Não tributada pelo Simples Nacional - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional não sujeitas à tributação pelo ICMS dentro do Simples Nacional.
          //500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação - Classificam-se neste código as operações sujeitas exclusivamente ao regime de substituição tributária na condição de substituído tributário ou no caso de antecipações.
          //900 - Outros - Classificam-se neste código as demais operações que não se enquadrem nos códigos 101, 102, 103, 201, 202, 203, 300, 400 e 500.
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
          end;

          // CST's
          //10 TRIBUTADA
          //10 TRIBUTADA E COM COBRANÇA DO ICMS POR SUBS.TRIBUTÁRIA
          //20 COM REDUÇÃO DE BASE DE CÁLCULO
          //30 ISENTA OU NÃO TRIBUTADA E COM COBRANÇA DE ICMS POR SUBS.TRIBUTÁRIA
          //40 - ISENTA
          //41 NÃO TRIBUTADA
          //50 SUSPENSÃO
          //51 DIFERIMENTO A EXIGÊNCIA DO PREENCHIMENTO DAS INFORMAÇÕES DO ICMS DIFERIDO FICA a CRITÉRIO DE CADA UF
          //60 ICMS COBRADO ANTERIORMENTE POR SUBS.TRIBUTÁRIA
          //70 COM REDUÇÃO DA BASE DE CALCULO E COBRANÇA DO ICMS POR SUBS.TRIB. ICMS POR SUBS.TRIB.
          //90 OUTROS

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

          orig :=     sProdutosORIGEM.AsVariant;                       //ORIGEM DO PRODUTO
          modBC :=    BC;                                              //MODO DE BASE DE CALCULO (0) POR %
          //Não carregar ICMS para Simples Nacional
          if not (ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional ) then
          begin
            vBC := cdsItensNFVLR_BASEICMS.AsVariant;                //VALOR DA BASE DE CALCULO
            pICMS := cdsItensNFICMS.AsVariant;                     //ALIQUOTA DO ICMS
            vICMS := cdsItensNFVALOR_ICMS.AsVariant;                  //VALOR DO ICMS
          end;
          modBCST :=  BCST;                                         //MODO DE BASE DE CALCULO SUBST. TRIBUTÁRIA(4) POR %
          vBCST := 0;
          if (not cdsItensNFICMS_SUBSTD.IsNull) then
            vBCST :=    cdsItensNFICMS_SUBSTD.AsVariant;                 //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
          if (sdsCfopProd.Active) then
            sdsCfopProd.Close;
          sdsCfopProd.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
          if (cbTipoNota.ItemIndex = 0) then
            sdsCfopProd.Params[1].AsString := sFornecUF.AsString
          else
            sdsCfopProd.Params[1].AsString := sClienteUF.AsString;
          sdsCfopProd.Params[2].AsString := cdsNFCFOP.AsString;
          sdsCfopProd.Open;

          if (not sdsCfopProd.IsEmpty) then
          begin
            if (sdsCfopProdICMS_SUBST.IsNull) then
              pMVAST := 0
            else
              pMVAST := sdsCfopProdICMS_SUBST.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
            if (sdsCfopProdICMS_SUBST_IC.IsNull) then
              pRedBCST := 0
            else
              pRedBCST := sdsCfopProdICMS_SUBST_IC.AsVariant;                 //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
            if (sdsCfopProdICMS_SUBST_IND.IsNull) then
              pICMSST := 0
            else
              pICMSST :=  sdsCfopProdICMS_SUBST_IND.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
          end
          else begin
            if (sCFOPICMS_SUBSTRIB.IsNull) then
              pMVAST := 0
            else
              pMVAST :=   sCFOPICMS_SUBSTRIB.AsVariant;                //% MARGEM DE VALOR ADICIONADO DO ICMSST
            if (sCFOPICMS_SUBSTRIB_IC.IsNull) then
              pRedBCST := 0
            else
              pRedBCST := sCFOPICMS_SUBSTRIB_IC.AsVariant;                 //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
            if (sCFOPICMS_SUBSTRIB_IND.IsNull) then
              pICMSST := 0
            else
              pICMSST :=  sCFOPICMS_SUBSTRIB_IND.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
          end;

          if (sCFOPREDUCAO.IsNull) then
            pRedBC := 0
          else
            pRedBC :=   sCFOPREDUCAO.AsVariant;                          //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO
          if (cdsItensNFICMS_SUBST.isnull) then
            vICMSST := 0
          else
            vICMSST :=  cdsItensNFICMS_SUBST.AsVariant;                  //VALOR DO ICMS DA SUBST. TRIBUTÁRIA
        end;

        //CST PIS E COFINS
        //01	Operação Tributável com Alíquota Básica
        //02	Operação Tributável com Alíquota Diferenciada
        //03	Operação Tributável com Alíquota por Unidade de Medida de Produto
        //04	Operação Tributável Monofásica - Revenda a Alíquota Zero
        //05	Operação Tributável por Substituição Tributária
        //06	Operação Tributável a Alíquota Zero
        //07	Operação Isenta da Contribuição
        //08	Operação sem Incidência da Contribuição
        //09	Operação com Suspensão da Contribuição
        //49	Outras Operações de Saída
        //50	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
        //51	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno
        //52	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
        //53	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
        //54	Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
        //55	Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
        //56	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
        //60	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
        //61	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
        //62	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
        //63	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
        //64	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
        //65	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
        //66	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
        //67	Crédito Presumido - Outras Operações
        //70	Operação de Aquisição sem Direito a Crédito
        //71	Operação de Aquisição com Isenção
        //72	Operação de Aquisição com Suspensão
        //73	Operação de Aquisição a Alíquota Zero
        //74	Operação de Aquisição sem Incidência da Contribuição
        //75	Operação de Aquisição por Substituição Tributária
        //98	Outras Operações de Entrada
        //99	Outras Operações

        with PIS do
        begin
          if (Trim(cdsItensNFCSTPIS.AsString) = '') then
          begin
            if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
              MessageDlg('CST do PIS em branco  no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
            Exit;
          end
          else
          begin
            if (cdsItensNFCSTPIS.AsString = '01') then
              CST   := pis01
            else if (cdsItensNFCSTPIS.AsString = '02') then
              CST   := pis02
            else if (cdsItensNFCSTPIS.AsString = '03') then
              CST   := pis03
            else if (cdsItensNFCSTPIS.AsString = '04') then
              CST   := pis04
            else if (cdsItensNFCSTPIS.AsString = '06') then
              CST   := pis06
            else if (cdsItensNFCSTPIS.AsString = '07') then
              CST   := pis07
            else if (cdsItensNFCSTPIS.AsString = '08') then
              CST   := pis08
            else if (cdsItensNFCSTPIS.AsString = '09') then
              CST   := pis09
            else if (cdsItensNFCSTPIS.AsString = '99') then
              CST   := pis99;
          end;

          if (cdsItensNFPPIS.AsFloat > 0) then
            //vBC   := (cdsItensNFVALOR_PIS.AsVariant *100 ) / cdsItensNFPPIS.AsVariant //-cdsItensNFVALTOTAL.AsVariant
            vBC := cdsItensNFVLRBC_PIS.AsCurrency
          else
            vBC   := 0;
          pPIS  := cdsItensNFPPIS.AsVariant;
          vPIS  := cdsItensNFVALOR_PIS.AsVariant;


        end;
        with COFINS do
        begin
          if (Trim(cdsItensNFCSTCOFINS.AsString) = '') then
          begin
            if ((Trim(cdsItensNFCSOSN.AsString) = '') or (Trim(cdsItensNFCSOSN.AsString) = '0')) then
              MessageDlg('CST do COFINS em branco no item ' + cdsItensNFDESCPRODUTO.AsString, mtWarning, [mbOK], 0);
            Exit;
          end
          else
          begin
            if (cdsItensNFCSTCOFINS.AsString = '01') then
              CST   := cof01
            else if (cdsItensNFCSTCOFINS.AsString = '02') then
              CST   := cof02
            else if (cdsItensNFCSTCOFINS.AsString = '03') then
              CST   := cof03
            else if (cdsItensNFCSTCOFINS.AsString = '04') then
              CST   := cof04
            else if (cdsItensNFCSTCOFINS.AsString = '06') then
              CST   := cof06
            else if (cdsItensNFCSTCOFINS.AsString = '07') then
              CST   := cof07
            else if (cdsItensNFCSTCOFINS.AsString = '08') then
              CST   := cof08
            else if (cdsItensNFCSTCOFINS.AsString = '09') then
              CST   := cof09
            else if (cdsItensNFCSTCOFINS.AsString = '99') then
              CST   := cof99;
          end;

         if ( cdsItensNFPCOFINS.AsFloat > 0) then
           //vBC   := (cdsItensNFVALOR_COFINS.AsVariant * 100) / cdsItensNFPCOFINS.AsVariant //cdsItensNFVALTOTAL.AsVariant;
           vBC := cdsItensNFVLRBC_COFINS.AsCurrency
         else
           vBC   := 0;
           pCOFINS  := cdsItensNFPCOFINS.AsVariant;
           vCOFINS  := cdsItensNFVALOR_COFINS.AsVariant;
        end;
        if (cdsItensNFII.asFloat > 0) then
        begin
          with II do
          begin
            vBc := cdsItensNFBCII.AsVariant;
            vII := cdsItensNFII.AsVariant;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfNFeletronica.getTransportadora();
var
  tpfrete: integer;
  tfrete: Variant;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin
    if ((cdsNFFRETE.IsNull) or (Trim(cdsNFFRETE.AsString) = ''))then
      tpfrete := 3
    else
      tpfrete := StrToInt(cdsNFFRETE.AsString);
    tfrete := IntToStr(tpfrete);
    //Carrega dados da transportadora
    with Transp do
    begin
      with transporta do
      begin
        case tfrete of
          0 : modFrete := mfContaEmitente;
          1 : modFrete := mfContaDestinatario;
          2 : modFrete := mfContaTerceiros;
          3 : modFrete := mfSemFrete;
        end;
        CNPJCPF := RemoveChar(cdsNFCNPJ_CPF.AsString);
        xNome   := trim(cdsNFNOMETRANSP.AsString);
        if (cdsNFNOMETRANSP.AsString <> '') then
        begin
          if (dm.cdsTransp.Active) then
            dm.cdsTransp.Close;
          dm.cdsTransp.Params[0].AsInteger := cdsNFCODTRANSP.AsInteger;
          dm.cdsTransp.Open;
          if (not DM.cdsTransp.IsEmpty) then
            xNome := dm.cdsTranspNOMETRANSP.AsString
          else begin
            DMNF.listaTransp.Open;
            DMNF.listaTransp.Locate('FANTASIA',cdsNFTRANSP2.AsString,[loCaseInsensitive]);
            xNome := DMNF.listaTranspNOMETRANSP.AsString;
            DMNF.listaTransp.Close;              
          end;
        end;
        IE := RemoveChar(cdsNFINSCRICAOESTADUAL.AsString);
        xEnder := cdsNFEND_TRANSP.AsString;
        xMun := cdsNFCIDADE_TRANSP.AsString;
        UF :=  cdsNFUF_TRANSP.AsString;
        //Carrega dados da Carga para Transporte
        with Vol.Add do
        begin
          if (cdsNFQUANTIDADE.AsVariant > 0) then
            qVol := cdsNFQUANTIDADE.AsVariant
          else
            qVol := 0;

          if ( (cdsNFESPECIE.AsString <> '') and (cdsNFESPECIE.AsString <> Null) ) then
            esp := cdsNFESPECIE.AsString
          else
            esp := '';

          if ( (cdsNFMARCA.AsString <> '') and (cdsNFMARCA.AsString <>  null) ) then
             marca := cdsNFMARCA.AsString
          else
            marca := '';

          if ( (cdsNFNUMERO.AsString <> '') and ( cdsNFNUMERO.AsString <> null) ) then
            nVol :=cdsNFNUMERO.AsString
          else
            nVol := '';

          if (cdsNFPESOLIQUIDO.AsCurrency > 0) then
            pesoL :=cdsNFPESOLIQUIDO.AsCurrency
          else
            pesoL := 0;

          if (cdsNFPESOBRUTO.AsCurrency > 0) then
            pesoB :=cdsNFPESOBRUTO.AsCurrency
          else
            pesoB := 0;
        end;

        if ( (trim(StringReplace(cdsNFPLACATRANSP.AsString, '-', '', [rfReplaceAll])) <> '') and (trim(RemoveChar(cdsNFPLACATRANSP.AsString)) <> null) ) then
         if ( (cdsNFUF_VEICULO_TRANSP.AsString <> '') and (cdsNFUF_VEICULO_TRANSP.AsString <> null) ) then
         begin
           veicTransp.placa := trim(StringReplace(cdsNFPLACATRANSP.AsString, '-', '', [rfReplaceAll]));
           veicTransp.UF := cdsNFUF_VEICULO_TRANSP.AsString;
         end;
      end;
    end;
  end;
end;

procedure TfNFeletronica.getPagamento();
var
 c: integer;
begin
  with ACBrNFe1.NotasFiscais.Items[0].NFe do
  if(sCFOPNAOENVFATURA.AsString = 'S') then
    ide.indPag := ipOutras
  else
  begin
    if (cbTipoNota.ItemIndex = 1) then
    begin
      if (cdsNFVALOR_PAGAR.AsFloat = cdsNFENTRADA.AsFloat) then
        Ide.indPag    := ipVista
      else
        Ide.indPag    := ipPrazo;
      //pesquisa pagamento
      if ( (cdsNFFATURA.IsNull) or (cdsNFFATURA.AsString = '') ) then
      begin
        if(cdsFatura.Active) then
          cdsFatura.Close;
        cdsFatura.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
        cdsFatura.Open;
        if (sNFC.Active) then
          sNFC.Close;
        sNFC.Params[0].AsInteger := cdsNFNUMNF.AsInteger;
        sNFC.Open;
        //Carrega dados do Pagamento
        cdsFatura.first;
        c := 0;
        while not cdsFatura.eof do
        begin
          if (cdsFaturaVALOR.AsFloat > 0) then
          begin
            Cobr.Dup.Add;
            Cobr.Dup.Items[c].nDup  := cdsFaturaNUMEROFATURA.ASSTRING;
            Cobr.Dup.Items[c].dVenc := cdsFaturaDATAFATURA.AsDateTime;
            Cobr.Dup.Items[c].vDup  := cdsFaturaVALOR.AsCurrency;
            Inc ( c );
          end;
          cdsFatura.next;
        end;
        if (c = 0) then
          Ide.indPag    := ipOutras;
      end;
    end
    else
        Ide.indPag    := ipOutras;
  end;
end;


procedure TfNFeletronica.btnContingenciaClick(Sender: TObject);
begin
    tp_amb := 2;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnPreVisContClick(Sender: TObject);
begin
    tp_amb := 2;
    BtnPreVisClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnPreVisSpedClick(Sender: TObject);
begin
  if (chkScan.Checked) then
  begin
    //tp_amb := 3;
    BtnPreVisClick(Sender);
    //tp_amb := 1;
  end;
end;

procedure TfNFeletronica.btnPreVisDPECClick(Sender: TObject);
begin
    BtnPreVisClick(Sender);
end;

procedure TfNFeletronica.btnDpecClick(Sender: TObject);
begin
    tp_amb := 4;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnFSDAClick(Sender: TObject);
begin
    tp_amb := 5;
    btnGeraNFeClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.btnPreVisFSDAClick(Sender: TObject);
begin
    tp_amb := 5;
    BtnPreVisClick(Sender);
    tp_amb := 1;
end;

procedure TfNFeletronica.BitBtn1Click(Sender: TObject);
var
 vAux : String;
begin
  if not(InputQuery('WebServices DPEC', 'Informe o Numero do Registro do DPEC ou a Chave da NFe', vAux)) then
    exit;

  if Length(Trim(vAux)) < 44 then
     ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC := vAux
  else
     ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := vAux;
  ACBrNFe1.WebServices.ConsultaDPEC.Executar;

end;

procedure TfNFeletronica.btnValidaXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
    begin
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC + ' ' +
       DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
      ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.Retorno.Protocolo;
      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
    end;
  ACBrNFe1.Enviar(0);
  end;
  ACBrNFe1.NotasFiscais.Items[0].SaveToFile;  
end;

procedure TfNFeletronica.pegaItens(tpNf: integer);
var strItens: String;
begin
  //Carrega os itens da NF
  if (cbTipoNota.ItemIndex = 0) then
  begin
  strItens := 'select md.CODPRODUTO, md.coddetalhe, md.pIPI, md.vIPI, UDF_ROUNDDEC(md.QUANTIDADE, 4) QUANTIDADE ' +
      ' , md.CFOP, md.PRECO, md.DESCPRODUTO, md.OBS, '+
      'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
      'ELSE pr.CODPRO END as codpro, md.VLR_BASEICMS, md.CSTIPI, md.CSTPIS, md.CSTCOFINS, md.PPIS, md.PCOFINS, ' +
      'pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.CSOSN, md.ICMS, md.pIPI, md.vIPI, md.VLR_BASEICMS, UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, UDF_ROUNDDEC(md.VLR_BASE, 10) as VLR_BASE, ' +
      'UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, md.ICMS_SUBSTD, UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, (md.VLR_BASE * md.QUANTIDADE) as VALTOTAL, ' +
      'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
      ' ,md.NITEMPED, md.PEDIDO, MD.VLRBC_IPI, MD.VLRBC_PIS, md.VLRBC_COFINS, UDF_ROUNDDEC(md.VLRTOT_TRIB, 2) as VLRTOT_TRIB ' +
      ' , pr.COD_BARRA ' +
      ' from compra cp  inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = cp.CODMOVIMENTO ' +
      'inner join NOTAFISCAL nf on nf.CODVENDA = cp.CODCOMPRA ' +
      'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
      'where cp.CODCOMPRA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 20) or (nf.NATUREZA = 21))' ;
  end
  else
  begin
  strItens :=  'select md.CODPRODUTO, md.coddetalhe, UDF_ROUNDDEC(md.QUANTIDADE, 4) QUANTIDADE, md.PRECO, md.CFOP, md.DESCPRODUTO, ' +
      'case when udf_Pos(' + quotedstr('-') +', pr.CODPRO) > 0 then udf_Copy(pr.CODPRO, 0, (udf_Pos(' + quotedstr('-') + ', pr.CODPRO)-1)) ' +
      'ELSE pr.CODPRO END as codpro, pr.UNIDADEMEDIDA, UDF_TRIM(md.CST) CST, md.ICMS, md.pIPI, md.OBS, ' +
      'md.vIPI, md.CSOSN, md.VLR_BASEICMS, UDF_ROUNDDEC(md.VALOR_ICMS, 2) as VALOR_ICMS, md.PPIS, md.PCOFINS, ' +
      'UDF_ROUNDDEC(md.VLR_BASE, 10) as VLR_BASE, UDF_ROUNDDEC(md.ICMS_SUBST, 2) as ICMS_SUBST, md.CSTIPI, md.CSTPIS, md.CSTCOFINS, ' +
      'UDF_ROUNDDEC(md.VALOR_PIS, 2) as VALOR_PIS, UDF_ROUNDDEC(md.VALOR_COFINS, 2) as VALOR_COFINS,  UDF_ROUNDDEC(md.FRETE, 2) as FRETE, UDF_ROUNDDEC(md.VALOR_DESCONTO, 2) as VALOR_DESCONTO, ' +
      'md.ICMS_SUBSTD, UDF_ROUNDDEC((md.VLR_BASE * md.QUANTIDADE), 2) as VALTOTAL, md.VALOR_SEGURO, md.VALOR_OUTROS, UDF_ROUNDDEC(md.II, 2) as II, UDF_ROUNDDEC(md.BCII, 2) as BCII ' +
      ' ,md.NITEMPED, md.PEDIDO, MD.VLRBC_IPI, MD.VLRBC_PIS, md.VLRBC_COFINS, UDF_ROUNDDEC(md.VLRTOT_TRIB, 2) as VLRTOT_TRIB' +
      ' , pr.COD_BARRA ' +
      ' from VENDA vd inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = vd.CODMOVIMENTO ' +
      'inner join NOTAFISCAL nf on nf.CODVENDA = vd.CODVENDA ' +
      'inner join PRODUTOS pr on pr.CODPRODUTO = md.CODPRODUTO ' +
      'where vd.CODVENDA = ' + IntToStr(cdsNFCODVENDA.AsInteger)  + ' and ((nf.NATUREZA = 12) or (nf.NATUREZA = 15) or (nf.NATUREZA = 16))' ;
  end;

  if (cdsItensNF.Active) then
    cdsItensNF.Close;

  cdsItensNF.CommandText := strItens;
  cdsItensNF.Open;

end;

procedure TfNFeletronica.btnListarCCeClick(Sender: TObject);
var str_cce   :string;
begin
  if (cdsCCE.Active) then
    cdsCCE.Close;
  if (CheckBox1.Checked) then
  begin
   str_cce := 'select * FROM CCE';
   cdsCCE.CommandText := str_cce;
  end
  else
  begin
    str_cce := 'select * FROM CCE WHERE PROTOCOLO IS NULL';
    cdsCCE.CommandText := str_cce;
  end;
  cdsCCE.Open;
  BtnCCe.Enabled := True;
  btnImprimirCCe.Enabled := True;  
end;

procedure TfNFeletronica.BtnCCeClick(Sender: TObject);
var protocolo, str, xCond :string;
    envio :TDateTime;
    NumeroLote : Integer;
    TD: TTransactionDesc;
begin
  envio := Now;
  NumeroLote := StrToInt(FormatDateTime('yymmddhhmm', NOW));
  try
    ACBrNFe1.EventoNFe.Evento.Clear;
    //  ACBrNFe1.EnvEvento.EnvEventoNFe..idLote := StrToInt(NumeroLote) ;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      InfEvento.chNFe     := cdsCCeCHAVE.AsString;
      InfEvento.CNPJ      := RemoveChar(Copy(cdsCCeCHAVE.AsString, 7, 14));
      InfEvento.cOrgao    := cdsCCeORGAO.AsInteger;
      InfEvento.versaoEvento := '1.0.00';
      InfEvento.dhEvento  := envio;
      infEvento.tpEvento := teCCe;
      InfEvento.nSeqEvento := cdsCCeSEQUENCIA.AsInteger;
      InfEvento.detEvento.xCorrecao := cdsCCeCORRECAO.AsString;
    end;
    if ACBrNFe1.EnviarEventoNFe(NumeroLote) then
    begin
      with ACBrNFe1.WebServices.EnvEvento do
      begin
        if not(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135, 136]) then
        begin
          MessageDlg('Ocorreu o seguinte erro ao enviar a carta de correção:'  +
            #13+ 'Código: ' + IntToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + #13+
            'Motivo: ' + EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
          , mtError, [mbOK], 0);
        end
        else
          MessageDlg('Evento de Carta de Correção Enviado com Sucesso!',mtInformation,[mbOk],0);
      end;
    end
    else
    begin
      with ACBrNFe1.WebServices.EnvEvento do
      begin
        MessageDlg('Ocorreram erros ao enviar a Carta de Correção:' + #13 +
          'Lote: '     + IntToStr(EventoRetorno.idLote) + #13 +
          'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + #13 +
          'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + #13 +
          'Status: '   + IntToStr(EventoRetorno.cStat) + #13 +
          'Motivo: '   + EventoRetorno.xMotivo, mtError, [mbOK], 0);
      end;
    end;

  finally
    protocolo := AcbrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
    if (StrLen(PAnsiChar(protocolo)) > 1) then
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      DecimalSeparator := '.';
      xCond := 'A Carta de Correcao e disciplinada pelo paragrafo 1o-A do art. 7o do Convenio S/N, de 15 de dezembro de 1970 e pode ser utilizada para regularizacao de erro ocorrido na emissao ';
      xCond := xCond + 'de documento fiscal, desde que o erro nao esteja relacionado com: I - as variaveis que determinam o valor do imposto tais como: base de calculo, aliquota, diferenca de preco, quantidade, valor da operacao ou da prestacao; II - a correcao de ';
      xCond := xCond + 'dados cadastrais que implique mudanca do remetente ou do destinatario; III - a data de emissao ou de saida';
      //SALVA OS PROTOCOLOS
      try
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;

        dm.sqlsisAdimin.StartTransaction(TD);
        try
          str := 'UPDATE CCE SET PROTOCOLO = ' + quotedStr(protocolo)
          + ', DHENVIO = ' + QuotedStr(FormatDateTime('dd.mm.yyyy hh:mm:ss', envio))
          + ', CONDICAO = ' + QuotedStr(xCond)
          + ' WHERE CHAVE = ' + quotedStr(cdsCCECHAVE.AsString)
          + ' AND SEQUENCIA = ' + IntToStr(cdsCCESEQUENCIA.AsInteger);
          dm.sqlsisAdimin.ExecuteDirect(str);
          dm.sqlsisAdimin.Commit(TD);
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          end;
        end;

      finally
        imprimiCCe(protocolo, envio, xCond );
      end;
    end;
  end;

end;

procedure TfNFeletronica.JvDBGrid2CellClick(Column: TColumn);
begin
     cdsCCE.Edit;
     if cdsCCESELECIONOU.AsString = 'S' then
       cdsCCESELECIONOU.AsString := ''
     else
       cdsCCESELECIONOU.AsString := 'S';
end;

procedure TfNFeletronica.JvDBGrid2ColEnter(Sender: TObject);
begin
   if JvDBGrid2.SelectedField = cdsCCESELECIONOU then
     JvDBGrid2.Options := JvDBGrid2.Options - [dgEditing]
   else
      JvDBGrid2.Options := JvDBGrid2.Options + [dgEditing];
end;

procedure TfNFeletronica.JvDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Selecionou
  if Column.Field = cdsCCESELECIONOU then
  begin
     JvDBGrid2.Canvas.FillRect(Rect);
     ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 1);
     if cdsCCESELECIONOU.AsString = 'S' then
       ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 2)
     else
       ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 0);
  end;
end;

procedure TfNFeletronica.ImprimiCCe(protocolo : string; dthenvio : TDateTime; condicao : string);
begin
    VCLReport1.Filename := str_relatorio + 'CCe.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('NF').Value := Copy(cdsCCeCHAVE.AsString, 29 ,6);
    VCLReport1.Report.Params.ParamByName('SERIE').Value := '1';
    VCLReport1.Report.Params.ParamByName('CNPJ').Value := cdsCCECNPJ.AsString;
    VCLReport1.Report.Params.ParamByName('DTEMISSAO').Value := FormatDateTime('dd/mm/yyyy', dthenvio);
    VCLReport1.Report.Params.ParamByName('HREMISSAO').Value := FormatDateTime('hh:mm:ss', dthenvio);
    VCLReport1.Report.Params.ParamByName('SEQUENCIA').Value := cdsCCESEQUENCIA.AsInteger;
    VCLReport1.Report.Params.ParamByName('CORRECAO').Value := cdsCCECORRECAO.AsString;
    VCLReport1.Report.Params.ParamByName('CONDICAO').Value := condicao;
    VCLReport1.Report.Params.ParamByName('EVENTO').Value := '110110';
    VCLReport1.Report.Params.ParamByName('PROTOCOLO').Value := protocolo;
    VCLReport1.Report.Params.ParamByName('CHAVE').Value :=cdsCCeCHAVE.AsString;
    VCLReport1.Execute;
end;

procedure TfNFeletronica.btnImprimirCCeClick(Sender: TObject);
begin
  cdsCCE.First;
  while not cdsCCE.Eof do
  begin
    if( cdsCCESELECIONOU.AsString = 'S') then
      imprimiCCe(cdsCCEPROTOCOLO.AsString, cdsCCEDHENVIO.AsDateTime, cdsCCECONDICAO.AsString );
    cdsCCE.Next;
  end
end;


procedure TfNFeletronica.EnviaEmail;
var
 IDNFE, RAZAO, CNPJ, TRANSP, Protocolo, Assunto : String;
 numnf, serie : Integer;
 CC, Texto: Tstrings;
begin
  CC:=TstringList.Create;
  //ABRE A NOTA
  IDNFE  := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
  numnf  := StrToInt(cdsNFNOTASERIE.AsString);
  RAZAO  := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
  CNPJ   := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
  TRANSP := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;

  Protocolo := ACBrNFe1.WebServices.Retorno.Protocolo;
  Texto := TStringList.Create;
  Texto.Add('Empresa emissora da NF-e: ' + sEmpresaRAZAO.AsString);
  Texto.Add('CNPJ/CPF da Empresa Emissora: ' + sEmpresaCNPJ_CPF.AsString);
  Texto.Add('Empresa destacada na NF-e: ' + RAZAO);
  Texto.Add('CNPJ/CPF da Empresa/Cliente destacado: ' + CNPJ);
  Texto.Add('Número da NF: ' + InttoStr(numnf) + ' Série 1');
  Texto.Add('Chave de identificação: ' + IDNFE);
  Texto.Add('');
  Texto.Add('');
  Texto.Add('Consulte no Portal Nacional da NFe: https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa .');
  Texto.Add('Ou consulte pela página do SEFAZ do seu estado.');

  CC.Add(sEmpresaE_MAIL.AsString); //especifique um email válido
  Assunto := 'Nota Fiscal Eletrônica ' + InttoStr(numnf);

  Try
    begin
      try
        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(sEmpresaSMTP.AsString
                                                 , sEmpresaPORTA.AsString
                                                 , sEmpresaE_MAIL.AsString
                                                 , sEmpresaSENHA.AsString
                                                 , sEmpresaE_MAIL.AsString
                                                 , sClienteE_MAIL.AsString
                                                 , Assunto
                                                 , Texto
                                                 , False
                                                 , True //Enviar PDF junto
                                                 , CC //com copia
                                                 , nil // Lista de anexos - TStrings
                                                 , False  //Pede confirmação de leitura do email
                                                 , True  //Aguarda Envio do Email(não usa thread)
                                                 , sEmpresaRAZAO.AsString ); // Nome do Rementente
        ShowMessage('Email enviado com sucesso!');
      except
         on E: Exception do
          begin
            raise Exception.Create('Erro ao enviar email'+sLineBreak+E.Message);
          end;
      end;
    end;
  finally
    CC.Clear;
    CC.Free;
    Texto.Free;
    //fNFeletronica.ACBrNFe1.NotasFiscais.Clear;
  end;
end;

procedure TfNFeletronica.cbTipoNotaClick(Sender: TObject);
begin
  //btnListar.Click;
end;

function TfNFeletronica.validaNumNfe: Boolean;
begin
  // Faz a validacao do numero da NFE
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFE';
  dm.cds_parametro.Open;

  if (dmnf.scds_serienfe.Active) then
    dmnf.scds_serienfe.Close;
  dmnf.scds_serienfe.Params[0].AsString := dm.cds_parametroD1.AsString;

  dmnf.scds_serienfe.Open;
  result := false;
  if (cdsNFNOTASERIE.AsString <= IntToStr(dmnf.scds_serienfeNOTASERIE.AsInteger)) then
  begin
    result := true;
  end;

end;

function TfNFeletronica.validaNumNfeScan: Boolean;
begin
  // Faz a validacao do numero da NFE no SCan
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFESCAN';
  dm.cds_parametro.Open;

  if (dmnf.scds_serienfe.Active) then
    dmnf.scds_serienfe.Close;
  dmnf.scds_serienfe.Params[0].AsString := dm.cds_parametroD1.AsString;

  dmnf.scds_serienfe.Open;
  result := false;
  if (cdsNFNOTASERIE.AsString <= IntToStr(dmnf.scds_serienfeNOTASERIE.AsInteger)) then
  begin
    result := true;
  end;

end;

procedure TfNFeletronica.chkScanClick(Sender: TObject);
begin
  if (chkScan.Checked) then
  begin
    tp_amb := 3;
    Label5.Caption := 'PRODUÇÃO - SCAN';
    GroupBox5.Color := clRed;
  end
  else begin
    tp_amb := 1;
    Label5.Caption := 'PRODUÇÃO';
    GroupBox5.Color := clBtnFace;
  end;  
end;

procedure TfNFeletronica.btnAbaPrincipalClick(Sender: TObject);
begin
  PageControl2.ActivePage := TabSheet1;
end;

end.
