unit uOfProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExMask, JvToolEdit,
  JvBaseEdits, Mask, StdCtrls, ComCtrls, JvExComCtrls, JvComCtrls, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, DBClient, Provider, SqlExpr, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, rpcompobase, rpvclreport;

type
  TfOfProc = class(TForm)
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    cbStatus: TComboBox;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    edCodOF: TEdit;
    MMJPanel2: TMMJPanel;
    Label18: TLabel;
    BitBtn10: TBitBtn;
    BitBtn15: TBitBtn;
    JvCalcEdit2: TJvCalcEdit;
    JvDBGrid1: TJvDBGrid;
    sdsOfProc: TSQLDataSet;
    dspOfProc: TDataSetProvider;
    cdsOfProc: TClientDataSet;
    dsOfProc: TDataSource;
    meData2: TJvDatePickerEdit;
    meData1: TJvDatePickerEdit;
    JvCalcEdit1: TJvCalcEdit;
    sqlTotaisOF: TSQLQuery;
    sdsOfProcOFID: TIntegerField;
    sdsOfProcOFID_IND: TStringField;
    sdsOfProcOFDATA: TDateField;
    sdsOfProcSTATUS: TStringField;
    sdsOfProcOFQTDESOLIC: TFloatField;
    sdsOfProcOFQTDEPRODUZ: TFloatField;
    sdsOfProcOFQTDEPERDA: TFloatField;
    sdsOfProcOFMOTIVO: TStringField;
    sdsOfProcCODPRODUTO: TIntegerField;
    sdsOfProcCODPRO: TStringField;
    sdsOfProcPRODUTO: TStringField;
    sdsOfProcUNIDADEMEDIDA: TStringField;
    cdsOfProcOFID: TIntegerField;
    cdsOfProcOFID_IND: TStringField;
    cdsOfProcOFDATA: TDateField;
    cdsOfProcSTATUS: TStringField;
    cdsOfProcOFQTDESOLIC: TFloatField;
    cdsOfProcOFQTDEPRODUZ: TFloatField;
    cdsOfProcOFQTDEPERDA: TFloatField;
    cdsOfProcOFMOTIVO: TStringField;
    cdsOfProcCODPRODUTO: TIntegerField;
    cdsOfProcCODPRO: TStringField;
    cdsOfProcPRODUTO: TStringField;
    cdsOfProcUNIDADEMEDIDA: TStringField;
    edProduto: TEdit;
    edProdutoDesc: TEdit;
    sqlProduto: TSQLQuery;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    procedure btnSairClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edProdutoDescExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    codProduto : String;
    procedure buscaProduto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOfProc: TfOfProc;

implementation

uses UDm;

{$R *.dfm}

procedure TfOfProc.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfOfProc.btnProcurarClick(Sender: TObject);
var strOf, strOfSoma, strFiltro: String;
begin
  strOf := '';
  strFiltro := '';
  strOf := strOf + 'SELECT r.OFID, r.OFID_IND, r.OFDATA, ';
  strOf := strOf + ' CASE WHEN r.OFSTATUS = ' + QuotedStr('A');
  strOf := strOf + ' THEN ' + QuotedStr('NOVA') + ' WHEN r.OFSTATUS = ';
  strOf := strOf + QuotedStr('F') + ' THEN ' + QuotedStr('FINALIZADA');
  strOf := strOf + ' WHEN r.OFSTATUS = ';
  strOf := strOf + QuotedStr('E') + ' THEN ' + QuotedStr('EXCLUIDA');
  strOf := strOf + ' end as STATUS , r.OFQTDESOLIC, r.OFQTDEPRODUZ, ';
  strOf := strOf + ' r.OFQTDEPERDA, r.OFMOTIVO, r.CODPRODUTO, p.CODPRO,';
  strOf := strOf + ' p.PRODUTO, p.UNIDADEMEDIDA';
  strOf := strOf + '  FROM OF_OF r, PRODUTOS p ';
  strOf := strOf + ' WHERE p.CODPRODUTO = r.CODPRODUTO ';
  strOfSoma := 'SELECT SUM(r.OFQTDESOLIC) SOLICITADO, SUM(r.OFQTDEPRODUZ) PRODUZIDO';
  strOfSoma := strOfSoma + ' FROM OF_OF r WHERE 1 = 1';
  case cbStatus.ItemIndex of
    0: strFiltro := strFiltro + ' AND r.OFSTATUS = ' + QuotedStr('A');
    1: strFiltro := strFiltro + ' AND r.OFSTATUS = ' + QuotedStr('F');
  end;
  if (edCodOF.Text <> '') then
  begin
    strFiltro := strFiltro + ' AND r.OFID = ' + edCodOF.Text;
  end;
  if (meData1.Checked) then
  begin
    strFiltro := strFiltro + ' AND r.OFDATA BETWEEN ' + QuotedStr(formatdatetime('mm/dd/yy', meData1.Date));
    strFiltro := strFiltro + ' AND ' + QuotedStr(formatdatetime('mm/dd/yy', meData2.Date));
  end;
  if (edProduto.Text <> '') then
  begin
    buscaProduto;
    strFiltro := strFiltro + ' AND r.CODPRODUTO = ' + codProduto;
  end;

  if (cdsOfProc.Active) then
    cdsOfProc.Close;
  cdsOfProc.CommandText := strOf + strFiltro;
  cdsOfPRoc.Open;

  if (sqlTotaisOF.Active) then
    sqlTotaisOF.Close;
  sqlTotaisOF.SQL.Clear;
  sqlTotaisOF.SQL.Add(strOfSoma + strFiltro);
  sqlTotaisOF.Open;
  JvCalcEdit2.Value := sqlTotaisOF.FieldByName('SOLICITADO').AsFloat;
  JvCalcEdit1.Value := sqlTotaisOF.FieldByName('PRODUZIDO').AsFloat;
end;

procedure TfOfProc.edProdutoExit(Sender: TObject);
begin
  buscaProduto;
end;

procedure TfOfProc.buscaProduto;
var sqlP: STring;
begin
  sqlP := 'SELECT FIRST 1 CODPRODUTO, CODPRO, PRODUTO FROM PRODUTOS ';
  if (edProduto.Text <> '') then
  begin
    sqlP := sqlP + ' WHERE CODPRO = ' +  QuotedStr(edProduto.Text);
  end;
  if ((edProdutoDesc.Text <> '') AND (edProduto.Text = '')) then
  begin
    sqlP := sqlP + ' WHERE PRODUTO LIKE ' +  QuotedStr('%' + edProduto.Text + '%');
  end;

  if (sqlProduto.Active) then
    sqlProduto.Close;
  sqlProduto.SQL.Clear;
  sqlProduto.SQL.Add(sqlP);
  sqlProduto.Open;

  codProduto := IntToStr(sqlProduto.fieldByName('CODPRODUTO').AsInteger);
  if (edProduto.Text = '') then
    edProduto.Text := sqlProduto.fieldByName('CODPRO').AsString;
  if (edProdutoDesc.Text = '') then
    edProdutoDesc.Text := sqlProduto.fieldByName('PRODUTO').AsString;

end;

procedure TfOfProc.edProdutoDescExit(Sender: TObject);
begin
  buscaProduto;
end;

procedure TfOfProc.BitBtn1Click(Sender: TObject);
begin
  edProduto.Text := '';
  edProdutoDesc.Text := '';  
end;

procedure TfOfProc.JvDBGrid1TitleClick(Column: TColumn);
begin
  cdsOfProc.IndexFieldNames := Column.FieldName;
end;

procedure TfOfProc.btnImprimirClick(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'of_proc.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.DataInfo.Items[0].SQL := cdsOfProc.CommandText;
  VCLReport1.Execute;
end;

end.
