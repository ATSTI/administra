unit uLancaProcPcmso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  JvExStdCtrls, JvEdit, JvDBSearchEdit, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, DBXPress, JvComponentBase, JvFormAutoSize, JvCombobox,
  JvDBSearchComboBox, FMTBcd, DBClient, Provider, SqlExpr, DateUtils;

type
  TfLancaProcPcmso = class(TfPai)
    Label3: TLabel;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    JvDBSearchEdit1: TJvDBSearchEdit;
    Label6: TLabel;
    JvDBSearchEdit3: TJvDBSearchEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    JvDBSearchEdit5: TJvDBSearchEdit;
    Label10: TLabel;
    Memo1: TMemo;
    dsProcedimento: TDataSource;
    dsContaCredito: TDataSource;
    Label13: TLabel;
    Label11: TLabel;
    JvDBSearchEdit4: TJvDBSearchComboBox;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetCODIGO: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetLOTES: TStringField;
    dsp_Mov_det: TDataSetProvider;
    dsp_Movimento: TDataSetProvider;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detCODIGO: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detLOTES: TStringField;
    cds_Mov_detTotalPedido: TAggregateField;
    DtSrc1: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsESTOQUEREPOSICAO: TFloatField;
    cdsPRODUTO: TStringField;
    cdsCONTA_DESPESA: TStringField;
    cdsCONTA_RECEITA: TStringField;
    cdsCONTA_ESTOQUE: TStringField;
    cdsVALOR_PRAZO: TFloatField;
    cdsCODPRO: TStringField;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    JvDBSearchEdit6: TJvDBSearchComboBox;
    sdsTitular: TSQLDataSet;
    sdsTitularCODCLIENTE: TIntegerField;
    cdsTitular: TClientDataSet;
    dspTitular: TDataSetProvider;
    cdsTitularCODCLIENTE: TIntegerField;
    Label12: TLabel;
    Label14: TLabel;
    dbcodFuncionario: TJvDBSearchEdit;
    dbFuncionario: TJvDBSearchComboBox;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsFuncionarioCODCLIENTE: TIntegerField;
    sdsFuncionarioNOMECLIENTE: TStringField;
    sdsFuncionarioRAZAOSOCIAL: TStringField;
    sdsFuncionarioRA: TStringField;
    cdsFuncionarioCODCLIENTE: TIntegerField;
    cdsFuncionarioNOMECLIENTE: TStringField;
    cdsFuncionarioRAZAOSOCIAL: TStringField;
    cdsFuncionarioRA: TStringField;
    GroupBox1: TGroupBox;
    JvCalcEdit2: TJvCalcEdit;
    GroupBox2: TGroupBox;
    JvCalcEdit1: TJvCalcEdit;
    LimparFuncionario1: TMenuItem;
    sdsFuncionarioSTATUS: TSmallintField;
    cdsFuncionarioSTATUS: TSmallintField;
    sdsContaMov: TSQLDataSet;
    Edit1: TEdit;
    Label15: TLabel;
    sdsFuncionarioSEGMENTO: TSmallintField;
    cdsFuncionarioSEGMENTO: TSmallintField;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBSearchEdit2Change(Sender: TObject);
    procedure JvDBSearchEdit1Exit(Sender: TObject);
    procedure JvDBSearchEdit3Exit(Sender: TObject);
    procedure JvDBSearchEdit4Exit(Sender: TObject);
    procedure JvDateEdit1Exit(Sender: TObject);
    procedure JvDateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    codReceb, codPagto, codMov, codVen, codMovD, codForn : integer;
    ccusto, ComandTextS_7, codConta ,codFun, empresa: string;
    vlr : double;
    { Public declarations }
  end;

var
  fLancaProcPcmso: TfLancaProcPcmso;

implementation

uses UDmSaude, uDM;

{$R *.dfm}

procedure TfLancaProcPcmso.btnGravarClick(Sender: TObject);
var
  TD: TTransactionDesc;
  str1: string;
  Save_Cursor:TCursor;
  str_sql: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  JvCalcEdit2.Text := FloatToStr(cdsVALOR_PRAZO.AsFloat);
  if (codMov = 0) then
  begin
    try
      { rotina }

      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      // Procuro o Código do Titular
      if (cdsTitular.Active) then
        cdsTitular.Close;
      cdsTitular.Params[0].AsString := trim(dmSaude.cdsClienteBuscaRAZAOSOCIAL.AsString);
      cdsTitular.Open;
      str1 := 'EXECUTE PROCEDURE LANCARECEITASAUDE( ';
      str1 := str1 + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)); // Emissao
      str1 := str1 + ',';
      str1 := str1 + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)); // Vencimento
      str1 := str1 + ',';
      str1 := str1 + IntToStr(dmSaude.cdsClienteBuscaCODCLIENTE.asInteger); // CódClienteTitular
      str1 := str1 + ',';
      // CódClienteDependente (Gravado no Campo CONTROLE movDetalhe)
      str1 := str1 + IntToStr(cdsFuncionarioCODCLIENTE.AsInteger);
      str1 := str1 + ',';
      str1 := str1 + IntToStr(cdsCODPRODUTO.asInteger); // Conta a Receber
      str1 := str1 + ',';
      //str1 := str1 + IntToStr(dm.cds_1_contasCODIGO.asInteger); // Conta a Pagar
      str1 := str1 + 'null,';
      str1 := str1 + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger); // CódFornecedor (Contratado)
      str1 := str1 + ',';
      DecimalSeparator := '.';
      //str1 := str1 + FloatToStr(JvCalcEdit3.Value); // Valor a Pagar Fornecedor (contratado);
      str1 := str1 + '0,';
      //str1 := str1 + FloatToStr(cdsVALOR_PRAZO.AsFloat);
      str1 := str1 + FloatToStr(JvCalcEdit2.Value); // Valor a REceber do Cliente
      str1 := str1 + ',';
      str1 := str1 + FloatToStr(JvCalcEdit1.Value); // Valor REEMBOLSO para o Cliente
      //str1 := str1 + '0';
      str1 := str1 + ',';
      str1 := str1 + QuotedStr(memo1.Text); // Historico
      str1 := str1 + ',';
      if (ccusto = 'ASH') then
        str1 := str1 + '51' // ASH
      else
        str1 := str1 + '52'; // PCMSO
      if (codReceb = 0) then
        str1 := str1 + ', null'
      else
        str1 := str1 + ', ' + IntToStr(codReceb);
      if (codReceb = 0) then
        str1 := str1 + ', null'
      else
        str1 := str1 + ', ' + IntToStr(codPagto);

      str1 := str1 + ')';
      DecimalSeparator := ',';
      dm.sqlsisAdimin.ExecuteDirect(str1);

      Try
         dm.sqlsisAdimin.Commit(TD);
         MessageDlg('Registro gravado com sucesso.', mtConfirmation,
             [mbOk], 0);
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, registro não alterado?', mtError,
             [mbOk], 0);
      end;
      //inherited;
      DtSrc.DataSet.Cancel;
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end // do if
  else begin // é uma alteração
    try
      { rotina }
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';
{      if (cdsTitular.Active) then
        cdsTitular.Close;
      cdsTitular.Params[0].AsString := trim(cdsFuncionarioRAZAOSOCIAL.AsString);
      cdsTitular.Open;
      if (cdsTitularCODCLIENTE.AsInteger = 0 ) then
        cdsTitular.Locate('codcliente',JvDBSearchEdit1.Text,[loCaseInsensitive]);}
      str1 := 'UPDATE MOVIMENTO SET DATAMOVIMENTO = ' +
        QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) +
        ' , CODCLIENTE = ' + IntToStr(dmsaude.cdsClienteBuscaCODCLIENTE.AsInteger) +
        ' WHERE CODMOVIMENTO = ' + IntToStr(codMov);
      dm.sqlsisAdimin.ExecuteDirect(str1);

      //dmSaude.cdsFornecedor.Locate('NOMEFORNECEDOR', JvDBSearchEdit6.Text, [loCaseInsensitive]);
      //if (not cds.Active) then
      //   cds.Open;
      //cds.Locate('PRODUTO', JvDBSearchEdit4.Text, [loCaseInsensitive]);
      str1 := 'UPDATE MOVIMENTODETALHE SET PRECO = '+
        FloatToStr(JvCalcEdit2.Value-JvCalcEdit1.Value) +
        ' ,CODPRODUTO = ' + IntToStr(cdsCODPRODUTO.asInteger) +
        ' ,CONTROLE = ' + IntToStr(cdsFuncionarioCODCLIENTE.asInteger) +
        ' ,COD_COMISSAO = ' + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) +
        ' ,LOTE = ' + QuotedStr(memo1.Text) +
        ' where codDetalhe = ' + IntToStr(codMovd);
      dm.sqlsisAdimin.ExecuteDirect(str1);


      str1 := 'UPDATE VENDA set dataVenda = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) +
        ', dataVencimento = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) +
        ' where codVenda = ' + IntToStr(codVen);
      dm.sqlsisAdimin.ExecuteDirect(str1);

           {
            str1 := 'UPDATE VENDA set valor = ' + FloatToStr(cdsVALOR_PRAZO.AsFloat) +
        ', desconto = 0' +
        ', dataVenda = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) +
        ', dataVencimento = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) +
        ' where codVenda = ' + IntToStr(codVen);
      dm.sqlsisAdimin.ExecuteDirect(str1);}


      DecimalSeparator := ',';
      dm.sqlsisAdimin.Commit(TD);
         MessageDlg('Registro alterado com sucesso.', mtConfirmation,
             [mbOk], 0);
      cds_Movimento.Cancel;
    except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro no sistema, registro não alterado?', mtError,
        [mbOk], 0);
    end;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;

       if(cdsFuncionarioSEGMENTO.AsInteger = 1) then
       if(JvDBSearchEdit3.Text = '185') then
       begin
         TD.TransactionID := 1;
         TD.IsolationLevel := xilREADCOMMITTED;
         dm.sqlsisAdimin.StartTransaction(TD);
       //QUANDO LANÇAR PROCEDIMENTO 185 ALTERAR STATUS PARA DESLIGADO
          str_sql := 'UPDATE CLIENTES SET STATUS = 1 ,DATARESC = '+ QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) +
         ' WHERE RA = ' + cdsFuncionarioRA.AsString ;
          dm.sqlsisAdimin.StartTransaction(TD);
         try
         dm.sqlsisAdimin.ExecuteDirect(str_sql);
         dm.sqlsisAdimin.Commit(TD);
         except
         dm.sqlsisAdimin.Rollback(TD);
         MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
         exit;
         end;

       end;

end;

procedure TfLancaProcPcmso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmSaude.cdsFornecedor.Close;
  dmSaude.cdsClienteBusca.Close;
  dm.cds_1_contas.Close;
  dm.cds_7_contas.Close;
  dm.cds_7_contas.CommandText := ComandTextS_7;
  DMSaude.sqlVencimentoPCMSO.Close;
end;

procedure TfLancaProcPcmso.btnIncluirClick(Sender: TObject);
var sqltexto : string ;
   ano, mes,mes1, dia: word;
begin
  inherited;
   JvDateEdit1.Date := Today;
  if (not DMSaude.sqlVencimentoPCMSO.Active) then
    DMSaude.sqlVencimentoPCMSO.Open;
  Edit1.Text := DMSaude.sqlVencimentoPCMSODESCRICAO.Text;

  decodedate(StrToDate(Edit1.Text), ano, mes, dia);
  decodedate(JvDateEdit1.date, ano, mes1, dia);

  if(mes = mes1) then
  MessageDlg('As Mensalidades Deste Mes já Foram Geradas '+#13+#10+' Lançamento com o mesmo Mes do Vencimento '+#13+#10+' Confirme se as Datas Estão Corretas ', mtWarning, [mbOK], 0);
  sqltexto := '';
  codReceb := 0;

  if (not cds.Active) then
    cds.Open;

  ccusto := 'PCMSO';
  sqltexto := 'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA from CLIENTES where status = 0 and GRUPO_CLIENTE = ';
  sqltexto :=  sqltexto + QuotedStr('PCMSO')+ ' and segmento = 0 order by NOMECLIENTE ';

  if (dmSaude.cdsClienteBusca.Active) then
    dmSaude.cdsClienteBusca.close;

  dmSaude.cdsClienteBusca.CommandText := '';
  dmSaude.cdsClienteBusca.CommandText := SQLTEXTO ;

//  dmSaude.cdsClienteBusca.CommandText := 'select CODCLIENTE, NOMECLIENTE, ' +
//   'RAZAOSOCIAL, RA from CLIENTES where status = 0 and GRUPO_CLIENTE = :pCC ' +
//   ' and segmento = 0 order by NOMECLIENTE ';
//  dmSaude.cdsClienteBusca.Params[0].AsString := ccusto;


  dmSaude.cdsClienteBusca.Open;

  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 2;
  dmSaude.cdsFornecedor.Params[1].AsInteger := 4;
  dmSaude.cdsFornecedor.Params[2].AsInteger := 5;
  dmSaude.cdsFornecedor.Params[3].AsInteger := 7;

  dmSaude.cdsFornecedor.Open;

  // JvDBSearchEdit1.Text := '';  // comentei pra não precisar preencher quando for + de um lançamento
  // JvDBSearchEdit2.Text := '';  // comentei pra não precisar preencher quando for + de um lançamento
  JvDBSearchEdit3.Text := '';
  JvDBSearchEdit4.Text := '';
  JvDBSearchEdit5.Text := '';
  JvDBSearchEdit6.Text := '';
  //JvDBSearchEdit7.Text := '';
  //JvDBSearchEdit8.Text := '';

  JvDateEdit1.Date  := today;
  JvDateEdit2.date := StrToDate(Edit1.Text);
  dbFuncionario.Text := '';
  dbcodFuncionario.Text := '';

  //JvCalcEdit3.Text := '';

  Memo1.Clear;
  JvDateEdit1.SetFocus;
end;

procedure TfLancaProcPcmso.DtSrcStateChange(Sender: TObject);
var icompon: integer;
begin
  inherited;
  for icompon := 0 to ComponentCount - 1 do
  begin
    if Components[icompon] is TJvDBSearchEdit then
      (Components[icompon] as TJvDBSearchEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
    if Components[icompon] is TJvDateEdit then
      (Components[icompon] as TJvDateEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
    if Components[icompon] is TJvCalcEdit then
      (Components[icompon] as TJvCalcEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
    if Components[icompon] is TMemo then
      (Components[icompon] as TMemo).Enabled := DtSrc.State in [dsInsert,dsEdit];
  end;
end;

procedure TfLancaProcPcmso.FormCreate(Sender: TObject);
begin
  inherited;
  ComandTextS_7 := '';
  codReceb := 0;
  codPagto := 0;
  codMov := 0;
end;

procedure TfLancaProcPcmso.btnExcluirClick(Sender: TObject);
var
  TD: TTransactionDesc;
//  str1: string;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  if (codMov > 0) then
  begin
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
             [mbYes,mbNo],0) = mrYes then
    begin
      try
        if (sdsContaMov.Active) then
          sdsContaMov.Close;
        sdsContaMov.Params[0].AsInteger := codMov;
        sdsContaMov.Open;
        if (sdsContaMov.Fields[0].AsInteger > 1) then
        begin
          { rotina }
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTODETALHE WHERE ' +
              'CODDETALHE = ' + IntToStr(codMovD));

          DecimalSeparator := '.';
         {
          str1 := 'UPDATE VENDA set valor = valor - ' + FloatToStr(JvCalcEdit2.Value) +
            ', desconto = desconto + ' + FloatToStr(JvCalcEdit1.Value) +
            ' where codVenda = ' + IntToStr(codVen);
          DecimalSeparator := ',';
          dm.sqlsisAdimin.ExecuteDirect(str1);
         }
          dm.sqlsisAdimin.Commit(TD);
        end
        else begin
          { rotina }
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE ' +
              'CODMOVIMENTO = ' + IntToStr(codMov));

         // dm.sqlsisAdimin.ExecuteDirect(str1);

          dm.sqlsisAdimin.Commit(TD);

        end;
        MessageDlg('Registro excluído com sucesso.', mtConfirmation,
           [mbOk], 0);
        cds_Movimento.Cancel;
      except
        dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
        MessageDlg('Erro no sistema, registro não excluído.', mtError,
          [mbOk], 0);
      end;
    end;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLancaProcPcmso.FormShow(Sender: TObject);
//var  ano, mes,mes1, dia: word;
begin
  inherited;
{   JvDateEdit1.Date := Today;

  if (not DMSaude.sqlVencimentoPCMSO.Active) then
    DMSaude.sqlVencimentoPCMSO.Open;
  Edit1.Text := DMSaude.sqlVencimentoPCMSODESCRICAO.Text;

  decodedate(StrToDate(Edit1.Text), ano, mes, dia);
  decodedate(JvDateEdit1.date, ano, mes1, dia);

  if(mes = mes1) then
  MessageDlg('As Mensalidades Deste Mes já Foram Geradas '+#13+#10+' Lançamento com o mesmo Mes do Vencimento '+#13+#10+' Confirme se as Datas Estão Corretas ', mtWarning, [mbOK], 0);

}
  if (not cds.Active) then
    cds.Open;
  if (codmov > 0) then
  begin
    if (cdsFuncionario.Active) then
      cdsFuncionario.Close;
    cdsFuncionario.Params[0].AsString := dmSaude.cdsClienteBuscaRAZAOSOCIAL.AsString;
    cdsFuncionario.Open;
    (cdsFuncionario.Locate('ra',codFun,[loCaseInsensitive]));
    end;
  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 2;
  dmSaude.cdsFornecedor.Params[1].AsInteger := 4;
  dmSaude.cdsFornecedor.Params[2].AsInteger := 5;
  dmSaude.cdsFornecedor.Params[3].AsInteger := 7;
  dmSaude.cdsFornecedor.Open;
  if (cds_Movimento.Active) then
  if (not cds_Movimento.IsEmpty) then
  begin
    if (not dmSaude.cdsFornecedor.Locate('codFornecedor', codForn, [loPartialKey])) then
    begin
      JvDBSearchEdit5.Text := '';
      JvDBSearchEdit6.Text := '';
    end;
    cds.Locate('CodPro', codConta, [loPartialKey]);
  end;

end;

procedure TfLancaProcPcmso.JvDBSearchEdit2Change(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsinsert,dsEdit]) then
  begin
  if (cdsFuncionario.Active) then
    cdsFuncionario.Close;
  cdsFuncionario.Params[0].AsString := dmSaude.cdsClienteBuscaRAZAOSOCIAL.AsString;
  cdsFuncionario.Open;
  end;
end;

procedure TfLancaProcPcmso.JvDBSearchEdit1Exit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsinsert,dsEdit]) then
  begin
  if (cdsFuncionario.Active) then
    cdsFuncionario.Close;
  cdsFuncionario.Params[0].AsString := dmSaude.cdsClienteBuscaRAZAOSOCIAL.AsString;
  cdsFuncionario.Open;
  end;
end;

procedure TfLancaProcPcmso.JvDBSearchEdit3Exit(Sender: TObject);
begin
  inherited;
  JvCalcEdit2.Text := FloatToStr(cdsVALOR_PRAZO.AsFloat);
  if (JvDBSearchEdit3.Text = '192') then
  begin
   dbcodFuncionario.Text := '';
   dbFuncionario.Text := '';
  end;
end;

procedure TfLancaProcPcmso.JvDBSearchEdit4Exit(Sender: TObject);
begin
  inherited;
  JvCalcEdit2.Text := FloatToStr(cdsVALOR_PRAZO.AsFloat);
end;

procedure TfLancaProcPcmso.JvDateEdit1Exit(Sender: TObject);
//var  ano, mes, mes1, dia : word;
begin
  inherited;
 {
  decodedate(JvDateEdit1.date, ano, mes, dia);
  mes := mes ;

  decodedate(JvDateEdit2.date, ano, mes1, dia);
  mes1 := mes1 ;

  if ( mes >= mes1 ) then
  MessageDlg('O Mes do Vencimento está Igual '+#13+#10+'Do que o Mes deste Lançamento ', mtError, [mbOK], 0);
 } 
end;

procedure TfLancaProcPcmso.JvDateEdit2Exit(Sender: TObject);
//var  ano, mes, mes1, dia : word;
begin
  inherited;
{
  decodedate(JvDateEdit1.date, ano, mes, dia);
  mes := mes ;

  decodedate(JvDateEdit2.date, ano, mes1, dia);
  mes1 := mes1  ;

  if ( mes >= mes1 ) then
  MessageDlg('O Mes do Vencimento está Igual '+#13+#10+'Do que o Mes deste Lançamento ', mtError, [mbOK], 0);
 }
end;

end.
