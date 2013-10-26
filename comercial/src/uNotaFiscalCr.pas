unit uNotaFiscalCr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Buttons, DBXpress, FMTBcd, DB,
  SqlExpr;

type
  TfNotaFiscalCr = class(TForm)
    data2: TJvDatePickerEdit;
    Label1: TLabel;
    data1: TJvDatePickerEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    sSerie: TSQLDataSet;
    sSerieULTIMO_NUMERO: TIntegerField;
    sSerieSERIE: TStringField;
    sqlNumeroSerie: TSQLDataSet;
    sqlNumeroSerieNOTASERIE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    dataEmissao, dataVencimento : TdateTime;
    serie, numero, gerado : string;
    { Public declarations }
  end;

var
  fNotaFiscalCr: TfNotaFiscalCr;

implementation

uses UDm, UDMNF;

{$R *.dfm}

procedure TfNotaFiscalCr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dataEmissao := data1.Date;
  dataVencimento := data2.date;
  serie := Edit1.Text;
  numero := Edit2.Text;
end;

procedure TfNotaFiscalCr.FormShow(Sender: TObject);
var
  TD: TTransactionDesc;
  numeroS, vSql : String;
  numNFSerie : integer;
begin
  gerado := 'nao';
  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIENF';
  dm.cds_parametro.Open;
  IF (dm.cds_parametro.IsEmpty) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      Dm.sqlsisAdimin.ExecuteDirect('INSERT INTO PARAMETRO (PARAMETRO, DADOS) VALUES ('+
        '''' + 'SERIENF' + ''',' + '''' + 'N' + ''')');
      Dm.sqlsisAdimin.ExecuteDirect('INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES ('+
        QuotedStr('N') + ',1)');
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para Gravar nova Série Nota Fiscal.', mtError, [mbOK], 0);
      exit;
    end;
    Edit1.Text := 'N';
    Edit2.Text := '1';
  end
  else
  begin
    if (sSerie.Active) then
        sSerie.close;
    sSerie.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    sSerie.Open;
    if (sSerieULTIMO_NUMERO.AsInteger > 0) then
      numNFSerie := sSerieULTIMO_NUMERO.AsInteger
    else
      numNFSerie := 0;  
    //Gravando o numero sequencial
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Try
      vSql := 'update SERIES  SET ULTIMO_NUMERO = ' + IntToStr(numNFSerie + 1) +
              ' Where SERIE = ' + QuotedStr(dm.cds_parametroDADOS.AsString);
      dm.sqlsisAdimin.StartTransaction(TD);
      Dm.sqlsisAdimin.ExecuteDirect(vSql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para Gravar nova Série Nota Fiscal.', mtError, [mbOK], 0);
      exit;
    end;
    Edit1.Text := sSerieSERIE.AsString;
    Edit2.Text := IntToStr(sSerieULTIMO_NUMERO.AsInteger + 1);
    if (sqlNumeroSerie.Active) then
      sqlNumeroSerie.Close;
    sqlNumeroSerie.Params.ParamByName('SERIE').asstring := sSerieSERIE.AsString;
    sqlNumeroSerie.Open;
    if (not sqlNumeroSerie.IsEmpty) then
      if (not sqlNumeroSerieNOTASERIE.IsNull) then
      begin
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        Try
          if (sqlNumeroSerie.Fields[0].AsInteger > 0) then
            numNFSerie := sqlNumeroSerie.Fields[0].AsInteger
          else
            numNFSerie := 0;
          dm.sqlsisAdimin.StartTransaction(TD);
          Dm.sqlsisAdimin.ExecuteDirect('update SERIES  SET ULTIMO_NUMERO = ' +
            IntToStr(numNFSerie+1) +
            ' Where SERIE = ' + QuotedStr(dm.cds_parametroDADOS.AsString));
          dm.sqlsisAdimin.Commit(TD);
          Edit2.Text := IntToStr((NumNFSerie) + 1);
        except
          dm.sqlsisAdimin.Rollback(TD);
          MessageDlg('Erro para Gravar nova Série Nota Fiscal.', mtError, [mbOK], 0);
          exit;
        end;
      end;
  end;
  dm.cds_parametro.Close;

end;

procedure TfNotaFiscalCr.BitBtn1Click(Sender: TObject);
begin
  gerado := 'sim';
  Close;
  { sqltexto := 'Execute Procedure GERA_REC_DUPLICATAS (';
   sqltexto := sqltexto + '''' + Edit2.Text + '-' + Edit1.Text + ''',';
   sqlTexto := sqltexto + '''' + formatdatetime('mm/dd/yy', data1.Date) + ''',';
   sqltexto := sqltexto + '''' + IntToStr(codcliente) + ''',';
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
    sqlTexto := sqltexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + ''',';
    sqlTexto := sqltexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + ''',';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
   sqltexto := sqltexto + '''' + Edit1.Text + ''',';// qtde Duplicatas
   DecimalSeparator := '.';
   sqltexto := sqltexto + '''' + FloatToStr(valor_dupl) + ''',';//valor título
   DecimalSeparator := ',';
   sqltexto := sqltexto + '0';//valor recebido
   sqltexto := sqltexto + ',';
   sqltexto := sqltexto + '0';//valor desconto
   sqltexto := sqltexto + ',';
   sqltexto := sqltexto + '0';//valor juros
   sqltexto := sqltexto + ',';
   case RadioGroup1.ItemIndex of
     0 : begin
           sqltexto := sqltexto + QuotedStr('CARTEIRA');
           sqltexto := sqltexto + ', null'; // Caixa
           sqltexto := sqltexto + ', null'; // Data Recebimento
         end;
     1 : begin
           sqltexto := sqltexto + QuotedStr('DESCONTO');
           // Caixa
           if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
             sqltexto := sqltexto + ', ' + IntToStr(dm.cds_7_contas.Fields[0].asInteger)
           else
             sqltexto := sqltexto + ', null';
           sqltexto := sqltexto + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Edit5.Date));
         end;
   end;
   sqltexto := sqltexto + ', ' + QuotedStr('DUPLICATA'); // Tipo do Novo Documento Gerado (Duplicata, Boleto, ..)
   sqltexto := sqltexto + ')';
   SQLDataSet1.CommandText := sqltexto;
   SQLDataSet1.ExecSQL();
  BitBtn1.Visible := false;
  BitBtn2.Visible := true;
  if cds_cr.Active then
    cds_cr.Close;
  cds_cr.Params[0].AsInteger := StrToInt(Edit3.Text);
  cds_cr.Params[1].AsString := '9-';
  cds_cr.Open;
  MessageDlg('Duplicata gerada com sucesso !', mtInformation, [mbOK], 0);
   }
end;

end.
