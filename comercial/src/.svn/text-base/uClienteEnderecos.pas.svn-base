unit uClienteEnderecos;

interface

uses SysUtils, Dialogs, dbXpress;

type

  TEnderecos = class(TObject)
  private
    function getBairro: String;
    function getCep: String;
    function getCidade: String;
    function getCodCli: Integer;
    function getCodEndereco: Integer;
    function getCodIbge: String;
    function getComplemento: String;
    function getDadosAdicionais: String;
    function getDdd1: String;
    function getDdd2: String;
    function getDdd3: String;
    function getDdd4: String;
    function getEmail: String;
    function getFax: String;
    function getFone1: String;
    function getFone2: String;
    function getFone3: String;
    function getLogradouro: String;
    function getNumero: String;
    function getPais: String;
    function getRamal: String;
    function getTipoEndereco: Smallint;
    function getUf: String;
    procedure setBairro(const Value: String);
    procedure setCep(const Value: String);
    procedure setCidade(const Value: String);
    procedure setCodCli(const Value: Integer);
    procedure setCodEndereco(const Value: Integer);
    procedure setCodIbge(const Value: String);
    procedure setComplemento(const Value: String);
    procedure setDadosAdicionais(const Value: String);
    procedure setDdd1(const Value: String);
    procedure setDdd2(const Value: String);
    procedure setDdd3(const Value: String);
    procedure setDdd4(const Value: String);
    procedure setEmail(const Value: String);
    procedure setFax(const Value: String);
    procedure setFone1(const Value: String);
    procedure setFone2(const Value: String);
    procedure setFone3(const Value: String);
    procedure setLogradouro(const Value: String);
    procedure setNumero(const Value: String);
    procedure setPais(const Value: String);
    procedure setRamal(const Value: String);
    procedure setTipoEndereco(const Value: Smallint);
    procedure setUf(const Value: String);
  protected
    //Atributos
    _codCli          : Integer;
    _codEndereco     : Integer;
    _tipoEndereco    : Smallint;
    {<fd> 0 = Principal  1 = Cobranca  2 = Entrega </fd>}
    _logradouro      : String;
    _bairro          : String;
    _cidade          : String;
    _uf              : String;
    _complemento     : String;
    _numero          : String;
    _cep             : String;
    _fone1           : String;
    _fone2           : String;
    _fone3           : String;
    _ddd1            : String;
    _ddd2            : String;
    _ddd3            : String;
    _ddd4            : String;
    _email           : String;
    _ramal           : String;
    _fax             : String;
    _codIbge         : String;
    {<fd> Código do IBGE da Cidade , usado na emissão NF-e </fd>}
    _dadosAdicionais : String;
    _pais            : String;

    function executaSql(strSql: String): Boolean;
  public
    property CodCli      : Integer read getCodCli write setCodCli;
    property CodEndereco : Integer read getCodEndereco write setCodEndereco;
    property TipoEndereco: Smallint read getTipoEndereco write setTipoEndereco;
    property Logradouro  : String read getLogradouro write setLogradouro;
    property Bairro      : String read getBairro write setBairro;
    property Cidade      : String read getCidade write setCidade;
    property Uf          : String read getUf write setUf;
    property Pais        : String read getPais write setPais;
    property Complemento : String read getComplemento write setComplemento;
    property Numero      : String read getNumero write setNumero;
    property Cep         : String read getCep write setCep;
    property Fone1       : String read getFone1 write setFone1;
    property Fone2       : String read getFone2 write setFone2;
    property Fone3       : String read getFone3 write setFone3;
    property Fax         : String read getFax write setFax;
    property DDD1        : String read getDdd1 write setDdd1;
    property DDD2        : String read getDdd2 write setDdd2;
    property DDD3        : String read getDdd3 write setDdd3;
    property DDD4        : String read getDdd4 write setDdd4;
    property Email       : String read getEmail write setEmail;
    property Ramal       : String read getRamal write setRamal;
    property CodIbge     : String read getCodIbge write setCodIbge;
    property DadosAdicionais  : String read getDadosAdicionais write setDadosAdicionais;

    //Metodos
    function inserirEndereco(): Integer;
    function verEndereco(Controle: String; Campo: String; Tipo: String): Integer;
    function excluirEndereco(codEndE: Integer): Boolean;
    function excluirEnderecoCliente(codCliE: Integer): Boolean;
    function alterarEndereco(codEndA: Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'ENDERECOCLIENTE';

implementation

uses SqlExpr, DB, UDm, DBClient;

{ TEnderecos }

function TEnderecos.alterarEndereco(codEndA: Integer): Boolean;
var endAlt: String;
begin
  // Altera Endereco
  endAlt := 'UPDATE ENDERECOCLIENTE SET ';
  endAlt := endAlt + ' LOGRADOURO = ' + QuotedStr(Self.Logradouro) + ', ';
  endAlt := endAlt + ' BAIRRO     = ' + QuotedStr(Self.Bairro) + ', ';
  endAlt := endAlt + ' COMPLEMENTO= ' + QuotedStr(Self.Complemento) + ', ';
  endAlt := endAlt + ' CIDADE     = ' + QuotedStr(Self.Cidade) + ', ';
  endAlt := endAlt + ' UF         = ' + QuotedStr(Self.Uf) + ', ';
  endAlt := endAlt + ' CEP        = ' + QuotedStr(Self.Cep) + ', ';
  endAlt := endAlt + ' TELEFONE   = ' + QuotedStr(Self.Fone1) + ', ';
  endAlt := endAlt + ' TELEFONE1  = ' + QuotedStr(Self.Fone2) + ', ';
  endAlt := endAlt + ' TELEFONE2  = ' + QuotedStr(Self.Fone3) + ', ';
  endAlt := endAlt + ' FAX        = ' + QuotedStr(Self.getFax) + ', ';
  endAlt := endAlt + ' E_MAIL     = ' + QuotedStr(Self.Email) + ', ';
  endAlt := endAlt + ' RAMAL      = ' + QuotedStr(Self.Ramal) + ', ';
  endAlt := endAlt + ' TIPOEND    = ' + IntToStr(Self.TipoEndereco) + ', ';
  endAlt := endAlt + ' DDD        = ' + QuotedStr(Self.DDD1) + ', ';
  endAlt := endAlt + ' DDD1       = ' + QuotedStr(Self.DDD2) + ', ';
  endAlt := endAlt + ' DDD2       = ' + QuotedStr(Self.DDD3) + ', ';
  endAlt := endAlt + ' DDD3       = ' + QuotedStr(Self.DDD4) + ', ';
  endAlt := endAlt + ' NUMERO     = ' + QuotedStr(Self.Numero) + ', ';
  endAlt := endAlt + ' CD_IBGE    = ' + QuotedStr(Self.CodIbge) + ', ';
  endAlt := endAlt + ' DADOSADICIONAIS   = ' + QuotedStr(Self.DadosAdicionais) + ', ';
  endAlt := endAlt + ' PAIS              = ' + QuotedStr(Self.Pais);
  endAlt := endAlt + ' WHERE CODENDERECO = ' + IntToStr(codEndA);

  if (executaSql(endAlt)) then
    Result := True
  else
    Result := False;  

end;

constructor TEnderecos.Create;
begin

end;

destructor TEnderecos.Destroy;
begin

  inherited;
end;

function TEnderecos.excluirEndereco(codEndE: Integer): Boolean;
begin
  // Exclui Endereco
  Result := False;
  if (executaSql('DELETE FROM ENDERECOCLIENTE WHERE CODENDERECO = ' + IntToStr(codEndE))) then
    Result := True;
end;

function TEnderecos.excluirEnderecoCliente(codCliE: Integer): Boolean;
begin
  // Exclui Endereco do Cliente
  Result := False;
  if (executaSql('DELETE FROM ENDERECOCLIENTE WHERE CODCLIENTE = ' + IntToStr(codCliE))) then
    Result := True;
end;

function TEnderecos.executaSql(strSql: String): Boolean;
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

function TEnderecos.getBairro: String;
begin
  Result := Trim(_bairro);
end;

function TEnderecos.getCep: String;
begin
  Result := Trim(_cep);
end;

function TEnderecos.getCidade: String;
begin
  Result := Trim(_cidade);
end;

function TEnderecos.getCodCli: Integer;
begin
  Result := _codCli;
end;

function TEnderecos.getCodEndereco: Integer;
begin
  Result := _codEndereco;
end;

function TEnderecos.getCodIbge: String;
begin
  Result := Trim(_codIbge);
end;

function TEnderecos.getComplemento: String;
begin
  Result := Trim(_complemento);
end;

function TEnderecos.getDadosAdicionais: String;
begin
  Result := Trim(_dadosAdicionais);
end;

function TEnderecos.getDdd1: String;
begin
  Result := Trim(_ddd1);
end;

function TEnderecos.getDdd2: String;
begin
  Result := Trim(_ddd2);
end;

function TEnderecos.getDdd3: String;
begin
  Result := Trim(_ddd3);
end;

function TEnderecos.getDdd4: String;
begin
  Result := Trim(_ddd4);
end;

function TEnderecos.getEmail: String;
begin
  Result := Trim(_email);
end;

function TEnderecos.getFax: String;
begin
  Result := Trim(_fax);
end;

function TEnderecos.getFone1: String;
begin
  Result := Trim(_fone1);
end;

function TEnderecos.getFone2: String;
begin
  Result := Trim(_fone2);
end;

function TEnderecos.getFone3: String;
begin
  Result := Trim(_fone3);
end;

function TEnderecos.getLogradouro: String;
begin
  Result := Trim(_logradouro);
end;

function TEnderecos.getNumero: String;
begin
  Result := Trim(_numero);
end;

function TEnderecos.getPais: String;
begin
  Result := Trim(_pais);
end;

function TEnderecos.getRamal: String;
begin
  Result := Trim(_ramal);
end;

function TEnderecos.getTipoEndereco: Smallint;
begin
  Result := _tipoEndereco;
end;

function TEnderecos.getUf: String;
begin
  Result := Trim(_uf);
end;

function TEnderecos.inserirEndereco: Integer;
var endInc: String;
begin
  // Cadastrar Cliente
  if (Self.CodEndereco = 0) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    _codEndereco := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  // Inserir Endereco
  endInc := 'INSERT INTO ENDERECOCLIENTE (CODENDERECO, ';
  endInc := endInc + ' CODCLIENTE , LOGRADOURO, BAIRRO, ';
  endInc := endInc + ' COMPLEMENTO, CIDADE    , UF,     ';
  endInc := endInc + ' CEP        , TELEFONE  , TELEFONE1,';
  endInc := endInc + ' TELEFONE2  , FAX       , E_MAIL   ,';
  endInc := endInc + ' RAMAL      , TIPOEND   , DDD      ,';
  endInc := endInc + ' DDD1       , DDD2      , DDD3     ,';
  endInc := endInc + ' NUMERO     , CD_IBGE   , DADOSADICIONAIS, PAIS)';
  endInc := endInc + ' VALUES(';
  endInc := endInc + IntToStr(Self.CodEndereco) + ', ';
  endInc := endInc + IntToStr(Self.CodCli) + ', ';
  endInc := endInc + QuotedStr(Self.Logradouro) + ', ';
  endInc := endInc + QuotedStr(Self.Bairro) + ', ';
  endInc := endInc + QuotedStr(Self.Complemento) + ', ';
  endInc := endInc + QuotedStr(Self.Cidade) + ', ';
  endInc := endInc + QuotedStr(Self.Uf) + ', ';
  endInc := endInc + QuotedStr(Self.Cep) + ', ';
  endInc := endInc + QuotedStr(Self.Fone1) + ', ';
  endInc := endInc + QuotedStr(Self.Fone2) + ', ';
  endInc := endInc + QuotedStr(Self.Fone3) + ', ';
  endInc := endInc + QuotedStr(Self.getFax) + ', ';
  endInc := endInc + QuotedStr(Self.Email) + ', ';
  endInc := endInc + QuotedStr(Self.Ramal) + ', ';
  endInc := endInc + IntToStr(Self.TipoEndereco) + ', ';
  endInc := endInc + QuotedStr(Self.DDD1) + ', ';
  endInc := endInc + QuotedStr(Self.DDD2) + ', ';
  endInc := endInc + QuotedStr(Self.DDD3) + ', ';
  endInc := endInc + QuotedStr(Self.DDD4) + ', ';
  endInc := endInc + QuotedStr(Self.Numero) + ', ';
  endInc := endInc + QuotedStr(Self.CodIbge) + ', ';
  endInc := endInc + QuotedStr(Self.DadosAdicionais) + ', ';
  endInc := endInc + QuotedStr(Self.Pais) + ')';
  executaSql(endInc);
  Result := Self.CodEndereco;
end;

procedure TEnderecos.setBairro(const Value: String);
begin
  _bairro := Value;
end;

procedure TEnderecos.setCep(const Value: String);
begin
  _cep := Value;
end;

procedure TEnderecos.setCidade(const Value: String);
begin
  _cidade := Value;
end;

procedure TEnderecos.setCodCli(const Value: Integer);
begin
  _codCli := Value;
end;

procedure TEnderecos.setCodEndereco(const Value: Integer);
begin
  _codEndereco := Value;
end;

procedure TEnderecos.setCodIbge(const Value: String);
begin
 _codIbge := Value;
end;

procedure TEnderecos.setComplemento(const Value: String);
begin
  _complemento := Value;
end;

procedure TEnderecos.setDadosAdicionais(const Value: String);
begin
  _dadosAdicionais := Value;
end;

procedure TEnderecos.setDdd1(const Value: String);
begin
  _ddd1 := Value;
end;

procedure TEnderecos.setDdd2(const Value: String);
begin
  _ddd2 := Value;
end;

procedure TEnderecos.setDdd3(const Value: String);
begin
  _ddd3 := Value;
end;

procedure TEnderecos.setDdd4(const Value: String);
begin
  _ddd4 := Value;
end;

procedure TEnderecos.setEmail(const Value: String);
begin
  _email := Value;
end;

procedure TEnderecos.setFax(const Value: String);
begin
  _fax := Value;
end;

procedure TEnderecos.setFone1(const Value: String);
begin
  _fone1 := Value;
end;

procedure TEnderecos.setFone2(const Value: String);
begin
  _fone2 := Value;
end;

procedure TEnderecos.setFone3(const Value: String);
begin
  _fone3 := Value;
end;

procedure TEnderecos.setLogradouro(const Value: String);
begin
  _logradouro := Value;
end;

procedure TEnderecos.setNumero(const Value: String);
begin
  _numero := Value;
end;

procedure TEnderecos.setPais(const Value: String);
begin
  _pais := Value;
end;

procedure TEnderecos.setRamal(const Value: String);
begin
  _ramal := Value;
end;

procedure TEnderecos.setTipoEndereco(const Value: Smallint);
begin
  _tipoEndereco := Value;
end;

procedure TEnderecos.setUf(const Value: String);
begin
  _uf := Value;
end;

function TEnderecos.verEndereco(Controle, Campo, Tipo: String): Integer;
begin
  // VerEndereco
  Try
    Result := 0;

    With dm.cdsBusca do begin
      Close;
      CommandText := 'SELECT * FROM ENDERECOCLIENTE';
      if (Tipo = 'INTEGER') then
      begin
        CommandText := CommandText + ' WHERE ' + Campo + ' = ' + Controle;
      end;
      if (Tipo = 'STRING') then
      begin
        CommandText := CommandText + ' WHERE ' + Campo + ' = ' + QuotedStr(Controle);
      end;

      Open;
    end;

    if (dm.cdsBusca.RecordCount > 0) then
    begin
      Self.CodCli        := dm.cdsBusca.FieldByName('CODCLIENTE').AsInteger;
      Self.Logradouro    := dm.cdsBusca.FieldByName('LOGRADOURO').AsString;
      Self.TipoEndereco  := dm.cdsBusca.FieldByName('TIPOEND').AsInteger;
      Self.Bairro        := dm.cdsBusca.FieldByName('BAIRRO').AsString;
      Self.Complemento   := dm.cdsBusca.FieldByName('COMPLEMENTO').AsString;
      Self.Cidade        := dm.cdsBusca.FieldByName('CIDADE').AsString;
      Self.Uf            := dm.cdsBusca.FieldByName('UF').AsString;
      Self.Cep           := dm.cdsBusca.FieldByName('CEP').AsString;
      Self.Fone1         := dm.cdsBusca.FieldByName('TELEFONE').AsString;
      Self.Fone2         := dm.cdsBusca.FieldByName('TELEFONE1').AsString;
      Self.Fone3         := dm.cdsBusca.FieldByName('TELEFONE2').AsString;
      Self.Fax           := dm.cdsBusca.FieldByName('FAX').AsString;
      Self.DDD1          := dm.cdsBusca.FieldByName('DDD').AsString;
      Self.DDD2          := dm.cdsBusca.FieldByName('DDD1').AsString;
      Self.DDD3          := dm.cdsBusca.FieldByName('DDD2').AsString;
      Self.DDD4          := dm.cdsBusca.FieldByName('DDD3').AsString;
      Self.Email         := dm.cdsBusca.FieldByName('E_MAIL').AsString;
      Self.Numero        := dm.cdsBusca.FieldByName('NUMERO').AsString;
      Self.CodIbge       := dm.cdsBusca.FieldByName('CD_IBGE').AsString;
      Self.DadosAdicionais   := dm.cdsBusca.FieldByName('DADOSADICIONAIS').AsString;
      Self.Pais          := dm.cdsBusca.FieldByName('PAIS').AsString;
      Self.Ramal         := dm.cdsBusca.FieldByName('RAMAL').AsString;
      Result := Self.CodCli;
    end
    else
      //ShowMessage('Registro não encontrado');
      Result := 0;
  Except
    on E : Exception do
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
  end;
end;


end.
