unit uNFClasse;
{ STATUS = P -- Provisorio;
           E -- Enviado;
           C -- Cancelado;
}             

interface

Type
  TuNFClasse = class(TObject)
  private

    function getNUMNF            : Integer;
    function getNotafiscal       : String;
    function getNatOpera         : String;
    function getSerie            : String;
    function getDEmiss           : TDateTime;
    function getDEntSai          : TDateTime;
    function getHEntSai          : TDateTime;
    function getTpEntSai         : Integer;
    function getRefComplementar  : String;
    function getCodVenda         : Integer;
    function getCodMovimento     : Integer;
    function getCodCliente       : Integer;
    function getCodTransp        : Integer;
    function getTipoFrete        : String;
    function getDadosAdic1       : String;
    function getDadosAdic2       : String;
    function getDadosAdic3       : String;
    function getDadosAdic4       : String;
    function getDadosAdic5       : String;
    function getDadosAdic6       : String;
    function getXMLNFE           : PChar;
    function getvBCICMS          : Real;
    function getvICMS            : Real;
    function getBCST             : Real;
    function getST               : Real;
    function getvProdutos        : Real;
    function getvFrete           : Real;
    function getvSeguro          : Real;
    function getvDesconto        : Real;
    function getvOutro           : Real;
    function getvIpi             : Real;
    function getvPis             : Real;
    function getvCofins          : Real;
    function getvNF              : Real;
    function getPROTOCOLOENV     : String;
    function getNUMRECIBO        : String;
    function getPROTOCOLOCANC    : String;
    function getDtaSistema       : TDateTime;
    function getMarca            : String;
    function getEspecie          : String;
    function getCFOP             : String;
    function getNomeTransp       : String;
    function getPlacaTransp      : String;
    function getCNPJTransp       : String;
    function getEndTransp        : String;
    function getCidadeTransp     : String;
    function getIE               : String;
    function getNotaMae          : Integer;
    function getUFTransp         : String;
    function getUFVeicTransp     : String;
    function getPesoRemessa      : Real;
    function getNumero           : Real;
    function getQuantidade       : Real;
    function getPesoBruto        : Real;
    function getPesoLiquido      : Real;
    function getNatureza         : Integer;
    function getUF               : String;
    function getStatus           : String;
    procedure setNUMNF            (const Value: Integer);
    procedure setNotafiscal       (const Value: String);
    procedure setNatOpera         (const Value: String);
    procedure setSerie            (const Value: String);
    procedure setDEmiss           (const Value: TDateTime);
    procedure setDEntSai          (const Value: TDateTime);
    procedure setHEntSai          (const Value: TDateTime);
    procedure setTpEntSai         (const Value: Integer);
    procedure setRefComplementar  (const Value: String);
    procedure setCodVenda         (const Value: Integer);
    procedure setCodMovimento     (const Value: Integer);
    procedure setCodCliente       (const Value: Integer);
    procedure setCodTransp        (const Value: Integer);
    procedure setTipoFrete        (const Value: String);
    procedure setDadosAdic1       (const Value: String);
    procedure setDadosAdic2       (const Value: String);
    procedure setDadosAdic3       (const Value: String);
    procedure setDadosAdic4       (const Value: String);
    procedure setDadosAdic5       (const Value: String);
    procedure setDadosAdic6       (const Value: String);
    procedure setXMLNFE           (const Value: PChar);
    procedure setvBCICMS          (const Value: Real);
    procedure setvICMS            (const Value: Real);
    procedure setBCST             (const Value: Real);
    procedure setST               (const Value: Real);
    procedure setvProdutos        (const Value: Real);
    procedure setvFrete           (const Value: Real);
    procedure setvSeguro          (const Value: Real);
    procedure setvDesconto        (const Value: Real);
    procedure setvOutro           (const Value: Real);
    procedure setvIpi             (const Value: Real);
    procedure setvPis             (const Value: Real);
    procedure setvCofins          (const Value: Real);
    procedure setvNF              (const Value: Real);
    procedure setProtocoloEnv     (const Value: String);
    procedure setNumRecibo        (const Value: String);
    procedure setProtocoloCanc    (const Value: String);
    procedure setDtaSistema       (const Value: TDateTime);
    procedure setMarca            (const Value: String);
    procedure setEspecie          (const Value: String);
    procedure setCFOP             (const Value: String);
    procedure setNomeTransp       (const Value: String);
    procedure setPlacaTransp      (const Value: String);
    procedure setCNPJTransp       (const Value: String);
    procedure setEndTransp        (const Value: String);
    procedure setCidadeTransp     (const Value: String);
    procedure setIE               (const Value: String);
    procedure setNotaMae          (const Value: Integer);
    procedure setUFTransp         (const Value: String);
    procedure setUFVeicTransp     (const Value: String);
    procedure setPesoRemessa      (const Value: Real);
    procedure setNumero           (const Value: Real);
    procedure setQuantidade       (const Value: Real);
    procedure setPesoBruto        (const Value: Real);
    procedure setPesoLiquido      (const Value: Real);
    procedure setNatureza         (const Value: Integer);
    procedure setUF               (const Value: String);
    procedure setStatus           (const Value: String);

  protected
    _NUMNF            : Integer;
    _Notafiscal       : String;
    _Natureza         : Integer;
    _UF               : String;
    _NatOpera         : String;
    _Serie            : String;
    _DEmiss           : TDateTime;
    _DEntSai          : TDateTime;
    _HEntSai          : TDateTime;
    _TpEntSai         : Integer;
    _RefComplementar  : String;
    _CodVenda         : Integer;
    _CodMovimento     : Integer;
    _CodCliente       : Integer;
    _CodTransp        : Integer;
    _TipoFrete        : String;
    _DadosAdic1       : String;
    _DadosAdic2       : String;
    _DadosAdic3       : String;
    _DadosAdic4       : String;
    _DadosAdic5       : String;
    _DadosAdic6       : String;
    _XMLNFE           : PChar;
    _vBCICMS          : Real;
    _vICMS            : Real;
    _BCST             : Real;
    _ST               : Real;
    _vProdutos        : Real;
    _vFrete           : Real;
    _vSeguro          : Real;
    _vDesconto        : Real;
    _vOutro           : Real;
    _vIpi             : Real;
    _vPis             : Real;
    _vCofins          : Real;
    _vNF              : Real;
    _ProtocoloEnv     : String;
    _NumRecibo        : String;
    _ProtocoloCanc    : String;
    _Quantidade       : Real;
    _Marca            : String;
    _PesoBruto        : Real;
    _PesoLiquido      : Real;
    _Especie          : String;
    _Numero           : Real;
    _DtaSistema       : TDateTime;
    _CFOP             : String;
    _NomeTransp       : String;
    _PlacaTransp      : String;
    _CNPJTransp       : String;
    _EndTransp        : String;
    _CidadeTransp     : String;
    _UFTransp         : String;
    _UFVeicTransp     : String;
    _IE               : String;
    _NotaMae          : Integer;
    _PesoRemessa      : Real;
    _Status           : String;

    {STATUS - String(1)
    IMPRESSA - String(1)
    SELECIONOU - String(1)
    ID_GUIA - Integer}

  public
    property NUMNF            : Integer read getNUMNF write setNUMNF;
    property Notafiscal       : String read getNotafiscal write setNotafiscal;
    property NatOpera         : String read getNatOpera write setNatOpera;
    property Serie            : String read getSerie write setSerie;
    property DEmiss           : TDateTime read getDEmiss write setDEmiss;
    property DEntSai          : TDateTime read getDEntSai write setDEntSai;
    property HEntSai          : TDateTime read getHEntSai write setHEntSai;
    property TpEntSai         : Integer read getTpEntSai write setTpEntSai;
    property RefComplementar  : String read getRefComplementar write setRefComplementar;
    property CodVenda         : Integer read getCodVenda write setCodVenda;
    property CodMovimento     : Integer read getCodMovimento write setCodMovimento;
    property CodCliente       : Integer read getCodCliente write setCodCliente;
    property CodTransp        : Integer read getCodTransp write setCodTransp;
    property TipoFrete        : String read getTipoFrete write setTipoFrete;
    property DadosAdic1       : String read getDadosAdic1 write setDadosAdic1;
    property DadosAdic2       : String read getDadosAdic2 write setDadosAdic2;
    property DadosAdic3       : String read getDadosAdic3 write setDadosAdic3;
    property DadosAdic4       : String read getDadosAdic4 write setDadosAdic4;
    property DadosAdic5       : String read getDadosAdic5 write setDadosAdic5;
    property DadosAdic6       : String read getDadosAdic6 write setDadosAdic6;
    property XMLNFE           : PChar read getXMLNFE write setXMLNFE;
    property vBCICMS          : Real read getvBCICMS write setvBCICMS;
    property vICMS            : Real read getvICMS write setvICMS;
    property BCST             : Real read getBCST write setBCST;
    property ST               : Real read getST write setST;
    property vProdutos        : Real read getvProdutos write setvProdutos;
    property vFrete           : Real read getvFrete write setvFrete;
    property vSeguro          : Real read getvSeguro write setvSeguro;
    property vDesconto        : Real read getvDesconto write setvDesconto;
    property vOutro           : Real read getvOutro write setvOutro;
    property vIpi             : Real read getvIpi write setvIpi;
    property vPis             : Real read getvPis write setvPis;
    property vCofins          : Real read getvCofins write setvCofins;
    property vNF              : Real read getvNF write setvNF;
    property ProtocoloEnv     : String read getProtocoloEnv write setProtocoloEnv;
    property NumRecibo        : String read getNumRecibo write setNumRecibo;
    property ProtocoloCanc    : String read getProtocoloCanc write setProtocoloCanc;
    property Quantidade       : Real read getQuantidade write setQuantidade;
    property PesoBruto        : Real read getPesoBruto write setPesoBruto;
    property PesoLiquido      : Real read getPesoLiquido write setPesoLiquido;
    property PesoRemessa      : Real read getPesoRemessa write setPesoRemessa;
    property Numero           : Real read getNumero write setNumero;
    property DtaSistema       : TDateTime read getDtaSistema write setDtaSistema;
    property UFTransp         : String read getUFTransp write setUFTransp;
    property UFVeicTransp     : String read getUFVeicTransp write setUFVeicTransp;
    property Especie          : String read getEspecie write setEspecie;
    property Marca            : String read getMarca write setMarca;
    property IE               : String read getIE write setIE;
    property NotaMae          : Integer read getNotaMae write setNotaMae;
    property CFOP             : String read getCFOP write setCFOP;
    property NomeTransp       : String read getNomeTransp write setNomeTransp;
    property PlacaTransp      : String read getPlacaTransp write setPlacaTransp;
    property CNPJTransp       : String read getCNPJTransp write setCNPJTransp;
    property EndTransp        : String read getEndTransp write setEndTransp;
    property CidadeTransp     : String read getCidadeTransp write setCidadeTransp;
    property Natureza         : Integer read getNatureza write setNatureza;
    property UF               : String read getUF write setUF;
    property Status           : String read getStatus write setStatus;

    function getObject(Id: Integer): Boolean;
    function delObject(Id: Integer): Boolean;
    function insObject(): Boolean;
    function updObject(Id: Integer): Boolean;

end;


implementation

uses SysUtils, Classes, DBXpress, UDm, UDmnf, StdCtrls, ExtCtrls, DB, Math, Dialogs,
  Variants;

{ TuNFClasse }

function TuNFClasse.getNUMNF: Integer;
begin
  Result := _NUMNF;
end;

function TuNFClasse.getNotaFiscal: String;
begin
  Result := _NotaFiscal;
end;

function TuNFClasse.getNatOpera: String;
begin
  Result := _NatOpera;
end;

function TuNFClasse.getSerie: String;
begin
  Result := _Serie;
end;

function TuNFClasse.getDEmiss : TDateTime;
begin
  Result := _DEmiss;
end;

function TuNFClasse.getDEntSai: TDateTime;
begin
  Result := _DEntSai;
end;

function TuNFClasse.getHEntSai: TDateTime;
begin
  Result := _HEntSai;
end;

function TuNFClasse.gettpEntSai: Integer;
begin
  Result := _tpEntSai;
end;


function TuNFClasse.getBCST: Real;
begin
  Result := _BCST;
end;

function TuNFClasse.getCodCliente: Integer;
begin
  Result := _CodCliente;
end;

function TuNFClasse.getCodMovimento: Integer;
begin
  Result := _CodMovimento;
end;

function TuNFClasse.getCodTransp: Integer;
begin
  Result := _CodTransp;
end;

function TuNFClasse.getCodVenda: Integer;
begin
  Result := _CodVenda;
end;

function TuNFClasse.getDadosAdic1: String;
begin
  Result := _DadosAdic1;
end;

function TuNFClasse.getDadosAdic2: String;
begin
  Result := _DadosAdic2;
end;

function TuNFClasse.getDadosAdic3: String;
begin
  Result := _DadosAdic3;
end;

function TuNFClasse.getDadosAdic4: String;
begin
  Result := _DadosAdic4;
end;

function TuNFClasse.getDadosAdic5: String;
begin
  Result := _DadosAdic5;
end;

function TuNFClasse.getDadosAdic6: String;
begin
  Result := _DadosAdic6;
end;

function TuNFClasse.getNUMRECIBO: String;
begin
  Result := _NumRecibo;
end;

function TuNFClasse.getPROTOCOLOCANC: String;
begin
  Result := _ProtocoloCanc;
end;

function TuNFClasse.getPROTOCOLOENV: String;
begin
  Result := _ProtocoloEnv;
end;

function TuNFClasse.getRefComplementar: String;
begin
  Result := _RefComplementar;
end;

function TuNFClasse.getST: Real;
begin
  Result := _ST;
end;

function TuNFClasse.getTipoFrete: String;
begin
  Result := _TipoFrete;
end;

function TuNFClasse.getvBCICMS: Real;
begin
  Result := _vBCICMS;
end;

function TuNFClasse.getvCofins: Real;
begin
  Result := _vCofins;
end;

function TuNFClasse.getvDesconto: Real;
begin
  Result := _vDesconto;
end;

function TuNFClasse.getvFrete: Real;
begin
  Result := _vFrete;
end;

function TuNFClasse.getvICMS: Real;
begin
  Result := _vICMS;
end;

function TuNFClasse.getvIpi: Real;
begin
  Result := _vIpi;
end;

function TuNFClasse.getvNF: Real;
begin
  Result := _vNF;
end;

function TuNFClasse.getvOutro: Real;
begin
  Result := _vOutro;
end;

function TuNFClasse.getvPis: Real;
begin
  Result := _vPis;
end;

function TuNFClasse.getvProdutos: Real;
begin
  Result := _vProdutos;
end;

function TuNFClasse.getvSeguro: Real;
begin
  Result := _vSeguro;
end;

function TuNFClasse.getXMLNFE: PChar;
begin
  Result := _XMLNFE;
end;

procedure TuNFClasse.setNUMNF(const Value: Integer);
begin
  _NUMNF := Value;
end;

procedure TuNFClasse.setNotaFiscal(const Value: String);
begin
  _NotaFiscal := Value;
end;

procedure TuNFClasse.setBCST(const Value: Real);
begin
  _BCST := Value;
end;

procedure TuNFClasse.setCodCliente(const Value: Integer);
begin
  _CodCliente := Value;
end;

procedure TuNFClasse.setCodMovimento(const Value: Integer);
begin
  _CodMovimento := Value;
end;

procedure TuNFClasse.setCodTransp(const Value: Integer);
begin
  _CodTransp := Value;
end;

procedure TuNFClasse.setCodVenda(const Value: Integer);
begin
  _CodVenda := Value;
end;

procedure TuNFClasse.setDadosAdic1(const Value: String);
begin
  _DadosAdic1 := Value;
end;

procedure TuNFClasse.setDadosAdic2(const Value: String);
begin
  _DadosAdic2 := Value;
end;

procedure TuNFClasse.setDadosAdic3(const Value: String);
begin
  _DadosAdic3 := Value;
end;

procedure TuNFClasse.setDadosAdic4(const Value: String);
begin
  _DadosAdic4 := Value;
end;

procedure TuNFClasse.setDadosAdic5(const Value: String);
begin
  _DadosAdic5 := Value;
end;

procedure TuNFClasse.setDadosAdic6(const Value: String);
begin
  _DadosAdic6 := Value;
end;

procedure TuNFClasse.setDEmiss(const Value: TDateTime);
begin
  _DEmiss := Value;
end;

procedure TuNFClasse.setDEntSai(const Value: TDateTime);
begin
  _DEntSai := Value;
end;

procedure TuNFClasse.setHEntSai(const Value: TDateTime);
begin
  _HEntSai := Value;
end;

procedure TuNFClasse.setNatOpera(const Value: String);
begin
  _NatOpera := Value;
end;

procedure TuNFClasse.setNumRecibo(const Value: String);
begin
  _NumRecibo := Value;
end;

procedure TuNFClasse.setProtocoloCanc(const Value: String);
begin
  _ProtocoloCanc := Value;
end;

procedure TuNFClasse.setProtocoloEnv(const Value: String);
begin
  _ProtocoloEnv := Value;
end;

procedure TuNFClasse.setRefComplementar(const Value: String);
begin
  _RefComplementar := Value;
end;

procedure TuNFClasse.setSerie(const Value: String);
begin
  _Serie := Value;
end;

procedure TuNFClasse.setST(const Value: Real);
begin
  _ST := Value;
end;

procedure TuNFClasse.setTipoFrete(const Value: String);
begin
  _TipoFrete := Value;
end;

procedure TuNFClasse.setTpEntSai(const Value: Integer);
begin
  _TpEntSai := Value;
end;

procedure TuNFClasse.setvBCICMS(const Value: Real);
begin
  _vBCICMS := Value;
end;

procedure TuNFClasse.setvCofins(const Value: Real);
begin
  _vCofins := Value;
end;

procedure TuNFClasse.setvDesconto(const Value: Real);
begin
  _vDesconto := Value;
end;

procedure TuNFClasse.setvFrete(const Value: Real);
begin
  _vFrete := Value;
end;

procedure TuNFClasse.setvICMS(const Value: Real);
begin
  _vICMS := Value;
end;

procedure TuNFClasse.setvIpi(const Value: Real);
begin
  _vIpi := Value;
end;

procedure TuNFClasse.setvNF(const Value: Real);
begin
  _vNF := Value;
end;

procedure TuNFClasse.setvOutro(const Value: Real);
begin
  _vOutro := Value;
end;

procedure TuNFClasse.setvPis(const Value: Real);
begin
  _vProdutos := Value;
end;

procedure TuNFClasse.setvProdutos(const Value: Real);
begin
  _vProdutos := Value;
end;

procedure TuNFClasse.setvSeguro(const Value: Real);
begin
  _vSeguro := Value;
end;

procedure TuNFClasse.setXMLNFE(const Value: PChar);
begin
  _XMLNFE := Value;
end;

function TuNFClasse.getCFOP: String;
begin
  Result := _CFOP;
end;

function TuNFClasse.getCidadeTransp: String;
begin
  Result := _CidadeTransp;
end;

function TuNFClasse.getCNPJTransp: String;
begin
  Result := _CNPJTransp;
end;

function TuNFClasse.getDtaSistema: TDateTime;
begin
  Result := _DtaSistema;
end;

function TuNFClasse.getEndTransp: String;
begin
  Result := _EndTransp;
end;

function TuNFClasse.getEspecie: String;
begin
  Result := _Especie;
end;

function TuNFClasse.getIE: String;
begin
  Result := _IE;
end;

function TuNFClasse.getMarca: String;
begin
  Result := _Marca;
end;

function TuNFClasse.getNomeTransp: String;
begin
  Result := _NomeTransp;
end;

function TuNFClasse.getNotaMae: Integer;
begin
  Result := _NotaMae;
end;

function TuNFClasse.getNumero: Real;
begin
  Result := _Numero;
end;

function TuNFClasse.getPesoBruto: Real;
begin
  Result := _PesoBruto;
end;

function TuNFClasse.getPesoLiquido: Real;
begin
  Result := _PesoLiquido;
end;

function TuNFClasse.getPesoRemessa: Real;
begin
  Result := _PesoRemessa;
end;

function TuNFClasse.getPlacaTransp: String;
begin
  Result := _PlacaTransp;
end;

function TuNFClasse.getQuantidade: Real;
begin
  Result := _Quantidade;
end;

function TuNFClasse.getUFTransp: String;
begin
  Result := _UFTransp;
end;

function TuNFClasse.getUFVeicTransp: String;
begin
  Result := _UFVeicTransp;
end;

function TuNFClasse.getStatus: String;
begin
  Result := _Status;
end;

procedure TuNFClasse.setCFOP(const Value: String);
begin
  _CFOP := Value;
end;

procedure TuNFClasse.setCidadeTransp(const Value: String);
begin
  _CidadeTransp := Value;
end;

procedure TuNFClasse.setCNPJTransp(const Value: String);
begin
  _CNPJTransp := Value;
end;

procedure TuNFClasse.setDtaSistema(const Value: TDateTime);
begin
  _DtaSistema := Value;
end;

procedure TuNFClasse.setEndTransp(const Value: String);
begin
  _EndTransp := Value;
end;

procedure TuNFClasse.setEspecie(const Value: String);
begin
  _Especie := Value;
end;

procedure TuNFClasse.setIE(const Value: String);
begin
  _IE := Value;
end;

procedure TuNFClasse.setMarca(const Value: String);
begin
  _Marca := Value;
end;

procedure TuNFClasse.setNomeTransp(const Value: String);
begin
  _NomeTransp := Value;
end;

procedure TuNFClasse.setNotaMae(const Value: Integer);
begin
  _NotaMae := Value;
end;

procedure TuNFClasse.setNumero(const Value: Real);
begin
  _Numero := Value;
end;

procedure TuNFClasse.setPesoBruto(const Value: Real);
begin
  _PesoBruto := Value;
end;

procedure TuNFClasse.setPesoLiquido(const Value: Real);
begin
  _PesoLiquido := Value;
end;

procedure TuNFClasse.setPesoRemessa(const Value: Real);
begin
  _PesoRemessa := Value;
end;

procedure TuNFClasse.setPlacaTransp(const Value: String);
begin
  _PlacaTransp := Value;
end;

procedure TuNFClasse.setQuantidade(const Value: Real);
begin
  _Quantidade := Value;
end;

procedure TuNFClasse.setUFTransp(const Value: String);
begin
  _UFTransp := Value;
end;

procedure TuNFClasse.setUFVeicTransp(const Value: String);
begin
  _UFVeicTransp := Value;
end;

function TuNFClasse.getNatureza: Integer;
begin
  Result := _Natureza;
end;

function TuNFClasse.getUF: String;
begin
  Result := _UF;
end;

procedure TuNFClasse.setNatureza(const Value: Integer);
begin
  _Natureza := Value;
end;

procedure TuNFClasse.setUF(const Value: String);
begin
  _UF := Value;
end;

procedure TuNFClasse.setStatus(const Value: String);
begin
  _Status := Value;
end;

function TuNFClasse.getObject(Id: Integer): Boolean;
begin
  Try
    Result := False;
    if (Null = Id) then
      Exit;

    with DM.QryGetObject do begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM NOTAFISCAL WHERE NUMNF =:CODIGO';
      ParamByName('CODIGO').AsInteger := Id;
      Open;
      First;
    end;

    if dm.QryGetObject.RecordCount > 0 then begin
      Self._NUMNF := dm.QryGetObject.FieldByName('NUMNF').AsInteger;
      Self._Notafiscal := dm.QryGetObject.FieldByName('NOTASERIE').AsString;
      Self._Natureza := dm.QryGetObject.FieldByName('NATUREZA').AsInteger;
      Self._UF := dm.QryGetObject.FieldByName('UF').AsString;
      Self._Serie := dm.QryGetObject.FieldByName('SERIE').AsString;
      Self._DEmiss := dm.QryGetObject.FieldByName('DTAEMISSAO').AsDateTime;
      Self._DEntSai := dm.QryGetObject.FieldByName('DTASAIDA').AsDateTime;
      Self._HEntSai := dm.QryGetObject.FieldByName('HORASAIDA').AsDateTime;
      Self._RefComplementar := dm.QryGetObject.FieldByName('IDCOMPLEMENTAR').AsString;
      Self._CodVenda := dm.QryGetObject.FieldByName('CODVENDA').AsInteger;
      Self._CodCliente := dm.QryGetObject.FieldByName('CODCLIENTE').AsInteger;
      Self._CodTransp := dm.QryGetObject.FieldByName('CODTRANSP').AsInteger;
      Self._TipoFrete := dm.QryGetObject.FieldByName('FRETE').AsString;
      Self._DadosAdic1 := dm.QryGetObject.FieldByName('CORPONF1').AsString;
      Self._DadosAdic2 := dm.QryGetObject.FieldByName('CORPONF2').AsString;
      Self._DadosAdic3 := dm.QryGetObject.FieldByName('CORPONF3').AsString;
      Self._DadosAdic4 := dm.QryGetObject.FieldByName('CORPONF4').AsString;
      Self._DadosAdic5 := dm.QryGetObject.FieldByName('CORPONF5').AsString;
      Self._DadosAdic6 := dm.QryGetObject.FieldByName('CORPONF6').AsString;
      Self._vBCICMS := dm.QryGetObject.FieldByName('BASE_ICMS').AsFloat;
      Self._vICMS := dm.QryGetObject.FieldByName('VALOR_ICMS').AsFloat;
      Self._BCST := dm.QryGetObject.FieldByName('BASE_ICMS_SUBST').AsFloat;
      Self._ST := dm.QryGetObject.FieldByName('VALOR_ICMS_SUBST').AsFloat;
      Self._vProdutos := dm.QryGetObject.FieldByName('VALOR_PRODUTO').AsFloat;
      Self._vFrete := dm.QryGetObject.FieldByName('VALOR_FRETE').AsFloat;
      Self._vSeguro := dm.QryGetObject.FieldByName('VALOR_SEGURO').AsFloat;
      Self._vDesconto := dm.QryGetObject.FieldByName('VALOR_DESCONTO').AsFloat;
      Self._vOutro := dm.QryGetObject.FieldByName('OUTRAS_DESP').AsFloat;
      Self._vIpi := dm.QryGetObject.FieldByName('VALOR_IPI').AsFloat;
      Self._vPis := dm.QryGetObject.FieldByName('VALOR_PIS').AsFloat;
      Self._vCofins := dm.QryGetObject.FieldByName('VALOR_COFINS').AsFloat;
      Self._vNF := dm.QryGetObject.FieldByName('VALOR_TOTAL_NOTA').AsFloat;
      Self._ProtocoloEnv := dm.QryGetObject.FieldByName('PROTOCOLOENV').AsString;
      Self._NumRecibo := dm.QryGetObject.FieldByName('NUMRECIBO').AsString;
      Self._ProtocoloCanc := dm.QryGetObject.FieldByName('PROTOCOLOCANC').AsString;
      Self._Quantidade := dm.QryGetObject.FieldByName('QUANTIDADE').AsFloat;
      Self._Marca := dm.QryGetObject.FieldByName('MARCA').AsString;
      Self._PesoBruto := dm.QryGetObject.FieldByName('PESOBRUTO').AsFloat;
      Self._PesoLiquido := dm.QryGetObject.FieldByName('PESOLIQUIDO').AsFloat;
      Self._Especie := dm.QryGetObject.FieldByName('ESPECIE').AsString;
      Self._Numero := dm.QryGetObject.FieldByName('NUMERO').AsFloat;
      Self._DtaSistema := dm.QryGetObject.FieldByName('DATA_SISTEMA').AsDateTime;
      Self._CFOP := dm.QryGetObject.FieldByName('CFOP').AsString;
      Self._NomeTransp := dm.QryGetObject.FieldByName('NOMETRANSP').AsString;
      Self._PlacaTransp := dm.QryGetObject.FieldByName('PLACATRANSP').AsString;
      Self._CNPJTransp := dm.QryGetObject.FieldByName('CNPJ_CPF').AsString;
      Self._EndTransp := dm.QryGetObject.FieldByName('END_TRANSP').AsString;
      Self._UFTransp := dm.QryGetObject.FieldByName('UF_TRANSP').AsString;
      Self._UFVeicTransp := dm.QryGetObject.FieldByName('UF_VEICULO_TRANSP').AsString;
      Self._IE := dm.QryGetObject.FieldByName('UF_VEICULO_TRANSP').AsString;
      Self._NotaMae := dm.QryGetObject.FieldByName('NOTAMAE').AsInteger;
      Self._PesoRemessa := dm.QryGetObject.FieldByName('PESOREMESSA').AsFloat;
      Self._CidadeTransp := dm.QryGetObject.FieldByName('CIDADE_TRANSP').AsString;
      Self._Status := dm.QryGetObject.FieldByName('STATUS').AsString;
//      Self._XMLNFE := dm.QryGetObject.FieldByName('XMLNFE').AsblFloat;

      //PEGA O CODIGO DO MOVIMENTO DA NOTA
      with DM.QryGetObject do
      begin
        Close;
        SQL.Clear;
        if( self._Natureza = 20) then
          SQL.Text := 'SELECT * FROM COMPRA WHERE CODCOMPRA = :CODIGO'
        else
          SQL.Text := 'SELECT * FROM VENDA WHERE CODVENDA = :CODIGO';
        ParamByName('CODIGO').AsInteger := Self._CodVenda;
        Open;
        First;
      end;
      Self._CodMovimento := dm.QryGetObject.FieldByName('CODMOVIMENTO').AsInteger;

      Result := True;
    end
    else
      ShowMessage('Registro não encontrado!');
  Except
    on E : Exception do
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
  end;
end;

function TuNFClasse.delObject(Id: Integer): Boolean;
begin
  try
    Result := False;

    with dm.QryGetObject do begin
      Close;
      SQL.Clear;
      SQL.Text := 'DELETE FROM NOTAFISCAL WHERE NUMNF =:CODIGO' +
        ' AND STATUS = ' + QuotedStr('P'); // Provisorio

      ParamByName('CODIGO').AsInteger := Self._NUMNF;
      ExecSQL;
    end;

    Result := True;
  Except
    on E : Exception do
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
  end;
end;

function TuNFClasse.insObject: Boolean;
begin
  Try
    Result := False;

    with dm.QryGetObject do begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NATUREZA, QUANTIDADE, MARCA, PESOBRUTO, PESOLIQUIDO, ESPECIE, DTAEMISSAO, '+
      'DTASAIDA, UF, CODVENDA, CODTRANSP, NUMERO, NOTAFISCAL, HORASAIDA, DATA_SISTEMA, BASE_ICMS, VALOR_ICMS, BASE_ICMS_SUBST, ' +
      'VALOR_ICMS_SUBST, VALOR_PRODUTO, VALOR_FRETE, VALOR_SEGURO, OUTRAS_DESP, VALOR_IPI, VALOR_TOTAL_NOTA, CORPONF1, CORPONF2, ' +
      'CORPONF3, CORPONF4, CORPONF5, CORPONF6, CFOP, CODCLIENTE, NOMETRANSP, PLACATRANSP, CNPJ_CPF, END_TRANSP, ' +
      'CIDADE_TRANSP, UF_VEICULO_TRANSP, UF_TRANSP, FRETE, INSCRICAOESTADUAL, STATUS, SERIE, PROTOCOLOENV, NUMRECIBO, ' +
      'PROTOCOLOCANC, PESOREMESSA, NOTAMAE, VALOR_PIS, VALOR_COFINS, VALOR_DESCONTO, IDCOMPLEMENTAR, XMLNFE) ' +
      'values (:NOTASERIE, :NUMNF, :NATUREZA, :QUANTIDADE, :MARCA, :PESOBRUTO, :PESOLIQUIDO, :ESPECIE, :DTAEMISSAO, ' +
      ':DTASAIDA, :UF, :CODVENDA, :CODTRANSP, :NUMERO, :NOTAFISCAL, :HORASAIDA, :DATA_SISTEMA, :BASE_ICMS, :VALOR_ICMS, :BASE_ICMS_SUBST, ' +
      ':VALOR_ICMS_SUBST, :VALOR_PRODUTO, :VALOR_FRETE, :VALOR_SEGURO, :OUTRAS_DESP, :VALOR_IPI, :VALOR_TOTAL_NOTA, :CORPONF1, :CORPONF2, ' +
      ':CORPONF3, :CORPONF4, :CORPONF5, :CORPONF6, :CFOP, :CODCLIENTE, :NOMETRANSP, :PLACATRANSP, :CNPJ_CPF, :END_TRANSP, ' +
      ':CIDADE_TRANSP, :UF_VEICULO_TRANSP, :UF_TRANSP, :FRETE, :INSCRICAOESTADUAL, :STATUS, :SERIE, :PROTOCOLOENV, :NUMRECIBO, ' +
      ':PROTOCOLOCANC, :PESOREMESSA, :NOTAMAE, :VALOR_PIS, :VALOR_COFINS, :VALOR_DESCONTO, :IDCOMPLEMENTAR, :XMLNFE)';

      ParamByName('NOTASERIE').AsString := Self._NotaFiscal;
      ParamByName('NATUREZA').AsInteger := Self._Natureza;
      ParamByName('QUANTIDADE').AsFloat := Self._Quantidade;
      ParamByName('MARCA').AsString := Self._Marca;
      ParamByName('PESOBRUTO').AsFloat := Self._PesoBruto;
      ParamByName('PESOLIQUIDO').AsFloat := Self._PesoLiquido;
      ParamByName('ESPECIE').AsString := Self._Especie;
      ParamByName('DTAEMISSAO ').AsDate := Self._DEmiss;
      ParamByName('DTASAIDA').AsDate := Self._DEntSai;
      ParamByName('UF').AsString := Self._UF;
      ParamByName('CODVENDA').AsInteger := Self._CodVenda;
      ParamByName('CODTRANSP').AsInteger := Self._CodTransp;
      ParamByName('NUMERO').AsFloat := Self._Numero;
      ParamByName('NOTAFISCAL').AsInteger := StrToInt(Self._Notafiscal);
      ParamByName('HORASAIDA').AsTime := Self._HEntSai;
      ParamByName('DATA_SISTEMA').AsDate := Self._DtaSistema;
      ParamByName('BASE_ICMS').AsFloat := Self._vBCICMS;
      ParamByName('VALOR_ICMS').AsFloat := Self._vICMS;
      ParamByName('BASE_ICMS_SUBST').AsFloat := Self._BCST;
      ParamByName('VALOR_ICMS_SUBST').AsFloat := Self._ST;
      ParamByName('VALOR_PRODUTO').AsFloat := Self._vProdutos;
      ParamByName('VALOR_FRETE').AsFloat := Self._vFrete;
      ParamByName('VALOR_SEGURO').AsFloat := Self._vSeguro;
      ParamByName('OUTRAS_DESP').AsFloat := Self._vOutro;
      ParamByName('VALOR_IPI').AsFloat := Self._vIpi;
      ParamByName('VALOR_TOTAL_NOTA').AsFloat := Self._vNF;
      ParamByName('CORPONF1').AsString := Self._DadosAdic1;
      ParamByName('CORPONF2').AsString := Self._DadosAdic2;
      ParamByName('CORPONF3').AsString := Self._DadosAdic3;
      ParamByName('CORPONF4').AsString := Self._DadosAdic4;
      ParamByName('CORPONF5').AsString := Self._DadosAdic5;
      ParamByName('CORPONF6').AsString := Self._DadosAdic6;
      ParamByName('CFOP').AsString := Self._CFOP;
      ParamByName('CODCLIENTE').AsInteger := Self._CodCliente;
      ParamByName('NOMETRANSP').AsString := Self._NomeTransp;
      ParamByName('PLACATRANSP').AsString := Self._PlacaTransp;
      ParamByName('CNPJ_CPF').AsString := Self._CNPJTransp;
      ParamByName('END_TRANSP').AsString := Self._EndTransp;
      ParamByName('CIDADE_TRANSP').AsString := Self._CidadeTransp;
      ParamByName('UF_VEICULO_TRANSP').AsString := Self._UFVeicTransp;
      ParamByName('UF_TRANSP').AsString := Self._UFTransp;
      ParamByName('FRETE').AsString := Self._TipoFrete;
      ParamByName('INSCRICAOESTADUAL').AsString := Self._IE;
      ParamByName('STATUS').AsString := Self._Status;
      ParamByName('SERIE').AsString := Self._Serie;
      ParamByName('PROTOCOLOENV').AsString := Self._ProtocoloEnv;
      ParamByName('NUMRECIBO').AsString := Self._NumRecibo;
      ParamByName('PROTOCOLOCANC').AsString := Self._ProtocoloCanc;
      ParamByName('PESOREMESSA').AsFloat := Self._PesoRemessa;
      ParamByName('NOTAMAE').AsInteger := Self._NotaMae;
      ParamByName('VALOR_PIS').AsFloat := Self._vPis;
      ParamByName('VALOR_COFINS').AsFloat := Self._vCofins;
      ParamByName('VALOR_DESCONTO').AsFloat := Self._vDesconto;
      ParamByName('IDCOMPLEMENTAR').AsString := Self._RefComplementar;
      ParamByName('XMLNFE').AsBlob := Self._XMLNFE;

      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      ParamByName('NUMNF').AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;

      ExecSQL;
    end;
    Result := True;

  Except
    on E : Exception do
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
    end;
end;

function TuNFClasse.updObject(Id: Integer): Boolean;
begin
  Try
    Result := False;

    with dm.QryGetObject do begin
      Close;
      SQL.Clear;
      SQL.Text := 'UPDATE NOTAFISCAL set NOTASERIE = :NOTASERIE, NUMNF = :NUMNF, NATUREZA = :NATUREZA, QUANTIDADE = :QUANTIDADE, MARCA = :MARCA ' +
      'PESOBRUTO = :PESOBRUTO, PESOLIQUIDO = :PESOLIQUIDO, ESPECIE = :ESPECIE, DTAEMISSAO = :DTAEMISSAO, DTASAIDA = :DTASAIDA, '+
      'UF = :UF, CODVENDA = :CODVENDA, CODTRANSP = :CODTRANSP, NUMERO = :NUMERO, NOTAFISCAL = :NOTAFISCAL, HORASAIDA = :HORASAIDA, '+
      'DATA_SISTEMA = :DATA_SISTEMA, BASE_ICMS = :BASE_ICMS, VALOR_ICMS = :VALOR_ICMS, BASE_ICMS_SUBST = :BASE_ICMS_SUBST, '+
      'VALOR_ICMS_SUBST = :VALOR_ICMS_SUBST, VALOR_PRODUTO = :VALOR_PRODUTO, VALOR_FRETE = :VALOR_FRETE, VALOR_SEGURO = :VALOR_SEGURO, '+
      'OUTRAS_DESP, :OUTRAS_DESP, VALOR_IPI = :VALOR_IPI, VALOR_TOTAL_NOTA = :VALOR_TOTAL_NOTA, CORPONF1 = :CORPONF1, '+
      'CORPONF2 = :CORPONF2, CORPONF3 = :CORPONF3, CORPONF4 = :CORPONF4, CORPONF5 = :CORPONF5, CORPONF6 = :CORPONF6, CFOP = :CFOP, '+
      'CODCLIENTE = :CODCLIENTE, NOMETRANSP = :NOMETRANSP, PLACATRANSP = :PLACATRANSP, CNPJ_CPF = :CNPJ_CPF, END_TRANSP = :END_TRANSP, '+
      'CIDADE_TRANSP = :CIDADE_TRANSP, UF_VEICULO_TRANSP = :UF_VEICULO_TRANSP, UF_TRANSP = :UF_TRANSP, FRETE = :FRETE, '+
      'INSCRICAOESTADUAL = :INSCRICAOESTADUAL, STATUS = :STATUS, SERIE = :SERIE, PROTOCOLOENV = :PROTOCOLOENV, NUMRECIBO = :NUMRECIBO, '+
      'PROTOCOLOCANC = :PROTOCOLOCANC, PESOREMESSA = :PESOREMESSA, NOTAMAE = :NOTAMAE, VALOR_PIS = :VALOR_PIS, '+
      'VALOR_COFINS = :VALOR_COFINS, VALOR_DESCONTO = :VALOR_DESCONTO, IDCOMPLEMENTAR = :IDCOMPLEMENTAR, XMLNFE = :XMLNFE;';

      ParamByName('NOTASERIE').AsString := Self._NotaFiscal;
      ParamByName('NUMNF').AsInteger := Self._NUMNF;
      ParamByName('NATUREZA').AsInteger := Self._Natureza;
      ParamByName('QUANTIDADE').AsFloat := Self._Quantidade;
      ParamByName('MARCA').AsString := Self._Marca;
      ParamByName('PESOBRUTO').AsFloat := Self._PesoBruto;
      ParamByName('PESOLIQUIDO').AsFloat := Self._PesoLiquido;
      ParamByName('ESPECIE').AsString := Self._Especie;
      ParamByName('DTAEMISSAO ').AsDate := Self._DEmiss;
      ParamByName('DTASAIDA').AsDate := Self._DEntSai;
      ParamByName('UF').AsString := Self._UF;
      ParamByName('CODVENDA').AsInteger := Self._CodVenda;
      ParamByName('CODTRANSP').AsInteger := Self._CodTransp;
      ParamByName('NUMERO').AsFloat := Self._Numero;
      ParamByName('NOTAFISCAL').AsInteger := StrToInt(Self._Notafiscal);
      ParamByName('HORASAIDA').AsTime := Self._HEntSai;
      ParamByName('DATA_SISTEMA').AsDate := Self._DtaSistema;
      ParamByName('BASE_ICMS').AsFloat := Self._vBCICMS;
      ParamByName('VALOR_ICMS').AsFloat := Self._vICMS;
      ParamByName('BASE_ICMS_SUBST').AsFloat := Self._BCST;
      ParamByName('VALOR_ICMS_SUBST').AsFloat := Self._ST;
      ParamByName('VALOR_PRODUTO').AsFloat := Self._vProdutos;
      ParamByName('VALOR_FRETE').AsFloat := Self._vFrete;
      ParamByName('VALOR_SEGURO').AsFloat := Self._vSeguro;
      ParamByName('OUTRAS_DESP').AsFloat := Self._vOutro;
      ParamByName('VALOR_IPI').AsFloat := Self._vIpi;
      ParamByName('VALOR_TOTAL_NOTA').AsFloat := Self._vNF;
      ParamByName('CORPONF1').AsString := Self._DadosAdic1;
      ParamByName('CORPONF2').AsString := Self._DadosAdic2;
      ParamByName('CORPONF3').AsString := Self._DadosAdic3;
      ParamByName('CORPONF4').AsString := Self._DadosAdic4;
      ParamByName('CORPONF5').AsString := Self._DadosAdic5;
      ParamByName('CORPONF6').AsString := Self._DadosAdic6;
      ParamByName('CFOP').AsString := Self._CFOP;
      ParamByName('CODCLIENTE').AsInteger := Self._CodCliente;
      ParamByName('NOMETRANSP').AsString := Self._NomeTransp;
      ParamByName('PLACATRANSP').AsString := Self._PlacaTransp;
      ParamByName('CNPJ_CPF').AsString := Self._CNPJTransp;
      ParamByName('END_TRANSP').AsString := Self._EndTransp;
      ParamByName('CIDADE_TRANSP').AsString := Self._CidadeTransp;
      ParamByName('UF_VEICULO_TRANSP').AsString := Self._UFVeicTransp;
      ParamByName('UF_TRANSP').AsString := Self._UFTransp;
      ParamByName('FRETE').AsString := Self._TipoFrete;
      ParamByName('INSCRICAOESTADUAL').AsString := Self._IE;
      ParamByName('STATUS').AsString := Self._Status;
      ParamByName('SERIE').AsString := Self._Serie;
      ParamByName('PROTOCOLOENV').AsString := Self._ProtocoloEnv;
      ParamByName('NUMRECIBO').AsString := Self._NumRecibo;
      ParamByName('PROTOCOLOCANC').AsString := Self._ProtocoloCanc;
      ParamByName('PESOREMESSA').AsFloat := Self._PesoRemessa;
      ParamByName('NOTAMAE').AsInteger := Self._NotaMae;
      ParamByName('VALOR_PIS').AsFloat := Self._vPis;
      ParamByName('VALOR_COFINS').AsFloat := Self._vCofins;
      ParamByName('VALOR_DESCONTO').AsFloat := Self._vDesconto;
      ParamByName('IDCOMPLEMENTAR').AsString := Self._RefComplementar;
      ParamByName('XMLNFE').AsBlob := Self._XMLNFE;

      ExecSQL;
    end;
    Result := True;

  Except
    on E : Exception do
      ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
    end;

end;

end.
