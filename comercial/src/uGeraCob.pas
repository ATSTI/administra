unit uGeraCob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, TFlatGaugeUnit, StdCtrls, Buttons, Mask,
  FMTBcd, DB, SqlExpr, DBClient, Provider, dbXpress, Grids, DBGrids;

type
  TfGeraCob = class(TForm)
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    BitBtn7: TBitBtn;
    Label8: TLabel;
    Label1: TLabel;
    FlatGauge1: TFlatGauge;
    dxButton1: TdxButton;
    sds_cli: TSQLDataSet;
    dsp_cli: TDataSetProvider;
    cds_cli: TClientDataSet;
    cds_cliCODCLIENTE: TIntegerField;
    cds_cliNOMECLIENTE: TStringField;
    cds_cliRAZAOSOCIAL: TStringField;
    cds_cliCONTATO: TStringField;
    cds_cliTIPOFIRMA: TSmallintField;
    cds_cliCPF: TStringField;
    cds_cliCNPJ: TStringField;
    cds_cliINSCESTADUAL: TStringField;
    cds_cliRG: TStringField;
    cds_cliSEGMENTO: TSmallintField;
    cds_cliREGIAO: TSmallintField;
    cds_cliLIMITECREDITO: TFloatField;
    cds_cliDATACADASTRO: TDateField;
    cds_cliCODUSUARIO: TIntegerField;
    cds_cliSTATUS: TSmallintField;
    cds_cliHOMEPAGE: TStringField;
    cds_cliPRAZORECEBIMENTO: TSmallintField;
    cds_cliPRAZOENTREGA: TSmallintField;
    cds_cliCODBANCO: TSmallintField;
    cds_cliBASE_ICMS: TSmallintField;
    cds_cliDATANASC: TDateField;
    cds_cliCONTA_CLIENTE: TStringField;
    cds_cliOBS: TStringField;
    cds_cliTEM_IE: TStringField;
    cds_cliDATARESC: TDateField;
    cds_cliNOMEMAE: TStringField;
    cds_cliSEXO: TStringField;
    cds_cliFORMA_CORRESPOND: TStringField;
    cds_cliGRUPO_CLIENTE: TStringField;
    cds_cliCODINCLUCANC: TIntegerField;
    cds_cliEXIST_COBERT: TStringField;
    cds_cliEXISTCOPART: TStringField;
    cds_cliDATAREINC: TDateField;
    cds_cliGERAAVISO: TStringField;
    cds_cliGERAENV: TStringField;
    cds_cliGERABOL: TStringField;
    cds_cliEMVIAGEM: TStringField;
    cds_cliDTAALTERA: TDateField;
    cds_cliSERIELETRA: TStringField;
    cds_cliSERIE: TStringField;
    cds_cliRA: TStringField;
    cds_cliCURSO: TStringField;
    cds_cliIP: TStringField;
    cds_cliN_CONTRATO: TStringField;
    cds_cliMAC: TStringField;
    cds_cliMARCA: TStringField;
    cds_cliBANDA_UPLOAD: TStringField;
    cds_cliBANDA_DOWLOAD: TStringField;
    cds_cliTORRE_CONECCAO: TStringField;
    sds_CR: TSQLDataSet;
    sds_CRCODRECEBIMENTO: TIntegerField;
    sds_CRTITULO: TStringField;
    sds_CREMISSAO: TDateField;
    sds_CRCODCLIENTE: TIntegerField;
    sds_CRDATAVENCIMENTO: TDateField;
    sds_CRDATARECEBIMENTO: TDateField;
    sds_CRCAIXA: TSmallintField;
    sds_CRCONTADEBITO: TIntegerField;
    sds_CRCONTACREDITO: TIntegerField;
    sds_CRSTATUS: TStringField;
    sds_CRVIA: TStringField;
    sds_CRFORMARECEBIMENTO: TStringField;
    sds_CRDATABAIXA: TDateField;
    sds_CRHISTORICO: TStringField;
    sds_CRCODVENDA: TIntegerField;
    sds_CRCODALMOXARIFADO: TSmallintField;
    sds_CRCODVENDEDOR: TSmallintField;
    sds_CRCODUSUARIO: TSmallintField;
    sds_CRN_DOCUMENTO: TStringField;
    sds_CRDATASISTEMA: TSQLTimeStampField;
    sds_CRVALORRECEBIDO: TFloatField;
    sds_CRJUROS: TFloatField;
    sds_CRDESCONTO: TFloatField;
    sds_CRPERDA: TFloatField;
    sds_CRTROCA: TFloatField;
    sds_CRFUNRURAL: TFloatField;
    sds_CRVALOR_PRIM_VIA: TFloatField;
    sds_CRVALOR_RESTO: TFloatField;
    sds_CRVALORTITULO: TFloatField;
    sds_CROUTRO_CREDITO: TFloatField;
    sds_CROUTRO_DEBITO: TFloatField;
    sds_CRPARCELAS: TIntegerField;
    sds_CRDUP_REC_NF: TStringField;
    sds_CRNF: TIntegerField;
    sds_CRDP: TIntegerField;
    sds_CRBL: TIntegerField;
    sds_CRCODORIGEM: TIntegerField;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    cds_cli_1: TClientDataSet;
    dsp_cli_1: TDataSetProvider;
    sds_cli_1: TSQLDataSet;
    cds_cli_1CODCLIENTE: TIntegerField;
    cds_cli_1NOMECLIENTE: TStringField;
    cds_cli_1RAZAOSOCIAL: TStringField;
    cds_cli_1CONTATO: TStringField;
    cds_cli_1TIPOFIRMA: TSmallintField;
    cds_cli_1CPF: TStringField;
    cds_cli_1CNPJ: TStringField;
    cds_cli_1INSCESTADUAL: TStringField;
    cds_cli_1RG: TStringField;
    cds_cli_1SEGMENTO: TSmallintField;
    cds_cli_1REGIAO: TSmallintField;
    cds_cli_1LIMITECREDITO: TFloatField;
    cds_cli_1DATACADASTRO: TDateField;
    cds_cli_1CODUSUARIO: TIntegerField;
    cds_cli_1STATUS: TSmallintField;
    cds_cli_1HOMEPAGE: TStringField;
    cds_cli_1PRAZORECEBIMENTO: TSmallintField;
    cds_cli_1PRAZOENTREGA: TSmallintField;
    cds_cli_1CODBANCO: TSmallintField;
    cds_cli_1BASE_ICMS: TSmallintField;
    cds_cli_1DATANASC: TDateField;
    cds_cli_1CONTA_CLIENTE: TStringField;
    cds_cli_1OBS: TStringField;
    cds_cli_1TEM_IE: TStringField;
    cds_cli_1ID_COB: TIntegerField;
    cds_cli_1DATARESC: TDateField;
    cds_cli_1NOMEMAE: TStringField;
    cds_cli_1SEXO: TStringField;
    cds_cli_1FORMA_CORRESPOND: TStringField;
    cds_cli_1GRUPO_CLIENTE: TStringField;
    cds_cli_1CODINCLUCANC: TIntegerField;
    cds_cli_1EXIST_COBERT: TStringField;
    cds_cli_1EXISTCOPART: TStringField;
    cds_cli_1DATAREINC: TDateField;
    cds_cli_1GERAAVISO: TStringField;
    cds_cli_1GERAENV: TStringField;
    cds_cli_1GERABOL: TStringField;
    cds_cli_1EMVIAGEM: TStringField;
    cds_cli_1DTAALTERA: TDateField;
    cds_cli_1SERIELETRA: TStringField;
    cds_cli_1SERIE: TStringField;
    cds_cli_1RA: TStringField;
    cds_cli_1CURSO: TStringField;
    cds_cli_1IP: TStringField;
    cds_cli_1N_CONTRATO: TStringField;
    cds_cli_1MAC: TStringField;
    cds_cli_1MARCA: TStringField;
    cds_cli_1BANDA_UPLOAD: TStringField;
    cds_cli_1BANDA_DOWLOAD: TStringField;
    cds_cli_1TORRE_CONECCAO: TStringField;
    ComboBox1: TComboBox;
    sds_faixa: TSQLDataSet;
    dsp_faixa: TDataSetProvider;
    cds_faixa: TClientDataSet;
    cds_faixaCODFAIXA: TIntegerField;
    cds_faixaDESCRICAO: TStringField;
    cds_faixaIDADE_MIN: TSmallintField;
    cds_faixaIDADE_MAX: TSmallintField;
    cds_faixaVALOR_PLANO: TFloatField;
    cds_faixaDESCONTO: TFloatField;
    cds_faixaUSO: TStringField;
    Label2: TLabel;
    sds_faixaCODFAIXA: TIntegerField;
    sds_faixaDESCRICAO: TStringField;
    sds_faixaIDADE_MIN: TSmallintField;
    sds_faixaIDADE_MAX: TSmallintField;
    sds_faixaVALOR_PLANO: TFloatField;
    sds_faixaDESCONTO: TFloatField;
    sds_faixaUSO: TStringField;
    cds_cli_1COD_FAIXA: TIntegerField;
    cds_cli_1DESCONTO: TFloatField;
    Label3: TLabel;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    edCodCCusto: TComboBox;
    Label11: TLabel;
    ComboBox3: TComboBox;
    Label12: TLabel;
    sds_serieletra: TSQLDataSet;
    sds_serieletraSERIELETRA: TStringField;
    sds_serieletraTURNO: TStringField;
    sds_serieletraTIPOENSINO: TStringField;
    sds_serieletraSERIE: TStringField;
    sds_serieletraDESC_CLASSE: TStringField;
    sdscli: TSQLDataSet;
    sdscliSERIE: TStringField;
    dsp_serie: TDataSetProvider;
    cdsSerieLetra: TClientDataSet;
    cdsSerieLetraSERIELETRA: TStringField;
    cdsSerieLetraTURNO: TStringField;
    cdsSerieLetraTIPOENSINO: TStringField;
    cdsSerieLetraSERIE: TStringField;
    cdsSerieLetraDESC_CLASSE: TStringField;
    procedure dxButton1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    str1 : string;
    procedure gera_cob_escolas;
    procedure gera_cob_outros;
    procedure gera_cob_ash;    
  end;

var
  fGeraCob: TfGeraCob;
  str_sql: String;

implementation

uses ucrEscolas, UDm, ufcr;

{$R *.dfm}

procedure TfGeraCob.dxButton1Click(Sender: TObject);
begin
   if (meDta3.Text = '  /  /  ') then
   begin
     MessageDlg('Informe a data de Emissão.', mtWarning, [mbOK], 0);
     exit;
   end;
   if (meDta4.Text = '  /  /  ') then
   begin
     MessageDlg('Informe a data de Vencimento.', mtWarning, [mbOK], 0);
     exit;
   end;

   if not cds_parametro.Active then
      cds_parametro.Open;
   cds_parametro.Locate('PARAMETRO', 'MODULO',[loPartialKey]);
   // usado para <> de Escolas
   if (cds_parametroD3.AsString = 'S') then
      gera_cob_outros;

   // usado para escolas
   if (cds_parametroD5.AsString = 'S') then
     gera_cob_escolas;

   // usado para ASH
   if (cds_parametroD6.AsString = 'S') then
      gera_cob_ash;

   cds_parametro.Close;
end;

procedure TfGeraCob.gera_cob_escolas;
var str1 : string;
begin
  if (cdsSerieLetra.Locate('DESC_CLASSE', ComboBox3.Text, [loCaseInsensitive])) then
    str1 := cdsSerieLetraSERIE.AsString;

   str_sql := '';
   if (cds_cli.Active) then
      cds_cli.Close;
   cds_cli.Params[0].Clear; // Serie
   cds_cli.Params[1].Clear; // Todas Serie
   cds_cli.Params[2].Clear; // RA
   cds_cli.Params[3].Clear; // Todos RA
   cds_cli.Params[4].Clear; // COD BANCO
   cds_cli.Params[5].Clear; // Todos COD BANCO
   if (ComboBox3.Text <> '') then
     cds_cli.Params.ParamByName('serie').AsString := str1 // Série do Aluno
   else
     cds_cli.Params.ParamByName('serie').AsString := 'tudo'; // Todas Série do Aluno


   {if (.edCodCliente.Text = '') then       }
     cds_cli.Params.ParamByName('ra').AsString := 'todos osra';
  { else
     cds_cli.Params[2].AsString := fcrEscolas.edCodCliente.Text;}

  { if (edCodCCusto.Text <> '') then
   begin
      if (not dm.cds_ccusto.Active) then
        dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      cds_cli.Params[4].Value := dm.cds_ccustoCODIGO.AsInteger;
      dm.cds_ccusto.Close;
   end
   else}
      cds_cli.Params.ParamByName('bc').Value := 0;

   cds_cli.Open;
   cds_cli.First;
   FlatGauge1.Progress := 0;
   FlatGauge1.MaxValue := cds_cli.RecordCount;
   While not cds_cli.Eof do
   begin
     if (sds_CR.Active) then
         sds_CR.Close;
     sds_CR.Params[0].AsInteger := cds_cliCODCLIENTE.AsInteger;
     sds_CR.Params[1].AsDateTime := StrToDateTime(meDta4.Text);
     sds_CR.Open;
     if (sds_CR.IsEmpty) then
     begin
       Try
         str_sql := 'EXECUTE PROCEDURE SP_GERA_COBRANCA(';
         str_sql := str_sql + IntToStr(cds_cliCODCLIENTE.AsInteger) + ', ';
         str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta3.Text)) + '''' + ', ';
         str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta4.Text)) + '''';
         if (CheckBox1.Checked = True) then
           str_sql := str_sql + ', ' + QuotedStr('S')
         else
           str_sql := str_sql + ', ' + QuotedStr('N');

         // Código do Usuario que fez o Lancamento
         str_sql := str_sql + ', 1)';

         dm.sqlsisAdimin.ExecuteDirect(str_sql);
       Except
         MessageDlg('Não foi possível gerar Título.' + IntToStr(cds_cliCODCLIENTE.AsInteger) +'-'+ cds_cliNOMECLIENTE.AsString, mtError, [mbOK], 0);
       end;
     end
     else
     begin
       MessageDlg('Já existe uma Título com esse Vencimento para o Aluno' +
          cds_cliNOMECLIENTE.AsString, mtWarning, [mbOK], 0);
     end;
     cds_cli.Next;
     FlatGauge1.Progress := FlatGauge1.Progress + 1;
   end;
   cds_cli.Close;
   MessageDlg('Título Gerado com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfGeraCob.gera_cob_outros;
var dia, mes, ano : word;
    dataVcto: TDate;
    cm : string;
    TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    cm := 'ALTER TRIGGER INCLUI_REC ACTIVE;';
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(cm);
      dm.sqlsisAdimin.Commit(TD);
    Except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;

    if (CheckBox1.Checked) then
    begin
      DecodeDate(StrToDateTime(meDta4.Text),ano, mes, dia);
    end;
    str_sql := '';
    if (cds_cli_1.Active) then
      cds_cli_1.Close;
    cds_cli_1.Params[0].Clear;
    cds_cli_1.Params[1].Clear;
    cds_cli_1.Params[2].Clear;
    cds_cli_1.Params[3].Clear;
    //if (fcrproc.edCodCliente.Text = '') then
    cds_cli_1.Params[1].AsInteger := 9999999;
    //else
    //  cds_cli_1.Params[0].AsInteger := StrToInt(fcrproc.edCodCliente.Text);

    // FAIXA
    if (ComboBox1.Text = '') then
      cds_cli_1.Params[3].AsInteger := 9999999;
    if (ComboBox1.Text <> '') then
    begin
      cds_faixa.Locate('DESCRICAO', ComboBox1.Text,[loCaseInsensitive]);
      cds_cli_1.Params[2].AsInteger := cds_faixaCODFAIXA.AsInteger;
    end;
    cds_cli_1.Open;
    cds_cli_1.First;

    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := cds_cli_1.RecordCount;

    try
      dm.sqlsisAdimin.StartTransaction(TD);
      While not cds_cli_1.Eof do
      begin
        dataVcto := StrToDateTime(meDta4.Text);
        if (CheckBox1.Checked) then
        begin
          try
            if (not cds_cli_1PRAZORECEBIMENTO.IsNull) then
              dataVcto := EncodeDate(ano, mes, cds_cli_1PRAZORECEBIMENTO.AsInteger);
          except
            dataVcto := StrToDateTime(meDta4.Text);
          end;
        end;

        if (sds_CR.Active) then
          sds_CR.Close;
        sds_CR.Params[0].AsInteger := cds_cli_1CODCLIENTE.AsInteger;
        sds_CR.Params[1].AsDateTime := dataVcto;
        sds_CR.Open;
        if (sds_CR.IsEmpty) then
        begin
          Try
            str_sql := 'EXECUTE PROCEDURE SP_GERA_COBRANCA(';
            str_sql := str_sql + IntToStr(cds_cli_1CODCLIENTE.AsInteger) + ', ';
            str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta3.Text)) + '''' + ', ';
            str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta4.Text)) + '''';

            if (CheckBox1.Checked) then
              str_sql := str_sql + ', ' + QuotedStr('S')
            else
              str_sql := str_sql + ', ' + QuotedStr('N');
            // Código do Usuario que fez o Lancamento
            str_sql := str_sql + ', 1)';
            dm.sqlsisAdimin.ExecuteDirect(str_sql);
            memo1.Lines.Add('Gerado com sucesso : ' + cds_cli_1NOMECLIENTE.AsString + ';');
          Except
            on E : Exception do
            begin
              memo1.Lines.Add('* Erro no Cliente : ' + cds_cli_1NOMECLIENTE.AsString + ';');
              ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
              //dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
            end;
          end;
        end
        else
        begin
          {if (MessageDlg('Já existe uma Título com esse Vencimento para' + #10#13 +
            ' o Cliente : ' + cds_cli_1NOMECLIENTE.AsString + ',' + #10#13 +
            ' Continua fazendo Lançamentos ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
            exit;}
          memo1.Lines.Add('# Cliente já gerado : ' + cds_cli_1NOMECLIENTE.AsString + ';');
        end;
        cds_cli_1.Next;
        FlatGauge1.Progress := FlatGauge1.Progress + 1;
      end;
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Título Gerado com sucesso.', mtInformation, [mbOK], 0);
      cds_cli_1.Close;
    Except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  finally
    cm := 'ALTER TRIGGER INCLUI_REC INACTIVE;';
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(cm);
      dm.sqlsisAdimin.Commit(TD);
    Except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  end;
end;

procedure TfGeraCob.BitBtn7Click(Sender: TObject);
begin
 meDta3.Text := '  /  /  ';
 meDta4.Text := '  /  /  ';
end;

procedure TfGeraCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (cds_faixa.Active) then
     cds_faixa.Close;
end;

procedure TfGeraCob.gera_cob_ash;
var  TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    { Executa alteração das faixas }
    dm.sqlsisAdimin.ExecuteDirect('execute PROCEDURE alteraFaixa(' +
    '''' + formatdatetime('mm/dd/yy', StrToDateTime(meDta3.Text)) + '''' +
    ', ' + QuotedStr(edCodCCusto.Text) + ')');
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para Atualizar Faixas para Aniversariantes.', mtError, [mbOK], 0);
    exit;
  end;

   str_sql := '';
   if (cds_cli_1.Active) then
      cds_cli_1.Close;
   cds_cli_1.CommandText := 'SELECT * FROM CLIENTES WHERE GRUPO_CLIENTE = ' +
     QuotedStr(edcodccusto.Text) + ' and Status = 0 and Segmento = 0';

   // FAIXA
   {if (ComboBox1.Text = '') then
     cds_cli_1.Params[3].AsInteger := 9999999;
   if (ComboBox1.Text <> '') then
   begin
     cds_faixa.Locate('DESCRICAO', ComboBox1.Text,[loCaseInsensitive]);
     cds_cli_1.Params[2].AsInteger := cds_faixaCODFAIXA.AsInteger;
   end;}

   cds_cli_1.Open;
   cds_cli_1.First;
   FlatGauge1.Progress := 0;
   FlatGauge1.MaxValue := cds_cli_1.RecordCount;
   dm.sqlsisAdimin.StartTransaction(TD);
   Try
     While not cds_cli_1.Eof do
     begin
       Try
         str_sql := 'EXECUTE PROCEDURE SPGERAMENSALIDADE(';
         str_sql := str_sql + IntToStr(cds_cli_1CODCLIENTE.AsInteger) + ', ';
         str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta3.Text)) + '''' + ', ';
         str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta4.Text)) + '''' + ',';
         if (CheckBox1.Checked) then
           str_sql := str_sql + QuotedStr('S') + ')'
         else
           str_sql := str_sql + QuotedStr('N') + ')';
         dm.sqlsisAdimin.ExecuteDirect(str_sql);

         Memo1.Lines.Add('Gerado Título para: ' + cds_cli_1NOMECLIENTE.AsString);
       Except
         Memo1.Lines.Add('Não foi possível gerar Título : ' + cds_cli_1NOMECLIENTE.AsString);
       end;
       cds_cli_1.Next;
       FlatGauge1.Progress := FlatGauge1.Progress + 1;
     end;
   dm.sqlsisAdimin.Commit(TD);
   except
     dm.sqlsisAdimin.Rollback(TD);
     MessageDlg('Erro para Gerar Mensalidades.', mtError, [mbOK], 0);
     exit;
   end;
   //FlatGauge1.Progress := 0;
   cds_cli_1.Close;
   MessageDlg('Títulos Gerados com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfGeraCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfGeraCob.FormCreate(Sender: TObject);
begin
    if not cds_faixa.Active then
      cds_faixa.Open;
    // populo a combobox
    cds_faixa.First;
    while not cds_faixa.Eof do
    begin
      ComboBox1.Items.Add(cds_faixaDESCRICAO.AsString);
      cds_faixa.Next;
    end;

        if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;

    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    // populo a combobox
    DM.cds_ccusto.First;
    while not DM.cds_ccusto.Eof do
    begin
      edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;

   if ((dm.moduloUsado <> 'SAUDE') and (dm.moduloUsado = 'ESCOLA')) then
   begin
    if (not cdsserieletra.Active) then
      cdsserieletra.Open;
    cdsserieletra.First;
    while not cdsserieletra.Eof do
    begin
      ComboBox3.Items.Add(cdsserieletraDESC_CLASSE.AsString);
      cdsserieletra.Next;
    end;
   end;

end;

end.
