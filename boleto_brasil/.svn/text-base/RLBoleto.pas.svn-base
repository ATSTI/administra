unit RLBoleto;                                

interface

uses
   Windows, classes, SysUtils, Graphics, {NMSMTP,} extctrls, RLReport,
   BoletoLayout, Controls, Forms
  {$IFDEF VER150}
     , Variants, MaskUtils, contnrs
  {$ELSE}
   {$IFDEF VER140}
      , Variants, MaskUtils, contnrs
   {$ELSE}
      {$IFDEF VER130}
         , Mask, contnrs
      {$ELSE}
         , Mask
      {$ENDIF}
   {$ENDIF}
  {$ENDIF}
  {$IFDEF VER185} //Delphi 2007
    ,Contnrs, MaskUtils
  {$ENDIF}
   ;

type
   {Classe para gerar código de barras para boletos}
   TRLCobCodBar = class
   private
      fCodigo: string; {Dados que serão incluídos no código de barras}
      function GetLinhaDigitavel : string; {Retorna a representação numérica do código de barras}
      function Define2de5 : string; {Define o formato do código de barras INTERCALADO 2 DE 5, retornando a seqüência de 0 e 1 que será usada para gerar a imagem do código de barras}
      function GetImagem: TImage;
   public
      property Codigo    : string  read fCodigo write fCodigo;
      property LinhaDigitavel : string read GetLinhaDigitavel;
      property Imagem    : TImage read GetImagem;
   end;

   {TrlEndereco representa o endereço de cedentes ou sacados}
   TEstado = string[2];
   TCEP = string[8];

   TrlEndereco = class(TPersistent)
   public
      fRua,
      fNumero,
      fComplemento,
      fBairro,
      fCidade,
      fEMail : string;
      fEstado : TEstado;
      fCEP : TCEP;
      procedure Assign(AEndereco: TrlEndereco); reintroduce;
   published
      property Rua : string read fRua write fRua;
      property Numero : string read fNumero write fNumero;
      property Complemento : string read fComplemento write fComplemento;
      property Bairro : string read fBairro write fBairro;
      property Cidade : string read fCidade write fCidade;
      property Estado : TEstado read fEstado write fEstado;
      property CEP : TCEP read fCEP write fCEP;
      property EMail : string read fEMail write fEMail;
   end;

   {Informações sobre o banco}
   TRLBanco = class(TPersistent)
   private
      fCodigo : string; {Código do banco na câmara de compensação}
      fImagem : Byte;
      procedure SetCodigo(ACodigoBanco : string);
      function GetDigito : string; {Retorna o dígito do código do banco}
      function GetNome   : string; {Retorna o nome do banco}
   public
      procedure   Assign(ABanco: TRLBanco); reintroduce;
   published
      property Codigo : string read fCodigo write SetCodigo;
      property Digito : string read GetDigito;
      property Nome   : string read GetNome;
      property ImagemBanco : Byte read fImagem;
   end;

   {Dados da conta bancária de cedentes ou sacados}
   TRLContaBancaria = class(TPersistent)
   public
      fBanco : TRLBanco; {Banco onde a pessoa tem conta}
      fCodigoAgencia, {Código da agência}
      fDigitoAgencia, {Dígito verificador do número da agência}
      fNumeroConta,         {Número da conta}
      fDigitoConta,   {Dígito verificador do número da conta}
      fConvenio, {Banco do Brasil, usado nas carteiras 16, 17, 18}
      fNomeCliente : string; {Nome do cliente titular da conta}
      constructor Create;
      destructor  Destroy; override;
      procedure Assign(AContaBancaria: TRLContaBancaria); reintroduce;
   published
      property Banco : TRLBanco read fBanco write fBanco;
      property CodigoAgencia : string read fCodigoAgencia write fCodigoAgencia;
      property DigitoAgencia : string read fDigitoAgencia write fDigitoAgencia;
      property NumeroConta : string read fNumeroConta write fNumeroConta;
      property DigitoConta : string read fDigitoConta write fDigitoConta;
      property Convenio: String Read fConvenio write fConvenio;
      property NomeCliente : string read fNomeCliente write fNomeCliente;
   end;

   TTipoInscricao = (tiPessoaFisica, tiPessoaJuridica, tiOutro);

   {Dados sobre os cedentes ou sacados}
   TrlPessoa = class(TPersistent)
   private
      fTipoInscricao: TTipoInscricao;
      fNumeroCPFCGC ,
      fNome         ,
      fSacadorAvaLista: string;
      fEndereco     : TrlEndereco;
      fContaBancaria: TRLContaBancaria;
   public
      constructor Create;
      destructor  Destroy; override;
      procedure   Assign(APessoa: TrlPessoa); reintroduce;
   published
      property TipoInscricao: TTipoInscricao read fTipoInscricao write fTipoInscricao;
      property NumeroCPFCGC : string read fNumeroCPFCGC write fNumeroCPFCGC;
      property Nome         : string read fNome write fNome;
      property SacadorAvalista: string read fSacadorAvaLista write fSacadorAvaLista;
      property Endereco     : TrlEndereco read fEndereco write fEndereco;
      property ContaBancaria: TRLContaBancaria read fContaBancaria write fContaBancaria;
   end;

   {Dados completos sobre o cedente - Classe derivada de TrlPessoa}
   TrlCedente = class(TrlPessoa)
   private
      fCodigoCedente,
      fDigitoCodigoCedente : string;
   public
      procedure Assign(ACedente: TrlCedente);
   published
      property CodigoCedente       : string read fCodigoCedente write fCodigoCedente;
      property DigitoCodigoCedente : string read fDigitoCodigoCedente write fDigitoCodigoCedente;
   end;

   {Especifica o tipo de documento que gerou o título}
   TEspecieDocumento =
   (
      edAluguel,
      edApoliceSeguro,
      edCheque,
      edContrato,
      edContribuicaoConfederativa,
      edCosseguros,
      edDividaAtivaEstado,
      edDividaAtivaMunicipio,
      edDividaAtivaUniao,
      edDuplicataMercantil,
      edDuplicataMercantialIndicacao,
      edDuplicataRural,
      edDuplicataServico,
      edDuplicataServicoIndicacao,
      edFatura,
      edLetraCambio,
      edMensalidadeEscolar,
      edNotaCreditoComercial,
      edNotaCreditoExportacao,
      edNotaCreditoIndustrial,
      edNotaCreditoRural,
      edNotaDebito,
      edNotaPromissoria,
      edNotaPromissoriaRural,
      edNotaSeguro,
      edOutros,
      edParcelaConsorcio,
      edRecibo,
      edTriplicataMercantil,
      edTriplicataServico,
      edWarrant
   );

   TAceiteDocumento = (adSim, adNao);

   {Indica quem emite o boleto: banco ou cliente}
   TEmissaoBoleto =
   (
      ebBancoEmite,
      ebClienteEmite,
      ebBancoReemite,
      ebBancoNaoReemite
   );

   {Tipos de ocorrências permitidas no arquivos remessa / retorno}
   TTipoOcorrencia =
   (
      {Ocorrências para arquivo remessa}
      toRemessaRegistrar, {Registrar o título no banco}
      toRemessaBaixar, {Baixar o título no banco}
      toRemessaDebitarEmConta,
      toRemessaConcederAbatimento,
      toRemessaCancelarAbatimento,
      toRemessaConcederDesconto,
      toRemessaCancelarDesconto,
      toRemessaAlterarVencimento,
      toRemessaProtestar,
      toRemessaCancelarInstrucaoProtesto,
      toRemessaDispensarJuros,
      toRemessaAlterarNomeEnderecoSacado,
      toRemessaAlterarNumeroControle,
      toRemessaOutrasOcorrencias,

      {Ocorrências para arquivo retorno}
      toRetornoRegistroConfirmado,
      toRetornoRegistroRecusado,
      toRetornoComandoRecusado,
      toRetornoLiquidado,
      toRetornoLiquidadoEmCartorio,
      toRetornoLiquidadoParcialmente,
      toRetornoLiquidadoSaldoRestante,
      toRetornoLiquidadoSemRegistro,
      toRetornoLiquidadoPorConta,
      toRetornoBaixaSolicitada,
      toRetornoBaixado,
      toRetornoBaixadoPorDevolucao,
      toRetornoBaixadoFrancoPagamento,
      toRetornoBaixaPorProtesto,
      toRetornoRecebimentoInstrucaoBaixar,
      toRetornoBaixaOuLiquidacaoEstornada,
      toRetornoTituloEmSer,
      toRetornoRecebimentoInstrucaoConcederAbatimento,
      toRetornoAbatimentoConcedido,
      toRetornoRecebimentoInstrucaoCancelarAbatimento,
      toRetornoAbatimentoCancelado,
      toRetornoRecebimentoInstrucaoConcederDesconto,
      toRetornoDescontoConcedido,
      toRetornoRecebimentoInstrucaoCancelarDesconto,
      toRetornoDescontoCancelado,
      toRetornoRecebimentoInstrucaoAlterarDados,
      toRetornoDadosAlterados,
      toRetornoRecebimentoInstrucaoAlterarVencimento,
      toRetornoVencimentoAlterado,
      toRetornoAlteracaoDadosNovaEntrada,
      toRetornoAlteracaoDadosBaixa,
      toRetornoRecebimentoInstrucaoProtestar,
      toRetornoProtestado,
      toRetornoRecebimentoInstrucaoSustarProtesto,
      toRetornoProtestoSustado,
      toRetornoInstrucaoProtestoRejeitadaSustadaOuPendente,
      toRetornoDebitoEmConta,
      toRetornoRecebimentoInstrucaoAlterarNomeSacado,
      toRetornoNomeSacadoAlterado,
      toRetornoRecebimentoInstrucaoAlterarEnderecoSacado,
      toRetornoEnderecoSacadoAlterado,
      toRetornoEncaminhadoACartorio,
      toRetornoRetiradoDeCartorio,
      toRetornoRecebimentoInstrucaoDispensarJuros,
      toRetornoJurosDispensados,
      toRetornoManutencaoTituloVencido,
      toRetornoRecebimentoInstrucaoAlterarTipoCobranca,
      toRetornoTipoCobrancaAlterado,
      toRetornoDespesasProtesto,
      toRetornoDespesasSustacaoProtesto,
      toRetornoDebitoCustasAntecipadas,
      toRetornoCustasCartorioDistribuidor,
      toRetornoCustasEdital,
      toRetornoProtestoOuSustacaoEstornado,
      toRetornoDebitoTarifas,
      toRetornoAcertoDepositaria,
      toRetornoOutrasOcorrencias
   );

   {Será usado basicamente quando for Banco do Brasil}
   TLayoutNN = (lnN11, lnN16, lnN17, lnC7_N10, lnC4_N7, lnC6_N5);

   {Representa um título e todas as rotinas associadas}
   TRLBTitulo = class(TComponent)
   private
      fPrintDialog: Boolean;
      fTipoOcorrencia : TTipoOcorrencia; {Tipo de ocorrência: registro de título, liquidação normal, pedido de baixa, etc...}
      fOcorrenciaOriginal : string; {Indica o código da ocorrência no banco}
      fDescricaoOcorrenciaOriginal : string;
      fMotivoRejeicaoComando : string; {Indica o código do motivo porque o título / comando foi recusado. Usado apenas para receber informações do banco}
      fDescricaoMotivoRejeicaoComando : string;
      fCedente : TrlCedente; {Aquele que emitiu o título}
      fSacado : TrlPessoa; {Devedor}
      fLocalPagamento, {Local onde o título deverá ser pago}
      fSeuNumero, {Número que identifica o título na empresa}
      fNossoNumero, {Número que identifica o título no banco}
      fNumeroDocumento, {Número do documento que gerou o título (número da nota fiscal, por exemplo)}
      fCarteira : string; {Carteira do título, conforme informado pelo banco}
      fAceiteDocumento : TAceiteDocumento;
      fEspecieDocumento: TEspecieDocumento; {Tipo de documento que gerou o título}
      fDataProcessamento, {Data em que o boleto bancário foi gerado}
      fDataDocumento, {Data da emissão do documento que gerou o título (data da emissão da nota fiscal, por exemplo)}
      fDataVencimento, {Data do vencimento do título}
      fDataOcorrencia, {Data da ocorrência em questão (pagamento do título, recebimento de instrução, etc)}
      fDataCredito, {Data em que o banco liberará o dinheiro para o cedente}
      fDataAbatimento, {Data até a qual deverá ser concedido abatimento}
      fDataDesconto, {Data até a qual deverá ser concedido desconto}
      fDataMoraJuros, {Data a partir da qual deverão ser cobrados juros / mora}
      fDataProtesto, {Data em que o título deverá ser protestado em caso de falta de pagamento}
      fDataBaixa: TDateTime; {Data em que o título deverá ser baixado}
      fValorDocumento, {Valor do título}
      fValorDespesaCobranca, {Valor que o banco cobrou pelo serviço de cobrança}
      fValorAbatimento, {Valor do abatimento a conceder / concedido ao sacado}
      fValorDesconto, {Valor do desconto diário a conceder (remessa) ou desconto total concedido (retorno) ao sacado}
      fValorMoraJuros, {Valor dos juros / multa cobrados do sacado}
      fValorIOF, {Valor do Imposto sobre Operações Financeiras}
      fValorOutrasDespesas, {Valor de outras despesas cobradas pelo banco: protesto de títulos, por exemplo}
      fValorOutrosCreditos, {Valor de outros créditos que o banco repassará ao cedente}
      fValorRecebido: Currency; {Valor total recebido informado pelo banco}
      fReferencia: ShortString;
      fInstrucoes : TStringList; {Instruções incluídas no título}
      fEmissaoBoleto: TEmissaoBoleto; {Indica quem emite o boleto: banco ou cliente}
      fLayoutNN: TLayoutNN; {Tipo do visual do nosso numero, usado praticamente só pelo banco do brasil}
      fImagemEmpresa: TRLImage; {Imagem da empresa no boleto}
      nQtdeBoletos : Integer;
      Agrupamento: array of TLayoutBoleto;
      fVersao: ShortString;
      procedure SetInstrucoes(Texto: TStringList);
      function   GerarCodigoBarra : TrlCobCodBar; {Retorna um objeto do tipo TrlCobCodBar contendo linha digitável e imagem do código de barras baseados nos dados do título}
      function   CalcularDigitoNossoNumero : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure  PrepararBoleto(ABoleto: TLayoutBoleto); {Atribui valores aos campos do boleto antes que ele seja impresso }
      function   GetImagemBoleto : TImage; {Gera a imagem do boleto}
      function   GetImagemFichaCompensacao : TImage; {Gera a imagem da ficha de compensação}
   public
      constructor Create(AOwner: TComponent); override;
      destructor  Destroy; override;
      procedure   Assign(ATitulo: TRLBTitulo); reintroduce;
{      procedure   EnviarPorEMail(Host, LoginUsuario : string; Porta :integer; Assunto : string; Mensagem : TStringList);}

      procedure   Visualizar;
      procedure   Preparar;
      procedure   Imprimir;

      property CodigoBarra : TrlCobCodBar read GerarCodigoBarra;
      property DigitoNossoNumero : string read CalcularDigitoNossoNumero;
      property ImagemBoleto : TImage read GetImagemBoleto;
      property ImagemFichaCompensacao : TImage read GetImagemFichaCompensacao;
   published
      property PrintDialog: Boolean read fPrintDialog write fPrintDialog;
      property TipoOcorrencia : TTipoOcorrencia read fTipoOcorrencia write fTipoOcorrencia;
      property OcorrenciaOriginal : string read fOcorrenciaOriginal write fOcorrenciaOriginal;
      property DescricaoOcorrenciaOriginal : string read fDescricaoOcorrenciaOriginal write fDescricaoOcorrenciaOriginal;
      property MotivoRejeicaoComando : string read fMotivoRejeicaoComando write fMotivoRejeicaoComando;
      property DescricaoMotivoRejeicaoComando : string read fDescricaoMotivoRejeicaoComando write fDescricaoMotivoRejeicaoComando;
      property LocalPagamento : string read fLocalPagamento write fLocalPagamento;
      property Cedente : TrlCedente read fCedente write fCedente;
      property Sacado : TrlPessoa read fSacado write fSacado;
      property SeuNumero : string read fSeuNumero write fSeuNumero;
      property NossoNumero : string read fNossoNumero write fNossoNumero;
      property NumeroDocumento : string read fNumeroDocumento write fNumeroDocumento;
      property Carteira : string read fCarteira write fCarteira;
      property AceiteDocumento : TAceiteDocumento read fAceiteDocumento write fAceiteDocumento;
      property EspecieDocumento: TEspecieDocumento read fEspecieDocumento write fEspecieDocumento;
      property DataProcessamento : TDateTime read fDataProcessamento write fDataProcessamento;
      property DataDocumento : TDateTime read fDataDocumento write fDataDocumento;
      property DataVencimento : TDateTime read fDataVencimento write fDataVencimento;
      property Referencia: ShortString read fReferencia write fReferencia;
      property DataOcorrencia : TDateTime read fDataOcorrencia write fDataOcorrencia;
      property DataCredito : TDateTime read fDataCredito write fDataCredito;
      property DataAbatimento : TDateTime read fDataAbatimento write fDataAbatimento;
      property DataDesconto : TDateTime read fDataDesconto write fDataDesconto;
      property DataMoraJuros : TDateTime read fDataMoraJuros write fDataMoraJuros;
      property DataProtesto : TDateTime read fDataProtesto write fDataProtesto;
      property DataBaixa : TDateTime read fDataBaixa write fDataBaixa;
      property ValorDocumento : Currency read fValorDocumento write fValorDocumento;
      property ValorDespesaCobranca : Currency read fValorDespesaCobranca write fValorDespesaCobranca;
      property ValorAbatimento : Currency read fValorAbatimento write fValorAbatimento;
      property ValorDesconto : Currency read fValorDesconto write fValorDesconto;
      property ValorMoraJuros : Currency read fValorMoraJuros write fValorMoraJuros;
      property ValorIOF : Currency read fValorIOF write fValorIOF;
      property ValorOutrasDespesas : Currency read fValorOutrasDespesas write fValorOutrasDespesas;
      property ValorOutrosCreditos : Currency read fValorOutrosCreditos write fValorOutrosCreditos;
      property ValorRecebido: Currency read fValorRecebido write fValorRecebido;
      property Instrucoes : TStringList read fInstrucoes write SetInstrucoes;
      property EmissaoBoleto : TEmissaoBoleto read fEmissaoBoleto write fEmissaoBoleto;
      property LayoutNN: TLayoutNN read fLayoutNN write fLayoutNN;
      property ImagemEmpresa : TRLImage read fImagemEmpresa write fImagemEmpresa;
      property Versao: ShortString read fVersao write fVersao;
   end;

{$IFNDEF VER120}

   {Representa uma lista de títulos - Objetos do tipo RLBTitulo}

   TRLTituloList = class(TObjectList)
   protected
      function    GetItem(Index: Integer): TRLBTitulo; {Retorna o objeto TRLBTitulo que está na posição definida por Index}
      procedure   SetItem(Index: Integer; ATitulo : TRLBTitulo); {Altera o objeto TRLBTitulo que está na posição definida por Index}
   public
      constructor Create;
      function    Add(ATitulo : TRLBTitulo) : integer; {Insere o título no final da coleção}
      function    Remove(ATitulo : TRLBTitulo): Integer; {Remove da coleção o título}
      function    IndexOf(ATitulo : TRLBTitulo): Integer; {Retorna a posição onde está localizado o título na coleção}
      function    FindInstanceOf(AClass: TClass; AExact: Boolean = True; AStartAt: Integer = 0): Integer;
      procedure   Insert(Index: Integer; ATitulo : TRLBTitulo); {Insere o título no final da coleção na posição indicada por Index}
      property    Items[Index : integer] : TRLBTitulo read GetItem write SetItem; default;
   end;

   {Indica o layout do arquivo remessa / retorno, incluindo tamanho de cada registro, o
    os tipos de registros permitidos e o significado dos campos contidos no arquivo}
   TLayoutArquivo = (laCNAB240, laCNAB400, laOutro);

   {Indica o tipo de movimento desejado}
   TTipoMovimento  = (tmRemessa, tmRetorno, tmRemessaTeste, tmRetornoTeste, tmOutro);

   {Representa um conjunto de títulos que serão tratados juntos em alguma rotina.
    Por exemplo: processamento de arquivo retorno e geração de arquivo remessa}
   TRLBRemessa = class(TComponent)
   private
      fNomeArquivo : string; {Nome do arquivo remessa ou retorno}
      fNumeroArquivo : Integer; {Número seqüencial do arquivo remessa ou retorno}
      fDataArquivo : TDateTime; {Data da geração do arquivo remessa ou retorno}
      fLayoutArquivo: TLayoutArquivo; {Layout do arquivo remessa / retorno}
      fTipoMovimento: TTipoMovimento; {Tipo de movimento desejado: remessa, retorno, etc...}
      fTitulos : TRLTituloList; {Títulos incluídos no arquivo remessa ou retorno}
   public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
      function LerRetorno : boolean; {Lê o arquivo retorno recebido do banco}
      function GerarRemessa : boolean; {Gerar arquivo remessa para enviar ao banco}
      function GerarRelatorio : TStringList; {Gera as informações que serão apresentadas na propriedade Relatório}
      property Titulos       : TRLTituloList read fTitulos write fTitulos;
      property Relatorio     : TStringList read GerarRelatorio;
   published
      property NomeArquivo   : string read fNomeArquivo write fNomeArquivo;
      property NumeroArquivo : integer read fNumeroArquivo write fNumeroArquivo;
      property DataArquivo   : TDateTime read fDataArquivo write fDataArquivo;
      property LayoutArquivo : TLayoutArquivo read fLayoutArquivo write fLayoutArquivo;
      property TipoMovimento : TTipoMovimento read fTipoMovimento write fTipoMovimento;
   end;

{$ENDIF}

procedure Register; {Registra os componentes no Delphi}
function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
function FormatarComMascara(StringFormato, Texto: string): string;
function Modulo10(Valor: String) : string;
function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
function CalcularFatorVencimento(DataDesejada : TDateTime) : string;

{$IFDEF VER130}
{Calcula a diferença de dias entre duas datas. No Delphi 6 a função já existe na unit DATEUTILS}
function DaysBetween(DataMaior, DataMenor: TDateTime): integer;
{$ENDIF}

implementation

uses RLCob001 ;

Procedure Register;
begin
   RegisterComponents('RLBoleto',[TRLBTitulo]);
{$IFNDEF VER120}
   RegisterComponents('RLBoleto',[TRLBRemessa]);
{$ENDIF}
end;

{Rotinas auxiliares}

function CalcularFatorVencimento(DataDesejada : TDateTime) : string;
{O fator de vencimento é a quantidade de dias entre 07/Nov/1997 e a data de vencimento do título}
begin
   Result := IntToStr( Trunc(DataDesejada - EncodeDate(1997,10,07)));
end;

function Modulo10(Valor: String) : string;
{
   Rotina usada para cálculo de alguns dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se por 2121212...
   Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
   dígito, deve-se somar cada um dos dígitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
   Divide-se a soma por 10.
   Faz-se a operação 10-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo10.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Auxiliar : string;
   Contador, Peso : integer;
   Digito : integer;
begin
   Auxiliar := '';
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
      if Peso = 1 then
         Peso := 2
      else
         Peso := 1;
   end;

   Digito := 0;
   for Contador := 1 to Length(Auxiliar) do
   begin
      Digito := Digito + StrToInt(Auxiliar[Contador]);
   end;
   Digito := 10 - (Digito mod 10);
   if (Digito > 9) then
      Digito := 0;
   Result := IntToStr(Digito);
end;

function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
{
   Rotina muito usada para calcular dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se pela seqüência de pesos 2, 3, 4 ... até BASE.
   Por exemplo: se a base for 9, os pesos serão 2,3,4,5,6,7,8,9,2,3,4,5...
   Se a base for 7, os pesos serão 2,3,4,5,6,7,2,3,4...
   Soma-se cada um dos subprodutos.
   Divide-se a soma por 11.
   Faz-se a operação 11-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo11.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Soma : integer;
   Contador, Peso, Digito : integer;
begin
   Soma := 0;
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
      if Peso < Base then
         Peso := Peso + 1
      else
         Peso := 2;
   end;

   if Resto then
      Result := IntToStr(Soma mod 11)
   else
   begin
      Digito := 11 - (Soma mod 11);
      if (Digito > 9) then
         Digito := 0;
      Result := IntToStr(Digito);
   end
end;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto for MAIOR que o desejado, eliminar últimos caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(AnsiUpperCase(Texto));
   TamanhoTexto := Length(Texto);
{$WARNINGS OFF}
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'Á','À','Â','Ä','Ã' : Texto[i] := 'A';
            'É','È','Ê','Ë' : Texto[i] := 'E';
            'Í','Ì','Î','Ï' : Texto[i] := 'I';
            'Ó','Ò','Ô','Ö','Õ' : Texto[i] := 'O';
            'Ú','Ù','Û','Ü' : Texto[i] := 'U';
            'Ç' : Texto[i] := 'C';
            'Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;
   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;

function FormatarComMascara(StringFormato, Texto: string): string;
begin
   Result := FormatMaskText(StringFormato,Texto);
end;

{$IFDEF VER130}
{Calcula a diferença entre duas datas. No Delphi 6 a função já existe na unit DATEUTILS}
function DaysBetween(DataMaior, DataMenor: TDateTime): integer;
begin
   Result := Trunc(DataMaior - DataMenor);
end;
{$ENDIF}

{TrlCobCodBar}

function TrlCobCodBar.Define2de5 : string;
{Traduz dígitos do código de barras para valores de 0 e 1, formando um código do tipo Intercalado 2 de 5}
var
   CodigoAuxiliar : string;
   Start   : string;
   Stop    : string;
   T2de5   : array[0..9] of string;
   Codifi  : string;
   I       : integer;

begin
   Result := 'Erro';
   Start    := '0000';
   Stop     := '100';
   T2de5[0] := '00110';
   T2de5[1] := '10001';
   T2de5[2] := '01001';
   T2de5[3] := '11000';
   T2de5[4] := '00101';
   T2de5[5] := '10100';
   T2de5[6] := '01100';
   T2de5[7] := '00011';
   T2de5[8] := '10010';
   T2de5[9] := '01010';

   { Digitos }
   for I := 1 to length(Codigo) do
   begin
      if pos(Codigo[I],'0123456789') <> 0 then
         Codifi := Codifi + T2de5[StrToInt(Codigo[I])]
      else
         Exit;
   end;

   {Se houver um número ímpar de dígitos no Código, acrescentar um ZERO no início}
   if odd(length(Codigo)) then
      Codifi := T2de5[0] + Codifi;

   {Intercalar números - O primeiro com o segundo, o terceiro com o quarto, etc...}
   I := 1;
   CodigoAuxiliar := '';
   while I <= (length(Codifi) - 9)do
   begin
      CodigoAuxiliar := CodigoAuxiliar + Codifi[I] + Codifi[I+5] + Codifi[I+1] + Codifi[I+6] + Codifi[I+2] + Codifi[I+7] + Codifi[I+3] + Codifi[I+8] + Codifi[I+4] + Codifi[I+9];
      I := I + 10;
   end;

   { Acrescentar caracteres Start e Stop }
   Result := Start + CodigoAuxiliar + Stop;
end;


function TrlCobCodBar.GetLinhaDigitavel : string;
{
   A linha digitável é baseada na informações do código de barras.
   As informações que fazem parte do código de barras são:
   Posição         Conteúdo
   1 a 3           Número do banco
   4               Código da Moeda - 9 para Real
   5               Digito verificador do Código de Barras
   6 a 19          Valor (12 inteiros e 2 decimais)
   20 a 44         Campo Livre definido por cada banco
}
var
   p1, p2, p3, p4, p5, p6,
   Campo1, Campo2, Campo3, Campo4, Campo5 : string;
begin
   {
      Campo 1 - composto pelo código do banco, código da moeda, as cinco primeiras posições
      do campo livre e DV (modulo10) desse campo
   }
   p1 := Copy(Codigo,1,4);
   p2 := Copy(Codigo,20,5);
   p3 := Modulo10(p1+p2);
   p4 := p1+p2+p3;
   p5 := Copy(p4,1,5);
   p6 := Copy(p4,6,5);
   Campo1 := p5+'.'+p6;

   {
      Campo 2 - composto pelas posiçoes 6 a 15 do campo livre
      e DV (modulo10) deste campo
   }
   p1 := Copy(Codigo,25,10);
   p2 := Modulo10(p1);
   p3 := p1+p2;
   p4 := Copy(p3,1,5);
   p5 := Copy(p3,6,6);
   Campo2 := p4+'.'+p5;

   {
      Campo 3 - composto pelas posicoes 16 a 25 do campo livre
      e DV (modulo10) deste campo
   }
   p1 := Copy(Codigo,35,10);
   p2 := Modulo10(p1);
   p3 := p1+p2;
   p4 := Copy(p3,1,5);
   p5 := Copy(p3,6,6);
   Campo3 := p4+'.'+p5;

   {
      Campo 4 - digito verificador do codigo de barras
   }
   Campo4 := Copy(Codigo,5,1);

   {
      Campo 5 - composto pelo valor nominal do documento, sem indicacao
      de zeros a esquerda e sem edicao (sem ponto e virgula). Quando se
      tratar de valor zerado, a representacao deve ser 000 (tres zeros).
   }
   Campo5 := Copy(Codigo,6,14);

   Result := Campo1 + ' ' + Campo2 + ' ' + Campo3 + ' ' + Campo4 + ' ' + Campo5;
end;

function TrlCobCodBar.GetImagem : TImage;
const
   CorBarra           = clBlack;
   CorEspaco          = clWhite;
   LarguraBarraFina   = 1;
   LarguraBarraGrossa = 3;
   AlturaBarra        = 50;
var
   X            : integer;
   Col          : integer;
   Lar          : integer;
   CodigoAuxiliar : string;
begin
   CodigoAuxiliar := Define2de5;
   Result := TImage.Create(nil);
   Result.Height := AlturaBarra;
   Result.Width := 0;
   For X := 1 to Length(CodigoAuxiliar) do
      case CodigoAuxiliar[X] of
         '0' : Result.Width := Result.Width + LarguraBarraFina;
         '1' : Result.Width := Result.Width + LarguraBarraGrossa;
      end;

   Col    := 0;

   if CodigoAuxiliar <> 'Erro' then
   begin
      for X := 1 to length(CodigoAuxiliar) do
      begin
         {Desenha barra}
         with Result.Canvas do
         begin
            if Odd(X) then
               Pen.Color := CorBarra
            else
               Pen.Color := CorEspaco;

            if CodigoAuxiliar[X] = '0' then
            begin
               for Lar := 1 to LarguraBarraFina do
               begin
                  MoveTo(Col,0);
                  LineTo(Col,AlturaBarra);
                  Col := Col + 1;
               end;
            end
            else
            begin
               for Lar := 1 to LarguraBarraGrossa do
               begin
                  MoveTo(Col,0);
                  LineTo(Col,AlturaBarra);
                  Col := Col + 1;
               end;
            end;
         end;
      end;
   end
   else
      Result.Canvas.TextOut(0,0,'Erro');
end;

{TrlEndereco}
procedure TrlEndereco.Assign(AEndereco: TrlEndereco);
begin
   Rua := AEndereco.Rua;
   Numero := AEndereco.Numero;
   Complemento := AEndereco.Complemento;
   Bairro := AEndereco.Bairro;
   Cidade := AEndereco.Cidade;
   Estado := AEndereco.Estado;
   CEP := AEndereco.CEP;
   EMail := AEndereco.EMail;
end;

{TRLBanco}
procedure TRLBanco.SetCodigo(ACodigoBanco: string);
begin
   ACodigoBanco := Formatar(ACodigoBanco,3,false,'0');
   if (ACodigoBanco = '000') then
      fCodigo := ''
   else if (ACodigoBanco <> fCodigo) then
      fCodigo := ACodigoBanco;
end;

procedure TRLBanco.Assign(ABanco : TRLBanco);
begin
   Codigo := ABanco.Codigo;
end;

function TRLBanco.GetDigito : string;
begin
  if Codigo = '' then
    Result := ''
  else if Codigo = '748' then
    Result := 'X'
  else
    Result := Modulo11(Codigo,9);
end;

function TRLBanco.GetNome : String;
var
   ACodigoBanco: string;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetNomeBanco: function: string of object;
   GetImagem: function: Byte of object;
begin
   ACodigoBanco := Formatar(Codigo,3,false,'0');
   GetNomeBanco := nil;
   GetImagem    := nil;
   AClasseBanco := GetClass('TRLBanco'+ACodigoBanco);
   if AClasseBanco <> nil then
   begin
      ABanco := AClasseBanco.Create;
      TRY
         @GetNomeBanco := ABanco.MethodAddress('GetNomeBanco');
         @GetImagem    := ABanco.MethodAddress('GetImagem');
         if @GetNomeBanco <> nil then
         begin
            Result  :=  GetNomeBanco;
            fImagem := GetImagem;
         end
         else
            Raise Exception.CreateFmt('O nome do banco %s não está disponível',[ACodigoBanco]);
         ABanco.Free;
      EXCEPT
         ABanco.Free;
         Raise;
      END;
   end
   else
      Raise Exception.CreateFmt('O banco %s não está disponível',[ACodigoBanco]);
end;

{TRLContaBancaria}
constructor TRLContaBancaria.Create;
begin
   inherited Create;
   Banco := TRLBanco.Create;
end;

destructor TRLContaBancaria.Destroy;
begin
   Banco.Destroy;
   inherited Destroy;
end;

procedure TRLContaBancaria.Assign(AContaBancaria: TRLContaBancaria);
begin
   Banco.Assign(AContaBancaria.Banco);
   CodigoAgencia := AContaBancaria.CodigoAgencia;
   DigitoAgencia := AContaBancaria.DigitoAgencia;
   NumeroConta := AContaBancaria.NumeroConta;
   DigitoConta := AContaBancaria.DigitoConta;
   Convenio    := AContaBancaria.Convenio;
   NomeCliente := AContaBancaria.NomeCliente;
end;

{TrlPessoa}

constructor TrlPessoa.Create;
begin
   inherited Create;
   Endereco := TrlEndereco.Create;
   ContaBancaria := TRLContaBancaria.Create;
end;

destructor TrlPessoa.Destroy;
begin
   Endereco.Destroy;
   ContaBancaria.Destroy;
   inherited Destroy;
end;

procedure TrlPessoa.Assign(APessoa: TrlPessoa);
begin
   TipoInscricao := APessoa.TipoInscricao;
   NumeroCPFCGC := APessoa.NumeroCPFCGC;
   Nome := APessoa.Nome;
   Endereco.Assign(APessoa.Endereco);
   ContaBancaria.Assign(APessoa.ContaBancaria)
end;

procedure TrlCedente.Assign(ACedente: TrlCedente);
begin
   inherited Assign(ACedente);
   CodigoCedente := ACedente.CodigoCedente;
   DigitoCodigoCedente := ACedente.DigitoCodigoCedente;
end;

{TRLBTitulo}
constructor TRLBTitulo.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   fCedente := TrlCedente.Create;
   fSacado := TrlPessoa.Create;
   fInstrucoes := TStringList.Create;
   fLocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
   fOcorrenciaOriginal := '';
   fTipoOcorrencia := toRemessaRegistrar;
   fEspecieDocumento := edRecibo;
   fAceiteDocumento := adNao;
   fEmissaoBoleto := ebClienteEmite;
   fPrintDialog := True;
   nQtdeBoletos := -1;
   fVersao := '1.1.4';
end;

destructor TRLBTitulo.Destroy;
begin
   Cedente.Destroy;
   Sacado.Destroy;
   Instrucoes.Destroy;
   inherited Destroy;
end;

procedure TRLBTitulo.SetInstrucoes(Texto: TStringList);
begin
   fInstrucoes.Assign(Texto);
end;

procedure TRLBTitulo.Assign(ATitulo: TRLBTitulo);
begin
  PrintDialog := ATitulo.PrintDialog;
  OcorrenciaOriginal := ATitulo.OcorrenciaOriginal;
  DescricaoOcorrenciaOriginal := ATitulo.DescricaoOcorrenciaOriginal;
  TipoOcorrencia := ATitulo.TipoOcorrencia;
  MotivoRejeicaoComando := ATitulo.MotivoRejeicaoComando;
  DescricaoMotivoRejeicaoComando := ATitulo.DescricaoMotivoRejeicaoComando;
  Cedente.Assign(ATitulo.Cedente);
  Sacado.Assign(ATitulo.Sacado);
  LocalPagamento := ATitulo.LocalPagamento;
  SeuNumero := ATitulo.SeuNumero;
  LayoutNN  := ATitulo.LayoutNN;
  NossoNumero := ATitulo.NossoNumero;
  NumeroDocumento := ATitulo.NumeroDocumento;
  Carteira := ATitulo.Carteira;
  AceiteDocumento := ATitulo.AceiteDocumento;
  EspecieDocumento:= ATitulo.EspecieDocumento;
  DataProcessamento := ATitulo.DataProcessamento;
  DataDocumento := ATitulo.DataDocumento;
  DataVencimento := ATitulo.DataVencimento;
  Referencia := ATitulo.Referencia;
  DataOcorrencia := ATitulo.DataOcorrencia;
  DataCredito := ATitulo.DataCredito;
  DataAbatimento := ATitulo.DataAbatimento;
  DataDesconto := ATitulo.DataDesconto;
  DataMoraJuros := ATitulo.DataMoraJuros;
  DataProtesto := ATitulo.DataProtesto;
  DataBaixa := ATitulo.DataBaixa;
  ValorDocumento := ATitulo.ValorDocumento;
  ValorDespesaCobranca := ATitulo.ValorDespesaCobranca;
  ValorAbatimento := ATitulo.ValorAbatimento;
  ValorDesconto := ATitulo.ValorDesconto;
  ValorMoraJuros := ATitulo.ValorMoraJuros;
  ValorIOF := ATitulo.ValorIOF;
  ValorOutrasDespesas := ATitulo.ValorOutrasDespesas;
  ValorOutrosCreditos := ATitulo.ValorOutrosCreditos;
  ValorRecebido := ATitulo.ValorRecebido;
  Instrucoes.Assign(ATitulo.Instrucoes);
  EmissaoBoleto := ATitulo.EmissaoBoleto;
  ImagemEmpresa := ATitulo.ImagemEmpresa;
end;

function TRLBTitulo.CalcularDigitoNossoNumero : string;
var
  ACodigoBanco: string;
  AClasseBanco: TPersistentClass;
  ABanco: TPersistent;
  GetDigitoNossoNumero: function(ATitulo: TRLBTitulo): string of object;
begin
   ACodigoBanco := Formatar(Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
   GetDigitoNossoNumero := nil;
   AClasseBanco := GetClass('TRLBanco'+ACodigoBanco);
   if AClasseBanco <> nil then
   begin
      ABanco := AClasseBanco.Create;
      TRY
         @GetDigitoNossoNumero := ABanco.MethodAddress('CalcularDigitoNossoNumero');
         if @GetDigitoNossoNumero <> nil then
            Result :=  GetDigitoNossoNumero(Self)
         else
            Raise Exception.CreateFmt('O cálculo do dígito do nosso número para o banco %s não está disponível',[ACodigoBanco]);
         ABanco.Free;
      EXCEPT
         ABanco.Free;
         Raise;
      END;
   end
   else
      Raise Exception.CreateFmt('Os boletos para o banco %s não estão disponíveis',[ACodigoBanco]);
end;

function TRLBTitulo.GerarCodigoBarra : TrlCobCodBar;
var
   ACodigoBanco,
   ACodigoMoeda,
   ADigitoCodigoBarras,
   AFatorVencimento,
   AValorDocumento,
   ACampoLivre,
   ACodigoBarras: string;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetCampoLivreCodigoBarra: function(ATitulo: TRLBTitulo): string of object;
begin
   Result := TrlCobCodBar.Create;
   GetCampoLivreCodigoBarra := nil;

   {
    A primeira parte do código de barras é composta por:
    Código do banco (3 posições)
    Código da moeda = 9 (1 posição)
    Dígito do código de barras (1 posição) - Será calculado e incluído pelo componente
    Fator de vencimento (4 posições) - Obrigatório a partir de 03/07/2000
    Valor do documento (10 posições) - Sem vírgula decimal e com ZEROS à esquerda

    A segunda parte do código de barras é um campo livre, que varia de acordo
    com o banco
   }

   {Primeira parte do código de barras}
   ACodigoBanco := Formatar(Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
   ACodigoMoeda := '9';
   AFatorVencimento := Formatar(CalcularFatorVencimento(DataVencimento),4,false,'0');
   AValorDocumento := FormatCurr('0000000000',ValorDocumento*100); {Formata o valor com 10 dígitos, incluindo as casas decimais, mas não mostra o ponto decimal}

   {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}

   AClasseBanco := GetClass('TRLBanco'+ACodigoBanco);
   if AClasseBanco <> nil then
   begin
      ABanco := AClasseBanco.Create;
      TRY
         @GetCampoLivreCodigoBarra := ABanco.MethodAddress('GetCampoLivreCodigoBarra');
         if @GetCampoLivreCodigoBarra <> nil then
            ACampoLivre :=  GetCampoLivreCodigoBarra(Self)
         else
            Raise Exception.CreateFmt('A geração de código de barras para títulos do banco %s não está disponível',[ACodigoBanco]);
         ABanco.Free;
      EXCEPT
         ABanco.Free;
         Raise;
      END
   end
   else
      Raise Exception.CreateFmt('Os boletos para o banco %s não estão disponíveis',[ACodigoBanco]);

   {Calcula o dígito e completa o código de barras}
   ACodigoBarras := ACodigoBanco + ACodigoMoeda + AFatorVencimento + AValorDocumento + ACampoLivre;
   ADigitoCodigoBarras := Modulo11(ACodigoBarras,9);
   if ADigitoCodigoBarras = '0' then
      ADigitoCodigoBarras := '1';

   Result.Codigo := Copy(ACodigoBarras,1,4) + ADigitoCodigoBarras + Copy(ACodigoBarras,5,length(ACodigoBarras)-4);
end;

procedure TRLBTitulo.PrepararBoleto(ABoleto: TLayoutBoleto);
var
  AAgenciaCodigoCedente,
  ANossoNumero,
  ACarteira,
  AEspecieDocumento,
  ACodigoBanco: string;
  AInstrucoes: TStringList;
  AClasseBanco: TPersistentClass;
  ABanco: TPersistent;
  GetFormatoBoleto: procedure(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string) of object;
begin
  AInstrucoes := TStringList.Create;
  GetFormatoBoleto := nil;

  AAgenciaCodigoCedente := Cedente.ContaBancaria.CodigoAgencia + '/' + Cedente.CodigoCedente;
  ANossoNumero := NossoNumero + '-' + DigitoNossoNumero;
  ACarteira := Carteira;
  AEspecieDocumento := '';

  ACodigoBanco := Formatar(Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
  AClasseBanco := GetClass('TRLBanco'+ACodigoBanco);
  if AClasseBanco <> nil then
  begin
    ABanco := AClasseBanco.Create;
    try
      @GetFormatoBoleto := ABanco.MethodAddress('FormatarBoleto');
      if @GetFormatoBoleto <> nil then
        GetFormatoBoleto(Self,AAgenciaCodigoCedente,ANossoNumero,ACarteira, AEspecieDocumento);
      ABanco.Free;
      except
        ABanco.Free;
        raise;
      end
  end;
  if DataProtesto <> 0 then
    AInstrucoes.Add('Protestar em ' + FormatDateTime('dd/mm/yyyy',DataProtesto));

  if ValorAbatimento <> 0 then
    if DataAbatimento <> 0 then
      AInstrucoes.Add('Conceder abatimento de ' + FormatCurr('R$ #,##0.00',ValorAbatimento) + ' para pagamento até ' + FormatDateTime('dd/mm/yyyy',DataAbatimento))
    else
      AInstrucoes.Add('Conceder abatimento de ' + FormatCurr('R$ #,##0.00',ValorAbatimento) + ' para pagamento até ' + FormatDateTime('dd/mm/yyyy',DataVencimento));

  if ValorDesconto <> 0 then
    if DataDesconto <> 0 then
      AInstrucoes.Add('Conceder desconto de ' + FormatCurr('R$ #,##0.00',ValorDesconto) + ' por dia de antecipação para pagamento até ' + FormatDateTime('dd/mm/yyyy',DataDesconto))
    else
      AInstrucoes.Add('Conceder desconto de ' + FormatCurr('R$ #,##0.00',ValorDesconto) + ' por dia de antecipação');

  if ValorMoraJuros <> 0 then
    if DataMoraJuros <> 0 then
      AInstrucoes.Add('Cobrar juros de ' + FormatCurr('R$ #,##0.00',ValorMoraJuros) + ' por dia de atraso para pagamento a partir de ' + FormatDateTime('dd/mm/yyyy',DataMoraJuros))
    else
      AInstrucoes.Add('Cobrar juros de ' + FormatCurr('R$ #,##0.00',ValorMoraJuros) + ' por dia de atraso');

  AInstrucoes.AddStrings(Instrucoes);

  with ABoleto do
  begin
    LayoutBoleto.PrintDialog := PrintDialog;
    LayoutBoleto.Caption := 'Cobrança - ' + Cedente.ContaBancaria.Banco.Nome + ' - Sacado: ' + Sacado.Nome;
    {Primeira via do boleto}
  ///  ImageList.GetBitmap(Cedente.ContaBancaria.Banco.ImagemBanco,ABoleto.imgBanco1.Picture.Bitmap);
    if Cedente.ContaBancaria.Banco.Codigo = '033' then //Santander Banespa
  ///    txtNumeroBanco1.Caption := Cedente.ContaBancaria.Banco.Codigo
    else
  ///     txtNumeroBanco1.Caption := Cedente.ContaBancaria.Banco.Codigo + '-' + Cedente.ContaBancaria.Banco.Digito;
  ///  txtLocalPagamento1.Caption := AnsiUpperCase(LocalPagamento);
  ///  txtDataVencimento1.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
    txtNomeCedente1.Caption := AnsiUpperCase(Cedente.Nome);
  ///  txtCodigoCedente1.Caption := AAgenciaCodigoCedente;
  ///  txtNumeroDocumento1.Caption := NumeroDocumento;
  ///     txtDescricao.Caption := Referencia;
  ///  txtDataProcessamento1.Caption := FormatDateTime('dd/mm/yyyy',Now);
  ///  txtNossoNumero1.Caption := ANossoNumero;
  ///  txtEspecie1.Caption := 'R$';
  ///  txtValorDocumento1.Caption := FormatCurr('#,##0.00',ValorDocumento);
  ///  txtNomeSacado1.Caption := AnsiUpperCase(Sacado.Nome);
    {Segunda via do boleto}
    ImageList.GetBitmap(Cedente.ContaBancaria.Banco.ImagemBanco,imgBanco2.Picture.Bitmap);
    txtNumeroBanco2.Caption := Cedente.ContaBancaria.Banco.Codigo + '-' + Cedente.ContaBancaria.Banco.Digito;//txtNumeroBanco1.Caption;
    txtLocalPagamento2.Caption := AnsiUpperCase(LocalPagamento);
    txtDataVencimento2.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
    txtReferencia2.Caption := Referencia;
    txtNomeCedente2.Caption := AnsiUpperCase(Cedente.Nome);
    txtCodigoCedente2.Caption := AAgenciaCodigoCedente;
    txtDataDocumento2.Caption := FormatDateTime('dd/mm/yyyy',DataDocumento);
    txtNumeroDocumento2.Caption := NumeroDocumento;
    txtEspecieDoc2.Caption := AEspecieDocumento;
    if AceiteDocumento = adSim then
      txtAceite2.Caption := 'S'
    else
    txtAceite2.Caption := 'N';
    txtDataProcessamento2.Caption := FormatDateTime('dd/mm/yyyy',Now);
    txtNossoNumero2.Caption := ANossoNumero;
    txtUsoBanco2.Caption := '';
    txtCarteira2.Caption := ACarteira;
    txtEspecie2.Caption := 'R$';
    txtQuantidade2.Caption := '';
    txtValorMoeda2.Caption := '';
    txtValorDocumento2.Caption := FormatCurr('#,##0.00',ValorDocumento);
    txtInstrucoes2.Lines.Clear;
    txtInstrucoes2.Lines.AddStrings(AInstrucoes);
    txtDesconto2.Caption := '';
    txtMoraMulta2.Caption := '';
    txtValorCobrado2.Caption := '';
    txtNomeSacado2.Caption := AnsiUpperCase(Sacado.Nome);
    case Sacado.TipoInscricao of
      tiPessoaFisica  : txtCpfCnpjSacado2.Caption := 'CPF: ' + FormatarComMascara('!000\.000\.000\-00;0; ',Sacado.NumeroCPFCGC);
      tiPessoaJuridica: txtCpfCnpjSacado2.Caption := 'CNPJ: ' + FormatarComMascara('!00\.000\.000\/0000\-00;0; ',Sacado.NumeroCPFCGC);
      tiOutro         : txtCpfCnpjSacado2.Caption := Sacado.NumeroCPFCGC;
    end;
    txtEnderecoSacado2.Caption := AnsiUpperCase(Sacado.Endereco.Rua + ', ' + Sacado.Endereco.Numero + '   ' + Sacado.Endereco.Complemento);
    txtCidadeSacado2.Caption := AnsiUpperCase(FormatarComMascara('00000-000;0; ',Sacado.Endereco.CEP) + '    ' + Sacado.Endereco.Bairro + '    ' + Sacado.Endereco.Cidade + '    ' + Sacado.Endereco.Estado);
    txtSacadorAvalista2.Caption := AnsiUpperCase(Sacado.SacadorAvaLista);
    txtCodigoBaixa2.Caption := ANossoNumero;
    {Terceira via do boleto}
    ImageList.GetBitmap(Cedente.ContaBancaria.Banco.ImagemBanco,imgBanco3.Picture.Bitmap);
    txtNumeroBanco3.Caption := txtNumeroBanco2.Caption;
    txtLocalPagamento3.Caption := AnsiUpperCase(LocalPagamento);
    txtDataVencimento3.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
    txtReferencia3.Caption := Referencia;
    txtNomeCedente3.Caption := AnsiUpperCase(Cedente.Nome);
    txtCodigoCedente3.Caption := AAgenciaCodigoCedente;
    txtDataDocumento3.Caption := FormatDateTime('dd/mm/yyyy',DataDocumento);
    txtNumeroDocumento3.Caption := NumeroDocumento;
    txtEspecieDoc3.Caption := AEspecieDocumento;
    if AceiteDocumento = adSim then
      txtAceite3.Caption := 'S'
    else
      txtAceite3.Caption := 'N';
    txtDataProcessamento3.Caption := FormatDateTime('dd/mm/yyyy',Now);
    txtNossoNumero3.Caption := ANossoNumero;
    txtUsoBanco3.Caption := '';
    txtCarteira3.Caption := ACarteira;
    txtEspecie3.Caption := 'R$';
    txtQuantidade3.Caption := '';
    txtValorMoeda3.Caption := '';
    txtValorDocumento3.Caption := FormatCurr('#,##0.00',ValorDocumento);
    txtInstrucoes3.Lines.Clear;
    txtInstrucoes3.Lines.AddStrings(AInstrucoes);
    txtDesconto3.Caption := '';
    txtMoraMulta3.Caption := '';
    txtValorCobrado3.Caption := '';
    txtNomeSacado3.Caption := AnsiUpperCase(Sacado.Nome);
    case Sacado.TipoInscricao of
      tiPessoaFisica  : txtCpfCnpjSacado3.Caption := 'CPF: ' + FormatarComMascara('!000\.000\.000\-00;0; ',Sacado.NumeroCPFCGC);
      tiPessoaJuridica: txtCpfCnpjSacado3.Caption := 'CNPJ: ' + FormatarComMascara('!00\.000\.000\/0000\-00;0; ',Sacado.NumeroCPFCGC);
      tiOutro         : txtCpfCnpjSacado3.Caption := Sacado.NumeroCPFCGC;
    end;
    txtEnderecoSacado3.Caption := AnsiUpperCase(Sacado.Endereco.Rua + ', ' + Sacado.Endereco.Numero + '   ' + Sacado.Endereco.Complemento);
    txtCidadeSacado3.Caption := AnsiUpperCase(FormatarComMascara('00000-000;0; ',Sacado.Endereco.CEP) + '    ' + Sacado.Endereco.Bairro + '    ' + Sacado.Endereco.Cidade + '    ' + Sacado.Endereco.Estado);
    txtSacadorAvalista3.Caption := AnsiUpperCase(Sacado.SacadorAvaLista);
    txtCodigoBaixa3.Caption := ANossoNumero;
    txtLinhaDigitavel.Caption := CodigoBarra.LinhaDigitavel;
    imgCodigoBarra.Picture.Assign(CodigoBarra.Imagem.Picture);
  end;

  AInstrucoes.Free;
end;

{procedure TRLBTitulo.EnviarPorEMail(Host, LoginUsuario: string; Porta : integer; Assunto : string; Mensagem : TStringList);
var
   Mail : TNMSMTP;
   NomeArquivo : string;
begin
   if Host = '' then
      Raise Exception.Create('O host não foi informado');
   if Assunto = '' then
      Raise Exception.Create('O assunto da mensagem não foi informado');

   Mail := TNMSMTP.Create(nil);

   TRY
      NomeArquivo := 'ImagemBoleto.bmp';
      ImagemBoleto.Picture.SaveToFile(NomeArquivo);
      with Mail.PostMessage do
      begin
         if Cedente.Endereco.EMail <> '' then
            FromAddress := Cedente.Endereco.EMail
         else
            Raise Exception.Create('O e-mail do cedente não foi informado');

         if Cedente.Nome <> '' then
            FromName := Cedente.Nome
         else
            FromName := FromAddress;

         ReplyTo := FromAddress;

         if Sacado.Endereco.EMail <> '' then
            ToAddress.Add(Sacado.Endereco.EMail)
         else
            Raise Exception.Create('O e-mail do sacado não foi informado');

         Subject := Assunto;
         Body.Assign(Mensagem);
         Attachments.Add(NomeArquivo);
      end;
      Mail.Host := Host;
      Mail.UserID := LoginUsuario;
      Mail.Port := Porta;
      Mail.Connect;
      Mail.SendMail;
      Mail.Disconnect;
      Mail.Free;
      if FileExists(NomeArquivo) then
         DeleteFile(NomeArquivo);
   EXCEPT
      if Mail.Connected then
         Mail.Disconnect;
      Mail.Free;
      if FileExists(NomeArquivo) then
         DeleteFile(NomeArquivo);
      Raise;
   END;
end;}

procedure TRLBTitulo.Visualizar;
var
  ABoleto : TLayoutBoleto;
  nI: Integer;
begin
  if nQtdeBoletos = -1 then
  begin
    ABoleto := TLayoutBoleto.Create(nil);
    try
      PrepararBoleto(ABoleto);
      ABoleto.RLBand1.Visible := Tag = 0;
      ABoleto.LayoutBoleto.PreviewModal;
      ABoleto.Free;
     except
      ABoleto.Free;
      raise;
    end;
  end
  else
  begin
    Agrupamento[0].RLBand1.Visible := Tag = 0; //quebra galho, impressao de boleto PRO 05/05/2005
    Agrupamento[0].LayoutBoleto.PreviewModal;
    for nI := 0 to nQtdeBoletos do
      Agrupamento[nI].Free;
    nQtdeBoletos := -1;
    SetLength(Agrupamento, 0);
  end;
end;

procedure TRLBTitulo.Preparar;
var
  nI: Integer;
begin
  try
    Inc(nQtdeBoletos);
    SetLength(Agrupamento, nQtdeBoletos+1);
    Agrupamento[nQtdeBoletos] := TLayoutBoleto.Create(nil);
    PrepararBoleto(Agrupamento[nQtdeBoletos]);
    if nQtdeBoletos > 0 then
      Agrupamento[nQtdeBoletos-1].LayoutBoleto.NextReport := Agrupamento[nQtdeBoletos].LayoutBoleto;
  except
    for nI := 0 to nQtdeBoletos do
      Agrupamento[nI].Free;
    nQtdeBoletos := -1;
    SetLength(Agrupamento, 0);
    raise;
  end;
{  Inc(nQtdeBoletos);
  SetLength(Agrupamento, nQtdeBoletos+1);
  Agrupamento[nQtdeBoletos] := TLayoutBoleto.Create(nil);
  PrepararBoleto(Agrupamento[nQtdeBoletos]);
  if nQtdeBoletos > 0 then
    Agrupamento[nQtdeBoletos-1].LayoutBoleto.NextReport := Agrupamento[nQtdeBoletos].LayoutBoleto;}
end;

procedure TRLBTitulo.Imprimir;
var
  ABoleto : TLayoutBoleto;
begin
  ABoleto := TLayoutBoleto.Create(nil);
  try
    PrepararBoleto(ABoleto);
    ABoleto.LayoutBoleto.Print;
    ABoleto.Free;
   except
     ABoleto.Free;
     raise;
  end;
end;

{$HINTS OFF}
{$WARNINGS OFF}

function TRLBTitulo.GetImagemBoleto : TImage;
var
  ABoleto : TLayoutBoleto;
  AImagem : TMetafile;
begin
//  ABoleto := TLayoutBoleto.Create(nil);
  AImagem := TMetafile.Create;
  Result := TImage.Create(nil);
  try
    PrepararBoleto(ABoleto);
    ABoleto.LayoutBoleto.Prepare;
//    AImagem := ABoleto. ;
//      Result.Height := AImagem.Height;
//      Result.Width := AImagem.Width;
//      Result.Canvas.Draw(0,0,AImagem);

//      Result.Picture.Bitmap.Monochrome := TRUE;
//      AImagem.Free;
//      ABoleto.QRPrinter.Free;
//      ABoleto.Free;
   EXCEPT
//      AImagem.Free;
//      ABoleto.QRPrinter.Free;
//      ABoleto.Free;
      Raise;
   END;
//   ABoleto.QRPrinter := nil;
end;

function TRLBTitulo.GetImagemFichaCompensacao : TImage;
var
   AImagem : TImage;
   RectOrigem, RectDestino : TRect;
begin
   Result := TImage.Create(nil);
   AImagem := TImage.Create(nil);
   AImagem := ImagemBoleto;

   with RectOrigem do
   begin
      Left   := 35;
      Top    := 720;
      Right  := 762;
      Bottom := AImagem.Height;
   end;

   with RectDestino do
   begin
      Left   := 0;
      Top    := 0;
      Right  := AImagem.Width;
      Bottom := AImagem.Height - 719;
   end;

   Result.Height := RectDestino.Bottom;
   Result.Width  := RectDestino.Right;

   Result.Canvas.CopyRect(RectDestino, AImagem.Canvas, RectOrigem);
end;

{$IFNDEF VER120}

{TRLTituloList}

constructor TRLTituloList.Create;
begin
  {$IFDEF VER150}
     inherited Create(true);
  {$ELSE}
   {$IFDEF VER140}
      inherited Create(true);
   {$ELSE}
      {$IFDEF VER130}
         inherited Create(true);
      {$ELSE}
         inherited Create;
      {$ENDIF}
   {$ENDIF}
  {$ENDIF}
end;

function TRLTituloList.FindInstanceOf(AClass: TClass; AExact: Boolean;
  AStartAt: Integer): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := AStartAt to Count - 1 do
    if (AExact and
        (Items[I].ClassType = AClass)) or
       (not AExact and
        Items[I].InheritsFrom(AClass)) then
    begin
      Result := I;
      break;
    end;
end;

function TRLTituloList.GetItem(Index: Integer): TRLBTitulo;
begin
   Result := inherited Items[Index] as TRLBTitulo;
end;

function TRLTituloList.Add(ATitulo : TRLBTitulo) : integer;
var
   NovoTitulo : TRLBTitulo;
begin
   NovoTitulo := TRLBTitulo.Create(nil);
   NovoTitulo.Assign(ATitulo);
   Result := inherited Add(NovoTitulo);
end;

function TRLTituloList.IndexOf(ATitulo : TRLBTitulo): Integer;
begin
  Result := inherited IndexOf(ATitulo);
end;

procedure TRLTituloList.Insert(Index: Integer; ATitulo: TRLBTitulo);
begin
  inherited Insert(Index, ATitulo);
end;

function TRLTituloList.Remove(ATitulo: TRLBTitulo): Integer;
begin
  Result := inherited Remove(ATitulo);
end;

procedure TRLTituloList.SetItem(Index: Integer; ATitulo: TRLBTitulo);
begin
  inherited Items[Index] := ATitulo;
end;

{TRLBRemessa}

constructor TRLBRemessa.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   LayoutArquivo := laCNAB400;
   TipoMovimento := tmRetorno;
   Titulos := TRLTituloList.Create;
end;

destructor TRLBRemessa.Destroy;
begin
   Titulos.Destroy;
   inherited Destroy;
end;

function TRLBRemessa.GerarRemessa : boolean;
var
   Remessa: TStringList;
   ACodigoBanco: string;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetRemessa: function(var ACobranca: TRLBRemessa; var Remessa: TStringList): boolean of object;
begin
   Result := FALSE;
   GetRemessa := nil;

   if Titulos.Count <= 0 then
      Raise Exception.Create('Não há títulos para gerar arquivo remessa. A coleção de títulos está vazia');

   Remessa := TStringList.Create;
   TRY

      if (TipoMovimento <> tmRemessa) and (TipoMovimento <> tmRemessaTeste) then
         TipoMovimento := tmRemessa;

      ACodigoBanco := Formatar(Titulos[0].Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
      AClasseBanco := GetClass('TRLBanco'+ACodigoBanco);
      if AClasseBanco <> nil then
      begin
         ABanco := AClasseBanco.Create;
         TRY
            @GetRemessa := ABanco.MethodAddress('GerarRemessa');
            if @GetRemessa <> nil then
            begin
               Result := GetRemessa(Self, Remessa);
               if Result then
                  Remessa.SaveToFile(NomeArquivo); {Grava o arquivo remessa}
            end
            else
               Raise Exception.CreateFmt('A geração de arquivo remessa para o banco %s não está disponível',[ACodigoBanco]);
            ABanco.Free;
         EXCEPT
            ABanco.Free;
            Raise;
         END
      end
      else
         Raise Exception.CreateFmt('Processamento de arquivos remessa / retorno para o banco %s não está disponível',[ACodigoBanco]);

      Remessa.Free;

   EXCEPT
      Remessa.Free;
      Raise;
   END;
end;


function TRLBRemessa.LerRetorno : boolean;
var
   ACodigoBanco: string;
   Retorno : TStringList;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetRetorno: function(var ACobranca: TRLBRemessa; Retorno: TStringList): boolean of object;
begin
   Result := FALSE;
   GetRetorno := nil;
   Retorno := TStringList.Create;
   Self.Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

   TRY
      if not FileExists(NomeArquivo) then
         Raise Exception.CreateFmt('O arquivo %s não foi localizado',[NomeArquivo]);

      Retorno.LoadFromFile(NomeArquivo);

      if Retorno.Count < 3 then
      begin
         Result := FALSE;
         Exit;
      end;

      case length(Retorno[0]) of
         240 :
            begin
               LayoutArquivo := laCNAB240;
               {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
               if Copy(Retorno.Strings[0],143,1) <> '2' then
                  Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB240');
               ACodigoBanco := Copy(Retorno.Strings[0],1,3);
            end;

         400 :
            begin
               LayoutArquivo := laCNAB400;
               {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
               if Copy(Retorno.Strings[0],1,19) <> '02RETORNO01COBRANCA' then
                  Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB400');
               ACodigoBanco := Copy(Retorno.Strings[0],77,3);
            end;
         else
         begin
            LayoutArquivo := laOutro;
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB240 ou CNAB400');
         end;
      end;

      TipoMovimento := tmRetorno;

      AClasseBanco := GetClass('TRLBanco'+ACodigoBanco);
      if AClasseBanco <> nil then
      begin
         ABanco := AClasseBanco.Create;
         TRY
            @GetRetorno := ABanco.MethodAddress('LerRetorno');
            if @GetRetorno <> nil then
               Result := GetRetorno(Self, Retorno)
            else
               Raise Exception.CreateFmt('O processamento de arquivo retorno do banco %s não está disponível',[ACodigoBanco]);
            ABanco.Free;
         EXCEPT
            ABanco.Free;
            Raise;
         END
      end
      else
         Raise Exception.CreateFmt('Processamento de arquivos remessa / retorno para o banco %s não está disponível',[ACodigoBanco]);

      Retorno.Free;
      Result := TRUE;
   EXCEPT
      Retorno.Free;
      Raise;
   END;
end;


function TRLBRemessa.GerarRelatorio : TStringList;
var
   i : integer;
begin
   Result := TStringList.Create;

   with Result do
   begin
      Add(StringOfChar('=',80));
      Add('');
      Add('Nome do arquivo  : ' + NomeArquivo);
      Add('Número do arquivo: ' + IntToStr(NumeroArquivo));
      Add('Data do arquivo  : ' + DateTimeToStr(DataArquivo));

      case LayoutArquivo of
         laCNAB240 : Add('Layout do arquivo: CNAB240');
         laCNAB400 : Add('Layout do arquivo: CNAB400');
      else
         Add('Layout do arquivo: Outro');
      end; {case LayoutArquivo}

      case TipoMovimento of
         tmRemessa      : Add('Tipo de movimento: Remessa');
         tmRetorno      : Add('Tipo de movimento: Retorno');
         tmRemessaTeste : Add('Tipo de movimento: Remessa - Teste');
         tmRetornoTeste : Add('Tipo de movimento: Retorno - Teste');
      else
         Add('Tipo de movimento: Outro');
      end; {case TipoMovimento}

      Add('');
      Add(StringOfChar('=',80));

      for i := 0 to (Titulos.Count - 1) do
      begin
         with Titulos[i] do
         begin
            Add('');
            case TipoOcorrencia of
               {Ocorrências para arquivo remessa}
               toRemessaRegistrar : Add('Tipo ocorrência  : Registrar o título no banco');
               toRemessaBaixar : Add('Tipo ocorrência  : Baixar o título no banco');
               toRemessaDebitarEmConta : Add('Tipo ocorrência  : Debitar em conta');
               toRemessaConcederAbatimento : Add('Tipo ocorrência  : Conceder abatimento');
               toRemessaCancelarAbatimento : Add('Tipo ocorrência  : Cancelar abatimento');
               toRemessaConcederDesconto : Add('Tipo ocorrência  : Conceder desconto');
               toRemessaCancelarDesconto : Add('Tipo ocorrência  : Cancelar desconto');
               toRemessaAlterarVencimento : Add('Tipo ocorrência  : Alterar vencimento');
               toRemessaProtestar : Add('Tipo ocorrência  : Protestar o título');
               toRemessaCancelarInstrucaoProtesto : Add('Tipo ocorrência  : Cancelar instrução de protesto');
               toRemessaDispensarJuros : Add('Tipo ocorrência  : Dispensar juros');
               toRemessaAlterarNomeEnderecoSacado : Add('Tipo ocorrência  : Alterar nome e endereço do sacado');
               toRemessaOutrasOcorrencias : Add('Tipo ocorrência  : Outras ocorrências de remessa');

               {Ocorrências para arquivo retorno}
               toRetornoRegistroConfirmado : Add('Tipo ocorrência  : Registro do título foi confirmado');
               toRetornoRegistroRecusado : Add('Tipo ocorrência  : Registro do título foi recusado');
               toRetornoComandoRecusado : Add('Tipo ocorrência  : Comando recusado');
               toRetornoLiquidado : Add('Tipo ocorrência  : O título foi liquidado');
               toRetornoBaixado : Add('Tipo ocorrência  : O título foi baixado');
               toRetornoRecebimentoInstrucaoBaixar : Add('Tipo ocorrência  : Recebimento de instrução para baixar título');
               toRetornoBaixaOuLiquidacaoEstornada : Add('Tipo ocorrência  : Baixa / liquidação estornada');
               toRetornoTituloEmSer : Add('Tipo ocorrência  : Título em ser');
               toRetornoRecebimentoInstrucaoConcederAbatimento : Add('Tipo ocorrência  : Recebimento de instrução para conceder abatimento');
               toRetornoAbatimentoConcedido : Add('Tipo ocorrência  : Abatimento concedido');
               toRetornoRecebimentoInstrucaoCancelarAbatimento : Add('Tipo ocorrência  : Recebimento de instrução para cancelar abatimento');
               toRetornoAbatimentoCancelado : Add('Tipo ocorrência  : Abatimento cancelado');
               toRetornoRecebimentoInstrucaoConcederDesconto : Add('Tipo ocorrência  : Recebimento de instrução para conceder desconto');
               toRetornoDescontoConcedido : Add('Tipo ocorrência  : Desconto concedido');
               toRetornoRecebimentoInstrucaoCancelarDesconto : Add('Tipo ocorrência  : Recebimento de instrução para cancelar desconto');
               toRetornoDescontoCancelado : Add('Tipo ocorrência  : Desconto cancelado');
               toRetornoRecebimentoInstrucaoAlterarDados : Add('Tipo ocorrência  : Recebimento de instrução para alterar dados');
               toRetornoDadosAlterados : Add('Tipo ocorrência  : Dados alterados');
               toRetornoRecebimentoInstrucaoAlterarVencimento : Add('Tipo ocorrência  : Recebimento de instrução para alterar vencimento');
               toRetornoVencimentoAlterado : Add('Tipo ocorrência  : Vencimento alterado');
               toRetornoRecebimentoInstrucaoProtestar : Add('Tipo ocorrência  : Recebimento de instrução para protestar título');
               toRetornoProtestado : Add('Tipo ocorrência  : Título protestado');
               toRetornoRecebimentoInstrucaoSustarProtesto : Add('Tipo ocorrência  : Recebimento de instrução para sustar protesto');
               toRetornoProtestoSustado : Add('Tipo ocorrência  : Protesto sustado');
               toRetornoDebitoEmConta : Add('Tipo ocorrência  : Debitado em conta');
               toRetornoRecebimentoInstrucaoAlterarNomeSacado : Add('Tipo ocorrência  : Recebimento de instrução para alterar nome do sacado');
               toRetornoNomeSacadoAlterado : Add('Tipo ocorrência  : Nome do sacado alterado');
               toRetornoRecebimentoInstrucaoAlterarEnderecoSacado : Add('Tipo ocorrência  : Recebimento instrução para alterar endereço do sacado');
               toRetornoEnderecoSacadoAlterado : Add('Tipo ocorrência  : Endereço do sacado alterado');
               toRetornoEncaminhadoACartorio : Add('Tipo ocorrência  : Título encaminhado para cartório');
               toRetornoRetiradoDeCartorio : Add('Tipo ocorrência  : Título retirado do cartório');
               toRetornoRecebimentoInstrucaoDispensarJuros : Add('Tipo ocorrência  : Recebimento de instrucão para dispensar juros');
               toRetornoJurosDispensados : Add('Tipo ocorrência  : Juros dispensados');
               toRetornoManutencaoTituloVencido : Add('Tipo ocorrência  : Manutenção de título vencido');
               toRetornoRecebimentoInstrucaoAlterarTipoCobranca : Add('Tipo ocorrência  : Recebimento de instrução para alterar tipo de cobrança');
               toRetornoTipoCobrancaAlterado : Add('Tipo ocorrência  : Tipo de cobrança alterado');
               toRetornoDespesasProtesto : Add('Tipo ocorrência  : Despesas com protesto');
               toRetornoDespesasSustacaoProtesto : Add('Tipo ocorrência  : Despesas com sustação de protesto');
               toRetornoProtestoOuSustacaoEstornado : Add('Tipo ocorrência  : Protesto ou sustação estornado');
               toRetornoDebitoTarifas : Add('Tipo ocorrência  : Débito de tarifas');
               toRetornoOutrasOcorrencias : Add('Tipo ocorrência  : Outra ocorrência de retorno');
            else
               Add('Tipo ocorrência  : Outra ocorrência não identificada');
            end; {case TipoOcorrencia}

            if trim(MotivoRejeicaoComando) <> '' then
               Add('Motivo rejeição  : ' + MotivoRejeicaoComando);
            if trim(SeuNumero) <> '' then
               Add('Seu número       : ' + SeuNumero);
            if trim(NossoNumero) <> '' then
               Add('Nosso número     : ' + NossoNumero + '-' + DigitoNossoNumero);
            if trim(Carteira) <> '' then
               Add('Carteira         : ' + Carteira);
            if trim(NumeroDocumento) <> '' then
               Add('Número documento : ' + NumeroDocumento);
            if DataDocumento <> 0 then
               Add('Data documento   : ' + DateToStr(DataDocumento));
            if DataVencimento <> 0 then
               Add('Data vencimento  : ' + DateToStr(DataVencimento));
            if DataOcorrencia <> 0 then
               Add('Data ocorrência  : ' + DateToStr(DataOcorrencia));
            if DataCredito <> 0 then
               Add('Data crédito     : ' + DateToStr(DataCredito));
            Add('Valor documento  : ' + FormatCurr('#,##0.00',ValorDocumento));
            if ValorDespesaCobranca > 0 then
               Add('Despesa cobrança : ' + FormatCurr('#,##0.00',ValorDespesaCobranca));
            if DataAbatimento <> 0 then
               Add('Abatimento até   : ' + DateToStr(DataAbatimento));
            if ValorAbatimento > 0 then
               Add('Valor abatimento : ' + FormatCurr('#,##0.00',ValorAbatimento));
            if ValorDesconto > 0 then
               if DataDesconto <> 0 then
               begin
                  Add('Desconto até     : ' + DateToStr(DataDesconto));
                  Add('Vr. desconto/dia : ' + FormatCurr('#,##0.00',ValorDesconto));
               end
               else
                  Add('Valor desconto   : ' + FormatCurr('#,##0.00',ValorDesconto));
            if ValorMoraJuros > 0 then
               if DataMoraJuros <> 0 then
               begin
                  Add('Juros a partir de: ' + DateToStr(DataMoraJuros));
                  Add('Valor juros/dia  : ' + FormatCurr('#,##0.00',ValorMoraJuros));
               end
               else
                  Add('Valor mora/juros : ' + FormatCurr('#,##0.00',ValorMoraJuros));
            if ValorOutrosCreditos > 0 then
               Add('Outros acréscimos: ' + FormatCurr('#,##0.00',ValorOutrosCreditos));
            if ValorIOF > 0 then
               Add('Valor IOF        : ' + FormatCurr('#,##0.00',ValorIOF));
            if (DataCredito <> 0) then
               Add('Valor do crédito : ' + FormatCurr('#,##0.00',ValorDocumento-ValorDespesaCobranca-ValorAbatimento-ValorDesconto+ValorMoraJuros+ValorOutrosCreditos-ValorOutrasDespesas));
            if DataProtesto <> 0 then
               Add('Protestar em     : ' + DateToStr(DataProtesto));
            if DataBaixa <> 0 then
               Add('Baixar em        : ' + DateToStr(DataBaixa));


            with Cedente do
            begin
               Add('CEDENTE');
               case TipoInscricao of
                  tiPessoaFisica  : Add(' Nome / CPF      : ' + Nome + ' / ' + FormatarComMascara('!###\.###\.###\.###\-##;0; ',NumeroCPFCGC));
                  tiPessoaJuridica: Add(' Nome / CNPJ     : ' + Nome + ' / ' + FormatarComMascara('!##\.###\.###\/####\-##;0; ',NumeroCPFCGC));
                  tiOutro         : Add(' Nome / Inscrição: ' + Nome + ' / ' + NumeroCPFCGC);
               end;

               with Endereco do
                  if Trim(Rua + Numero + Complemento + Bairro + Cidade + Estado + CEP) <> '' then
                     Add(' Endereço        : ' + Rua + ' ' + Numero + ' ' + Complemento + ' - ' + Bairro + ' - ' + Cidade + ' - ' + Estado + ' - ' + FormatMaskText('#####\-##;0; ',CEP));

               with ContaBancaria do
                  if trim(Banco.Codigo) <> '' then
                     Add(' Banco/Ag./Conta : ' + Banco.Codigo + '-' + Banco.Digito + ' - ' + Banco.Nome  + ' / ' + Trim(CodigoAgencia) + ' / ' + Trim(NumeroConta) + '-' + Trim(DigitoConta));

               if Trim(CodigoCedente + DigitoCodigoCedente) <> '' then
                  Add(' Código cedente  : ' + Trim(CodigoCedente) + '-' + Trim(DigitoCodigoCedente));
            end; {with Cedente}

            with Sacado do
            begin
               Add('SACADO');
               case TipoInscricao of
                  tiPessoaFisica  : Add(' Nome / CPF      : ' + Nome + ' / ' + FormatMaskText('!###\.###\.###\.###\-##;0; ',NumeroCPFCGC));
                  tiPessoaJuridica: Add(' Nome / CNPJ     : ' + Nome + ' / ' + FormatMaskText('!##\.###\.###\/####\-##;0; ',NumeroCPFCGC));
                  tiOutro         : Add(' Nome / Inscrição: ' + Nome + ' / ' + NumeroCPFCGC);
               end;

               with Endereco do
                  if Trim(Rua + Numero + Complemento + Bairro + Cidade + Estado + CEP) <> '' then
                     Add(' Endereço        : ' + Rua + ' ' + Numero + ' ' + Complemento + ' - ' + Bairro + ' - ' + Cidade + ' - ' + Estado + ' - ' + FormatMaskText('#####\-##;0; ',CEP));

               with ContaBancaria do
                  if trim(Banco.Codigo) <> '' then
                     Add(' Banco/Ag./Conta : ' + Banco.Codigo + '-' + Banco.Digito + ' - ' + Banco.Nome  + ' / ' + Trim(CodigoAgencia) + ' / ' + Trim(NumeroConta) + '-' + Trim(DigitoConta));
            end; {with Sacado}

            if Trim(Instrucoes.Text) <> '' then
            begin
               Add('<INSTRUÇÕES>     :');
               Add(Instrucoes.Text);
            end;
         end; {with Titulos[i]}

         Add('');
         Add(StringOfChar('-',80));
      end; {for I := 0 to (Count - 1)}
   end;
end;

{$ENDIF}

{$HINTS ON}
{$WARNINGS ON}

end.

