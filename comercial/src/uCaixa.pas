unit uCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvToolEdit, Mask, JvExMask,
  JvBaseEdits, ExtCtrls, MMJPanel, FMTBcd, Provider, DB, DBClient, SqlExpr,
  DBCtrls, JvExDBGrids, JvDBGrid;

type
  TfCaixa = class(TForm)
    MMJPanel2: TMMJPanel;
    Panel1: TPanel;
    edValor: TJvCalcEdit;
    edData: TJvDateEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnSair: TBitBtn;
    btnAbrir: TBitBtn;
    btnFechar: TBitBtn;
    btnSaida: TBitBtn;
    btnEntrada: TBitBtn;
    edhist: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    sCaixa: TSQLDataSet;
    dCaixa: TDataSetProvider;
    cCaixa: TClientDataSet;
    cCaixaDTAPAGTO: TDateField;
    cCaixaORDEM: TSmallintField;
    cCaixaDESCRICAO: TStringField;
    cCaixaVALORC: TFloatField;
    cCaixaVALORD: TFloatField;
    cCaixaVALOR: TFloatField;
    cCaixaCONTACONTABIL: TStringField;
    cCaixaCAIXA: TStringField;
    cCaixaCODCONTA: TStringField;
    cCaixaFORMA: TStringField;
    cCaixaN_DOC: TStringField;
    cCaixaORDENA: TSmallintField;
    sCaixaDTAPAGTO: TDateField;
    sCaixaORDEM: TSmallintField;
    sCaixaDESCRICAO: TStringField;
    sCaixaVALORC: TFloatField;
    sCaixaVALORD: TFloatField;
    sCaixaVALOR: TFloatField;
    sCaixaCONTACONTABIL: TStringField;
    sCaixaCAIXA: TStringField;
    sCaixaCODCONTA: TStringField;
    sCaixaFORMA: TStringField;
    sCaixaN_DOC: TStringField;
    sCaixaORDENA: TSmallintField;
    dsrcaixa: TDataSource;
    JvDBGrid1: TJvDBGrid;
    Consulta: TBitBtn;
    eddata3: TJvDateEdit;
    Label5: TLabel;
    eddata2: TJvDateEdit;
    Label4: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnSaidaClick(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cds_gridCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure AbrirCaixa;
    procedure FecharCaixa;
    procedure saidaCaixa;
    procedure entradaCaixa;
  public
    { Public declarations }
  end;

var
  fCaixa: TfCaixa;
  vConta : integer;
implementation

uses UDm, uRateioPag, sCtrlResize, uAtsAdmin, uTerminal_Delivery;

{$R *.dfm}

procedure TfCaixa.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfCaixa.AbrirCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
   //str_sql1, str_sql, valor_str: string;
   //vlr_deb, vlr_cre, vlr_saldo: double;
begin

     var_usuario := usulog;

    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0001'); //CONTA CAIXA INTERNO
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0002'); //CONTA ABERTURA DE CAIXA
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  cCaixa.Params[2].AsInteger := 33;
  cCaixa.Open;
  dm.varStatusCaixa := 1;
end;

procedure TfCaixa.entradaCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
     var_usuario := usulog;
    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0001'); //CONTA CAIXA INTERNO
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0004'); //Entrada caixa
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  cCaixa.Params[2].AsInteger := 33;
  cCaixa.Open;
end;

procedure TfCaixa.FecharCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
     var_usuario := usulog;

    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0003'); //CONTA CAIXA INTERNO
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'FECHAMENTO DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0001'); //CONTA CAIXA INTERNO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value));
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'FECHAMENTO DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Update STATUS MOVIMENTOCONT *** }
    var_sqla := 'UPDATE MOVIMENTOCONT SET STATUS = 1 where STATUS is null';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  cCaixa.Params[2].AsInteger := 33;
  cCaixa.Open;

end;

procedure TfCaixa.saidaCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
     var_usuario := usulog;
    //  Conta Débito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0004'); //CONTA SANGRIA
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta crédito
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(cod_id); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', edData.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr('1.1.1.01.0001'); //CAIXA INTERNO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(edValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Histórico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + edHist.Text;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(edData.Text);
  cCaixa.Params[1].AsDate := StrToDate(edData.Text);
  cCaixa.Params[2].AsInteger := 33;
  cCaixa.Open;

end;

procedure TfCaixa.btnAbrirClick(Sender: TObject);
begin
  if (dm.varStatusCaixa = 0) Then
    MessageDlg('Caixa Precisa ser Fechado', mtWarning, [mbOK], 0)
  else
    AbrirCaixa;
end;

procedure TfCaixa.btnSaidaClick(Sender: TObject);
begin
  if (dm.varStatusCaixa = 0) Then
  begin
    MessageDlg('Caixa Precisa ser Fechado', mtWarning, [mbOK], 0);
  end
  else
  begin
    if (edValor.Value = 0) then
    begin
      MessageDlg('Informe o Valor da Sangria', mtWarning, [mbOK], 0);
      exit;
    end;

    if (edHist.Text = '') then
    begin
      MessageDlg('Informe o Histórico da Sangria', mtWarning, [mbOK], 0);
      exit;
    end;
    saidaCaixa;
  end;
end;

procedure TfCaixa.btnEntradaClick(Sender: TObject);
begin
  if (dm.varStatusCaixa = 0) Then
  begin
    MessageDlg('Caixa Precisa ser Fechado', mtWarning, [mbOK], 0);
  end
  else
  begin
    if (edValor.Value = 0) then
    begin
      MessageDlg('Informe o Valor da Entrada', mtWarning, [mbOK], 0);
      exit;
    end;

    if (edHist.Text = '') then
    begin
      MessageDlg('Informe o Histórico da Entrada', mtWarning, [mbOK], 0);
      exit;
    end;
    entradaCaixa;
  end;
end;

procedure TfCaixa.btnFecharClick(Sender: TObject);
begin
  FecharCaixa;
  if (dm.varStatusCaixa = 0) then
    dm.varStatusCaixa := 2; // Caixa Precisa ser Aberto
end;

procedure TfCaixa.cds_gridCalcFields(DataSet: TDataSet);
begin
  //  cds_gridtotal.AsFloat := cds_gridVALORENTRADA.AsFloat - cds_gridVALORSAIDA.AsFloat;
end;

procedure TfCaixa.FormShow(Sender: TObject);
begin
  eddata.Text := FormatDateTime('dd/mm/yyyy', dm.varDataCaixa);
  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := dm.varDataCaixa;
  cCaixa.Params[1].AsDate := dm.varDataCaixa;
  cCaixa.Params[2].AsInteger := 33;
  cCaixa.Open;
end;

procedure TfCaixa.ConsultaClick(Sender: TObject);
begin
  if (cCaixa.Active) then
    cCaixa.Close;
  // Peda o número do primeiro lancamento
  cCaixa.Params[0].AsDate := StrToDate(eddata2.Text);
  cCaixa.Params[1].AsDate := StrToDate(eddata3.Text);
  cCaixa.Params[2].AsInteger := 33;
  cCaixa.Open;
end;

procedure TfCaixa.FormCreate(Sender: TObject);
begin
//  sCtrlResize.CtrlResize(TForm(fCaixa));
end;

procedure TfCaixa.JvDBGrid1TitleClick(Column: TColumn);
begin
  cCaixa.IndexFieldNames := Column.FieldName;
end;

end.
