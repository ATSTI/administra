unit uClienteCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, DBCtrls, Mask, DBLocal, DBLocalS,
  EChkCNPJ, EChkCPF, ComCtrls, ImgList, rpcompobase, rpvclreport,
  JvExStdCtrls, JvDBCombobox, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, dateUtils, JvCombobox, JvComponentBase, JvFormAutoSize;

type
  TfClienteCadastro = class(TfPai)
    DBText2: TDBText;
    sds_cli: TSQLDataSet;
    dsp_cli: TDataSetProvider;
    cds_cli: TClientDataSet;
    cds_cliCODCLIENTE: TIntegerField;
    cds_cliNOMECLIENTE: TStringField;
    cds_cliRAZAOSOCIAL: TStringField;
    cds_cliCONTATO: TStringField;
    cds_cliTIPOFIRMA: TSmallintField;
    cds_cliCPF: TStringField;
    cds_cliCNPJ: TStringField;
    cds_cliINSCESTADUAL: TStringField;
    cds_cliRG: TStringField;
    cds_cliSEGMENTO: TSmallintField;
    cds_cliREGIAO: TSmallintField;
    cds_cliLIMITECREDITO: TFloatField;
    cds_cliDATACADASTRO: TDateField;
    cds_cliCODUSUARIO: TIntegerField;
    cds_cliSTATUS: TSmallintField;
    cds_cliHOMEPAGE: TStringField;
    cds_cliPRAZORECEBIMENTO: TSmallintField;
    cds_cliPRAZOENTREGA: TSmallintField;
    cds_cliCODBANCO: TSmallintField;
    cds_cliBASE_ICMS: TSmallintField;
    cds_cliDATANASC: TDateField;
    cds_cliCONTA_CLIENTE: TStringField;
    cds_cliOBS: TStringField;
    cds_cliBANCO: TStringField;
    cds_cliNOMEUSUARIO: TStringField;
    sds_cliCODICLIENTE: TIntegerField;
    sds_cliNOMECLIENTE: TStringField;
    sds_cliRAZAOSOCIAL: TStringField;
    sds_cliCONTATO: TStringField;
    sds_cliTIPOFIRMA: TSmallintField;
    sds_cliCPF: TStringField;
    sds_cliCNPJ: TStringField;
    sds_cliINSCESTADUAL: TStringField;
    sds_cliRG: TStringField;
    sds_cliSEGMENTO: TSmallintField;
    sds_cliREGIAO: TSmallintField;
    sds_cliLIMITECREDITO: TFloatField;
    sds_cliDATACADASTRO: TDateField;
    sds_cliCODUSUARIO: TIntegerField;
    sds_cliSTATUS: TSmallintField;
    sds_cliHOMEPAGE: TStringField;
    sds_cliPRAZORECEBIMENTO: TSmallintField;
    sds_cliPRAZOENTREGA: TSmallintField;
    sds_cliCODBANCO: TSmallintField;
    sds_cliBASE_ICMS: TSmallintField;
    sds_cliDATANASC: TDateField;
    sds_cliCONTA_CLIENTE: TStringField;
    sds_cliOBS: TStringField;
    sds_cliBANCO: TStringField;
    sds_cliNOMEUSUARIO: TStringField;
    sds_cliTEM_IE: TStringField;
    cds_cliTEM_IE: TStringField;
    scds_usuario_proc: TSQLClientDataSet;
    scds_usuario_procCODUSUARIO: TSmallintField;
    scds_usuario_procNOMEUSUARIO: TStringField;
    scds_usuario_procSTATUS: TSmallintField;
    scds_usuario_procPERFIL: TStringField;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    sds_estado: TSQLDataSet;
    sdsEnderecoCli: TSQLDataSet;
    sdsEnderecoCliCODENDERECO: TIntegerField;
    sdsEnderecoCliCODCLIENTE: TIntegerField;
    sdsEnderecoCliLOGRADOURO: TStringField;
    sdsEnderecoCliBAIRRO: TStringField;
    sdsEnderecoCliCOMPLEMENTO: TStringField;
    sdsEnderecoCliCIDADE: TStringField;
    sdsEnderecoCliUF: TStringField;
    sdsEnderecoCliCEP: TStringField;
    sdsEnderecoCliFAX: TStringField;
    sdsEnderecoCliE_MAIL: TStringField;
    sdsEnderecoCliRAMAL: TStringField;
    sdsEnderecoCliTIPOEND: TSmallintField;
    sdsEnderecoCliDADOSADICIONAIS: TStringField;
    sdsEnderecoCliDDD: TStringField;
    dspEnderecoCli: TDataSetProvider;
    cdsEnderecoCli: TClientDataSet;
    cdsEnderecoCliCODENDERECO: TIntegerField;
    cdsEnderecoCliCODCLIENTE: TIntegerField;
    cdsEnderecoCliLOGRADOURO: TStringField;
    cdsEnderecoCliBAIRRO: TStringField;
    cdsEnderecoCliCOMPLEMENTO: TStringField;
    cdsEnderecoCliCIDADE: TStringField;
    cdsEnderecoCliUF: TStringField;
    cdsEnderecoCliCEP: TStringField;
    cdsEnderecoCliFAX: TStringField;
    cdsEnderecoCliE_MAIL: TStringField;
    cdsEnderecoCliRAMAL: TStringField;
    cdsEnderecoCliTIPOEND: TSmallintField;
    cdsEnderecoCliDADOSADICIONAIS: TStringField;
    cdsEnderecoCliDDD: TStringField;
    DtSrcE: TDataSource;
    sdsEnderecoCliDDD2: TStringField;
    sdsEnderecoCliDDD3: TStringField;
    sdsEnderecoCliDDD1: TStringField;
    cdsEnderecoCliDDD2: TStringField;
    cdsEnderecoCliDDD3: TStringField;
    cdsEnderecoCliDDD1: TStringField;
    BitBtn4: TBitBtn;
    DBRadioGroup3: TDBRadioGroup;
    sds_cliDATARESC: TDateField;
    sds_cliNOMEMAE: TStringField;
    sds_cliSEXO: TStringField;
    sds_cliFORMA_CORRESPOND: TStringField;
    sds_cliGRUPO_CLIENTE: TStringField;
    sds_cliCODINCLUCANC: TIntegerField;
    sds_cliEXIST_COBERT: TStringField;
    sds_cliEXISTCOPART: TStringField;
    sds_cliDATAREINC: TDateField;
    sds_cliGERAAVISO: TStringField;
    sds_cliGERAENV: TStringField;
    sds_cliGERABOL: TStringField;
    sds_cliEMVIAGEM: TStringField;
    sds_cliDTAALTERA: TDateField;
    sds_cliSERIELETRA: TStringField;
    sds_cliSERIE: TStringField;
    sds_cliRA: TStringField;
    sds_cliCURSO: TStringField;
    cds_cliDATARESC: TDateField;
    cds_cliNOMEMAE: TStringField;
    cds_cliSEXO: TStringField;
    cds_cliFORMA_CORRESPOND: TStringField;
    cds_cliGRUPO_CLIENTE: TStringField;
    cds_cliCODINCLUCANC: TIntegerField;
    cds_cliEXIST_COBERT: TStringField;
    cds_cliEXISTCOPART: TStringField;
    cds_cliDATAREINC: TDateField;
    cds_cliGERAAVISO: TStringField;
    cds_cliGERAENV: TStringField;
    cds_cliGERABOL: TStringField;
    cds_cliEMVIAGEM: TStringField;
    cds_cliDTAALTERA: TDateField;
    cds_cliSERIELETRA: TStringField;
    cds_cliSERIE: TStringField;
    cds_cliRA: TStringField;
    cds_cliCURSO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbeCNPJ: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit1: TDBEdit;
    TabRepresentante: TTabSheet;
    TabVeiculo: TTabSheet;
    TabAdm: TTabSheet;
    TabInternet: TTabSheet;
    DtSrcVisita: TDataSource;
    TabVisitas: TTabSheet;
    MMJPanel3: TMMJPanel;
    btnGravar_rep: TBitBtn;
    btnIncluir_rep: TBitBtn;
    btncancelar_rep: TBitBtn;
    btnexcluir_rep: TBitBtn;
    BitBtn9: TBitBtn;
    btnsair_rep: TBitBtn;
    MMJPanel4: TMMJPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    MMJPanel6: TMMJPanel;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    MMJPanel7: TMMJPanel;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    DtSrcRepr: TDataSource;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBNavigator2: TDBNavigator;
    MMJPanel8: TMMJPanel;
    Panel1: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    sds_cliIP: TStringField;
    sds_cliN_CONTRATO: TStringField;
    sds_cliMAC: TStringField;
    sds_cliMARCA: TStringField;
    sds_cliBANDA_UPLOAD: TStringField;
    sds_cliBANDA_DOWLOAD: TStringField;
    sds_cliTORRE_CONECCAO: TStringField;
    cds_cliIP: TStringField;
    cds_cliN_CONTRATO: TStringField;
    cds_cliMAC: TStringField;
    cds_cliMARCA: TStringField;
    cds_cliBANDA_UPLOAD: TStringField;
    cds_cliBANDA_DOWLOAD: TStringField;
    cds_cliTORRE_CONECCAO: TStringField;
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
    dsp: TDataSetProvider;
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
    Label53: TLabel;
    ComboBox1: TComboBox;
    cds_faixa: TClientDataSet;
    cds_faixaCODFAIXA: TIntegerField;
    cds_faixaDESCRICAO: TStringField;
    cds_faixaIDADE_MIN: TSmallintField;
    cds_faixaIDADE_MAX: TSmallintField;
    cds_faixaVALOR_PLANO: TFloatField;
    cds_faixaDESCONTO: TFloatField;
    cds_faixaUSO: TStringField;
    dsp_faixa: TDataSetProvider;
    sds_faixa: TSQLDataSet;
    sds_faixaCODFAIXA: TIntegerField;
    sds_faixaDESCRICAO: TStringField;
    sds_faixaIDADE_MIN: TSmallintField;
    sds_faixaIDADE_MAX: TSmallintField;
    sds_faixaVALOR_PLANO: TFloatField;
    sds_faixaDESCONTO: TFloatField;
    sds_faixaUSO: TStringField;
    sds_cliCOD_FAIXA: TIntegerField;
    sds_cliDESCONTO: TFloatField;
    cds_cliCOD_FAIXA: TIntegerField;
    cds_cliDESCONTO: TFloatField;
    proc_end: TSQLDataSet;
    proc_endCOUNT: TIntegerField;
    TabSheet2: TTabSheet;
    DBEdit48: TDBEdit;
    Label54: TLabel;
    DBEdit49: TDBEdit;
    Label55: TLabel;
    DBEdit50: TDBEdit;
    Label56: TLabel;
    DBEdit51: TDBEdit;
    Label57: TLabel;
    DBEdit52: TDBEdit;
    Label58: TLabel;
    DBEdit53: TDBEdit;
    Label59: TLabel;
    DBEdit54: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit55: TDBEdit;
    Label62: TLabel;
    sds_cliMENSALIDADE: TFloatField;
    sds_cliPAI: TStringField;
    sds_cliLOCALTRABALUNO: TStringField;
    cds_cliMENSALIDADE: TFloatField;
    cds_cliPAI: TStringField;
    cds_cliLOCALTRABALUNO: TStringField;
    sds_cliDIVERSO1: TStringField;
    sds_cliDIVERSO2: TStringField;
    cds_cliDIVERSO1: TStringField;
    cds_cliDIVERSO2: TStringField;
    DBEdit56: TDBEdit;
    Label63: TLabel;
    sds_cliTELTRABALUNO: TStringField;
    cds_cliTELTRABALUNO: TStringField;
    Ficha1: TMenuItem;
    VCLReport1: TVCLReport;
    DBLookupComboBox1: TDBLookupComboBox;
    Label11: TLabel;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODDADOS: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1USO: TStringField;
    SQLDataSet1CODIGOS: TStringField;
    SQLDataSet1OUTROS: TStringField;
    DataSetProvider1: TDataSetProvider;
    cdsRegiao: TClientDataSet;
    cdsRegiaoCODDADOS: TIntegerField;
    cdsRegiaoDESCRICAO: TStringField;
    cdsRegiaoUSO: TStringField;
    cdsRegiaoCODIGOS: TStringField;
    cdsRegiaoOUTROS: TStringField;
    DtSrcReg: TDataSource;
    DBEdit8: TDBEdit;
    Label64: TLabel;
    sds_cliDATA_MATRICULA: TSQLTimeStampField;
    cds_cliDATA_MATRICULA: TSQLTimeStampField;
    Label23: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    sds_cliSITUACAOESCOLAR: TStringField;
    cds_cliSITUACAOESCOLAR: TStringField;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    BitBtn5: TBitBtn;
    sqlLocate: TSQLDataSet;
    dspLocate: TDataSetProvider;
    cdsLocate: TClientDataSet;
    sqlLocateNOMECLIENTE: TStringField;
    cdsLocateNOMECLIENTE: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    JvDBComboBox1: TJvDBComboBox;
    BitBtn8: TBitBtn;
    SQLDataSet2: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DataSetProvider2: TDataSetProvider;
    cdsConvenio: TClientDataSet;
    cdsConvenioCODDADOS: TIntegerField;
    cdsConvenioDESCRICAO: TStringField;
    cdsConvenioUSO: TStringField;
    cdsConvenioCODIGOS: TStringField;
    cdsConvenioOUTROS: TStringField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label26: TLabel;
    SQLDataSet3: TSQLDataSet;
    DataSetProvider3: TDataSetProvider;
    cdsParente: TClientDataSet;
    SQLDataSet3CODCLIDEPEN: TIntegerField;
    SQLDataSet3CODCLIENTE: TIntegerField;
    SQLDataSet3NOMEDEPENDENTE: TStringField;
    dsParente: TDataSource;
    cdsParenteCODCLIDEPEN: TIntegerField;
    cdsParenteCODCLIENTE: TIntegerField;
    cdsParenteNOMEDEPENDENTE: TStringField;
    JvDBComboBox2: TJvDBComboBox;
    SQLDataSet4: TSQLDataSet;
    DataSetProvider4: TDataSetProvider;
    dsCliente: TDataSource;
    SQLDataSet3CODDPEC: TIntegerField;
    cdsParenteCODDPEC: TIntegerField;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    Label39: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit22: TDBEdit;
    BitBtn10: TBitBtn;
    BitBtn17: TBitBtn;
    SQLDataSet4NOMECLIENTE: TStringField;
    SQLDataSet4CODCLIENTE: TIntegerField;
    SQLDataSet4CODUSUARIO: TIntegerField;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1NOMECLIENTE: TStringField;
    ClientDataSet1CODCLIENTE: TIntegerField;
    ClientDataSet1CODUSUARIO: TIntegerField;
    JvDBUltimGrid2: TJvDBUltimGrid;
    Label67: TLabel;
    SpeedButton8: TSpeedButton;
    Label68: TLabel;
    BitBtn18: TBitBtn;
    sdsModalidade: TSQLDataSet;
    dspModalidade: TDataSetProvider;
    cdsModalidade: TClientDataSet;
    dsModalidade: TDataSource;
    sdsModalidadeCODTURMA: TIntegerField;
    sdsModalidadeNOMETURMA: TStringField;
    sdsModalidadeHORARIOINICIAL: TTimeField;
    sdsModalidadeHORARIOFINAL: TTimeField;
    sdsModalidadeSTATUS: TStringField;
    sdsModalidadeGRUPOTURMA: TStringField;
    sdsModalidadeNUMVAGA: TSmallintField;
    sdsModalidadeDIASEMNA: TSmallintField;
    sdsModalidadeDIASEMANA: TSmallintField;
    cdsModalidadeCODTURMA: TIntegerField;
    cdsModalidadeNOMETURMA: TStringField;
    cdsModalidadeHORARIOINICIAL: TTimeField;
    cdsModalidadeHORARIOFINAL: TTimeField;
    cdsModalidadeSTATUS: TStringField;
    cdsModalidadeGRUPOTURMA: TStringField;
    cdsModalidadeNUMVAGA: TSmallintField;
    cdsModalidadeDIASEMNA: TSmallintField;
    cdsModalidadeDIASEMANA: TSmallintField;
    sdsTurma: TSQLDataSet;
    dspTurma: TDataSetProvider;
    cdsTurma: TClientDataSet;
    dsTurma: TDataSource;
    sdsTurmaNOMETURMA: TStringField;
    sdsTurmaCODCLIENTE: TIntegerField;
    cdsTurmaNOMETURMA: TStringField;
    cdsTurmaCODCLIENTE: TIntegerField;
    sdsTurmaDIASEMANA: TStringField;
    cdsTurmaDIASEMANA: TStringField;
    sdsTurmaCODTURMAALUNO: TIntegerField;
    cdsTurmaCODTURMAALUNO: TIntegerField;
    sdsTurmaCODTURMA: TIntegerField;
    cdsTurmaCODTURMA: TIntegerField;
    TabSheet3: TTabSheet;
    JvDBUltimGrid3: TJvDBUltimGrid;
    sdsFin: TSQLDataSet;
    dspFin: TDataSetProvider;
    cdsFin: TClientDataSet;
    dsFin: TDataSource;
    sdsFinTITULO: TStringField;
    sdsFinEMISSAO: TDateField;
    sdsFinDATAVENCIMENTO: TDateField;
    sdsFinDATARECEBIMENTO: TDateField;
    sdsFinCONTARECEBIDA: TStringField;
    cdsFinTITULO: TStringField;
    cdsFinEMISSAO: TDateField;
    cdsFinDATAVENCIMENTO: TDateField;
    cdsFinDATARECEBIMENTO: TDateField;
    cdsFinCONTARECEBIDA: TStringField;
    sdsFinVALOR_RESTO: TFloatField;
    sdsFinVALORRECEBIDO: TFloatField;
    sdsFinSTATUS: TStringField;
    sdsFinSITUACAO: TStringField;
    cdsFinVALOR_RESTO: TFloatField;
    cdsFinVALORRECEBIDO: TFloatField;
    cdsFinSTATUS: TStringField;
    cdsFinSITUACAO: TStringField;
    SpeedButton1: TBitBtn;
    SpeedButton4: TBitBtn;
    SpeedButton5: TBitBtn;
    SpeedButton7: TBitBtn;
    SpeedButton6: TBitBtn;
    SpeedButton9: TBitBtn;
    SpeedButton3: TBitBtn;
    SpeedButton2: TBitBtn;
    BitBtn19: TBitBtn;
    sdsFinCODRECEBIMENTO: TIntegerField;
    cdsFinCODRECEBIMENTO: TIntegerField;
    Button1: TBitBtn;
    sds: TSQLDataSet;
    sdsCODIGO: TIntegerField;
    sdsCODREDUZIDO: TStringField;
    sdsNOME: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label69: TLabel;
    sTranportadora: TSQLDataSet;
    sds_cliCOD_TRANPORTADORA: TIntegerField;
    cds_cliCOD_TRANPORTADORA: TIntegerField;
    dTranportadora: TDataSetProvider;
    cTranportadora: TClientDataSet;
    dTransp: TDataSource;
    sTranportadoraCODTRANSP: TIntegerField;
    sTranportadoraNOMETRANSP: TStringField;
    cTranportadoraCODTRANSP: TIntegerField;
    cTranportadoraNOMETRANSP: TStringField;
    cbTurma: TJvComboBox;
    BitBtn20: TBitBtn;
    sqlTurmaGrupo: TSQLQuery;
    DBEdit34: TDBEdit;
    Label70: TLabel;
    sdsEnderecoCliNUMERO: TStringField;
    cdsEnderecoCliNUMERO: TStringField;
    BitBtn21: TBitBtn;
    DBEdit57: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    DBEdit58: TDBEdit;
    ComboBox2: TComboBox;
    Label73: TLabel;
    DBEdit59: TDBEdit;
    Label74: TLabel;
    sdsEnderecoCliCD_IBGE: TStringField;
    cdsEnderecoCliCD_IBGE: TStringField;
    BitBtn22: TBitBtn;
    procIBGE: TSQLClientDataSet;
    procIBGENM_LOCALIDADE2: TStringField;
    procIBGECD_UF: TStringField;
    procIBGECD_IBGE: TStringField;
    procIBGENM_MUNICIPIO: TStringField;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    sds_cliCODRESPONSAVEL: TIntegerField;
    cds_cliCODRESPONSAVEL: TIntegerField;
    btnClienteProcura: TBitBtn;
    lblFornecedor: TLabel;
    btnProdutoProcura: TBitBtn;
    lblBanco: TLabel;
    lblPlano: TLabel;
    cbPlano: TComboBox;
    cbCFOP: TDBComboBox;
    Label78: TLabel;
    sds_cliCFOP: TStringField;
    cds_cliCFOP: TStringField;
    dbedtPRAZORECEBIMENTO: TDBEdit;
    lbl1: TLabel;
    cbPais: TJvComboBox;
    Label79: TLabel;
    sdsEnderecoCliPAIS: TStringField;
    cdsEnderecoCliPAIS: TStringField;
    sqlPais: TClientDataSet;
    dspPais: TDataSetProvider;
    sdsPais: TSQLDataSet;
    sdsPaisCODPAIS: TStringField;
    sdsPaisPAIS: TStringField;
    sqlPaisCODPAIS: TStringField;
    sqlPaisPAIS: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    sdsTFiscal: TSQLDataSet;
    dspTFiscal: TDataSetProvider;
    cdsTFiscal: TClientDataSet;
    DtSrcTFiscal: TDataSource;
    sdsTFiscalCODFISCAL: TStringField;
    sdsTFiscalDESCRICAO: TStringField;
    cdsTFiscalCODFISCAL: TStringField;
    cdsTFiscalDESCRICAO: TStringField;
    sds_cliCODFISCAL: TStringField;
    cds_cliCODFISCAL: TStringField;
    Label80: TLabel;
    DBEdit62: TDBEdit;
    Label81: TLabel;
    sds_cliSUFRAMA: TStringField;
    cds_cliSUFRAMA: TStringField;
    GroupBox1: TGroupBox;
    DBEdit63: TDBEdit;
    Label82: TLabel;
    edtListaPreco: TEdit;
    btnProcListaPreco: TBitBtn;
    sdsListaVenda: TSQLDataSet;
    sdsListaVendaCODLISTA: TIntegerField;
    sdsListaVendaNOMELISTA: TStringField;
    sdsListaVendaVALIDADE: TDateField;
    sdsListaVendaDATAINICIAL: TDateField;
    sdsListaVendaDATAFINAL: TDateField;
    dspListaVenda: TDataSetProvider;
    cdsListaVenda: TClientDataSet;
    cdsListaVendaCODLISTA: TIntegerField;
    cdsListaVendaNOMELISTA: TStringField;
    cdsListaVendaVALIDADE: TDateField;
    cdsListaVendaDATAINICIAL: TDateField;
    cdsListaVendaDATAFINAL: TDateField;
    sds_cliNUMERO: TIntegerField;
    cds_cliNUMERO: TIntegerField;
    rgTipoEndereco: TRadioGroup;
    sdsEnderecoCliTELEFONE: TStringField;
    sdsEnderecoCliTELEFONE1: TStringField;
    sdsEnderecoCliTELEFONE2: TStringField;
    cdsEnderecoCliTELEFONE: TStringField;
    cdsEnderecoCliTELEFONE1: TStringField;
    cdsEnderecoCliTELEFONE2: TStringField;
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure cds_cliNewRecord(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeCNPJExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DtSrcEStateChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cdsEnderecoCliNewRecord(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnIncluir_repClick(Sender: TObject);
    procedure btnGravar_repClick(Sender: TObject);
    procedure btnexcluir_repClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DtSrcReprStateChange(Sender: TObject);
    procedure btncancelar_repClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Ficha1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure TabInternetShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure JvDBComboBox1Exit(Sender: TObject);
    procedure DBRadioGroup4Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure cds_cliReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsEnderecoCliReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure cbPlanoChange(Sender: TObject);
    procedure cbPaisChange(Sender: TObject);
    procedure btnProcListaPrecoClick(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
   // procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalculaDesconto;
    function Verifica_Campos_Em_Branco: Boolean;
    function Verifica_Campos_Em_BrancoEndereco: Boolean;
    function ValidarISUF: Boolean;                    
  public
//    function CalculaCnpjCpf(Numero : String) : String;
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
    function FormExiste(aberto: Tform): Boolean;
    { Public declarations }
  end;

var
  fClienteCadastro: TfClienteCadastro;
  vartipo, cod_vendedor: integer;
  nome_vendedor : string;

implementation

uses UDm, uProcurar, uclienteendereco, uClienteRepresentante,
  uClienteVeiculo, uListaClientes, uListaClientesSaude, uVendas, uEstado, uVisitas,
  uListaCliEscola, uRegiaoCadastro, uUtils, sCtrlResize, uNotaf,
  uCrTituloInclui, uNF, uProdFornecedor, uTerminal_Delivery, ubanco, UDMNF,
  uListaVendaProc;

{$R *.dfm}

procedure TfClienteCadastro.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex=0 then
  begin
    cds_cliCNPJ.EditMask := '000.000.000-00;1;_';
    cds_cliTIPOFIRMA.AsInteger := 0;
  end
  else
  begin
    cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_cliTIPOFIRMA.AsInteger := 1;
  end;
  dbeCNPJ.Enabled:=True;

end;

procedure TfClienteCadastro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.btnIncluir.Visible := True;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   varForm1 := 'vendedor';
   cod_vendedor := 0;
   nome_vendedor := '';
   if fProcurar.ShowModal=mrOk then
   begin
    if dtSrc.State=dsBrowse then
     cds_cli.Edit;
    cds_cliCODUSUARIO.AsInteger := cod_vendedor;
    cds_cliNOMEUSUARIO.AsString := nome_vendedor;
   end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfClienteCadastro.FormCreate(Sender: TObject);
begin
  //inherited;
  MMJPanel1.Background.EndColor   := dm.corStart;
  MMJPanel1.Background.StartColor := dm.corEnd;
  MMJPanel2.Background.EndColor   := dm.corEnd;
  MMJPanel2.Background.StartColor := dm.corStart;

  DBRadioGroup3.Color   := dm.corEnd;

  if (not cdsConvenio.Active) then
      cdsConvenio.Open;
    if (cdsConvenio.Locate('CODDADOS', cds_cliCODINCLUCANC.AsInteger, [loCaseInsensitive])) then
      jvDBComboBox2.Text := cdsConvenio.Fields[1].AsString
    else
      jvDBComboBox2.Text := '';

  // Popula Combobox2 com faixas de cobrança
  if not cds_faixa.Active then
    cds_faixa.Open;
  while not cds_faixa.EOF do
  begin
  ComboBox2.Items.Add(cds_faixaDESCRICAO.AsString);
  cds_faixa.Next;
  end;

  //Usa Cadastro de Veiculo
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'SIM' then
    BitBtn2.Visible :=true//TabVeiculo.TabVisible := True
  else
    BitBtn2.Visible :=false;//TabVeiculo.TabVisible := False;

  //Usa REPRESENTANTE OU REFERENCIA
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'REFERENCIA' then
  begin
    TabRepresentante.Caption := 'REFERÊNCIA';
    Label40.Caption := 'Nome';
    Label41.Caption := 'Obs.';
  end;
  //Usa Cadastro de Visitas
 { if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVISITAS';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    BitBtn4.Visible :=true //TabVisitas.TabVisible := True
  else
    BitBtn4.Visible :=true;//TabVisitas.TabVisible := False;
  }
  //Usa Cadastro de Veiculo
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabVeiculo.TabVisible := True
  else
    TabVeiculo.TabVisible := False;

  //Usa Cadastro de Visitas
  {if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVISITAS';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabVisitas.TabVisible := True
  else}
  TabVisitas.TabVisible := False;

  //Usa Cadastro de Internet
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROINTERNET';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabInternet.TabVisible := True
  else
  TabInternet.TabVisible := False;

  TabAdm.TabVisible := True;
  dm.cds_parametro.Params[0].AsString := 'CADASTROADM';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
    TabRepresentante.TabVisible := True
  else
    TabRepresentante.TabVisible := False;

  dm.cds_parametro.Close;
  if (sds_estado.Active) then
    sds_estado.Close;
  sds_estado.CommandText := 'SELECT DISTINCT UF FROM ESTADO_ICMS ';
  sds_estado.Open;
  while (not sds_estado.Eof) do
  begin
    DBComboBox1.Items.Add(sds_estado.Fields[0].asString);
    sds_estado.Next;
  end;

  if not cds_faixa.Active then
    cds_faixa.Open;
  // populo a combobox
  cds_faixa.First;
  while not cds_faixa.Eof do
  begin
    ComboBox1.Items.Add(cds_faixaDESCRICAO.AsString);
    cds_faixa.Next;
  end;

  TabSheet2.TabVisible := True;

  //Usa Cadastro de Veiculo
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROCLIENTE';
  dm.cds_parametro.Open;
  if (dm.cds_parametroD1.AsString =  'DADOSADICIONAIS') then
    TabSheet2.TabVisible := True
  else
    TabSheet2.TabVisible := False;

  dm.cds_parametro.Close;

  TabInternet.TabVisible := False;

  if (dm.moduloUsado = 'ACADEMIA') then
  begin
    TabInternet.TabVisible := True;
    label14.Visible := False;
    label15.Visible := False;
    DbEdit13.Visible := False;
    DbEdit14.Visible := False;
    dbMemo1.Width := dbMemo1.Width + 350;
  end;

  //Campos Obrigatorios
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CLIENTEOBRIGATORIO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (dm.cds_parametroD1.AsString = 'CNPJ') then
    begin
      label6.Caption := 'CNPJ / CPF *';
      label6.font.Color := clRed;
      cds_cliCNPJ.Required := True;
    end;
    if (dm.cds_parametroD2.AsString = 'INSCESTADUAL') then
    begin
      label7.Caption := 'IE / RG *';
      label7.font.Color := clRed;
      cds_cliINSCESTADUAL.Required := True;
    end;
    if (dm.cds_parametroD3.AsString = 'LOGRADOURO') then
    begin
      label16.Caption := 'Endereço *';
      label16.font.Color := clRed;
      cdsEnderecoCliLOGRADOURO.Required := True;
    end;
  end;

  //PREENCE COM POSSIVEIS CFOPs PADRÃO PARA VENDA
  if (not dmnf.listaCFOP.Active) then
    dmnf.listaCFOP.Open;
  dmnf.listaCFOP.First;
  while not dmnf.listaCFOP.Eof do
  begin
     cbCFOP.Items.Add(dmnf.listaCFOPCFCOD.AsString);
     dmnf.listaCFOP.Next;
  end;
  dmnf.listaCFOP.Close;

  PageControl1.ActivePage := TabSheet1;
  MMJPanel1.Align := alBottom;

  if sqlPais.Active then
    sqlPais.Close;
  sqlPais.Open;
  sqlPais.First;
  while not sqlPais.Eof do
  begin
    cbPais.Items.Add(sqlPaisPAIS.AsString);
    sqlPais.Next;
  end;

end;

procedure TfClienteCadastro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsEdit, dsInsert]) then
    btnGravar.Click;
 fclienteendereco:=Tfclienteendereco.Create(Application);
 try
   fclienteendereco.ShowModal;
 finally
   fclienteendereco.Free;
   if (btnIncluir.Enabled = True) then
     btnIncluir.SetFocus;
 end;
end;

procedure TfClienteCadastro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if cds_cli.State in [dsInsert, dsEdit] then
   cds_cli.ApplyUpdates(0);
   fClienteRepresentante := TfClienteRepresentante.Create(Application);
   try
    fClienteRepresentante.ShowModal;
   finally
    fClienteRepresentante.Free;
   end;
end;

procedure TfClienteCadastro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  cod_cli := cds_cliCODCLIENTE.AsInteger;
  if cds_cli.State in [dsInsert, dsEdit] then
   cds_cli.ApplyUpdates(0);
   fClienteVeiculo := TfClienteVeiculo.Create(Application);
   try
    fClienteVeiculo.ShowModal;
   finally
    fClienteVeiculo.Free;
   end;
end;

procedure TfClienteCadastro.btnProcurarClick(Sender: TObject);
begin
   //inherited;
   if ((varform = 'consulta') or (varform = 'consultaescola') or (varform = 'consultapedagogico'))  then
   begin
     close;
     exit;
   end;

   if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'ESCOLA')) then
   begin
     fListaClientes:=TfListaClientes.Create(Application);
     fListaClientes.BitBtn8.Enabled := False;
     fListaClientes.ShowModal;
     try
       PageControl1.ActivePage := TabSheet1;
       cds_cli.Close;
       cds_cli.Params[0].Clear;
       cds_cli.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
       cds_cli.Open;
       if cds_cliTIPOFIRMA.AsInteger = 0 then
         cds_cliCNPJ.EditMask := '000.000.000-00;1;_'
       else
         cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
       if cds_cliTEM_IE.AsString = 'S' then
         CheckBox1.Checked := True;
       if cds_cliTEM_IE.AsString = '' then
         CheckBox1.Checked := False;
      finally
        fListaClientes.Free;
        dbEdit2.SetFocus;
      end;
   end;
   if (dm.moduloUsado = 'ESCOLA') then
   begin
     fListaCliEscola:=TfListaCliEscola.Create(Application);
     fListaCliEscola.BitBtn8.Enabled := False;
     fListaCliEscola.ShowModal;
     try
       PageControl1.ActivePage := TabSheet1;
       cds_cli.Close;
       cds_cli.Params[0].Clear;
       cds_cli.Params[0].AsInteger := codcli; //fListaCliEscola.cdsCODCLIENTE.AsInteger;
       cds_cli.Open;
       if cds_cliTIPOFIRMA.AsInteger = 0 then
         cds_cliCNPJ.EditMask := '000.000.000-00;1;_'
       else
         cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
       if cds_cliTEM_IE.AsString = 'S' then
         CheckBox1.Checked := True;
       if cds_cliTEM_IE.AsString = '' then
         CheckBox1.Checked := False;
      finally
        fListaCliEscola.Free;
        dbEdit2.SetFocus;
      end
   end;

    if cdsEnderecoCli.Active then
       cdsEnderecoCli.Close;
    cdsEnderecoCli.Params[0].Clear;
    cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsEnderecoCli.Open;
    rgTipoEndereco.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    // abre o cadastro de representante
    if dm.cds_repcli.Active then
     dm.cds_repcli.Close;
    dm.cds_repcli.Params[0].AsInteger := fClienteCadastro.cds_CliCODCLIENTE.AsInteger;
    dm.cds_repcli.Open;
    if (Not cds_faixa.Active) then
       cds_faixa.Open;

    if (cdsFin.Active) then
      cdsFin.Close;
    cdsFin.Params.ParamByName('pCliente').Clear;
    cdsFin.Params.ParamByName('pCliente').AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsFin.Open;

    if (cds_faixa.Locate('CODFAIXA', cds_cliCOD_FAIXA.AsInteger,[loCaseInsensitive])) then
      ComboBox1.Text := cds_faixaDESCRICAO.AsString
    else
      ComboBox1.Text := '';

  if (dm.moduloUsado = 'ACADEMIA') then
  begin
    if (not cdsConvenio.Active) then
      cdsConvenio.Open;
    if (cdsConvenio.Locate('CODDADOS', cds_cliCODINCLUCANC.AsInteger, [loCaseInsensitive])) then
      jvDBComboBox1.Text := cdsConvenio.Fields[1].AsString
    else
      jvDBComboBox1.Text := '';
    // Verifica se tem desconto por Parentesco
    if (cdsParente.Active) then
      cdsParente.Close;
    cdsParente.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsParente.Open;
    if (cds_cliSITUACAOESCOLAR.AsString = '0') then
    begin
      JvDBComboBox1.Enabled := True;
      BitBtn8.Enabled := True;
      DBRadioGroup4.ItemIndex := 0;
    end
    else begin
      JvDBComboBox1.Enabled := False;
      BitBtn8.Enabled := False;
      DBRadioGroup4.ItemIndex := 1;
    end;
      JvDBComboBox2.ItemIndex := -1;

    if (not cdsModalidade.Active) then
      cdsModalidade.Open;

    if (cdsTurma.Active) then
      cdsTurma.Close;
    cdsTurma.Params.ParamByName('pCli').Clear;
    cdsTurma.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsTurma.Open;
    cbTurma.Text := '';
  end;
  if (not sqlPais.Active) then
    sqlPais.Open;
  if (sqlPais.Locate('PAIS', cdsEnderecoCliPAIS.asString, [loCaseInsensitive])) then
     cbPais.ItemIndex := sqlPais.RecNo-1;
  rgTipoEndereco.Enabled := True;
end;

procedure TfClienteCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;
  if Alterar = 'S' then
  begin
    BitBtn1.Enabled:=DtSrc.State in [dsBrowse];
    BitBtn2.Enabled:=DtSrc.State in [dsBrowse];
    BitBtn3.Enabled:=DtSrc.State in [dsBrowse];
    BitBtn4.Enabled:=DtSrc.State in [dsBrowse];
  end
  else
  begin
    BitBtn1.Enabled:=False;
    BitBtn2.Enabled:=False;
    BitBtn3.Enabled:=False;
    BitBtn4.Enabled:=False;
  end;

end;

procedure TfClienteCadastro.cds_cliNewRecord(DataSet: TDataSet);
begin
  inherited;
    cds_cliDATACADASTRO.Value:=Date;
    cds_CliCODUSUARIO.AsInteger:=usulog;
    cds_CliCODBANCO.AsInteger:=1;
    cds_cliCODCLIENTE.AsInteger := 99999999;
    if dm.scds_banco_proc.Active then
       dm.scds_banco_proc.Close;
    dm.scds_banco_proc.Params[0].AsInteger:=cds_CliCODBANCO.AsInteger;
    dm.scds_banco_proc.Open;
    cds_cliBANCO.asstring:=dm.scds_banco_procBANCO.asstring;
    if dm.scds_banco_proc.IsEmpty then
      cds_cliBANCO.asstring := 'x';
    dm.scds_banco_proc.Close;
end;

procedure TfClienteCadastro.btnGravarClick(Sender: TObject);
var faixacod : integer;
   desconto, parente: double;
   tipoEnd: String;
begin
  if (cds_cliCODCLIENTE.AsInteger = 0) then
  begin
    MessageDlg('Não é possível gravar cliente com Código 0(zero), use o botão incluir, para fazer um cadastro.', mtWarning, [mbOK], 0);
    exit;
  end;
 parente := 0;
 if ((PageControl1.ActivePage = TabSheet1) or (PageControl1.ActivePage = TabInternet)) then
 begin
    if (cds_cliSUFRAMA.Size > 0) then
      if not ValidarISUF then
      begin
        MessageDlg('Código SUFRAMA inválido.', mtWarning, [mbOK], 0);
        Exit;
      end;

    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if (cdsLocate.Locate('NOMECLIENTE', DBEdit2.Text ,[loCaseInsensitive])) then
      if(MessageDlg('Nome já Cadastrado'+#13+#10+'Deseja Continuar', mtWarning, [mbYes, mbNo ], 0) = mrno) then
      begin
        btnCancelar.Click;
        exit;
      end;

      if (Verifica_Campos_Em_Branco = false) then
      begin
        exit;
      end;
      if (Verifica_Campos_Em_BrancoEndereco = false) then
      begin
        exit;
      end;

{        cds_cli.Post;
        if (cdsEnderecoCli.State in [dsInsert, dsEdit]) then
          cdsEnderecoCli.Post;
      except
        MessageDlg('Preecha os campos obrigatórios.', mtWarning, [mbOK], 0);
        exit;
      end;
      cds_cli.Edit;
      cdsEnderecoCli.Edit;
 }

      if CheckBox1.Checked = True then
         cds_cliTEM_IE.AsString := 'S';
      parente := 1;
    end;

    if (cbPlano.Text <> '') then
    begin
       if not cds_faixa.Active then
        cds_faixa.Open;
       cds_faixa.Locate('DESCRICAO', CbPlano.Text,[loCaseInsensitive]);
       cds_cliCOD_FAIXA.AsInteger := cds_faixaCODFAIXA.AsInteger;
    end;

    if (dm.moduloUsado = 'ACADEMIA') then
    begin
      // E novo registro ento recarrega a lista de parente
      if (parente = 1) then
      begin
        if (ClientDataSet1.Active) then
          ClientDataSet1.Close;
        ClientDataSet1.CommandText := 'SELECT NOMECLIENTE, CODCLIENTE, ' +
          'codusuario FROM CLIENTES ORDER BY NOMECLIENTE';
        ClientDataSet1.Open;
        JvDBComboBox2.Items.Clear;
        while not ClientDataSet1.Eof do
        begin
          JvDBComboBox2.Items.Add(ClientDataSet1.Fields[0].AsString);
          ClientDataSet1.Next;
        end;
        parente := 0;
      end;

      cds_cliSITUACAOESCOLAR.AsString := IntToStr(DBRadioGroup4.ItemIndex);

      if (cds_cliSTATUS.AsInteger = 2) then
      begin
        // Remove o Desconto por parente se Existir
        if (ClientDataSet1.Active) then
          ClientDataSet1.Close;
        ClientDataSet1.CommandText := 'select cli.nomecliente, d.codcliente,  d.coddpec, cli.codusuario ' +
          ' from clientes_dep d left outer join clientes cli on cli.codcliente = ' +
          ' d.codcliente where d.coddpec = ' + IntToStr(cds_cliCODCLIENTE.AsInteger);
        ClientDataSet1.Open;
        While (not ClientDataSet1.Eof) do
        begin
          if (cdsParente.Active) then
            cdsParente.Close;
          cdsParente.Params.ParamByName('pCli').asinteger := ClientDataSet1.fields[1].AsInteger;
          cdsParente.Open;
          if (not cdsParente.IsEmpty) then
          begin
          cdsParente.RecordCount;

          parente := 0;
          // Até 2 parente 5 % desconto , 3 ou mais 10 %
          if (((cdsParente.RecordCount-1) > 0) and ((cdsParente.RecordCount-1) < 3)) then
            parente := 5
          else if ((cdsParente.RecordCount-1) > 2) then
            parente := 10;

          if (not cdsConvenio.Active) then
            cdsConvenio.Open;
          if (cdsConvenio.Locate('CODDADOS', cds_cliCODINCLUCANC.AsInteger,[loCaseInsensitive])) then
          begin
            desconto := StrToFloat(cdsConvenioOUTROS.asString);
          end else
            desconto := 0;

            // Procurando o valor do Desconto por Parente
            if (not cdsConvenio.Active) then
              cdsConvenio.Open;
            DecimalSeparator := '.';
            cdsConvenio.Locate('DESCRICAO', 'PARENTE',[loCaseInsensitive]);
            dm.sqlsisAdimin.ExecuteDirect('UPDATE CLIENTES SET DESCONTO = ' +
              FloatToStr(parente + desconto) + ' where CODCLIENTE = ' +
              IntToStr(ClientDataSet1.fields[1].AsInteger));
            dm.sqlsisAdimin.ExecuteDirect('delete from  clientes_dep where coddpec = ' +
               IntToStr(cds_cliCODCLIENTE.AsInteger) + ' and codcliente = ' +
               IntToStr(ClientDataSet1.fields[1].AsInteger));
            DecimalSeparator := ',';
          end;
          ClientDataSet1.Next;
        end;
      end;
    end;
    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_cliCODCLIENTE.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
    end;
    inherited;
    if (cdsEnderecoCli.State in [dsInsert]) then
    begin
      rgTipoEndereco.Enabled := True;
      if (dm.sqlBusca.Active) then
        dm.sqlBusca.Close;
      dm.sqlBusca.SQL.Clear;
      dm.sqlBusca.SQL.Add('SELECT TIPOEND FROM ENDERECOCLIENTE WHERE CODCLIENTE = ' +
        IntToStr(cds_cliCODCLIENTE.AsInteger) +
        'AND TIPOEND = ' + IntToStr(rgTipoEndereco.ItemIndex));
      dm.sqlBusca.Open;
      if (not dm.sqlBusca.IsEmpty) then
      begin
        case rgTipoEndereco.ItemIndex of
          0: tipoEnd := 'Endereço Principal';
          1: tipoEnd := 'Endereço Cobrança';
          2: tipoEnd := 'Endereço Entrega';
        end;
        MessageDlg('Já existe endereço cadastrado para o tipo ' + tipoEnd, mtWarning, [mbOK], 0);
        cds_cli.Edit;
        exit;
      end;
      cdsEnderecoCliTIPOEND.AsInteger := rgTipoEndereco.ItemIndex;
    end;
     if (cdsEnderecoCli.State in [dsInsert, dsEdit]) then
     begin
        if (DBComboBox1.Text ='') then
        begin
          MessageDlg('Campo Estado está vazio , Favor Preencher ', mtWarning, [mbOK], 0);
          cds_cli.Edit;
          exit;
        end;
        if (sds_estado.Active) then
          sds_estado.Close;
        sds_estado.CommandText := 'SELECT UF FROM ESTADO_ICMS WHERE UF = ''' + DBComboBox1.Text + '''';
        sds_estado.Open;
        if (sds_estado.IsEmpty) then
        begin
         MessageDlg('Estado não cadastrado na Tabela ESTADO(icms). ', mtWarning, [mbOK], 0);
         fEstado:=TfEstado.Create(Application);
         try
           fEstado.showmodal;
         cds_cli.Edit;
         finally
          fEstado.Free;
         end;
         exit;
        end;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cdsEnderecoCliCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
       // cdsEnderecoCliPAIS.AsString := cbPais.Text;
        dm.c_6_genid.Close;
        if (cdsEnderecoCliCODCLIENTE.AsInteger = 0) then
          cdsEnderecoCliCODCLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
        cdsEnderecoCli.ApplyUpdates(0);
     end;
  end;
  if (PageControl1.ActivePage = TabRepresentante) then
    btnGravar_rep.Click;

  if (cdsLocate.Active) then
    cdsLocate.Close;
  cdsLocate.Open;

end;

procedure TfClienteCadastro.btnIncluirClick(Sender: TObject);
begin
  if ((PageControl1.ActivePage = TabSheet1) or (PageControl1.ActivePage = TabInternet)) then
  begin
    inherited;
    if cdsEnderecoCli.Active then
       cdsEnderecoCli.Close;
    cdsEnderecoCli.Params[0].Clear;
    cdsEnderecoCli.Params[1].Clear;

    if (vartipo = 0) then
    begin
      cds_cliCNPJ.EditMask := '000.000.000-00';
      cds_cliTIPOFIRMA.AsInteger := 0;
      cds_cliCODFISCAL.AsString := 'F';
    end
    else
    begin
      cds_cliCNPJ.EditMask := '00.000.000/0000-00';
      cds_cliTIPOFIRMA.AsInteger := 1;
      cds_cliCODFISCAL.AsString := 'J';
    end;
    cds_cliSEGMENTO.Value:=1;
    cds_cliREGIAO.Value:=1;
    if (not scds_usuario_proc.Active) then
       scds_usuario_proc.Open;
    scds_usuario_proc.Locate('CODUSUARIO','1', [loCaseInsensitive]);
    cds_cliCODUSUARIO.Value := 1;
    cds_cliNOMEUSUARIO.AsString := scds_usuario_procNOMEUSUARIO.AsString;
    scds_usuario_proc.Close;
    cds_cliSTATUS.Value:=1;
    {CBox1.Checked := true;
    CBox1.Font.Color := clBlue;
    CBox2.Checked := false;}
    CheckBox1.Checked := False;
    cds_cliDATACADASTRO.Value:=Date;

    if not cdsEnderecoCli.Active then
       cdsEnderecoCli.open;
    cdsEnderecoCli.Append;
    cdsEnderecoCliUF.AsString := 'SP';
    cdsEnderecoCliTIPOEND.AsInteger := 0;
    rgTipoEndereco.ItemIndex := 0;
    rgTipoEndereco.Enabled := False;
    if (dm.moduloUsado = 'ACADEMIA') then
    begin
      if (not cdsModalidade.Active) then
        cdsModalidade.Open;
      if (cdsFin.Active) then
        cdsFin.Close;
      {cdsFin.Params.ParamByName('pCliente').Clear;
      cdsFin.Params.ParamByName('pCliente').AsInteger := cds_cliCODCLIENTE.AsInteger;
      cdsFin.Open;}
      if (cdsTurma.Active) then
        cdsTurma.Close;
      {cdsTurma.Params.ParamByName('pCli').Clear;
      cdsTurma.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
      cdsTurma.Open;}
      cbTurma.Text := '';
    end;

   // if ((varform <> 'venda') and (varform <> 'consulta')) then
      dbEdit2.SetFocus;
 end;
 if (PageControl1.ActivePage = TabRepresentante) then
   btnIncluir_rep.Click;
 cbPais.ItemIndex := 29;
 cdsEnderecoCliPAIS.AsString := cbPais.Text; 
end;

procedure TfClienteCadastro.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsInsert]) then
  if (cdsLocate.Locate('NOMECLIENTE', DBEdit2.Text ,[loCaseInsensitive])) then
  if(MessageDlg('Nome já Cadastrado'+#13+#10+'Deseja Continuar', mtWarning, [mbYes, mbNo ], 0) = mrno) then
  begin
    btnCancelar.Click;
    exit;
  end;

  if DtSrc.State=dsInsert then
    cds_cliRAZAOSOCIAL.AsString := cds_cliNOMECLIENTE.AsString;
end;

procedure TfClienteCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  codcli := cds_cliCODCLIENTE.AsInteger;
  nomecli := cds_cliNOMECLIENTE.AsString;
  DM.varNomeCliente := cds_cliRAZAOSOCIAL.AsString;
  dm.codcli := cds_cliCODCLIENTE.AsInteger;

  if (varform = 'venda') then
  begin
    codcli := cds_cliCODCLIENTE.AsInteger;
    nomecli := cds_cliNOMECLIENTE.AsString;
    //fListaClientes.edCodigo.Text := IntToStr(codcli);
    //fListaClientes.BitBtn2.Click;
  end;
  if (varform = 'TERMINALDEVENDAS') then
  begin
    if fTerminal_Delivery.dtSrc.State=dsBrowse then
      fTerminal_Delivery.cds_Movimento.Edit;
    fTerminal_Delivery.cds_MovimentoCODCLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
    fTerminal_Delivery.cds_MovimentoNOMECLIENTE.AsString := cds_cliNOMECLIENTE.AsString;
    fTerminal_Delivery.prazoparapgto := cds_cliPRAZORECEBIMENTO.AsInteger;
  end;
  if (varform = 'consulta') then
  begin
    //fListaClientes.edNome.SetFocus;
  end;
  if ((varform <> 'consultaescola') and (varform <> 'consultapedagogico')) then
  if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'SAUDE')) then
  if (dm.var_teste = 'venda') then
  begin
    codcli := cds_cliCODCLIENTE.AsInteger;
    nomecli := cds_cliNOMECLIENTE.AsString;
    //fListaClientes.edCodigo.Text := IntToStr(codcli);
    //fListaClientes.BitBtn2.Click;
  end;
  if ((varform <> 'consultaescola') and (varform <> 'consultapedagogico')) then
  if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'SAUDE')) then
  if (dm.var_teste = 'consulta') then
  begin
    //fListaClientes.edNome.SetFocus;
  end;
  if (var_testeSa = 'venda') then
  begin
    codcli := cds_cliCODCLIENTE.AsInteger;
    nomecli := cds_cliNOMECLIENTE.AsString;
    //fListaClientes.edCodigo.Text := IntToStr(codcli);
    //fListaClientes.BitBtn2.Click;
  end;

  if (var_testeSa = 'consulta') then
  begin
    //fListaClientes.edNome.SetFocus;
  end;
  if (cdsRegiao.Active) then
      cdsRegiao.Close;

  if (cdsTFiscal.Active) then
      cdsTFiscal.Close;

  if (FormExiste(fNotaF) = True) then
     DM.varNomeCliente := cds_cliRAZAOSOCIAL.AsString;
  if (FormExiste(fNF) = True) then
  begin
     DM.varNomeCliente := cds_cliRAZAOSOCIAL.AsString;
     dm.codcli := cds_cliCODCLIENTE.AsInteger;
  end;
  if (cTranportadora.Active) then
      cTranportadora.close;


  Action := caFree;
  fClienteCadastro := nil;

end;

procedure TfClienteCadastro.dbeCNPJExit(Sender: TObject);
 Var str_cpf: String;
begin

  IF (dbeCNPJ.Text = '   .   .   -  ') or (dbeCNPJ.Text = '  .   .   /    -  ') then
    CheckBox1.SetFocus
  else
  begin
  inherited;
  if not cds_cliTIPOFIRMA.IsNull then
  begin
    if DBRadioGroup1.ItemIndex = 0 then
    begin
      str_cpf := copy(cds_cliCNPJ.AsString,0,3)+copy(cds_cliCNPJ.AsString,5,3)+
         copy(cds_cliCNPJ.AsString,9,3)+copy(cds_cliCNPJ.AsString,13,2);
      if cpf(str_cpf) = False then
      begin
        MessageDlg('CPF Inválido !', mtWarning,[mbOk], 0);
        dbeCNPJ.SetFocus;
        exit;
      end;
    end;
    if DBRadioGroup1.ItemIndex = 1 then
    begin
      str_cpf := copy(cds_cliCNPJ.AsString,0,2)+copy(cds_cliCNPJ.AsString,4,3)+
        copy(cds_cliCNPJ.AsString,8,3)+copy(cds_cliCNPJ.AsString,12,4)
        +copy(cds_cliCNPJ.AsString,17,2);
      if cgc(str_cpf) = False then
      begin
        MessageDlg('C.N.P.J. Inválido !', mtWarning,[mbOk], 0);
        dbeCNPJ.SetFocus;
        exit;
      end;
    end;
  end;
 end;

end;

function TfClienteCadastro.cgc(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  n10:=StrToInt(num[10]);
  n11:=StrToInt(num[11]);
  n12:=StrToInt(num[12]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];
  if calculado=digitado then
    cgc:=true
    else
    cgc:=false;
  end;
//*****************************************************************************

function TfClienteCadastro.cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[10]+num[11];
if calculado=digitado then
  cpf:=true
  else
  cpf:=false;
end;

procedure TfClienteCadastro.SpeedButton3Click(Sender: TObject);
begin
  inherited;
   fEstado:=TfEstado.Create(Application);
   try
     fEstado.showmodal;
   finally
    fEstado.Free;
   end;
end;

procedure TfClienteCadastro.DtSrcEStateChange(Sender: TObject);
begin
  inherited;
  SpeedButton4.Enabled:=DtSrcE.State in [dsBrowse,dsInactive];
  SpeedButton5.Enabled:=DtSrcE.State in [dsBrowse];

  if (DtSrcE.State in [dsEdit,dsInsert]) then
    cds_cli.Edit;

end;

procedure TfClienteCadastro.btnExcluirClick(Sender: TObject);
begin
 if ((PageControl1.ActivePage = TabSheet1) or (PageControl1.ActivePage = TabInternet)) then
 begin
    inherited;
    dm.sqlsisAdimin.ExecuteDirect('delete from enderecocliente where codcliente='+
    intToStr(cds_cliCODCLIENTE.asInteger));
 end;
end;

procedure TfClienteCadastro.cdsEnderecoCliNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEnderecoCliCODCLIENTE.AsInteger := 0;
  cdsEnderecoCliTIPOEND.AsInteger := rgTipoEndereco.ItemIndex;
end;

procedure TfClienteCadastro.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var
  BtnName: string;
  begin
  case Button of
    nbFirst  : rgTipoEndereco.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    nbPrior  : rgTipoEndereco.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    nbNext   : rgTipoEndereco.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    nbLast   : rgTipoEndereco.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
  end;
end;

procedure TfClienteCadastro.FormShow(Sender: TObject);
var Pos: Integer;
begin
  PageControl1.ActivePage := TabSheet1;
  if ((varform <> 'consultaescola') and (varform <> 'consultapedagogico')) then
  if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'SAUDE')) then
  if (dm.var_teste = 'consulta') then
  begin
    if (cds_cli.Active) then
      cds_cli.Close;
    cds_cli.Params[0].Clear;
    cds_cli.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
    cds_cli.Open;
    if (not cds_cli.IsEmpty) then
    begin
      // Busca o Plano e o Fornecedor
      if (cds_cliCOD_FAIXA.AsInteger > 0) then
      begin
        if not cds_faixa.Active then
          cds_faixa.Open;
        cds_faixa.Locate('CODFAIXA', cds_cliCOD_FAIXA.AsInteger,[loCaseInsensitive]);
        lblPlano.Caption := cds_faixaDESCRICAO.AsString;
      end;
      if (cds_cliCODRESPONSAVEL.AsInteger > 0) then
      begin
        dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
        dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
        dm.scds_forn_proc.Params.ParamByName('pCodFornecedor').AsInteger := cds_cliCODRESPONSAVEL.AsInteger;
        dm.scds_forn_proc.Open;
        lblFornecedor.Caption := dm.scds_forn_procNOMEFORNECEDOR.AsString;
        dm.scds_forn_proc.Close;
      end;
    end;

    if (cds_cliCOD_FAIXA.AsInteger > 0) then
    begin
      if (Not cds_faixa.Active) then
        cds_faixa.Open;

        if (cds_faixa.Locate('CODFAIXA', cds_cliCOD_FAIXA.AsInteger,[loCaseInsensitive])) then
          lblPlano.Caption := cds_faixaDESCRICAO.AsString
    end;

    if cdsEnderecoCli.Active then
       cdsEnderecoCli.Close;
       cdsEnderecoCli.Params[0].Clear;
       cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsEnderecoCli.Open;
    if (not sqlPais.Active) then
      sqlPais.Open;
    if (sqlPais.Locate('PAIS', cdsEnderecoCliPAIS.asString, [loCaseInsensitive])) then
       cbPais.ItemIndex := sqlPais.RecNo-1;
  end;

  if ((varform = 'consultaescola') or (varform = 'consultapedagogico')) then
  begin
    if (cds_cli.Active) then
      cds_cli.Close;
    cds_cli.Params[0].Clear;
    cds_cli.Params[0].AsInteger := codcli; //fListaCliEscola.cdsCODCLIENTE.AsInteger;
    cds_cli.Open;
    if cdsEnderecoCli.Active then
       cdsEnderecoCli.Close;
       cdsEnderecoCli.Params[0].Clear;
       cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsEnderecoCli.Open;
  end;
    if (Not cds_faixa.Active) then
       cds_faixa.Open;

    if (cds_faixa.Locate('CODFAIXA', cds_cliCOD_FAIXA.AsInteger,[loCaseInsensitive])) then
      ComboBox1.Text := cds_faixaDESCRICAO.AsString
    else
      ComboBox1.Text := '';

    if (not cdsRegiao.Active) then
      cdsRegiao.Open;

    if (not cdsTFiscal.Active) then
      cdsTFiscal.Open;

    if (cdsLocate.Active) then
      cdsLocate.Close;
    cdsLocate.Open;
    if (cdsConvenio.Active) then
      cdsConvenio.Close;
    cdsConvenio.Open;
  if (dm.moduloUsado = 'ACADEMIA') then
  begin
    JvDBComboBox1.Items.Clear;
    while not cdsConvenio.Eof do
    begin
      if (cdsConvenio.Fields[1].AsString <> 'PARENTE') then
        JvDBComboBox1.Items.Add(cdsConvenio.Fields[1].AsString);
        JvDBComboBox1.Values.Add(cdsConvenio.Fields[1].AsString);
      cdsConvenio.Next;
    end;
    JvDBComboBox2.Items.Clear;
    if (not ClientDataSet1.Active) then
      ClientDataSet1.Open;
    while not ClientDataSet1.Eof do
    begin
      JvDBComboBox2.Items.Add(ClientDataSet1.Fields[0].AsString);
      ClientDataSet1.Next;
    end;

    cbTurma.Items.Clear;
    if (cdsModalidade.Active) then
      cdsModalidade.Close;
    cdsModalidade.Open;

    while not cdsModalidade.Eof do
    begin
      cbTurma.Items.Add(cdsModalidade.Fields[1].AsString);
      cdsModalidade.Next;
    end;
    if (cds_faixa.Active) then
       cds_faixa.Close;
    cds_faixa.Open;
    ComboBox1.Items.Clear;
    // populo a combobox
    cds_faixa.First;
    while not cds_faixa.Eof do
    begin
      ComboBox1.Items.Add(cds_faixaDESCRICAO.AsString);
      cds_faixa.Next;
    end;


  end;
  if (cds_faixa.Active) then
    cds_faixa.Close;
  cds_faixa.Open;
  CbPlano.Items.Clear;
  // populo a combobox
  cds_faixa.First;
  while not cds_faixa.Eof do
  begin
    cbPlano.Items.Add(cds_faixaDESCRICAO.AsString);
    cds_faixa.Next;
  end;

  // Usado na ABA Administrativo para selecionar o plano.

  if (not cTranportadora.Active) then
      cTranportadora.Open;
  if (FormExiste(fNF) = True) then
     btnIncluir.Click;


  if (cds_cli.Active) then
  begin
    if cdsEnderecoCli.Active then
      cdsEnderecoCli.Close;
    cdsEnderecoCli.Params[0].Clear;
    cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsEnderecoCli.Open;
    if (cdsEnderecoCliTIPOEND.AsInteger = 0) then
    begin
      rgTipoEndereco.ItemIndex := 0;
    end
    else begin
      if (cdsEnderecoCliTIPOEND.AsInteger > 0) then
        cdsEnderecoCli.Next;
      if (cdsEnderecoCliTIPOEND.AsInteger > 0) then
        cdsEnderecoCli.Next;

      rgTipoEndereco.ItemIndex := cdsEnderecoCliTIPOEND.AsInteger;
    end;
    if (cdsEnderecoCliPAIS.AsString <> '') then
    begin
      if (not sqlPais.Active) then
        sqlPais.Open;
      if (sqlPais.Locate('PAIS', cdsEnderecoCliPAIS.asString, [loCaseInsensitive])) then
        cbPais.ItemIndex := sqlPais.RecNo-1;
    end;
  end;
  if (cds_cliCODCLIENTE.AsInteger = 0) then
  begin
    // Cliente do Sistema então vá para incluir
    btnIncluir.Click;
  end;
  DBEdit63Exit(Sender);
end;

procedure TfClienteCadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (cds_cli.State in [dsBrowse]) then
  begin
    cds_cli.Edit;
    cds_cliCNPJ.Clear;
    if DBRadioGroup1.ItemIndex=0 then
    begin
      cds_cliCNPJ.EditMask := '000.000.000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 0;
    end
    else
    begin
      cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 1;
    end;
    btnGravar.SetFocus;
  end;

  if (cds_cli.State in [dsEdit]) then
  begin
    cds_cliCNPJ.Clear;
    if DBRadioGroup1.ItemIndex=0 then
    begin
      cds_cliCNPJ.EditMask := '000.000.000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 0;
    end
    else
    begin
      cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
      cds_cliTIPOFIRMA.AsInteger := 1;
    end;
    btnGravar.SetFocus;
  end;

end;

procedure TfClienteCadastro.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not DtSrcE.DataSet.Active then
     DtSrcE.DataSet.open;
  DtSrcE.DataSet.Append;
  DBEdit10.SetFocus;
end;

procedure TfClienteCadastro.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     if proc_end.Active then
        proc_end.Close;
     proc_end.Params[0].AsInteger := cds_cliCODCLIENTE.AsInteger;
     proc_end.Open;
     if (proc_endCOUNT.AsInteger = 1) then
     begin
       MessageDlg('Não é possível excluir esse endereço, você pode alterá-lo.. ', mtWarning, [mbOK], 0);
       exit;
     end;
     if (cdsEnderecoCliTIPOEND.AsInteger = 0)  then
     begin
       MessageDlg('Não é possível excluir o endereço principal.', mtWarning, [mbOK], 0);
       exit;
     end;
     DtSrcE.DataSet.Delete;
     (DtSrcE.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfClienteCadastro.BitBtn4Click(Sender: TObject);
begin
  inherited;
  fVisitas := TfVisitas.Create(Application);
  id_cliente := cds_cliCODCLIENTE.AsInteger;
  try
    fVisitas.Label1.Caption := cds_cliNOMECLIENTE.AsString;
    fVisitas.Label2.Caption := cds_cliNOMECLIENTE.AsString;
    fVisitas.ShowModal;
  finally
    id_cliente := 0;
    fVisitas.Free;
  end;
end;

procedure TfClienteCadastro.PageControl1Change(Sender: TObject);
begin
  inherited;
  if ((PageControl1.ActivePage = TabSheet1) or (PageControl1.ActivePage = TabInternet))then
     MMJPanel1.Align := alBottom
  else
     MMJPanel1.Align := alNone;
end;

procedure TfClienteCadastro.btnIncluir_repClick(Sender: TObject);
begin
  if (not dm.cds_repcli.Active) then
     dm.cds_repcli.Open;
  dm.cds_repcli.Append;
  DBEdit35.SetFocus;
end;

procedure TfClienteCadastro.btnGravar_repClick(Sender: TObject);
begin
    if dm.cds_repcli.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI_REP, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      dm.cds_repcliCOD_REPRCLI.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      dm.cds_repcliCOD_CLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
    end;
    dm.cds_repcli.ApplyUpdates(0);
end;

procedure TfClienteCadastro.btnexcluir_repClick(Sender: TObject);
begin
  inherited;
  if Excluir = 'N' then Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrcRepr.DataSet.Delete;
     (DtSrcRepr.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfClienteCadastro.btnCancelarClick(Sender: TObject);
begin
 if ((PageControl1.ActivePage = TabSheet1) or (PageControl1.ActivePage = TabInternet)) then
 begin
   if Cancelar = 'N' then Exit;
     inherited;
 end;
 if (PageControl1.ActivePage = TabRepresentante) then
   btncancelar_rep.Click;
end;

procedure TfClienteCadastro.DtSrcReprStateChange(Sender: TObject);
var icomp: integer;
begin
 if DtSrc.DataSet.State in [dsInactive] then
    Exit;
 if DtSrc.DataSet.State in [dsInsert, dsEdit] then
    btnGravar.Click;

 if Incluir = 'S' then
   btnIncluir_rep.Enabled:=DtSrcRepr.State in [dsBrowse,dsInactive]
 else
   btnIncluir_rep.Enabled:= False;

 if Alterar = 'S' then
   btnGravar_rep.Enabled:=DtSrcRepr.State in [dsInsert,dsEdit]
 else
   btnGravar_rep.Enabled:=False;

 if Cancelar = 'S' then
   btncancelar_rep.Enabled:=DtSrcRepr.State in [dsInsert,dsEdit]
 else
   btncancelar_rep.Enabled:=false;

 if Excluir = 'S' then
   btnexcluir_rep.Enabled:=DtSrcRepr.State in [dsBrowse]
 else
   btnexcluir_rep.Enabled:=false;

 btnsair_rep.Enabled:=DtSrcRepr.State in [dsBrowse,dsInactive];

 for icomp:=0 to ComponentCount - 1 do
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrcRepr.State in [dsInsert,dsEdit, dsBrowse];

  if DtSrcRepr.State in [dsInsert, dsEdit] then
  begin
    btnIncluir_rep.Visible := False;
    btnexcluir_rep.Visible := False;
    btnGravar_rep.Visible := True;
    btncancelar_rep.Visible := True;
  end;

  if DtSrcRepr.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir_rep.Visible := True;
    btnexcluir_rep.Visible := True;
    btnGravar_rep.Visible := False;
    btncancelar_rep.Visible := False;
  end;
end;

procedure TfClienteCadastro.btncancelar_repClick(Sender: TObject);
begin
 if Cancelar = 'N' then Exit;
    DtSrcRepr.DataSet.Cancel;

end;

procedure TfClienteCadastro.ComboBox1Change(Sender: TObject);
var faixa : integer;
begin
  inherited;

  if not cds_faixa.Active then
    cds_faixa.Open;
  cds_faixa.Locate('DESCRICAO', ComboBox2.Text,[loCaseInsensitive]);
  faixa := cds_faixaCODFAIXA.AsInteger;
  if cds_cliCOD_FAIXA.AsInteger <> faixa then
  begin
     cds_cli.Edit;
     cds_cliCOD_FAIXA.AsInteger := faixa;
     //cds_cliLIMITECREDITO.AsFloat := cds_faixaVALOR_PLANO.AsFloat;
  end;
end;

procedure TfClienteCadastro.Ficha1Click(Sender: TObject);
begin
  inherited;
  if (cds_cli.State in [dsBrowse]) then
  begin
    VCLReport1.Filename := str_relatorio + 'fichacliente.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('COD').Value := cds_cliCODCLIENTE.AsInteger;
    VCLReport1.Execute;
  end;
end;

procedure TfClienteCadastro.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  fRegiaoCadastro := TfRegiaoCadastro.Create(Application);
  try
    fRegiaoCadastro.tipoRegiao := 'regiao';
    fRegiaoCadastro.ShowModal;
  finally
    fRegiaoCadastro.Free;
  end;
  if (cdsRegiao .Active) then
      cdsRegiao.Close;
  cdsRegiao.Open;
end;

procedure TfClienteCadastro.DBRadioGroup2Click(Sender: TObject);
begin
  //inherited;
  {if (cdsEnderecoCli.State in [dsInsert]) then
    exit;
  if (not cdsEnderecoCli.Active) then
  begin
    cdsEnderecoCli.Params.ParamByName('CODCLIENTE').AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsEnderecoCli.Open;
  end;

  if (not cdsEnderecoCli.Locate('TIPOEND', DBRadioGroup2.ItemIndex, [loPartialKey])) then
    cdsEnderecoCli.Append;}
end;

procedure TfClienteCadastro.TabInternetShow(Sender: TObject);
begin
  inherited;
  btnProcurar.Visible := false;
end;

procedure TfClienteCadastro.TabSheet1Show(Sender: TObject);
begin
  inherited;
  if(btnProcurar.Visible = False) then
  btnProcurar.Visible := True;
end;

procedure TfClienteCadastro.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  //inherited;
  if (key = #13) then
  begin
    if (cdsLocate.Locate('NOMECLIENTE', DBEdit2.Text ,[loCaseInsensitive])) then
      if(MessageDlg('Nome já Cadastrado'+#13+#10+'Deseja Continuar', mtWarning, [mbYes, mbNo ], 0) = mrno) then
      begin
        btnCancelar.Click;
        exit;
      end;
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfClienteCadastro.BitBtn5Click(Sender: TObject);
begin
//  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  cds_cliDATANASC.Text := '';
end;

procedure TfClienteCadastro.BitBtn6Click(Sender: TObject);
begin
  //inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  cds_cliDATANASC.Text := '';
  cds_cliDATA_MATRICULA.Text := '';
end;

procedure TfClienteCadastro.BitBtn7Click(Sender: TObject);
begin
//  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  cds_cliDATANASC.Text := '';
  cds_cliDATARESC.Text := '';
end;

procedure TfClienteCadastro.BitBtn8Click(Sender: TObject);
begin
  inherited;
  fRegiaoCadastro := TfRegiaoCadastro.Create(Application);
  fRegiaoCadastro.tipoRegiao := 'CONVENIO';
  try
    fRegiaoCadastro.Label1.Caption := 'Convênio';
    fRegiaoCadastro.Label10.Caption := 'Convênio';
    fRegiaoCadastro.Label2.Caption := 'Desconto';
    fRegiaoCadastro.ShowModal;
  finally
    fRegiaoCadastro.Free;
  end;

  JvDBComboBox1.Items.Clear;
  if (cdsConvenio.Active) then
    cdsConvenio.Close;
  cdsConvenio.Open;
  while not cdsConvenio.Eof do
  begin
    JvDBComboBox1.Items.Add(cdsConvenio.Fields[0].AsString);
    cdsConvenio.Next;
  end;


end;

procedure TfClienteCadastro.SpeedButton7Click(Sender: TObject);
var t : TUtils;
    v : double;
begin
  if (JvDBComboBox2.Text = '') then
  begin
    MessageDlg('Informe o Parente Cadastrado.', mtWarning, [mbOK], 0);
    JvDBComboBox2.SetFocus;
    Exit;
  end
  else begin
    if (not cdsParente.Active) then
      cdsParente.Open;
    if (cdsParente.State in [dsBrowse, dsInactive]) then
      cdsParente.Append;
    t := TUTils.Create;
    cdsParenteCODCLIDEPEN.AsInteger := StrToInt(t.buscaChave('GEN_DEP'));
    t.Destroy;
    if (not clientDataSet1.Active) then
      ClientDataSet1.Open;
    ClientDataSet1.Locate('NOMECLIENTE', JvDBComboBox2.Text, [loCaseInsensitive]);
    cdsParenteCODCLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsParenteCODDPEC.AsInteger := ClientDataSet1.Fields[1].AsInteger;
    cdsParenteNOMEDEPENDENTE.AsString := ClientDataSet1.Fields[0].AsString;
    cdsParente.ApplyUpdates(0);
    if (cdsParente.Active) then
      cdsParente.Close;
    cdsParente.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsParente.Open;
    CalculaDesconto;
  end;
  JvDBComboBox2.ItemIndex := -1;
end;

procedure TfClienteCadastro.JvDBComboBox1Exit(Sender: TObject);
{var desc: double;
    codConvenio: integer;}
begin
  inherited;
{  try
    codConvenio := cdsConvenioCODDADOS.AsInteger;
    desc := StrToFloat(cdsConvenioOUTROS.asString);
    // Verifica se tem desconto por Parentesco
    if (cdsParente.Active) then
      cdsParente.Close;
    cdsParente.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsParente.Open;
    if (not cdsConvenio.Active) then
      cdsConvenio.Open;
    cdsConvenio.Locate('DESCRICAO', 'PARENTE',[loCaseInsensitive]);
    cds_cli.Edit;
    cds_cliCODINCLUCANC.AsInteger := codConvenio;
    cds_cliDESCONTO.AsFloat := desc +
      (cdsParente.RecordCount * StrToFloat(cdsConvenioOUTROS.asString));
    btnGravar.Click;
  except
    MessageDlg('Desconto digitado incorretamente.', mtError, [mbOK], 0);
  end;}
  if (JvDBComboBox1.Text <> '') then
  begin
    cds_cli.Edit;
    cdsConvenio.Locate('DESCRICAO', jvDbComboBox1.Text,[loCaseInsensitive]);
    cds_cliCODINCLUCANC.AsInteger := cdsConvenioCODDADOS.AsInteger;
    cds_cliMARCA.AsString := JvDBComboBox1.Text;
    cds_cliDESCONTO.AsFloat := StrToFloat(cdsConvenioOUTROS.asString);
    btnGravar.Click;
  end;
  CalculaDesconto;
end;

procedure TfClienteCadastro.DBRadioGroup4Click(Sender: TObject);
begin
  inherited;
  if (DBRadioGroup4.ItemIndex = 1) then
  begin
    jvDBComboBox1.Text := '';
    cds_cli.Edit;
    cds_cliCODINCLUCANC.Clear;
    cds_cliMARCA.AsString := JvDBComboBox1.Text;
    btnGravar.Click;
    CalculaDesconto;
    JvDBComboBox1.Enabled := False;
    BitBtn8.Enabled := False;
  end
  else begin
    JvDBComboBox1.Enabled := True;
    BitBtn8.Enabled := True;
  end;
  if (cds_cli.State in [dsBrowse, dsInactive]) then
    cds_cli.Edit;
  cds_cliSITUACAOESCOLAR.AsString := IntToStr(DBRadioGroup4.ItemIndex);
end;

procedure TfClienteCadastro.CalculaDesconto;
var desc, parente: double;
    codConvenio: integer;
begin
  try
    if (not cdsConvenio.Active) then
      cdsConvenio.Open;
    if (cdsConvenio.Locate('CODDADOS', cds_cliCODINCLUCANC.AsInteger,[loCaseInsensitive])) then
    begin
      codConvenio := cdsConvenioCODDADOS.AsInteger;
      desc := StrToFloat(cdsConvenioOUTROS.asString);
    end else
    begin
      codConvenio := 0;
      desc := 0;
    end;
    // Verifica se tem desconto por Parentesco
    if (cdsParente.Active) then
      cdsParente.Close;
    cdsParente.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
    cdsParente.Open;
    {if (not cdsConvenio.Active) then
      cdsConvenio.Open;
    cdsConvenio.Locate('DESCRICAO', 'PARENTE',[loCaseInsensitive]);}
    cds_cli.Edit;
    //cds_cliCODINCLUCANC.AsInteger := codConvenio;
    //cds_cliMARCA.AsString := JvDBComboBox1.Text;
    parente := cdsParente.RecordCount;

    // Ate 2 parente 5 % desconto , 3 ou mais 10 %
    if ((parente > 0) and (parente < 2)) then
      parente := 5
    else if (parente > 1) then
      parente := 10;

    cds_cliDESCONTO.AsFloat := desc + parente;
    btnGravar.Click;
  except
    MessageDlg('Desconto digitado incorretamente.', mtError, [mbOK], 0);
  end;
end;

procedure TfClienteCadastro.BitBtn10Click(Sender: TObject);
begin
  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  cds_cliDTAALTERA.Text := '';

end;

procedure TfClienteCadastro.BitBtn17Click(Sender: TObject);
begin
  inherited;
  cdsParente.Delete;
  cdsParente.ApplyUpdates(0);
  CalculaDesconto;

end;

procedure TfClienteCadastro.SpeedButton9Click(Sender: TObject);
var t: TUtils;
begin
  if (cdsTurma.Active) then
    cdsTurma.Close;
  cdsTurma.Params.ParamByName('pCli').Clear;
  cdsTurma.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
  cdsTurma.Open;
  if (cdsTurma.Locate('NOMETURMA',cbTurma.Text, [loCaseInsensitive])) then
  begin
    MessageDlg('Aluno já registrado nesta turma.', mtInformation, [mbOK], 0);
    exit;
  end
  else begin
    if (cdsModalidade.Locate('NOMETURMA', cbTurma.Text, [loCaseInsensitive])) then
    begin
      cdsTurma.Append;
      t := TUtils.Create;
      cdsTurmaCODTURMAALUNO.AsInteger := StrToInt(t.buscaChave('GEN_ACADEMIATURMAALUNO'));
      cdsTurmaCODCLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
      cdsTurmaCODTURMA.AsInteger := cdsModalidadeCODTURMA.AsInteger;
      t.Destroy;
      cdsTurma.ApplyUpdates(0);
    end
    else begin
      MessageDlg('Turma não localizada.', mtError, [mbOK], 0);
      exit;
    end;
  end;
  if (cdsTurma.Active) then
    cdsTurma.Close;
  cdsTurma.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
  cdsTurma.Open;

end;

procedure TfClienteCadastro.BitBtn18Click(Sender: TObject);
begin
  inherited;
  dm.sqlsisAdimin.ExecuteDirect('DELETE FROM ACADEMIATURMAALUNO WHERE CODTURMA = ' +
    IntToStr(cdsTurmaCODTURMA.AsInteger) + ' and CODCLIENTE = ' +
    IntToStr(cdsTurmaCODCLIENTE.AsInteger));
  if (cdsTurma.Active) then
    cdsTurma.Close;
  cdsTurma.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
  cdsTurma.Open;
end;

function TfClienteCadastro.FormExiste(aberto: Tform): Boolean;
var
  I:Integer;
begin
    FormExiste := false;
    for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] = aberto then
    begin
    FormExiste := true;
    Break;
    end
end;

procedure TfClienteCadastro.BitBtn19Click(Sender: TObject);
var dia, mes, ano : word;
  hoje : TDateTime;
  valor: double;
begin
  inherited;
  hoje := Now;
  DecodeDate(hoje, ano,mes, dia);

  if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
  dm.cds_parametro.Params.ParamByName('pPARAM').AsString := 'CONTASRECEITAS';
  dm.cds_parametro.Open;

  // Abre a tela para inserir recceita
  fcrTituloInclui.btnIncluir.Visible := True;
  fcrTituloInclui.origem := 'ACADEMIA';
  fcrTituloInclui.btnIncluir.Click;
  dm.cds_crEMISSAO.AsDateTime := Today;
  Try
    if (cds_cliPRAZORECEBIMENTO.AsInteger = 0) then
      dm.cds_crDATAVENCIMENTO.AsDateTime := EncodeDate(ano, mes, 5)
    else
      dm.cds_crDATAVENCIMENTO.AsDateTime := EncodeDate(ano, mes, cds_cliPRAZORECEBIMENTO.AsInteger);
  except
    MessageDlg('Data de Vencimento precisa ser informada.', mtError, [mbOK], 0);
    fcrTituloInclui.btnCancelar.Click;
    exit;
  end;
  dm.cds_crDATABAIXA.AsDateTime := Today;
  dm.cds_crDATARECEBIMENTO.AsDateTime := Today;
  dm.cds_crDATACONSOLIDA.AsDateTime := Today;
  fcrTituloInclui.edtcodred.Text := dm.cds_parametroD1.AsString;
  fcrTituloInclui.edtconta.Text := dm.cds_parametroD2.AsString;
  dm.cds_crCONTACREDITO.AsInteger := StrToInt(dm.cds_parametroDADOS.AsString);
  dm.cds_crCODCLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
  dm.cds_crNOMECLIENTE.AsString := cds_cliNOMECLIENTE.AsString;
  valor := cds_cliLIMITECREDITO.AsFloat * (1-(cds_cliDESCONTO.AsFloat/100));
  dm.cds_crVALOR_RESTO.AsFloat := valor;
  dm.cds_crVALOR_PRIM_VIA.AsFloat := valor;
  dm.cds_crVALORTITULO.AsFloat := valor;
  dm.cds_crVALORRECEBIDO.AsFloat := valor;
  dm.cds_crCAIXA.AsInteger := 33;
  dm.cds_crTITULO.AsString :=  IntToStr(cds_cliCODCLIENTE.AsInteger) +
    '-' + FormatDateTime('mmyyyy', dm.cds_crDATAVENCIMENTO.AsDateTime);
  fcrtituloInclui.ComboBox1.ItemIndex := 1;
  fCrTituloInclui.ShowModal;

  if (cdsFin.Active) then
    cdsFin.Close;
  cdsFin.Params.ParamByName('pCliente').AsInteger := cds_cliCODCLIENTE.AsInteger;
  cdsFin.Open;

end;

procedure TfClienteCadastro.Button1Click(Sender: TObject);
begin
  inherited;
  if dm.cds_cr.Active then
    dm.cds_cr.Close;
  dm.cds_cr.Params[0].AsInteger := cdsFinCODRECEBIMENTO.AsInteger;
  dm.cds_cr.Open;
  dm.cds_cr.Edit;

  if (sds.Active) then
   sds.Close;
  sds.Params[0].AsInteger := dm.cds_crCONTACREDITO.AsInteger;
  sds.Open;
  fcrTituloInclui.edtcodred.Text := sds.Fields[1].AsString;
  fcrTituloInclui.edtconta.Text := sds.Fields[2].AsString;
  if (sds.Active) then
   sds.Close;

  if (fcrTituloInclui.cds_cr.Active) then
    fcrTituloInclui.cds_cr.Close;
  fcrTituloInclui.cds_cr.Params[0].AsString := dm.cds_crTITULO.AsString;
  fcrTituloInclui.cds_cr.Open;

  fCrTituloInclui.ShowModal;

  if (cdsFin.Active) then
    cdsFin.Close;
  cdsFin.Params.ParamByName('pCliente').AsInteger := cds_cliCODCLIENTE.AsInteger;
  cdsFin.Open;

end;

procedure TfClienteCadastro.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if DBEdit13.Text='' then exit;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(DBEdit13.Text);
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      SpeedButton1.Click;
      exit;
    end;
    cds_cliNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end;
end;

function TfClienteCadastro.Verifica_Campos_Em_Branco: Boolean;
var cont : integer;
begin
  Result:=True; //assume que estão todos preenchidos
  for cont:= 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[cont].Required then
      if (DtSrc.DataSet.Fields[cont].IsNull)or
         (DtSrc.DataSet.Fields[cont].AsString='') then
      begin
        MessageDlg('Preencha o campo "'+DtSrc.DataSet.Fields[cont].DisplayLabel+'"',
                   mtWarning,[mbOk],0);
        Result:=False;
        Break;
      end;
end;

function TfClienteCadastro.Verifica_Campos_Em_BrancoEndereco: Boolean;
var cont : integer;
begin
  Result:=True; //assume que estão todos preenchidos
  for cont:= 0 to DtSrcE.DataSet.FieldCount - 1 do
    if DtSrcE.DataSet.Fields[cont].Required then
      if (DtSrcE.DataSet.Fields[cont].IsNull)or
         (DtSrcE.DataSet.Fields[cont].AsString='') then
      begin
        MessageDlg('Preencha o campo "'+DtSrcE.DataSet.Fields[cont].DisplayLabel+'"',
                   mtWarning,[mbOk],0);
        Result:=False;
        Break;
      end;

end;

procedure TfClienteCadastro.cds_cliReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);

end;

procedure TfClienteCadastro.cdsEnderecoCliReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);

end;

procedure TfClienteCadastro.BitBtn20Click(Sender: TObject);
var t: TUtils;
begin
  if (sqlTurmaGrupo.Active) then
    sqlTurmaGrupo.Close;
  sqlTurmaGrupo.SQL.Clear;
  sqlTurmaGrupo.SQL.Add('select CODTURMA, NOMETURMA from ACADEMIATURMA where grupoturma = ' +
     QuotedStr('HIDROGINASTICA'));
  sqlTurmaGrupo.Open;
  try
    t := TUtils.Create;
    while (not sqlTurmaGrupo.Eof) do
    begin
      if (cdsTurma.Active) then
        cdsTurma.Close;
      cdsTurma.Params.ParamByName('pCli').Clear;
      cdsTurma.Params.ParamByName('pCli').AsInteger := cds_cliCODCLIENTE.AsInteger;
      cdsTurma.Open;
      if (cdsTurma.Locate('NOMETURMA', sqlTurmaGrupo.Fields[1].AsString, [loCaseInsensitive])) then
      begin
        MessageDlg('Aluno já registrado nesta turma.', mtInformation, [mbOK], 0);
        exit;
      end
      else begin
        cdsTurma.Append;
        cdsTurmaCODTURMAALUNO.AsInteger := StrToInt(t.buscaChave('GEN_ACADEMIATURMAALUNO'));
        cdsTurmaCODCLIENTE.AsInteger := cds_cliCODCLIENTE.AsInteger;
        cdsTurmaCODTURMA.AsInteger := sqlTurmaGrupo.Fields[0].AsInteger;
        cdsTurma.ApplyUpdates(0);
      end;
      sqlTurmaGrupo.next;
    end;
  except
    t.Destroy;
  end;
end;

procedure TfClienteCadastro.BitBtn21Click(Sender: TObject);
begin
  inherited;
  fProdFornecedor := TfProdFornecedor.Create(Application);
  try
    fProdFornecedor.codFornecedor := cds_cliCODCLIENTE.AsInteger;
    fProdFornecedor.listatipooper := 1 ;
    fProdFornecedor.ShowModal;
  finally
    fProdFornecedor.free;
  end;
end;

procedure TfClienteCadastro.BitBtn22Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_LOCALIDADE';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       cdsEnderecoCli.Edit;
     cdsEnderecoCliCIDADE.AsString := procIBGENM_MUNICIPIO.AsString;
     cdsEnderecoCliCD_IBGE.AsString := procIBGECD_IBGE.AsString;
     cdsEnderecoCliUF.AsString := procIBGECD_UF.AsString;
   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;
end;

procedure TfClienteCadastro.btnSairClick(Sender: TObject);
begin
 // inherited;
  Close;
end;

procedure TfClienteCadastro.btnClienteProcuraClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  fProcurar.RadioGroup2.Visible := True;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
   fProcurar.ShowModal;
   if dtSrc.State=dsBrowse then
     cds_cli.Edit;
   cds_cliCODRESPONSAVEL.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
   lblFornecedor.Caption := dm.scds_forn_procNOMEFORNECEDOR.AsString;
   finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfClienteCadastro.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  fBanco := TfBanco.Create(Application);
  try
    fBanco.ShowModal;
    cds_cliCODBANCO.AsInteger := codbanco;
    lblBanco.Caption          := nomeBanco;
  finally
    fBanco.Free;
  end;

end;

procedure TfClienteCadastro.cbPlanoChange(Sender: TObject);
begin
  inherited;
  if (cds_cli.State in [dsBrowse]) then
    cds_cli.Edit;

  if not cds_faixa.Active then
    cds_faixa.Open;
  cds_faixa.Locate('DESCRICAO', cbPlano.Text,[loCaseInsensitive]);

  cds_cliCOD_FAIXA.AsInteger := cds_faixaCODFAIXA.AsInteger;
end;

procedure TfClienteCadastro.cbPaisChange(Sender: TObject);
begin
  inherited;
  if (cds_cli.State in [dsBrowse]) then
    cds_cli.Edit;
  if(cdsEnderecoCli.State in [dsBrowse]) then
    cdsEnderecoCli.Edit;
  cdsEnderecoCliPAIS.AsString := cbPais.Text;
end;



function TfClienteCadastro.ValidarISUF: boolean;
var iFator, iTamanho, iTotal, iCont, iDigito, i : integer;
    aDigito : array[1..9] of integer;
begin
   // encontramos o tamanho do número do suframa ...
   Result   := True;
   iTamanho := length(trim(cds_cliSUFRAMA.AsString));
   iFator   := 9;
   iCont    := 1;

   if trim(cds_cliSUFRAMA.AsString) = '' then
     exit;

   // se o tamanho ultrapassar de 9, deveremos interromper o
   if iTamanho <> 9 then
   begin
      Result := False;
      exit;
   end;

   // cálculamos a somatória dos dígitos do número do suframa ..
   iTotal := 0;

   for i := ( iTamanho - 2 + iCont ) downto 1 do
   begin
      aDigito[i] := StrToInt(Copy(cds_cliSUFRAMA.AsString,i,1)) * iFator;
      iTotal := iTotal + aDigito[i];
      iFator := iFator - 1;
   end;

   // encontramos o dígito verificador do número do suframa ...
   aDigito[iCont] := StrToInt(Copy(cds_cliSUFRAMA.AsString,iTamanho,1));
   iDigito := iTotal mod 11;

   if aDigito[iCont] <> iDigito then
     Result := False;
end;

procedure TfClienteCadastro.btnProcListaPrecoClick(Sender: TObject);
begin
  if not (DtSrc.State in [dsInactive]) then
  begin
    if (DtSrc.State in [dsBrowse]) then
      cds_cli.Edit;
    fListaVendaProc := TfListaVendaProc.Create(Application);
    try
      fListaVendaProc.ShowModal;
    finally
      if (cdsListaVenda.Active ) then
        cdsListaVenda.Close;
      cdsListaVenda.Params[0].AsInteger := fListaVendaProc.codlista;
      cdsListaVenda.Open;
    end;

    cds_cliNUMERO.AsInteger := cdsListaVendaCODLISTA.AsInteger;
    edtListaPreco.Text := cdsListaVendaNOMELISTA.AsString;

  end;
end;

procedure TfClienteCadastro.DBEdit63Exit(Sender: TObject);
begin
  if (cdsListaVenda.Active ) then
    cdsListaVenda.Close;
  cdsListaVenda.Params[0].AsInteger := cds_cliNUMERO.AsInteger;
  cdsListaVenda.Open;

  edtListaPreco.Text := cdsListaVendaNOMELISTA.AsString;
end;

end.
