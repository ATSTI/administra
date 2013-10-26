unit uControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExControls, JvGradient, ExtCtrls, JvExExtCtrls, JvRadioGroup, JvBevel,
  FMTBcd, JvExMask, JvToolEdit, JvBaseEdits, Mask, DBCtrls, DB, SqlExpr,
  Provider, DBClient, JvExStdCtrls, JvEdit, JvSpin, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, EDBFind, DBXpress, Menus,
  JvExButtons, JvButtons, JvButton, JvTransparentButton, ComCtrls;

type
  TfControle = class(TForm)
    JvGradient1: TJvGradient;
    JvDBGrid1: TJvDBGrid;
    Label1: TLabel;
    DBGrid1: TJvDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    btnincluir: TBitBtn;
    btngravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCaixa: TBitBtn;
    btnNovoItem: TBitBtn;
    BitBtn8: TBitBtn;
    Label3: TLabel;
    DtSrc: TDataSource;
    cds_Movimento: TClientDataSet;
    dsp_Movimento: TDataSetProvider;
    sds_Movimento: TSQLDataSet;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_Mov_DetDESCPRODUTO: TStringField;
    sds_Mov_DetLOTE: TStringField;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detDESCPRODUTO: TStringField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detTotalPedido: TAggregateField;
    cds_Mov_detField10: TAggregateField;
    DtSrc1: TDataSource;
    DBEdit4: TDBEdit;
    EvDBFind1: TEvDBFind;
    sMesas: TSQLDataSet;
    dMesas: TDataSetProvider;
    cMesas: TClientDataSet;
    dstMesas: TDataSource;
    sMesasNOMECLIENTE: TStringField;
    sMesasCODCLIENTE: TIntegerField;
    sMesasCODMOVIMENTO: TIntegerField;
    cMesasNOMECLIENTE: TStringField;
    cMesasCODCLIENTE: TIntegerField;
    cMesasCODMOVIMENTO: TIntegerField;
    sMesasTOTALMOVIMENTO: TFloatField;
    cMesasTOTALMOVIMENTO: TFloatField;
    sMov: TSQLDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoCONTROLE: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoTOTALMOVIMENTO: TFloatField;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoCONTROLE: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoTOTALMOVIMENTO: TFloatField;
    RadioGroup1: TRadioGroup;
    sds_serie: TSQLDataSet;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    Excluir1: TMenuItem;
    Recibo1: TMenuItem;
    Caixa1: TMenuItem;
    Itens1: TMenuItem;
    ExcluirItem1: TMenuItem;
    sMesasCODALMOXARIFADO: TIntegerField;
    cMesasCODALMOXARIFADO: TIntegerField;
    sMesasCODNATUREZA: TSmallintField;
    cMesasCODNATUREZA: TSmallintField;
    sVenda: TSQLDataSet;
    sVendaCODVENDA: TIntegerField;
    sVendaCODMOVIMENTO: TIntegerField;
    sVendaCODCLIENTE: TIntegerField;
    sVendaDATAVENDA: TDateField;
    sVendaDATAVENCIMENTO: TDateField;
    sVendaNUMEROBORDERO: TIntegerField;
    sVendaBANCO: TSmallintField;
    sVendaCODVENDEDOR: TSmallintField;
    sVendaSTATUS: TSmallintField;
    sVendaCODUSUARIO: TSmallintField;
    sVendaDATASISTEMA: TDateField;
    sVendaVALOR: TFloatField;
    sVendaNOTAFISCAL: TIntegerField;
    sVendaSERIE: TStringField;
    sVendaDESCONTO: TFloatField;
    sVendaCODCCUSTO: TSmallintField;
    sVendaN_PARCELA: TSmallintField;
    sVendaOPERACAO: TStringField;
    sVendaFORMARECEBIMENTO: TStringField;
    sVendaN_DOCUMENTO: TStringField;
    sVendaCAIXA: TSmallintField;
    sVendaMULTA_JUROS: TFloatField;
    sVendaAPAGAR: TFloatField;
    sVendaVALOR_PAGAR: TFloatField;
    sVendaENTRADA: TFloatField;
    sVendaN_BOLETO: TStringField;
    sVendaSTATUS1: TStringField;
    sVendaCONTROLE: TStringField;
    sVendaOBS: TStringField;
    sVendaVALOR_ICMS: TFloatField;
    sVendaVALOR_FRETE: TFloatField;
    sVendaVALOR_SEGURO: TFloatField;
    sVendaOUTRAS_DESP: TFloatField;
    sVendaVALOR_IPI: TFloatField;
    sVendaPRAZO: TStringField;
    pVenda: TDataSetProvider;
    cVenda: TClientDataSet;
    cVendaCODVENDA: TIntegerField;
    cVendaCODMOVIMENTO: TIntegerField;
    cVendaCODCLIENTE: TIntegerField;
    cVendaDATAVENDA: TDateField;
    cVendaDATAVENCIMENTO: TDateField;
    cVendaNUMEROBORDERO: TIntegerField;
    cVendaBANCO: TSmallintField;
    cVendaCODVENDEDOR: TSmallintField;
    cVendaSTATUS: TSmallintField;
    cVendaCODUSUARIO: TSmallintField;
    cVendaDATASISTEMA: TDateField;
    cVendaVALOR: TFloatField;
    cVendaNOTAFISCAL: TIntegerField;
    cVendaSERIE: TStringField;
    cVendaDESCONTO: TFloatField;
    cVendaCODCCUSTO: TSmallintField;
    cVendaN_PARCELA: TSmallintField;
    cVendaOPERACAO: TStringField;
    cVendaFORMARECEBIMENTO: TStringField;
    cVendaN_DOCUMENTO: TStringField;
    cVendaCAIXA: TSmallintField;
    cVendaMULTA_JUROS: TFloatField;
    cVendaAPAGAR: TFloatField;
    cVendaVALOR_PAGAR: TFloatField;
    cVendaENTRADA: TFloatField;
    cVendaN_BOLETO: TStringField;
    cVendaSTATUS1: TStringField;
    cVendaCONTROLE: TStringField;
    cVendaOBS: TStringField;
    cVendaVALOR_ICMS: TFloatField;
    cVendaVALOR_FRETE: TFloatField;
    cVendaVALOR_SEGURO: TFloatField;
    cVendaOUTRAS_DESP: TFloatField;
    cVendaVALOR_IPI: TFloatField;
    cVendaPRAZO: TStringField;
    sPermissao: TSQLDataSet;
    sPermissaoUCUSERNAME: TStringField;
    sPermissaoUCLOGIN: TStringField;
    sPermissaoUCPROFILE: TIntegerField;
    sds_Mov_DetCODAUTORIZACAO: TIntegerField;
    sds_Mov_DetSTATUS: TStringField;
    cds_Mov_detCODAUTORIZACAO: TIntegerField;
    cds_Mov_detSTATUS: TStringField;
    stotal: TSQLDataSet;
    stotalVALTOTAL: TFloatField;
    dTotal: TDataSetProvider;
    cTotal: TClientDataSet;
    cTotalVALTOTAL: TFloatField;
    cTotaltotal: TAggregateField;
    dstTotal: TDataSource;
    Sair1: TMenuItem;
    BitBtn6: TBitBtn;
    Rateio1: TMenuItem;
    sMesasCODMOVRATEIO: TIntegerField;
    sMesasVALORRATEIO: TFloatField;
    cMesasCODMOVRATEIO: TIntegerField;
    cMesasVALORRATEIO: TFloatField;
    sRateio: TSQLDataSet;
    sRateioSUM: TFloatField;
    sMesasSTATUS: TSmallintField;
    cMesasSTATUS: TSmallintField;
    sds_Mov_DetNOME: TStringField;
    sds_Mov_DetPERIODOINI: TSQLTimeStampField;
    sds_Mov_DetPERIODOFIM: TSQLTimeStampField;
    cds_Mov_detNOME: TStringField;
    cds_Mov_detPERIODOINI: TSQLTimeStampField;
    cds_Mov_detPERIODOFIM: TSQLTimeStampField;
    Timer1: TTimer;
    sMostraSuites: TSQLDataSet;
    dMostraSuites: TDataSetProvider;
    cMostraSuites: TClientDataSet;
    DtSrcMostraSuites: TDataSource;
    sds_Mov_DetHORATERMINO: TSQLTimeStampField;
    cds_Mov_detHORATERMINO: TSQLTimeStampField;
    sSuites: TSQLDataSet;
    sSuitesNOME: TStringField;
    sSuitesCODIGO: TIntegerField;
    dSuites: TDataSetProvider;
    cSuites: TClientDataSet;
    cSuitesNOME: TStringField;
    cSuitesCODIGO: TIntegerField;
    sOcupado: TSQLDataSet;
    IntegerField8: TIntegerField;
    dOcupado: TDataSetProvider;
    cOcupado: TClientDataSet;
    cOcupadoCODALMOXARIFADO: TIntegerField;
    sMostraSuitesPERIODOINI: TSQLTimeStampField;
    sMostraSuitesPERIODOFIM: TSQLTimeStampField;
    sMostraSuitesQTDE_PCT: TFloatField;
    cMostraSuitesPERIODOINI: TSQLTimeStampField;
    cMostraSuitesPERIODOFIM: TSQLTimeStampField;
    cMostraSuitesQTDE_PCT: TFloatField;
    sMostraSuitesCODALMOXARIFADO: TSmallintField;
    cMostraSuitesCODALMOXARIFADO: TSmallintField;
    sds: TSQLDataSet;
    pgSuites: TPageControl;
    TabSheet1: TTabSheet;
    JvTransparentButton3: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    JvTransparentButton1: TJvTransparentButton;
    JvTransparentButton4: TJvTransparentButton;
    JvTransparentButton5: TJvTransparentButton;
    JvTransparentButton6: TJvTransparentButton;
    JvTransparentButton7: TJvTransparentButton;
    JvTransparentButton10: TJvTransparentButton;
    JvTransparentButton11: TJvTransparentButton;
    JvTransparentButton8: TJvTransparentButton;
    JvTransparentButton9: TJvTransparentButton;
    JvTransparentButton12: TJvTransparentButton;
    sBuscaSuite: TSQLDataSet;
    sBuscaSuiteNOME: TStringField;
    sBuscaSuiteCODIGO: TIntegerField;
    BitBtn1: TBitBtn;
    ControledeFrequencia1: TMenuItem;
    sds_Mov_DetGERADESCONTO: TStringField;
    cds_Mov_detGERADESCONTO: TStringField;
    JvTransparentButton13: TJvTransparentButton;
    JvTransparentButton14: TJvTransparentButton;
    JvTransparentButton15: TJvTransparentButton;
    JvTransparentButton16: TJvTransparentButton;
    JvTransparentButton17: TJvTransparentButton;
    JvTransparentButton18: TJvTransparentButton;
    sds_Mov_DetPAGO: TStringField;
    cds_Mov_detPAGO: TStringField;
    sds_Mov_DetCODMOVRATEIO: TIntegerField;
    sds_Mov_DetVALORRATEIO: TFloatField;
    sds_Mov_DetRATEIO: TFloatField;
    cds_Mov_detCODMOVRATEIO: TIntegerField;
    cds_Mov_detVALORRATEIO: TFloatField;
    cds_Mov_detRATEIO: TFloatField;
    sMesasRATEIO: TFloatField;
    cMesasRATEIO: TFloatField;
    sCaixa: TSQLDataSet;
    sCaixaMAQUINA: TStringField;
    sCaixaSITUACAO: TStringField;
    sCaixaCODUSUARIO: TIntegerField;
    sCaixaNOMECAIXA: TStringField;
    sCaixaAberto: TSQLDataSet;
    sCaixaAbertoNOMECAIXA: TStringField;
    sVendaPORCENTAGENDESC: TFloatField;
    cVendaPORCENTAGENDESC: TFloatField;
    sAtendente: TSQLDataSet;
    sAtendenteCOD_FUNCIONARIO: TIntegerField;
    sAtendenteNOME_FUNCIONARIO: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Timer2: TTimer;
    Atualizar1: TMenuItem;
    sMovDet: TSQLDataSet;
    dMovDet: TDataSetProvider;
    cMovDet: TClientDataSet;
    sMovDetCODDETALHE: TIntegerField;
    sMovDetCODMOVIMENTO: TIntegerField;
    sMovDetCODALMOXARIFADO: TSmallintField;
    sMovDetCONTROLE: TSmallintField;
    sMovDetCODPRODUTO: TIntegerField;
    sMovDetQUANTIDADE: TFloatField;
    sMovDetPRECO: TFloatField;
    sMovDetICMS: TFloatField;
    sMovDetUN: TStringField;
    sMovDetQTDE_ALT: TFloatField;
    sMovDetBAIXA: TStringField;
    sMovDetVALTOTAL: TFloatField;
    sMovDetCOD_COMISSAO: TIntegerField;
    sMovDetLOTE: TStringField;
    sMovDetDTAFAB: TDateField;
    sMovDetDTAVCTO: TDateField;
    sMovDetPRECOCUSTO: TFloatField;
    sMovDetVLRESTOQUE: TFloatField;
    sMovDetQTDEESTOQUE: TFloatField;
    sMovDetNOTAFISCAL: TStringField;
    sMovDetDESCPRODUTO: TStringField;
    sMovDetPRECOULTIMACOMPRA: TFloatField;
    sMovDetCST: TStringField;
    sMovDetVALOR_ICMS: TFloatField;
    sMovDetVLR_BASE: TFloatField;
    sMovDetPERIODOINI: TSQLTimeStampField;
    sMovDetPERIODOFIM: TSQLTimeStampField;
    sMovDetCODIGO: TIntegerField;
    sMovDetCODIGO1: TIntegerField;
    sMovDetCODAUTORIZACAO: TIntegerField;
    sMovDetSTATUS: TStringField;
    sMovDetPAGOUCOMISSAO: TStringField;
    sMovDetCODMOVRATEIO: TIntegerField;
    sMovDetVALORRATEIO: TFloatField;
    sMovDetPAGO: TStringField;
    sMovDetRATEIO: TFloatField;
    sMovDetPORCENTAGENDESC: TFloatField;
    cMovDetCODDETALHE: TIntegerField;
    cMovDetCODMOVIMENTO: TIntegerField;
    cMovDetCODALMOXARIFADO: TSmallintField;
    cMovDetCONTROLE: TSmallintField;
    cMovDetCODPRODUTO: TIntegerField;
    cMovDetQUANTIDADE: TFloatField;
    cMovDetPRECO: TFloatField;
    cMovDetICMS: TFloatField;
    cMovDetUN: TStringField;
    cMovDetQTDE_ALT: TFloatField;
    cMovDetBAIXA: TStringField;
    cMovDetVALTOTAL: TFloatField;
    cMovDetCOD_COMISSAO: TIntegerField;
    cMovDetLOTE: TStringField;
    cMovDetDTAFAB: TDateField;
    cMovDetDTAVCTO: TDateField;
    cMovDetPRECOCUSTO: TFloatField;
    cMovDetVLRESTOQUE: TFloatField;
    cMovDetQTDEESTOQUE: TFloatField;
    cMovDetNOTAFISCAL: TStringField;
    cMovDetDESCPRODUTO: TStringField;
    cMovDetPRECOULTIMACOMPRA: TFloatField;
    cMovDetCST: TStringField;
    cMovDetVALOR_ICMS: TFloatField;
    cMovDetVLR_BASE: TFloatField;
    cMovDetPERIODOINI: TSQLTimeStampField;
    cMovDetPERIODOFIM: TSQLTimeStampField;
    cMovDetCODIGO: TIntegerField;
    cMovDetCODIGO1: TIntegerField;
    cMovDetCODAUTORIZACAO: TIntegerField;
    cMovDetSTATUS: TStringField;
    cMovDetPAGOUCOMISSAO: TStringField;
    cMovDetCODMOVRATEIO: TIntegerField;
    cMovDetVALORRATEIO: TFloatField;
    cMovDetPAGO: TStringField;
    cMovDetRATEIO: TFloatField;
    cMovDetPORCENTAGENDESC: TFloatField;
    sCaixaIDCAIXACONTROLE: TIntegerField;
    cdsCaixa: TSQLDataSet;
    cdsCaixaIDCAIXACONTROLE: TIntegerField;
    cdsCaixaCODCAIXA: TIntegerField;
    cdsCaixaCODUSUARIO: TIntegerField;
    cdsCaixaDATAFECHAMENTO: TDateField;
    cdsCaixaSITUACAO: TStringField;
    cdsCaixaMAQUINA: TStringField;
    cdsCaixaDATAABERTURA: TDateField;
    cdsCaixaVALORABRE: TFloatField;
    cdsCaixaVALORFECHA: TFloatField;
    cdsCaixaNOMECAIXA: TStringField;
    procedure btnincluirClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure btnCaixaClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure EvDBFind1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Sair1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcluirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure JvTransparentButton2Click(Sender: TObject);
    procedure JvTransparentButton3Click(Sender: TObject);
    procedure JvTransparentButton4Click(Sender: TObject);
    procedure JvTransparentButton5Click(Sender: TObject);
    procedure JvTransparentButton6Click(Sender: TObject);
    procedure JvTransparentButton7Click(Sender: TObject);
    procedure JvTransparentButton8Click(Sender: TObject);
    procedure JvTransparentButton9Click(Sender: TObject);
    procedure JvTransparentButton10Click(Sender: TObject);
    procedure JvTransparentButton11Click(Sender: TObject);
    procedure JvTransparentButton12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure JvTransparentButton13Click(Sender: TObject);
  private
    { Private declarations }
    procedure populavenda;
    procedure editavenda;
    procedure atualizamesa;
    procedure valordesconto;
  public
    { Public declarations }
    sitacao : string;
    procedure incluiMovimento;
    procedure cancelaMovimento;
    procedure peganomesuites;
    procedure mostraSuites;
  end;

var
  fControle: TfControle;
  VarCodMov: Integer;
  botao : string;
  corbotao : TColor;

implementation

uses uComanda, uProcura_prod2, UDm, uCaixa, uMovCaixa, uCaixaReceber,
  uUtils, ufDlgLogin, uAtsAdmin, uRatearConta, Math, uMostraSuites,
  uFrequancia, sCtrlResize, uRelComissao;

{$R *.dfm}

procedure TfControle.btnincluirClick(Sender: TObject);
begin
    fComanda.VarIdCliente := 0;
    fComanda.showmodal;
   if (fComanda.VarIdCliente <> 0) then
   begin
  {    //Vejo se a comanda ja foi Adicionada
      if(sMov.Active) then
        sMov.Close;
      sMov.Params[1].Clear;
      sMov.Params[0].AsInteger := fComanda.VarIdCliente;
      sMov.Open;
      if (not sMov.IsEmpty) then
      begin
        MessageDlg('Mesa / Comanda, já foi aberta', mtWarning, [mbOK], 0);
        EvDBFind1.SetFocus;
        exit;
      end;
      //Inserir Movimento
      try
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        VarCodMov := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        incluiMovimento;
        if (cMesas.Active) then
           cMesas.Close;
        cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
        cMesas.Params[1].AsInteger := 0; // Mesa / Comanda
        cMesas.Open;
        cMesas.Refresh;
        cMesas.Locate('CODCLIENTE',fComanda.VarIdCliente, [loCaseInsensitive]);
      Except
        MessageDlg('Erro ao Incluir novo Lançamento ?', mtError, [mbOK], 0);
        exit;
      end;
     } //Abrir Lançamento de itens..
      fProcura_prod2.id_movimento := VarCodMov;
     // btnNovoItem.Click;
   end;
   if ((RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 2)) then
   begin
     RadioGroup1.ItemIndex := 0;
     if (cMesas.Active) then
        cMesas.Close;
     cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
     cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
     cMesas.Open;
     EvDBFind1.SetFocus;
   end;
end;

procedure TfControle.btnNovoItemClick(Sender: TObject);
var total, rateio : double;
    mesacomanda : string;
begin
  if (cMesas.IsEmpty) then
    exit;
  mesacomanda := EvDBFind1.Text;
  fProcura_prod2.ShowModal;
  if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
  cds_Mov_det.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
  cds_Mov_det.Open;
  if (cMesas.Active) then
    cMesas.Close;
  cMesas.Params[0].AsInteger := 13;
  cMesas.Open;
  mostraSuites;
  cMesas.Locate('NOMECLIENTE', mesacomanda, [loCaseInsensitive]);
  EvDBFind1.SetFocus;
end;

procedure TfControle.incluiMovimento;
begin
  if (cdsCaixa.Active) then
    cdsCaixa.Close;
  cdsCaixa.Params[0].AsString := MICRO;
  cdsCaixa.Params[1].AsString := 'A'; //Caixa Aberto
  cdsCaixa.Open;

    if (not cds_movimento.Active) then
      cds_Movimento.Open;
    cds_movimento.Append;
    cds_MovimentoCODMOVIMENTO.AsInteger := VarCodMov; //CodMovimento
    cds_MovimentoDATAMOVIMENTO.AsDateTime := cdsCaixaDATAABERTURA.AsDateTime;
    cds_MovimentoCODCLIENTE.AsInteger := fComanda.VarIdCliente;
    cds_MovimentoCODNATUREZA.AsInteger := 13;  //Natureza = Mesa/Comanda/Delivery
    cds_MovimentoSTATUS.AsInteger := 0; // Status
    cds_MovimentoCODUSUARIO.AsInteger := 1; //Cod_Usuario
    cds_MovimentoCODVENDEDOR.AsInteger := 0; //Cod_Vendedor
    cds_MovimentoCODALMOXARIFADO.AsInteger := 51;  //CodAlmoxarifado
    cds_MovimentoDATA_SISTEMA.AsDateTime := cdsCaixaDATAABERTURA.AsDateTime; //DataSistema
    cds_MovimentoTOTALMOVIMENTO.Value := 0; // TotalPedido
    cds_Movimento.ApplyUpdates(0);
    cdsCaixa.Close;
end;

procedure TfControle.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fControle));
  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  if (not sCaixaAberto.IsEmpty) then
    Edit4.Text := sCaixaAbertoNOMECAIXA.AsString;
  if (DM.CAIXABAR = 'BAR') then
    Edit4.Text := 'BAR';
  // Desabilito os Botões
  if (sCaixaAberto.IsEmpty) then
  begin
    btnincluir.Enabled := False;
    btngravar.Enabled := False;
    btnExcluir.Enabled := False;
    BitBtn6.Enabled := False;
    if (DM.CAIXABAR = 'BAR') then
      btnCaixa.Enabled := False
    else
      btnCaixa.Enabled := True;
  end
  else
  begin
    if (DM.CAIXABAR = 'BAR') then
    begin
      btnCaixa.Enabled := False;
      btngravar.Enabled := False;
    end
    else
    begin
      btnCaixa.Enabled := True;
      btngravar.Enabled := True;
    end;
  end;
  sCaixaAberto.Close;
  if (cMesas.Active) then
     cMesas.Close;
  cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
  cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
  cMesas.Open;

  if (not cMesas.IsEmpty) then
  begin
    cMesas.First;
    if (cds_Mov_det.Active) then
        cds_Mov_det.Close;
    cds_Mov_det.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;
    fProcura_prod2.id_movimento := cMesasCODMOVIMENTO.AsInteger;
    EvDBFind1.SetFocus;
    if (cTotal.Active) then
      cTotal.Close;
    cTotal.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cTotal.Open;
  end;
  Edit5.Text := nome_user;
  peganomesuites;
  mostraSuites;
  if (DM.CAIXABAR = 'BAR') then
  begin
    pgSuites.Enabled := False;
    BitBtn6.Enabled := False;
    BitBtn3.Enabled := False;
    BitBtn2.Enabled := False;
    BitBtn1.Enabled := False;
  end;
end;

procedure TfControle.JvDBGrid1DblClick(Sender: TObject);
begin
    if (cds_Mov_det.Active) then
        cds_Mov_det.Close;
    cds_Mov_det.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;
    fProcura_prod2.id_movimento := cMesasCODMOVIMENTO.AsInteger;
    if (cTotal.Active) then
       cTotal.Close;
    cTotal.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cTotal.Open;
end;

procedure TfControle.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  valor := 0;
  if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfControle.btnCaixaClick(Sender: TObject);
var vUsercaixa, vAdm : string;
begin
  if (DM.CAIXABAR = 'BAR') then
    exit;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'USERCAIXA';
  dm.cds_parametro.Open;
  vUsercaixa := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTAADMINISTRADOR';
  dm.cds_parametro.Open;
  vAdm := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if ((fAtsAdmin.UserControlComercial.CurrentUser.Profile = StrToInt(vUsercaixa))
    or (fAtsAdmin.UserControlComercial.CurrentUser.Profile = StrToInt(vAdm))) then
  begin
    fMovCaixa.ShowModal;
    //Verifica Caixa
    if (sCaixa.Active) then
      sCaixa.Close;
    //sCaixa.Params[0].AsString := MICRO;
    sCaixa.Params[0].AsString := 'A'; //Caixa Aberto
    //sCaixa.Params[2].AsInteger := usulog;
    sCaixa.Open;
    if (Edit4.Text = '') then
      Edit4.Text := sCaixaNOMECAIXA.AsString;
    // Se caixa foi abero nesse Micro
    // Abilito os Botões
    if (not sCaixa.IsEmpty) then
    begin
      btnincluir.Enabled := True;
      btngravar.Enabled := True;
      btnExcluir.Enabled := True;
    end
  end
  else
  begin
     MessageDlg('Usuário sem permissão para usar o caixa.', mtWarning, [mbOK], 0);
     exit;
  end;
end;

procedure TfControle.btngravarClick(Sender: TObject);
begin
  // Verificar se é Colaborador
  if (DM.CAIXABAR = 'BAR') then
    exit;
  DM.varColaborador := '';
  if (sAtendente.Active) then
    sAtendente.Close;
  sAtendente.Params[0].AsString := cMesasNOMECLIENTE.AsString;
  sAtendente.Open;
  if (not sAtendente.IsEmpty) then
      DM.varColaborador := 'SIM';
  valordesconto;
  if (cMesasSTATUS.AsInteger = 2) then
  begin
    MessageDlg('Venda Cancelada.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (cVenda.Active) then
    cVenda.Close;
  cVenda.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
  cVenda.Open;
  if (cVenda.IsEmpty) then   //se venda não existir Inserir....
  begin
    if (cMesasCODNATUREZA.AsInteger <> 3) then
    begin
      populavenda;
      if (fCaixaReceber.cTitulo.Active) then
        fCaixaReceber.cTitulo.Close;
      fCaixaReceber.cTitulo.Params[0].AsInteger := cVendaCODVENDA.AsInteger;
      fCaixaReceber.cTitulo.Open;
      fCaixaReceber.ShowModal;
      fCaixaReceber.vPagou := '';
      if (cMesas.Active) then
         cMesas.Close;
      cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
      cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
      cMesas.Open;
    end
    else
    begin
      MessageDlg('Mesa / Comanda já Finalizada', mtError, [mbOK], 0);
      exit;
    end;
    EvDBFind1.SetFocus;
  end
  else // se a venda já existir abrir
  begin
    editavenda;
    statusdavenda := 'FINALIZADA';
    if (fCaixaReceber.cTitulo.Active) then
      fCaixaReceber.cTitulo.Close;
    fCaixaReceber.cTitulo.Params[0].AsInteger := cVendaCODVENDA.AsInteger;
    fCaixaReceber.cTitulo.Open;
    fCaixaReceber.ShowModal;
    statusdavenda := '';
    if (cMesas.Active) then
       cMesas.Close;
    cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
    cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
    cMesas.Open;
  end;
  cVenda.Close;
  RadioGroup1.ItemIndex := 0;
end;

procedure TfControle.EvDBFind1Change(Sender: TObject);
begin
    if (cds_Mov_det.Active) then
        cds_Mov_det.Close;
    cds_Mov_det.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;
    fProcura_prod2.id_movimento := cMesasCODMOVIMENTO.AsInteger;
   if (cTotal.Active) then
      cTotal.Close;
    cTotal.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cTotal.Open;
end;

procedure TfControle.RadioGroup1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (cMesas.Active) then
       cMesas.Close;
    cMesas.Params[0].AsInteger := 3; // Mesa / Comanda
    cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
    cMesas.Open;
    EvDBFind1.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (cMesas.Active) then
       cMesas.Close;
    cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
    cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
    cMesas.Open;
    EvDBFind1.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 2) then
  begin
    if (cMesas.Active) then
       cMesas.Close;
    cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
    cMesas.Params[1].AsInteger := 2; // Status 0 Pedido
    cMesas.Open;
    EvDBFind1.SetFocus;
  end;

   if (cTotal.Active) then
      cTotal.Close;
    cTotal.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cTotal.Open;

end;

procedure TfControle.populavenda;
var
    TD: TTransactionDesc;
    strSql : string;
    numTitulo : integer;
begin
    fCaixaReceber.cbCliente.Text := cMesasNOMECLIENTE.AsString;
    fCaixaReceber.edEmissao.Date := Now;
    fCaixaReceber.edVencimento.Date := Now;
    fCaixaReceber.edEntrada.Value := cVendaENTRADA.Value;
    fCaixaReceber.edValorPago.Value := cVendaENTRADA.Value;
    fCaixaReceber.edTotal.Value := cMesasTOTALMOVIMENTO.Value;
    fCaixaReceber.edComanda.Text := cMesasNOMECLIENTE.AsString;
    // Buscar o número do título na tabela SéRIE
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
    dm.cds_parametro.Open;
    if (sds_serie.Active) then
      sds_serie.Close;
    sds_serie.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + '''' + dm.cds_parametroDADOS.asString + '''';
    sds_serie.open;
    fCaixaReceber.edSerie.Text := sds_serie.Fields[0].AsString;
    fCaixaReceber.edtNF.Text := IntToStr(sds_serie.Fields[1].AsInteger + 1);
    sds_serie.Close;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    fCaixaReceber.EdMovimento.Text := IntToStr(cMesasCODMOVIMENTO.AsInteger);
    fCaixaReceber.EdCaixa.Text := Edit4.Text;
    fCaixaReceber.edCodCusto.Text := cMesasCODALMOXARIFADO.AsString;
    fCaixaReceber.EdUsuario.Text := nome_user;
    if (cMesas.Active) then
       cMesas.Close;
    cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
    cMesas.Open;
end;

procedure TfControle.editavenda;
var
    TD: TTransactionDesc;
    utilcrtitulo : Tutils;
begin
    fCaixaReceber.cbCliente.Text := cMesasNOMECLIENTE.AsString;
    fCaixaReceber.edEmissao.Date := cVendaDATAVENDA.AsDateTime;
    fCaixaReceber.edVencimento.Date := cVendaDATAVENCIMENTO.AsDateTime;
    fCaixaReceber.edEntrada.Value := cVendaENTRADA.Value;
    fCaixaReceber.edValorPago.Value := cVendaENTRADA.Value;
    fCaixaReceber.edTotal.Value := cMesasTOTALMOVIMENTO.Value;
    fCaixaReceber.edPorcento.Value := cVendaPORCENTAGENDESC.Value;
    fCaixaReceber.edDesconto.Value := cVendaDESCONTO.Value;
    fCaixaReceber.edComanda.Text := cMesasNOMECLIENTE.AsString;
    fCaixaReceber.edSerie.Text := cVendaSERIE.AsString;
    fCaixaReceber.edtNF.Text := IntToStr(cVendaNOTAFISCAL.AsInteger);
    fCaixaReceber.EdMovimento.Text := IntToStr(cVendaCODMOVIMENTO.AsInteger);
    fCaixaReceber.EdCaixa.Text := Edit4.Text;
    fCaixaReceber.edCodCusto.Text := cMesasCODALMOXARIFADO.AsString;
    fCaixaReceber.edTroco.Value := fCaixaReceber.edEntrada.Value - fCaixaReceber.edDesconto.Value - fCaixaReceber.edValorPago.Value;
    utilcrtitulo := Tutils.Create;
    fCaixaReceber.cbForma.ItemIndex := utilcrtitulo.retornaForma(cVendaFORMARECEBIMENTO.asString);
    fCaixaReceber.EdUsuario.Text := nome_user;
end;

procedure TfControle.BitBtn8Click(Sender: TObject);
var vUsercaixa, vAdm : string;
    idMovdet, id : integer;
begin
  if (not cMesas.Active) then
    exit;
  idMovdet := cds_Mov_detCODDETALHE.AsInteger;
  id := cds_Mov_detCODMOVIMENTO.AsInteger;
  fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
  if (cds_Mov_detSTATUS.AsString = 'S') then
  begin
    MessageDlg('Item já foi cancelado', mtWarning, [mbOK], 0);
    exit;
  end;
  usuautorizacao := 0;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTAADMINISTRADOR';
  dm.cds_parametro.Open;
  vAdm := dm.cds_parametroDADOS.AsString;
  if Dm.cds_parametro.Active then
  dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'AUTORIZACOMANDA';
  dm.cds_parametro.Open;
  vUsercaixa := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
    if ((fAtsAdmin.UserControlComercial.CurrentUser.Profile = StrToInt(vAdm)) or (fAtsAdmin.UserControlComercial.CurrentUser.Profile = StrToInt(vUsercaixa))) then
    begin
      if MessageDlg('Deseja realmente Cancelar esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
         if (cMovDet.Active) then
             cMovDet.Close;
         cMovDet.Params[0].AsInteger := idMovdet;
         cMovDet.Open;
         cMovDet.Edit;
         cMovDetCODAUTORIZACAO.AsInteger := usulog;
         cMovDetBAIXA.AsString := '0';
         cMovDetSTATUS.AsString := 'S'; //Cancelado
         cMovDet.ApplyUpdates(0);
         cMovDet.close;
         if (cds_Mov_det.Active) then
           cds_Mov_det.Close;
         cds_Mov_det.Params[0].AsInteger := id;
         cds_Mov_det.Open;
        {
         if (cds_Mov_det.State in [dsbrowse]) then
             cds_Mov_det.Edit;
         cds_Mov_detCODAUTORIZACAO.AsInteger := usulog;
         cds_Mov_detBAIXA.AsString := '0';
         cds_Mov_detSTATUS.AsString := 'S'; //Cancelado
         cds_Mov_det.ApplyUpdates(0);
         }
         atualizamesa;
      end;
    end //UserControl
    else
    begin // Solicito Autorização do Administrador
      fDlgLogin := TfDlgLogin.Create(Application);
      try
        fDlgLogin.ShowModal;
      finally
        fDlgLogin.free;
      end;
      fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
      if (sPermissao.Active) then
        sPermissao.Close;
      sPermissao.Params[0].AsInteger := usuautorizacao;
      sPermissao.Open;
      if ((sPermissaoUCPROFILE.AsInteger = StrToInt(vAdm)) or (sPermissaoUCPROFILE.AsInteger = StrToInt(vUsercaixa))) then
      begin
        if MessageDlg('Deseja realmente Cancelar esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
           if (cMovDet.Active) then
               cMovDet.Close;
           cMovDet.Params[0].AsInteger := idMovdet;
           cMovDet.Open;
           cMovDet.Edit;
           cMovDetCODAUTORIZACAO.AsInteger := usulog;
           cMovDetBAIXA.AsString := '0';
           cMovDetSTATUS.AsString := 'S'; //Cancelado
           cMovDet.ApplyUpdates(0);
           if (cds_Mov_det.Active) then
             cds_Mov_det.Close;
           cds_Mov_det.Params[0].AsInteger := id;
           cds_Mov_det.Open;
           cMovDet.close;
           {
           if (cds_Mov_det.State in [dsbrowse]) then
               cds_Mov_det.Edit;
           cds_Mov_detCODAUTORIZACAO.AsInteger := usulog;
           cds_Mov_detBAIXA.AsString := '0';
           cds_Mov_detSTATUS.AsString := 'S'; //Cancelado
           cds_Mov_det.ApplyUpdates(0);
           }
           atualizamesa;
        end;
        sPermissao.Close;
      end
      else
      begin
        MessageDlg('Usuario não tem permissão para '+#13+#10+'      executar essa operação', mtWarning, [mbOK], 0);
        sPermissao.Close;
        exit;
      end;
    end;
end;

procedure TfControle.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  if Column.Field = cds_Mov_detSTATUS then
   if ((cds_Mov_detSTATUS.AsString = 'S')) then
   begin
     DBGrid1.Canvas.Brush.Color := clRed; //$00FFEFDF;
     DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
     DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
   if ((cds_Mov_detPAGO.AsString = 'SIM')) then
   begin
     DBGrid1.Canvas.Brush.Color := $00FFEFDF;
     DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
     DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
  if Column.Field = cds_Mov_detVALORRATEIO then
   begin
     if ((not cds_Mov_detCODMOVRATEIO.IsNull)) then
         DBGrid1.Canvas.Font.Color := clBlue
     else
         DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfControle.atualizamesa;
var total, rateio : double;
begin
   if (sRateio.Active) then
      sRateio.Close;
   sRateio.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
   sRateio.Open;
   if (sRateio.IsEmpty) then
     rateio := 0
   else
     rateio := sRateioSUM.Value;
   if (cTotal.Active) then
      cTotal.Close;
    cTotal.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
    cTotal.Open;
    if (cTotal.IsEmpty) then
      total := 0
    else
      total := cTotaltotal.Value;
    if (rateio > 0) then
     total := total - rateio;
    if (cMesas.State in [dsBrowse]) then
       cMesas.Edit;
    cMesasTOTALMOVIMENTO.Value := total;
    cMesas.ApplyUpdates(0);
end;

procedure TfControle.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfControle.BitBtn6Click(Sender: TObject);
begin
  if (DM.CAIXABAR = 'BAR') then
    exit;

  if (cMesasSTATUS.AsInteger = 2) then
  begin
    MessageDlg('Venda Cancelada.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (cMesasCODNATUREZA.AsInteger = 3) then
  begin
    MessageDlg('Venda Finalizada.', mtWarning, [mbOK], 0);
    exit;
  end;

  fRatearConta.edComanda.Text := EvDBFind1.Text;
  fRatearConta.EdMovimento.Text := IntToStr(cMesasCODMOVIMENTO.AsInteger);
  fRatearConta.edtotal.value := cMesasTOTALMOVIMENTO.Value;
  fRatearConta.JvDBGrid1.Visible := True;
  fRatearConta.JvDBGrid2.Visible := False;
  fRatearConta.ShowModal;
  if (cMesas.Active) then
     cMesas.Close;
  cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
  cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
  cMesas.Open;
end;

procedure TfControle.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Field = cMesasVALORRATEIO then
  begin
     if ((cMesasVALORRATEIO.Value > 0) and (cMesasCODMOVRATEIO.Value > 0)) then
       JvDBGrid1.Canvas.Font.Color := clBlue
     else
       JvDBGrid1.Canvas.Font.Color := clRed;
     JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
  end;
end;

procedure TfControle.btnExcluirClick(Sender: TObject);
begin
  if (cMesasSTATUS.AsInteger = 2) then
  begin
    MessageDlg('Venda Cancelada.', mtWarning, [mbOK], 0);
    exit;
  end;
  // Verificar se tem permissão para cancelamento da venda
  usuautorizacao := 0;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTAADMINISTRADOR';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (fAtsAdmin.UserControlComercial.CurrentUser.Profile = StrToInt(dm.cds_parametroDADOS.AsString)) then
    begin
       cancelaMovimento;
    end
    else // Solicito Autorização do Administrador
    begin
      fDlgLogin := TfDlgLogin.Create(Application);
      try
        fDlgLogin.ShowModal;
      finally
        fDlgLogin.free;
      end;
      if (sitacao = 'Cancelou') then
        exit;
      fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
      if (sPermissao.Active) then
        sPermissao.Close;
      sPermissao.Params[0].AsInteger := usuautorizacao;
      sPermissao.Open;
      if (sPermissaoUCPROFILE.AsInteger = StrToInt(dm.cds_parametroDADOS.AsString)) then
        cancelaMovimento; // Se tiver Permissão
      sPermissao.Close;
    end; // Do usercontrol
  end; //do Parametro usa Administrador
  cVenda.Close;
  if (cMesas.Active) then
     cMesas.Close;
  cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
  cMesas.Params[1].AsInteger := 0; // Status 0 Pedido
  cMesas.Open;
  fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
end;

procedure TfControle.cancelaMovimento;
begin
  // Verificar se a venda ja existe
  if (cVenda.Active) then
    cVenda.Close;
  cVenda.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
  cVenda.Open;
  if (cVenda.IsEmpty) then   //se venda não existir Inserir....
  begin
    if MessageDlg('Deseja realmente Cancelar esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if (cMesas.State in [dsBrowse]) then
         cMesas.Edit;
      cMesasSTATUS.AsInteger := 2; // CANCELADO
      MessageDlg('Movimento Cancelado.', mtWarning, [mbOK], 0);
      cMesas.ApplyUpdates(0);
      EvDBFind1.SetFocus;
    end;
  end
  else // se a venda já existir abrir
  begin
    if (fCaixaReceber.cTitulo.Active) then
      fCaixaReceber.cTitulo.Close;
    fCaixaReceber.cTitulo.Params[0].AsInteger := cVendaCODVENDA.AsInteger;
    fCaixaReceber.cTitulo.Open;
    if (fCaixaReceber.cTitulo.IsEmpty) then
    begin
      MessageDlg('não é possivel efetuar o cancelamento, '+#13+#10+'         Venda já finalizada.', mtWarning, [mbOK], 0);
      Abort;
    end;
    cVenda.Delete;
    cVenda.ApplyUpdates(0);
    if (cMesas.State in [dsBrowse]) then
       cMesas.Edit;
    cMesasSTATUS.AsInteger := 2; // CANCELADO
    MessageDlg('Movimento Cancelado.', mtWarning, [mbOK], 0);
    cds_Movimento.ApplyUpdates(0);
  end;
end;

procedure TfControle.mostraSuites;
var I : INTEGER;
    sql_texto : string;
    ocupado, periodoencerrado  : Boolean;
    cor : TColor;
    data : string;
begin
  cor := clLime;
  I := 1;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTASUITES';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (cSuites.Active) then
      cSuites.Close;
    cSuites.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    cSuites.Open;
    cSuites.First;
    If (cMostraSuites.Active) Then
      cMostraSuites.Close;
    cMostraSuites.CommandText := '';
    sql_texto := 'select  movd.PERIODOINI, movd.PERIODOFIM, movd.CODALMOXARIFADO, prod.QTDE_PCT from MOVIMENTODETALHE movd ' +
        'inner join PRODUTOS prod on prod.CODPRODUTO=movd.CODPRODUTO ' +
        'where udf_IncMinute(movd.PERIODOINI, prod.QTDE_PCT) < ';
    data := FormatDateTime('mm/dd/yyyy hh:mm', Now);
    sql_texto := sql_texto + QuotedStr(data);
    sql_texto := sql_texto + ' and movd.PERIODOFIM is null ';
    cMostraSuites.CommandText := sql_texto;
    cMostraSuites.Open;

    if (not cOcupado.Active) then
      cOcupado.Open;
    while not cSuites.Eof do
    begin
       periodoencerrado := False;
       ocupado := False;
       if (cMostraSuites.Locate('CODALMOXARIFADO', cSuitesCODIGO.AsInteger, [loCaseInsensitive])) then
         periodoencerrado := True;
       if (cOcupado.Locate('CODALMOXARIFADO', cSuitesCODIGO.AsInteger, [loCaseInsensitive])) then
         ocupado := True;
       if (periodoencerrado = True) then
         cor := clRed
       else
         if (ocupado = True) then
           cor := clYellow;
       case I of
         1 : JvTransparentButton1.Color := cor;
         2 : JvTransparentButton2.Color := cor;
         3 : JvTransparentButton3.Color := cor;
         4 : JvTransparentButton4.Color := cor;
         5 : JvTransparentButton5.Color := cor;
         6 : JvTransparentButton6.Color := cor;
         7 : JvTransparentButton7.Color := cor;
         8 : JvTransparentButton8.Color := cor;
         9 : JvTransparentButton9.Color := cor;
        10 : JvTransparentButton10.Color := cor;
        11 : JvTransparentButton11.Color := cor;
        12 : JvTransparentButton12.Color := cor;
        13 : JvTransparentButton13.Color := cor;
        14 : JvTransparentButton14.Color := cor;
        15 : JvTransparentButton15.Color := cor;
        16 : JvTransparentButton16.Color := cor;
        17 : JvTransparentButton17.Color := cor;
        18 : JvTransparentButton18.Color := cor;
       end;
       Refresh;
        I := I + 1;
        cor := clLime;
        cSuites.Next;
    end;
    cOcupado.Close;
    cSuites.Close;
  end;

end;

procedure TfControle.Timer1Timer(Sender: TObject);
begin
  mostraSuites;
end;

procedure TfControle.peganomesuites;
var I : integer;
begin
  I := 1;
  //------Pego do Parametro o cadigo para listar os Caixas ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTASUITES';
  dm.cds_parametro.Open;
  sBuscaSuite.Close;
  sBuscaSuite.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  sBuscaSuite.Open;
  sBuscaSuite.First;
  while not (sBuscaSuite.Eof) do
  begin
       case I of
         1 : JvTransparentButton1.Caption := sBuscaSuiteNOME.AsString;
         2 : JvTransparentButton2.Caption := sBuscaSuiteNOME.AsString;
         3 : JvTransparentButton3.Caption := sBuscaSuiteNOME.AsString;
         4 : JvTransparentButton4.Caption := sBuscaSuiteNOME.AsString;
         5 : JvTransparentButton5.Caption := sBuscaSuiteNOME.AsString;
         6 : JvTransparentButton6.Caption := sBuscaSuiteNOME.AsString;
         7 : JvTransparentButton7.Caption := sBuscaSuiteNOME.AsString;
         8 : JvTransparentButton8.Caption := sBuscaSuiteNOME.AsString;
         9 : JvTransparentButton9.Caption := sBuscaSuiteNOME.AsString;
        10 : JvTransparentButton10.Caption := sBuscaSuiteNOME.AsString;
        11 : JvTransparentButton11.Caption := sBuscaSuiteNOME.AsString;
        12 : JvTransparentButton12.Caption := sBuscaSuiteNOME.AsString;
        13 : JvTransparentButton13.Caption := sBuscaSuiteNOME.AsString;
        14 : JvTransparentButton14.Caption := sBuscaSuiteNOME.AsString;
        15 : JvTransparentButton15.Caption := sBuscaSuiteNOME.AsString;
        16 : JvTransparentButton16.Caption := sBuscaSuiteNOME.AsString;
        17 : JvTransparentButton17.Caption := sBuscaSuiteNOME.AsString;
        18 : JvTransparentButton18.Caption := sBuscaSuiteNOME.AsString;
       end;
       Refresh;
     sBuscaSuite.Next;
     I := I + 1;
  end;
end;

procedure TfControle.JvTransparentButton1Click(Sender: TObject);
begin
  botao := JvTransparentButton1.Caption;
  corbotao := JvTransparentButton1.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton2Click(Sender: TObject);
begin
  botao := JvTransparentButton2.Caption;
  corbotao := JvTransparentButton2.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton3Click(Sender: TObject);
begin
  botao := JvTransparentButton3.Caption;
  corbotao := JvTransparentButton3.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton4Click(Sender: TObject);
begin
  botao := JvTransparentButton4.Caption;
  corbotao := JvTransparentButton4.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton5Click(Sender: TObject);
begin
  botao := JvTransparentButton5.Caption;
  corbotao := JvTransparentButton5.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton6Click(Sender: TObject);
begin
  botao := JvTransparentButton6.Caption;
  corbotao := JvTransparentButton6.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton7Click(Sender: TObject);
begin
  botao := JvTransparentButton7.Caption;
  corbotao := JvTransparentButton7.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton8Click(Sender: TObject);
begin
  botao := JvTransparentButton8.Caption;
  corbotao := JvTransparentButton8.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton9Click(Sender: TObject);
begin
  botao := JvTransparentButton9.Caption;
  corbotao := JvTransparentButton9.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton10Click(Sender: TObject);
begin
  botao := JvTransparentButton10.Caption;
  corbotao := JvTransparentButton10.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton11Click(Sender: TObject);
begin
  botao := JvTransparentButton11.Caption;
  corbotao := JvTransparentButton11.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.JvTransparentButton12Click(Sender: TObject);
begin
  botao := JvTransparentButton12.Caption;
  corbotao := JvTransparentButton12.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

procedure TfControle.BitBtn1Click(Sender: TObject);
begin
  if (DM.CAIXABAR = 'BAR') then
    exit;

  fFrequencia := TfFrequencia.Create(Application);
  try
    fFrequencia.ShowModal;
  finally
    fFrequencia.free;
  end;
end;

procedure TfControle.valordesconto;
var desconto : double;
begin
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VALORCOMANDA';
  dm.cds_parametro.Open;

  desconto := StrToFloat(dm.cds_parametroD2.AsString);
  dm.cds_parametro.Close;
  
  fCaixaReceber.vComDesconto := 0;
  cds_Mov_det.First;
  while not cds_Mov_det.Eof do
  begin
      if ((cds_Mov_detGERADESCONTO.AsString = 'S') and (cds_Mov_detSTATUS.AsString <> 'S')) then
          fCaixaReceber.vComDesconto := fCaixaReceber.vComDesconto + cds_Mov_detValorTotal.Value;
      cds_Mov_det.Next;
  end;
  if (fCaixaReceber.vComDesconto > cMesasTOTALMOVIMENTO.Value) then
     fCaixaReceber.vComDesconto := 0;
  if (fCaixaReceber.vComDesconto > desconto) then
     fCaixaReceber.vComDesconto := desconto;

  cds_Mov_det.First;
  while not cds_Mov_det.Eof do
  begin
      if ((cds_Mov_detPAGO.AsString = 'SIM') and (cds_Mov_detSTATUS.AsString <> 'S')) then
      begin
        fCaixaReceber.vComDesconto := fCaixaReceber.vComDesconto + cds_Mov_detValorTotal.Value;
        fCaixaReceber.vPagou := 'SIM';
      end;  
      cds_Mov_det.Next;
  end;

end;

procedure TfControle.BitBtn2Click(Sender: TObject);
begin
  if (DM.CAIXABAR = 'BAR') then
    exit;

  fRelComissao.ShowModal;
end;

procedure TfControle.BitBtn3Click(Sender: TObject);
var
  mesa : string;
begin
  mesa := EvDBFind1.Text;
  if (cMesas.Active) then
    cMesas.Close;
  cMesas.Open;
  cMesas.Locate('NOMECLIENTE', mesa, [loCaseInsensitive]);
//  EvDBFind1.Text := mesa;
  if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
  cds_Mov_det.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
  cds_Mov_det.Open;
  fProcura_prod2.id_movimento := cMesasCODMOVIMENTO.AsInteger;
  if (cTotal.Active) then
     cTotal.Close;
  cTotal.Params[0].AsInteger := cMesasCODMOVIMENTO.AsInteger;
  cTotal.Open;
  cMesas.Locate('NOMECLIENTE', mesa, [loCaseInsensitive]);
  //EvDBFind1.SetFocus;
  EvDBFind1.Text := mesa;
end;

procedure TfControle.Timer2Timer(Sender: TObject);
begin
  BitBtn3.Click;
end;

procedure TfControle.JvTransparentButton13Click(Sender: TObject);
begin
  botao := JvTransparentButton13.Caption;
  corbotao := JvTransparentButton13.Color;
  if (corbotao = clRed) then
    fMostraSuites.ShowModal;
  atualizamesa;
end;

end.
