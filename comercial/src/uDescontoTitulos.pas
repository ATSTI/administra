unit uDescontoTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, JvExStdCtrls, JvEdit, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  DBCtrls, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, FMTBcd, SqlExpr,
  DBClient, Provider, DBXpress;

type
  TfDescontoTitulos = class(TfPai_new)
    ds_conta: TDataSource;
    edPreco: TJvCalcEdit;
    Label2: TLabel;
    edJuro: TJvCalcEdit;
    Label3: TLabel;
    edIOF: TJvCalcEdit;
    Label4: TLabel;
    edLiquido: TJvCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    Dta: TJvDatePickerEdit;
    Label7: TLabel;
    cbConta: TComboBox;
    sqlFornecedor: TSQLQuery;
    sqlRec: TSQLQuery;
    dspRec: TDataSetProvider;
    cdsRec: TClientDataSet;
    cdsRecTITULO: TStringField;
    cdsRecVIA: TStringField;
    cdsRecCODALMOXARIFADO: TSmallintField;
    lblBaixaTit: TLabel;
    lblTransfereConta: TLabel;
    lblDespJuros: TLabel;
    lblDespIOF: TLabel;
    cdsRecVALOR_RESTO: TFloatField;
    cdsRecCODCLIENTE: TIntegerField;
    sdsConta: TSQLDataSet;
    sdsContaCODIGO: TIntegerField;
    sdsContaNOME: TStringField;
    sdsContaRATEIO: TStringField;
    sdsContaCODREDUZIDO: TStringField;
    cdsRecCODRECEBIMENTO: TIntegerField;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbContaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edJuroEnter(Sender: TObject);
    procedure edIOFEnter(Sender: TObject);
    procedure edPrecoEnter(Sender: TObject);
  private
    baixado: String;
    codRec : Integer;
    contaTitDesc : String;
    contaBanco   : String;
    tituloDescont : String;
    hist          : String;
    contaBancoCod : Integer;
    contaTitCod   : Integer;
    contaDespIOF  : Integer;
    contaDespJuro : Integer;
    codFornec     : Integer;
    procedure baixaTituloDescontado(vlrPago: Double);
    procedure transfereTituloDescParaContaBanco(valor: Double);
    procedure lancaDespesaJuros;
    procedure lancaDespesaIOF;
    { Private declarations }
  public
    usuarioSis: Integer;
    cCusto    : Integer;
    codCliente    : Integer;
    { Public declarations }
  end;

var
  fDescontoTitulos: TfDescontoTitulos;

implementation

uses UDm, uReceberCls, uPagarCls, ufcr;

{$R *.dfm}

procedure TfDescontoTitulos.baixaTituloDescontado(vlrPago: Double);
var rec : TReceberCls;
begin
  Try
    rec := TReceberCls.Create;
    rec.baixaTitulo(vlrPago, 0, 0, 0, 0, dta.Date, dta.date, dta.Date, '4',
    '', contaTitCod , codCliente, '7-', usuarioSis, 'DESCONTO');
    rec.gravaHistorico(codRec, tituloDescont, contaTitCod, usuarioSis, 'DESCONTO',
    'DESCONTO-' + cbConta.Text + '-' + dta.Text );
  Finally
    rec.Free;
  end;
end;

procedure TfDescontoTitulos.btnIncluirClick(Sender: TObject);
 var
  i, num : Integer;
  str_sql : String;
  TD      : TTransactionDesc;
begin
  if (baixado = 'SIM') then
  begin
    MessageDlg('Título já baixado.', mtWarning, [mbOK], 0);
    exit;
  end;
  edLiquido.Value := edPreco.Value - edJuro.Value - edIOF.Value;
  if (cbConta.ItemIndex = -1) then
  begin
    MessageDlg('Escolha o caixa a ser lançado.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if (sqlFornecedor.Active) then
    sqlFornecedor.Close;
  sqlFornecedor.ParamByName('CONTA').AsString := contaBanco;
  sqlFornecedor.Open;
  if (sqlFornecedor.IsEmpty) then
  begin
    MessageDlg('Não existe nenhum fornecedor cadastrado com esta conta de Caixa.', mtWarning, [mbOK], 0);
    Exit;
  end;
  codFornec := sqlFornecedor.Fields[0].AsInteger;

  baixado := 'SIM';
  for i:=1 to length(nrec) do
  begin
    str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
    str_sql := str_sql + ', USERID = ' + IntToStr(usuarioSis);
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

  // Fazer um While nos titulos descontados e passar o numero do titulo e via para a variavel tituloDescont
  if (cdsRec.Active) then
    cdsRec.Close;
  cdsRec.Params[0].AsInteger := usuarioSis;
  cdsRec.Open;
  hist := '';
  if (not cdsRec.IsEmpty) then
  begin
    While not cdsRec.Eof do
    begin
      tituloDescont := cdsRecTITULO.AsString; // + '-' + cdsRecVIA.AsString;
      hist          := hist + ' / ' + tituloDescont;
      cCusto        := cdsRecCODALMOXARIFADO.AsInteger;
      codCliente    := cdsRecCODCLIENTE.AsInteger;
      codRec        := cdsRecCODRECEBIMENTO.AsInteger;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        baixaTituloDescontado(cdsRecVALOR_RESTO.AsFloat);
        transfereTituloDescParaContaBanco(cdsRecVALOR_RESTO.AsFloat);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          exit;
        end;
      end;
      cdsRec.Next;
    end;
    lancaDespesaJuros;
    lancaDespesaIOF;
    MessageDlg('Título Descontado com sucesso.', mtInformation, [mbOK], 0);
    str_sql := 'UPDATE RECEBIMENTO SET DP = NULL ';
    str_sql := str_sql + ', USERID = NULL ';
    str_sql := str_sql + ' WHERE USERID = ' + IntToStr(usuarioSis);
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
end;

procedure TfDescontoTitulos.lancaDespesaIOF;
var despesa : TPagarCls;
  codPag :integer;
begin
  Try
    despesa := TPagarCls.Create;
    despesa.CodFornecedor := codFornec;
    despesa.CodCCusto     := cCusto;
    despesa.CodUsuario    := usuarioSis;
    despesa.Caixa         := contaBancoCod;
    despesa.NParcela      := 1;
    despesa.Via           := 1;
    despesa.DtEmissao     := dta.Date;
    despesa.DtVcto        := dta.Date;
    despesa.dtPag         := dta.Date;
    despesa.DtBaixa       := dta.Date;
    despesa.DtConsolida   := dta.Date;
    despesa.Obs           := hist;

    despesa.Valor         := edIOF.Value;
    despesa.valorPag      := 0;
    despesa.Status        := '5-';
    despesa.Titulo        := tituloDescont;
    despesa.ContaCredito  := contaDespIOF;
    despesa.CodConciliaco := '';

    codPag := despesa.geraTitulo(0, 0);
    despesa.marcarTitulo(codPag, usuarioSis);
    despesa.baixaTitulo(edIOF.Value, 0, 0, 0, 0, dta.Date,
    dta.Date, dta.Date, '1', tituloDescont, contaBancoCod, codFornec,
    '7-', usuarioSis);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE PAGAMENTO SET DP = NULL ' +
    ', USERID = NULL ' +
    ' WHERE USERID = ' + IntToStr(usuarioSis));
  Finally
    despesa.Free;
  end;
end;

procedure TfDescontoTitulos.lancaDespesaJuros;
var despesa : TPagarCls;
  codPag : Integer;
begin
  Try
    despesa := TPagarCls.Create;
    despesa.CodFornecedor := codFornec;
    despesa.CodCCusto     := cCusto;
    despesa.CodUsuario    := usuarioSis;
    despesa.Caixa         := contaBancoCod;
    despesa.NParcela      := 1;
    despesa.Via           := 1;
    despesa.DtEmissao     := dta.Date;
    despesa.DtVcto        := dta.Date;
    despesa.dtPag         := dta.Date;
    despesa.DtBaixa       := dta.Date;
    despesa.DtConsolida   := dta.Date;
    despesa.Obs           := hist;

    despesa.Valor         := edJuro.Value;
    despesa.valorPag      := 0;
    despesa.Status        := '5-';
    despesa.Titulo        := tituloDescont;
    despesa.ContaCredito  := contaDespJuro;
    despesa.CodConciliaco := '';

    codPag := despesa.geraTitulo(0, 0);
    despesa.marcarTitulo(codPag, usuarioSis);
    despesa.baixaTitulo(edJuro.Value, 0, 0, 0, 0, dta.Date,
    dta.Date, dta.Date, '1', tituloDescont, contaBancoCod, codFornec,
    '7-', usuarioSis);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE PAGAMENTO SET DP = NULL ' +
    ', USERID = NULL ' +
    ' WHERE USERID = ' + IntToStr(usuarioSis));
  Finally
    despesa.Free;
  end;
end;

procedure TfDescontoTitulos.transfereTituloDescParaContaBanco(valor: Double);
var cod_id, codOrigem: Integer;
  sql: String;
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cod_id := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;
  codOrigem := cod_id;
  sql := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
         ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
         ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
         ', QTDEDEBITO, QTDEORCADO) Values (';
  sql := sql + intToStr(cod_id);
  sql := sql + ', ' + intToStr(cod_id);
  sql := sql + ', ' + QuotedStr('CONTABIL');
  sql := sql + ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', Dta.Date));
  sql := sql + ', ' + IntToStr(usuarioSis);
  sql := sql + ', ' + IntToStr(cCusto);
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ', ' + QuotedStr(contaBanco);
  sql := sql + ', 0';
  DecimalSeparator := '.';
  sql := sql + ',' + FloatToStr(valor);
  DecimalSeparator := '.';
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ')';

  dm.sqlsisAdimin.ExecuteDirect(sql);

  sql := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
              ') Values (';
  sql := sql + intToStr(cod_id);
  sql := sql + ', ' + QuotedStr('Desc. Título: ' + tituloDescont);
  sql := sql + ')';
  dm.sqlsisAdimin.ExecuteDirect(sql);


  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cod_id := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  sql := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
         ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
         ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
         ', QTDEDEBITO, QTDEORCADO) Values (';
  sql := sql + intToStr(cod_id);
  sql := sql + ', ' + intToStr(codOrigem);
  sql := sql + ', ' + QuotedStr('CONTABIL');
  sql := sql + ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', Dta.Date));
  sql := sql + ', ' + IntToStr(usuarioSis);
  sql := sql + ', ' + IntToStr(cCusto);
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ', ' + QuotedStr(contaTitDesc);
  DecimalSeparator := '.';
  sql := sql + ',' + FloatToStr(valor);
  DecimalSeparator := '.';
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ', 0';
  sql := sql + ')';

  dm.sqlsisAdimin.ExecuteDirect(sql);

  sql := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
              ') Values (';
  sql := sql + intToStr(cod_id);
  sql := sql + ', ' + QuotedStr('Desc. Título: ' + tituloDescont);
  sql := sql + ')';
  dm.sqlsisAdimin.ExecuteDirect(sql);
  
end;

procedure TfDescontoTitulos.FormShow(Sender: TObject);
begin
  baixado := 'NAO';
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'TITULODESCONTADO';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  begin
    MessageDlg('Não existe uma conta cadastrada em parametros, para TITULO DESCONTADO. ' + #10#13+
      '(Param: TITULODESCONTADO :DADOS=Conta Desconto, D1=Conta IOF, D2=Conta Juro);', mtWarning, [mbOK], 0);
    Exit;
  end;
  contaTitDesc := dm.cds_parametroDADOS.asString;
  contaDespIOF := StrToInt(dm.cds_parametroD1.asString);
  contaDespJuro := StrToInt(dm.cds_parametroD2.asString);

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
  cbConta.Items.Clear;
  dm.cds_7_contas.First;
  while (not dm.cds_7_contas.Eof) do
  begin
    cbConta.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.Next;
  end;

  if (sdsConta.Active) then
    sdsConta.Close;
  sdsConta.ParamByName('pConta').AsString := contaTitDesc;
  sdsConta.Open;
  contaTitCod := sdsContaCODIGO.AsInteger;

end;

procedure TfDescontoTitulos.cbContaChange(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive]);
  contaBancoCod := dm.cds_7_contasCODIGO.AsInteger;
  contaBanco    := dm.cds_7_contasCONTA.AsString;
end;

procedure TfDescontoTitulos.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfDescontoTitulos.edJuroEnter(Sender: TObject);
begin
  inherited;
  edLiquido.Value := edPreco.Value - edJuro.Value - edIOF.Value;
end;

procedure TfDescontoTitulos.edIOFEnter(Sender: TObject);
begin
  inherited;
  edLiquido.Value := edPreco.Value - edJuro.Value - edIOF.Value;
end;

procedure TfDescontoTitulos.edPrecoEnter(Sender: TObject);
begin
  inherited;
  edLiquido.Value := edPreco.Value - edJuro.Value - edIOF.Value;
end;

end.
