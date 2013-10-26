unit uFiscalCls;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes, DBCtrls,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls, rpcompobase, rpvclreport,
    JvTransparentButton;

Type
  TFiscalCls = class(TObject)

  private
     // Entrar com variaveis
     sqlConsulta : TSqlQuery;
     v_SqlTexto, var_sqla, v_NomePerfil : string;
     v_Status, v_natureza : Integer;
    //procedure ImprimirComandaDLL;
    //procedure ImprimirComandaLPT;
    //procedure ImprimirDeliveryDLL;
    //procedure ImprimirDeliveryLPT;
    //procedure ImprimirPreviaDLL;
    //procedure ImprimirPreviaLPT;
    //procedure ImprimirReciboDLL;
    //procedure ImprimirReciboLPT;
    //procedure ImprimirSetor1;
    //procedure ImprimirSetor2;
     //Imprimir para porta Serial ou em Arquivo
     //procedure ImprimirPreviaLPT;
     //procedure ImprimirReciboLPT;
     //procedure ImprimirComandaLPT;
     //procedure ImprimirDeliveryLPT;
     //procedure ImprimirSetor1;
     //procedure ImprimirSetor2;
     //Imprimir porta USB usando a DLL da Bematech
     //procedure ImprimirPreviaDLL;
     //procedure ImprimirReciboDLL;
     //procedure ImprimirComandaDLL;
     //procedure ImprimirDeliveryDLL;
  protected

  public
    v_DataCaixa : TDateTime;
    v_CodMovimento : Integer;
    v_CodCliente, v_Cod_Caixa, v_idcaixa : Integer;
    var_TipoCliente  : Integer;
    v_NomeCaixa : string;
    cod_id : Integer; // recebe Generator da MOVIMENTOCONT....
    function NomeComputador: string;
    function VerificaCaixaAberto(): Boolean;
    function BuscaPerfilUsuario(nome : String): string;
    function PegaStatusdoMovimento(CodCliente : Integer; DataCaixa : TDateTime) : string;
    function PegaCodigoCliente(codcli : string; tipoCliente : Integer) : Integer;
    function InserirMovCaixa(): Boolean;
    function ExcluirMovCaixa(): Boolean;
    function SangriadeCaixa(codcaixa : Integer; codusuario : Integer; codcustoCD : Integer; codcustoCC : Integer; cdebito :string; ccredito : string; valorSangria : Double; historico : string): Double;
    function DebitarCaixa(codcaixa : Integer; codusuario : Integer; codcustoCD : Integer; codcustoCC : Integer; cdebito :string; ccredito : string; valorSangria : Double; historico : string): Double;
    // function ColocaNomeEmBotoes(Form: TForm; regiao : Integer; status : Integer) : String;
    constructor Create;
    Destructor  Destroy; Override;
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

implementation

uses UDm;

    // Funções para uso da DLL Bematech Impressoras não Fiscal...
    function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
    function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';
    function FechaPorta: integer	;  stdcall; far; external 'Mp2032.dll';
    function BematechTX(BufTrans:string):integer; stdcall; far; external 'Mp2032.dll';
    function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';
    function ComandoTX (BufTrans:string;TamBufTrans:integer):integer; stdcall; far; external 'Mp2032.dll';
    function Status_Porta:integer; stdcall; far; external 'Mp2032.dll';
    function AutenticaDoc(BufTras:string;Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function Le_Status:integer; stdcall; far; external 'Mp2032.dll';
    function Le_Status_Gaveta:integer; stdcall; far; external 'Mp2032.dll';
    function DocumentInserted:integer; stdcall; far; external 'Mp2032.dll';
    function ConfiguraTamanhoExtrato(NumeroLinhas:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function HabilitaExtratoLongo(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function HabilitaEsperaImpressao(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function EsperaImpressao:integer; stdcall; far; external 'Mp2032.dll';
    function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
    function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
    function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
    function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';
    function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
    //===========================================================================

{ TFiscalCls }

function TFiscalCls.BuscaPerfilUsuario(nome: String): string;
var v_codPerfil : Integer;
begin
  // Primeiro busco o codigo do perfil do usuario conectado
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    // PEGO O PERFIL DO USUARIO
    v_SqlTexto := 'SELECT A.UCPROFILE FROM UCTABUSERS a WHERE A.UCTYPEREC = ' + QuotedStr('U');
    v_SqlTexto := v_SqlTexto + ' AND A.UCUSERNAME = ' + QuotedStr(nome);
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    v_codPerfil := sqlConsulta.Fields[0].AsInteger;
  finally
    sqlConsulta.Free;
  end;
  // Agora pego a descrição do perfil do usuario
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    // PEGO O PERFIL DO USUARIO
    v_SqlTexto := 'SELECT A.UCUSERNAME FROM UCTABUSERS a WHERE A.UCIDUSER = ' + IntToStr(v_codPerfil);
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    Result := sqlConsulta.Fields[0].AsString;
  finally
    sqlConsulta.Free;
  end;
end;

constructor TFiscalCls.Create;
begin
  // teste
end;

function TFiscalCls.DebitarCaixa(codcaixa, codusuario, codcustoCD,
  codcustoCC: Integer; cdebito, ccredito: string; valorSangria: Double;
  historico: string): Double;
begin
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    // primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    //  Inserindo Conta Débito
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(codcaixa); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy',v_DataCaixa); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(codusuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(codcustoCD); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr(cdebito); //  Debito CAIXA INTERNO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(valorSangria)); //Valor Debito
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
    var_sqla := var_sqla + ',''' + historico;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
end;

destructor TFiscalCls.Destroy;
begin
  //teste
  inherited;
end;

function TFiscalCls.ExcluirMovCaixa: Boolean;
begin
  // Excluir Movimento do caixa;
end;

function TFiscalCls.InserirMovCaixa: Boolean;
begin
  // Incluir Movimento do caixa;
end;

function TFiscalCls.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

function TFiscalCls.PegaCodigoCliente(codcli: string; tipoCliente : Integer): Integer;
begin
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    v_SqlTexto := 'select CODCLIENTE  from CLIENTES where COD_CLI = ' + QuotedStr(codcli);
    v_SqlTexto := v_SqlTexto + ' and REGIAO = ' + IntToStr(tipoCliente); // 0 = Cliente 1 = Comanda/Mesa 2 = COlaboradores
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    if (sqlConsulta.IsEmpty) then
       Result := 0
    else
       Result := sqlConsulta.Fields[0].AsInteger;
  finally
    sqlConsulta.Free;
  end;
end;

function TFiscalCls.PegaStatusdoMovimento(CodCliente: Integer; DataCaixa: TDateTime): string;
begin
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    v_SqlTexto := 'select BLOQUEADO, CODCLIENTE from CLIENTES where CODCLIENTE = ' + IntToStr(CodCliente);
    v_SqlTexto := v_SqlTexto + ' and REGIAO = ' + IntToStr(var_TipoCliente); // 0 = Cliente 1 = Comanda/Mesa 2 = COlaboradores
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    if (sqlConsulta.IsEmpty) then
    begin
       Result := 'NAOLOCALIZADA';
    end
    else
    begin
      if (sqlConsulta.Fields[0].AsString = 'S') then
        Result := 'BLOQUEADO'
      else
        Result := '';
      v_CodCliente := sqlConsulta.Fields[1].AsInteger;
    end;
  finally
    sqlConsulta.Free;
  end;

  if (Result = '') then
  begin
    try
      sqlConsulta :=  TSqlQuery.Create(nil);
      sqlConsulta.SQLConnection := dm.sqlsisAdimin;
      v_SqlTexto := 'select CODNATUREZA, STATUS, CODMOVIMENTO from MOVIMENTO where CODCLIENTE = ' + IntToStr(CodCliente);
      v_SqlTexto := v_SqlTexto + ' and DATAMOVIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DataCaixa));
      sqlConsulta.SQL.Add(v_SqlTexto);
      sqlConsulta.Open;
      if (sqlConsulta.IsEmpty) then // se não Aberta verifico o perfil de abertura
      begin
          if Dm.cds_parametro.Active then
             dm.cds_parametro.Close;
          dm.cds_parametro.Params[0].AsString := 'PERFILSEMAUTORIZACAO';
          dm.cds_parametro.Open;
          v_NomePerfil :=  BuscaPerfilUsuario(nome_user);
          if (dm.cds_parametroD1.AsString = v_NomePerfil) then
            Result := 'SEMAUTORIZACAO'
          else
            Result := 'ABRIRCOMANDA';
          sqlConsulta :=  TSqlQuery.Create(nil);
          sqlConsulta.SQLConnection := dm.sqlsisAdimin;
      end
      else
      begin
        v_natureza := sqlConsulta.Fields[0].AsInteger;
        v_Status   := sqlConsulta.Fields[1].AsInteger;
        v_CodMovimento   := sqlConsulta.Fields[2].AsInteger;
        if ((v_natureza = 3) and (v_Status = 0)) then
           Result := 'FINALIZADA';
        if ((v_natureza = 13) and (v_Status = 0)) then
           Result := 'ABERTA';
        if ((v_natureza = 13) and (v_Status = 2)) then
           Result := 'CANCELADA';
        if ((v_natureza = 13) and (v_Status = 3)) then
           Result := 'RETORNO';
      end;
    finally
      sqlConsulta.Free;
    end;
  end;
end;

function TFiscalCls.SangriadeCaixa(codcaixa : Integer; codusuario : Integer;
codcustoCD : Integer; codcustoCC : Integer; cdebito :string; ccredito : string;
valorSangria : Double; historico : string) : Double;
  var TD : TTransactionDesc;
    codOrig: integer;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    codOrig := cod_id;
    // primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    //  Inserindo Conta Debito
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(codOrig); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy',v_DataCaixa); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(codusuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(codcustoCD); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr(cdebito); //  Debito CAIXA INTERNO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + FloatToStr(valorSangria); //Valor Debito
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Historico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + historico;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Abre a c_genid para pegar o número do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    // Inclui Conta crédito
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(codOrig); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', v_DataCaixa); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(codusuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(codcustoCC); //CODCUSTO
    var_sqla := var_sqla + ',' + QuotedStr(ccredito); // CREDITO CAIXA SANGRIA
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + FloatToStr(valorSangria); //Valor Credito
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
    var_sqla := var_sqla + ',''' + historico;
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    dm.sqlsisAdimin.Commit(TD);
    result := 1;
  except
    on E : Exception do
    begin
      result := 0;
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

function TFiscalCls.VerificaCaixaAberto(): Boolean;
begin
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PERFILSEMAUTORIZACAO';
  dm.cds_parametro.Open;
  v_NomePerfil :=  BuscaPerfilUsuario(nome_user);
  try
    sqlConsulta :=  TSqlQuery.Create(nil);
    sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    if (dm.cds_parametroD1.AsString <> v_NomePerfil) then
    begin
      v_SqlTexto := 'Select DATAABERTURA, CODCAIXA, NOMECAIXA, IDCAIXACONTROLE from CAIXA_CONTROLE where MAQUINA = ' + QuotedStr(NomeComputador);
      v_SqlTexto := v_SqlTexto + ' and SITUACAO = ' + QuotedStr('A');
    end
    else
    begin
      v_SqlTexto := 'Select DATAABERTURA, CODCAIXA, NOMECAIXA, IDCAIXACONTROLE from CAIXA_CONTROLE where SITUACAO = ' + QuotedStr('A');
    end;
    dm.cds_parametro.Close;
    sqlConsulta.SQL.Add(v_SqlTexto);
    sqlConsulta.Open;
    if (sqlConsulta.IsEmpty) then
    begin
       Result := False;
    end
    else
    begin
       Result := True;
       v_DataCaixa  := sqlConsulta.Fields[0].AsDateTime;
       v_Cod_Caixa  := sqlConsulta.Fields[1].AsInteger;
       v_NomeCaixa  := sqlConsulta.Fields[2].AsString;
       v_idcaixa    := sqlConsulta.Fields[3].AsInteger;
    end;
  finally
    sqlConsulta.Free;
  end;
end;

end.
 
