unit uClassificacaoFiscalNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, Provider, DBClient, DB, SqlExpr, Menus,
  XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask,
  DBCtrls, dxCore, dxButton, dbxpress;

type
  TfClassificacaoFiscalNCM = class(TfPai_new)
    sdsClassFisc: TSQLDataSet;
    cdsClassFisc: TClientDataSet;
    dspClassFisc: TDataSetProvider;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    gbProduto: TGroupBox;
    btnExecutaCopia: TBitBtn;
    sdsNCMCopia: TSQLDataSet;
    dspNCMCopia: TDataSetProvider;
    cdsNCMCopia: TClientDataSet;
    Label19: TLabel;
    edNCM: TEdit;
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
    sdsClassFiscORIGEM: TIntegerField;
    cdsClassFiscORIGEM: TIntegerField;
    GroupBox1: TGroupBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    sqlTestaSeExiste: TSQLQuery;
    sqlTestaSeExisteCOUNT: TIntegerField;
    Label21: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    panelAjuda: TPanel;
    Memo1: TMemo;
    sdsClassFiscDADOSADC1: TStringField;
    sdsClassFiscDADOSADC2: TStringField;
    sdsClassFiscDADOSADC3: TStringField;
    sdsClassFiscDADOSADC4: TStringField;
    sdsClassFiscDADOSADC5: TStringField;
    sdsClassFiscDADOSADC6: TStringField;
    cdsClassFiscDADOSADC1: TStringField;
    cdsClassFiscDADOSADC2: TStringField;
    cdsClassFiscDADOSADC3: TStringField;
    cdsClassFiscDADOSADC4: TStringField;
    cdsClassFiscDADOSADC5: TStringField;
    cdsClassFiscDADOSADC6: TStringField;
    Label17: TLabel;
    dxButton11: TdxButton;
    Label22: TLabel;
    DBEdit24: TDBEdit;
    sdsClassFiscALIQ_CUPOM: TStringField;
    cdsClassFiscALIQ_CUPOM: TStringField;
    sdsNCMCopiaORIGEM: TIntegerField;
    sdsNCMCopiaDADOSADC1: TStringField;
    sdsNCMCopiaDADOSADC2: TStringField;
    sdsNCMCopiaDADOSADC3: TStringField;
    sdsNCMCopiaDADOSADC4: TStringField;
    sdsNCMCopiaDADOSADC5: TStringField;
    sdsNCMCopiaDADOSADC6: TStringField;
    sdsNCMCopiaALIQ_CUPOM: TStringField;
    cdsNCMCopiaORIGEM: TIntegerField;
    cdsNCMCopiaDADOSADC1: TStringField;
    cdsNCMCopiaDADOSADC2: TStringField;
    cdsNCMCopiaDADOSADC3: TStringField;
    cdsNCMCopiaDADOSADC4: TStringField;
    cdsNCMCopiaDADOSADC5: TStringField;
    cdsNCMCopiaDADOSADC6: TStringField;
    cdsNCMCopiaALIQ_CUPOM: TStringField;
    sdsClassFiscVBCUFDEST: TFloatField;
    sdsClassFiscPFCPUFDEST: TFloatField;
    sdsClassFiscPICMSUFDEST: TFloatField;
    sdsClassFiscPICMSINTER: TFloatField;
    sdsClassFiscPICMSINTERPART: TFloatField;
    sdsClassFiscVFCPUFDEST: TFloatField;
    sdsClassFiscVICMSUFDEST: TFloatField;
    sdsClassFiscVICMSUFREMET: TFloatField;
    sdsClassFiscCST_IPI_CENQ: TStringField;
    cdsClassFiscVBCUFDEST: TFloatField;
    cdsClassFiscPFCPUFDEST: TFloatField;
    cdsClassFiscPICMSUFDEST: TFloatField;
    cdsClassFiscPICMSINTER: TFloatField;
    cdsClassFiscPICMSINTERPART: TFloatField;
    cdsClassFiscVFCPUFDEST: TFloatField;
    cdsClassFiscVICMSUFDEST: TFloatField;
    cdsClassFiscVICMSUFREMET: TFloatField;
    cdsClassFiscCST_IPI_CENQ: TStringField;
    Label42: TLabel;
    Label43: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label23: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit27: TDBEdit;
    Label26: TLabel;
    sdsClassFiscREDBASEIPI: TFloatField;
    sdsClassFiscREDBASEPIS: TFloatField;
    sdsClassFiscREDBASECOFINS: TFloatField;
    cdsClassFiscREDBASEIPI: TFloatField;
    cdsClassFiscREDBASEPIS: TFloatField;
    cdsClassFiscREDBASECOFINS: TFloatField;
    Label27: TLabel;
    DBEdit28: TDBEdit;
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
    procedure Label12Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure cdsClassFiscNewRecord(DataSet: TDataSet);
    procedure dxButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
  ncm, cfop, uf, tipofiscal :String;
    { Public declarations }
  end;

var
  fClassificacaoFiscalNCM: TfClassificacaoFiscalNCM;

implementation

uses UDm, sCtrlResize, uTributosInfo;

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
  TDA: TTransactionDesc;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    TDA.TransactionID  := 1;
    TDA.IsolationLevel := xilREADCOMMITTED;
    DecimalSeparator := '.';
    if (cdsClassFisc.State in [dsEdit]) then
    Begin
      dm.sqlsisAdimin.StartTransaction(TDA);
      try
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
        str := str + ', ALIQ_CUPOM = ' + QuotedStr(cdsClassFiscALIQ_CUPOM.AsString);
        str := str + ', DADOSADC1 = ' + QuotedStr(cdsClassFiscDADOSADC1.AsString);
        str := str + ', DADOSADC2 = ' + QuotedStr(cdsClassFiscDADOSADC2.AsString);
        str := str + ', DADOSADC3 = ' + QuotedStr(cdsClassFiscDADOSADC3.AsString);
        str := str + ', DADOSADC4 = ' + QuotedStr(cdsClassFiscDADOSADC4.AsString);
        str := str + ', DADOSADC5 = ' + QuotedStr(cdsClassFiscDADOSADC5.AsString);
        str := str + ', DADOSADC6 = ' + QuotedStr(cdsClassFiscDADOSADC6.AsString);
        str := str + ', ORIGEM = ' + IntToStr(cdsClassFiscORIGEM.AsInteger);
        str := str + ', CST_IPI_CENQ = ' + QuotedStr(cdsClassFiscCST_IPI_CENQ.AsString);
        str := str + ', VBCUFDEST = ' + FloatToStr(cdsClassFiscVBCUFDEST.AsFloat);
        str := str + ', PFCPUFDEST = ' + FloatToStr(cdsClassFiscPFCPUFDEST.AsFloat);
        str := str + ', PICMSUFDEST = ' + FloatToStr(cdsClassFiscPICMSUFDEST.AsFloat);
        str := str + ', PICMSINTER = ' + FloatToStr(cdsClassFiscPICMSINTER.AsFloat);
        str := str + ', PICMSINTERPART = ' + FloatToStr(cdsClassFiscPICMSINTERPART.AsFloat);
        str := str + ', VFCPUFDEST = ' + FloatToStr(cdsClassFiscVFCPUFDEST.AsFloat);
        str := str + ', VICMSUFDEST = ' + FloatToStr(cdsClassFiscVICMSUFDEST.AsFloat);
        str := str + ', VICMSUFREMET = ' + FloatToStr(cdsClassFiscVICMSUFREMET.AsFloat);
        str := str + ', REDBASEPIS = ' + FloatToStr(cdsClassFiscREDBASEPIS.AsFloat);
        str := str + ', REDBASECOFINS = ' + FloatToStr(cdsClassFiscREDBASECOFINS.AsFloat);
        str := str + ', REDBASEIPI = ' + FloatToStr(cdsClassFiscREDBASEIPI.AsFloat);
        str := str + ' WHERE NCM = ' + QuotedStr(cdsClassFiscNCM.AsString);
        str := str + ' AND CFOP = ' + QuotedStr(CFOP);
        str := str + ' AND UF = ' + QuotedStr(UF);
        str := str + ' AND CODFISCAL = ' + QuotedStr(tipofiscal);
        dm.sqlsisAdimin.ExecuteDirect(str);
        DecimalSeparator := ',';
        dm.sqlsisAdimin.Commit(TDA);
        if (cdsTFiscal.Active) then
          cdsTFiscal.Close;
        cdsTFiscal.Open;
        if(cdsClassFisc.Active) then
          cdsClassFisc.Close;
        cdsClassFisc.Params.ParamByName('pNCM').AsString := ncm;
        cdsClassFisc.open;
      except
        on E : Exception do
        begin
          DecimalSeparator := ',';
          dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
        end;
      end;
    end
  else
    inherited;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
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

procedure TfClassificacaoFiscalNCM.Label12Click(Sender: TObject);
begin
  inherited;
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('TABELA I');
    Memo1.Lines.Add('CÓDIGO DA SITUAÇÃO TRIBUTÁRIA REFERENTE AO IMPOSTO SOBRE ');
    Memo1.Lines.Add('PRODUTOS INDUSTRIALIZADOS (CST-IPI):');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('00 Entrada com Recuperação de Crédito');
    Memo1.Lines.Add('01 Entrada Tributável com Alíquota Zero');
    Memo1.Lines.Add('02 Entrada Isenta');
    Memo1.Lines.Add('03 Entrada Não-Tributada');
    Memo1.Lines.Add('04 Entrada Imune');
    Memo1.Lines.Add('05 Entrada com Suspensão');
    Memo1.Lines.Add('49 Outras Entradas');
    Memo1.Lines.Add('50 Saída Tributada');
    Memo1.Lines.Add('51 Saída Tributável com Alíquota Zero');
    Memo1.Lines.Add('52 Saída Isenta');
    Memo1.Lines.Add('53 Saída Não-Tributada');
    Memo1.Lines.Add('54 Saída Imune');
    Memo1.Lines.Add('55 Saída com Suspensão');
    Memo1.Lines.Add('99 Outras Saídas');
    panelAjuda.Visible := True;
  end;

end;

procedure TfClassificacaoFiscalNCM.Label21Click(Sender: TObject);
begin
  inherited;
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('Código de Situação Tributária(CST) na Nota Fiscal Eletrônica:');
    Memo1.Lines.Add(' ');

    Memo1.Lines.Add('Tabela A – Origem da Mercadoria');
	  Memo1.Lines.Add('  ');

	  Memo1.Lines.Add('Tabela B – Tributação pelo ICMS (Vigente desde 1-1-2001)');
    Memo1.Lines.Add('  ');
	  Memo1.Lines.Add('0. Nacional');
	  Memo1.Lines.Add('1. Estrangeira – Importação direta');
	  Memo1.Lines.Add('2. Estrangeira – Adquirida no mercado interno');
    Memo1.Lines.Add('  ');
    Memo1.Lines.Add('  ');
	  Memo1.Lines.Add('00. Tributada integralmente');
	  Memo1.Lines.Add('10. Tributada e com cobrança do ICMS por substituição tributária');
	  Memo1.Lines.Add('20. Com redução de base de cálculo');
	  Memo1.Lines.Add('30. Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
	  Memo1.Lines.Add('40. Isenta');
	  Memo1.Lines.Add('41. Não tributada');
	  Memo1.Lines.Add('50. Suspensão');
	  Memo1.Lines.Add('51. Diferimento');
	  Memo1.Lines.Add('60. ICMS cobrado anteriormente por substituição tributária');
	  Memo1.Lines.Add('70. Com redução da base de cálculo e cobrança do ICMS por substituição tributária');
	  Memo1.Lines.Add('90. Outras');
    panelAjuda.Visible := True;
  end;

end;

procedure TfClassificacaoFiscalNCM.Label10Click(Sender: TObject);
begin
  inherited;
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');    
    Memo1.Lines.Add('A partir da versão 2.00 do leiaute da NF-e, o contribuinte');
    Memo1.Lines.Add('emissor do SIMPLES NACIONAL deve informar um dos seguintes');
    Memo1.Lines.Add('Código de Situação da Operação - SIMPLES NACIONAL (CSOSN)');
    Memo1.Lines.Add('em substituição ao CST :');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('101 - Tributada pelo Simples Nacional com permissão de crédito;');
    Memo1.Lines.Add('102 - Tributada pelo Simples Nacional sem permissão de crédito;');
    Memo1.Lines.Add('103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta;');
    Memo1.Lines.Add('201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária;');
    Memo1.Lines.Add('202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária;');
    Memo1.Lines.Add('203 - Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária;');
    Memo1.Lines.Add('300 - Imune;');
    Memo1.Lines.Add('400 - Não tributada pelo Simples Nacional;');
    Memo1.Lines.Add('500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação;');
    Memo1.Lines.Add('900 - Outros.');
    panelAjuda.Visible := True;
  end;

end;

procedure TfClassificacaoFiscalNCM.Label15Click(Sender: TObject);
begin
  inherited;
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('CÓDIGO DA SITUAÇÃO TRIBUTÁRIA REFERENTE AO PIS/PASEP (CST-PIS):');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('01 - Operação Tributável com Alíquota Básica');
    Memo1.Lines.Add('02 - Operação Tributável com Alíquota Diferenciada');
    Memo1.Lines.Add('03 - Operação Tributável com Alíquota por Unidade de Medida de Produto');
    Memo1.Lines.Add('04 - Operação Tributável Monofásica - Revenda a Alíquota Zero');
    Memo1.Lines.Add('05 - Operação Tributável por Substituição Tributária');
    Memo1.Lines.Add('06 - Operação Tributável a Alíquota Zero');
    Memo1.Lines.Add('07 - Operação Isenta da Contribuição');
    Memo1.Lines.Add('08 - Operação sem Incidência da Contribuição');
    Memo1.Lines.Add('09 - Operação com Suspensão da Contribuição');
    Memo1.Lines.Add('49 - Outras Operações de Saída');
    Memo1.Lines.Add('50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('51 - Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno');
    Memo1.Lines.Add('52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
    Memo1.Lines.Add('60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
    Memo1.Lines.Add('62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
    Memo1.Lines.Add('67 - Crédito Presumido - Outras Operações');
    Memo1.Lines.Add('70 - Operação de Aquisição sem Direito a Crédito');
    Memo1.Lines.Add('71 - Operação de Aquisição com Isenção');
    Memo1.Lines.Add('72 - Operação de Aquisição com Suspensão');
    Memo1.Lines.Add('73 - Operação de Aquisição a Alíquota Zero');
    Memo1.Lines.Add('74 - Operação de Aquisição sem Incidência da Contribuição');
    Memo1.Lines.Add('75 - Operação de Aquisição por Substituição Tributária');
    Memo1.Lines.Add('98 - Outras Operações de Entrada');
    Memo1.Lines.Add('99 - Outras Operações');
    panelAjuda.Visible := True;
  end;

end;

procedure TfClassificacaoFiscalNCM.Label13Click(Sender: TObject);
begin
  inherited;
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('CÓDIGO DA SITUAÇÃO TRIBUTÁRIA REFERENTE À COFINS (CST-COFINS):');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('01 - Operação Tributável com Alíquota Básica');
    Memo1.Lines.Add('02 - Operação Tributável com Alíquota Diferenciada');
    Memo1.Lines.Add('03 - Operação Tributável com Alíquota por Unidade de Medida de Produto');
    Memo1.Lines.Add('04 - Operação Tributável Monofásica - Revenda a Alíquota Zero');
    Memo1.Lines.Add('05 - Operação Tributável por Substituição Tributária');
    Memo1.Lines.Add('06 - Operação Tributável a Alíquota Zero');
    Memo1.Lines.Add('07 - Operação Isenta da Contribuição');
    Memo1.Lines.Add('08 - Operação sem Incidência da Contribuição');
    Memo1.Lines.Add('09 - Operação com Suspensão da Contribuição');
    Memo1.Lines.Add('49 - Outras Operações de Saída');
    Memo1.Lines.Add('50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('51 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
    Memo1.Lines.Add('52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('55 - Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
    Memo1.Lines.Add('62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('67 - Crédito Presumido - Outras Operações');
    Memo1.Lines.Add('70 - Operação de Aquisição sem Direito a Crédito');
    Memo1.Lines.Add('71 - Operação de Aquisição com Isenção');
    Memo1.Lines.Add('72 - Operação de Aquisição com Suspensão');
    Memo1.Lines.Add('73 - Operação de Aquisição a Alíquota Zero');
    Memo1.Lines.Add('74 - Operação de Aquisição sem Incidência da Contribuição');
    Memo1.Lines.Add('75 - Operação de Aquisição por Substituição Tributária');
    Memo1.Lines.Add('98 - Outras Operações de Entrada');
    Memo1.Lines.Add('99 - Outras Operações');
    panelAjuda.Visible := True;
  end;

end;

procedure TfClassificacaoFiscalNCM.Label17Click(Sender: TObject);
begin
  inherited;
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : o Sistema irá pegar os dados adicionais  do primeiro item. ');
    Memo1.Lines.Add('Mesmo que, exista outros NCMs no pedido, irá aparecer na nota somente');
    Memo1.Lines.Add('os dados adicionais do primeiro item da nota.');
    Memo1.Lines.Add('');
    panelAjuda.Visible := True;
  end;
end;

procedure TfClassificacaoFiscalNCM.cdsClassFiscNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsClassFiscICMS_SUBST.AsFloat := 0;
  cdsClassFiscICMS_SUBST_IC.AsFloat := 0;
  cdsClassFiscICMS_SUBST_IND.AsFloat := 0;
  cdsClassFiscICMS.AsFloat := 0;
  cdsClassFiscICMS_BASE.AsFloat := 0;
  cdsClassFiscCST.AsString := '000';
  cdsClassFiscCSOSN.AsString := '0';
  cdsClassFiscIPI.AsFloat := 0;
  cdsClassFiscCSTIPI.AsString := '0';
  cdsClassFiscCSTPIS.AsString := '0';
  cdsClassFiscCSTCOFINS.AsString := '0';
  cdsClassFiscPIS.AsFloat := 0;
  cdsClassFiscCOFINS.AsFloat := 0;
  cdsClassFiscCODFISCAL.AsString := '0';
  cdsClassFiscORIGEM.AsInteger := 0;
  cdsClassFiscALIQ_CUPOM.AsString := '';
end;

procedure TfClassificacaoFiscalNCM.dxButton11Click(Sender: TObject);
begin
  inherited;
  fTributosInfo := TfTributosInfo.Create(Application);
  try
    fTributosInfo.ShowModal;
  finally
    fTributosInfo.Free;
  end;
end;

end.
