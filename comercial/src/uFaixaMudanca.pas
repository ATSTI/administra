unit uFaixaMudanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, FMTBcd, DB, DBClient,
  Provider, SqlExpr, ComCtrls, rpcompobase, rpvclreport;

type
  TfFaixaMudanca = class(TForm)
    DBGrid1: TDBGrid;
    medta1: TMaskEdit;
    medta2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dtSrc: TDataSource;
    cdsRA: TStringField;
    cdsDATANASC: TDateField;
    cdsNASC: TIntegerField;
    cdsCOD_FAIXA: TIntegerField;
    cdsMENSALIDADE: TFloatField;
    cdsNOMECLIENTE: TStringField;
    ComboBox1: TComboBox;
    rep: TVCLReport;
    btnImprimir: TBitBtn;
    Label3: TLabel;
    cdsDATATRANSF: TDateField;
    procedure btnSairClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFaixaMudanca: TfFaixaMudanca;

implementation

uses UDm, uUtils;

{$R *.dfm}

procedure TfFaixaMudanca.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfFaixaMudanca.btnProcurarClick(Sender: TObject);
  var  datastr, str: string;
begin
  str := '';
  if (cds.Active) then
    cds.Close;

  cds.CommandText := 'select cli.RA, cli.DATANASC, udf_age(cli.DATANASC) as nasc' +
    ', cli.COD_FAIXA, faixa.VALOR_PLANO AS MENSALIDADE, cli.DATATRANSF, ' +
    ' cli.NOMECLIENTE from CLIENTES cli ' +
    ' INNER JOIN FAIXA_ETARIA FAIXA ON FAIXA.CODIGOS = CLI.COD_FAIXA'+
    ' WHERE CLI.STATUS = 0 AND FAIXA.USO = '+ QUOTEDSTR('ASH')+ ' AND GRUPO_CLIENTE = '+ QUOTEDSTR('ASH') +
    ' AND CLI.ANUIDADE <> CLI.COD_FAIXA';
  

  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
    if (medta1.Text<>datastr) then
      StrToDate(medta1.Text);
    if (medta2.Text<>datastr) then
      StrToDate(medta2.Text);
    if (medta1.Text<>datastr) then
    if (medta2.Text<>datastr) then
    begin
      str := ' AND cli.DATATRANSF BETWEEN ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' AND ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
    end;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      meDta1.SetFocus;
    end;
  end;
  //------------------------------------------------------------------------------
  //------------------------------------------------------------------------------

  if (str <> '') then
    cds.CommandText := cds.CommandText + str + ' ORDER BY CLI.RA';

  cds.Open;
end;

procedure TfFaixaMudanca.ComboBox1Change(Sender: TObject);
var util: TUtils;
begin
  util := TUtils.Create;
  util.PeriodoIni := ComboBox1.Text;
  medta1.Text := util.PeriodoIni;
  util.PeriodoFim := ComboBox1.Text;
  medta2.Text := util.PeriodoFim;
end;

procedure TfFaixaMudanca.btnImprimirClick(Sender: TObject);
begin
  if not cds.Active then
  begin
    MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
    exit;
  end;
  rep.Filename := str_relatorio + 'planoFaixaAlterado.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.DataInfo.Items[1].SQL:= cds.CommandText;
  rep.Execute;
end;

procedure TfFaixaMudanca.DBGrid1TitleClick(Column: TColumn);
begin
  CDS.IndexFieldNames := Column.FieldName;
end;

end.
