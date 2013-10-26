unit uDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MMJPanel, FMTBcd, Buttons, Grids, DBGrids,
  Mask, DBCtrls, rpcompobase, rpvclreport, XPMenu, EExtenso, DB, DBClient,
  Provider, SqlExpr, DBLocal, DBLocalS, Menus, rplabelitem, JvExControls,
  JvLabel, dbXpress, JvBaseEdits, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfDuplicata = class(TForm)
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    sds_cr: TSQLDataSet;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crTITULO: TStringField;
    sds_crEMISSAO: TDateField;
    sds_crCODCLIENTE: TIntegerField;
    sds_crDATAVENCIMENTO: TDateField;
    sds_crVALORRECEBIDO: TFloatField;
    sds_crDATARECEBIMENTO: TDateField;
    sds_crCAIXA: TSmallintField;
    sds_crCONTADEBITO: TIntegerField;
    sds_crCONTACREDITO: TIntegerField;
    sds_crSTATUS: TStringField;
    sds_crVIA: TStringField;
    sds_crFORMARECEBIMENTO: TStringField;
    sds_crDATABAIXA: TDateField;
    sds_crHISTORICO: TStringField;
    sds_crCODVENDA: TIntegerField;
    sds_crCODVENDEDOR: TSmallintField;
    sds_crCODUSUARIO: TSmallintField;
    sds_crDATASISTEMA: TSQLTimeStampField;
    sds_crN_DOCUMENTO: TStringField;
    sds_crALMOXARIFADO: TStringField;
    sds_crNOMEUSUARIO: TStringField;
    sds_crVENDEDOR: TStringField;
    sds_crNOMECLIENTE: TStringField;
    sds_crJUROS: TFloatField;
    sds_crDESCONTO: TFloatField;
    sds_crPERDA: TFloatField;
    sds_crTROCA: TFloatField;
    sds_crFUNRURAL: TFloatField;
    sds_crVALOR_PRIM_VIA: TFloatField;
    sds_crVALOR_RESTO: TFloatField;
    sds_crVALORTITULO: TFloatField;
    sds_crCODALMOXARIFADO: TIntegerField;
    sds_crOUTRO_CREDITO: TFloatField;
    sds_crOUTRO_DEBITO: TFloatField;
    sds_crPARCELAS: TSmallintField;
    sds_crDUP_REC_NF: TStringField;
    sds_crNF: TIntegerField;
    sds_crDP: TIntegerField;
    sds_crBL: TIntegerField;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crTITULO: TStringField;
    cds_crEMISSAO: TDateField;
    cds_crCODCLIENTE: TIntegerField;
    cds_crDATAVENCIMENTO: TDateField;
    cds_crSTATUS: TStringField;
    cds_crVIA: TStringField;
    cds_crCODVENDA: TIntegerField;
    cds_crCODALMOXARIFADO: TIntegerField;
    cds_crCODVENDEDOR: TSmallintField;
    cds_crFORMARECEBIMENTO: TStringField;
    cds_crVALOR_PRIM_VIA: TFloatField;
    cds_crVALOR_RESTO: TFloatField;
    cds_crVALORTITULO: TFloatField;
    cds_crCONTACREDITO: TIntegerField;
    cds_crVALORRECEBIDO: TFloatField;
    cds_crDATARECEBIMENTO: TDateField;
    cds_crCONTADEBITO: TIntegerField;
    cds_crCAIXA: TSmallintField;
    cds_crDATABAIXA: TDateField;
    cds_crHISTORICO: TStringField;
    cds_crCODUSUARIO: TSmallintField;
    cds_crN_DOCUMENTO: TStringField;
    cds_crDATASISTEMA: TSQLTimeStampField;
    cds_crALMOXARIFADO: TStringField;
    cds_crNOMECLIENTE: TStringField;
    cds_crNOMEUSUARIO: TStringField;
    cds_crVENDEDOR: TStringField;
    cds_crJUROS: TFloatField;
    cds_crDESCONTO: TFloatField;
    cds_crPERDA: TFloatField;
    cds_crTROCA: TFloatField;
    cds_crFUNRURAL: TFloatField;
    cds_crOUTRO_CREDITO: TFloatField;
    cds_crOUTRO_DEBITO: TFloatField;
    cds_crPARCELAS: TSmallintField;
    cds_crDUP_REC_NF: TStringField;
    cds_crNF: TIntegerField;
    cds_crDP: TIntegerField;
    cds_crBL: TIntegerField;
    DataSource1: TDataSource;
    SQLDataSet2: TSQLDataSet;
    SQLDataSet2CODRECEBIMENTO: TIntegerField;
    SQLDataSet2TITULO: TStringField;
    SQLDataSet2EMISSAO: TDateField;
    SQLDataSet2CODCLIENTE: TIntegerField;
    SQLDataSet2DATAVENCIMENTO: TDateField;
    SQLDataSet2DATARECEBIMENTO: TDateField;
    SQLDataSet2CAIXA: TSmallintField;
    SQLDataSet2CONTADEBITO: TIntegerField;
    SQLDataSet2CONTACREDITO: TIntegerField;
    SQLDataSet2STATUS: TStringField;
    SQLDataSet2VIA: TStringField;
    SQLDataSet2FORMARECEBIMENTO: TStringField;
    SQLDataSet2DATABAIXA: TDateField;
    SQLDataSet2HISTORICO: TStringField;
    SQLDataSet2CODVENDA: TIntegerField;
    SQLDataSet2CODALMOXARIFADO: TSmallintField;
    SQLDataSet2CODVENDEDOR: TSmallintField;
    SQLDataSet2CODUSUARIO: TSmallintField;
    SQLDataSet2N_DOCUMENTO: TStringField;
    SQLDataSet2DATASISTEMA: TSQLTimeStampField;
    SQLDataSet2VALORRECEBIDO: TFloatField;
    SQLDataSet2JUROS: TFloatField;
    SQLDataSet2DESCONTO: TFloatField;
    SQLDataSet2PERDA: TFloatField;
    SQLDataSet2TROCA: TFloatField;
    SQLDataSet2FUNRURAL: TFloatField;
    SQLDataSet2VALOR_PRIM_VIA: TFloatField;
    SQLDataSet2VALOR_RESTO: TFloatField;
    SQLDataSet2VALORTITULO: TFloatField;
    SQLDataSet2OUTRO_CREDITO: TFloatField;
    SQLDataSet2OUTRO_DEBITO: TFloatField;
    SQLDataSet2PARCELAS: TIntegerField;
    SQLDataSet2DUP_REC_NF: TStringField;
    SQLDataSet2NF: TIntegerField;
    SQLDataSet2DP: TIntegerField;
    SQLDataSet2BL: TIntegerField;
    SQLDataSet2NOMECLIENTE: TStringField;
    SQLDataSet2ALMOXARIFADO: TStringField;
    SQLDataSet2NOMEUSUARIO: TStringField;
    SQLDataSet2VENDEDOR: TStringField;
    SQLDataSet1: TSQLDataSet;
    EvExtenso1: TEvExtenso;
    XPMenu1: TXPMenu;
    VCLReport1: TVCLReport;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Edit1: TEdit;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    Edit4: TEdit;
    BitBtn2: TBitBtn;
    JvLabel1: TJvLabel;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    cbConta: TComboBox;
    Label7: TLabel;
    meDta1: TJvDatePickerEdit;
    meDta2: TJvDatePickerEdit;
    Edit5: TJvDatePickerEdit;
    Edit2: TJvCalcEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDuplicata: TfDuplicata;
  codrec, codcliente : integer;
  valor_dupl, vlr_recebido, vlr_desconto, vlr_juros : double;
  dta_Emissao, titulo : string;  

implementation

uses UDm, ufcr;

{$R *.dfm}

procedure TfDuplicata.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP = 0');
end;

procedure TfDuplicata.FormShow(Sender: TObject);
var
   ano, mes, dia: word;
   MyDate: TDateTime;
begin
  if (cds_crDP.AsInteger < 1) then
  begin
    MyDate := now;
    medta1.Text:=formatdatetime('dd/mm/yy', MyDate);
    DecodeDate(MyDate, ano, mes, dia);
    mes := mes + 1;
    if (mes = 2) then
      if (dia > 28) then
         dia := 28;
    if (mes > 12) then
      mes := 1;
    if (dia = 31) then
      if (mes in [4,6,9,11]) then
        dia := 30;
    MyDate := EncodeDate(ano, mes, dia);
    medta2.Text:= DateTimeToStr(MyDate);
    Edit1.Text := '1';
    Edit2.Text :=Format('%-6.2n',[valor_dupl]);
    // nova numeracao
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SERIEDUPLICATA';
    dm.cds_parametro.Open;
    IF (dm.cds_parametro.IsEmpty) then
    begin
      Dm.sqlsisAdimin.ExecuteDirect('INSERT INTO PARAMETRO (PARAMETRO, DADOS) VALUES ('+
         '''' + 'SERIEDUPLICATA' + ''',' + '''' + 'D' + ''')');
      Dm.sqlsisAdimin.ExecuteDirect('INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES ('+
         QuotedStr('D') + ',1)');
      Edit3.Text := '1';
    end
    else
    begin
      //Gravando o numero sequencial
      if not scds_serie_proc.Active then
      begin
        scds_serie_proc.Params[0].AsString := dm.cds_parametroDADOS.AsString;;
        scds_serie_proc.Open;
      end;
      dm.cds_parametro.Close;
      Edit3.Text := IntToStr(scds_serie_procULTIMO_NUMERO.AsInteger + 1);
    end;
    scds_serie_proc.Close;
    if cds_cr.Active then
      cds_cr.Close;
    cds_cr.Params[0].AsInteger := 0;
    cds_cr.Params[1].AsString := '99';
    cds_cr.Open;
  end
  else begin
    medta1.Text:= DateTimeToStr(cds_crEMISSAO.AsDateTime);
    medta2.Text:= DateTimeToStr(cds_crDATAVENCIMENTO.AsDateTime);
    Edit1.Text := cds_crVIA.AsString;
    Edit2.Text := FloatToStr(cds_crVALORTITULO.AsFloat);
    Edit3.Text := cds_crTITULO.AsString;
  end;
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  while not dm.cds_7_contas.Eof do
  begin
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  Edit5.Clear;
end;

procedure TfDuplicata.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfDuplicata.btnCancelarClick(Sender: TObject);
var
  dp, sql_texto :string;
begin
  if (MessageDlg('Confirma o cancelamento da DUPLICATA: ''' + cds_crTITULO.AsSTring + '''',
    mtConfirmation, [mbYes, mbNo],0) = mrYes) then
  begin
    dp := IntToStr(fcrproc.scdsCr_procDP.AsInteger);
    sql_texto := 'UPDATE RECEBIMENTO SET STATUS = ';
    sql_texto := sql_texto + '''5-'',';
    sql_texto := sql_texto + ' DP = null ';
    sql_texto := sql_texto + ' where DP = ';
    sql_texto := sql_texto + '' + dp + '';
    sql_texto := sql_texto + ' and status = ';
    sql_texto := sql_texto + '''10''';
    dm.sqlsisAdimin.ExecuteDirect(sql_texto);
    sql_texto := 'DELETE FROM RECEBIMENTO ';
    sql_texto := sql_texto + ' where DP = ';
    sql_texto := sql_texto + '' + dp + '';
    dm.sqlsisAdimin.ExecuteDirect(sql_texto);
    MessageDlg('Duplicata cancelada com sucesso !', mtWarning, [mbOK], 0);
  end;

end;

procedure TfDuplicata.btnImprimirClick(Sender: TObject);
var
 text :TRpLabel;
 valor, valor1 : double;
 parcela : integer;
begin
 VCLReport1.Filename := str_relatorio + 'duplicata_rc.rep';
 VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
 parcela := StrToInt(Edit1.Text);
 valor :=  cds_crVALOR_RESTO.AsFloat;
 valor1:= valor;
 Edit4.Text := '';
 Edit4.Text:= EvExtenso1.GetExtenso(valor1);
 text:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel18'));
 VCLReport1.Report.Params.ParamByName('PCOD').Value := cds_crDP.AsInteger;
 if Assigned(text) then
   text.Text := Edit4.Text;
 VCLReport1.Execute;

end;

procedure TfDuplicata.btnSairClick(Sender: TObject);
begin
   close;
end;

procedure TfDuplicata.BitBtn1Click(Sender: TObject);
var
  parcela, valor1, valor2, valor3 : double;
  DataStr, sqltexto : string;
  i, num: Integer;
  str_sql: String;
  TD: TTransactionDesc;
begin
  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (cbConta.Text = '') then
    begin
      MessageDlg('Informe o Caixa para o Desconto.', mtError, [mbOK], 0);
      exit;
    end;
    if (Edit5.Text = '') then
    begin
      MessageDlg('Informe o Caixa para o Desconto.', mtError, [mbOK], 0);
      exit;
    end;
  end;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  {str_sql := 'UPDATE RECEBIMENTO SET DP = null';
  str_sql := str_sql + ' WHERE DP = 0';
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gerar a Duplicata.', mtError, [mbOK], 0);
    exit;
  end;}

  i := 0;
  for i:=1 to length(nrec) do
  begin
    str_sql := 'UPDATE RECEBIMENTO SET DP = 0';
    str_sql := str_sql + ' WHERE CODRECEBIMENTO = ';
    num := nrec[i - 1];
    str_sql := str_sql + IntToStr(num);
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para gerar a Duplicata.', mtError, [mbOK], 0);
      exit;
    end;
  end;

   if (titulo = '') then
     titulo := cds_crTITULO.AsString;
   sqltexto := 'Execute Procedure GERA_REC_DUPLICATAS (';
   sqltexto := sqltexto + '''' + titulo + ''',';
   sqlTexto := sqltexto + '''' + formatdatetime('mm/dd/yy', StrToDate(dta_Emissao)) + ''',';
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
  case RadioGroup1.ItemIndex of
    0 : begin
          cds_cr.Params[1].AsString := '9-';
        end;
    1 : begin
          cds_cr.Params[1].AsString := '7-';
        end;
  end;
  cds_cr.Open;
  MessageDlg('Duplicata gerada com sucesso !', mtInformation, [mbOK], 0);
end;

procedure TfDuplicata.BitBtn2Click(Sender: TObject);
begin
 if cds_cr.State in [dsInsert, dsEdit] then
  cds_cr.ApplyUpdates(0);
end;

end.
