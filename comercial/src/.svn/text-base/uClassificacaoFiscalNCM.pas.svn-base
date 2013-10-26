unit uClassificacaoFiscalNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, Provider, DBClient, DB, SqlExpr, Menus,
  XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask,
  DBCtrls;

type
  TfClassificacaoFiscalNCM = class(TfPai_new)
    sdsClassFisc: TSQLDataSet;
    cdsClassFisc: TClientDataSet;
    dspClassFisc: TDataSetProvider;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    BitBtn1: TBitBtn;
    gbProduto: TGroupBox;
    btnExecutaCopia: TBitBtn;
    sdsNCMCopia: TSQLDataSet;
    dspNCMCopia: TDataSetProvider;
    cdsNCMCopia: TClientDataSet;
    Label19: TLabel;
    edNCM: TEdit;
    sqlTestaSeExiste: TSQLQuery;
    sqlTestaSeExisteCOUNT: TIntegerField;
    sdsClassFiscNCM: TStringField;
    sdsClassFiscCFOP: TStringField;
    sdsClassFiscUF: TStringField;
    sdsClassFiscCODFISCAL: TStringField;
    sdsClassFiscICMS_SUBST: TFloatField;
    sdsClassFiscICMS_SUBST_IC: TFloatField;
    sdsClassFiscICMS_SUBST_IND: TFloatField;
    sdsClassFiscICMS: TFloatField;
    sdsClassFiscICMS_BASE: TFloatField;
    sdsClassFiscCST: TStringField;
    sdsClassFiscIPI: TFloatField;
    sdsClassFiscCSOSN: TStringField;
    sdsClassFiscCSTIPI: TStringField;
    sdsClassFiscCSTPIS: TStringField;
    sdsClassFiscCSTCOFINS: TStringField;
    sdsClassFiscPIS: TFloatField;
    sdsClassFiscCOFINS: TFloatField;
    cdsClassFiscNCM: TStringField;
    cdsClassFiscCFOP: TStringField;
    cdsClassFiscUF: TStringField;
    cdsClassFiscCODFISCAL: TStringField;
    cdsClassFiscICMS_SUBST: TFloatField;
    cdsClassFiscICMS_SUBST_IC: TFloatField;
    cdsClassFiscICMS_SUBST_IND: TFloatField;
    cdsClassFiscICMS: TFloatField;
    cdsClassFiscICMS_BASE: TFloatField;
    cdsClassFiscCST: TStringField;
    cdsClassFiscIPI: TFloatField;
    cdsClassFiscCSOSN: TStringField;
    cdsClassFiscCSTIPI: TStringField;
    cdsClassFiscCSTPIS: TStringField;
    cdsClassFiscCSTCOFINS: TStringField;
    cdsClassFiscPIS: TFloatField;
    cdsClassFiscCOFINS: TFloatField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label20: TLabel;
    sdsNCMCopiaNCM: TStringField;
    sdsNCMCopiaCFOP: TStringField;
    sdsNCMCopiaUF: TStringField;
    sdsNCMCopiaCODFISCAL: TStringField;
    sdsNCMCopiaICMS_SUBST: TFloatField;
    sdsNCMCopiaICMS_SUBST_IC: TFloatField;
    sdsNCMCopiaICMS_SUBST_IND: TFloatField;
    sdsNCMCopiaICMS: TFloatField;
    sdsNCMCopiaICMS_BASE: TFloatField;
    sdsNCMCopiaCST: TStringField;
    sdsNCMCopiaIPI: TFloatField;
    sdsNCMCopiaCSOSN: TStringField;
    sdsNCMCopiaCSTIPI: TStringField;
    sdsNCMCopiaCSTPIS: TStringField;
    sdsNCMCopiaCSTCOFINS: TStringField;
    sdsNCMCopiaPIS: TFloatField;
    sdsNCMCopiaCOFINS: TFloatField;
    cdsNCMCopiaNCM: TStringField;
    cdsNCMCopiaCFOP: TStringField;
    cdsNCMCopiaUF: TStringField;
    cdsNCMCopiaCODFISCAL: TStringField;
    cdsNCMCopiaICMS_SUBST: TFloatField;
    cdsNCMCopiaICMS_SUBST_IC: TFloatField;
    cdsNCMCopiaICMS_SUBST_IND: TFloatField;
    cdsNCMCopiaICMS: TFloatField;
    cdsNCMCopiaICMS_BASE: TFloatField;
    cdsNCMCopiaCST: TStringField;
    cdsNCMCopiaIPI: TFloatField;
    cdsNCMCopiaCSOSN: TStringField;
    cdsNCMCopiaCSTIPI: TStringField;
    cdsNCMCopiaCSTPIS: TStringField;
    cdsNCMCopiaCSTCOFINS: TStringField;
    cdsNCMCopiaPIS: TFloatField;
    cdsNCMCopiaCOFINS: TFloatField;
    sdsTFiscal: TSQLDataSet;
    sdsTFiscalCODFISCAL: TStringField;
    sdsTFiscalDESCRICAO: TStringField;
    dspTFiscal: TDataSetProvider;
    cdsTFiscal: TClientDataSet;
    cdsTFiscalCODFISCAL: TStringField;
    cdsTFiscalDESCRICAO: TStringField;
    DtSrcTFiscal: TDataSource;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    sdsClassFiscORIGEM: TIntegerField;
    cdsClassFiscORIGEM: TIntegerField;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExecutaCopiaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
  ncm, cfop, uf, tipofiscal :String;
    { Public declarations }
  end;

var
  fClassificacaoFiscalNCM: TfClassificacaoFiscalNCM;

implementation

uses UDm, sCtrlResize;

{$R *.dfm}

procedure TfClassificacaoFiscalNCM.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsClassFiscNCM.AsString := ncm;
  DBEdit2.SetFocus;
end;

procedure TfClassificacaoFiscalNCM.FormShow(Sender: TObject);
begin
  if (not cdsTFiscal.Active) then
    cdsTFiscal.Open;
  if(cdsClassFisc.Active) then
    cdsClassFisc.Close;
  cdsClassFisc.Params.ParamByName('pNCM').AsString := ncm;
  cdsClassFisc.open;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFiscalNCM.btnGravarClick(Sender: TObject);
var str:string;
begin
  DecimalSeparator := '.';
  try
    if (cdsClassFisc.State in [dsEdit]) then
    Begin
      str := 'Update ClassificacaoFiscalNCM set';
      str := str + ' CFOP = ' + QuotedStr(cdsClassFiscCFOP.AsString);
      str := str + ', UF = ' + QuotedStr(cdsClassFiscUF.AsString);
      str := str + ', ICMS_SUBST = ' + FloatToStr(cdsClassFiscICMS_SUBST.AsFloat);
      str := str + ', ICMS_SUBST_IC = ' + FloatToStr(cdsClassFiscICMS_SUBST_IC.AsFloat);
      str := str + ', ICMS_SUBST_IND = ' + FloatToStr(cdsClassFiscICMS_SUBST_IND.AsFloat);
      str := str + ', ICMS = ' + FloatToStr(cdsClassFiscICMS.AsFloat);
      str := str + ', ICMS_BASE = ' + FloatToStr(cdsClassFiscICMS_BASE.AsFloat);
      str := str + ', CST = ' + QuotedStr(cdsClassFiscCST.AsString);
      str := str + ', CSOSN = ' + QuotedStr(cdsClassFiscCSOSN.AsString);
      str := str + ', IPI = ' + FloatToStr(cdsClassFiscIPI.AsFloat);
      str := str + ', CSTIPI = ' + QuotedStr(cdsClassFiscCSTIPI.AsString);
      str := str + ', CSTPIS = ' + QuotedStr(cdsClassFiscCSTPIS.AsString);
      str := str + ', CSTCOFINS = ' + QuotedStr(cdsClassFiscCSTCOFINS.AsString);
      str := str + ', PIS = ' + FloatToStr(cdsClassFiscPIS.AsFloat);
      str := str + ', COFINS = ' + FloatToStr(cdsClassFiscCOFINS.AsFloat);
      str := str + ', CODFISCAL = ' + QuotedStr(cdsClassFiscCODFISCAL.AsString);

      str := str + ' WHERE NCM = ' + QuotedStr(cdsClassFiscNCM.AsString);
      str := str + ' AND CFOP = ' + QuotedStr(CFOP);
      str := str + ' AND UF = ' + QuotedStr(UF);
      str := str + ' AND CODFISCAL = ' + QuotedStr(tipofiscal);
      dm.sqlsisAdimin.ExecuteDirect(str);
      DecimalSeparator := ',';
      inherited;
    end
    else
      inherited;
  finally
    DecimalSeparator := ',';
  end;
end;

procedure TfClassificacaoFiscalNCM.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFiscalNCM.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFiscalNCM.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFiscalNCM.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFiscalNCM.btnExcluirClick(Sender: TObject);
var str: string;
begin
  inherited;
  str := 'DELETE FROM ClassificacaoFiscalNCM ';
  str := str + ' WHERE NCM = ' + QuotedStr(cdsClassFiscNCM.AsString);
  str := str + ' AND CFOP = ' + QuotedStr(CFOP);
  str := str + ' AND UF = ' + QuotedStr(UF);
  str := str + ' AND CODFISCAL = ' + QuotedStr(UF);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfClassificacaoFiscalNCM.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (gbProduto.Visible = True) then
    gbProduto.Visible := False
  else
    gbProduto.Visible := True;
end;

procedure TfClassificacaoFiscalNCM.btnExecutaCopiaClick(
  Sender: TObject);
begin
  inherited;
  
  gbProduto.Visible := False;
  MessageDlg('Finalizado com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfClassificacaoFiscalNCM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (cdsTFiscal.Active) then
      cdsTFiscal.Close;
end;

procedure TfClassificacaoFiscalNCM.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsEdit]) then
    tipofiscal := cdsClassFiscCODFISCAL.AsString;
end;

end.
