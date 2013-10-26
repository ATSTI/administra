unit U_ORDEMSERV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvDBControls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Mask, DBCtrls, JvExStdCtrls, JvGroupBox, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TF_ORDEMSERV = class(TForm)
    MMJPanel5: TMMJPanel;
    btn_cancelar: TBitBtn;
    btn_gravar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_incluir: TBitBtn;
    btn4: TBitBtn;
    btn12: TBitBtn;
    btn_sair: TBitBtn;
    MMJPanel1: TMMJPanel;
    lbl1: TLabel;
    JvGroupBox3: TJvGroupBox;
    lbl6: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl12: TLabel;
    lbl35: TLabel;
    dbedtMARCA_MODELO1: TDBEdit;
    btn11: TBitBtn;
    dbedt16: TDBEdit;
    dbedt17: TDBEdit;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    JvGroupBox8: TJvGroupBox;
    JvDBGrid5: TJvDBGrid;
    JvGroupBox2: TJvGroupBox;
    JvDBGrid1: TJvDBGrid;
    dbedt10: TDBEdit;
    lbl11: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    lbl14: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    lbl15: TLabel;
    dbedt13: TDBEdit;
    lbl16: TLabel;
    JvGroupBox1: TJvGroupBox;
    JvDBGrid3: TJvDBGrid;
    s_movdet: TSQLDataSet;
    p_movdet: TDataSetProvider;
    ds_movdet: TClientDataSet;
    d_movdet: TDataSource;
    s_DetPecas: TSQLDataSet;
    p_DetPecas: TDataSetProvider;
    c_DetPecas: TClientDataSet;
    d_DetPecas: TDataSource;
    s_DetPecasCODDETALHE: TIntegerField;
    s_DetPecasCODMOVIMENTO: TIntegerField;
    s_DetPecasCODPRODUTO: TIntegerField;
    s_DetPecasICMS: TFloatField;
    s_DetPecasPRECO: TFloatField;
    s_DetPecasQUANTIDADE: TFloatField;
    s_DetPecasQTDE_ALT: TFloatField;
    s_DetPecasUN: TStringField;
    s_DetPecasBAIXA: TStringField;
    s_DetPecasCONTROLE: TSmallintField;
    s_DetPecasCOD_COMISSAO: TIntegerField;
    s_DetPecasVALTOTAL: TFloatField;
    s_DetPecasDESCPRODUTO: TStringField;
    s_DetPecasCODPRO: TStringField;
    s_DetPecasPRODUTO: TStringField;
    s_DetPecasCODALMOXARIFADO: TIntegerField;
    s_DetPecasVALORUNITARIOATUAL: TFloatField;
    s_DetPecasQTDE_PCT: TFloatField;
    s_DetPecasALMOXARIFADO: TStringField;
    s_DetPecasCONTA_DESPESA: TStringField;
    s_DetPecasCOD_BARRA: TStringField;
    s_DetPecasLOCALIZACAO: TStringField;
    s_DetPecasESTOQUEATUAL: TFloatField;
    c_DetPecasCODDETALHE: TIntegerField;
    c_DetPecasCODMOVIMENTO: TIntegerField;
    c_DetPecasCODPRODUTO: TIntegerField;
    c_DetPecasICMS: TFloatField;
    c_DetPecasPRECO: TFloatField;
    c_DetPecasQUANTIDADE: TFloatField;
    c_DetPecasQTDE_ALT: TFloatField;
    c_DetPecasUN: TStringField;
    c_DetPecasBAIXA: TStringField;
    c_DetPecasCONTROLE: TSmallintField;
    c_DetPecasCOD_COMISSAO: TIntegerField;
    c_DetPecasVALTOTAL: TFloatField;
    c_DetPecasDESCPRODUTO: TStringField;
    c_DetPecasCODPRO: TStringField;
    c_DetPecasPRODUTO: TStringField;
    c_DetPecasCODALMOXARIFADO: TIntegerField;
    c_DetPecasVALORUNITARIOATUAL: TFloatField;
    c_DetPecasQTDE_PCT: TFloatField;
    c_DetPecasALMOXARIFADO: TStringField;
    c_DetPecasCONTA_DESPESA: TStringField;
    c_DetPecasCOD_BARRA: TStringField;
    c_DetPecasLOCALIZACAO: TStringField;
    c_DetPecasESTOQUEATUAL: TFloatField;
    s_movdetCODDETALHE: TIntegerField;
    s_movdetCODMOVIMENTO: TIntegerField;
    s_movdetCODPRODUTO: TIntegerField;
    s_movdetICMS: TFloatField;
    s_movdetPRECO: TFloatField;
    s_movdetQUANTIDADE: TFloatField;
    s_movdetQTDE_ALT: TFloatField;
    s_movdetUN: TStringField;
    s_movdetBAIXA: TStringField;
    s_movdetCONTROLE: TSmallintField;
    s_movdetCOD_COMISSAO: TIntegerField;
    s_movdetVALTOTAL: TFloatField;
    s_movdetDESCPRODUTO: TStringField;
    s_movdetCODPRO: TStringField;
    s_movdetPRODUTO: TStringField;
    s_movdetCODALMOXARIFADO: TIntegerField;
    s_movdetVALORUNITARIOATUAL: TFloatField;
    s_movdetQTDE_PCT: TFloatField;
    s_movdetALMOXARIFADO: TStringField;
    s_movdetCONTA_DESPESA: TStringField;
    s_movdetCOD_BARRA: TStringField;
    s_movdetLOCALIZACAO: TStringField;
    s_movdetESTOQUEATUAL: TFloatField;
    ds_movdetCODDETALHE: TIntegerField;
    ds_movdetCODMOVIMENTO: TIntegerField;
    ds_movdetCODPRODUTO: TIntegerField;
    ds_movdetICMS: TFloatField;
    ds_movdetPRECO: TFloatField;
    ds_movdetQUANTIDADE: TFloatField;
    ds_movdetQTDE_ALT: TFloatField;
    ds_movdetUN: TStringField;
    ds_movdetBAIXA: TStringField;
    ds_movdetCONTROLE: TSmallintField;
    ds_movdetCOD_COMISSAO: TIntegerField;
    ds_movdetVALTOTAL: TFloatField;
    ds_movdetDESCPRODUTO: TStringField;
    ds_movdetCODPRO: TStringField;
    ds_movdetPRODUTO: TStringField;
    ds_movdetCODALMOXARIFADO: TIntegerField;
    ds_movdetVALORUNITARIOATUAL: TFloatField;
    ds_movdetQTDE_PCT: TFloatField;
    ds_movdetALMOXARIFADO: TStringField;
    ds_movdetCONTA_DESPESA: TStringField;
    ds_movdetCOD_BARRA: TStringField;
    ds_movdetLOCALIZACAO: TStringField;
    ds_movdetESTOQUEATUAL: TFloatField;
    s_movdetCOD_FUNCIONARIO: TIntegerField;
    s_movdetSTATUS: TStringField;
    s_movdetOBS: TStringField;
    s_movdetNOME_FUNCIONARIO: TStringField;
    ds_movdetCOD_FUNCIONARIO: TIntegerField;
    ds_movdetSTATUS: TStringField;
    ds_movdetOBS: TStringField;
    ds_movdetNOME_FUNCIONARIO: TStringField;
    s_movdetPERIODOINI: TSQLTimeStampField;
    s_movdetPERIODOFIM: TSQLTimeStampField;
    ds_movdetPERIODOINI: TSQLTimeStampField;
    ds_movdetPERIODOFIM: TSQLTimeStampField;
    lbl5: TLabel;
    dbedtPLACA: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ORDEMSERV: TF_ORDEMSERV;

implementation

{$R *.dfm}

end.
