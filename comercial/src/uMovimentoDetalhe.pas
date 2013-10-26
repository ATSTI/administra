unit uMovimentoDetalhe;

interface

uses SysUtils, Dialogs, dbXpress;

type

  TMovimentoDetalhe = class(TObject)
  private
    function getCodDet     : Integer;
    function getCodMov     : Integer;
    function getCodigo     : Integer;
    function getCodProduto : Integer;
    function getQtde       : Double;
    function getPreco      : Double;
    function getIcms       : Double;
    function getDesconto   : Double;
    function getBaixa      : String;
    function getUn         : String;
    function getDescricao  : String;
    function getAcrescimo: Double;
    function getAtendente: Integer;
    function getColaborador: Integer;
    function getCortesia: String;
    function getSuite: String;
    function getLote: String;
    function getCodAutorizacao: Integer;
    function geFormaRecebimento: String;
    function getPagou: String;        

    procedure setCodDet(const Value: Integer);
    procedure setCodMov(const Value: Integer);
    procedure setCodigo(const Value: Integer);
    procedure setCodProduto(const Value: Integer);
    procedure setQtde(const Value: Double);
    procedure setPreco(const Value: Double);
    procedure setIcms(const Value: Double);
    procedure setDesconto(const Value: Double);
    procedure setBaixa(const Value: String);
    procedure setUn(const Value: String);
    procedure setDescricao(const Value: String);
    procedure setLote(const Value: String);
    procedure setAcrescimo(const Value: Double);
    procedure setAtendente(const Value: Integer);
    procedure setColaborador(const Value: Integer);
    procedure setCortesia(const Value: String);
    procedure setSuite(const Value: String);
    procedure setCodAutorizacao(const Value: Integer);
    procedure setFormaRecebimento(const Value: String);
    procedure setPagou(const Value: String);
    function getCfop: String;
    procedure setCfop(const Value: String);
    function getDtaFab: TDateTime;
    function getDtaVcto: TDateTime;
    procedure setDtaFab(const Value: TDateTime);
    procedure setDtaVcto(const Value: TDateTime);
  protected
    //Atributos
    _codDet          : Integer;
    _codMov          : Integer;
    _codigo          : Integer;
    _codProduto      : Integer;
    _qtde            : Double;
    _preco           : Double;
    _icms            : Double;
    _desconto        : Double;
    _descricao       : String;
    _baixa           : String;
    _un              : String;
    _lote            : String;
    _Acrescimo       : Double;
    _Cortesia        : String;
    _Atendente       : Integer;
    _Colaborador     : Integer;
    _Suite           : String;
    _CodAutorizacao  : Integer;
    _Pagou           : String;
    _FormaRcebimento : String;
    _Cfop            : String;
    _dtaFab          : TDateTime;
    _dtaVcto         : TDateTime;

    function executaSql(strSql: String): Boolean;
  public
    property CodDet      : Integer read getCodDet write setCodDet;
    property CodMov      : Integer read getCodMov write setCodMov;
    property Codigo      : Integer read getCodigo write setCodigo;
    property CodProduto  : Integer read getCodProduto write setCodProduto;
    property Qtde        : Double  read getQtde write setQtde;
    property Preco       : Double  read getPreco write setPreco;
    property Icms        : Double  read getIcms write setIcms;
    property Desconto    : Double  read getDesconto write setDesconto;
    property Descricao   : String  read getDescricao write setDescricao;
    property Baixa       : String  read getBaixa write setBaixa;
    property Un          : String  read getUn write setUn;
    property Lote        : String  read getLote write setLote;
    property Acrescimo   : Double  read getAcrescimo write setAcrescimo;
    property Cortesia    : String  read getCortesia write setCortesia;
    property Atendente   : Integer read getAtendente write setAtendente;
    property Colaborador : Integer read getColaborador write setColaborador;
    property Suite       : String  read getSuite write setSuite;
    property Pagou       : String  read getPagou write setPagou;
    property CodAutorizacao   : Integer read getCodAutorizacao write setCodAutorizacao;
    property FormaRecebimento : String read geFormaRecebimento write setFormaRecebimento;
    property Cfop        : String  read getCfop write setCfop;
    property DtaVcto     : TDateTime read getDtaVcto write setDtaVcto;
    property DtaFab      : TDateTime read getDtaFab write setDtaFab;
    //Metodos
    function inserirMovDet(): Boolean;
    function verMovDetalhe(codDetV: Integer): Boolean;
    function verMovimentoDet(codMov: Integer): Boolean;
    function excluirMovDetalhe(codDetE: Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'MOVIMENTODETALHE';

implementation

uses SqlExpr, DB, UDm, DBClient;

{ TMovimentoDetalhe }

constructor TMovimentoDetalhe.Create;
begin

end;

destructor TMovimentoDetalhe.Destroy;
begin

  inherited;
end;

function TMovimentoDetalhe.excluirMovDetalhe(codDetE: Integer): Boolean;
begin
  if (executaSql('DELETE FROM MOVIMENTODETALHE WHERE CODDETALHE = ' + IntToStr(codDetE))) then
    Result := True
  else
    Result := False;
end;

function TMovimentoDetalhe.executaSql(strSql: String): Boolean;
var ErrorCode: Integer;
begin
  ErrorCode := dm.sqlsisAdimin.ExecuteDirect(strSql);
  if ErrorCode = 0 then
  begin
    Result := True;
  end;

  if ErrorCode <> 0 then
  begin
    Result := False;
    raise Exception.Create( 'Error: code = ' + IntToStr( ErrorCode ) )
  end;
end;

function TMovimentoDetalhe.geFormaRecebimento: String;
begin
  Result := _Pagou;
end;

function TMovimentoDetalhe.getAcrescimo: Double;
begin
  Result := _Acrescimo;
end;

function TMovimentoDetalhe.getAtendente: Integer;
begin
  Result := _Atendente;
end;

function TMovimentoDetalhe.getBaixa: String;
begin
  Result := _baixa;
end;

function TMovimentoDetalhe.getCfop: String;
begin
  Result := _Cfop;
end;

function TMovimentoDetalhe.getCodAutorizacao: Integer;
begin
  Result := _CodAutorizacao;
end;

function TMovimentoDetalhe.getCodDet: Integer;
begin
  Result := _codDet;
end;

function TMovimentoDetalhe.getCodigo: Integer;
begin
  Result := _codigo;
end;

function TMovimentoDetalhe.getCodMov: Integer;
begin
  Result := _codMov;
end;

function TMovimentoDetalhe.getCodProduto: Integer;
begin
  Result := _codProduto;
end;

function TMovimentoDetalhe.getColaborador: Integer;
begin
  Result := _Colaborador;
end;

function TMovimentoDetalhe.getCortesia: String;
begin
  Result := _Cortesia;
end;

function TMovimentoDetalhe.getDesconto: Double;
begin
  Result := _desconto;
end;

function TMovimentoDetalhe.getDescricao: String;
begin
  Result := _descricao;
end;

function TMovimentoDetalhe.getDtaFab: TDateTime;
begin
  Result := _dtaFab;
end;

function TMovimentoDetalhe.getDtaVcto: TDateTime;
begin
  Result := _dtaVcto;
end;

function TMovimentoDetalhe.getIcms: Double;
begin
  Result := _icms;
end;

function TMovimentoDetalhe.getLote: String;
begin
  Result := _lote;
end;

function TMovimentoDetalhe.getPagou: String;
begin
  Result := _Pagou;
end;

function TMovimentoDetalhe.getPreco: Double;
begin
  Result := _preco;
end;

function TMovimentoDetalhe.getQtde: Double;
begin
  Result := _qtde;
end;

function TMovimentoDetalhe.getSuite: String;
begin
  Result := _Suite;
end;

function TMovimentoDetalhe.getUn: String;
begin
  Result := _un;
end;

function TMovimentoDetalhe.inserirMovDet: Boolean;
var str: String;
begin
  DecimalSeparator := '.';
  str := 'INSERT INTO MOVIMENTODETALHE (CODDETALHE, CODMOVIMENTO, ' +
    'CODPRODUTO, QUANTIDADE, PRECO, ICMS, QTDE_ALT, UN, BAIXA, DESCPRODUTO, CODIGO , LOTE, ' +
    ' ACRESCIMO, CORTESIA, ATENDENTE, COLABORADOR, SUITE, CODAUTORIZACAO, CFOP, DTAVCTO, DTAFAB) VALUES (';
  str := str + 'GEN_ID(GENMOVDET,1), ' + IntToStr(self.CodMov) + ', ' + IntToStr(Self.CodProduto);
  str := str + ', ' + FloatToStr(Self.Qtde) + ', ' + FloatToStr(Self.Preco);
  str := str + ', ' + FloatToStr(Self.Icms) + ', ' + FloatToStr(Self.Desconto);
  str := str + ', ' + QuotedStr(Self.Un)    + ', null ';
  str := str + ', ' + QuotedStr(Self.Descricao);
  str := str + ', ' + IntToStr(Self.Codigo);
  str := str + ', ' + QuotedStr(Self.Lote);
  str := str + ', ' + FloatToStr(Self.Acrescimo);
  str := str + ', ' + QuotedStr(Self.Cortesia);
  str := str + ', ' + IntToStr(Self.Atendente);
  str := str + ', ' + IntToStr(Self.Colaborador);
  str := str + ', ' + QuotedStr(Self.Suite);
  str := str + ', ' + IntToStr(Self.CodAutorizacao);
  str := str + ', ' + QuotedStr(Self.CFOP);
  str := str + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DtaVcto));
  str := str + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DtaFab));
  str := str + ')';
  executaSql(str);
end;

procedure TMovimentoDetalhe.setAcrescimo(const Value: Double);
begin
  _Acrescimo := Value;
end;

procedure TMovimentoDetalhe.setAtendente(const Value: Integer);
begin
  _Atendente := Value;
end;

procedure TMovimentoDetalhe.setBaixa(const Value: String);
begin
  _baixa := Trim(Value);
end;

procedure TMovimentoDetalhe.setCfop(const Value: String);
begin
  _cfop := Trim(Value);
end;

procedure TMovimentoDetalhe.setCodAutorizacao(const Value: Integer);
begin
  _CodAutorizacao := Value;
end;

procedure TMovimentoDetalhe.setCodDet(const Value: Integer);
begin
  _codDet := Value;
end;

procedure TMovimentoDetalhe.setCodigo(const Value: Integer);
begin
  _codigo := Value;
end;

procedure TMovimentoDetalhe.setCodMov(const Value: Integer);
begin
  _codMov := Value;
end;

procedure TMovimentoDetalhe.setCodProduto(const Value: Integer);
begin
  _codProduto := Value;
end;

procedure TMovimentoDetalhe.setColaborador(const Value: Integer);
begin
  _Colaborador := Value;
end;

procedure TMovimentoDetalhe.setCortesia(const Value: String);
begin
  _Cortesia := Trim(Value);
end;

procedure TMovimentoDetalhe.setDesconto(const Value: Double);
begin
  _desconto := Value;
end;

procedure TMovimentoDetalhe.setDescricao(const Value: String);
begin
  _descricao := Trim(Value);
end;

procedure TMovimentoDetalhe.setDtaFab(const Value: TDateTime);
begin
  _dtaFab := Value;
end;

procedure TMovimentoDetalhe.setDtaVcto(const Value: TDateTime);
begin
  _dtaVcto := Value;
end;

procedure TMovimentoDetalhe.setFormaRecebimento(const Value: String);
begin
  _FormaRcebimento := Trim(Value);
end;

procedure TMovimentoDetalhe.setIcms(const Value: Double);
begin
  _icms := Value;
end;

procedure TMovimentoDetalhe.setLote(const Value: String);
begin
  _lote := Value;
end;

procedure TMovimentoDetalhe.setPagou(const Value: String);
begin
  _Pagou := Trim(Value);
end;

procedure TMovimentoDetalhe.setPreco(const Value: Double);
begin
  _preco := Value;
end;

procedure TMovimentoDetalhe.setQtde(const Value: Double);
begin
  _qtde := Value;
end;

procedure TMovimentoDetalhe.setSuite(const Value: String);
begin
  _Suite := Value;
end;

procedure TMovimentoDetalhe.setUn(const Value: String);
begin
  _un := Value;
end;

function TMovimentoDetalhe.verMovDetalhe(codDetV: Integer): Boolean;
begin
  Try
    Result := False;

    With dm.cdsBusca do begin
      Close;
      CommandText := 'SELECT * FROM MOVIMENTODETALHE WHERE CODDETALHE = ' + IntToStr(codDetV);
      Open;
    end;

    if (dm.cdsBusca.RecordCount > 0) then
    begin
      Self.CodDet        := dm.cdsBusca.FieldByName('CODDETALHE').AsInteger;
      Self.CodMov        := dm.cdsBusca.FieldByName('CODMOVIMENTO').AsInteger;
      Self.CodProduto    := dm.cdsBusca.FieldByName('CODPRODUTO').AsInteger;
      Self.Qtde          := dm.cdsBusca.FieldByName('QUANTIDADE').AsFloat;
      Self.Preco         := dm.cdsBusca.FieldByName('PRECO').AsFloat;
      Self.Icms          := dm.cdsBusca.FieldByName('ICMS').AsFloat;
      Self.Desconto      := dm.cdsBusca.FieldByName('QTDE_ALT').AsFloat;
      Self.Un            := dm.cdsBusca.FieldByName('UN').AsString;
      Self.Baixa         := dm.cdsBusca.FieldByName('BAIXA').AsString;
      Self.Descricao     := dm.cdsBusca.FieldByName('DESCPRODUTO').AsString;
      Self.Acrescimo     := dm.cdsBusca.FieldByName('ACRESCIMO').AsFloat;
      Self.Cortesia      := dm.cdsBusca.FieldByName('CORTESIA').AsString;
      Self.Atendente     := dm.cdsBusca.FieldByName('ATENDENTE').AsInteger;
      Self.Colaborador   := dm.cdsBusca.FieldByName('COLABORADOR').AsInteger;
      Self.Suite         := dm.cdsBusca.FieldByName('SUITE').AsString;
      Self.CodAutorizacao:= dm.cdsBusca.FieldByName('CODAUTORIZACAO').AsInteger;
      Result := True;
    end
    else
      ShowMessage('Registro não encontrado');
  Except
    on E : Exception do
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
  end;
end;

function TMovimentoDetalhe.verMovimentoDet(codMov: Integer): Boolean;
begin
  Try
    Result := False;

    With dm.cdsBusca do begin
      Close;
      CommandText := 'SELECT * FROM MOVIMENTODETALHE WHERE CODDETALHE = ' + IntToStr(codMov);
      Open;
    end;

    if (dm.cdsBusca.RecordCount > 0) then
    begin
      Result := True;
    end
    else begin
      ShowMessage('Registro não encontrado');
      Result := False;
    end;
  Except
    on E : Exception do
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
  end;
end;

end.
