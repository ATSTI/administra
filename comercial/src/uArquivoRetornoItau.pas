unit uArquivoRetornoItau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DB, DBXpress, SqlExpr,
  DBClient, Provider, XPMenu, ExtCtrls, MMJPanel, rpcompobase, rpvclreport;

type
  TfArquivoRetornoItau = class(TForm)
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
    BitBtn3: TBitBtn;
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    sqs: TSQLDataSet;
    Memo1: TMemo;
    Label3: TLabel;
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
    sqlArquivoRetornoItau: TSQLQuery;
    cbBanco: TComboBox;
    XPMenu1: TXPMenu;
    BitBtn5: TBitBtn;
    Label5: TLabel;
    sdsID: TStringField;
    sdsTITULO: TStringField;
    sdsVALOR: TStringField;
    sdsCENTAVOS: TStringField;
    sdsVALORPG: TStringField;
    sdsCENTAVOSPG: TStringField;
    sdsDATA: TStringField;
    sdsVALOR_JUROS: TStringField;
    sdsCENTAVOS_JUROS: TStringField;
    sdsVALOR_COM_JUROS: TStringField;
    sdsVALPG: TStringField;
    sdsVALOR_MULTA: TStringField;
    sdsCENTAVOS_MULTA: TStringField;
    sdsVALOR_COM_MULTA: TStringField;
    sdsBAIXADO: TStringField;
    sdsN_BOLETO: TStringField;
    cdsID: TStringField;
    cdsTITULO: TStringField;
    cdsVALOR: TStringField;
    cdsCENTAVOS: TStringField;
    cdsVALORPG: TStringField;
    cdsCENTAVOSPG: TStringField;
    cdsDATA: TStringField;
    cdsVALOR_JUROS: TStringField;
    cdsCENTAVOS_JUROS: TStringField;
    cdsVALOR_COM_JUROS: TStringField;
    cdsVALPG: TStringField;
    cdsVALOR_MULTA: TStringField;
    cdsCENTAVOS_MULTA: TStringField;
    cdsVALOR_COM_MULTA: TStringField;
    cdsBAIXADO: TStringField;
    cdsN_BOLETO: TStringField;
    sdsNOMECLIENTE: TStringField;
    cdsNOMECLIENTE: TStringField;
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
    sdsRECNOMEARQUIVORETORNO: TStringField;
    sdsRECDATACONSOLIDA: TDateField;
    sdsRECBANCO: TStringField;
    sdsRECAGENCIA: TStringField;
    sdsRECCONTA: TStringField;
    sdsRECSITUACAO: TIntegerField;
    sdsRECSELECIONOU: TStringField;
    sdsRECDESCONTADO: TStringField;
    sdsRECSITUACAOCHEQUE: TStringField;
    sdsRECGERARQREM: TIntegerField;
    sdsRECDATAGERARQREM: TDateField;
    sdsRECVALST: TFloatField;
    sdsRECVALOR_RESTO_SST: TFloatField;
    sdsRECUSERID: TIntegerField;
    sdsRECCODIGOBOLETO: TStringField;
    sdsRECCODIGOBANCO: TIntegerField;
    sdsRECCODCONCILIACAO: TStringField;
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
    cdsRECNOMEARQUIVORETORNO: TStringField;
    cdsRECDATACONSOLIDA: TDateField;
    cdsRECBANCO: TStringField;
    cdsRECAGENCIA: TStringField;
    cdsRECCONTA: TStringField;
    cdsRECSITUACAO: TIntegerField;
    cdsRECSELECIONOU: TStringField;
    cdsRECDESCONTADO: TStringField;
    cdsRECSITUACAOCHEQUE: TStringField;
    cdsRECGERARQREM: TIntegerField;
    cdsRECDATAGERARQREM: TDateField;
    cdsRECVALST: TFloatField;
    cdsRECVALOR_RESTO_SST: TFloatField;
    cdsRECUSERID: TIntegerField;
    cdsRECCODIGOBOLETO: TStringField;
    cdsRECCODIGOBANCO: TIntegerField;
    cdsRECCODCONCILIACAO: TStringField;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure baixa;
    procedure naoencontrou;
    procedure encontrou;
    procedure atualizacbr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure cdsRECReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }

  public
    { Public declarations }
   dataOco : TDateTime;
  end;

var
  fArquivoRetornoItau: TfArquivoRetornoItau;
  v_pago, v_titulo, v_resto : double;
  codigo, n_titulo : integer;
  texto_memo, nome_cbr : string;

implementation

uses UDM, uBaixaretornoItau;

{$R *.dfm}

procedure TfArquivoRetornoItau.BitBtn1Click(Sender: TObject);
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
  tabela := 'TABRETORNOITAU';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.SQl.StartTransaction(TD);
    dm.SQl.ExecuteDirect('DELETE TABLE TABRETORNOITAU');
    dm.SQl.Commit(TD);
    dm.SQl.Connected := False;
  end;

  if OpenDialog1.Execute then
      nome_txt := OpenDialog1.FileName;

  Label3.Caption := OpenDialog1.FileName;

  if not FileExists(nome_txt) then
  begin
     MessageDlg('Arquivo n�o existe ou n�o est� no local indicado ' + nome_txt + '?', mtError, [mbOK], 0);
     exit;
  end;

   strExporta := '';

   //DM.SQl.Connected := True;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   DM.sqlsisAdimin.StartTransaction(TD);
   try
     if (sqlArquivoRetornoItau.Active) then
       sqlArquivoRetornoItau.Close;
     sqlArquivoRetornoItau.SQL.Clear;
     sqlArquivoRetornoItau.SQL.Add('SELECT IDCAMPO, TAMCAMPO, TIPOCAMPO FROM ARQUIVO_RETORNO');
     sqlArquivoRetornoItau.Open;
     strExporta := 'CREATE TABLE TABRETORNO EXTERNAL FILE ';
     strExporta := strExporta + '''' + nome_txt + '''(';
     i := 0;
     While (not sqlArquivoRetornoItau.Eof) do
     begin
       if (i > 0) then
         strExporta := strExporta + ', ';
       strExporta := strExporta + sqlArquivoRetornoItau.Fields.fieldByName('IDCAMPO').AsString;
       strExporta := strExporta + ' CHAR(';
       strExporta := strExporta + sqlArquivoRetornoItau.Fields.fieldByName('TAMCAMPO').AsString + ') ';
       i := i + 1;
       sqlArquivoRetornoItau.Next;
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

procedure TfArquivoRetornoItau.DBGrid1DblClick(Sender: TObject);
begin
  if (cdsREC.Active) then
     cdsREC.Close;
  cdsREC.Params[0].Clear;
  cdsREC.Params[1].AsInteger := StrToInt(cdsN_BOLETO.AsString); //cdsTITULO.AsInteger;
  cdsREC.open;
  if cdsREC.IsEmpty then {** se n�o encontrar o t�tulo}
  begin
     if MessageDlg('T�tulo ' + IntToStr(cdsTITULO.AsInteger) + ' n�o encontrado' +#13+#10+ 'Obs. Busca feita Pelo T�tulo ' +#13+#10+
      ' deseja fazer a busca pelo Campo c�digo do Banco' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if (cdsREC.Active) then
           cdsREC.Close;
        cdsREC.Params[1].Clear;
        cdsREC.Params[0].AsInteger := StrToInt(cdsTITULO.asstring);
        cdsREC.open;
     end;
  end;

end;

procedure TfArquivoRetornoItau.BitBtn2Click(Sender: TObject);
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
       cdsREC.Params[0].AsInteger :=  StrToInt(cdsN_BOLETO.AsString); //  cdsTITULO.AsInteger;
       cdsREC.open;
       if cdsREC.IsEmpty then {** se n�o encontrar o t�tulo}
           naoencontrou
       else
           encontrou;
       cds.Next;
    end;
    atualizacbr;
end;

procedure TfArquivoRetornoItau.baixa;
begin
    v_pago := cdsVALOR.AsFloat;
    v_titulo := cdsRECVALOR_RESTO.AsFloat;

    if cdsREC.State in [dsBrowse] then
       cdsREC.Edit;
    cdsRECDATABAIXA.AsDateTime := now;
    cdsRECDATARECEBIMENTO.AsDateTime := dataOco ; //now;
    cdsRECSTATUS.AsString := '7-';
    cdsRECVALORRECEBIDO.AsFloat := cdsRECVALOR_RESTO.AsFloat;
    texto_memo := texto_memo + 'CBR643 : ';
    texto_memo := 'T�tulo n�: ' +  cdsRECTITULO.AsString + ' Data: ' +
    cdsDATA.AsString + ' valor R$ : ' +  FloatToStr(cdsVALOR.AsFloat);
    cdsRECNOMEArquivoRetorno.AsString := ExtractFileName(OpenDialog1.FileName);
    cdsREC.ApplyUpdates(0);

    texto_memo := texto_memo + ' | Baixado - (Cod.: ' + IntToStr(cdsRECCODCLIENTE.AsInteger);
    texto_memo := texto_memo + ' Cliente : ' + cdsNOMECLIENTE.AsString;
    texto_memo := texto_memo + ' T�tulo : ' + cdsRECTITULO.AsString;
    texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsRECVALOR_RESTO.AsFloat) + ')';
    Memo1.Lines.Add(texto_memo);
    n_titulo := cdsTITULO.AsInteger;
    nome_cbr := ExtractFileName(OpenDialog1.FileName);
    if (v_pago > v_titulo) then
    begin
      v_resto := v_pago - v_titulo;
      codigo := cdsRECCODCLIENTE.AsInteger;
      fBaixaretornoItau.ShowModal;
    end;
end;

procedure TfArquivoRetornoItau.naoencontrou;
begin
         MessageDlg('T�tulo n�o encontrado' + cdsN_BOLETO.AsString, mtWarning, [mbOK], 0);
         texto_memo := texto_memo + 'N�o encontrado T�tulo n�  ' + IntToStr(cdsTITULO.AsInteger);
         texto_memo := texto_memo + ' Data : ' + cdsDATA.AsString;
         texto_memo := texto_memo + ' Valor R$ : ' + cdsVALOR.AsString + ')';
end;

procedure TfArquivoRetornoItau.encontrou;
begin
   if cdsRECSTATUS.AsString = '5-' then {** se t�tulo Pendente baixo}
   begin
      if MessageDlg('Confirma baixa desse t�tulo', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        baixa;
   end
   else
   begin
     MessageDlg('T�tulo ' + cdsTITULO.asstring + ' J� foi Baixado', mtInformation, [mbOK], 0);
   end;  
end;

procedure TfArquivoRetornoItau.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfArquivoRetornoItau.FormClose(Sender: TObject;
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
  tabela := 'TABRETORNOITAU';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM TABRETORNOITAU');
    dm.sqlsisAdimin.Commit(TD);
  end;

  if (sqs.Active) then
    sqs.Close;
    
end;

procedure TfArquivoRetornoItau.atualizacbr;
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
  cds_cbrNOMECBR.AsString := ExtractFileName(fArquivoRetornoItau.OpenDialog1.FileName);
  cds_cbrOBS.Value := Memo1.Text;
  cds_cbr.ApplyUpdates(0);
  cds_cbr.Close;

end;

procedure TfArquivoRetornoItau.BitBtn5Click(Sender: TObject);
  var i : integer;
  Txt: Textfile;
  Entrada , tipo, valorr, tit : string;
  TD: TTransactionDesc;
begin


  if not(cdsREC.Active) then
     cdsREC.Close;
  Memo1.Text := '';

  if not (cds.Active) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM TABRETORNOITAU');
    dm.sqlsisAdimin.Commit(TD);
  end;

  if (sqs.Active) then
    sqs.Close;


    if OpenDialog1.Execute then
    begin
      cds.Open;
      AssignFile(Txt,(OpenDialog1.FileName));{ NOME do arquivo texto}
      Reset(Txt);
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,1,02);
        valorr :=  Copy(Entrada,260,11);
        tit :=  Copy(Entrada,117,10);
       // if (Tipo = '10') then
       if ((Tipo = '10')and(valorr <> '00000000000')and(tit <> '      ')) then
        begin
          cds.Append;
          cds.FieldByName('ID').Value:= Copy(Entrada,1,02);
          cds.FieldByName('TITULO').Value:= Copy(Entrada,117,10);
          cds.FieldByName('DATA').Value:= Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02);   //(11,06)
          cds.FieldByName('VALOR').Value:= StrToInt(Copy(Entrada,153,11));       //155,09);
          cds.FieldByName('CENTAVOS').Value:= Copy(Entrada,164,02);

          cds.FieldByName('VALORPG').Value:= Copy(Entrada,254,11);        // Copy(Entrada,254,11);
          cds.FieldByName('CENTAVOSPG').Value:= Copy(Entrada,265,02);     // Copy(Entrada,265,02);
          cds.FieldByName('VALPG').Value:= Copy(Entrada,254,11) + '.'+ Copy(Entrada,265,02);

          cds.FieldByName('VALOR_JUROS').Value := Copy(Entrada,267,11);
          cds.FieldByName('CENTAVOS_JUROS').Value := Copy(Entrada,278,02);
          cds.FieldByName('VALOR_COM_JUROS').Value := Copy(Entrada,267,11) + '.' +Copy(Entrada,278,02);

          cds.FieldByName('VALOR_MULTA').Value := Copy(Entrada,280,11);
          cds.FieldByName('CENTAVOS_MULTA').Value := Copy(Entrada,291,02);
          cds.FieldByName('VALOR_COM_MULTA').Value := Copy(Entrada,280,11) + '.' +Copy(Entrada,291,02);
          cds.FieldByName('N_BOLETO').Value := Copy(Entrada,127,9);
          cds.FieldByName('NOMECLIENTE').Value := Copy(Entrada,325,60);

          dataOco :=  StrToDate(Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02));

          cds.Post;
        end;
      end;
      cds.ApplyUpdates(0);
      cds.First;
      CloseFile(Txt);
    end;

   Label5.Caption := IntToStr(cds.RecordCount);
   if (Label5.Caption = '0' ) then
         MessageDlg('Esse � Apenas Arquivo de Confer�ncia do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce pode usar este Arquivo em : Ler Remessa Retorno '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

   Label3.Caption := OpenDialog1.FileName;


end;

procedure TfArquivoRetornoItau.cdsRECReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
   ShowMessage(E.Message);
end;

end.
