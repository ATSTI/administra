unit uPassivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, SqlExpr, Provider, DBCtrls, Grids, DBGrids, dxCore, dxButton,
  Mask, DBLocal, DBLocalS, DBClient, DBXpress, UCHistDataset, UCHist_Base,
  RXCtrls, JvExControls, JvLabel;

type
  TfPassivo = class(TfPai)
    s_forn: TSQLDataSet;
    d_forn: TDataSetProvider;
    cds_forn: TClientDataSet;
    cds_fornCODFORNECEDOR: TIntegerField;
    cds_fornNOMEFORNECEDOR: TStringField;
    scds_forn: TSQLClientDataSet;
    scds_fornCODFORNECEDOR: TIntegerField;
    scds_fornNOMEFORNECEDOR: TStringField;
    sds_desp: TSQLDataSet;
    dsp_desp: TDataSetProvider;
    cds_desp: TClientDataSet;
    cds_despCODIGO: TIntegerField;
    cds_despNOME: TStringField;
    sds: TSQLDataSet;
    ds_contas: TDataSource;
    ds_ccusto: TDataSource;
    d_3_caixa_banco: TDataSource;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn12: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label14: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Label16: TLabel;
    Label17: TLabel;
    edtcodred: TEdit;
    edtconta: TEdit;
    dbeCliente: TEdit;
    DBEdit4: TEdit;
    s_4: TSQLDataSet;
    d_4: TDataSetProvider;
    cds_4_pagar: TClientDataSet;
    DataSource2: TDataSource;
    s_4CODPAGAMENTO: TIntegerField;
    s_4TITULO: TStringField;
    s_4EMISSAO: TDateField;
    s_4CODFORNECEDOR: TIntegerField;
    s_4DATAVENCIMENTO: TDateField;
    s_4DATAPAGAMENTO: TDateField;
    s_4CAIXA: TSmallintField;
    s_4CONTADEBITO: TIntegerField;
    s_4CONTACREDITO: TIntegerField;
    s_4STATUS: TStringField;
    s_4FORMAPAGAMENTO: TStringField;
    s_4DATABAIXA: TDateField;
    s_4HISTORICO: TStringField;
    s_4CODCOMPRA: TIntegerField;
    s_4CODALMOXARIFADO: TSmallintField;
    s_4CODCOMPRADOR: TSmallintField;
    s_4CODUSUARIO: TSmallintField;
    s_4N_DOCUMENTO: TStringField;
    s_4DATASISTEMA: TSQLTimeStampField;
    s_4VALORRECEBIDO: TFloatField;
    s_4JUROS: TFloatField;
    s_4DESCONTO: TFloatField;
    s_4PERDA: TFloatField;
    s_4TROCA: TFloatField;
    s_4FUNRURAL: TFloatField;
    s_4VALOR_PRIM_VIA: TFloatField;
    s_4VALOR_RESTO: TFloatField;
    s_4VALORTITULO: TFloatField;
    s_4OUTRO_CREDITO: TFloatField;
    s_4OUTRO_DEBITO: TFloatField;
    s_4PARCELAS: TIntegerField;
    s_4VIA: TStringField;
    cds_4_pagarCODPAGAMENTO: TIntegerField;
    cds_4_pagarTITULO: TStringField;
    cds_4_pagarEMISSAO: TDateField;
    cds_4_pagarCODFORNECEDOR: TIntegerField;
    cds_4_pagarDATAVENCIMENTO: TDateField;
    cds_4_pagarDATAPAGAMENTO: TDateField;
    cds_4_pagarCAIXA: TSmallintField;
    cds_4_pagarCONTADEBITO: TIntegerField;
    cds_4_pagarCONTACREDITO: TIntegerField;
    cds_4_pagarSTATUS: TStringField;
    cds_4_pagarFORMAPAGAMENTO: TStringField;
    cds_4_pagarDATABAIXA: TDateField;
    cds_4_pagarHISTORICO: TStringField;
    cds_4_pagarCODCOMPRA: TIntegerField;
    cds_4_pagarCODALMOXARIFADO: TSmallintField;
    cds_4_pagarCODCOMPRADOR: TSmallintField;
    cds_4_pagarCODUSUARIO: TSmallintField;
    cds_4_pagarN_DOCUMENTO: TStringField;
    cds_4_pagarDATASISTEMA: TSQLTimeStampField;
    cds_4_pagarVALORRECEBIDO: TFloatField;
    cds_4_pagarJUROS: TFloatField;
    cds_4_pagarDESCONTO: TFloatField;
    cds_4_pagarPERDA: TFloatField;
    cds_4_pagarTROCA: TFloatField;
    cds_4_pagarFUNRURAL: TFloatField;
    cds_4_pagarVALOR_PRIM_VIA: TFloatField;
    cds_4_pagarVALOR_RESTO: TFloatField;
    cds_4_pagarVALORTITULO: TFloatField;
    cds_4_pagarOUTRO_CREDITO: TFloatField;
    cds_4_pagarOUTRO_DEBITO: TFloatField;
    cds_4_pagarPARCELAS: TIntegerField;
    cds_4_pagarVIA: TStringField;
    sds_for: TSQLDataSet;
    sds_forCODFORNECEDOR: TIntegerField;
    sds_forNOMEFORNECEDOR: TStringField;
    sdsCODIGO: TIntegerField;
    sdsCODREDUZIDO: TStringField;
    sdsNOME: TStringField;
    sdsCONTA: TStringField;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    BuscaCodDespesas1: TMenuItem;
    BuscaFornecedor1: TMenuItem;
    ComboBox1: TComboBox;
    DBEdit6: TDBEdit;
    Label20: TLabel;
    DBEdit7: TDBEdit;
    Label21: TLabel;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RxLabel1: TRxLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    JvLabel1: TJvLabel;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cds_4_pagarFORMAPAGAMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_4_pagarSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBEdit9Exit(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure edtcodredExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DespesaMes : String;
  end;

var
  fPassivo: TfPassivo;
  conta_rateio, usa_rateio: String;
  ccusto: Integer;

implementation

uses UDm, uRateioPag, uCheques_bol, uProcurar,
  uFiltro_forn_plano, ufplanocontas, uUtils, uFinanceiro,
  UCDataInfo, sCtrlResize, uAtsAdmin, uCpPassivo, ufCpAltera;

{$R *.dfm}

procedure TfPassivo.dxButton1Click(Sender: TObject);
var str_sql2: string;
begin
  inherited;
  // Verifica se a conta de despesa lançada usa rateio
  // Se sim, abre o form de rateio.
  if DtSrc.State in [dsInsert] then
  begin
    btnGravar.Click;
    exit;
  end
  else
  begin
    if usa_rateio<> 'S' then
    begin
    if dm.c_1_planoc.Active then
      dm.c_1_planoc.Close;
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE CODREDUZIDO = ';
    str_sql2 := str_sql2 + '''' + edtcodred.Text + '''';
    dm.c_1_planoc.CommandText := str_sql2;
    dm.c_1_planoc.Open;
    if dm.c_1_planocRATEIO.AsString = 'S' then
      usa_rateio := 'S';
    end;
  if usa_rateio = 'S' then
  begin
    codigo := dm.cds_4_pagarCODPAGAMENTO.AsInteger;
    conta_pl := conta_rateio;
    valor_rateio := dm.cds_4_pagarVALORTITULO.AsFloat;
    tipo := 'PASSIVO';
    fRateioPag.ShowModal;
  end;
 end;
end;

procedure TfPassivo.dxButton2Click(Sender: TObject);
begin
  inherited;
  Cod_orig := dm.cds_4_pagarCODPAGAMENTO.AsInteger;
  tipo_origem := 'PASSIVO';
  cod_cli_forn := StrToInt(dbeCliente.Text);
  c_f := 'F'; // F=Fornecedor
  data_lanc := DM.cds_4_pagarEMISSAO.Value;
  data_lancado := DateToStr(DM.cds_4_pagarEMISSAO.Value);
  if DtSrc.State in [dsInsert, dsEdit] then
    btnGravar.Click;
  fCheques_bol.ShowModal;
end;

procedure TfPassivo.FormCreate(Sender: TObject);
begin
 // inherited;
  DespesaMes := 'N';
  DBLookupComboBox1.Height := 28;
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
end;

procedure TfPassivo.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Close;
  dm.cds_ccusto.Close;
  dm.cds_1_contas.Close;
end;

procedure TfPassivo.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfPassivo.btnIncluirClick(Sender: TObject);
begin
  DespesaMes := 'N';
  if dm.cds_4_pagar.Active then
    dm.cds_4_pagar.close;
  dm.cds_4_pagar.Params[0].Clear;
  edtcodred.Clear;
  edtconta.Clear;
  DBEdit4.Clear;
  dbeCliente.Clear;
  inherited;
  dm.cds_4_pagarVIA.AsString := '1';
  dm.cds_4_pagarFORMAPAGAMENTO.AsString := '1-DINHEIRO';
  dm.cds_4_pagarSTATUS.AsString := '5-';
  dm.cds_4_pagarEMISSAO.AsDateTime := Now;
  dm.cds_4_pagarDATAVENCIMENTO.AsDateTime := Now;
  dm.cds_4_pagarPARCELAS.AsInteger := 1;
  DBEdit1.SetFocus;
  IF (cds_4_pagar.Active) THEN
    cds_4_pagar.Close;
end;

procedure TfPassivo.btnGravarClick(Sender: TObject);
var
  varsqlx, str_sql, str_sqla, inclusao, vlr_tit, vlr_rec , historico: string;
  vlr_deb, vlr_cre, vlr_saldo: double;
  varCrTituloPagto : TUtils;
  TD: TTransactionDesc;
begin
  varCrTituloPagto := TUtils.Create;
  //dm.cds_4_pagarPERDA.AsFloat := 0;
  dm.cds_4_pagarFORMAPAGAMENTO.AsString := varCrTituloPagto.pegaForma(ComboBox1.Text);
  if dm.cds_4_pagarVALORRECEBIDO.AsFloat > 0 then
  begin
    if DBLookupComboBox3.Text = '' then
    begin
      MessageDlg('Informe o Caixa ou Banco para a Entrada.', mtWarning, [mbOK], 0);
      exit;
    end;
    dm.cds_4_pagarDATABAIXA.AsDateTime := dm.cds_4_pagarDATAPAGAMENTO.AsDateTime;
    if (ComboBox1.Text <> '') then
    begin
      dm.cds_4_pagarFORMAPAGAMENTO.AsString := varCrTituloPagto.pegaForma(ComboBox1.Text);
    end
    else begin
      MessageDlg('Informe a Forma de Pagamento.', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else begin // Populo a FORMAPAGAMENTO se estiver vazia pois a Procedure usa ela
    if (ComboBox1.Text <> '') then
    begin
      dm.cds_4_pagarFORMAPAGAMENTO.AsString := varCrTituloPagto.pegaForma(ComboBox1.Text);
    end
    else begin
      dm.cds_4_pagarFORMAPAGAMENTO.AsString := '1';
    end;
  end;
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    inclusao := 'SIM';
    if dm.cds_4_pagarCONTACREDITO.IsNull then
      dm.cds_4_pagarCONTACREDITO.AsInteger := codigo_conta;
  end;
  if (inclusao = 'SIM') then
  begin
    dm.cds_4_pagarVALOR_PRIM_VIA.AsFloat := dm.cds_4_pagarVALORTITULO.AsFloat;
    dm.cds_4_pagarVALOR_RESTO.AsFloat := dm.cds_4_pagarVALORTITULO.AsFloat; // - dm.cds_4_pagarVALORRECEBIDO.AsFloat;
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    codigo := dm.c_6_genid.Fields[0].AsInteger;
    dm.cds_4_pagarCODPAGAMENTO.AsInteger := dm.c_6_genid.fields[0].AsInteger;
    dm.c_6_genid.Close;
    if (dm.cds_4_pagarTITULO.IsNull) then
      dm.cds_4_pagarTITULO.AsString := formatdatetime('yyyy',dm.cds_4_pagarEMISSAO.AsDateTime) +
      '-' + IntToStr(dm.cds_4_pagarCODPAGAMENTO.AsInteger);
    vlr_tit := format('%12.2f',[dm.cds_4_pagarVALORTITULO.AsFloat]);
    vlr_rec := format('%12.2f',[dm.cds_4_pagarVALORRECEBIDO.AsFloat]);
    if ( vlr_tit = vlr_rec ) then
      dm.cds_4_pagarSTATUS.AsString := '7-';
  end;
  inherited;
  if (inclusao = 'SIM') then
  begin
    // Verifica se a conta de despesa lançada usa rateio
    // Se sim, abre o form de rateio.
    if usa_rateio = 'S' then
    begin
      codigo := dm.cds_4_pagarCODPAGAMENTO.AsInteger;
      conta_pl := conta_rateio;
      valor_rateio := dm.cds_4_pagarVALORTITULO.AsFloat;
      tipo := 'PASSIVO';
      fRateioPag.ShowModal;
    end;
    str_sqla := ('execute procedure LANCA_CONT_COMPRA_PAG (' +
      '''' + dm.cds_4_pagarTITULO.AsString + ''',' + '''' + formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime) + ''',' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) + ')');
    str_sql := ('execute procedure GERA_PARCELAS_PAG (' +
      '''' + dm.cds_4_pagarTITULO.AsString + ''',' + '''' + formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime) + ''',' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) + ')');

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;

    if (CheckBox1.Checked) then
    begin
      try
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        // Executo o lancamento na contabilidade depois, pois, se houver
        // parcelas lanca cada uma como uma despesa mensal
        dm.sqlsisAdimin.ExecuteDirect(str_sqla);
        dm.sqlsisAdimin.Commit(TD);
        { Rotina para mudar a data emissão qdo o título é marcado q a conta é mensal }
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect('UPDATE PAGAMENTO p SET p.EMISSAO = ' +
           'UDF_INCMONTH(p.EMISSAO, (cast(p.VIA as smallint)-1)) where p.EMISSAO = '+
           QuotedStr(formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime)) +
           ' and p.CODFORNECEDOR = ' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) +
           ' and p.TITULO = ' + QuotedStr(dm.cds_4_pagarTITULO.AsString));
        dm.sqlsisAdimin.Commit(TD);

      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para gravar o lançamento.', mtError, [mbOK], 0);
      end;
    end
    else
    begin
      dm.sqlsisAdimin.ExecuteDirect(str_sqla);
      // Executo o lancamento na contabilidade antes, pois, se houver
      // parcelas isso não interfere no lancamento contábil.
      dm.sqlsisAdimin.ExecuteDirect(str_sql);

        //log user control
      dm.sqlsisAdimin.StartTransaction(TD);

        historico := 'INSERT INTO UCTABHISTORY ( APPLICATIONID, USERID, EVENTDATE ,EVENTTIME ' +
        ' ,FORM ,FORMCAPTION ,EVENT ,OBS ,TNAME'+
        ') VALUES (' +
        QuotedStr(DM.varAplicacaoID) + ',' +
        IntToStr(Dm.varUSERID) + ',' +
        QuotedStr(FormatDateTime('dd/mm/yyyy', now )) + ','+
        QuotedStr(FormatDateTime('hh:mm:ss', now )) + ','+
        QuotedStr(fPassivo.Name) + ',' +
        QuotedStr(fPassivo.Caption) + ','+
        QuotedStr('Inserido') + ','+
        QuotedStr('CODPAGAMENTO||' + IntToStr(dm.cds_4_pagarCODPAGAMENTO.AsInteger ) +
        'VALORTITULO||' +  FloatToStr(dm.cds_4_pagarVALORTITULO.AsFloat)) +
        ','  +
        QuotedStr('dm.cds_4_pagar') + ')';
     dm.sqlsisAdimin.ExecuteDirect(historico);
     dm.sqlsisAdimin.Commit(TD);
    end;
  end
  else begin
    if (DespesaMes = 'S') then
    begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    if (CheckBox1.Checked) then
    begin
      try
        { Rotina para mudar a data emissão qdo o título é marcado q a conta é mensal }
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect('UPDATE PAGAMENTO p SET p.EMISSAO = ' +
           'UDF_INCMONTH(p.EMISSAO, (cast(p.VIA as smallint)-1)) where p.EMISSAO = '+
           QuotedStr(formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime)) +
           ' and p.CODFORNECEDOR = ' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) +
           ' and p.TITULO = ' + QuotedStr(dm.cds_4_pagarTITULO.AsString));
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para gravar o lançamento.', mtError, [mbOK], 0);
      end;
    end;
    end;
  end;
    DecimalSeparator := '.';
      if dm.cds_parametro.Active then
      dm.cds_parametro.close;
    dm.cds_parametro.Params[0].AsString := 'SALDOCONTABIL';
    dm.cds_parametro.open;
    IF (dm.cds_parametro.IsEmpty) then
    begin
      varsqlx :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS,D1,D2) ' ;
      varsqlx := varsqlx + 'values (''SALDOCONTABIL'',''S'',''SALDOCONTABIL'',''0'',''0'')';
      dm.sqlsisAdimin.executedirect(varsqlx);
      if dm.cds_parametro.Active then
        dm.cds_parametro.close;
      dm.cds_parametro.Params[0].AsString := 'SALDOCONTABIL';
      dm.cds_parametro.open;
      vlr_deb := 0;
      vlr_cre := 0;
    end else begin
      vlr_deb := StrToFloat(dm.cds_parametroD1.AsString);
      vlr_cre := StrToFloat(dm.cds_parametroD2.AsString);
    end;
    vlr_deb := ( vlr_deb + dm.cds_4_pagarVALORTITULO.AsFloat);
    vlr_cre := ( vlr_cre + dm.cds_4_pagarVALORTITULO.AsFloat);
    vlr_saldo := (vlr_deb - vlr_cre);
    dm.cds_parametro.edit;
    dm.cds_parametroD1.AsString := FloatToStr( vlr_deb);
    dm.cds_parametroD2.AsString := FloatToStr( vlr_cre);
    DecimalSeparator := ',';
    dm.cds_parametro.ApplyUpdates(0);
    dm.cds_parametro.Close;
    {Testa se é uso para LOTEAMENTO }
    if dm.cds_parametro.Active then
      dm.cds_parametro.close;
    dm.cds_parametro.Params[0].AsString := 'USOSISTEMA';
    dm.cds_parametro.open;
    if (dm.cds_parametroDADOS.AsString = 'LOTEAMENTO') then
    begin
      //BUSCA O LOTEAMENTO
      if dm.cds_rateio.Active then
        dm.cds_rateio.Close;
      dm.cds_rateio.Params[0].AsInteger := codigo;
      dm.cds_rateio.Params[1].AsString := tipo;
      dm.cds_rateio.Params[2].AsString := conta_pl;
      dm.cds_rateio.Open;
      if dm.cds_rateio.IsEmpty then
      begin
        MessageDlg('Informe o Rateio da Despesa !', mtWarning, [mbOK], 0);
      end;
      //Executa procedure para inserir custos nos lotes
      str_sql := 'EXECUTE PROCEDURE INSERE_CUSTO_PRODUTO (';
      str_sql := str_sql + IntToStr(dm.cds_rateioCODCCUSTO.asInteger);
      str_sql := str_sql + ')';
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;
    if (cds_4_pagar.Active) then
       cds_4_pagar.Close;
    cds_4_pagar.Params[0].AsString := dm.cds_4_pagarTITULO.AsString;
    cds_4_pagar.Open;
end;

procedure TfPassivo.btnProcurarClick(Sender: TObject);
var utilCrTitPag: TUtils;
begin
  inherited;
 fCpPassivo := TfCpPassivo.Create(Application);
 try
   DespesaMes := 'S';
   fCpPassivo.btnIncluir.Enabled := False;
   //fCpPassivo.btnSair.Caption := 'Ver';
   fCpPassivo.bitBtn9.Enabled := True;
   fCpPassivo.ShowModal;
   if (not dm.cds_4_pagar.IsEmpty) then
   begin
     if (sds.Active) then
       sds.Close;
     sds.Params[0].AsInteger := dm.cds_4_pagarCONTACREDITO.AsInteger;
     sds.Open;
     edtcodred.Text := sds.Fields[1].AsString;
     edtconta.Text := sds.Fields[2].AsString;
     conta_rateio := sds.Fields[3].AsString;
        if (sds_for.Active) then
       sds_for.Close;
     sds_for.Params[0].AsInteger := dm.cds_4_pagarCODFORNECEDOR.AsInteger;
     sds_for.Open;
     dbeCliente.Text := sds_for.Fields[0].AsString;
     DBEdit4.Text := sds_for.Fields[1].AsString;
     sds.Close;
     sds_for.Close;
     //aqui mostro parcelas no dbgrig...
     if (cds_4_pagar.Active) then
       cds_4_pagar.Close;
     cds_4_pagar.Params[0].AsString := dm.cds_4_pagarTITULO.AsString;
     cds_4_pagar.Open;
     // para mostrar valores na COMBO
     if (dm.cds_ccusto.Active) then
       dm.cds_ccusto.Close;
     dm.cds_ccusto.Params[0].AsString := conta_desp;
     dm.cds_ccusto.Open;
     utilCrTitPag := TUtils.Create;
     ComboBox1.ItemIndex := utilCrTitPag.retornaForma(cds_4_pagarFORMAPAGAMENTO.AsString);
   end;
 finally
   fCpPassivo.Free;
   fPassivo.SetFocus;
 end;
end;

procedure TfPassivo.BitBtn12Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    tipo_for := 'CONTASPASSIVO';
    fFiltro_forn_plano.BitBtn6.Click;
    //fFiltro_forn_plano.BitBtn1.Click;
    fFiltro_forn_plano.ShowModal;
    edtcodred.Text := varconta_cod;
    edtconta.Text := varconta_nome;
    usa_rateio := com_rateio;
    dm.cds_4_pagarCONTACREDITO.AsInteger := codigo_conta;
    conta_rateio := varconta;
    dbeCliente.SetFocus;
  end;
  varconta_cod := '';
  varconta_nome := '';
end;

procedure TfPassivo.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.btnIncluir.Visible := True;
    if (dm.moduloUsado = 'SAUDE') then    //manoel 15/01 Acertar para abrir o form Correto
      fProcurar.btnIncluir.Visible := False;
    fProcurar.ShowModal;
    dm.cds_4_pagarCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dm.cds_4_pagarNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbeCliente.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    DBEdit4.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
    dbedit8.SetFocus;
  end;
end;

procedure TfPassivo.cds_4_pagarFORMAPAGAMENTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '1' then
    begin
     Text:='1-CHEQUE';
     exit;
    end;
  if Sender.AsString = '2' then
    begin
     Text:='2-DINHEIRO';
     exit;
    end;
  if Sender.AsString = '3' then
    begin
     Text:='3-DEPÓSITO';
     exit;
    end;

  if Sender.AsString = '4' then
    begin
     Text:='4-PRÉ-DATADO';
     exit;
    end;
  if Sender.AsString = '5' then
    begin
     Text:='5-CARTÃO';
     exit;
    end;
  if Sender.AsString = '6' then
    begin
     Text:='6-CANCELADO';
     exit;
    end;
  if Sender.AsString = '7' then
    begin
     Text:='7-SUSPENSO';
     exit;
    end;
  if Sender.AsString = '8' then
    begin
     Text:='8-CARTÓRIO';
     exit;
    end;

end;

procedure TfPassivo.cds_4_pagarSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '5-' then
    begin
     Text:='PENDENTE';
     exit;
    end;
  if Sender.AsString = '6-' then
    begin
     Text:='PENDENTE CONTABILIZADO';
     exit;
    end;
  if Sender.AsString = '7-' then
    begin
     Text:='PAGO';
     exit;
    end;
  if Sender.AsString = '1-' then
    begin
     Text:='AGUARDANDO';
     exit;
    end;
  if Sender.AsString = '4-' then
    begin
     Text:='CARTÓRIO';
     exit;
    end;
  if Sender.AsString = '2-' then
    begin
     Text:='ANULADO';
     exit;
    end;
  if Sender.AsString = '3-' then
    begin
     Text:='CANCELADO';
     exit;
    end;
  if Sender.AsString = '8-' then
    begin
     Text:='SUSPENSO';
     exit;
    end;

end;

procedure TfPassivo.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit9.Text <> '') then
  try
    if (StrToInt(DBEdit9.Text) > 1) then
    begin
      CheckBox1.Enabled := True;
      CheckBox1.SetFocus;
    end;
  except
  end;
end;

procedure TfPassivo.dbeClienteExit(Sender: TObject);
begin
  inherited;
  if dbeCliente.Text='' then exit;
  if dtsrc.State = dsInsert then
  begin
    if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn1.Click;
      exit;
    end;
    dm.cds_4_pagarCODFORNECEDOR.AsInteger:=dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dm.cds_4_pagarNOMEFORNECEDOR.AsString:=dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit4.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
  end
  else
  if (dm.cds_4_pagarCODFORNECEDOR.OldValue <> dm.cds_4_pagarCODFORNECEDOR.NewValue) then
  begin
    if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn1.Click;
      exit;
    end;
    dm.cds_4_pagarCODFORNECEDOR.AsInteger:=dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dm.cds_4_pagarNOMEFORNECEDOR.AsString:=dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit4.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
  end;

end;

procedure TfPassivo.edtcodredExit(Sender: TObject);
var strc: string;
begin
  inherited;
  if (edtcodred.Text = '') then exit;

  if (DM.c_1_planoc.Active) then
    DM.c_1_planoc.Close;
  strc := 'Select * from PLANO ';
  strc := strc + 'WHERE ';
  strc := strc + 'CODREDUZIDO = ';
  strc := strc + '''' + edtcodred.Text + '''';
  DM.c_1_planoc.CommandText := strc;
  DM.c_1_planoc.Open;
  if DM.c_1_planoc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    BitBtn12.Click;
    exit;
  end
  else begin
    conta_rateio := DM.c_1_planocCONTA.AsString;
    edtconta.Text := dm.c_1_planocNOME.AsString;
    codigo_conta := dm.c_1_planocCODIGO.AsInteger;
    dm.cds_4_pagarCONTACREDITO.AsInteger := dm.c_1_planocCODIGO.AsInteger;
    usa_rateio := dm.c_1_planocRATEIO.AsString;
  end;
  dm.c_1_planoc.Close;
end;

procedure TfPassivo.btnExcluirClick(Sender: TObject);
var
  deleta : String;
  TD: TTransactionDesc;
begin
  deleta := 'Delete from PAGAMENTO WHERE TITULO = ';
  deleta := deleta + '''' + DM.cds_4_pagarTITULO.AsString + '''';
  deleta := deleta + ' and CODFORNECEDOR = ';
  deleta := deleta +  IntToStr(DM.cds_4_pagarCODFORNECEDOR.AsInteger);
  // Comentei estas linhas pois, a data de emissão não é igual qdo é
  // marcado despesa mensal.
  // deleta := deleta + ' and EMISSAO = ';
  // deleta := deleta + '''' + formatdatetime('mm/dd/yy',DM.cds_4_pagarEMISSAO.AsDateTime) + '''';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(deleta);
    dm.sqlsisAdimin.Commit(TD);
    if (cds_4_pagar.Active) then
      cds_4_pagar.Close;
    if (dm.cds_4_pagar.Active) then
      dm.cds_4_pagar.Close;
    dbeCliente.Text := '';
    DBEdit4.Text := '';
    MessageDlg('Registro excluído com sucesso.', mtError, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para excluir, exclusão não efetuada.', mtError, [mbOK], 0);
  end;

end;

procedure TfPassivo.DBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
  //DBMemo1.SetFocus;
end;

procedure TfPassivo.SpeedButton2Click(Sender: TObject);
var sqlcr: string;
begin
  inherited;
  {fCrAltera := TfCrAltera.Create(Application);
  fCrAltera.uso := 'PAGAR';
  try
    if (not fCrAltera.cdscp.Active) then
      fCrAltera.cdscp.Close;
    fCrAltera.DtSrc.DataSet := fCrAltera.cdscp;
    fCrAltera.DBGrid1.Columns[3].FieldName := 'DATAPAGAMENTO';
    fCrAltera.DBEdit3.DataField := 'DATAPAGAMENTO';
    fCrAltera.cdscp.Params[0].AsString := cds_4_pagarTITULO.AsString;
    fCrAltera.cdscp.Params[1].AsInteger := cds_4_pagarCODFORNECEDOR.AsInteger;
    fCrAltera.cdscp.Params[2].AsDateTime := cds_4_pagarEMISSAO.AsDateTime;
    fCrAltera.cdscp.Open;
    fCrAltera.Label1.Caption := cds_4_pagarTITULO.AsString;
    fCrAltera.Label2.Caption := cds_4_pagarTITULO.AsString;
    fCrAltera.ShowModal;
    cds_4_pagar.Refresh;
  finally
    fCrAltera.Free;
  end;}
  fcpAltera := TfcpAltera.Create(Application);
  try
    if (not fCpAltera.cds.Active) then
      fCpAltera.cds.Close;
    fCpAltera.cds.Params[0].AsString := cds_4_pagarTITULO.AsString;
    fCpAltera.cds.Params[1].AsInteger := cds_4_pagarCODFORNECEDOR.AsInteger;
    fCpAltera.cds.Params[2].AsDateTime := cds_4_pagarEMISSAO.AsDateTime;
    fCpAltera.cds.Open;
    fCpAltera.Label1.Caption := cds_4_pagarTITULO.AsString;
    fCpAltera.Label2.Caption := cds_4_pagarTITULO.AsString;
    fcpAltera.ShowModal;
    cds_4_pagar.Close;
    cds_4_pagar.Open;
  finally
    fcpAltera.Free;
  end;

end;

procedure TfPassivo.CheckBox1Click(Sender: TObject);
begin
  inherited;
  // Esta variável é mudada qdo é feito uma procura dai ela fica como Y
  // Qdo é apertado incluir ela fica como N
  if (DespesaMes = 'Y') then
    DespesaMes := 'S';
end;

procedure TfPassivo.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (dm.cds_4_pagarVALORRECEBIDO.AsFloat > 0) then
  begin
    dm.cds_4_pagarDATAPAGAMENTO.AsDateTime := dm.cds_4_pagarEMISSAO.AsDateTime;
    dm.cds_4_pagarDATACONSOLIDA.AsDateTime := dm.cds_4_pagarEMISSAO.AsDateTime;
  end;
end;

procedure TfPassivo.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dbEdit7.Text := '';
  dm.cds_4_pagarDATACONSOLIDA.Clear;
end;

procedure TfPassivo.BitBtn4Click(Sender: TObject);
begin
  inherited;
  dbEdit6.Text := '';
  dm.cds_4_pagarDATAPAGAMENTO.Clear;
end;

procedure TfPassivo.DBEdit2Exit(Sender: TObject);
begin
  inherited;

  if (dm.moduloUsado = 'SAUDE') then
  dm.cds_4_pagarDATACONSOLIDA.AsDateTime := DM.cds_4_pagarEMISSAO.AsDateTime;

end;

procedure TfPassivo.FormShow(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
   sCtrlResize.CtrlResize(TForm(fPassivo));
   edtcodred.Text := '';
   edtconta.Text := '';
   dbeCliente.Text := '';
   DBEdit4.Text := '';
  // inherited;
   //Lista Cestro de Custos
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_desp := dm.cds_parametroDADOS.AsString;
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    DBLookupComboBox1.Enabled := True;
    DBLookupComboBox1.Height := 28;
  end;

  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  dm.cds_parametro.Close;
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  combobox1.Items.Clear;
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

end;

end.
