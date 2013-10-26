unit uOsFinaliza;

interface
                            
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, JvLabel, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvCombobox, Mask, DBCtrls, JvExControls,
  JvGroupHeader, FMTBcd, DB, SqlExpr, DBClient, Provider, DBxPress, uReceberCls, uUtils,
  DBLocal, DBLocalS, JvSpeedButton, rpcompobase, rpvclreport, Printers,
  Menus;

type
  TfOsFinaliza = class(TForm)
    Panel1: TPanel;
    btnIncluir: TJvBitBtn;
    JvGravar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    btnNotaFiscal: TJvBitBtn;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvBoleto: TJvBitBtn;
    JvSair: TJvBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    JvGroupHeader3: TJvGroupHeader;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    JvGroupHeader1: TJvGroupHeader;
    Label3: TLabel;
    dbeUsuario: TDBEdit;
    Label4: TLabel;
    DBEdit14: TDBEdit;
    JvGroupHeader2: TJvGroupHeader;
    Label7: TLabel;
    dbeSerie: TDBEdit;
    Label8: TLabel;
    btnSerie: TBitBtn;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    cbPrazo: TJvComboBox;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label24: TLabel;
    ComboBox1: TComboBox;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    cbConta: TComboBox;
    Label5: TLabel;
    ComboBox2: TComboBox;
    JvGroupHeader5: TJvGroupHeader;
    JvDBGrid1: TJvDBGrid;
    JvGroupHeader4: TJvGroupHeader;
    JvLabel3: TJvLabel;
    jvTotal: TJvValidateEdit;
    Label17: TLabel;
    jvDesc: TJvValidateEdit;
    Label6: TLabel;
    jvDesconto: TJvValidateEdit;
    Label12: TLabel;
    jvAcrescimo: TJvValidateEdit;
    Label14: TLabel;
    jvApagar: TJvValidateEdit;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    jvPago: TJvValidateEdit;
    JvGroupHeader6: TJvGroupHeader;
    Label15: TLabel;
    jvTroco: TJvValidateEdit;
    sqlBuscaNota: TSQLQuery;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1VIA: TStringField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1VALORREC: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1DP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    SQLDataSet1FORMARECEBIMENTO: TStringField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    SQLDataSet1CODVENDA: TIntegerField;
    DataSetProvider1: TDataSetProvider;
    scdsCr_proc: TClientDataSet;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCAIXA: TSmallintField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procTIT: TStringField;
    scdsCr_procSITUACAO: TStringField;
    scdsCr_procFORMARECEBIMENTO: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procCODVENDA: TIntegerField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    ds_Cr: TDataSource;
    lbl1: TLabel;
    JvComissao: TJvValidateEdit;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    JvSpeedButton3: TJvSpeedButton;
    btnUsuarioProcura: TJvSpeedButton;
    VCLReport2: TVCLReport;
    SaveDialog1: TSaveDialog;
    s_parametro: TSQLDataSet;
    s_parametroDESCRICAO: TStringField;
    s_parametroPARAMETRO: TStringField;
    s_parametroCONFIGURADO: TStringField;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    s_parametroD5: TStringField;
    s_parametroD6: TStringField;
    s_parametroD7: TStringField;
    s_parametroD8: TStringField;
    s_parametroD9: TStringField;
    s_parametroINSTRUCOES: TStringField;
    s_parametroVALOR: TFloatField;
    imovdet: TSQLDataSet;
    imovdetUN: TStringField;
    imovdetCODPRO: TStringField;
    imovdetCOD_BARRA: TStringField;
    imovdetPRODUTO: TStringField;
    imovdetDESCPRODUTO: TStringField;
    imovdetQTDE: TFloatField;
    imovdetPRECO: TFloatField;
    imovdetVALTOTAL: TFloatField;
    dsp_imovdet: TDataSetProvider;
    cds_imovdet: TClientDataSet;
    cds_imovdetUN: TStringField;
    cds_imovdetCODPRO: TStringField;
    cds_imovdetCOD_BARRA: TStringField;
    cds_imovdetPRODUTO: TStringField;
    cds_imovdetDESCPRODUTO: TStringField;
    cds_imovdetQTDE: TFloatField;
    cds_imovdetPRECO: TFloatField;
    cds_imovdetVALTOTAL: TFloatField;
    cds_imovdetTotalPedido: TAggregateField;
    btnAlteraRec: TBitBtn;
    btnCancelaBaixa: TBitBtn;
    btnCupom: TJvBitBtn;
    pm1: TPopupMenu;
    F2Incluir1: TMenuItem;
    F4Gravar1: TMenuItem;
    F9Sair1: TMenuItem;
    pm2: TPopupMenu;
    ImprimirPedido1: TMenuItem;
    ImprimirOrdemdeServio1: TMenuItem;
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure JvSairClick(Sender: TObject);
    procedure JvGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure btnUsuarioProcuraClick(Sender: TObject);
    procedure JvExcluirClick(Sender: TObject);
    procedure jvDescExit(Sender: TObject);
    procedure JvComissaoExit(Sender: TObject);
    procedure jvDescontoExit(Sender: TObject);
    procedure jvAcrescimoExit(Sender: TObject);
    procedure jvPagoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure cbPrazoChange(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure btnAlteraRecClick(Sender: TObject);
    procedure btnCancelaBaixaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCupomClick(Sender: TObject);
    procedure ImprimirPedido1Click(Sender: TObject);
    procedure ImprimirOrdemdeServio1Click(Sender: TObject);
  private
    str_sql : String;
    usaDll: String;
    TD: TTransactionDesc;
    Save_Cursor:TCursor;
    osfinaliza_codvenda: integer;
    utilcrtitulo : Tutils;
    codcaixaInterno: Integer;
    logradouro : String;
    cep : String;
    fone : String;
    Texto : String;
    Texto1 : String;
    Texto2 : String;
    Texto3 : String;
    Texto4 : String;
    Texto5 : String;
    Texto6 : String;
    Texto7 : String;
    Texto8 : String;
    cliente : String;
    porta: String;
    IMPRESSORA : TextFile;
    total, porc, totgeral , desconto : double;
    ModeloImpressora: Integer;
    procedure notafiscal;
    procedure inserevenda;
    procedure baixatitulos;
    procedure excluinf;
    procedure imprimeDLLBema;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    { Private declarations }
  public
    dtaOsFinaliza : Tdate;
    OSFinalizaStatus: String;
    porc_com :  double;
    { Public declarations }
  end;

const
    cJustif = #27#97#51;
    cEject = #12;
    { Tamanho da fonte }
    c10cpi = #18;
    c12cpi = #27#77;
    c17cpi = #15;
    cIExpandido = #14;
    cFExpandido = #20;
    { Formatação da fonte }
    cINegrito = #27#71;
    cFNegrito = #27#72;
    cIItalico = #27#52;
    cFItalico = #27#53;

var
  fOsFinaliza: TfOsFinaliza;

implementation

uses UDM_MOV, UDm, uNotaf, UDMNF, uProcurar, uProcurar_nf, U_Entrada,
  ufCrAltera, uTerminal_Delivery, uCarne;

{$R *.dfm}

procedure TfOsFinaliza.btnNotaFiscalClick(Sender: TObject);
begin
  if DM_MOV.d_venda.State in [dsInsert] then
    JvGravar.Click;

  if (scdsCr_proc.RecordCount = 0) then
  begin
    MessageDlg('Titulo do Financeiro nao foi gerado.'+#13+#10+'Clique no botao gravar, para gera-lo.', mtWarning, [mbOK], 0);
    exit;
  end;

  NotaFiscal;
end;

procedure TfOsFinaliza.notafiscal;
var   serieNf: String;
begin
  if (sqlBuscaNota.Active) then
	sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento, codCliente  from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
    QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (sqlBuscaNota.IsEmpty) then
  begin
    try
      //codClienteNF := 0;
      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;

      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'SERIENFE';
      dm.cds_parametro.Open;

      if (dmnf.scds_serienfe.Active) then
        dmnf.scds_serienfe.Close;
      dmnf.scds_serienfe.Params[0].AsString := dm.cds_parametroD1.AsString;

      dmnf.scds_serienfe.Open;

      if (not dm.cds_parametro.IsEmpty) then
      begin
        serieNf := dm.cds_parametroD1.AsString;
      end
      else
      begin
        MessageDlg('Cadastre o Parametro SERIENFE para prosseguir', mtWarning, [mbOK], 0);
        exit;
      end;

      // Nota Fiscal
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;

      str_sql := 'EXECUTE PROCEDURE GERA_NF_VENDA(';
      str_sql := str_sql + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger);
      str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DM_MOV.c_vendaDATAVENDA.AsDateTime));
      str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DM_MOV.c_vendaDATAVENCIMENTO.AsDateTime));
      str_sql := str_sql + ', ' + QuotedStr(serieNF);
      str_sql := str_sql + ', ' + QuotedStr(inttostr(dmnf.scds_serienfeNOTASERIE.AsInteger+1));
      str_sql := str_sql + ', ' + IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger) + ')';

      dm.sqlsisAdimin.StartTransaction(TD);
      try
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
          dm.sqlsisAdimin.Commit(TD);
      except
          dm.sqlsisAdimin.Rollback(TD);
          MessageDlg('Erro para Gerar a nota.', mtError, [mbOK], 0);
          exit;
      end;
      if (sqlBuscaNota.Active) then
        sqlBuscaNota.Close;
      sqlBuscaNota.SQL.Clear;
      sqlBuscaNota.SQL.Add('select codMovimento, codCliente from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
        QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
      sqlBuscaNota.Open;
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end;

  fNotaf := TfNotaf.Create(Application);
  try
    fNotaF.codMovFin := sqlBuscaNota.Fields[0].AsInteger;
    fNotaF.codCliFin := sqlBuscaNota.Fields[1].AsInteger;

    if (not  dm.cds_empresa.Active) then
    dm.cds_empresa.open;
      fNotaf.cbFinanceiro.Checked := False;
      fNotaf.cbEstoque.Checked := False;
      fNotaf.ShowModal;
      if (dmnf.cds_nfSTATUS.AsString = 'S') then
    fNotaf.RadioGroup1.ItemIndex := 0
      else
        fNotaf.RadioGroup1.ItemIndex := 1;
  finally
  	fNotaf.Free;
  end;

end;

procedure TfOsFinaliza.JvSairClick(Sender: TObject);
begin
  close;
end;

procedure TfOsFinaliza.JvGravarClick(Sender: TObject);
var
  codRecCR: Integer;
begin
  if ((scdsCr_proc.Active) and (not scdsCr_proc.IsEmpty)) then
  begin
    MessageDlg('Venda já Finalizada.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (DBEdit5.Text = '1') then
  begin
    if (jvPago.Value > 0) then
      if (jvPago.Value < jvApagar.Value) then
      begin
        MessageDlg('Valor pago menor que total a pagar, '+#13+#10+' parcela tem que ser maior que "1"', mtWarning, [mbOK], 0);
        cbPrazo.SetFocus;
        exit;
      end;
  end;
  if (cbPrazo.Visible = True) then
  begin
    if (not dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    begin
      MessageDlg('Escolha o prazo de pagamento.', mtError, [mbOK], 0);
      cbPrazo.SetFocus;
      exit;
    end;
  end;
  if (dbeSerie.Text = '') then
  begin
    MessageDlg('Informe uma Série.', mtError, [mbOK], 0);
    dbeSerie.SetFocus;
    exit;
  end;

  inserevenda;

  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;
  DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
  DM_MOV.c_venda.Open;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
  scdsCr_proc.Open;

  if (jvPago.Value > 0) then
  begin
    if (codcaixaInterno = 0) then
      MessageDlg('O Caixa Interno não está definido em parametros PDV.', mtWarning, [mbOK], 0);
    baixatitulos;
    scdsCr_proc.Close;
    scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;
    dm.totalpago := jvPago.Value;
  end;
  OSFinalizaStatus := 'FINALIZADO';
end;

procedure TfOsFinaliza.inserevenda;
Var vJvValor,  vJvValor1, vJvValor2: Double;
  strSqlMov: String;
  FRec : TReceberCls;
begin
  dm.totalpago := 0;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  osfinaliza_codvenda := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  str_Sql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
  str_Sql := str_sql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
  str_sql := str_sql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
  str_sql := str_sql + ',FORMARECEBIMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR, VALOR_PAGAR, TROCO, COMISSAO, PRAZO ';
  str_sql := str_sql + ') VALUES (';
  str_sql := str_sql + IntToStr(osfinaliza_codvenda);
  str_sql := str_sql + ',' + IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger);
  str_sql := str_sql + ',' + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger);
  str_sql := str_sql + ',''' + formatdatetime('mm/dd/yyyy', DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime) + '''';
  str_sql := str_sql + ',''' + formatdatetime('mm/dd/yyyy', DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime) + '''';
  str_sql := str_sql + ',1'; //Banco
  str_sql := str_sql + ', ' + dbeUsuario.Text; //CodVendedor
  str_sql := str_sql + ',0'; //status
  str_sql := str_sql + ', ' + dbeUsuario.Text; //codusuario

  DecimalSeparator := ',';
  vJvValor := jvTotal.AsFloat + JvComissao.AsFloat + jvAcrescimo.Value; //StrToFloat(jvTotal.Text);
  if (jvDesconto.Value > 0) then
  begin
    vJvValor := (jvTotal.AsFloat + JvComissao.AsFloat + jvAcrescimo.Value) - jvDesconto.Value;
  end;
  DecimalSeparator := '.';
  str_sql := str_sql + ',' + FloatToStr(vJvValor); //valor

  str_sql := str_sql + ',' + DBEdit2.Text; //notafiscal
  str_sql := str_sql + ',''' + dbeSerie.Text + ''''; //serie


  DecimalSeparator := ',';

  vJvValor := jvDesconto.AsFloat;
  DecimalSeparator := '.';
  str_sql := str_sql + ',' + FloatToStr(vJvValor); //DEsconto

  // str_sql := str_sql + ',0'; //desconto
  str_sql := str_sql + ',' + IntToStr(DM_MOV.c_movimentoCODALMOXARIFADO.AsInteger);//CODCUSTO
  str_sql := str_sql + ', ' + DBEdit5.Text + ',';
  try
    utilcrtitulo := Tutils.Create;
    if (ComboBox2.Text <> '') then
      str_sql := str_sql + QuotedStr(utilcrtitulo.pegaForma(ComboBox2.Text))
    else
      str_sql := str_sql + QuotedStr(utilcrtitulo.pegaForma(ComboBox1.Text))
  finally
    utilcrtitulo.Free;
  end;
  DecimalSeparator := ',';
  vJvValor1 := jvPago.AsFloat;
  vJvValor2 := jvTroco.AsFloat; //StrToFloat(jvTroco.Text);
  if (vJvValor2 > 0) then
    vJvValor := vJvValor1 - vJvValor2
  else
    vJvValor := vJvValor1;

  DecimalSeparator := '.';

  str_sql := str_sql + ',' + FloatToStr(vJvValor); //ENTRADA

  if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
    str_sql := str_sql + ', ' + IntToStr(dm.cds_7_contas.Fields[0].asInteger)
  else
    str_sql := str_sql + ', 0'; //Caixa

  DecimalSeparator := ',';
  vJvValor := jvAcrescimo.AsFloat; //StrToFloat(jvAcrescimo.Text);
  DecimalSeparator := '.';
  str_sql := str_sql + ',' + FloatToStr(vJvValor); //Multa_juros

  DecimalSeparator := ',';
  vJvValor := jvApagar.AsFloat; //StrToFloat(jvApagar.Text);
  DecimalSeparator := '.';
  str_sql := str_sql + ',' + FloatToStr(vJvValor); //VALOR A PaGAR

  DecimalSeparator := ',';
  vJvValor := jvPago.AsFloat; //StrToFloat(jvPago.Text);
  DecimalSeparator := '.';
  str_sql := str_sql + ',' + FloatToStr(vJvValor); //VALORPAGO

  DecimalSeparator := ',';
  vJvValor := jvTroco.AsFloat; //StrToFloat(jvTroco.Text);
  DecimalSeparator := '.';
  if (DM_MOV.c_forma.IsEmpty) then
    str_sql := str_sql + ',' + FloatToStr(vJvValor) //TROCO
  else
    str_sql := str_sql + ',' + '0'; //ENTRADA

  DecimalSeparator := ',';
  vJvValor := JvComissao.AsFloat; //StrToFloat(jvTroco.Text);
  DecimalSeparator := '.';
  str_sql := str_sql + ',' + FloatToStr(vJvValor); //COMISSAO


  str_sql := str_sql + ',' + QuotedStr(cbPrazo.Text);
  str_sql := str_sql + ')';

  strSqlMov := 'UPDATE MOVIMENTO SET CODCLIENTE = ' + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger) +
  ', STATUS = ' + '0 ' +
  ' where CODMOVIMENTO = ' + IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger);

  if not scds_serie_proc.Active then
  begin
     scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
     scds_serie_proc.Open;
  end;

  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSqlMov);
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    if (StrToInt(DBEdit2.Text) > scds_serie_procULTIMO_NUMERO.AsInteger) then
    begin
      scds_serie_proc.Edit;
      scds_serie_procULTIMO_NUMERO.AsInteger := StrToInt(DBEdit2.Text);
      scds_serie_proc.ApplyUpdates(0);
    end;

    try
      FRec := TReceberCls.Create;
      FRec.geraTitulo(0, osfinaliza_codvenda);
    finally
      Frec.Free;
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  scds_serie_proc.Close;
end;

procedure TfOsFinaliza.btnIncluirClick(Sender: TObject);
var desconto,  varlor_porc  : Double;
begin
  DM_MOV.c_venda.Append;
  {------Pesquisando na tab Parametro o valor padr?para a Natureza Opera? ---------}
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;
  DM_MOV.c_vendaSERIE.AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { 006 ------Pesquisando na tab Parametro o Vendedor padr?---- 09-05-2005 -----}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    dbeUsuario.Text := dm.cds_parametroDADOS.AsString;
  try
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := StrToInt(dm.cds_parametroDADOS.AsString);
  except
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := 1;
  end;
  dm.cds_parametro.Close;
  { ---- 06 ----}
  dbeUsuario.SetFocus;
  if (DM_MOV.PAGECONTROL = 'PDV') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_movimentoCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_movimentoNOMECLIENTE.AsString;
  end;

  if (DM_MOV.PAGECONTROL = 'COMANDA') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_comandaCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_comandaNOMECLIENTE.AsString;
  end;

  if (DM_MOV.PAGECONTROL = 'DELIVERY') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_DeliveryCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_DeliveryNOMECLIENTE.AsString;
  end;

  //DM_MOV.c_vendaNOMECLIENTE.AsInteger := DM_MOV.c_movimentonCODCLIENTE.AsInteger;
  desconto := 0;
  DM_MOV.c_movdet.First;
  while ( not DM_MOV.c_movdet.Eof) do
  begin
    desconto := desconto + dm_mov.c_movdetQTDE_ALT.AsFloat;
    DM_MOV.c_movdet.Next;
  end;

  if (not DM_MOV.c_movdet.IsEmpty) then
  begin
    jvApagar.Value :=  DM_MOV.c_movdettotalpedido.Value - desconto;
    jvTotal.Value := DM_MOV.c_movdettotalpedido.Value - desconto;

    dm.cds_parametro.Close;
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'LANCACOMISSAOCR';
    dm.cds_parametro.Open;

    if (not dm.cds_parametro.Eof) then
    begin
      JvComissao.Value:= (porc_com /100) * jvTotal.Value;
      jvApagar.Value := (DM_MOV.c_movdettotalpedido.Value + JvComissao.Value) - desconto;
    end;
    dm.cds_parametro.Close;

  end;
  jvDesconto.Value := 0;
  jvAcrescimo.Value := 0;
  jvPago.Value := 0;
  jvTroco.Value := 0;
  DM_MOV.c_vendaDATAVENDA.AsDateTime := dtaOsFinaliza;
  DM_MOV.c_vendaDATASISTEMA.AsDateTime := Now;
  cbConta.ItemIndex := 1;
  ComboBox1.ItemIndex := 0;
  cbPrazo.ItemIndex := 0;
  DBEdit5.Text := '1';
  JvGravar.SetFocus;

  //dbeSerie.OnExit;
  if DM_MOV.d_venda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text = '' then
    begin
      MessageDlg('Informe a Série.', mtWarning,[mbOk], 0);
      exit;
    end;
    if scds_serie_proc.Active then
      scds_serie_proc.Close;
    scds_serie_proc.Params[0].AsString := dbeSerie.Text;
    scds_serie_proc.Open;
    if scds_serie_proc.IsEmpty then
    begin
      MessageDlg('Série não cadastrada, deseja cadastra-la?', mtWarning,
      [mbOk], 0);
      btnSerie.Click;
      exit;
    end;
    DM_MOV.c_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
    //?nota fiscal ?
    if scds_serie_procNOTAFISCAL.AsInteger=0 then
    begin
      //    btnImprimir.Enabled:=False;
      btnNotaFiscal.Enabled:=True;
    end
    else
    begin
      //    btnImprimir.Enabled:=True;
      btnNotaFiscal.Enabled:=False;
    end;
    DM_MOV.c_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
  end;
  //==========================================================================

end;

procedure TfOsFinaliza.FormShow(Sender: TObject);
begin
  OSFinalizaStatus := '';
  DecimalSeparator := ',';
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('DADOS', 'PRAZO', [loCaseInsensitive])) then
  begin
    if (not dm.cdsPrazo.Active) then
      dm.cdsPrazo.open;
    if (not dm.cdsPrazo.IsEmpty) then
    begin
      dm.CdsPrazo.first;
      //nparc := dm.CdsPrazoVALOR.asFloat;
      cbPrazo.Items.clear;
      while not dm.CdsPrazo.eof do
      begin
        cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
        dm.cdsPrazo.next;
      end;
    end;
  end;

  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;

  if (DM_MOV.PAGECONTROL = 'PDV') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;

  if (DM_MOV.PAGECONTROL = 'COMANDA') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_comandaCODMOVIMENTO.AsInteger;

  if (DM_MOV.PAGECONTROL = 'DELIVERY') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.ID_DO_MOVIMENTO;

  DM_MOV.c_venda.Open;
  if (DM_MOV.c_venda.IsEmpty) then
  begin
    btnIncluir.Click;
    //dbeSerie.SetFocus;
    scdsCr_proc.Close;
     // Verifico se teve entrada
     if (DM_MOV.c_forma.Active) then
        DM_MOV.c_forma.close;
     DM_MOV.c_forma.Params[0].Clear;
     DM_MOV.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
     DM_MOV.c_forma.Open;
     if (not DM_MOV.c_forma.IsEmpty) then
       jvPago.Value := DM_MOV.c_formatotal.Value;
     DM_MOV.c_forma.Close;
     DM_MOV.c_forma.Params[0].Clear;

    DM_MOV.s_parametro.Close;
    DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXAINTERNA';
    DM_MOV.s_parametro.Open;
    codcaixaInterno := 0;
    if (dm.cds_7_contas.Locate('CONTA', DM_MOV.s_parametroD1.AsString, [loCaseInsensitive])) then
    begin
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;
      codcaixaInterno := dm.cds_7_contasCODIGO.AsInteger;
    end;
    cbPrazo.ItemIndex := 0; //= '1-DINHEIRO'
    DM_MOV.s_parametro.Close;
    //-------------------------
  end
  else
  begin
    OSFinalizaStatus  := 'FINALIZADO';
    JvComissao.Value  := DM_MOV.c_vendaCOMISSAO.Value;
    jvApagar.Value    := DM_MOV.c_vendaVALOR.Value;
    jvTotal.Value     := DM_MOV.c_vendaVALOR.Value + DM_MOV.c_vendaDESCONTO.Value;
    jvDesconto.Value  := DM_MOV.c_vendaDESCONTO.Value;
    jvAcrescimo.Value := DM_MOV.c_vendaMULTA_JUROS.Value;
    jvPago.Value      := DM_MOV.c_vendaVALOR_PAGAR.Value;
    jvTroco.Value     := DM_MOV.c_vendaTROCO.Value;
    if (DM_MOV.c_vendaFORMARECEBIMENTO.asString <> '') then
    begin
      try
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(DM_MOV.c_vendaFORMARECEBIMENTO.asString);
      finally
        utilcrtitulo.Free;
      end;
    end;

    if (dm.cds_7_contas.Locate('CODIGO', DM_MOV.c_vendaCAIXA.AsInteger, [loCaseInsensitive])) then
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;

    cbPrazo.Text := DM_MOV.c_vendaPRAZO.AsString;
    if (scdsCr_proc.Active) then
        scdsCr_proc.Close;
    scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;
    DM_MOV.c_venda.Edit;
  end;

  if (DM_MOV.c_vendaFORMARECEBIMENTO.asString <> '') then
  begin
    try
      utilcrtitulo := Tutils.Create;
      ComboBox1.ItemIndex := utilcrtitulo.retornaForma(DM_MOV.c_vendaFORMARECEBIMENTO.asString);
    finally
      utilcrtitulo.Free;
    end;
  end;

end;

procedure TfOsFinaliza.baixatitulos;
var
  FRecT : TReceberCls;
  formaRec : string;
begin
  // Marco o Título
  str_sql := 'UPDATE RECEBIMENTO SET DP = 0, USERID = ' + IntToStr(usulog) + ' WHERE CODRECEBIMENTO = ' +
    IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

  try
    utilcrtitulo := Tutils.Create;
    formaRec := utilcrtitulo.pegaForma(ComboBox1.Text);
  finally
    utilcrtitulo.Free;
  end;

  FRecT := TReceberCls.Create;
  try
    FRecT.baixaTitulo(jvPago.Value, //Valor
                                0, //Funrural
                                0, // Juros
                                0, // Desconto
                                0, // Perda
                                DM_MOV.c_vendaDATAVENDA.AsDateTime, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Baixa
                                DM_MOV.c_vendaDATAVENDA.AsDateTime, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Recebimento
                                DM_MOV.c_vendaDATAVENDA.AsDateTime, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Consolida
                                formaRec,  // FormaRecebimento
                                DM_MOV.c_vendaN_DOCUMENTO.AsString, //DM_MOV.c_vendaN_DOCUMENTO.AsString, // Nº Documento
                                codcaixaInterno, // Caixa
                                DM_MOV.c_vendaCODCLIENTE.AsInteger, //DM_MOV.c_vendaCODCLIENTE.AsInteger, // Codigo do Cliente
                                '7-',
                                usulog, ''); // Usuario Logado
  finally
    FrecT.Free;
  end;

  str_sql := 'UPDATE RECEBIMENTO SET DP = ' + 'null' + ', USERID = ' + 'null' + ' WHERE CODRECEBIMENTO = ' +
            IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);;
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

end;

procedure TfOsFinaliza.FormCreate(Sender: TObject);
var i,j : Integer;
begin
  dtaOsFinaliza := now;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';
  dm.cds_parametro.Close;

  //nparc := 1;

  {------Pesquisando na tab Parametro se usa consumo Materia Prima na Venda ---}
  {if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
  dm.cds_parametro.Open;
  usaMateriaPrima := dm.cds_parametroCONFIGURADO.AsString;}

  if (not dm.parametro.Active) then
    dm.parametro.Open;

  if (dm.parametro.locate('PARAMETRO', 'NOTAFISCALDESATIVADO', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      DbEdit2.ReadOnly := True;
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

  try
    utilcrtitulo := Tutils.Create;
    // Popula Status
    j := utilcrtitulo.Forma.Count;
    for i := 0 to j - 1 do
    begin
      combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
      combobox2.Items.Add(utilcrtitulo.Forma.Strings[i]);
    end;
  finally
    utilcrtitulo.Free;
  end;

end;

procedure TfOsFinaliza.JvSpeedButton3Click(Sender: TObject);
begin
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
    begin
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terap que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
      end;
      if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda nao permitida.', mtError, [mbOK], 0);
        exit;
      end;
    end;
    //prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
    //desconto := DMNF.scds_cli_procDESCONTO.AsFloat;
  finally
    DM_MOV.c_vendaCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := dmnf.scds_cli_procNOMECLIENTE.AsString;
    if (fProcurar_nf.novoCliente = 'S') then
    begin
      DM_MOV.c_vendaCODCLIENTE.AsInteger := dm.codcli;
      DM_MOV.c_vendaNOMECLIENTE.AsString := dm.varNomeCliente;
    end;
    dmnf.scds_cli_proc.Close;
    fProcurar_nf.Free;
  end;

end;

procedure TfOsFinaliza.btnUsuarioProcuraClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
    if fProcurar.ShowModal=mrOk then
    begin
      if (DM_MOV.c_venda.State = dsBrowse) then
        DM_MOV.c_venda.Edit;
      DM_MOV.c_vendaCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
      DM_MOV.c_vendaNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;

end;

procedure TfOsFinaliza.JvExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
    [mbYes,mbNo],0) = mrNo then
    exit;

  if (scdsCr_procSTATUS.AsString = '7-') then
  begin
    ShowMessage('O titulo já foi recebido, antes de excluir a venda cancele o recebimento');
    exit;
  end;

  if (sqlBuscaNota.Active) then
  sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select m.codMovimento, m.codCliente, v.CODVENDA  from MOVIMENTO m ' +
    ' inner join venda v on v.CODMOVIMENTO = m.CODMOVIMENTO where ' +
    ' m.CODNATUREZA = 15 and m.CONTROLE = ' +
  QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;

  dm.sqlsisAdimin.StartTransaction(TD);
  try

    if (not sqlBuscaNota.IsEmpty) then
    begin
      // Nota Fiscal
      str_sql := 'DELETE FROM NOTAFISCAL ';
      str_sql := str_sql + ' where CODVENDA = ' + inttostr(sqlBuscaNota.Fields[2].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM VENDA ';
      str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM MOVIMENTO ';
      str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;
    if ((DM_MOV.c_movimentoCONTROLE.AsString = 'OS') and (not DM_MOV.c_movimentoCODORIGEM.IsNull)) then
    begin
      str_sql := 'update OS set status = ' + QuotedStr('A') + ' where CODOS = ' + IntToStr(DM_MOV.c_movimentoCODORIGEM.AsInteger);
      //dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODORIGEM = ' + IntToStr(DM_MOV.c_movimentoCODORIGEM.AsInteger));
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VENDA WHERE CODVENDA = ' + IntToStr(DM_MOV.c_vendaCODVENDA.AsInteger));
    dm.sqlsisAdimin.Commit(TD);
    ShowMessage('Venda Excluida com Sucesso');
  except
    on E : Exception do
    begin
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;
  DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
  DM_MOV.c_venda.Open;

  if scdscr_proc.Active then
     scdscr_proc.Close;
  scdscr_proc.Params[0].Clear;
  scdscr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
  scdscr_proc.Open;
end;

procedure TfOsFinaliza.excluinf;
begin

end;

procedure TfOsFinaliza.jvDescExit(Sender: TObject);
var vlrD : double;
begin
  //Calcula o desconto
  if (jvDesc.AsFloat > 0) then
  begin
    vlrD := (jvTotal.AsFloat + jvAcrescimo.AsFloat)*(jvDesc.AsFloat/100);
    jvDesconto.AsFloat := vlrD;
    jvApagar.AsFloat := (jvTotal.AsFloat + jvAcrescimo.AsFloat) - vlrD;
    jvAcrescimo.SetFocus;
  end;
end;

procedure TfOsFinaliza.JvComissaoExit(Sender: TObject);
begin
  if (jvAcrescimo.AsFloat > 0) then
    jvApagar.AsFloat := (jvTotal.AsFloat + jvAcrescimo.AsFloat) - jvDesconto.AsFloat
  else
    jvApagar.AsFloat := (jvTotal.AsFloat) - jvDesconto.AsFloat;

end;

procedure TfOsFinaliza.jvDescontoExit(Sender: TObject);
begin
  if (jvAcrescimo.AsFloat > 0) then
    jvApagar.AsFloat := (jvTotal.AsFloat + jvAcrescimo.AsFloat) - jvDesconto.AsFloat
  else
    jvApagar.AsFloat := (jvTotal.AsFloat) - jvDesconto.AsFloat;

end;

procedure TfOsFinaliza.jvAcrescimoExit(Sender: TObject);
begin
  jvApagar.AsFloat := (jvTotal.AsFloat + jvAcrescimo.AsFloat) - jvDesconto.AsFloat;
end;

procedure TfOsFinaliza.jvPagoExit(Sender: TObject);
begin
  jvTroco.AsFloat := jvPago.AsFloat - jvApagar.AsFloat;
end;

procedure TfOsFinaliza.BitBtn1Click(Sender: TObject);
begin
  F_Entrada := TF_Entrada.Create(Application);
  try
    if (F_Entrada.c_forma.Active) then
      F_Entrada.c_forma.Close;
    F_Entrada.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    F_Entrada.c_forma.Open;

    if (F_Entrada.c_forma.IsEmpty) then
      F_Entrada.c_forma.Append
    else
      F_Entrada.c_forma.Edit;
    F_Entrada.JvPedido.Value := jvTotal.Value;
    F_Entrada.ShowModal;
  finally
    F_Entrada.Free;
  end;
  if (DM_MOV.c_forma.Active) then
      DM_MOV.c_forma.close;
  DM_MOV.c_forma.Params[0].Clear;
  DM_MOV.c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  DM_MOV.c_forma.Open;
  if (DM_MOV.c_formatotal.IsNull) then
    jvPago.Value := jvPago.Value
  else
    jvPago.Value := DM_MOV.c_formatotal.Value;
  DM_MOV.c_forma.Close;

end;

procedure TfOsFinaliza.dbeSerieExit(Sender: TObject);
begin
  if DM_MOV.d_venda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then  begin
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString := dbeSerie.Text;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-lo?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      DM_MOV.c_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      //?nota fiscal ?
      if scds_serie_procNOTAFISCAL.AsInteger=0 then
      begin
        //    btnImprimir.Enabled:=False;
        btnNotaFiscal.Enabled:=True;
        end
        else
        begin
        //    btnImprimir.Enabled:=True;
        btnNotaFiscal.Enabled:=False;
      end;
      DM_MOV.c_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
    end;
  end;

end;

procedure TfOsFinaliza.cbPrazoChange(Sender: TObject);
begin
  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.Open;
  if (dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    DM_MOV.c_vendaN_PARCELA.asInteger := StrToInt(FloatToStr(dm.cdsPrazoValor.asFloat));
end;

procedure TfOsFinaliza.JvBitBtn1Click(Sender: TObject);
var
  XY: TPoint;
begin
  XY := Point(50, -10);
  XY := JvBitBtn1.ClientToScreen(XY);
  pm2.Popup(XY.X, XY.Y + JvBitBtn1.Height - 2);
end;

procedure TfOsFinaliza.imprimeCupom;
begin
  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'IMPARQUIVO';
  s_parametro.Open;
  if (not s_parametro.Eof) then
  begin
    SaveDialog1.Execute;
    AssignFile(IMPRESSORA, SaveDialog1.FileName);
    s_parametro.Close;
  end
  else
  begin
    AssignFile(IMPRESSORA,porta);
  end;
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  Writeln(Impressora, c17cpi, logradouro);
  Writeln(Impressora, cep);
  Writeln(Impressora, fone);
  Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
  Writeln(Impressora, cliente);
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto1);
  Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c17cpi, texto3);
  Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  if (cds_imovdet.Active) then
    cds_imovdet.Close;
  cds_iMovdet.Params[0].AsInteger := dm_mov.c_movimentoCODMOVIMENTO.AsInteger;
  cds_iMovDet.Open;

  try
    //DM_MOV.c_movdet.First;
    while not cds_imovdet.Eof do
    begin
      cds_imovdet.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[cds_imovdetDESCPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[cds_imovdetCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('   %-2s  ',[cds_imovdetUN.Value]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[cds_imovdetQTDE.AsFloat]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[cds_imovdetPRECO.AsFloat]));
      total := cds_imovdetTotalPedido.value;
      Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));

      with Printer.Canvas do
      begin
        Font.Name := 'Courier New';
        Font.Size := 4;
      end;
      cds_imovdet.next;
    end;
    total := DM_MOV.c_movdettotalpedido.Value - DM_MOV.c_vendaDESCONTO.Value;
    desconto := DM_MOV.c_vendaDESCONTO.Value;
    Writeln(Impressora, c17cpi, texto);
    Write(Impressora, c17cpi, texto8);
    Writeln(Impressora, c17cpi + Format('    %-6.2n',[desconto]));
    Write(Impressora, c17cpi, texto5);
    Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));

    // imprimir vencimentos
    while not scdsCr_proc.Eof do
    begin
      Texto5 := 'Vencimento :   ';
      Write(Impressora, c17cpi, texto5);
      Texto5 := DateTimeToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
      Texto5 := Texto5 + ' - Valor R$' + FloatToStr(scdsCr_procVALOR_RESTO.AsFloat);
      Writeln(Impressora, c17cpi, texto5);
      scdsCr_proc.Next;
    end;
    Writeln(IMPRESSORA);
    Write(Impressora, c10cpi, DM.Mensagem);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Write(IMPRESSORA, chr(ord(strtoint('29')))+chr(ord(strtoint( '+86')))+chr(ord(strtoint('+01'))));
  finally
    CloseFile(IMPRESSORA);
  end;

end;

procedure TfOsFinaliza.imprimeDLLBema;
begin
  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'IMPARQUIVO';
  s_parametro.Open;
  if (not s_parametro.Eof) then
  begin
    SaveDialog1.Execute;
    AssignFile(IMPRESSORA, SaveDialog1.FileName);
    s_parametro.Close;
  end
  else
  begin
    ModeloImpressora := StrToInt(DM.impressora_pc);

    //Configura o Modelo da Impressora
    iRetorno := ConfiguraModeloImpressora( ModeloImpressora );

    if (iRetorno = -2) then
      ShowMessage('Erro Configurando Impressora');
    iRetorno := IniciaPorta( pchar( porta ) );
    if (iRetorno <= 0) then
      ShowMessage('Erro Abrindo Porta');
  end;

  buffer  := dm.cds_empresaRAZAO.AsString + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := logradouro + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := cep + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := fone + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := 'CNPJ :' + dm.cds_empresaCNPJ_CPF.AsString + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := cliente + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto1 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto2 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto3 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto4 + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  if (cds_imovdet.Active) then
    cds_imovdet.Close;
  cds_iMovdet.Params[0].AsInteger := dm_mov.c_movimentoCODMOVIMENTO.AsInteger;
  cds_iMovDet.Open;
  while not cds_iMovDet.Eof do
  begin
     // imprime
    buffer  := cds_iMovDetDESCPRODUTO.Value + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
      exit;
    end;
    buffer  := Format('%-13s  ',[cds_iMovDetCODPRO.Value]);
    buffer  := buffer + Format('   %2s  ',[cds_iMovDetUN.Value]);
    buffer  := buffer + Format(' %6.3n',[cds_iMovDetQTDE.AsFloat]);
    buffer  := buffer + Format('  %6.2n',[cds_iMovDetPRECO.AsFloat]);
    buffer  := buffer + Format('   %8.2n',[cds_iMovDetValTotal.value]);
    buffer  := buffer + Chr(13) + Chr(10);
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    if comando = 0 then
    begin
      MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
      exit;
    end;
    cds_iMovDet.next;
  end;

  buffer  := texto + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  if comando = 0 then
  begin
    MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
    exit;
  end;

  buffer  := texto5;
  total   := DM_MOV.c_movdettotalpedido.Value;
  buffer  := buffer + Format('%10.2n',[total]);
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  if (scdsCr_proc.Active) then
  begin
    scdsCr_proc.First;
    while not scdsCr_proc.Eof do
    begin
      // imprime
      texto5  := '(' + scdsCr_procTITULO.AsString + ') ' + DateToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
      texto5  := texto5 + ' - ' + scdsCr_procSTATUS.AsString + ' ';
      if (scdsCr_procSTATUS.AsString <> 'Pendente        ') then
        texto5  := texto5 + Format('%10.2n',[scdsCr_procVALORRECEBIDO.Value])
      else
        texto5  := texto5 + Format('%10.2n',[scdsCr_procVALOR_RESTO.Value]);
      buffer  := Texto5 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      // end;
      scdsCr_proc.next;
    end;
  end;
  buffer  := '' + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := 'Assnatura:________________________________________';
  buffer  := buffer + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := '' + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := '' + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := '' + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := '' + Chr(13) + Chr(10);
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  // Corto o Papel
  comando := AcionaGuilhotina(1);  // modo total (full cut)
  if comando <> 1 then
    MessageDlg('Problemas no corte do papel..' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

  // Comando para Acionar a Gaveta de Dinheiro
  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].AsString := 'ABRIR_GAVETA';
  s_parametro.Open;
  if (s_parametro.Eof) then
  begin
    scomando := #27 + #118 + #140;
    iRetorno := ComandoTX( scomando, Length( scomando ));
  end;
  s_parametro.Close;

  iRetorno := 0;
  iRetorno := FechaPorta();
end;

procedure TfOsFinaliza.imprimeRecibo;
begin
  VCLReport2.FileName := str_relatorio + 'impr_texto.rep';
  VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport2.Report.Params.ParamByName('PVENDA').Value := DM_MOV.c_vendaCODVENDA.AsInteger;
  VCLReport2.Execute;
end;

procedure TfOsFinaliza.btnAlteraRecClick(Sender: TObject);
begin
  fCrAltera := TfCrAltera.Create(Application);
  try
    fCrAltera.ntitulo := scdsCr_procTITULO.AsString;
    fCrAltera.codcliente := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.demissao := scdsCr_procEMISSAO.AsDateTime;


    if (fCrAltera.cds.Active) then
      fCrAltera.cds.Close;
    fCrAltera.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds.Open;

    if (fCrAltera.cds1.Active) then
      fCrAltera.cds1.Close;
    fCrAltera.cds1.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds1.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds1.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds1.Open;

    fCrAltera.Label1.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.Label2.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.ShowModal;
    scdsCr_proc.Close;
    scdsCr_proc.Open;
  finally
    fCrAltera.Free;
  end;

end;

procedure TfOsFinaliza.btnCancelaBaixaClick(Sender: TObject);
begin

  if (DM_MOV.c_movimentoCODNATUREZA.AsInteger = 14) then //Cancelado
  begin
    if  MessageDlg('NF CANCELADA, confirma mudança do Status : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      scdsCr_proc.ApplyUpdates(0);
      // NF ou Venda Cancelada
      if (DM_MOV.c_venda.State in [dsBrowse]) then
         DM_MOV.c_venda.Edit;
      DM_MOV.c_vendaSTATUS.AsInteger := 0;
      DM_MOV.c_venda.ApplyUpdates(0);
      if (DM_MOV.c_movimento.State in [dsBrowse]) then
         DM_MOV.c_movimento.edit;
      DM_MOV.c_movimentoCODNATUREZA.AsInteger := 3; //Venda
      DM_MOV.c_movimento.ApplyUpdates(0);

      MessageDlg('Status alterado com sucesso.', mtInformation, [mbOK], 0);
      scdsCr_proc.Refresh;
    Except
      MessageDlg('Na foi possivel alterar STATUS.', mtError, [mbOK], 0);
    end;
  end
  else
  begin
    if  MessageDlg('Confirma o cancelamento da baixa do T?lo : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      if( scdsCr_procSTATUS.AsString = '7-') then
        scdsCr_procVALOR_RESTO.AsFloat := scdsCr_procVALORRECEBIDO.asFloat;
      scdsCr_procVALORRECEBIDO.AsFloat := 0;
      scdsCr_procCAIXA.Clear;
      scdsCr_proc.ApplyUpdates(0);
      MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);

      DecimalSeparator := '.';
      str_sql := 'Update RECEBIMENTO set DATARECEBIMENTO = null, DATACONSOLIDA = null';
      str_sql := str_sql + ' WHERE CODRECEBIMENTO = ' + IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      DecimalSeparator := ',';
      scdsCr_proc.Refresh;
    Except
      MessageDlg('Não foi possível cancelar a baixa.', mtError, [mbOK], 0);
    end;
  end;

end;

procedure TfOsFinaliza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (DM_MOV.ID_DO_MOVIMENTO  > 0) then
    dm.EstoqueAtualiza(DM_MOV.ID_DO_MOVIMENTO);
end;

procedure TfOsFinaliza.btnCupomClick(Sender: TObject);
begin
  if (OSFinalizaStatus <> 'FINALIZADO') then
  begin
    MessageDlg('Finalize primeiro, antes de abrir o Cupom, (F4-Gravar);', mtWarning, [mbOK], 0);
    exit;
  end;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  if (sqlBuscaNota.Active) then
    sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento from MOVIMENTO where (CODNATUREZA = 7) AND CONTROLE = ' +
      QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (sqlBuscaNota.IsEmpty) then
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'EXECUTE PROCEDURE GERA_CUPOM(';
      str_sql := str_sql  + IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger) + ')';
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        Exit;
      end;
    end;
  end;

  if (sqlBuscaNota.Active) then
      sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select codMovimento from MOVIMENTO where (CODNATUREZA = 7) AND CONTROLE = ' +
      QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
    sqlBuscaNota.Open;

  fTerminal_Delivery := TfTerminal_Delivery.Create(Application);
  try
    fTerminal_Delivery.cds_Movimento.Close;
    fTerminal_Delivery.cds_Movimento.Params[0].AsInteger := sqlBuscaNota.Fields[0].AsInteger;
    fTerminal_Delivery.cds_Movimento.Open;

    fTerminal_Delivery.cds_Mov_det.Close;
    fTerminal_Delivery.cds_Mov_det.Params[0].Clear;
    fTerminal_Delivery.cds_Mov_det.Params[1].AsInteger := sqlBuscaNota.Fields[0].AsInteger;
    fTerminal_Delivery.cds_Mov_det.Open;

    if (dm.totalpago > 0) then
      fTerminal_Delivery.jvPago.Value := dm.totalpago
    else
      fTerminal_Delivery.jvPago.Text := fTerminal_Delivery.DBEdit4.Text;

    fTerminal_Delivery.ShowModal;
  finally
    fTerminal_Delivery.Free;
  end;
end;

procedure TfOsFinaliza.ImprimirPedido1Click(Sender: TObject);
begin
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
    ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
    ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '-------------------------------------------------' ;
  Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
    IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + ' - ' + DM_MOV.c_vendaSERIE.AsString;
  Texto2 := '-------------------------------------------------' ;
  Texto3 := 'Produto                                          ' ;
  Texto4 := 'Cod.Barra      UN     Qtde     V.Un.     V.Total ' ;
  Texto5 := DateTimeToStr(Now) + '       Total.: R$   ';
  Texto8 := '                      Desconto.: R$   ';
  cliente := 'Cliente : ' + DM_MOV.c_vendaNOMECLIENTE.Value;
  if (s_parametro.Active) then
    s_parametro.close;
  s_parametro.Params[0].AsString := 'MENSAGEM';
  s_parametro.Open;
  if (not s_parametro.isEmpty) then
    DM.Mensagem := s_parametroDADOS.AsString
  else
    DM.Mensagem := '';

  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  s_parametro.Open;
  porta := s_parametroDADOS.AsString;
  s_parametro.Close;


  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CUPOMPDV';
  dm.cds_parametro.Open;

  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (usaDll = 'TRUE') then
      imprimeDLLBema
    else
      imprimeCupom;
    exit;
  end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'RECIBOPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    imprimeRecibo;
    exit;
  end;

  ShowMessage('Parametro Tipo Impressão não configurado');

end;

procedure TfOsFinaliza.ImprimirOrdemdeServio1Click(Sender: TObject);
begin
  fCarne := TfCarne.Create(Application);
  try
    if (fCarne.scdsCr_proc.Active) then
        fCarne.scdsCr_proc.Close;
    fCarne.scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    fCarne.scdsCr_proc.Open;

    if (fCarne.buscaCli.Active) then
        fCarne.buscaCli.Close;
    fCarne.buscaCli.Params[0].AsInteger := DM_MOV.c_vendaCODCLIENTE.AsInteger;
    fCarne.buscaCli.Open;


    //fCarne.txtParcela.Caption := scdsCr_procVIA.AsString;
    //fCarne.txtNomeSacado.Caption := DM_MOV.c_vendaNOMECLIENTE.AsString;
    //fCarne.BoletoCarne.BeforePrint;
    fCarne.BoletoCarne.Preview();
    //fCarne.ShowModal;
  finally
    fCarne.Free;
  end;

end;

end.
