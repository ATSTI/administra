unit uAlunoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, DBCtrls, Mask,
  Grids, DBGrids, DBLocal, DBLocalS, ToolEdit, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdMessage;

type
  TfAlunoCadastro = class(TfPai_new)
    PagAluno: TPageControl;
    TabAluno: TTabSheet;
    DBEditCodigo: TDBEdit;
    LabelICodigo: TLabel;
    DBEditNome: TDBEdit;
    LabelNome: TLabel;
    DBComboBox4: TDBComboBox;
    Label79: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEditTurno: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit28: TDBEdit;
    Label40: TLabel;
    DBEdit29: TDBEdit;
    Label42: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label38: TLabel;
    DBComboBox2: TDBComboBox;
    Label9: TLabel;
    DBEditEndereco: TDBEdit;
    Label1: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    DBEdit33: TDBEdit;
    Label45: TLabel;
    DBEditClasses: TDBEdit;
    Label4: TLabel;
    DBEditCidade: TDBEdit;
    Label3: TLabel;
    DBEdit34: TDBEdit;
    Label46: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label34: TLabel;
    DBEdit41: TDBEdit;
    Label41: TLabel;
    DBTextDestaque1: TDBText;
    DBTextDestaque: TDBText;
    TabFiliacao: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label47: TLabel;
    Label35: TLabel;
    Label13: TLabel;
    DBEditFone: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit26: TDBEdit;
    DBEditEmail: TDBEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    Label32: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit24: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit27: TDBEdit;
    tbResponsavel: TTabSheet;
    Label58: TLabel;
    DBEdit45: TDBEdit;
    Label59: TLabel;
    DBEdit46: TDBEdit;
    Label60: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label61: TLabel;
    DBEdit49: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label64: TLabel;
    DBEdit52: TDBEdit;
    Label65: TLabel;
    DBEdit53: TDBEdit;
    Label66: TLabel;
    DBEdit54: TDBEdit;
    Label67: TLabel;
    DBEdit55: TDBEdit;
    Label68: TLabel;
    DBEdit56: TDBEdit;
    Label69: TLabel;
    DBEdit57: TDBEdit;
    Label70: TLabel;
    DBEdit58: TDBEdit;
    Label71: TLabel;
    DBEdit59: TDBEdit;
    Label72: TLabel;
    TabPedagogico: TTabSheet;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit42: TDBEdit;
    Label52: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label53: TLabel;
    DBEdit43: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEditNumero: TDBEdit;
    DBEdit44: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit61: TDBEdit;
    Label76: TLabel;
    DBEdit62: TDBEdit;
    Label78: TLabel;
    ComboBox2: TComboBox;
    Label88: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label112: TLabel;
    DBEdit32: TDBEdit;
    Label48: TLabel;
    DBEdit36: TDBEdit;
    Label49: TLabel;
    TabDadosAdicionais: TTabSheet;
    DBComboBox5: TDBComboBox;
    Label89: TLabel;
    DBEdit65: TDBEdit;
    Label90: TLabel;
    DBEdit66: TDBEdit;
    Label91: TLabel;
    DBEdit67: TDBEdit;
    Label92: TLabel;
    DBEdit68: TDBEdit;
    Label93: TLabel;
    DBEdit69: TDBEdit;
    Label94: TLabel;
    DBEdit70: TDBEdit;
    Label95: TLabel;
    GroupBox15: TGroupBox;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    GroupBox25: TGroupBox;
    Label110: TLabel;
    Label111: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    TabFicha1: TTabSheet;
    TabFicha2: TTabSheet;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox8: TGroupBox;
    Label97: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    DBEdit71: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox9: TGroupBox;
    Label96: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    DBEdit72: TDBEdit;
    GroupBox10: TGroupBox;
    Label98: TLabel;
    DBRadioGroup7: TDBRadioGroup;
    DBEdit73: TDBEdit;
    Label99: TLabel;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    Label100: TLabel;
    DBEdit76: TDBEdit;
    Label101: TLabel;
    GroupBox11: TGroupBox;
    Label102: TLabel;
    DBRadioGroup8: TDBRadioGroup;
    DBEdit77: TDBEdit;
    GroupBox12: TGroupBox;
    Label103: TLabel;
    DBRadioGroup9: TDBRadioGroup;
    DBEdit78: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit79: TDBEdit;
    GroupBox6: TGroupBox;
    DBRadioGroup10: TDBRadioGroup;
    GroupBox16: TGroupBox;
    DBEdit86: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit87: TDBEdit;
    DBRadioGroup11: TDBRadioGroup;
    GroupBox18: TGroupBox;
    DBEdit88: TDBEdit;
    DBRadioGroup12: TDBRadioGroup;
    GroupBox19: TGroupBox;
    DBEdit89: TDBEdit;
    DBRadioGroup13: TDBRadioGroup;
    GroupBox20: TGroupBox;
    DBEdit90: TDBEdit;
    DBRadioGroup14: TDBRadioGroup;
    GroupBox21: TGroupBox;
    DBEdit91: TDBEdit;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    GroupBox22: TGroupBox;
    DBEdit92: TDBEdit;
    DBRadioGroup17: TDBRadioGroup;
    GroupBox23: TGroupBox;
    DBEdit93: TDBEdit;
    TabObs: TTabSheet;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    TabAvisos: TTabSheet;
    tabOcorrencia: TTabSheet;
    DBEdit30: TDBEdit;
    Label44: TLabel;
    DBEdit31: TDBEdit;
    Label50: TLabel;
    sdsResponsavel: TSQLDataSet;
    dspResponsavel: TDataSetProvider;
    cdsResponsavel: TClientDataSet;
    MMJPanel3: TMMJPanel;
    BitBtn6: TBitBtn;
    cdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    cdsResponsavelRESPONSAVEL: TStringField;
    cdsResponsavelENDERECO: TStringField;
    cdsResponsavelBAIRRO: TStringField;
    cdsResponsavelCEP: TStringField;
    cdsResponsavelCIDADE: TStringField;
    cdsResponsavelUF: TStringField;
    cdsResponsavelTIPO_RESPONSAVEL: TStringField;
    cdsResponsavelCPF: TStringField;
    cdsResponsavelRG: TStringField;
    cdsResponsavelTELEFONE: TStringField;
    cdsResponsavelTELEFONE1: TStringField;
    cdsResponsavelEMAIL: TStringField;
    cdsResponsavelLOCALTRABALHO: TStringField;
    cdsResponsavelCAIXAPOSTAL: TStringField;
    cdsResponsavelTELEFONE_COMERCIAL: TStringField;
    sdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    sdsResponsavelRESPONSAVEL: TStringField;
    sdsResponsavelENDERECO: TStringField;
    sdsResponsavelBAIRRO: TStringField;
    sdsResponsavelCEP: TStringField;
    sdsResponsavelCIDADE: TStringField;
    sdsResponsavelUF: TStringField;
    sdsResponsavelTIPO_RESPONSAVEL: TStringField;
    sdsResponsavelCPF: TStringField;
    sdsResponsavelRG: TStringField;
    sdsResponsavelTELEFONE: TStringField;
    sdsResponsavelTELEFONE1: TStringField;
    sdsResponsavelEMAIL: TStringField;
    sdsResponsavelLOCALTRABALHO: TStringField;
    sdsResponsavelCAIXAPOSTAL: TStringField;
    sdsResponsavelTELEFONE_COMERCIAL: TStringField;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    sdsIrmaos: TSQLDataSet;
    dspIrmaos: TDataSetProvider;
    cdsIrmaos: TClientDataSet;
    DtSrcIrmaos: TDataSource;
    cdsIrmaosNOMECLIENTE: TStringField;
    cdsIrmaosRA: TStringField;
    cdsIrmaosSERIE: TStringField;
    sdsFicha: TSQLDataSet;
    dspFicha: TDataSetProvider;
    cdsFicha: TClientDataSet;
    cdsFichaID_FICHA: TIntegerField;
    cdsFichaRA: TStringField;
    cdsFichaD_MENTAL: TStringField;
    cdsFichaD_VISUAL: TStringField;
    cdsFichaD_AUDITIVA: TStringField;
    cdsFichaD_FISICA: TStringField;
    cdsFichaD_MULTIPLA: TStringField;
    cdsFichaSUPER_DOTADO: TStringField;
    cdsFichaCONDUTA_TIPICA: TStringField;
    cdsFichaOUTROS: TStringField;
    cdsFichaOUTROS_H: TMemoField;
    cdsFichaTEM_ACOMPANHANTE: TStringField;
    cdsFichaTIPO_ACOMPANHANTE: TStringField;
    cdsFichaCQUEMMORA: TStringField;
    cdsFichaNOME_OUTROS: TStringField;
    cdsFichaEMPRESA_OUTROS: TStringField;
    cdsFichaFONE_OUTROS: TStringField;
    cdsFichaFONE1_OUTROS: TStringField;
    cdsFichaFONE2_OUTROS: TStringField;
    cdsFichaRAMAL_OUTROS: TStringField;
    cdsFichaHORAS_ESTUDA: TIntegerField;
    cdsFichaPROFESSORES_PARTICULAR: TIntegerField;
    cdsFichaCANHOTO_DESTRO: TIntegerField;
    cdsFichaALERGICO: TStringField;
    cdsFichaTIPO_ALERGIA: TStringField;
    cdsFichaMEDICO_ALUNO: TIntegerField;
    cdsFichaTRATAMENTO_MEDICO: TIntegerField;
    cdsFichaTIPO_TRATAMENTO: TStringField;
    cdsFichaINGERINDO_MEDICACAO: TIntegerField;
    cdsFichaTIPO_MEDICACAO: TStringField;
    cdsFichaNOME_MEDICO: TStringField;
    cdsFichaFONE_MEDICO: TStringField;
    cdsFichaENDERECO_MEDICO: TStringField;
    cdsFichaPLANO_SAUDE: TIntegerField;
    cdsFichaQUAL_PLANO: TStringField;
    cdsFichaSER_MEDICADO_POR: TStringField;
    cdsFichaDOENCA_CONGENITA: TIntegerField;
    cdsFichaQUAL_DOENCA: TStringField;
    cdsFichaCONTRAIU_CAXUMBA: TStringField;
    cdsFichaCONTRAIU_SARAMPO: TStringField;
    cdsFichaCONTRAIU_RUBEOLA: TStringField;
    cdsFichaCONTRAIU_CATAPORA: TStringField;
    cdsFichaCONTRAIU_ESCARLATINA: TStringField;
    cdsFichaCONTRAIU_COQUELUCHE: TStringField;
    cdsFichaCONTRAIU_OUTRAS: TStringField;
    cdsFichaQUAIS_OUTRA: TStringField;
    cdsFichaNOME_AVISO: TStringField;
    cdsFichaENDERECO_AVISO: TStringField;
    cdsFichaPARENTESCO_AVISO: TStringField;
    cdsFichaFONE_AVISO: TStringField;
    cdsFichaHOSPITAL_AVISO: TStringField;
    cdsFichaTEM_HIPERTENCAO: TIntegerField;
    cdsFichaHIPERTENCAO: TStringField;
    cdsFichaE_EPILETICO: TIntegerField;
    cdsFichaEPILETICO: TStringField;
    cdsFichaE_HEMOFILICO: TIntegerField;
    cdsFichaHEMOFILICO: TStringField;
    cdsFichaE_DEFICIENTE_AUDITIVO: TIntegerField;
    cdsFichaDEFICIENTE_AUDITIVO: TStringField;
    cdsFichaE_DEFICIENTE_VISUAL: TIntegerField;
    cdsFichaDEFICIENTE_VISUAL: TStringField;
    cdsFichaE_DEFICIENTE_FISICO: TIntegerField;
    cdsFichaDEFICIENTE_FISICO: TStringField;
    cdsFichaE_DIABETICO: TIntegerField;
    cdsFichaDIABETICO: TStringField;
    cdsFichaUSA_INSULINA: TIntegerField;
    cdsFichaAUTORIZADO_DX_ESCOLA_SOZ: TIntegerField;
    cdsFichaOBSERVACOES: TMemoField;
    cdsFichaMOTIVO_MEDICAMENTO: TStringField;
    cdsFichaAPTO: TStringField;
    cdsFichaESPERAR_FORA_ESCOLA: TIntegerField;
    cdsFichaFONE_HOSPITAL: TStringField;
    cdsFichaNOME_RETIRA: TStringField;
    cdsFichaENDERECO_RETIRA: TStringField;
    cdsFichaPARENTESCO_RETIRA: TStringField;
    cdsFichaFONE_RETIRA: TStringField;
    cdsFichaPSICOLOGO: TStringField;
    cdsFichaFISIOTERAPIA: TStringField;
    cdsFichaMEDICO: TStringField;
    cdsFichaFONOAUDIOLOGO: TStringField;
    cdsFichaPSICOPEDAGOGO: TStringField;
    cdsFichaOUTRO_1: TStringField;
    cdsFichaNAO: TStringField;
    cdsFichaE_ASMATICO: TIntegerField;
    cdsFichaASMATICO: TStringField;
    sdsFichaID_FICHA: TIntegerField;
    sdsFichaRA: TStringField;
    sdsFichaD_MENTAL: TStringField;
    sdsFichaD_VISUAL: TStringField;
    sdsFichaD_AUDITIVA: TStringField;
    sdsFichaD_FISICA: TStringField;
    sdsFichaD_MULTIPLA: TStringField;
    sdsFichaSUPER_DOTADO: TStringField;
    sdsFichaCONDUTA_TIPICA: TStringField;
    sdsFichaOUTROS: TStringField;
    sdsFichaOUTROS_H: TMemoField;
    sdsFichaTEM_ACOMPANHANTE: TStringField;
    sdsFichaTIPO_ACOMPANHANTE: TStringField;
    sdsFichaCQUEMMORA: TStringField;
    sdsFichaNOME_OUTROS: TStringField;
    sdsFichaEMPRESA_OUTROS: TStringField;
    sdsFichaFONE_OUTROS: TStringField;
    sdsFichaFONE1_OUTROS: TStringField;
    sdsFichaFONE2_OUTROS: TStringField;
    sdsFichaRAMAL_OUTROS: TStringField;
    sdsFichaHORAS_ESTUDA: TIntegerField;
    sdsFichaPROFESSORES_PARTICULAR: TIntegerField;
    sdsFichaCANHOTO_DESTRO: TIntegerField;
    sdsFichaALERGICO: TStringField;
    sdsFichaTIPO_ALERGIA: TStringField;
    sdsFichaMEDICO_ALUNO: TIntegerField;
    sdsFichaTRATAMENTO_MEDICO: TIntegerField;
    sdsFichaTIPO_TRATAMENTO: TStringField;
    sdsFichaINGERINDO_MEDICACAO: TIntegerField;
    sdsFichaTIPO_MEDICACAO: TStringField;
    sdsFichaNOME_MEDICO: TStringField;
    sdsFichaFONE_MEDICO: TStringField;
    sdsFichaENDERECO_MEDICO: TStringField;
    sdsFichaPLANO_SAUDE: TIntegerField;
    sdsFichaQUAL_PLANO: TStringField;
    sdsFichaSER_MEDICADO_POR: TStringField;
    sdsFichaDOENCA_CONGENITA: TIntegerField;
    sdsFichaQUAL_DOENCA: TStringField;
    sdsFichaCONTRAIU_CAXUMBA: TStringField;
    sdsFichaCONTRAIU_SARAMPO: TStringField;
    sdsFichaCONTRAIU_RUBEOLA: TStringField;
    sdsFichaCONTRAIU_CATAPORA: TStringField;
    sdsFichaCONTRAIU_ESCARLATINA: TStringField;
    sdsFichaCONTRAIU_COQUELUCHE: TStringField;
    sdsFichaCONTRAIU_OUTRAS: TStringField;
    sdsFichaQUAIS_OUTRA: TStringField;
    sdsFichaNOME_AVISO: TStringField;
    sdsFichaENDERECO_AVISO: TStringField;
    sdsFichaPARENTESCO_AVISO: TStringField;
    sdsFichaFONE_AVISO: TStringField;
    sdsFichaHOSPITAL_AVISO: TStringField;
    sdsFichaTEM_HIPERTENCAO: TIntegerField;
    sdsFichaHIPERTENCAO: TStringField;
    sdsFichaE_EPILETICO: TIntegerField;
    sdsFichaEPILETICO: TStringField;
    sdsFichaE_HEMOFILICO: TIntegerField;
    sdsFichaHEMOFILICO: TStringField;
    sdsFichaE_DEFICIENTE_AUDITIVO: TIntegerField;
    sdsFichaDEFICIENTE_AUDITIVO: TStringField;
    sdsFichaE_DEFICIENTE_VISUAL: TIntegerField;
    sdsFichaDEFICIENTE_VISUAL: TStringField;
    sdsFichaE_DEFICIENTE_FISICO: TIntegerField;
    sdsFichaDEFICIENTE_FISICO: TStringField;
    sdsFichaE_DIABETICO: TIntegerField;
    sdsFichaDIABETICO: TStringField;
    sdsFichaUSA_INSULINA: TIntegerField;
    sdsFichaAUTORIZADO_DX_ESCOLA_SOZ: TIntegerField;
    sdsFichaOBSERVACOES: TMemoField;
    sdsFichaMOTIVO_MEDICAMENTO: TStringField;
    sdsFichaAPTO: TStringField;
    sdsFichaESPERAR_FORA_ESCOLA: TIntegerField;
    sdsFichaFONE_HOSPITAL: TStringField;
    sdsFichaNOME_RETIRA: TStringField;
    sdsFichaENDERECO_RETIRA: TStringField;
    sdsFichaPARENTESCO_RETIRA: TStringField;
    sdsFichaFONE_RETIRA: TStringField;
    sdsFichaPSICOLOGO: TStringField;
    sdsFichaFISIOTERAPIA: TStringField;
    sdsFichaMEDICO: TStringField;
    sdsFichaFONOAUDIOLOGO: TStringField;
    sdsFichaPSICOPEDAGOGO: TStringField;
    sdsFichaOUTRO_1: TStringField;
    sdsFichaNAO: TStringField;
    sdsFichaE_ASMATICO: TIntegerField;
    sdsFichaASMATICO: TStringField;
    DtSrcFicha: TDataSource;
    mmpFicha: TMMJPanel;
    btnIncuiFicha: TBitBtn;
    BitBtn10: TBitBtn;
    sdsEnderecoCli: TSQLDataSet;
    sdsEnderecoCliCODENDERECO: TIntegerField;
    sdsEnderecoCliCODCLIENTE: TIntegerField;
    sdsEnderecoCliLOGRADOURO: TStringField;
    sdsEnderecoCliBAIRRO: TStringField;
    sdsEnderecoCliCOMPLEMENTO: TStringField;
    sdsEnderecoCliCIDADE: TStringField;
    sdsEnderecoCliUF: TStringField;
    sdsEnderecoCliCEP: TStringField;
    sdsEnderecoCliTELEFONE: TStringField;
    sdsEnderecoCliTELEFONE1: TStringField;
    sdsEnderecoCliTELEFONE2: TStringField;
    sdsEnderecoCliFAX: TStringField;
    sdsEnderecoCliE_MAIL: TStringField;
    sdsEnderecoCliRAMAL: TStringField;
    sdsEnderecoCliTIPOEND: TSmallintField;
    sdsEnderecoCliDADOSADICIONAIS: TStringField;
    sdsEnderecoCliDDD: TStringField;
    sdsEnderecoCliDDD2: TStringField;
    sdsEnderecoCliDDD3: TStringField;
    sdsEnderecoCliDDD1: TStringField;
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
    cdsEnderecoCliTELEFONE: TStringField;
    cdsEnderecoCliTELEFONE1: TStringField;
    cdsEnderecoCliTELEFONE2: TStringField;
    cdsEnderecoCliFAX: TStringField;
    cdsEnderecoCliE_MAIL: TStringField;
    cdsEnderecoCliRAMAL: TStringField;
    cdsEnderecoCliTIPOEND: TSmallintField;
    cdsEnderecoCliDADOSADICIONAIS: TStringField;
    cdsEnderecoCliDDD: TStringField;
    cdsEnderecoCliDDD2: TStringField;
    cdsEnderecoCliDDD3: TStringField;
    cdsEnderecoCliDDD1: TStringField;
    DtSrcE: TDataSource;
    sds_estado: TSQLDataSet;
    dtOcorre: TDataSource;
    cdsOcorre: TClientDataSet;
    cdsOcorreCODOCORRENCIA: TIntegerField;
    cdsOcorreDATA: TDateField;
    cdsOcorreTIPO: TStringField;
    cdsOcorreRA: TStringField;
    cdsOcorreDESCRICAO: TMemoField;
    cdsOcorreANOLETIVO: TIntegerField;
    cdsOcorreASSUNTO: TStringField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODOCORRENCIA: TIntegerField;
    SQLDataSet1DATA: TDateField;
    SQLDataSet1TIPO: TStringField;
    SQLDataSet1RA: TStringField;
    SQLDataSet1DESCRICAO: TMemoField;
    SQLDataSet1ANOLETIVO: TIntegerField;
    SQLDataSet1ASSUNTO: TStringField;
    Label87: TLabel;
    Label43: TLabel;
    DBEdit20: TDBEdit;
    Label75: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit96: TDBEdit;
    Label86: TLabel;
    DBMemo1: TDBMemo;
    Label77: TLabel;
    DBNavigator1: TDBNavigator;
    sdsavisos: TSQLDataSet;
    dspavisos: TDataSetProvider;
    cdsavisos: TClientDataSet;
    cdsavisosCODAVISOS: TIntegerField;
    cdsavisosDESCRICAO: TMemoField;
    cdsavisosTIPO: TStringField;
    dtavisos: TDataSource;
    GroupBox7: TGroupBox;
    Label81: TLabel;
    Label85: TLabel;
    Label80: TLabel;
    DateEdit2: TDateEdit;
    ComboBox1: TComboBox;
    btn_copiar: TBitBtn;
    DBMemo3: TDBMemo;
    btnEnviar: TBitBtn;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    mmpOcorrencia: TMMJPanel;
    btnOcorreG: TBitBtn;
    btnOcorreI: TBitBtn;
    btnOcorreC: TBitBtn;
    btnOcorreE: TBitBtn;
    BitBtn9: TBitBtn;
    TableNomeEscola: TSQLDataSet;
    TableNomeEscolaEMPRESA: TStringField;
    TableNomeEscolaRAZAO: TStringField;
    TableNomeEscolaCNPJ_CPF: TStringField;
    TableNomeEscolaENDERECO: TStringField;
    TableNomeEscolaLOGRADOURO: TStringField;
    TableNomeEscolaBAIRRO: TStringField;
    TableNomeEscolaCIDADE: TStringField;
    TableNomeEscolaUF: TStringField;
    TableNomeEscolaCEP: TStringField;
    TableNomeEscolaDDD: TStringField;
    TableNomeEscolaFONE: TStringField;
    TableNomeEscolaFONE_1: TStringField;
    TableNomeEscolaFONE_2: TStringField;
    TableNomeEscolaFAX: TStringField;
    TableNomeEscolaE_MAIL: TStringField;
    TableNomeEscolaWEB: TStringField;
    TableNomeEscolaLOGOTIPO: TGraphicField;
    TableNomeEscolaSLOGAN: TStringField;
    TableNomeEscolaOUTRAS_INFO: TStringField;
    TableNomeEscolaCODIGO: TIntegerField;
    TableNomeEscolaTIPO: TStringField;
    TableNomeEscolaIE_RG: TStringField;
    TableNomeEscolaCODIGO_CONTA: TIntegerField;
    TableNomeEscolaDIVERSOS1: TStringField;
    TableNomeEscolaDIVERSOS2: TStringField;
    TableNomeEscolaDIVERSOS3: TStringField;
    TableNomeEscolaANOLETIVO: TIntegerField;
    TableNomeEscolaMEDIA_ESCOLA: TFloatField;
    TableNomeEscolaPORTA: TIntegerField;
    TableNomeEscolaSMTP: TStringField;
    TableNomeEscolaSENHA: TStringField;
    sdsGenid: TSQLDataSet;
    scds_usuario_proc: TSQLDataSet;
    DBGrid2: TDBGrid;
    Label83: TLabel;
    DBEdit99: TDBEdit;
    Label84: TLabel;
    DBMemo2: TDBMemo;
    DateEdit1: TDateEdit;
    Label82: TLabel;
    DBNavigator2: TDBNavigator;
    BitBtn11: TBitBtn;
    MMJPanel4: TMMJPanel;
    btnavisoG: TBitBtn;
    btnAvisoI: TBitBtn;
    btnavisoC: TBitBtn;
    btnavisoE: TBitBtn;
    BitBtn15: TBitBtn;
    btn_editar_avisos: TBitBtn;
    DBEdit1: TDBEdit;
    Label27: TLabel;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    DtSrcBanco: TDataSource;
    banco: TSQLDataSet;
    dsFaixa: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    Label115: TLabel;
    dsTipoSerie: TDataSource;
    DBEdit40: TDBEdit;
    Label39: TLabel;
    GroupBox4: TGroupBox;
    DBRadioGroup22: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    DBRadioGroup25: TDBRadioGroup;
    DBRadioGroup26: TDBRadioGroup;
    DBRadioGroup27: TDBRadioGroup;
    DBRadioGroup28: TDBRadioGroup;
    DBRadioGroup29: TDBRadioGroup;
    GroupBox5: TGroupBox;
    DBRadioGroup30: TDBRadioGroup;
    DBRadioGroup31: TDBRadioGroup;
    DBRadioGroup32: TDBRadioGroup;
    DBRadioGroup33: TDBRadioGroup;
    DBRadioGroup34: TDBRadioGroup;
    DBRadioGroup35: TDBRadioGroup;
    GroupBox14: TGroupBox;
    Label104: TLabel;
    DBEdit80: TDBEdit;
    DBRadioGroup36: TDBRadioGroup;
    DBRadioGroup37: TDBRadioGroup;
    DBRadioGroup38: TDBRadioGroup;
    DBRadioGroup39: TDBRadioGroup;
    DBRadioGroup40: TDBRadioGroup;
    DBRadioGroup41: TDBRadioGroup;
    DBRadioGroup42: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure PagAlunoChange(Sender: TObject);
    procedure btnOcorreIClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcFichaStateChange(Sender: TObject);
    procedure btnIncuiFichaClick(Sender: TObject);
    procedure btnGravaFichaClick(Sender: TObject);
    procedure btnExcluiFichaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCancelaFichaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnOcorreGClick(Sender: TObject);
    procedure btnOcorreEClick(Sender: TObject);
    procedure btnOcorreCClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btn_copiarClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure btnAvisoIClick(Sender: TObject);
    procedure btnavisoGClick(Sender: TObject);
    procedure btnavisoEClick(Sender: TObject);
    procedure btn_editar_avisosClick(Sender: TObject);
    procedure dtavisosStateChange(Sender: TObject);
    procedure dtOcorreStateChange(Sender: TObject);
    procedure btnavisoCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mostra_panel;
    procedure AdicionaResponsavel;
  end;

var
  fAlunoCadastro: TfAlunoCadastro;

implementation

uses UDm, uProcResponsavel, uListaCliEscola, uEstado, uFichaMedica;

{$R *.dfm}

procedure TfAlunoCadastro.FormShow(Sender: TObject);
var
  conta_local : String;
begin
  inherited;
  PagAluno.ActivePage := TabAluno;
  mostra_panel;
  if (DM.cds_aluno.Active) then
    dm.cds_aluno.Close;
  dm.cds_aluno.Params[0].AsString := RA;
  dm.cds_aluno.Open;
  if (not dm.cds_aluno.IsEmpty) then
  begin
    if (cdsEnderecoCli.Active) then
        cdsEnderecoCli.Close;
    cdsEnderecoCli.Params[0].Clear;
    cdsEnderecoCli.Params[1].AsInteger := StrToInt(RA);
    cdsEnderecoCli.Open;
  end;

  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
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

  if (DtSrc.State in [dsEdit]) then
  begin
    if (cdsOcorre.Active) then
      cdsOcorre.Close;
    cdsOcorre.Params[0].AsString := DM.cds_alunoRA.AsString;
    cdsOcorre.Params[1].AsString := DM.cds_alunoANOLETIVO.AsString;
    cdsOcorre.Open;

    {** Abre a Fixa Médica}
    if (cdsFicha.Active) then
      cdsFicha.Close;
    cdsFicha.Params[0].AsString := DM.cds_alunoRA.AsString;
    cdsFicha.Open;
  end;

  //procResponsavel('codigo');

  if (not dm.TableTipoSerie.Active) then
      dm.TableTipoSerie.Open;

  if (not dm.cdsFaixa.Active) then
      dm.cdsFaixa.Open;

 { if not dm.TableSeries.Active then
    dm.TableSeries.Open;
  ComboBox1.Clear;
  cdsavisos.Open;
  while not cdsavisos.Eof do begin
    ComboBox1.Items.Add(cdsavisosTIPO.AsString);
    cdsavisos.Next;
  end;   }


end;

procedure TfAlunoCadastro.mostra_panel;
begin
    if (PagAluno.ActivePage = tbResponsavel) then
    begin
      if (DM.cds_aluno.State in [dsInsert, dsEdit]) then
         btnGravar.Click;
      MMJPanel2.Align := alNone;
      MMJPanel2.Top := 313;
      mmpFicha.Align := alNone;
      mmpFicha.Top := 313;
      mmpOcorrencia.Align := alNone;
      mmpOcorrencia.Top := 313;
      if (cdsResponsavel.Active) then
         cdsResponsavel.Close;
      cdsResponsavel.Params[0].AsInteger := dm.cds_alunoCODRESPONSAVEL.AsInteger;
      cdsResponsavel.Open;
    end;

    if (PagAluno.ActivePage = TabAvisos) then
    begin
      if (DM.cds_aluno.State in [dsInsert, dsEdit]) then
         btnGravar.Click;
      MMJPanel2.Align := alNone;
      MMJPanel2.Top := 313;
      mmpFicha.Align := alNone;
      mmpFicha.Top := 313;
      mmpOcorrencia.Align := alNone;
      mmpOcorrencia.Top := 313;
      if (cdsIrmaos.Active) then
         cdsIrmaos.Close;
      cdsIrmaos.Params[0].AsInteger := dm.cds_alunoCODRESPONSAVEL.AsInteger;
      cdsIrmaos.Params[1].AsInteger := dm.cds_alunoCODCLIENTE.AsInteger;
      cdsIrmaos.Open;
    end;

    if ((PagAluno.ActivePage = TabAluno) or (PagAluno.ActivePage = TabFiliacao)
      or (PagAluno.ActivePage = TabPedagogico)) then
    begin
      MMJPanel2.Align := alBottom;
      mmpFicha.Align := alNone;
      mmpFicha.Top := 313;
      mmpOcorrencia.Align := alNone;
      mmpOcorrencia.Top := 313;
    end;

    if ((PagAluno.ActivePage = TabDadosAdicionais) or (PagAluno.ActivePage = TabFicha1)
      or (PagAluno.ActivePage = TabFicha2) or (PagAluno.ActivePage = TabObs)) then
    begin
      if (DM.cds_aluno.State in [dsInsert, dsEdit]) then
         btnGravar.Click;
      MMJPanel2.Align := alNone;
      MMJPanel2.Top := 313;
      mmpOcorrencia.Align := alNone;
      mmpOcorrencia.Top := 313;
      mmpFicha.Align := alBottom;
      if (cdsFicha.Active) then
          cdsFicha.Close;
      cdsFicha.Params[0].AsString := DM.cds_alunoRA.AsString;
      cdsFicha.Open;
    end;

    if (PagAluno.ActivePage = tabOcorrencia) then
    begin
      if (DM.cds_aluno.State in [dsInsert, dsEdit]) then
         btnGravar.Click;
      MMJPanel2.Align := alNone;
      MMJPanel2.Top := 313;
      mmpFicha.Align := alNone;
      mmpFicha.Top := 313;
      mmpOcorrencia.Align := alBottom;
    end;

end;

procedure TfAlunoCadastro.PagAlunoChange(Sender: TObject);
begin
  inherited;
  mostra_panel;
end;

procedure TfAlunoCadastro.btnOcorreIClick(Sender: TObject);
begin
  if not cdsOcorre.Active then
    cdsOcorre.Open;

  cdsOcorre.Append;
  DBEdit20.SetFocus;
end;

procedure TfAlunoCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // inherited;
  if (cdsIrmaos.Active) then
      cdsIrmaos.Close;
  if (cdsResponsavel.Active) then
      cdsResponsavel.Close;
  if (dm.cds_aluno.Active) then
      dm.cds_aluno.Close;

end;

procedure TfAlunoCadastro.btnProcurarClick(Sender: TObject);
begin
  //inherited;
  RA := '';
  varform := 'cadalunopedagogigo';
  fListaCliEscola := TfListaCliEscola.Create(Application);
  try
    fListaCliEscola.ShowModal;
    PagAluno.ActivePage := TabAluno;
    mostra_panel;
    if (DM.cds_aluno.Active) then
      dm.cds_aluno.Close;
    dm.cds_aluno.Params[0].AsString := RA;
    dm.cds_aluno.Open;
  finally
    fListaCliEscola.Free;
  end;  
end;

procedure TfAlunoCadastro.DtSrcFichaStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TfAlunoCadastro.btnIncuiFichaClick(Sender: TObject);
begin
//  inherited;
  if (dm.cds_aluno.IsEmpty) then Exit;
  {if not DtSrcFicha.DataSet.Active then
     DtSrcFicha.DataSet.open;
  DtSrcFicha.DataSet.Append;
  PagAluno.ActivePage := TabDadosAdicionais;
  DBComboBox5.SetFocus;}
  fFichaMedica := TfFichaMedica.Create(Application);
  try
    fFichaMedica.ShowModal;
  finally
    fFichaMedica.Free;
  end;
  if (cdsFicha.Active) then
      cdsFicha.Close;
  cdsFicha.Params[0].AsString := DM.cds_alunoRA.AsString;
  cdsFicha.Open;
  
end;

procedure TfAlunoCadastro.btnGravaFichaClick(Sender: TObject);
begin
 // inherited;
    if (cdsFicha.State in [dsInsert]) then
    begin
     if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FICHAMEDICA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cdsFichaID_FICHA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
    end;
    DtSrcFicha.DataSet.Post;
    (DtSrcFicha.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfAlunoCadastro.btnExcluiFichaClick(Sender: TObject);
begin
//  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrcFicha.DataSet.Delete;
     (DtSrcFicha.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfAlunoCadastro.BitBtn1Click(Sender: TObject);
begin
  //inherited;
  if (dm.cds_aluno.IsEmpty) then
      exit;
  fProcResponsavel := TfProcResponsavel.Create(Application);
  try
    if (DBEdit46.Text <> '') then
    begin
      fProcResponsavel.Edit1.Text := DBEdit46.Text;
      fProcResponsavel.BitBtn5.Click;
    end;
    fProcResponsavel.ShowModal;
    if (cdsResponsavel.Active) then
       cdsResponsavel.Close;
    cdsResponsavel.Params[0].AsInteger := dm.cds_alunoCODRESPONSAVEL.AsInteger;
    cdsResponsavel.Open;
  finally
    fProcResponsavel.Free;
  end;
end;

procedure TfAlunoCadastro.btnCancelaFichaClick(Sender: TObject);
begin
  inherited;
  DtSrcFicha.DataSet.Cancel;
end;

procedure TfAlunoCadastro.btnIncluirClick(Sender: TObject);
var
  dia, ano, mes : word;
  anoletivo : integer;
begin
  DecodeDate(Now,ano,mes,dia);
  PagAluno.ActivePage := TabAluno;
  inherited;

  if cdsEnderecoCli.Active then
     cdsEnderecoCli.Close;
  cdsEnderecoCli.Params[0].Clear;
  cdsEnderecoCli.Params[1].Clear;


  dm.cds_alunoCNPJ.EditMask := '000.000.000-00';
  dm.cds_alunoTIPOFIRMA.AsInteger := 0;

  dm.cds_alunoSEGMENTO.Value:=1;
  dm.cds_alunoREGIAO.Value:=1;
  anoletivo := ano;
  dm.cds_alunoANOLETIVO.AsString := IntToStr(anoletivo);
  dm.cds_alunoSITUACAOESCOLAR.AsString := 'M';

  if (not scds_usuario_proc.Active) then
     scds_usuario_proc.Open;
  scds_usuario_proc.Locate('CODUSUARIO','1', [loCaseInsensitive]);
  dm.cds_alunoCODUSUARIO.Value := 1;
  scds_usuario_proc.Close;
  dm.cds_alunoSTATUS.Value:=1;
  dm.cds_alunoDATACADASTRO.Value:=Date;

  if not cdsEnderecoCli.Active then
     cdsEnderecoCli.open;
  cdsEnderecoCli.Append;
  cdsEnderecoCliUF.AsString := 'SP';

  DBEditNome.SetFocus;
end;

procedure TfAlunoCadastro.btnGravarClick(Sender: TObject);
begin
    if (DBEdit42.Text = '') then
    begin
       MessageDlg('informe o Ano Letivo', mtWarning, [mbOK], 0);
       exit;
    end;

    if (DBLookupComboBox1.Text = '') then
    begin
       MessageDlg('informe a Série do Aluno', mtWarning, [mbOK], 0);
       exit;
    end;
    if (DBLookupComboBox2.Text = '') then
    begin
       MessageDlg('informe o Banco para Gerar Boletos', mtWarning, [mbOK], 0);
       exit;
    end;

    if (DBLookupComboBox3.Text = '') then
    begin
       MessageDlg('informe o Plano de Pagamento', mtWarning, [mbOK], 0);
       exit;
    end;

    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      dm.cds_alunoCODCLIENTE.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      if dm.cds_alunoRA.IsNull then
        dm.cds_alunoRA.AsString := IntToStr(dm.c_6_genidCODIGO.AsInteger);
      dm.c_6_genid.Close;
      dm.cds_alunoRAZAOSOCIAL.AsString := dm.cds_alunoNOMECLIENTE.AsString;
      //if (RadioGroup1.ItemIndex > -1) then
       //  AdicionaResponsavel;
    end;
    if DtSrc.DataSet.State in [dsEdit] then
    begin
       dm.cds_alunoRAZAOSOCIAL.AsString := dm.cds_alunoNOMECLIENTE.AsString;
    end;

  inherited; // Salvo o Aluno

     {** Salvo o Endereço}
     if (cdsEnderecoCli.State in [dsInsert, dsEdit]) then
     begin
        if (sds_estado.Active) then
          sds_estado.Close;
        sds_estado.CommandText := 'SELECT UF FROM ESTADO_ICMS WHERE UF = ''' + 'SP' + '''';
        sds_estado.Open;
        if (sds_estado.IsEmpty) then
        begin
         MessageDlg('Estado não cadastrado na Tabela ESTADO(icms). ', mtWarning, [mbOK], 0);
         fEstado:=TfEstado.Create(Application);
         try
           fEstado.showmodal;
         dm.cds_aluno.Edit;
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
        dm.c_6_genid.Close;
        cdsEnderecoCliCODCLIENTE.AsInteger := dm.cds_alunoCODCLIENTE.AsInteger;
        cdsEnderecoCliUF.AsString := 'SP';
        cdsEnderecoCliTIPOEND.AsInteger := 0;  
        cdsEnderecoCli.ApplyUpdates(0);
     end;

end;

procedure TfAlunoCadastro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  //aqui busco a foto
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute
   then Image1.Picture.LoadFromFile(OpenDialog1.FileName);

  //aqui salvo a foto
  if dm.cds_aluno.Active then
  begin
    if dm.cds_aluno.State in [dsBrowse] then
       dm.cds_aluno.Edit;
     dm.cds_alunoFOTO.AsString := OpenDialog1.FileName;
     dm.cds_aluno.ApplyUpdates(0);
  end;
end;

procedure TfAlunoCadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Image1.Picture.Bitmap.Assign(nil);
  if Dm.cds_aluno.Active then
  begin
    if Dm.cds_aluno.State in [dsBrowse] then
       Dm.cds_aluno.Edit;
    Dm.cds_alunoFOTO.Clear;
    Dm.cds_aluno.ApplyUpdates(0);
  end;
end;

procedure TfAlunoCadastro.btnOcorreGClick(Sender: TObject);
begin
  if (dtOcorre.State in [dsInsert]) then
  begin
    if sdsGenid.Active then
      sdsGenid.Close;
    sdsGenid.CommandText := 'SELECT CAST(GEN_ID(GEN_OCORRENCIA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    sdsGenid.Open;
    cdsOcorreCODOCORRENCIA.AsInteger := sdsGenid.Fields[0].AsInteger;
    sdsGenid.Close;
    cdsOcorreRA.AsString := dm.cds_AlunoRA.AsString;
    cdsOcorreANOLETIVO.AsString := dm.cds_AlunoANOLETIVO.AsString;
    cdsOcorre.ApplyUpdates(0);
  end;
end;

procedure TfAlunoCadastro.btnOcorreEClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
  DtOcorre.DataSet.Delete;
 (DtOcorre.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfAlunoCadastro.btnOcorreCClick(Sender: TObject);
begin
 dtOcorre.DataSet.Cancel;
end;

procedure TfAlunoCadastro.btnEnviarClick(Sender: TObject);
var
  email, responsavel:string;
begin
   if (not TableNomeEscola.Active) then
     TableNomeEscola.Open;
   // dados da mensagem

   // e-mail do remetente
   IdMessage1.From.Address := TableNomeEscolaE_MAIL.AsString;

   // e-mail do destinatário

   if (dm.cds_AlunoCOMUNICAMAE.AsString <> '') then
     email:= dm.cds_AlunoCOMUNICAMAE.AsString;
   if (dm.cds_AlunoCOMUNICAPAI.AsString <> '') then
     if email <> '' then
       email:= email + ',' + dm.cds_AlunoCOMUNICAPAI.AsString
     else
       email:= dm.cds_AlunoCOMUNICAPAI.AsString;
   IdMessage1.Recipients.EMailAddresses := email;

  // Assunto
  //IdMessage1.Subject := DBEdit63.Text;

  // Cabeçalho da mensagem

   //IdMessage1.Body.Add(('Holambra')+'  '+ (DBEdit60.Text));
   //IdMessage1.Body.Add('');//linha em braco espaço

   if (dm.cds_alunoNOMEMAE.AsString <> '') then
      responsavel:= dm.cds_alunoNOMEMAE.AsString;
   if (dm.cds_AlunoPAI.AsString <> '') then
     if responsavel <> '' then
       responsavel:= responsavel + ' e ' + dm.cds_AlunoPAI.AsString
     else
       responsavel:= dm.cds_AlunoPAI.AsString;

   IdMessage1.Body.Add(('Senhores Pais :')+ ' '+(responsavel));
   IdMessage1.Body.Add('');//linha em branco espaço
   IdMessage1.Body.Add(('O Aluno(a):')+ ' '+(dm.cds_alunoNOMECLIENTE.AsString));
   IdMessage1.Body.Add('');//linha em branco espaço
   // Corpo da mensagem  Memo
   // Corpo da mensagem
   // IdMessage1.Body.Add(DBComboBox4.Text);
   IdMessage1.Body.Add(DBMemo1.Text);
   //fim da mensagem
   //Configuração do IdSMTP SMTP
   IdSMTP1.Host := TableNomeEscolaSMTP.AsString;
   // Port do Provedor =  25
   IdSMTP1.Port := TableNomeEscolaPORTA.AsInteger;
   // Login do usuário
   IdSMTP1.Username :=TableNomeEscolaE_MAIL.AsString;
   // Password Senha do usuário
   IdSMTP1.Password :=TableNomeEscolaSENHA.AsString;
   try
     try
       IdSMTP1.Connect;
       IdSMTP1.Authenticate; //Faz a autenticação
       IdSMTP1.Send(IdMessage1); //Envia a mensagem
       Application.MessageBox('Email enviado com sucesso!', 'Confirmação', MB_ICONINFORMATION +   MB_OK);
     except
       showmessage('Verifar campos dados com ERRO'); //Mensagem de erro
     end;
   finally
     IdSMTP1.Disconnect;
   end;
   
end;

procedure TfAlunoCadastro.btn_copiarClick(Sender: TObject);
begin
//  inherited;
  {DBEdit60.Text := DateEdit2.Text;
  DBEdit63.Text := ComboBox1.Text;
  DBMemo1.Text := DBMemo3.Text;}
end;

procedure TfAlunoCadastro.BitBtn11Click(Sender: TObject);
var
  email, responsavel:string;
begin

  if (not TableNomeEscola.Active) then
     TableNomeEscola.Open;


   // dados da mensagem

  // e-mail do remetente
  IdMessage1.From.Address := TableNomeEscolaE_MAIL.AsString;

  // e-mail do destinatário

  if (dm.cds_AlunoCOMUNICAMAE.AsString <> '') then
  email:= dm.cds_AlunoCOMUNICAMAE.AsString;
    if (dm.cds_AlunoCOMUNICAPAI.AsString <> '') then
    if email <> '' then
      email:= email + ',' + dm.cds_AlunoCOMUNICAPAI.AsString
    else
          email:= dm.cds_AlunoCOMUNICAPAI.AsString;
   IdMessage1.Recipients.EMailAddresses := email;



  // Assunto
   //IdMessage1.Subject := DBEdit64.Text;



                // Cabeçalho da mensagem

     //IdMessage1.Body.Add(('Holambra')+'  '+ (DateEdit1.Text));
    // IdMessage1.Body.Add('');//linha em braco espaço


     if (dm.cds_alunoNOMEMAE.AsString <> '') then
       responsavel:= dm.cds_alunoNOMEMAE.AsString;
     if (dm.cds_AlunoPAI.AsString <> '') then
       if responsavel <> '' then
          responsavel:= responsavel + ' e ' + dm.cds_AlunoPAI.AsString
       else
          responsavel:= dm.cds_AlunoPAI.AsString;

      IdMessage1.Body.Add(('Senhores Pais :')+ ' '+(responsavel));
       IdMessage1.Body.Add('');//linha em braco espaço

     IdMessage1.Body.Add(('O Aluno(a):')+ ' '+(dm.cds_alunoNOMECLIENTE.AsString));
      IdMessage1.Body.Add('');//linha em braco espaço
                 // Corpo da mensagem  Memo

     IdMessage1.Body.Add(DBMemo2.Text);

     IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text; // Auto Resposta
               //fim da mensagem

  //Configuração do IdSMTP SMTP
  IdSMTP1.Host :=TableNomeEscolaSMTP.AsString;

  // Port do Provedor =  25
  IdSMTP1.Port :=TableNomeEscolaPORTA.AsInteger;

  // Login do usuário

  IdSMTP1.Username :=TableNomeEscolaE_MAIL.AsString;

  // Password Senha do usuário

  IdSMTP1.Password :=TableNomeEscolaSENHA.AsString;


  try

    try
       IdSMTP1.Connect;
       IdSMTP1.Authenticate; //Faz a autenticação
       IdSMTP1.Send(IdMessage1); //Envia a mensagem
       Application.MessageBox('Email enviado com sucesso!', 'Confirmação',MB_ICONINFORMATION +   MB_OK);
    except
       showmessage('Verifar campos dados com ERRO'); //Mensagem de erro
    end;

  finally
    IdSMTP1.Disconnect;
  end;

end;

procedure TfAlunoCadastro.btnAvisoIClick(Sender: TObject);
begin
  //inherited;
 if not cdsavisos.Active then
    cdsavisos.Open;
  cdsavisos.Append;
  DBEdit99.SetFocus;
end;

procedure TfAlunoCadastro.btnavisoGClick(Sender: TObject);
begin
//  inherited;
  if (dtavisos.State in [dsInsert]) then
  begin
    if sdsGenid.Active then
      sdsGenid.Close;
    sdsGenid.CommandText := 'SELECT CAST(GEN_ID(GEN_AVISOS, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    sdsGenid.Open;
    cdsavisosCODAVISOS.AsInteger := sdsGenid.Fields[0].AsInteger;
    sdsGenid.Close;

    cdsavisos.ApplyUpdates(0);

    cdsavisos.Close;
    ComboBox1.Clear;
    cdsavisos.Open;
    while not cdsavisos.Eof do begin
      ComboBox1.Items.Add(cdsavisosTIPO.AsString);
      cdsavisos.Next;
    end;
  end;
end;

procedure TfAlunoCadastro.btnavisoEClick(Sender: TObject);
begin
//  inherited;
  cdsavisos.Delete;
  cdsavisos.ApplyUpdates(0);
end;

procedure TfAlunoCadastro.btn_editar_avisosClick(Sender: TObject);
begin
  inherited;
  btn_editar_avisos.Enabled:=dtavisos.State in [dsInsert,dsEdit];
  cdsavisos.ApplyUpdates(0);

  cdsavisos.Close;
  ComboBox1.Clear;
  cdsavisos.Open;
  while not cdsavisos.Eof do begin
    ComboBox1.Items.Add(cdsavisosTIPO.AsString);
    cdsavisos.Next;
  end;


end;

procedure TfAlunoCadastro.dtavisosStateChange(Sender: TObject);
begin
  //inherited;
  btnavisoI.Enabled:=dtavisos.State in [dsBrowse,dsInactive];
  btnavisoG.Enabled:=dtavisos.State in [dsInsert,dsEdit];
  btnavisoC.Enabled:=dtavisos.State in [dsInsert,dsEdit];
  btnavisoE.Enabled:=dtavisos.State in [dsBrowse];

  if dtavisos.State in [dsInsert, dsEdit] then
  begin
    btnavisoI.Visible := False;
    btnavisoE.Visible := False;
    btnavisoG.Visible := True;
    btnavisoC.Visible := True;
  end;

  if dtavisos.State in [dsBrowse,dsInactive] then
  begin
    btnavisoI.Visible := True;
    btnavisoE.Visible := True;
    btnavisoG.Visible := False;
    btnavisoC.Visible := False;
  end;
end;

procedure TfAlunoCadastro.dtOcorreStateChange(Sender: TObject);
begin
 // inherited;
  btnOcorreI.Enabled:=dtOcorre.State in [dsBrowse,dsInactive];
  btnOcorreG.Enabled:=dtOcorre.State in [dsInsert,dsEdit];
  btnOcorreC.Enabled:=dtOcorre.State in [dsInsert,dsEdit];
  btnOcorreE.Enabled:=dtOcorre.State in [dsBrowse];

  if dtOcorre.State in [dsInsert, dsEdit] then
  begin
    btnOcorreI.Visible := False;
    btnOcorreE.Visible := False;
    btnOcorreG.Visible := True;
    btnOcorreC.Visible := True;
  end;

  if dtOcorre.State in [dsBrowse,dsInactive] then
  begin
    btnOcorreI.Visible := True;
    btnOcorreE.Visible := True;
    btnOcorreG.Visible := False;
    btnOcorreC.Visible := False;
  end;
end;

procedure TfAlunoCadastro.btnavisoCClick(Sender: TObject);
begin
//  inherited;
  cdsavisos.Cancel;
end;

procedure TfAlunoCadastro.AdicionaResponsavel;
begin

end;

end.
