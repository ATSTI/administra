unit ufcrtitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, Mask, Grids, DBGrids, DBXpress,
  JvAppStorage, JvAppXMLStorage, JvComponentBase, JvFormPlacement,
  JvAppDBStorage, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, rpcompobase, rpvclreport,
  JvExControls, JvLabel;

type
  TfcpTitulo = class(TfPai)
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODPAGAMENTO: TIntegerField;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1CODFORNECEDOR: TIntegerField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1DATAPAGAMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1CONTADEBITO: TIntegerField;
    SQLDataSet1CONTACREDITO: TIntegerField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1FORMAPAGAMENTO: TStringField;
    SQLDataSet1DATABAIXA: TDateField;
    SQLDataSet1HISTORICO: TStringField;
    SQLDataSet1CODCOMPRA: TIntegerField;
    SQLDataSet1CODALMOXARIFADO: TSmallintField;
    SQLDataSet1CODCOMPRADOR: TSmallintField;
    SQLDataSet1CODUSUARIO: TSmallintField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1DATASISTEMA: TSQLTimeStampField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1JUROS: TFloatField;
    SQLDataSet1DESCONTO: TFloatField;
    SQLDataSet1PERDA: TFloatField;
    SQLDataSet1TROCA: TFloatField;
    SQLDataSet1FUNRURAL: TFloatField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1OUTRO_CREDITO: TFloatField;
    SQLDataSet1OUTRO_DEBITO: TFloatField;
    SQLDataSet1PARCELAS: TIntegerField;
    DataSetProvider1: TDataSetProvider;
    cds_REC: TClientDataSet;
    cds_RECCODPAGAMENTO: TIntegerField;
    cds_RECTITULO: TStringField;
    cds_RECEMISSAO: TDateField;
    cds_RECCODFORNECEDOR: TIntegerField;
    cds_RECDATAVENCIMENTO: TDateField;
    cds_RECDATAPAGAMENTO: TDateField;
    cds_RECCAIXA: TSmallintField;
    cds_RECCONTADEBITO: TIntegerField;
    cds_RECCONTACREDITO: TIntegerField;
    cds_RECSTATUS: TStringField;
    cds_RECFORMAPAGAMENTO: TStringField;
    cds_RECDATABAIXA: TDateField;
    cds_RECHISTORICO: TStringField;
    cds_RECCODCOMPRA: TIntegerField;
    cds_RECCODALMOXARIFADO: TSmallintField;
    cds_RECCODCOMPRADOR: TSmallintField;
    cds_RECCODUSUARIO: TSmallintField;
    cds_RECN_DOCUMENTO: TStringField;
    cds_RECDATASISTEMA: TSQLTimeStampField;
    cds_RECVALORRECEBIDO: TFloatField;
    cds_RECJUROS: TFloatField;
    cds_RECDESCONTO: TFloatField;
    cds_RECPERDA: TFloatField;
    cds_RECTROCA: TFloatField;
    cds_RECFUNRURAL: TFloatField;
    cds_RECVALOR_PRIM_VIA: TFloatField;
    cds_RECVALOR_RESTO: TFloatField;
    cds_RECVALORTITULO: TFloatField;
    cds_RECOUTRO_CREDITO: TFloatField;
    cds_RECOUTRO_DEBITO: TFloatField;
    cds_RECPARCELAS: TIntegerField;
    ds_conta: TDataSource;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit15: TDBEdit;
    btnCancela_Baixa: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    SQLDataSet1VIA: TStringField;
    cds_RECVIA: TStringField;
    SQLDataSet1CODORIGEM: TIntegerField;
    cds_RECCODORIGEM: TIntegerField;
    DbComboBox1: TComboBox;
    sds: TSQLDataSet;
    sdsSUM: TFloatField;
    sdsSUM_1: TFloatField;
    sdsSUM_2: TFloatField;
    sdsSUM_3: TFloatField;
    sdsSUM_4: TFloatField;
    sdsSUM_5: TFloatField;
    sdsCOUNT: TIntegerField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsSUM: TFloatField;
    cdsSUM_1: TFloatField;
    cdsSUM_2: TFloatField;
    cdsSUM_3: TFloatField;
    cdsSUM_4: TFloatField;
    cdsSUM_5: TFloatField;
    cdsCOUNT: TIntegerField;
    BitBtn3: TBitBtn;
    Label27: TLabel;
    datacon: TJvDBDatePickerEdit;
    BitBtn4: TBitBtn;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    JvLabel1: TJvLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    SpeedButton1: TBitBtn;
    DBMemo2: TDBMemo;
    Label24: TLabel;
    Memo1: TMemo;
    btnrecibo: TBitBtn;
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure btnCancela_BaixaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnreciboClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  fcpTitulo: TfcpTitulo;
  valorAReceber, ValorRecebido, desc, juros, perda,
  funrural,outros, valorr, resto: Double;
  nrec: array of integer;
  idusuario : String;
implementation

uses UDm, uCheques_bol, uUtils, sCtrlResize, uAtsAdmin;

{$R *.dfm}

procedure TfcpTitulo.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfcpTitulo.FormCreate(Sender: TObject);
var utilCpTitulo: TUtils;
  i, j : integer;
begin
  //sCtrlResize.CtrlResize(TForm(fcpTitulo));
  utilcptitulo := Tutils.Create;
  // Popula Status
  j := utilcptitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    DBComboBox1.Items.Add(utilcptitulo.Forma.Strings[i]);
  end;
  //inherited;
end;

procedure TfcpTitulo.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Close;
end;

procedure TfcpTitulo.FormShow(Sender: TObject);
var varCpTitulo : TUtils;
begin
   // Listo as Contas Caixa
  DecimalSeparator := ',';
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if not dm.cds_7_contas.Active then
  begin
    dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    dm.cds_7_contas.Open;
  end;
  dm.cds_parametro.Close;

  memo1.Text := '';
  inherited;
  DBComboBox1.ItemIndex := 0;
  desc := 0;
  juros := 0;
  perda := 0;
  funrural := 0;
  outros := 0;
  valorr := 0;
  resto := 0;
  varCpTitulo := TUtils.Create;
  if ((dm.cds_4_pagarSTATUS.AsString = '5-')) then
  begin
     dm.cds_4_pagarDATABAIXA.AsDateTime := Date;
     dm.cds_4_pagarDATAPAGAMENTO.AsDateTime := Date;
     // Se é cheque pré então não mudo o valorRecebido
     dm.cds_4_pagarVALORRECEBIDO.AsFloat := dm.cds_4_pagarVALOR_RESTO.AsFloat;
     valorAReceber := dm.cds_4_pagarVALOR_RESTO.AsFloat;
     btnCancela_Baixa.Enabled := False;
     BitBtn2.Enabled := True;
     DM.cds_4_pagarCAIXA.AsInteger := 33;
  end;
  if ((dm.cds_4_pagarSTATUS.AsString = '7-')) then
  begin
     label9.caption := 'Valor Pago';
     dm.cds_4_pagarVALOR_RESTO.AsFloat := dm.cds_4_pagarVALORRECEBIDO.AsFloat;
  end;

  DBComboBox1.ItemIndex := varCpTitulo.retornaForma(dm.cds_4_pagarFORMAPAGAMENTO.AsString);
  dbComboBox1.SetFocus;
end;

procedure TfcpTitulo.BitBtn2Click(Sender: TObject);
var
  str_sql :String;
  TD: TTransactionDesc;
  varCpTitulo: TUtils;
  Forma, i, num: Integer;
begin
  idusuario :=  IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID);
  varCpTitulo := TUtils.Create;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  i := 0;
  if (DBComboBox1.Text = '') then
  begin
    MessageDlg('Escolha a forma de Pagamento.', mtError, [mbOK], 0);
    exit;
  end;
  if (DBLookupComboBox1.Text = '') then
  begin
    MessageDlg('Escolha o Caixa.', mtError, [mbOK], 0);
    exit;
  end;

  if (length(dm.cds_4_pagarHISTORICO.AsString + Memo1.Text) > 145) then
  begin
    MessageDlg('Histórico não pode ter mais de 150 caracteres.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (dm.cds_4_pagarSTATUS.AsString = '7-') then
  begin
    MessageDlg('Título já pago.', mtWarning, [mbOK], 0);
    exit;
  end;
  Try
    //Confirmando a baixa
    if (dm.cds_4_pagarTITULO.AsString = 'Diversos') then
      if  MessageDlg('Confirma a baixa dos título selecionados ?',
       mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    if (dm.cds_4_pagarTITULO.AsString <> 'Diversos') then
    if  MessageDlg('Confirma a baixa do título ''' + dm.cds_4_pagarTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    //Verifica se é cheque pre-datado e baixando o título
    for i:=1 to length(nrec) do
    begin
      str_sql := 'UPDATE PAGAMENTO SET DP = 0 , USERID = ' + QuotedStr(idusuario);
      if (dm.cds_4_pagarHISTORICO.AsString <> '') then
      begin
        str_sql := str_sql + ' ,HISTORICO = HISTORICO || ';
        str_sql := str_sql + QuotedStr(' - ') + ' || ' + QuotedStr(Memo1.Text);
      end
      else  begin
        str_sql := str_sql + ' ,HISTORICO =  ';
        str_sql := str_sql + QuotedStr(Memo1.Text);
      end;
      str_sql := str_sql + ' WHERE CODPAGAMENTO = ';
      num := nrec[i - 1];
      str_sql := str_sql + IntToStr(num);
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
    if (dm.cds_4_pagar.State in [dsBrowse, dsInactive]) then
      dm.cds_4_pagar.Edit;
    dm.cds_4_pagarFORMAPAGAMENTO.AsString := (varCpTitulo.pegaForma(DBComboBox1.Text));
    dm.cds_4_pagarSTATUS.AsString := '7-';
    dm.cds_4_pagar.Post;
    btnCancela_Baixa.Enabled := True;
    //btnImprimi.Enabled := True;
    BitBtn2.Enabled := False;

    //Faco a baixa pela SP
    DecimalSeparator := '.';
    str_sql := 'EXECUTE PROCEDURE BAIXATITULOSPAG(';
    str_sql := str_sql + FloatToStr(dm.cds_4_pagarVALORRECEBIDO.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_4_pagarFUNRURAL.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_4_pagarJUROS.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_4_pagarDESCONTO.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_4_pagarPERDA.AsFloat);
    str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_4_pagarDATABAIXA.AsDateTime) + '''';
    str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_4_pagarDATAPAGAMENTO.AsDateTime) + '''';
    if (not dm.cds_4_pagarDATACONSOLIDA.IsNull) then
      str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_4_pagarDATACONSOLIDA.AsDateTime) + ''''
    else
      str_sql := str_sql + ', null';
    str_sql := str_sql + ',''' + dm.cds_4_pagarFORMAPAGAMENTO.AsString + '''';
    str_sql := str_sql + ',''' + dm.cds_4_pagarN_DOCUMENTO.AsString + '''';
    str_sql := str_sql + ',' + FloatToStr(dm.cds_4_pagarCAIXA.AsFloat);
    str_sql := str_sql + ',' + IntToStr(dm.cds_4_pagarCODFornecedor.AsInteger);
    str_sql := str_sql + ',''' + dm.cds_4_pagarSTATUS.AsString + ''', ';
    str_sql := str_sql + QuotedStr(idusuario);
    str_sql := str_sql + ')';
    DecimalSeparator := ',';
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
      if (dm.cds_4_pagar.State in [dsBrowse, dsInactive]) then
        dm.cds_4_pagar.Edit;
      dm.cds_4_pagarFORMAPAGAMENTO.AsString := (varCpTitulo.pegaForma(DBComboBox1.Text));
      dm.cds_4_pagarSTATUS.AsString := '5-';
      dm.cds_4_pagar.Post;
      btnCancela_Baixa.Enabled := False;
      //btnImprimi.Enabled := True;
      BitBtn2.Enabled := True;
      exit;
    end;
  except
    MessageDlg('Erro na baixa , execute o processo novamente.', mtError, [mbOK], 0);
    exit;
  end;
  MessageDlg('Baixa efetuada com sucesso.', mtInformation, [mbOK], 0);
  btnSair.SetFocus;
end;

procedure TfcpTitulo.DBEdit5Change(Sender: TObject);
begin
  inherited;
  dm.cds_4_pagarVALORRECEBIDO.AsFloat := 0;
end;

procedure TfcpTitulo.DBEdit6Change(Sender: TObject);
begin
  inherited;
  dm.cds_4_pagarVALORRECEBIDO.AsFloat := 0;
end;

procedure TfcpTitulo.DBEdit7Change(Sender: TObject);
begin
  inherited;
  dm.cds_4_pagarVALORRECEBIDO.AsFloat := 0;
end;

procedure TfcpTitulo.DBEdit8Change(Sender: TObject);
begin
  inherited;
  dm.cds_4_pagarVALORRECEBIDO.AsFloat := 0;
end;


procedure TfcpTitulo.DBEdit5Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
     funrural := DM.cds_4_pagarFUNRURAL.AsFloat;
     DM.cds_4_pagarVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
     perda + funrural - outros);
    end;
end;

procedure TfcpTitulo.DBEdit6Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
     juros := dm.cds_4_pagarJUROS.AsFloat;
     dm.cds_4_pagarVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
     perda + funrural - outros);
    end;
end;

procedure TfcpTitulo.DBEdit7Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      desc := dm.cds_4_pagarDESCONTO.AsFloat;
      dm.cds_4_pagarVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
      perda + funrural - outros)
    end;
end;

procedure TfcpTitulo.DBEdit8Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      perda := dm.cds_4_pagarPERDA.AsFloat;
      dm.cds_4_pagarVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
      perda + funrural - outros)
    end;
end;

procedure TfcpTitulo.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    juros := dm.cds_4_pagarJUROS.AsFloat;
    desc := dm.cds_4_pagarDESCONTO.AsFloat;
    perda := dm.cds_4_pagarPERDA.AsFloat;
    outros := dm.cds_4_pagarTROCA.AsFloat;
    funrural := dm.cds_4_pagarFUNRURAL.AsFloat;
    resto := dm.cds_4_pagarVALOR_RESTO.AsFloat;
    ValorRecebido := ( resto + juros - desc - perda - outros - funrural);
    dm.cds_4_pagarVALORRECEBIDO.AsFloat := ValorRecebido;
end;

procedure TfcpTitulo.DBEdit9Exit(Sender: TObject);
begin
  inherited;

  if (bitbtn2.Enabled = True) then
    bitbtn2.SetFocus;
end;

procedure TfcpTitulo.btnCancela_BaixaClick(Sender: TObject);
var
str_sql: String;
codigo, i, num : integer;
begin
  codigo := dm.cds_4_pagarCODPAGAMENTO.asInteger;
  if  MessageDlg('Confirma o cancelamento da baixa do Título : ''' + dm.cds_4_pagarTITULO.AsSTring + '''',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  Try
    // Mudo o parametro DP para 0(zero) para saber quem cancelar
    for i:=1 to length(nrec) do
    begin
      str_sql := 'UPDATE PAGAMENTO SET DP = 0';
      str_sql := str_sql + ' WHERE CODPAGAMENTO = ';
      num := nrec[i - 1];
      str_sql := str_sql + IntToStr(num);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;

    str_sql := 'EXECUTE PROCEDURE CANCELABAIXAPAG(';
    str_sql := str_sql + IntToStr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) + ')';
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);
    dm.cds_4_pagar.Cancel;

    if dm.cds_4_pagar.Active then
       dm.cds_4_pagar.Close;
    dm.cds_4_pagar.Params[0].AsInteger := codigo;
    dm.cds_4_pagar.Open;
    btnCancela_Baixa.Enabled := False;
    BitBtn2.Enabled := True;
  Except
    MessageDlg('Não foi possível cancelar a baixa.', mtError, [mbOK], 0);
  end;
  //Fazer rotina para excluir lancamento contábil.

end;

procedure TfcpTitulo.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Cod_orig := dm.cds_4_pagarCODPAGAMENTO.AsInteger;
  tipo_origem := 'T_PAGAR';
  cod_cli_forn := dm.cds_4_pagarCODFORNECEDOR.AsInteger;
  c_f := 'F'; // F=Fornecedor
  fCheques_bol.ShowModal;
end;

procedure TfcpTitulo.BitBtn3Click(Sender: TObject);
var
  str_sql: String;
  codigo, i, num : integer;
  TD: TTransactionDesc;
begin
  if (dm.cds_crSTATUS.AsString = '7-') then
  begin
    MessageDlg('Título já pago,use o Cancelar Baixa.', mtWarning, [mbOK], 0);
    exit;
  end;
  codigo := dm.cds_crCODRECEBIMENTO.AsInteger;
  if  MessageDlg('Confirma a alteração do Título : ''' + dm.cds_crTITULO.AsSTring + '''',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  Try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    // Mudo o parametro DP para 0(zero) para saber quem cancelar
    for i:=1 to length(nrec) do
    begin
      str_sql := 'UPDATE PAGAMENTO SET DP = 0';
      str_sql := str_sql + ' WHERE CODPAGAMENTO = ';
      num := nrec[i - 1];
      str_sql := str_sql + IntToStr(num);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;
    dm.sqlsisAdimin.Commit(TD);
    dm.sqlsisAdimin.StartTransaction(TD);
    str_sql := 'UPDATE PAGAMENTO SET STATUS = ';
    str_sql := str_sql + QuotedStr(copy(DBComboBox2.Text,0,2));
    str_sql := str_sql + ' WHERE CODFORNECEDOR = ';
    str_sql := str_sql + IntToStr(dm.cds_4_pagarCODFORNECEDOR.AsInteger);
    str_sql := str_sql + ' and DP = 0';
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Título alterado com sucesso.', mtInformation, [mbOK], 0);
    dm.cds_4_pagar.Cancel;

   except
     dm.sqlsisAdimin.Rollback(TD);
     MessageDlg('Erro para efetuar a alteração.', mtError, [mbOK], 0);
   end;

end;

procedure TfcpTitulo.FormClose(Sender: TObject; var Action: TCloseAction);
var TD: TTransactionDesc;
    str1 : string ;
begin
  inherited;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  idusuario :=  IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID);
  dm.sqlsisAdimin.StartTransaction(TD);
  str1 := 'UPDATE PAGAMENTO SET DP = null ,  USERID = null WHERE DP = 0 and ' + ' USERID = ' + QuotedStr(idusuario);
  dm.sqlsisAdimin.ExecuteDirect(str1);
  dm.sqlsisAdimin.Commit(TD);
end;

procedure TfcpTitulo.btnGravarClick(Sender: TObject);
begin
  //inherited;
end;

procedure TfcpTitulo.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if(datacon.Text = '')then
    datacon.date := dm.cds_4_pagarDATAPAGAMENTO.AsDateTime;
end;

procedure TfcpTitulo.BitBtn4Click(Sender: TObject);
begin
  inherited;
  datacon.Clear;
  dm.cds_4_pagarDATACONSOLIDA.Clear;
end;

procedure TfcpTitulo.btnImprimirClick(Sender: TObject);
Var  TD: TTransactionDesc;
  Forma, i, num: Integer;
  str_sql: String;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    for i:=1 to length(nrec) do
    begin
      idusuario :=  IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID);
      str_sql := 'UPDATE PAGAMENTO SET DP = 0 , USERID = ' + QuotedStr(idusuario);
      str_sql := str_sql + ' WHERE CODPAGAMENTO = ';
      num := nrec[i - 1];
      str_sql := str_sql + IntToStr(num);
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para marcar os titulos.', mtError, [mbOK], 0);
        exit;
      end;
    end;
  except
    MessageDlg('Erro para marcar os titulos.', mtError, [mbOK], 0);
    exit;
  end;
  rep.FileName := str_relatorio + 'recibo_cp.rep';

  rep.Report.Params.ParamByName('USUARIO').Value := idusuario;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Execute;
end;

procedure TfcpTitulo.btnreciboClick(Sender: TObject);
Var  TD: TTransactionDesc;
  Forma, i, num: Integer;
  str_sql: String;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    for i:=1 to length(nrec) do
    begin
      idusuario :=  IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID);
      str_sql := 'UPDATE PAGAMENTO SET DP = 0 , USERID = ' + QuotedStr(idusuario);
      str_sql := str_sql + ' WHERE CODPAGAMENTO = ';
      num := nrec[i - 1];
      str_sql := str_sql + IntToStr(num);
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para marcar os titulos.', mtError, [mbOK], 0);
        exit;
      end;
    end;
  except
    MessageDlg('Erro para marcar os titulos.', mtError, [mbOK], 0);
    exit;
  end;
  rep.FileName := str_relatorio + 'recibo_pgto.rep';

  rep.Report.Params.ParamByName('USUARIO').Value := idusuario;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Execute;
end;

end.
