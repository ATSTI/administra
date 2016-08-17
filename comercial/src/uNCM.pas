unit uNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, DBXpress;

type
  TfNCM = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    cdsNCM: TClientDataSet;
    dspNCM: TDataSetProvider;
    sdsNCM: TSQLDataSet;
    sdsNCMNCM: TStringField;
    sdsNCMALIQNAC: TFloatField;
    sdsNCMALIQIMP: TFloatField;
    cdsNCMNCM: TStringField;
    cdsNCMALIQNAC: TFloatField;
    cdsNCMALIQIMP: TFloatField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsNCMCEST: TStringField;
    cdsNCMCEST: TStringField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    BitBtn7: TBitBtn;
    btnProcNCM: TBitBtn;
    sdsNCMESTADUAL: TFloatField;
    sdsNCMMUNICIPAL: TFloatField;
    cdsNCMESTADUAL: TFloatField;
    cdsNCMMUNICIPAL: TFloatField;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    sdsNCMIMP_FEDERAL: TFloatField;
    sdsNCMIMP_FERERAL_IMP: TFloatField;
    sdsNCMTIPO: TStringField;
    sdsNCMEX: TIntegerField;
    sdsNCMDESCRICAO: TStringField;
    sdsNCMIMP_ESTADUAL: TFloatField;
    sdsNCMIMP_MUNICIPAL: TFloatField;
    sdsNCMVIGENCIAINICIO: TDateField;
    sdsNCMVIGENCIAFIM: TDateField;
    sdsNCMCHAVE: TStringField;
    sdsNCMVERSAO: TStringField;
    sdsNCMFONTE: TStringField;
    cdsNCMIMP_FEDERAL: TFloatField;
    cdsNCMIMP_FERERAL_IMP: TFloatField;
    cdsNCMTIPO: TStringField;
    cdsNCMEX: TIntegerField;
    cdsNCMDESCRICAO: TStringField;
    cdsNCMIMP_ESTADUAL: TFloatField;
    cdsNCMIMP_MUNICIPAL: TFloatField;
    cdsNCMVIGENCIAINICIO: TDateField;
    cdsNCMVIGENCIAFIM: TDateField;
    cdsNCMCHAVE: TStringField;
    cdsNCMVERSAO: TStringField;
    cdsNCMFONTE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcNCMClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    vrNCM: String;
    { Public declarations }
  end;

var
  fNCM: TfNCM;

implementation

uses UDm, uClassificacaoFiscalNCM, uCest;

{$R *.dfm}

procedure TfNCM.FormCreate(Sender: TObject);
begin
  vrNCM := '';
  if not cdsNCM.Active then
    cdsNCM.Open;
end;

procedure TfNCM.FormDestroy(Sender: TObject);
begin
  inherited;
  if cdsNCM.Active then
    cdsNCM.Close;
end;

procedure TfNCM.FormShow(Sender: TObject);
begin
  dbedit1.Enabled := True;
  dbedit2.Enabled := True;
  if (vrNCM <> '') then
  begin
    dbEdit1.Text := vrNCM;
    btnProcNCM.Click;
  end;
end;

procedure TfNCM.btnProcNCMClick(Sender: TObject);
var stra: string;
begin
  inherited;
  if (dbEdit1.Text = '') then
  begin
    cdsNCM.Cancel;
    cdsNCM.Filtered := False;
    exit;
  end;
  stra := dbEdit1.Text;
  cdsNCM.Cancel;
  if (cdsNCM.Filtered = True) then
    cdsNCM.Filtered := False;
  cdsNCM.Filter := 'NCM = ''' + stra + '*''';
  if (stra <> '') then
    cdsNCM.Filtered := True
  else
    cdsNCM.Filtered := False;
end;

procedure TfNCM.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Excluir := 'S';
  Alterar := 'S';
  Cancelar := 'S';
  Procurar :=  'S';
  inherited;

end;

procedure TfNCM.btnProcurarClick(Sender: TObject);
begin
//  inherited;
  fClassificacaoFiscalNCM := TfClassificacaoFiscalNCM.Create(Application);
  try
    fClassificacaoFiscalNCM.ncm := cdsNCMNCM.AsString;
    fClassificacaoFiscalNCM.Label9.Caption := cdsNCMNCM.AsString;
    fClassificacaoFiscalNCM.ShowModal;
  finally
    fClassificacaoFiscalNCM.Free;
  end;
end;

procedure TfNCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vrNCM := cdsNCMNCM.AsString;
  inherited;

end;

procedure TfNCM.BitBtn7Click(Sender: TObject);
begin
  inherited;
  fCest := TfCest.Create(Application);
  try
    fCest.vrCest := DM.cds_produtoCest.AsString;
    fCest.ShowModal;
    if (cdsNCM.State in [dsBrowse]) then
      cdsNCM.Edit;
    cdsNCMCEST.AsString := fCest.vrCest;
  finally
    fCest.Free;
  end;
end;

procedure TfNCM.btnGravarClick(Sender: TObject);
var str_ncm : String;
   TD: TTransactionDesc;
begin
  inherited;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  DecimalSeparator := '.';
  str_ncm := 'UPDATE NCM SET ';
  str_ncm := str_ncm + ' ALIQNAC    = ' + FloatToStr(cdsNCMALIQNAC.AsFloat);
  str_ncm := str_ncm + ', ALIQIMP   = ' + FloatToStr(cdsNCMALIQIMP.AsFloat);
  str_ncm := str_ncm + ', CEST      = ' + QuotedStr(cdsNCMCEST.AsString);
  str_ncm := str_ncm + ', ESTADUAL  = ' + FloatToStr(cdsNCMESTADUAL.AsFloat);
  str_ncm := str_ncm + ', MUNICIPAL = ' + FloatToStr(cdsNCMMUNICIPAL.AsFloat);
  str_ncm := str_ncm + ' WHERE NCM  = ' + QuotedStr(cdsNCMNCM.AsString);
  DecimalSeparator := ',';
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(str_ncm);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

end;

end.
