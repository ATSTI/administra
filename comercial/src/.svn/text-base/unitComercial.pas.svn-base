unit unitComercial;

interface

uses Classes, Sysutils;

type

  TNotaFiscal = class;
  TVenda = class;

  TNotaFiscal = class(TObject)
  private
    FQuantidade: Double;
    FNumeroNF: Integer;
    FCodVenda: Integer;
    FNatureza: Smallint;
    FEspecie: String;
    FEnderecoTransportadora: String;
    FNomeTransportadora: String;
    FUF: String;
    FNotaSerie: string;
    FMarca: String;
    FCnpjTransportadora: String;
    FDataEmissao: TDateTime;
    FDataSaida: TDateTime;
    FValorTotalNF: Double;
    procedure SetCnpjTransportadora(const Value: String);
    procedure SetCodVenda(const Value: Integer);
    procedure SetDataEmissao(const Value: TDateTime);
    procedure SetDataSaida(const Value: TDateTime);
    procedure SetEnderecoTransportadora(const Value: String);
    procedure SetEspecie(const Value: String);
    procedure SetMarca(const Value: String);
    procedure SetNatureza(const Value: Smallint);
    procedure SetNomeTransportadora(const Value: String);
    procedure SetNotaSerie(const Value: string);
    procedure SetNumeroNF(const Value: Integer);
    procedure SetQuantidade(const Value: Double);
    procedure SetUF(const Value: String);
    procedure SetValorTotalNF(const Value: Double);
    { Private declarations }
  public
    property NotaSerie : string read FNotaSerie write SetNotaSerie;
    property NumeroNF : Integer read FNumeroNF write SetNumeroNF;
    property Natureza : Smallint read FNatureza write SetNatureza;
    property Quantidade : Double read FQuantidade write SetQuantidade;
    property Marca : String read FMarca write SetMarca;
    property Especie : String read FEspecie write SetEspecie;
    property DataEmissao : TDateTime read FDataEmissao write SetDataEmissao;
    property DataSaida : TDateTime read FDataSaida write SetDataSaida;
    property UF : String read FUF write SetUF;
    property CodVenda : Integer read FCodVenda write SetCodVenda;
    property NomeTransportadora : String read FNomeTransportadora write SetNomeTransportadora;
    property CnpjTransportadora : String read FCnpjTransportadora write SetCnpjTransportadora;
    property EnderecoTransportadora : String read FEnderecoTransportadora write SetEnderecoTransportadora;
    property ValorTotalNF: Double read FValorTotalNF write SetValorTotalNF;
    { Public declarations }
  end;

  TVenda = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{ TNotaFiscal }

{ TNotaFiscal }

procedure TNotaFiscal.SetCnpjTransportadora(const Value: String);
begin
  FCnpjTransportadora := Value;
end;

procedure TNotaFiscal.SetCodVenda(const Value: Integer);
begin
  FCodVenda := Value;
end;

procedure TNotaFiscal.SetDataEmissao(const Value: TDateTime);
begin
  FDataEmissao := Value;
end;

procedure TNotaFiscal.SetDataSaida(const Value: TDateTime);
begin
  FDataSaida := Value;
end;

procedure TNotaFiscal.SetEnderecoTransportadora(const Value: String);
begin
  FEnderecoTransportadora := Value;
end;

procedure TNotaFiscal.SetEspecie(const Value: String);
begin
  FEspecie := Value;
end;

procedure TNotaFiscal.SetMarca(const Value: String);
begin
  FMarca := Value;
end;

procedure TNotaFiscal.SetNatureza(const Value: Smallint);
begin
  FNatureza := Value;
end;

procedure TNotaFiscal.SetNomeTransportadora(const Value: String);
begin
  FNomeTransportadora := Value;
end;

procedure TNotaFiscal.SetNotaSerie(const Value: string);
begin
  FNotaSerie := Value;
end;

procedure TNotaFiscal.SetNumeroNF(const Value: Integer);
begin
  FNumeroNF := Value;
end;

procedure TNotaFiscal.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
end;

procedure TNotaFiscal.SetUF(const Value: String);
begin
  FUF := Value;
end;

procedure TNotaFiscal.SetValorTotalNF(const Value: Double);
begin
  FValorTotalNF := Value;
end;

end.
