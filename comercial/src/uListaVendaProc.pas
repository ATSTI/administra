unit uListaVendaProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Grids, DBGrids, EDBFind, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TfListaVendaProc = class(TForm)
    MMJPanel1: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    BitBtn5: TBitBtn;
    cdsListaVenda: TClientDataSet;
    cdsListaVendaCODLISTA: TIntegerField;
    cdsListaVendaNOMELISTA: TStringField;
    cdsListaVendaVALIDADE: TDateField;
    cdsListaVendaDATAINICIAL: TDateField;
    cdsListaVendaDATAFINAL: TDateField;
    dspListaVenda: TDataSetProvider;
    sdsListaVenda: TSQLDataSet;
    sdsListaVendaCODLISTA: TIntegerField;
    sdsListaVendaNOMELISTA: TStringField;
    sdsListaVendaVALIDADE: TDateField;
    sdsListaVendaDATAINICIAL: TDateField;
    sdsListaVendaDATAFINAL: TDateField;
    DtSrc: TDataSource;
    edtNome: TEdit;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    codlista : Integer;
  end;

var
  fListaVendaProc: TfListaVendaProc;

implementation

{$R *.dfm}

procedure TfListaVendaProc.btnProcurarClick(Sender: TObject);
var sql, datastr : string;
begin
  sql := 'SELECT * FROM LISTAPRECO_VENDA';
  if (edtNome.Text <> '') then
    sql := sql + ' where NOMELISTA like ' + QuotedStr('%' + edtNome.Text + '%');
  datastr := '  /  /  ';
  try
    if (medta1.Text<>datastr) then
    StrToDate(medta1.Text);
    if (medta2.Text<>datastr) then
    StrToDate(medta2.Text);
    if (medta1.Text<>datastr) then
    if (medta2.Text<>datastr) then
    begin
      if (sql = '') then
        sql := sql + ' where DATAINICIAL between '
      else
        sql := sql + ' and DATAINICIAL between ';
        sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''';
        sql := sql + ' and ';
        sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
    end;
  except
  on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       medTa1.SetFocus;
    end;
  end;

  try
    if (medta3.Text<>datastr) then
    StrToDate(medta3.Text);
    if (medta4.Text<>datastr) then
    StrToDate(medta4.Text);
    if (medta3.Text<>datastr) then
    if (medta4.Text<>datastr) then
    begin
      if (sql = '') then
        sql := sql + ' where VALIDADE between '
      else
        sql := sql + ' and DATAINICIAL between ';
        sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
        sql := sql + ' and ';
        sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
    end;
  except
  on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       medTa3.SetFocus;
    end;
  end;

  try
    if (medta5.Text<>datastr) then
    StrToDate(medta5.Text);
    if (medta6.Text<>datastr) then
    StrToDate(medta6.Text);
    if (medta5.Text<>datastr) then
    if (medta6.Text<>datastr) then
    begin
      if (sql = '') then
        sql := sql + ' where DATAFINAL between '
      else
        sql := sql + ' and DATAFINAL between ';
        sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
        sql := sql + ' and ';
        sql := sql + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
    end;
  except
  on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       medTa5.SetFocus;
    end;
  end;
  if (cdsListaVenda.Active) then
    cdsListaVenda.Close;
  cdsListaVenda.CommandText := sql;
  cdsListaVenda.Open;
end;

procedure TfListaVendaProc.FormShow(Sender: TObject);
begin
  btnProcurar.Click;
end;

procedure TfListaVendaProc.btnSairClick(Sender: TObject);
begin
  codlista := cdsListaVendaCODLISTA.AsInteger;
  Close;
end;

end.
