unit uTerminalCaixa;

interface
uses SysUtils, DBXpress, uUtils, DB;

type
  TCaixa = class
  private
    FCaixa: string;
    FValorEntrou: Double;
    FValorInicial: Double;
    FValorFinal: Double;
    FValorSaiu: Double;
    FUsuarioAbriu: String;
    FDataFechamento: TDateTime;
    FDataAbertura: TDateTime;
    FCentroCusto: String;
    FHorarioMoveu: TDateTime;
    procedure SetCaixa(const Value: string);
    procedure SetDataAbertura(const Value: TDateTime);
    procedure SetDataFechamento(const Value: TDateTime);
    procedure SetUsuarioAbriu(const Value: String);
    procedure SetValorEntrou(const Value: Double);
    procedure SetValorFinal(const Value: Double);
    procedure SetValorInicial(const Value: Double);
    procedure SetValorSaiu(const Value: Double);
    procedure SetCentroCusto(const Value: String);
    procedure SetHorarioMoveu(const Value: TDateTime);
  public
    util : TUtils;
    property Caixa : string read FCaixa write SetCaixa;
    property DataAbertura: TDateTime read FDataAbertura write SetDataAbertura;
    property DataFechamento: TDateTime read FDataFechamento write SetDataFechamento;
    property UsuarioAbriu: String read FUsuarioAbriu write SetUsuarioAbriu;
    property ValorInicial: Double read FValorInicial write SetValorInicial;
    property ValorFinal: Double read FValorFinal write SetValorFinal;
    property ValorEntrou: Double read FValorEntrou write SetValorEntrou;
    property ValorSaiu: Double read FValorSaiu write SetValorSaiu;
    property HorarioMoveu: TDateTime read FHorarioMoveu write SetHorarioMoveu;
    property CentroCusto: String read FCentroCusto write SetCentroCusto;
    Procedure abrirCaixa;
  end;
implementation

uses UDm;

{ TCaixa }

procedure TCaixa.abrirCaixa;
var sql: string;
begin
{  sql := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
         ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
         ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
         ', QTDEDEBITO, QTDEORCADO) Values (';
  util.buscaChave('GEN_CONTAB_AUTOINC');
  sql := sql + intToStr(util.buscaChave('GEN_CONTAB_AUTOINC'));
  sql := sql + ',' + intToStr(cod_id);
  sql := sql + ',' + QuotedStr('ABRECAIXA');
  sql := sql + ',' + QuotedStr(formatdatetime('mm/dd/yyyy', FDataAbertura));
  sql := sql + ',' + FUsuarioAbriu;
  sql := sql + ',' + FCentroCusto;
  sql := sql + ',' + '0'; // CodServiço
  sql := sql + ',' + '0'; // Status
  sql := sql + ',''' + var_debito;
      var_sqla := var_sqla + ''',' + '0';
      var_sqla := var_sqla + ',' + valor_str;
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ',' + '0';
      var_sqla := var_sqla + ')';

 }
end;

procedure TCaixa.SetCaixa(const Value: string);
begin
  Fcaixa := Value;
end;

procedure TCaixa.SetCentroCusto(const Value: String);
begin
  FCentroCusto := Value;
end;

procedure TCaixa.SetDataAbertura(const Value: TDateTime);
begin
  FDataAbertura := Value;
end;

procedure TCaixa.SetDataFechamento(const Value: TDateTime);
begin
  FDataFechamento := Value;
end;

procedure TCaixa.SetHorarioMoveu(const Value: TDateTime);
begin
  FHorarioMoveu := Value;
end;

procedure TCaixa.SetUsuarioAbriu(const Value: String);
begin
  FUsuarioAbriu := Value;
end;

procedure TCaixa.SetValorEntrou(const Value: Double);
begin
  FValorEntrou := Value;
end;

procedure TCaixa.SetValorFinal(const Value: Double);
begin
  FValorFinal := Value;
end;

procedure TCaixa.SetValorInicial(const Value: Double);
begin
  FValorInicial := Value;
end;

procedure TCaixa.SetValorSaiu(const Value: Double);
begin
  FValorSaiu := Value;
end;

end.
