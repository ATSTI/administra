unit uArquivoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DB, DBXpress, SqlExpr,
  DBClient, Provider, XPMenu, ExtCtrls, MMJPanel, rpcompobase, rpvclreport;

type
  TfArquivoRetorno = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    DataSource1: TDataSource;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sds: TSQLDataSet;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    sdsREC: TSQLDataSet;
    dspREC: TDataSetProvider;
    cdsREC: TClientDataSet;
    DtSrcREC: TDataSource;
    sdsID: TStringField;
    sdsDATA: TStringField;
    cdsID: TStringField;
    cdsDATA: TStringField;
    BitBtn3: TBitBtn;
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    XPMenu1: TXPMenu;
    sqs: TSQLDataSet;
    Memo1: TMemo;
    Label3: TLabel;
    sdsVALOR: TFloatField;
    cdsVALOR: TFloatField;
    sdsTITULO: TIntegerField;
    cdsTITULO: TIntegerField;
    BitBtn4: TBitBtn;
    VCLReport1: TVCLReport;
    sds_cbr: TSQLDataSet;
    dsp_cbr: TDataSetProvider;
    cds_cbr: TClientDataSet;
    cds_cbrID_CBR: TIntegerField;
    cds_cbrDATABAIXA: TDateField;
    cds_cbrNOMECBR: TStringField;
    cds_cbrOBS: TGraphicField;
    sds_cbrID_CBR: TIntegerField;
    sds_cbrDATABAIXA: TDateField;
    sds_cbrNOMECBR: TStringField;
    sds_cbrOBS: TGraphicField;
    cdsRECCODRECEBIMENTO: TIntegerField;
    cdsRECTITULO: TStringField;
    cdsRECEMISSAO: TDateField;
    cdsRECCODCLIENTE: TIntegerField;
    cdsRECDATAVENCIMENTO: TDateField;
    cdsRECDATARECEBIMENTO: TDateField;
    cdsRECCAIXA: TSmallintField;
    cdsRECCONTADEBITO: TIntegerField;
    cdsRECCONTACREDITO: TIntegerField;
    cdsRECSTATUS: TStringField;
    cdsRECVIA: TStringField;
    cdsRECFORMARECEBIMENTO: TStringField;
    cdsRECDATABAIXA: TDateField;
    cdsRECHISTORICO: TStringField;
    cdsRECCODVENDA: TIntegerField;
    cdsRECCODALMOXARIFADO: TSmallintField;
    cdsRECCODVENDEDOR: TSmallintField;
    cdsRECCODUSUARIO: TSmallintField;
    cdsRECN_DOCUMENTO: TStringField;
    cdsRECDATASISTEMA: TSQLTimeStampField;
    cdsRECVALORRECEBIDO: TFloatField;
    cdsRECJUROS: TFloatField;
    cdsRECDESCONTO: TFloatField;
    cdsRECPERDA: TFloatField;
    cdsRECTROCA: TFloatField;
    cdsRECFUNRURAL: TFloatField;
    cdsRECVALOR_PRIM_VIA: TFloatField;
    cdsRECVALOR_RESTO: TFloatField;
    cdsRECVALORTITULO: TFloatField;
    cdsRECOUTRO_CREDITO: TFloatField;
    cdsRECOUTRO_DEBITO: TFloatField;
    cdsRECPARCELAS: TIntegerField;
    cdsRECDUP_REC_NF: TStringField;
    cdsRECNF: TIntegerField;
    cdsRECDP: TIntegerField;
    cdsRECBL: TIntegerField;
    cdsRECCODORIGEM: TIntegerField;
    cdsRECCODIGO_DE_BARRAS: TStringField;
    cdsRECIMAGE_COD_BARRAS: TGraphicField;
    cdsRECDV: TStringField;
    cdsRECNOMECLIENTE: TStringField;
    cdsRECCODCLIENTE_1: TIntegerField;
    sdsRECCODRECEBIMENTO: TIntegerField;
    sdsRECTITULO: TStringField;
    sdsRECEMISSAO: TDateField;
    sdsRECCODCLIENTE: TIntegerField;
    sdsRECDATAVENCIMENTO: TDateField;
    sdsRECDATARECEBIMENTO: TDateField;
    sdsRECCAIXA: TSmallintField;
    sdsRECCONTADEBITO: TIntegerField;
    sdsRECCONTACREDITO: TIntegerField;
    sdsRECSTATUS: TStringField;
    sdsRECVIA: TStringField;
    sdsRECFORMARECEBIMENTO: TStringField;
    sdsRECDATABAIXA: TDateField;
    sdsRECHISTORICO: TStringField;
    sdsRECCODVENDA: TIntegerField;
    sdsRECCODALMOXARIFADO: TSmallintField;
    sdsRECCODVENDEDOR: TSmallintField;
    sdsRECCODUSUARIO: TSmallintField;
    sdsRECN_DOCUMENTO: TStringField;
    sdsRECDATASISTEMA: TSQLTimeStampField;
    sdsRECVALORRECEBIDO: TFloatField;
    sdsRECJUROS: TFloatField;
    sdsRECDESCONTO: TFloatField;
    sdsRECPERDA: TFloatField;
    sdsRECTROCA: TFloatField;
    sdsRECFUNRURAL: TFloatField;
    sdsRECVALOR_PRIM_VIA: TFloatField;
    sdsRECVALOR_RESTO: TFloatField;
    sdsRECVALORTITULO: TFloatField;
    sdsRECOUTRO_CREDITO: TFloatField;
    sdsRECOUTRO_DEBITO: TFloatField;
    sdsRECPARCELAS: TIntegerField;
    sdsRECDUP_REC_NF: TStringField;
    sdsRECNF: TIntegerField;
    sdsRECDP: TIntegerField;
    sdsRECBL: TIntegerField;
    sdsRECCODORIGEM: TIntegerField;
    sdsRECCODIGO_DE_BARRAS: TStringField;
    sdsRECIMAGE_COD_BARRAS: TGraphicField;
    sdsRECDV: TStringField;
    sdsRECNOMECLIENTE: TStringField;
    sdsRECCODCLIENTE_1: TIntegerField;
    sdsRECNOMEARQUIVORETORNO: TStringField;
    cdsRECNOMEARQUIVORETORNO: TStringField;
    sqlArquivoRetorno: TSQLQuery;
    cbBanco: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure baixa;
    procedure naoencontrou;
    procedure encontrou;
    procedure atualizacbr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fArquivoRetorno: TfArquivoRetorno;
  v_pago, v_titulo, v_resto : double;
  codigo, n_titulo : integer;
  texto_memo, nome_cbr : string;

implementation

uses UDM, uBaixaretorno;

{$R *.dfm}

procedure TfArquivoRetorno.BitBtn1Click(Sender: TObject);
var
  txt : TStrings;
  tabela,  tipo,strExporta, strApaga, strInsere, nome_txt : string;
  campo : variant;
  i: integer;
  TD: TTransactionDesc;
begin

  if (cds.Active) then
     cds.Close;

  if (sqs.Active) then
    sqs.Close;
  tabela := 'TABRETORNO';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.SQl.StartTransaction(TD);
    dm.SQl.ExecuteDirect('DROP TABLE TABRETORNO');
    dm.SQl.Commit(TD);
    dm.SQl.Connected := False;
  end;

  if OpenDialog1.Execute then
      nome_txt := OpenDialog1.FileName;

  Label3.Caption := OpenDialog1.FileName;

  if not FileExists(nome_txt) then
  begin
     MessageDlg('Arquivo não existe ou não está no local indicado ' + nome_txt + '?', mtError, [mbOK], 0);
     exit;
  end;

   strExporta := '';

   //DM.SQl.Connected := True;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   DM.sqlsisAdimin.StartTransaction(TD);
   try
     if (sqlArquivoRetorno.Active) then
       sqlArquivoRetorno.Close;
     sqlArquivoRetorno.SQL.Clear;
     sqlArquivoRetorno.SQL.Add('SELECT IDCAMPO, TAMCAMPO, TIPOCAMPO FROM ARQUIVO_RETORNO');
     sqlArquivoRetorno.Open;
     strExporta := 'CREATE TABLE TABRETORNO EXTERNAL FILE ';
     strExporta := strExporta + '''' + nome_txt + '''(';
     i := 0;
     While (not sqlArquivoRetorno.Eof) do
     begin
       if (i > 0) then
         strExporta := strExporta + ', ';
       strExporta := strExporta + sqlArquivoRetorno.Fields.fieldByName('IDCAMPO').AsString;
       strExporta := strExporta + ' CHAR(';
       strExporta := strExporta + sqlArquivoRetorno.Fields.fieldByName('TAMCAMPO').AsString + ') ';
       i := i + 1;
       sqlArquivoRetorno.Next;
     end;
     strExporta := strExporta + ')';
     {strExporta := strExporta + '(ID CHAR(2), CAMPO1 CHAR(61), CAMPO2 CHAR(7), ';
     strExporta := strExporta + 'TITULO CHAR(10), CAMPO3 CHAR(11), CAMPO4 CHAR(19), ';
     strExporta := strExporta + 'DATA CHAR(6), CAMPO5 CHAR(30), VALOR CHAR(17), centavos char(2), ';
     strExporta := strExporta + 'CAMPO6 CHAR(10), DATA1 CHAR(6),CAMPO7 CHAR(221))';}
     DM.sqlsisAdimin.ExecuteDirect(strExporta);
     DM.sqlsisAdimin.Commit(TD);
   except
     DM.sqlsisAdimin.Rollback(TD);
     MessageDlg('Erro ao Criar a Tabela.' + #13 + #10 + 'Altere no firebird.conf a linha' +
     #13 + #10 + '#ExternalFileAccess = None' + #13+#10 + 'para :' + #13+#10 +
     'ExternalFileAccess = Full' , mtError, [mbOK], 0);
     exit;
   end;
   {cds.CommandText := '';
   cds.CommandText := 'Select ID, CAMPO1 , CAMPO2, TITULO, CAMPO3, CAMPO4, ' +
                      'DATA, CAMPO5, VALOR, centavos, CAMPO6, DATA1, CAMPO7 ' +

                   'from TABRETORNO where ID = ' + '''' + '70' + '''';}
   cds.Open;
end;

procedure TfArquivoRetorno.DBGrid1DblClick(Sender: TObject);
begin
  if (cdsREC.Active) then
     cdsREC.Close;
  cdsREC.Params[0].Clear;
  cdsREC.Params[1].AsInteger := cdsTITULO.AsInteger;
  cdsREC.open;
  if cdsREC.IsEmpty then {** se não encontrar o título}
  begin
     if MessageDlg('Título ' + IntToStr(cdsTITULO.AsInteger) + ' não encontrado' +#13+#10+ 'Obs. Busca feita Pelo Título ' +#13+#10+
      ' deseja fazer a busca pelo Campo código do Banco' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if (cdsREC.Active) then
           cdsREC.Close;
        cdsREC.Params[1].Clear;
        cdsREC.Params[0].AsInteger := StrToInt(cdsTITULO.asstring);
        cdsREC.open;
     end;
  end;

end;

procedure TfArquivoRetorno.BitBtn2Click(Sender: TObject);
begin
    if cds.State in [dsInactive] then
       exit;
    cds.First;
    while not cds.Eof do
    begin
       //inicializo as variaveis
       v_pago := 0;
       v_titulo := 0;
       v_resto := 0;
       texto_memo := '';
       if (cdsREC.Active) then
           cdsREC.Close;
       cdsREC.Params[0].AsInteger := cdsTITULO.AsInteger;
       cdsREC.open;
       if cdsREC.IsEmpty then {** se não encontrar o título}
           naoencontrou
       else
           encontrou;
       cds.Next;
    end;
    atualizacbr;
end;

procedure TfArquivoRetorno.baixa;
begin
    v_pago := cdsVALOR.AsFloat;
    v_titulo := cdsRECVALOR_RESTO.AsFloat;

    if cdsREC.State in [dsBrowse] then
       cdsREC.Edit;
    cdsRECDATABAIXA.AsDateTime := now;
    cdsRECSTATUS.AsString := '7-';
    cdsRECVALORRECEBIDO.AsFloat := cdsRECVALOR_RESTO.AsFloat;
    texto_memo := texto_memo + 'CBR643 : ';
    texto_memo := 'Título nº: ' + IntToStr(cdsTITULO.AsInteger) + ' Data: ' +
       cdsDATA.AsString + ' valor R$ : ' +  FloatToStr(cdsVALOR.AsFloat);
    cdsRECNOMEARQUIVORETORNO.AsString := ExtractFileName(OpenDialog1.FileName);
    cdsREC.ApplyUpdates(0);
    texto_memo := texto_memo + ' | Baixado - (Cod.: ' + IntToStr(cdsRECCODCLIENTE.AsInteger);
    texto_memo := texto_memo + ' Cliente : ' + cdsRECNOMECLIENTE.AsString;
    texto_memo := texto_memo + ' Título : ' + cdsRECTITULO.AsString;
    texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsRECVALOR_RESTO.AsFloat) + ')';
    Memo1.Lines.Add(texto_memo);
    n_titulo := cdsTITULO.AsInteger;
    nome_cbr := ExtractFileName(OpenDialog1.FileName);
    if (v_pago > v_titulo) then
    begin
      v_resto := v_pago - v_titulo;
      codigo := cdsRECCODCLIENTE.AsInteger;
      fBaixaretorno.ShowModal;
    end;
end;

procedure TfArquivoRetorno.naoencontrou;
begin
         MessageDlg('Título não encontrado' + cdsTITULO.AsString, mtWarning, [mbOK], 0);
         texto_memo := texto_memo + 'Não encontrado Título nº  ' + IntToStr(cdsTITULO.AsInteger);
         texto_memo := texto_memo + ' Data : ' + cdsDATA.AsString;
         texto_memo := texto_memo + ' Valor R$ : ' + cdsVALOR.AsString + ')';
end;

procedure TfArquivoRetorno.encontrou;
begin
   if cdsRECSTATUS.AsString = '5-' then {** se título Pendente baixo}
   begin
      if MessageDlg('Confirma baixa desse título', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        baixa;
   end
   else
   begin
     MessageDlg('Título ' + cdsTITULO.asstring + ' Já foi Baixado', mtInformation, [mbOK], 0);
   end;  
end;

procedure TfArquivoRetorno.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfArquivoRetorno.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  txt : TStrings;
  tabela,  tipo,strExporta, strApaga, strInsere, nome_txt : string;
  campo : variant;
  TD: TTransactionDesc;
begin

  if (cds.Active) then
     cds.Close;

  if (sqs.Active) then
    sqs.Close;
  tabela := 'TABRETORNO';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DROP TABLE TABRETORNO');
    dm.sqlsisAdimin.Commit(TD);
  end;

  if (sqs.Active) then
    sqs.Close;
    
end;

procedure TfArquivoRetorno.atualizacbr;
begin
  if (not cds_cbr.Active) then
     cds_cbr.Open;
  cds_cbr.Append;
  // pego o generator
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CBR, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_cbrID_CBR.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  cds_cbrDATABAIXA.AsDateTime := Now;
  cds_cbrNOMECBR.AsString := ExtractFileName(fArquivoRetorno.OpenDialog1.FileName);
  cds_cbrOBS.Value := Memo1.Text;
  cds_cbr.ApplyUpdates(0);
  cds_cbr.Close;

end;

end.
