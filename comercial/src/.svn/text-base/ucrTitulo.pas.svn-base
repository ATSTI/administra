unit ucrTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, Mask, DBCtrls, DBxpress, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, rpcompobase, rpvclreport, UCHist_Base, UCHistDataset,
  RXCtrls, RecError, dateUtils;

type
  TfcrTitulo = class(TfPai)
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
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    cds_paramDESCRICAO: TStringField;
    cds_paramPARAMETRO: TStringField;
    cds_paramCONFIGURADO: TStringField;
    cds_paramDADOS: TStringField;
    cds_paramD1: TStringField;
    cds_paramD2: TStringField;
    cds_paramD3: TStringField;
    cds_paramD4: TStringField;
    cds_paramD5: TStringField;
    cds_paramD6: TStringField;
    cds_paramD7: TStringField;
    cds_paramD8: TStringField;
    cds_paramD9: TStringField;
    ds_conta: TDataSource;
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
    btnCancela_Baixa: TBitBtn;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    BitBtn1: TBitBtn;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBComboBox2: TDBComboBox;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    BitBtn2: TBitBtn;
    DBComboBox1: TComboBox;
    dbEdit2: TJvDBDatePickerEdit;
    dbEdit1: TJvDBDatePickerEdit;
    btnImprimi: TBitBtn;
    VCLReport1: TVCLReport;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    Label27: TLabel;
    datacon: TJvDBDatePickerEdit;
    BitBtn4: TBitBtn;
    Hist_DataSetReceber: TUCHist_DataSet;
    HistoricoReceber: TUCControlHistorico;
    Hist_CancelaBaixa: TUCHist_DataSet;
    sqlCancelaBaixa: TSQLStoredProc;
    BitBtn5: TBitBtn;
    RxLabel1: TRxLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Edit1: TEdit;
    Label8: TLabel;
    Label28: TLabel;
    DBMemo2: TDBMemo;
    Memo1: TMemo;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    BitBtn6: TBitBtn;
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure btnCancela_BaixaClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btnImprimiClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure CalculaJuros;
    { Public declarations }
  end;

var
  fcrTitulo: TfcrTitulo;
  valorAReceber, ValorRecebido, desc, juros, perda,
  funrural,outros, valorr, resto: Double;
  

implementation

uses UDm, uCheques_bol, uUtils, ufcrSaude, ufcr, uFinanceiro,
  uAtsAdmin,  UCBase,  sCtrlResize, uReceberCls, uLogs;

{$R *.dfm}

procedure TfcrTitulo.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfcrTitulo.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fcrTitulo));
  utilcrtitulo := Tutils.Create;
  //inherited;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    DBComboBox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

  // Popula Status
  j := utilcrtitulo.StatusRec.Count;
  for i := 0 to j - 1 do
  begin
    DbComboBox2.Items.Add(utilcrtitulo.StatusRec.Strings[i]);
  end;

  // Listo as Contas Caixa
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
end;

procedure TfcrTitulo.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Close;
end;

procedure TfcrTitulo.FormShow(Sender: TObject);
var varsql : STRING;
 varCrTitulo : TUtils;
begin
  inherited;
  memo1.Text := '';
  DecimalSeparator := ',';  
  if (DM.MODULOUSERCONTROL = 'atsadmin') then
     Edit1.Text := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin
  else
     Edit1.Text := fFinanceiro.UserControlFinanceiro.CurrentUser.UserLogin;

  desc := 0;
  juros := 0;
  perda := 0;
  funrural := 0;
  outros := 0;
  valorr := 0;
  resto := 0;
  varCrTitulo := TUtils.create;
  DBComboBox1.ItemIndex := (varCrTitulo.retornaForma(dm.cds_crFORMARECEBIMENTO.AsString));
  if ((dm.cds_crSTATUS.AsString = '5-') or (dm.cds_crSTATUS.AsString = '9-')) then
  begin
    if (cds_param.Active) then
      cds_param.Close;
    cds_param.Params[0].AsString := 'REGISTROCRTITULO';
    cds_param.Open;
    if cds_param.IsEmpty then
    begin
      varsql :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS,D1,D2,D3,D4) ' ;
      varsql := varsql + 'values (''REGISTROCRTITULO'',''S'',''REGISTROCRTITULO'',''01/01/04'',''01/10/04'',''2-DINHEIRO'',''00'')';
      dm.sqlsisAdimin.executedirect(varsql);
      dbComboBox1.SetFocus;
      exit;
    end
    else
    begin
      dm.cds_crDATABAIXA.AsDateTime := StrToDate(cds_paramD1.AsString);
      dm.cds_crDATARECEBIMENTO.AsDateTime := StrToDate(cds_paramD2.AsString);
      //DBComboBox1.Text := cds_paramD3.AsString;
      DBLookupComboBox1.Field.Value := (cds_paramD4.AsString);
    end;
    // adicionei esse If em 05/10/06  "Edson"
    dm.cds_crVALORRECEBIDO.AsFloat := dm.cds_crVALOR_RESTO.AsFloat;
    valorAReceber := dm.cds_crVALOR_RESTO.AsFloat;
    btnCancela_Baixa.Enabled := False;
    btnImprimi.Enabled := false;
    BitBtn2.Enabled := True;
  end;
  dbComboBox1.SetFocus;
end;

procedure TfcrTitulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP = 0' +
    ' AND USERID = ' + IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID)); 
end;

procedure TfcrTitulo.btnExcluirClick(Sender: TObject);
var
str_sql: String;
begin
  inherited;
  if  MessageDlg('Confirma a exclusão da baixa do Título : ''' + dm.cds_crTITULO.AsSTring + '''',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  Try
    {str_sql := 'EXECUTE PROCEDURE CANCELABAIXAREC(';
    str_sql := str_sql + IntToStr(dm.cds_crCODCLIENTE.AsInteger) + ')';
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);
    dm.cds_cr.Cancel;}
    btnCancela_Baixa.Enabled := False;
    BitBtn2.Enabled := True;
  Except
    MessageDlg('Não foi possível cancelar a baixa.', mtError, [mbOK], 0);
  end;

end;

procedure TfcrTitulo.BitBtn2Click(Sender: TObject);
 var
   i, num: Integer;
   str_sql: String;
  TD: TTransactionDesc;
  statusCrTitulo : TUtils;
  REC : TReceberCls;
begin
  statusCrTitulo := TUtils.Create;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  i := 0;
  Try
    if (dm.cds_crSTATUS.AsString = '7-') then
    begin
      MessageDlg('Título já recebido.', mtWarning, [mbOK], 0);
      exit;
    end;

    if (length(dm.cds_crHISTORICO.AsString + Memo1.Text) > 145) then
    begin
      MessageDlg('Histórico não pode ter mais de 150 caracteres.', mtWarning, [mbOK], 0);
      exit;
    end;

    //Confirmando a baixa
    if (dm.cds_crTITULO.AsString = 'Diversos') then
      if  MessageDlg('Confirma a baixa dos título selecionados ?',
       mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    if (dm.cds_crTITULO.AsString <> 'Diversos') then
    if  MessageDlg('Confirma a baixa do título ''' + dm.cds_crTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    //Verifica se é cheque pre-datado e baixando o título
    for i:=1 to length(nrec) do
    begin
      str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
      if (dm.cds_crHISTORICO.AsString <> '') then
      begin
        str_sql := str_sql + ' ,HISTORICO = HISTORICO || ';
        str_sql := str_sql + QuotedStr(' - ') + ' || ' + QuotedStr(Memo1.Text);
      end
      else  begin
        str_sql := str_sql + ' ,HISTORICO =  ';
        str_sql := str_sql + QuotedStr(Memo1.Text);
      end;
      str_sql := str_sql + ', USERID = ' + IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID);
      str_sql := str_sql + ' WHERE CODRECEBIMENTO = ';
      num := nrec[i - 1];
      str_sql := str_sql + IntToStr(num);
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          exit;
        end;
      end;  
    end;
    if (dm.cds_cr.State in [dsBrowse, dsInactive]) then
      dm.cds_cr.Edit;

    if (DBComboBox1.Text = '') then
    begin
      MessageDlg('Escolha a forma de Pagamento.', mtError, [mbOK], 0);
      exit;
    end else
      dm.cds_crFORMARECEBIMENTO.AsString := (statusCrTitulo.pegaForma(DBComboBox1.Text));
    dm.cds_crSTATUS.AsString := '7-';
    dm.cds_cr.Post;
    btnCancela_Baixa.Enabled := True;
    btnImprimi.Enabled := True;
    BitBtn2.Enabled := False;

    //Faco a baixa pela CLASSE
    REC := TReceberCls.Create;
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        REC.baixaTitulo(dm.cds_crVALORRECEBIDO.AsFloat, dm.cds_crFUNRURAL.AsFloat, dm.cds_crJUROS.AsFloat,
        dm.cds_crDESCONTO.AsFloat, dm.cds_crPERDA.AsFloat, dm.cds_crDATABAIXA.AsDateTime,
        dm.cds_crDATARECEBIMENTO.AsDateTime, dm.cds_crDATACONSOLIDA.AsDateTime,
        dm.cds_crFORMARECEBIMENTO.AsString, dm.cds_crN_DOCUMENTO.AsString, dm.cds_crCAIXA.AsInteger,
        dm.cds_crCODCLIENTE.AsInteger, dm.cds_crSTATUS.AsString, fAtsAdmin.UserControlComercial.CurrentUser.UserID, '');

        rec.gravaHistorico(dm.cds_crCODRECEBIMENTO.AsInteger, dm.cds_crTITULO.AsString,
          dm.cds_crCAIXA.AsInteger, fAtsAdmin.UserControlComercial.CurrentUser.UserID, 'RECEBIMENTO',
          'RECEBIMENTO-' + DBLookupComboBox1.Text + '-' +
          formatdatetime('dd/mm/yyyy', today));        dm.sqlsisAdimin.Commit(TD);
          
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;
    finally
      REC.Free;
    end;
    //inherited;
    str_sql := 'UPDATE PARAMETRO SET D1 = ';
    str_sql := str_sql + '''' + DateToStr(dm.cds_crDATABAIXA.AsDateTime) + ''', D2 = ';
    str_sql := str_sql + '''' + DateToStr(dm.cds_crDATARECEBIMENTO.AsDateTime) + ''', D3 = ';
    str_sql := str_sql + '''' + DBComboBox1.Text + ''', D4 = ';
    str_sql := str_sql + '''' + IntToStr(DBLookupComboBox1.KeyValue) + '''';//Field.Value) //IntToStr(DBLookupComboBox1.KeyValue) + '''';
    str_sql := str_sql + ' where PARAMETRO = ' + '''REGISTROCRTITULO''';
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
    btnSair.SetFocus;
  except
    MessageDlg('Erro na baixa , execute o processo novamenteo.', mtError, [mbOK], 0);
  end;
end;

procedure TfcrTitulo.BitBtn1Click(Sender: TObject);
var j, num1 : integer;
  strsql2: string;
  TD: TTransactionDesc;
begin
  inherited;
  for j := 1 to length(nrec) do
  begin
    strsql2 := 'UPDATE RECEBIMENTO SET DP = 0, HISTORICO = ';
    strsql2 := strsql2 + QuotedStr(Memo1.Text);
    strsql2 := strsql2 + ' WHERE CODRECEBIMENTO = ';
    num1 := nrec[j - 1];
    strsql2 := strsql2 + IntToStr(num1);
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect(strsql2);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
      exit;
    end;
  end;
  codrec := dm.cds_crCODRECEBIMENTO.AsInteger;
  Cod_orig := dm.cds_crCODRECEBIMENTO.AsInteger;
  tipo_origem := 'T_RECEBER';
  cod_cli_forn := dm.cds_crCODCLIENTE.AsInteger;
  c_f := 'C'; // C=Cliente
  caixa := dm.cds_crCAIXA.AsInteger;
  fCheques_bol.titulo := dm.cds_CrTITULO.AsString;
  valortitulo := dm.cds_crVALOR_RESTO.AsFloat - dm.cds_crDESCONTO.AsFloat + dm.cds_crJUROS.AsFloat;
  fCheques_bol.ShowModal;
  if (dm.cds_crSTATUS.AsString = '5-') then // Somente qdo esta pendente faz a rotina abaixo
  begin
    dm.cds_crSTATUS.AsString := '7-';
    dm.cds_cr.Post;
    btnCancela_Baixa.Enabled := True;
    btnImprimi.Enabled := True;
    BitBtn2.Enabled := False;
  end;
end;

procedure TfcrTitulo.DBEdit5Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
     funrural := dm.cds_crFUNRURAL.AsFloat;
     dm.cds_crVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
     perda + funrural - outros);
    end;
end;

procedure TfcrTitulo.DBEdit6Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
     juros := dm.cds_crJUROS.AsFloat;
     dm.cds_crVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
     perda + funrural - outros);
    end;
end;

procedure TfcrTitulo.DBEdit7Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      desc := dm.cds_crDESCONTO.AsFloat;
      dm.cds_crVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
      perda + funrural - outros)
    end;
end;

procedure TfcrTitulo.DBEdit8Exit(Sender: TObject);
begin
  inherited;
    if DtSrc.State in [dsInsert, dsEdit] then
    begin
      perda := dm.cds_crPERDA.AsFloat;
      dm.cds_crVALORRECEBIDO.AsFloat := (valorAReceber - desc + juros -
      perda + funrural - outros)
    end;
    dbedit9.SetFocus;
end;

procedure TfcrTitulo.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if (bitbtn2.Enabled = True) then
    bitbtn2.SetFocus;
end;

procedure TfcrTitulo.btnCancela_BaixaClick(Sender: TObject);
var  str_sql: String;
  codigo, i, num : integer;
  REC :TReceberCls;
  TD: TTransactionDesc;
begin
  codigo := dm.cds_crCODRECEBIMENTO.AsInteger;
  if  MessageDlg('Confirma a exclusão da baixa do Título : ''' + dm.cds_crTITULO.AsSTring + '''',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  Try
    // Mudo o parametro DP para 0(zero) para saber quem cancelar
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      for i:=1 to length(nrec) do
      begin
        str_sql := 'UPDATE RECEBIMENTO SET DP = 0';
        str_sql := str_sql + ', USERID = ' + IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID);
        str_sql := str_sql + ' WHERE CODRECEBIMENTO = ';
        num := nrec[i - 1];
        str_sql := str_sql + IntToStr(num);
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      end;
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Baixa não efetuada.' + #10#13 +
      '(Este Caixa pode estar fechado para esta data)', mtWarning, [mbOK], 0);
      exit;
    end;

    dm.sqlsisAdimin.StartTransaction(TD);
    try
      try
        REC := TReceberCls.Create;
        REC.cancelabaixa(dm.cds_crCODCLIENTE.AsInteger, fAtsAdmin.UserControlComercial.CurrentUser.UserID);
        rec.gravaHistorico(dm.cds_crCODRECEBIMENTO.AsInteger, dm.cds_crTITULO.AsString,
          dm.cds_crCAIXA.AsInteger, fAtsAdmin.UserControlComercial.CurrentUser.UserID, 'CANCELAMENTO',
          'CANCELADO BAIXA-' + DBLookupComboBox1.Text + '-' +
          formatdatetime('dd/mm/yyyy', today));
      finally
        REC.Free;
      end;
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Baixa não efetuada.' + #10#13 +
      '(Este Caixa pode estar fechado para esta data)', mtWarning, [mbOK], 0);
      exit;

    end;


    MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);

    dm.cds_cr.Edit;
    dm.cds_crSTATUS.AsString := '5-';
    dm.cds_cr.Post;
    dm.cds_cr.Cancel;

    if dm.cds_cr.Active then
       dm.cds_cr.Close;
    dm.cds_cr.Params[0].AsInteger := codigo;
    dm.cds_cr.Open;
   btnImprimi.Enabled := False;
  Except
    MessageDlg('Não foi possível cancelar a baixa.', mtError, [mbOK], 0);
  end;

end;

procedure TfcrTitulo.CalculaJuros;
var juros , carencia : double;
begin
  carencia := 0;
  if (dbEdit2.Date > dm.cds_crDATAVENCIMENTO.AsDateTime) then
  begin
    if (cds_param.Active) then
      cds_param.Close;
    cds_param.Params[0].AsString := 'RECEBERJUROS';
    cds_param.Open;
    if (not cds_param.IsEmpty) then
    begin
      // Pego o Juros
      juros := StrToFloat(cds_paramDADOS.asString);
      if(cds_paramD1.asString <> '') then
        carencia := StrToFloat(cds_paramD1.asString);
      if ((dbEdit2.Date - dm.cds_crDATAVENCIMENTO.AsDateTime)> carencia) then
      begin
      if (dm.cds_cr.State in [dsBrowse]) then
        dm.cds_cr.Edit;
      dm.cds_crJUROS.AsFloat := dm.cds_crVALOR_RESTO.AsFloat * ((juros * (((dbEdit2.Date - dm.cds_crDATAVENCIMENTO.AsDateTime)- carencia)/30))/100);
      end;
    end;
 end;
end;

procedure TfcrTitulo.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  // Calcula Juros
  if(datacon.Text = '')then
    datacon.Date := dbEdit2.Date;
  BitBtn5.Click;
end;

procedure TfcrTitulo.btnImprimiClick(Sender: TObject);
var
  testo_update : string;
  TD: TTransactionDesc;
begin
    if (DM.cds_cr.Active) then
      DM.cds_cr.Close;
      DM.cds_cr.Open;
    if (dm.moduloUsado = 'SAUDE') then
    begin
      VCLReport1.Filename := str_relatorio + 'recibo.rep';
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('PVENDA').Value := DM.cds_crCODRECEBIMENTO.AsInteger;
      VCLReport1.Report.Params.ParamByName('PREC').Value := DM.cds_crCODRECEBIMENTO.AsInteger;
      VCLReport1.Execute;
    end
    else
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      // marco as Duplicatas a serem impressas

      fcrProc.scdsCr_proc.First;
      While not fcrProc.scdsCr_proc.Eof do
      begin
        if (fcrProc.scdsCr_procDUP_REC_NF.AsString = 'S') then
        begin
          testo_update := '';
          testo_update := 'update RECEBIMENTO set DP = 0 ' ;
          testo_update := testo_update + 'where CODRECEBIMENTO = ';
          testo_update := testo_update + IntToStr(fcrProc.scdsCr_procCODRECEBIMENTO.AsInteger);
          dm.sqlsisAdimin.ExecuteDirect(testo_update);
        end;
        fcrProc.scdsCr_proc.Next;
      end;
      dm.sqlsisAdimin.Commit(TD);

      VCLReport1.Filename := str_relatorio + 'impr_recibo.rep';
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('PCODCLIENTE').Value := DM.cds_crCODCLIENTE.AsInteger;
      VCLReport1.Execute;
    end;
    exit;
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      // marco as Duplicatas a serem impressas
      fcrProcSaude.scdsCr_proc.DisableControls;
      fcrProcSaude.scdsCr_proc.First;
      While not fcrProcSaude.scdsCr_proc.Eof do
      begin
        if (fcrProcSaude.scdsCr_procDUP_REC_NF.AsString = 'S') then
        begin
          testo_update := '';
          testo_update := 'update RECEBIMENTO set DP = 1 ' ;
          testo_update := testo_update + 'where CODRECEBIMENTO = ';
          testo_update := testo_update + IntToStr(fcrProcSaude.scdsCr_procCODRECEBIMENTO.AsInteger);
          dm.sqlsisAdimin.ExecuteDirect(testo_update);
        end;
        fcrProcSaude.scdsCr_proc.Next;
      end;
      dm.sqlsisAdimin.Commit(TD);
      fcrProcSaude.scdsCr_proc.EnableControls;
      //======================================================

      fcrProcSaude.VCLReport1.Filename := str_relatorio + 'recibo.rep';
      fcrProcSaude.VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      if (not fcrProcSaude.scdsCr_proc.Active) then
      begin
       MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
       exit;
      end;
      fcrProcSaude.VCLReport1.Report.Params.ParamByName('CODVENDA').Value := 0;
      if (fcrProcSaude.medta3.Text <> datastr) then
      begin
        fcrProcSaude.VCLReport1.Report.Params.ParamByName('PDTA1').Value :=
                   formatdatetime('dd/mm/yy', StrToDate(fcrProcSaude.medta3.Text));
      end;
      if (fcrProcSaude.medta4.Text <> datastr) then
      begin
        fcrProcSaude.VCLReport1.Report.Params.ParamByName('PDTA2').Value :=
                   formatdatetime('dd/mm/yy', StrToDate(fcrProcSaude.medta4.Text));
      end;
      if fcrProcSaude.edCodCliente.Text <> '' then
        fcrProcSaude.VCLReport1.Report.Params.ParamByName('CODID').Value := StrToInt(fcrProcSaude.edCodCliente.Text)
      else
        fcrProcSaude.VCLReport1.Report.Params.ParamByName('CODID').Value := 9999999;
      fcrProcSaude.VCLReport1.Report.Params.ParamByName('N_COPIAS').Value :=StrToInt(Edit2.Text);
      fcrProcSaude.VCLReport1.Execute;
  end;
end;

procedure TfcrTitulo.BitBtn3Click(Sender: TObject);
var
  str_sql: String;
  codigo, i, num : integer;
  TD: TTransactionDesc;
begin
  if (dm.cds_crSTATUS.AsString = '7-') then
  begin
    MessageDlg('Título já recebido,use o Cancelar Baixa.', mtWarning, [mbOK], 0);
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
      str_sql := 'UPDATE RECEBIMENTO SET DP = 0';
      str_sql := str_sql + ' WHERE CODRECEBIMENTO = ';
      num := nrec[i - 1];
      str_sql := str_sql + IntToStr(num);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;
    dm.sqlsisAdimin.Commit(TD);
    dm.sqlsisAdimin.StartTransaction(TD);
    str_sql := 'UPDATE RECEBIMENTO SET STATUS = ';
    str_sql := str_sql + QuotedStr(copy(DBComboBox2.Text,0,2));
    str_sql := str_sql + ' WHERE CODCLIENTE = ';
    str_sql := str_sql + IntToStr(dm.cds_crCODCLIENTE.AsInteger);
    str_sql := str_sql + ' and DP = 0';
    dm.sqlsisAdimin.ExecuteDirect(str_sql);

    if (DBComboBox2.Text = '3-Em Protesto')then
    begin
      str_sql := 'UPDATE CLIENTES SET BLOQUEIO = ' + QuotedStr('S');
      str_sql := str_sql + ' WHERE CODCLIENTE = ';
      str_sql := str_sql + IntToStr(dm.cds_crCODCLIENTE.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Título alterado com sucesso.', mtInformation, [mbOK], 0);
    dm.cds_cr.Cancel;

    if dm.cds_cr.Active then
       dm.cds_cr.Close;
    dm.cds_cr.Params[0].AsInteger := codigo;
    dm.cds_cr.Open;
   btnImprimi.Enabled := False;
   except
     dm.sqlsisAdimin.Rollback(TD);
     MessageDlg('Erro para efetuar a alteração.', mtError, [mbOK], 0);
   end;

end;

procedure TfcrTitulo.btnGravarClick(Sender: TObject);
begin
 //  inherited;
end;

procedure TfcrTitulo.BitBtn4Click(Sender: TObject);
begin
  inherited;
  datacon.Clear;
  dm.cds_crDataConsolida.Clear;
end;

procedure TfcrTitulo.BitBtn5Click(Sender: TObject);
begin
  inherited;
    CalculaJuros;
    juros := dm.cds_crJUROS.AsFloat;
    desc := dm.cds_crDESCONTO.AsFloat;
    perda := dm.cds_crPERDA.AsFloat;
    funrural := dm.cds_crFUNRURAL.AsFloat;
    resto := dm.cds_crVALOR_RESTO.AsFloat;
    ValorRecebido := ( resto + juros - desc - perda - outros + funrural);
    dm.cds_crVALORRECEBIDO.AsFloat := ValorRecebido;
end;

procedure TfcrTitulo.BitBtn6Click(Sender: TObject);
begin
  fLogs := TfLogs.Create(Application);
  try
    dm.abrirLog('cds_cr', dm.cds_crTITULO.AsString,'USERCONTROL');
    fLogs.ShowModal;
  finally
    fLogs.Free;
  end;
end;

end.
