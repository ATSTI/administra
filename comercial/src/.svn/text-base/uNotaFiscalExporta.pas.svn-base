unit uNotaFiscalExporta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, StdCtrls, DBClient, Provider, DB, SqlExpr,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvBaseEdits, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  Menus, XPMenu, Buttons, ExtCtrls, MMJPanel, DBXpress, JvDBControls,
  JvFormPlacement, JvComponentBase, JvAppStorage, JvAppXMLStorage,
  JvExExtCtrls, JvExtComponent, JvCaptionPanel ,rpvclreport,rpcompobase;


type
  TfNotaFiscalExporta = class(TfPai_new)
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsNF: TSQLDataSet;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    sdsNFNUMNF: TIntegerField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFNUMERO: TStringField;
    sdsNFNOTAFISCAL: TIntegerField;
    sdsNFVALOR_PRODUTO: TFloatField;
    sdsNFVALOR_TOTAL_NOTA: TFloatField;
    sdsNFNOMECLIENTE: TStringField;
    cdsNFNUMNF: TIntegerField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFNUMERO: TStringField;
    cdsNFNOTAFISCAL: TIntegerField;
    cdsNFVALOR_PRODUTO: TFloatField;
    cdsNFVALOR_TOTAL_NOTA: TFloatField;
    cdsNFNOMECLIENTE: TStringField;
    sdsNFPRECOEXP: TFloatField;
    sdsNFQTDEEXP: TFloatField;
    sdsNFPRODUTO: TStringField;
    sdsNFCODPRO: TStringField;
    sdsNFQUANTIDADE: TFloatField;
    sdsNFPRECO: TFloatField;
    cdsNFPRECOEXP: TFloatField;
    cdsNFQTDEEXP: TFloatField;
    cdsNFPRODUTO: TStringField;
    cdsNFCODPRO: TStringField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFPRECO: TFloatField;
    sdsNFVLRTOTALEXP: TFloatField;
    cdsNFVLRTOTALEXP: TFloatField;
    cdsNFTOTALNF: TAggregateField;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    JvCalcEdit2: TJvCalcEdit;
    sdsNFNOTASERIE: TStringField;
    cdsNFNOTASERIE: TStringField;
    JvCaptionPanel1: TJvCaptionPanel;
    data1: TJvDatePickerEdit;
    Label1: TLabel;
    data2: TJvDatePickerEdit;
    rbStatus: TRadioButton;
    BitBtn6: TBitBtn;
    btnImprimir: TBitBtn;
    VCLReport1: TVCLReport;
    BitBtn1: TBitBtn;
    rgTipoNF: TRadioGroup;
    JvCaptionPanel2: TJvCaptionPanel;
    JvCalcEdit1: TJvCalcEdit;
    rgAltera: TRadioGroup;
    BitBtn2: TBitBtn;
    JvCaptionPanel3: TJvCaptionPanel;
    BitBtn3: TBitBtn;

    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalExporta: TfNotaFiscalExporta;

implementation

uses UDm;

{$R *.dfm}

procedure TfNotaFiscalExporta.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (cdsNF.Active) then
    cdsNF.close;
  cdsNF.Params.ParamByName('PDTA1').AsDate := data1.Date;
  cdsNF.Params.ParamByName('PDTA2').AsDate := data2.Date;
  if (rbStatus.Checked) then
    cdsNF.Params.ParamByName('PSTATUS').AsString := 'E'
  else
    cdsNF.Params.ParamByName('PSTATUS').asString := '0';
  case rgTipoNF.ItemIndex of
    0: cdsNF.Params.ParamByName('PNAT').AsSmallInt := 4;
    1: cdsNF.Params.ParamByName('PNAT').AsSmallInt := 3;
    2: cdsNF.Params.ParamByName('PNAT').AsSmallInt := 0;
  end;          
  cdsNF.Open;
  if (cdsNFTOTALNF.Value = Null) then
    JvCalcEdit2.Value := 0
  else
    JvCalcEdit2.Value := cdsNFTOTALNF.Value;  
end;

procedure TfNotaFiscalExporta.BitBtn6Click(Sender: TObject);
begin
  inherited;
  rbStatus.Checked := False;
end;

procedure TfNotaFiscalExporta.btnIncluirClick(Sender: TObject);
var  TD: TTransactionDesc;
  var str_sql: string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  DecimalSeparator := '.';
  case rgAltera.ItemIndex of
    0 : begin
          str_sql := 'EXECUTE PROCEDURE NFALTERAVLREXPORTA( ' +
          QuotedStr(formatDateTime('mm/dd/yyyy',data1.Date)) + ', ' +
          QuotedStr(formatDateTime('mm/dd/yyyy',data2.Date)) + ', ' +
          FloatToStr(JvCalcEdit1.Value) + ', ' + QuotedStr('QUANTIDADE') + ')';
        end;
    1 : begin
          str_sql := 'EXECUTE PROCEDURE NFALTERAVLREXPORTA( ' +
          QuotedStr(formatDateTime('mm/dd/yyyy',data1.Date)) + ', ' +
          QuotedStr(formatDateTime('mm/dd/yyyy',data2.Date)) + ', ' +
          FloatToStr(JvCalcEdit1.Value) + ', ' + QuotedStr('PRECO') + ')';
        end;
  end;
    {str_sql := 'update notafiscal set ' +
    'valor_total_nota = valor_total_nota * ' + FloatToStr(JvCalcEdit1.Value) +
    ' where dtaemissao between ' + QuotedStr(formatDateTime('mm/dd/yyyy',data1.Date)) + ' and ' +
    QuotedStr(formatDateTime('mm/dd/yyyy',data2.Date)) + ' and status is null';
     }
  DecimalSeparator := ',';
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Alterações gravadas.', mtInformation, [mbOK], 0);
    BitBtn1.Click;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar o lançamento.', mtError, [mbOK], 0);
  end;
end;

procedure TfNotaFiscalExporta.btnImprimirClick(Sender: TObject);
begin
  inherited;
  VCLReport1.FileName := str_relatorio + 'exportaNotaFiscal.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PDTA1').Value := StrToDate(data1.Text);
  VCLReport1.Report.Params.ParamByName('PDTA2').Value := StrToDate(data2.Text);
  VCLReport1.Execute;
end;

end.
