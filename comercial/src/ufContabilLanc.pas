unit ufContabilLanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBCtrls, Grids, DBGrids, DBClient, Provider, SqlExpr, dxCore,
  dxButton, Mask, JvExControls, JvLabel, uUtils, dbxpress;

type
  TfContabilLanc = class(TfPai)
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn12: TBitBtn;
    Label4: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    edValor: TEdit;
    meData: TMaskEdit;
    BitBtn3: TdxButton;
    dxButton2: TdxButton;
    lblContaDeb: TLabel;
    lblDebito: TLabel;
    lblContaCred: TLabel;
    lblCredito: TLabel;
    edHist: TEdit;
    Label7: TLabel;
    sds: TSQLDataSet;
    sdsCODCONT: TIntegerField;
    sdsCODORIGEM: TIntegerField;
    sdsTIPOORIGEM: TStringField;
    sdsDATA: TDateField;
    sdsCODUSUARIO: TSmallintField;
    sdsCODCCUSTO: TIntegerField;
    sdsCODSERVICO: TSmallintField;
    sdsSTATUS: TSmallintField;
    sdsCONTA: TStringField;
    sdsVALORCREDITO: TFloatField;
    sdsVALORDEBITO: TFloatField;
    sdsVALORORCADO: TFloatField;
    sdsQTDECREDITO: TFloatField;
    sdsQTDEDEBITO: TFloatField;
    sdsQTDEORCADO: TFloatField;
    sdsNOME: TStringField;
    sdsCODREDUZIDO: TStringField;
    dsp: TDataSetProvider;
    cds_grid: TClientDataSet;
    cds_gridCODCONT: TIntegerField;
    cds_gridCODORIGEM: TIntegerField;
    cds_gridTIPOORIGEM: TStringField;
    cds_gridDATA: TDateField;
    cds_gridCODUSUARIO: TSmallintField;
    cds_gridCODCCUSTO: TIntegerField;
    cds_gridCODSERVICO: TSmallintField;
    cds_gridSTATUS: TSmallintField;
    cds_gridCONTA: TStringField;
    cds_gridVALORCREDITO: TFloatField;
    cds_gridVALORDEBITO: TFloatField;
    cds_gridVALORORCADO: TFloatField;
    cds_gridQTDECREDITO: TFloatField;
    cds_gridQTDEDEBITO: TFloatField;
    cds_gridQTDEORCADO: TFloatField;
    cds_gridNOME: TStringField;
    cds_gridCODREDUZIDO: TStringField;
    cds_gridTotalDebito: TAggregateField;
    cds_gridTotalCredito: TAggregateField;
    ds_grid: TDataSource;
    sds_filtro: TSQLDataSet;
    sdsedit: TSQLDataSet;
    sdseditCODCONT: TIntegerField;
    sdseditCODORIGEM: TIntegerField;
    sdseditTIPOORIGEM: TStringField;
    sdseditDATA: TDateField;
    sdseditCODUSUARIO: TSmallintField;
    sdseditCODCCUSTO: TIntegerField;
    sdseditCODSERVICO: TSmallintField;
    sdseditSTATUS: TSmallintField;
    sdseditCONTA: TStringField;
    sdseditVALORCREDITO: TFloatField;
    sdseditVALORDEBITO: TFloatField;
    sdseditVALORORCADO: TFloatField;
    sdseditQTDECREDITO: TFloatField;
    sdseditQTDEDEBITO: TFloatField;
    sdseditQTDEORCADO: TFloatField;
    sdseditNOME: TStringField;
    sdseditCODREDUZIDO: TStringField;
    sdseditHISTORICO: TStringField;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn2: TBitBtn;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lblsaldo: TLabel;
    lblDeb: TLabel;
    lblCre: TLabel;
    BuscaPlanoContas1: TMenuItem;
    BuscaCaixaSaida1: TMenuItem;
    JvLabel1: TJvLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ds_rateio: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure meDataExit(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    utilCont : TUtils;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContabilLanc: TfContabilLanc;
  var_credito, var_debito, var_tipoOrigem, tipo_mov, var_sqla, var_sqlb,
  rateio_d, rateio_c, var_edit1, var_edit2 : string;
  var_ccusto, var_codOrigem, var_usuario, var_status, cod_cheque, cod_id, primeiro_lanc : Integer;
  var_data : TDateTime;
  valor : double;
  

implementation

uses UDm, ufplanocontas, uCheques_bol, uRateioPag, uFiltro_forn_plano,
  ufProcContabil, sCtrlResize;

{$R *.dfm}

procedure TfContabilLanc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in ['.'] then Key := ',';
end;

procedure TfContabilLanc.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfContabilLanc.FormShow(Sender: TObject);
  var vlr_deb, vlr_cre, vlr_saldo: double;
  varsqlx :string;
begin
 // inherited;
  sCtrlResize.CtrlResize(TForm(fContabilLanc));
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_desp := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
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
    DecimalSeparator := '.';
    vlr_deb := StrToFloat(dm.cds_parametroD1.AsString);
    vlr_cre := StrToFloat(dm.cds_parametroD2.AsString);
  end;
  vlr_saldo := (vlr_deb - vlr_cre);
  DecimalSeparator := ',';
  lblsaldo.Caption := Format('%-6.2n',[vlr_saldo]);
  lblCre.Caption :=     Format('%-6.2n',[vlr_cre]); //dm.cds_parametroD2.AsString;
  lblDeb.Caption := Format('%-6.2n',[vlr_deb]); //dm.cds_parametroD1.AsString;
  dm.cds_parametro.Close;
end;

procedure TfContabilLanc.Edit1Exit(Sender: TObject);
 Var str_sql: string;
begin
  inherited;
  var_edit1 := Edit1.Text;
  if Edit1.Text <> '' then
  begin
    if DM.c_1_planoc.Active then
      DM.c_1_planoc.Close;
    str_sql := 'Select * from PLANO ';
    str_sql := str_sql + 'WHERE CODREDUZIDO = ';
    str_sql := str_sql + '''' + Edit1.Text + '''';
    DM.c_1_planoc.CommandText := str_sql;
    DM.c_1_planoc.Open;
    if DM.c_1_planoc.IsEmpty then
    begin
      MessageDlg('Codigo não cadastrado.', mtWarning, [mbOK], 0);
      // Abre o form de procura do plando de contas
      exit;
    end
    else
    begin
      var_edit1 := DM.c_1_planocCONTA.AsString;
      rateio_d := DM.c_1_planocRATEIO.AsString;
      var_debito := DM.c_1_planocCONTA.AsString;
      lblContaDeb.Caption := DM.c_1_planocCONTA.AsString;
      lblDebito.Caption := DM.c_1_planocNOME.AsString;
    end;
  end;
end;

procedure TfContabilLanc.BitBtn12Click(Sender: TObject);
begin
  inherited;
  tipo_for := 'LANCACONTABIL';
  fFiltro_forn_plano.BitBtn6.Click;
  fFiltro_forn_plano.ShowModal;
  //fFiltro_forn_plano.BitBtn1.Click;
  Edit1.Text := varconta_cod;
  var_edit1 := varconta_cod;
  lblContaDeb.Caption := varconta;
  lblDebito.Caption := varconta_nome;
  edit2.setfocus;
  varconta_cod := '';
  varconta_nome := '';
end;

procedure TfContabilLanc.Edit2Exit(Sender: TObject);
 Var str_sql1: string;
begin
  inherited;
  var_edit2 := Edit2.Text;
  // Lançamento da Conta Crédito
  if Edit2.Text <> '' then
  begin
    if DM.c_1_planoc.Active then
      DM.c_1_planoc.Close;
    str_sql1 := 'Select * from PLANO ';
    str_sql1 := str_sql1 + 'WHERE CODREDUZIDO = ';
    str_sql1 := str_sql1 + '''' + Edit2.Text + '''';
    DM.c_1_planoc.CommandText := str_sql1;
    DM.c_1_planoc.Open;
    if DM.c_1_planoc.IsEmpty then
    begin
      MessageDlg('Codigo não cadastrado.', mtWarning, [mbOK], 0);
      // Abre o form de procura do plando de contas
      exit;
    end
    else
    begin
      var_edit2 := DM.c_1_planocCONTA.AsString;
      rateio_c := DM.c_1_planocRATEIO.AsString;
      var_credito := DM.c_1_planocCONTA.AsString;
      lblContaCred.Caption := DM.c_1_planocCONTA.AsString;
      lblCredito.Caption := DM.c_1_planocNOME.AsString;
    end;
  end;
end;

procedure TfContabilLanc.BitBtn1Click(Sender: TObject);
begin
  inherited;
  tipo_for := 'LANCACONTABIL';
  fFiltro_forn_plano.BitBtn6.Click;
  fFiltro_forn_plano.ShowModal;
  //fFiltro_forn_plano.BitBtn1.Click;
  Edit2.Text := varconta_cod;
  var_edit2 := varconta_cod;
  lblContaCred.Caption := varconta;
  lblCredito.Caption := varconta_nome;
  edValor.setfocus;
  varconta_cod := '';
  varconta_nome := '';
end;

procedure TfContabilLanc.meDataExit(Sender: TObject);
begin
  inherited;
  var_data := StrToDate(meData.Text);
end;

procedure TfContabilLanc.dxButton2Click(Sender: TObject);
begin
  inherited;
  if DtSrc.State in [dsInsert, dsEdit] then
    btnGravar.Click;
  Cod_orig := primeiro_lanc;
  tipo_origem := 'CONTABIL';
  
  cod_cli_forn := StrToInt(Edit1.Text);
  c_f := 'M'; // M=Movimento Contábil
  data_lanc := StrToDateTime(meData.Text);
  data_lancado := meData.Text;
  fCheques_bol.ShowModal;
end;

procedure TfContabilLanc.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if  (tipo_mov = 'incluir') then
  begin
    btnGravar.Click;
  end;
  // Variáveis usadas para abrir o rateio
  codigo := primeiro_lanc;
  tipo := 'CONTABIL';
  valor_rateio := valor;
  conta_pl := var_debito;

  fRateioPag:=TfRateioPag.Create(Application);
  try
    fRateioPag.ShowModal;
  finally
    fRateioPag.Free;
  end;
end;

procedure TfContabilLanc.DBGrid1CellClick(Column: TColumn);
 var sql_txt : String;
begin
  inherited;
  Edit1.Text := DM.c3_contabilCODREDUZIDO.AsString;
  if sdsedit.active then
    sdsedit.Close;
  sdsedit.params[0].asinteger := cds_gridCODORIGEM.AsInteger;
  sdsedit.params[1].asString := cds_gridTIPOORIGEM.AsString;
  sdsedit.params[2].asDate := cds_gridDATA.AsDateTime;
  sdsedit.Open;
  codigo := sdseditCODORIGEM.AsInteger;
  primeiro_lanc := codigo;
  tipo := 'CONTABIL';
  valor_rateio := valor;
  conta_pl := sdseditCONTA.AsString;
  while not sdsedit.eof do
  begin
    medata.Text := DateToSTr(sdseditDATA.AsDateTime);
    if not sdseditHISTORICO.IsNull then
      edHist.Text := sdseditHISTORICO.AsString;
    if sdseditVALORDEBITO.AsFloat = 0 then
    begin
      edit2.Text := sdseditCODREDUZIDO.AsString;
      edValor.Text := FloatToStr(sdseditVALORCREDITO.asFloat);
      lblContaCred.Caption := sdseditCONTA.AsString;
      lblCredito.Caption := sdseditNOME.AsString;
    end
    else
      edValor.Text := FloatToStr(sdseditVALORCREDITO.asFloat);
    if sdseditVALORCREDITO.AsFloat = 0 then
    begin
      edit1.Text := sdseditCODREDUZIDO.AsString;
      lblContaDeb.Caption := sdseditCONTA.AsString;
      lblDebito.Caption := sdseditNOME.AsString;
    end;
    sdsedit.Next;
  end;
end;

procedure TfContabilLanc.BitBtn2Click(Sender: TObject);
begin
  inherited;
    if dm.cds_parametro.Active then
      dm.cds_parametro.close;
    dm.cds_parametro.Params[0].AsString := 'SALDOCONTABIL';
    dm.cds_parametro.open;
    dm.cds_parametro.edit;
    dm.cds_parametroD1.AsString := '0';
    dm.cds_parametroD2.AsString := '0';
    dm.cds_parametro.ApplyUpdates(0);
    lblCre.Caption := '0';
    lblDeb.Caption := '0';
    lblsaldo.Caption := '0';;
    dm.cds_parametro.Close;
end;

procedure TfContabilLanc.btnProcurarClick(Sender: TObject);
var sql_txt : String;
begin
  inherited;
  fProcContabil:=TfProcContabil.Create(Application);
  try
    fProcContabil.showmodal;
    if cds_grid.Active then
      cds_grid.Close;
    cds_grid.Params[0].AsInteger := StrtoInt(fProcContabil.cdsTIPO_DOC.asString);
    cds_grid.Params[1].AsString := fProcContabil.cdsNUM_ORIGEM.asString;
    cds_grid.open;
  // Atualizando os Edits
  Edit1.Text := DM.c3_contabilCODREDUZIDO.AsString;
  if sdsedit.active then
    sdsedit.Close;
  sdsedit.params[0].asinteger := cds_gridCODORIGEM.AsInteger;
  sdsedit.params[1].asString := cds_gridTIPOORIGEM.AsString;
  sdsedit.params[2].asDate := cds_gridDATA.AsDateTime;
  sdsedit.Open;
  codigo := sdseditCODORIGEM.AsInteger;
  primeiro_lanc := codigo;
  tipo := 'CONTABIL';
  valor_rateio := valor;
  conta_pl := sdseditCONTA.AsString;
  while not sdsedit.eof do
  begin
    medata.Text := DateToSTr(sdseditDATA.AsDateTime);
    if not sdseditHISTORICO.IsNull then
      edHist.Text := sdseditHISTORICO.AsString;
    if sdseditVALORDEBITO.AsFloat = 0 then
    begin
      edit2.Text := sdseditCODREDUZIDO.AsString;
      edValor.Text := FloatToStr(sdseditVALORCREDITO.asFloat);
      lblContaCred.Caption := sdseditCONTA.AsString;
      lblCredito.Caption := sdseditNOME.AsString;
    end
    else
      edValor.Text := FloatToStr(sdseditVALORCREDITO.asFloat);
    if sdseditVALORCREDITO.AsFloat = 0 then
    begin
      edit1.Text := sdseditCODREDUZIDO.AsString;
      lblContaDeb.Caption := sdseditCONTA.AsString;
      lblDebito.Caption := sdseditNOME.AsString;
    end;
    sdsedit.Next;
  end;

  finally
    fProcContabil.Free;
  end;
end;

procedure TfContabilLanc.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (cds_grid.Active) then
  begin
    cds_grid.Close;
    // Peda o número do primeiro lancamento
    cds_grid.Params[0].Clear;
    cds_grid.Params[1].Clear;
    cds_grid.Open;
  end;
  var_tipoOrigem := 'CONTABIL';
  var_usuario := 1;
  var_status := 0;
  tipo_mov := 'incluir';
  Edit1.Clear;
  Edit2.Clear;
  edValor.Clear;
  Edit1.SetFocus;
end;

procedure TfContabilLanc.btnGravarClick(Sender: TObject);
 Var str_sql1, str_sql, valor_str: string;
 vlr_deb, vlr_cre, vlr_saldo: double;
 TD : TTransactionDesc;
 logStVelho, logStNovo: String;
begin
  cod_id := 0;
  var_ccusto := 0;
  if (DBLookupComboBox1.KeyValue > -1) then
    var_ccusto := DBLookupComboBox1.KeyValue;
  valor := StrToFloat(edValor.text);
  if (valor < 0) then
  begin
    MessageDlg('Valor não pode ser negativo.', mtWarning, [mbOK], 0);
    exit;
  end;
  DecimalSeparator := '.';
    valor_str := FloatToStr(valor);  //Format('%-6.2n',[valor]);
  DecimalSeparator := ',';
 { VER O LANCAMENTO em MOV_RATEIO para pegar o GENERATOR .....}
  if (var_data = 0) then
    var_data := StrToDate(meData.Text);
  // Verifica se as contas estão corretas.(se a funçao onexit foi executada)
  if Edit1.Text <> '' then
  if (var_debito <> var_edit1) then
  begin
    if DM.c_1_planoc.Active then
      DM.c_1_planoc.Close;
    str_sql := 'Select * from PLANO ';
    str_sql := str_sql + 'WHERE CODREDUZIDO = ';
    str_sql := str_sql + '''' + Edit1.Text + '''';
    DM.c_1_planoc.CommandText := str_sql;
    DM.c_1_planoc.Open;
    if DM.c_1_planoc.IsEmpty then
    begin
      MessageDlg('Codigo não cadastrado.', mtWarning, [mbOK], 0);
      // Abre o form de procura do plando de contas
      exit;
    end
    else
    begin
      rateio_d := DM.c_1_planocRATEIO.AsString;
      var_debito := DM.c_1_planocCONTA.AsString;
      lblContaDeb.Caption := DM.c_1_planocCONTA.AsString;
      lblDebito.Caption := DM.c_1_planocNOME.AsString;
    end;
  end;
  if Edit2.Text <> '' then
  if (var_credito <> var_edit2) then
  begin
    if DM.c_1_planoc.Active then
      DM.c_1_planoc.Close;
    str_sql1 := 'Select * from PLANO ';
    str_sql1 := str_sql1 + 'WHERE CODREDUZIDO = ';
    str_sql1 := str_sql1 + '''' + Edit2.Text + '''';
    DM.c_1_planoc.CommandText := str_sql1;
    DM.c_1_planoc.Open;
    if DM.c_1_planoc.IsEmpty then
    begin
      MessageDlg('Codigo não cadastrado.', mtWarning, [mbOK], 0);
      // Abre o form de procura do plando de contas
      exit;
    end
    else
    begin
      rateio_c := DM.c_1_planocRATEIO.AsString;
      var_credito := DM.c_1_planocCONTA.AsString;
      lblContaCred.Caption := DM.c_1_planocCONTA.AsString;
      lblCredito.Caption := DM.c_1_planocNOME.AsString;
    end;
  end;
  // Se for Inclusão :
  { ####################################################################}
  if (tipo_mov = 'incluir') then
  begin
    if (rateio_d = 'S') then
    begin
      //Abre a c_genid para pegar o número do CODCONTAB
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_MOV_RATEIO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cod_id := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      cod_cheque := cod_id;
      primeiro_lanc := cod_id;
    end
    else
    begin
      //Abre a c_genid para pegar o número do CODCONTAB
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cod_id := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      cod_cheque := cod_id;
      primeiro_lanc := cod_id;
    end;
    // Verifica se a conta DEBITO usa rateio, se sim insere na MOV_RATEIO
    if (rateio_d = 'S') then
    begin
      var_sqla := 'INSERT INTO MOV_RATEIO (CODMOVIMENTO,CODRATEIO, TIPO ' +
                 ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
                 ', VALOR, CONTADEBITO, QTDE) Values (';
      var_sqla := var_sqla + intToStr(cod_id);
      var_sqla := var_sqla + ',' + intToStr(cod_id);
      var_sqla := var_sqla + ',''' + var_tipoOrigem;
      var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy',var_data);
      var_sqla := var_sqla + ''',' + IntToStr(var_usuario);
      var_sqla := var_sqla + ',' + IntToStr(var_ccusto);
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + IntToStr(var_status);
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + valor_str;
      var_sqla := var_sqla + ',''' + var_debito;
      var_sqla := var_sqla + ''',' + '0';
      var_sqla := var_sqla + ')';
    end
    else //Conta débito não usa rateio, insere em MOVIMENTOCONT
    begin
      var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
             ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
             ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
             ', QTDEDEBITO, QTDEORCADO, FORMA) Values (';
      var_sqla := var_sqla + intToStr(cod_id);
      var_sqla := var_sqla + ',' + intToStr(cod_id);
      var_sqla := var_sqla + ',''' + var_tipoOrigem;
      var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy',var_data);
      var_sqla := var_sqla + ''',' + IntToStr(var_usuario);
      var_sqla := var_sqla + ',' + IntToStr(var_ccusto);
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + IntToStr(var_status);
      var_sqla := var_sqla + ',''' + var_debito;
      var_sqla := var_sqla + ''',' + '0';
      var_sqla := var_sqla + ',' + valor_str;
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + '0';
      if (ComboBox1.Text <> '') then
      begin
         var_sqla := var_sqla + ',' + QuotedStr(utilcont.pegaForma(ComboBox1.Text)) + ')';
      end
      else begin
        var_sqla := var_sqla + ', Null)';
      end;
    end;
    // Verifica se a conta CREDITO usa rateio, se sim insere na MOV_RATEIO
    if (rateio_d = 'S') then
    begin
      var_sqlb := 'INSERT INTO MOV_RATEIO (CODMOVIMENTO,CODRATEIO, TIPO ' +
                 ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
                 ', VALOR, CONTADEBITO, QTDE) Values (';
      var_sqlb := var_sqlb + intToStr(cod_id);
      var_sqlb := var_sqlb + ',' + intToStr(cod_id + 1);
      var_sqlb := var_sqlb + ',''' + var_tipoOrigem;
      var_sqlb := var_sqlb + ''',''' + formatdatetime('mm/dd/yyyy',var_data);
      var_sqlb := var_sqlb + ''',' + IntToStr(var_usuario);
      var_sqlb := var_sqlb + ',' + IntToStr(var_ccusto);
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ',' + IntToStr(var_status);
      var_sqlb := var_sqlb + ',''' + var_credito;
      var_sqlb := var_sqlb + ''',' + valor_str;
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ')';
    end
    else //Conta crédito não usa rateio,  insere em MOVIMENTOCONT
    begin
      var_sqlb := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
             ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
             ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
             ', QTDEDEBITO, QTDEORCADO, FORMA) Values (';
      var_sqlb := var_sqlb + intToStr(cod_id + 1);
      var_sqlb := var_sqlb + ',' + intToStr(cod_id);
      var_sqlb := var_sqlb + ',''' + var_tipoOrigem;
      var_sqlb := var_sqlb + ''',''' + formatdatetime('mm/dd/yyyy',var_data);
      var_sqlb := var_sqlb + ''',' + IntToStr(var_usuario);
      var_sqlb := var_sqlb + ',' + IntToStr(var_ccusto);
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ',' + IntToStr(var_status);
      var_sqlb := var_sqlb + ',''' + var_credito;
      var_sqlb := var_sqlb + ''',' + valor_str;
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ',' + '0';
      var_sqlb := var_sqlb + ',' + '0';
      if (ComboBox1.Text <> '') then
      begin
         var_sqlb := var_sqlb + ',' + QuotedStr(utilcont.pegaForma(ComboBox1.Text)) + ')';
      end
      else begin
        var_sqlb := var_sqlb + ', Null)';
      end;
    end;
  end;
  { fim se for INCLUSÃO }

  logStVelho :=  '';

  logStNovo :=  'V:' + copy(edit1.Text + '-' + edit2.Text + ' $' + edValor.Text,0,20) + '-';
  logStNovo := logStNovo + '-DT:' +  FormatDateTime('dd/mm/yyyy', var_data);

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  Try
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    dm.sqlsisAdimin.ExecuteDirect(var_sqlb);
    dm.gravaLog(Now, dm.varLogado, 'LANCAMENTO_CONTABIL', MICRO, logStVelho, logStNovo, IntToStr(cod_id), 'INSERIDO');
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

  { ####################################################################}
  try

    tipo_mov := 'gravado';
    if (rateio_d = 'S') then
    begin
      //Abre a c_genid para pegar o número do CODCONTAB
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_MOV_RATEIO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cod_id := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      cod_cheque := cod_id;

      //Abre o form Rateio
      if  (tipo_mov = 'incluir') then
      begin
        btnGravar.Click;
      end;
      // Variáveis usadas para abrir o rateio
      codigo := primeiro_lanc;
      tipo := 'CONTABIL';
      valor_rateio := valor;
      conta_pl := var_debito;

      fRateioPag:=TfRateioPag.Create(Application);
      try
        fRateioPag.ShowModal;
      finally
        fRateioPag.Free;
      end;

      { ***  Quando tem rateio, insere no MovimentoCont por aqui }
      var_sqlb := 'execute procedure lanca_cont_rateio (' ;
      var_sqlb := var_sqlb + '0 ';
      var_sqlb := var_sqlb + ',' + intToStr(primeiro_lanc);
      var_sqlb := var_sqlb + ',''' + formatdatetime('mm/dd/yyyy',var_data);
      // Usuário
      var_sqlb := var_sqlb + ''',1,';
      var_sqlb := var_sqlb + '''S'')';
      dm.sqlsisAdimin.ExecuteDirect(var_sqlb);
    end;
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    if (rateio_d <> 'S') then
    begin
      //Abre a c_genid para pegar o número do CODCONTAB
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cod_id := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      cod_cheque := cod_id;
    end;
    DecimalSeparator := '.';
    if dm.cds_parametro.Active then
      dm.cds_parametro.close;
    dm.cds_parametro.Params[0].AsString := 'SALDOCONTABIL';
    dm.cds_parametro.open;
    dm.cds_parametro.edit;
    vlr_deb := StrToFloat(dm.cds_parametroD1.AsString);
    vlr_cre := StrToFloat(dm.cds_parametroD2.AsString);
    vlr_deb := ( vlr_deb + valor);
    vlr_cre := ( vlr_cre + valor);
    vlr_saldo := (vlr_deb - vlr_cre);
    dm.cds_parametroD1.AsString := FloatToStr( vlr_deb);
    dm.cds_parametroD2.AsString := FloatToStr( vlr_cre);
    DecimalSeparator := ',';
    dm.cds_parametro.ApplyUpdates(0);
    lblsaldo.Caption := Format('%-6.2n',[vlr_saldo]);
    lblCre.Caption := Format('%-6.2n',[vlr_cre]);
    lblDeb.Caption := Format('%-6.2n',[vlr_deb]);
    dm.cds_parametro.Close;
  except
    DecimalSeparator := ',';
    MessageDlg('Não foi possível gravar o registro !' + #10#13 +
    '(Caixa pode estar fechado nesta data) ', mtError, [mbOK], 0);
  end;

//  inherited;
  if (cds_grid.Active) then
    cds_grid.Close;
  // Peda o número do primeiro lancamento
  cds_grid.Params[0].AsInteger := primeiro_lanc;
  cds_grid.Params[1].AsString := var_tipoOrigem;
  cds_grid.Open;
  dm.c3_contabil.Cancel;
end;

procedure TfContabilLanc.FormCreate(Sender: TObject);
var i, j : integer;
begin
  utilcont := Tutils.Create;
  // Popula Status
  j := utilcont.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcont.Forma.Strings[i]);
  end;
end;

procedure TfContabilLanc.FormDestroy(Sender: TObject);
begin
  inherited;
  utilcont.destroy;
end;

end.
