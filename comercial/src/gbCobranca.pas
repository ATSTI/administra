UNIT gbCobranca;

interface

uses
   Windows, classes, SysUtils, Graphics, extctrls
   {$IFDEF VER150}
      , Variants, MaskUtils, contnrs, IdMessage, IdBaseComponent, IdComponent,
        IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, gbBoleto7
   {$ELSEIF VER140}
      , Variants, MaskUtils, contnrs, NMSMTP, gbBoleto6
   {$ELSE}
      {$IFDEF VER130}
         , Mask, contnrs, gbBoleto5
      {$ELSE}
         , Mask, gbBoleto4
      {$ENDIF}
   {$IfEnd}
   ;


type

   {Classe para gerar código de barras para boletos}
   TgbCobCodBar = class
   private
      fCodigo: string; {Dados que serão incluídos no código de barras}
      function GetLinhaDigitavel : string; {Retorna a representação numérica do código de barras}
      function Define2de5 : string; {Define o formato do código de barras INTERCALADO 2 DE 5, retornando a seqüência de 0 e 1 que será usada para gerar a imagem do código de barras}
      function GetImagem    : TImage; {Gera a imagem do código de barras}
   public
      property Codigo    : string  read fCodigo write fCodigo;
      property LinhaDigitavel : string read GetLinhaDigitavel;
      property Imagem    : TImage read GetImagem;

   end;

   {TgbEndereco representa o endereço de cedentes ou sacados}
   TEstado = string[2];
   TCEP = string[8];

   TgbEndereco = class(TPersistent)
   public
      fRua,
      fNumero,
      fComplemento,
      fBairro,
      fCidade,
      fEMail : string;
      fEstado : TEstado;
      fCEP : TCEP;
      procedure Assign(AEndereco: TgbEndereco); reintroduce;
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
   TgbBanco = class(TPersistent)
   private
      fCodigo : string; {Código do banco na câmara de compensação}
      procedure SetCodigo(ACodigoBanco : string);
      function GetDigito : string; {Retorna o dígito do código do banco}
      function GetNome   : string; {Retorna o nome do banco}
   public
      procedure   Assign(ABanco: TgbBanco); reintroduce;
   published
      property Codigo : string read fCodigo write SetCodigo;
      property Digito : string read GetDigito;
      property Nome   : string read GetNome;
   end;

   {Dados da conta bancária de cedentes ou sacados}
   TgbContaBancaria = class(TPersistent)
   public
      fBanco : TgbBanco; {Banco onde a pessoa tem conta}
      fCodigoAgencia, {Código da agência}
      fDigitoAgencia, {Dígito verificador do número da agência}
      fNumeroConta,         {Número da conta}
      fDigitoConta,   {Dígito verificador do número da conta}
      fNomeCliente : string; {Nome do cliente titular da conta}
      constructor Create;
      destructor  Destroy; override;
      procedure Assign(AContaBancaria: TgbContaBancaria); reintroduce;
   published
      property Banco : TgbBanco read fBanco write fBanco;
      property CodigoAgencia : string read fCodigoAgencia write fCodigoAgencia;
      property DigitoAgencia : string read fDigitoAgencia write fDigitoAgencia;
      property NumeroConta : string read fNumeroConta write fNumeroConta;
      property DigitoConta : string read fDigitoConta write fDigitoConta;
      property NomeCliente : string read fNomeCliente write fNomeCliente;
   end;

   TTipoInscricao = (tiPessoaFisica, tiPessoaJuridica, tiOutro);

   {Dados sobre os cedentes ou sacados}
   TgbPessoa = class(TPersistent)
   private
      fTipoInscricao: TTipoInscricao;
      fNumeroCPFCGC ,
      fNome         : string;
      fEndereco     : TgbEndereco;
      fContaBancaria: TgbContaBancaria;
   public
      constructor Create;
      destructor  Destroy; override;
      procedure   Assign(APessoa: TgbPessoa); reintroduce;
   published
      property TipoInscricao: TTipoInscricao read fTipoInscricao write fTipoInscricao;
      property NumeroCPFCGC : string read fNumeroCPFCGC write fNumeroCPFCGC;
      property Nome         : string read fNome write fNome;
      property Endereco     : TgbEndereco read fEndereco write fEndereco;
      property ContaBancaria: TgbContaBancaria read fContaBancaria write fContaBancaria;
   end;

   {Dados completos sobre o cedente - Classe derivada de TgbPessoa}
   TgbCedente = class(TgbPessoa)
   private
      fCodigoCedente,
      fDigitoCodigoCedente : string;
   public
      procedure Assign(ACedente: TgbCedente);
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

   {Representa um título e todas as rotinas associadas}
   TgbTitulo = class(TComponent)
   private
      fTipoOcorrencia : TTipoOcorrencia; {Tipo de ocorrência: registro de título, liquidação normal, pedido de baixa, etc...}
      fOcorrenciaOriginal : string; {Indica o código da ocorrência no banco}
      fDescricaoOcorrenciaOriginal : string;
      fMotivoRejeicaoComando : string; {Indica o código do motivo porque o título / comando foi recusado. Usado apenas para receber informações do banco}
      fDescricaoMotivoRejeicaoComando : string;
      fCedente : TgbCedente; {Aquele que emitiu o título}
      fSacado : TgbPessoa; {Devedor}
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
      fValorOutrosCreditos : Currency; {Valor de outros créditos que o banco repassará ao cedente}
      fInstrucoes : TStringList; {Instruções incluídas no título}
      fEmissaoBoleto: TEmissaoBoleto; {Indica quem emite o boleto: banco ou cliente}
      procedure SetInstrucoes(Texto: TStringList);
      function   GerarCodigoBarra : TgbCobCodBar; {Retorna um objeto do tipo TgbCobCodBar contendo linha digitável e imagem do código de barras baseados nos dados do título}
      function   CalcularDigitoNossoNumero : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure  PrepararBoleto(ABoleto: TBoleto); {Atribui valores aos campos do boleto antes que ele seja impresso }
      function   GetImagemBoleto : TImage; {Gera a imagem do boleto}
      function   GetImagemFichaCompensacao : TImage; {Gera a imagem da ficha de compensação}
      function Calcula_QBarras(Num:String): String;
   public
      constructor Create(AOwner: TComponent); override;
      destructor  Destroy; override;
      procedure   Assign(ATitulo: TgbTitulo); reintroduce;
//      procedure   EnviarPorEMail(Host, LoginUsuario : string; Porta :integer; Assunto : string; Mensagem : TStringList);
      procedure   Visualizar;
      procedure   Imprimir;
      property CodigoBarra : TgbCobCodBar read GerarCodigoBarra;
      property DigitoNossoNumero : string read CalcularDigitoNossoNumero;
      property ImagemBoleto : TImage read GetImagemBoleto;
      property ImagemFichaCompensacao : TImage read GetImagemFichaCompensacao;
   published
      property TipoOcorrencia : TTipoOcorrencia read fTipoOcorrencia write fTipoOcorrencia;
      property OcorrenciaOriginal : string read fOcorrenciaOriginal write fOcorrenciaOriginal;
      property DescricaoOcorrenciaOriginal : string read fDescricaoOcorrenciaOriginal write fDescricaoOcorrenciaOriginal;
      property MotivoRejeicaoComando : string read fMotivoRejeicaoComando write fMotivoRejeicaoComando;
      property DescricaoMotivoRejeicaoComando : string read fDescricaoMotivoRejeicaoComando write fMotivoRejeicaoComando;
      property LocalPagamento : string read fLocalPagamento write fLocalPagamento;
      property Cedente : TgbCedente read fCedente write fCedente;
      property Sacado : TgbPessoa read fSacado write fSacado;
      property SeuNumero : string read fSeuNumero write fSeuNumero;
      property NossoNumero : string read fNossoNumero write fNossoNumero;
      property NumeroDocumento : string read fNumeroDocumento write fNumeroDocumento;
      property Carteira : string read fCarteira write fCarteira;
      property AceiteDocumento : TAceiteDocumento read fAceiteDocumento write fAceiteDocumento;
      property EspecieDocumento: TEspecieDocumento read fEspecieDocumento write fEspecieDocumento;
      property DataProcessamento : TDateTime read fDataProcessamento write fDataProcessamento;
      property DataDocumento : TDateTime read fDataDocumento write fDataDocumento;
      property DataVencimento : TDateTime read fDataVencimento write fDataVencimento;
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
      property Instrucoes : TStringList read fInstrucoes write SetInstrucoes;
      property EmissaoBoleto : TEmissaoBoleto read fEmissaoBoleto write fEmissaoBoleto;
   end;

{$IFNDEF VER120}

   {Representa uma lista de títulos - Objetos do tipo gbTitulo}

   TgbTituloList = class(TObjectList)
   protected
      function    GetItem(Index: Integer): TgbTitulo; {Retorna o objeto TgbTitulo que está na posição definida por Index}
      procedure   SetItem(Index: Integer; ATitulo : TgbTitulo); {Altera o objeto TgbTitulo que está na posição definida por Index}
   public
      constructor Create;
      function    Add(ATitulo : TgbTitulo) : integer; {Insere o título no final da coleção}
      function    Remove(ATitulo : TgbTitulo): Integer; {Remove da coleção o título}
      function    IndexOf(ATitulo : TgbTitulo): Integer; {Retorna a posição onde está localizado o título na coleção}
      function    FindInstanceOf(AClass: TClass; AExact: Boolean = True; AStartAt: Integer = 0): Integer;
      procedure   Insert(Index: Integer; ATitulo : TgbTitulo); {Insere o título no final da coleção na posição indicada por Index}
      property    Items[Index : integer] : TgbTitulo read GetItem write SetItem; default;
   end;

   {Indica o layout do arquivo remessa / retorno, incluindo tamanho de cada registro, o
    os tipos de registros permitidos e o significado dos campos contidos no arquivo}
   TLayoutArquivo = (laCNAB240, laCNAB400, laOutro);

   {Indica o tipo de movimento desejado}
   TTipoMovimento  = (tmRemessa, tmRetorno, tmRemessaTeste, tmRetornoTeste, tmOutro);

   {Representa um conjunto de títulos que serão tratados juntos em alguma rotina.
    Por exemplo: processamento de arquivo retorno e geração de arquivo remessa}
   TgbCobranca = class(TComponent)
   private
      fNomeArquivo : string; {Nome do arquivo remessa ou retorno}
      fNumeroArquivo : integer; {Número seqüencial do arquivo remessa ou retorno}
      fDataArquivo : TDateTime; {Data da geração do arquivo remessa ou retorno}
      fLayoutArquivo: TLayoutArquivo; {Layout do arquivo remessa / retorno}
      fTipoMovimento: TTipoMovimento; {Tipo de movimento desejado: remessa, retorno, etc...}
      fTitulos : TgbTituloList; {Títulos incluídos no arquivo remessa ou retorno}
   public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
      function LerRetorno : boolean; {Lê o arquivo retorno recebido do banco}
      function GerarRemessa : boolean; {Gerar arquivo remessa para enviar ao banco}
      function GerarRelatorio : TStringList; {Gera as informações que serão apresentadas na propriedade Relatório}
      property Titulos       : TgbTituloList read fTitulos write fTitulos;
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

VAR
   titulo1, avalista:string;

implementation

uses gbCob001, gbCob021, gbCob033, gbCob038, gbCob104, gbCob151, gbCob237, gbCob244, gbCob275, gbCob291, gbCob320, gbCob341, gbCob347, gbCob353, gbCob389, gbCob394, gbCob399, gbCob409, gbCob422, gbCob479, gbCob745,
  UDm, uRel_CR, uRel_CR1;

Procedure Register;
begin
   RegisterComponents('GBSoft',[TgbTitulo]);
{$IFNDEF VER120}
   RegisterComponents('GBSoft',[TgbCobranca]);
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

{TgbCobCodBar}

function TgbCobCodBar.Define2de5 : string;
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


function TgbCobCodBar.GetLinhaDigitavel : string;
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

function TgbCobCodBar.GetImagem : TImage;
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

{TgbEndereco}
procedure TgbEndereco.Assign(AEndereco: TgbEndereco);
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

{TgbBanco}
procedure TgbBanco.SetCodigo(ACodigoBanco: string);
begin
   ACodigoBanco := Formatar(ACodigoBanco,3,false,'0');
   if (ACodigoBanco = '000') then
      fCodigo := ''
   else if (ACodigoBanco <> fCodigo) then
      fCodigo := ACodigoBanco;
end;

procedure TgbBanco.Assign(ABanco : TgbBanco);
begin
   Codigo := ABanco.Codigo;
end;

function TgbBanco.GetDigito : string;
begin
   if Codigo = '' then
      Result := ''
   else
      Result := Modulo11(Codigo,9);
end;

function TgbBanco.GetNome : string;
var
   ACodigoBanco: string;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetNomeBanco: function: string of object;
begin
   ACodigoBanco := Formatar(Codigo,3,false,'0');
   GetNomeBanco := nil;
   AClasseBanco := GetClass('TgbBanco'+ACodigoBanco);
   if AClasseBanco <> nil then
   begin
      ABanco := AClasseBanco.Create;
      TRY
         @GetNomeBanco := ABanco.MethodAddress('GetNomeBanco');
         if @GetNomeBanco <> nil then
            Result :=  GetNomeBanco
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

{TgbContaBancaria}
constructor TgbContaBancaria.Create;
begin
   inherited Create;
   Banco := TgbBanco.Create;
end;

destructor TgbContaBancaria.Destroy;
begin
   Banco.Destroy;
   inherited Destroy;
end;

procedure TgbContaBancaria.Assign(AContaBancaria: TgbContaBancaria);
begin
   Banco.Assign(AContaBancaria.Banco);
   CodigoAgencia := AContaBancaria.CodigoAgencia;
   DigitoAgencia := AContaBancaria.DigitoAgencia;
   NumeroConta := AContaBancaria.NumeroConta;
   DigitoConta := AContaBancaria.DigitoConta;
   NomeCliente := AContaBancaria.NomeCliente;
end;

{TgbPessoa}

constructor TgbPessoa.Create;
begin
   inherited Create;
   Endereco := TgbEndereco.Create;
   ContaBancaria := TgbContaBancaria.Create;
end;

destructor TgbPessoa.Destroy;
begin
   Endereco.Destroy;
   ContaBancaria.Destroy;
   inherited Destroy;
end;

procedure TgbPessoa.Assign(APessoa: TgbPessoa);
begin
   TipoInscricao := APessoa.TipoInscricao;
   NumeroCPFCGC := APessoa.NumeroCPFCGC;
   Nome := APessoa.Nome;
   Endereco.Assign(APessoa.Endereco);
   ContaBancaria.Assign(APessoa.ContaBancaria)
end;

procedure TgbCedente.Assign(ACedente: TgbCedente);
begin
   inherited Assign(ACedente);
   CodigoCedente := ACedente.CodigoCedente;
   DigitoCodigoCedente := ACedente.DigitoCodigoCedente;
end;

{TgbTitulo}
constructor TgbTitulo.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   fCedente := TgbCedente.Create;
   fSacado := TgbPessoa.Create;
   fInstrucoes := TStringList.Create;
   fLocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
   fOcorrenciaOriginal := '';
   fTipoOcorrencia := toRemessaRegistrar;
   fEspecieDocumento := edRecibo;
   fAceiteDocumento := adNao;
   fEmissaoBoleto := ebClienteEmite;
end;

destructor TgbTitulo.Destroy;
begin
   Cedente.Destroy;
   Sacado.Destroy;
   Instrucoes.Destroy;
   inherited Destroy;
end;

procedure TgbTitulo.SetInstrucoes(Texto: TStringList);
begin
   fInstrucoes.Assign(Texto);
end;

procedure TgbTitulo.Assign(ATitulo: TgbTitulo);
begin
   OcorrenciaOriginal := ATitulo.OcorrenciaOriginal;
   DescricaoOcorrenciaOriginal := ATitulo.DescricaoOcorrenciaOriginal;
   TipoOcorrencia := ATitulo.TipoOcorrencia;
   MotivoRejeicaoComando := ATitulo.MotivoRejeicaoComando;
   DescricaoMotivoRejeicaoComando := ATitulo.DescricaoMotivoRejeicaoComando;
   Cedente.Assign(ATitulo.Cedente);
   Sacado.Assign(ATitulo.Sacado);
   LocalPagamento := ATitulo.LocalPagamento;
   SeuNumero := ATitulo.SeuNumero;
   NossoNumero := ATitulo.NossoNumero;
   NumeroDocumento := ATitulo.NumeroDocumento;
   Carteira := ATitulo.Carteira;
   AceiteDocumento := ATitulo.AceiteDocumento;
   EspecieDocumento:= ATitulo.EspecieDocumento;
   DataProcessamento := ATitulo.DataProcessamento;
   DataDocumento := ATitulo.DataDocumento;
   DataVencimento := ATitulo.DataVencimento;
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
   Instrucoes.Assign(ATitulo.Instrucoes);
   EmissaoBoleto := ATitulo.EmissaoBoleto;
end;

function TgbTitulo.CalcularDigitoNossoNumero : string;
var
   ACodigoBanco: string;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetDigitoNossoNumero: function(ATitulo: TgbTitulo): string of object;
begin
   ACodigoBanco := Formatar(Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
   GetDigitoNossoNumero := nil;
   AClasseBanco := GetClass('TgbBanco'+ACodigoBanco);
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

function TgbTitulo.GerarCodigoBarra : TgbCobCodBar;
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
   GetCampoLivreCodigoBarra: function(ATitulo: TgbTitulo): string of object;
begin
   Result := TgbCobCodBar.Create;
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

   AClasseBanco := GetClass('TgbBanco'+ACodigoBanco);
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
//   ADigitoCodigoBarras := Modulo11(ACodigoBarras,9);
   ADigitoCodigoBarras := Calcula_QBarras(ACodigoBarras);
//   if ADigitoCodigoBarras = '0' then
//      ADigitoCodigoBarras := '1';

   Result.Codigo := Copy(ACodigoBarras,1,4) + ADigitoCodigoBarras + Copy(ACodigoBarras,5,length(ACodigoBarras)-4);

end;

function TgbTitulo.Calcula_QBarras(Num:String): String;
var D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19,
    D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31, D32, D33, D34, D35, D36, D37,
    D38, D39, D40, D41, D42, D43 : Integer;
    Total : Integer;
    Difer : Integer;
begin
 D1 := 0; D2 := 0; D3 := 0; D4 := 0; D5 := 0; D6 := 0; D7 := 0; D8 := 0; D9 := 0; D10 := 0;
 D11 := 0; D12 := 0; D13 := 0; D14 := 0; D15 := 0; D16 := 0; D17 := 0; D18 := 0; D19 := 0; D20 := 0;
 D21 := 0; D22 := 0; D23 := 0; D24 := 0; D25 := 0; D26 := 0; D27 := 0; D28 := 0; D29 := 0; D30 := 0;
 D31 := 0; D32 := 0; D33 := 0; D34 := 0; D35 := 0; D36 := 0; D37 := 0; D38 := 0; D39 := 0; D40 := 0;
 D41 := 0; D42 := 0; D43 := 0;
 if copy(Num,1,1) <> '' then
  D1 := StrToInt(copy(Num,1,1)) * 4;
 if copy(Num,2,1) <> '' then
  D2 := StrToInt(copy(Num,2,1)) * 3;
 if copy(Num,3,1) <> '' then
  D3 := StrToInt(copy(Num,3,1)) * 2;
 if copy(Num,4,1) <> '' then
  D4 := StrToInt(copy(Num,4,1)) * 9;
 if copy(Num,5,1) <> '' then
  D5 := StrToInt(copy(Num,5,1)) * 8;
 if copy(Num,6,1) <> '' then
  D6 := StrToInt(copy(Num,6,1)) * 7;
 if copy(Num,7,1) <> '' then
  D7 := StrToInt(copy(Num,7,1)) * 6;
 if copy(Num,8,1) <> '' then
  D8 := StrToInt(copy(Num,8,1)) * 5;
 if copy(Num,9,1) <> '' then
  D9 := StrToInt(copy(Num,9,1)) * 4;
 if copy(Num,10,1) <> '' then
  D10 := StrToInt(copy(Num,10,1)) * 3;
 if copy(Num,11,1) <> '' then
  D11 := StrToInt(copy(Num,11,1)) * 2;
 if copy(Num,12,1) <> '' then
  D12 := StrToInt(copy(Num,12,1)) * 9;
 if copy(Num,13,1) <> '' then
  D13 := StrToInt(copy(Num,13,1)) * 8;
 if copy(Num,14,1) <> '' then
  D14 := StrToInt(copy(Num,14,1)) * 7;
 if copy(Num,15,1) <> '' then
  D15 := StrToInt(copy(Num,15,1)) * 6;
 if copy(Num,16,1) <> '' then
  D16 := StrToInt(copy(Num,16,1)) * 5;
 if copy(Num,17,1) <> '' then
  D17 := StrToInt(copy(Num,17,1)) * 4;
 if copy(Num,18,1) <> '' then
  D18 := StrToInt(copy(Num,18,1)) * 3;
 if copy(Num,19,1) <> '' then
  D19 := StrToInt(copy(Num,19,1)) * 2;
 if copy(Num,20,1) <> '' then
  D20 := StrToInt(copy(Num,20,1)) * 9;
 if copy(Num,21,1) <> '' then
  D21 := StrToInt(copy(Num,21,1)) * 8;
 if copy(Num,22,1) <> '' then
  D22 := StrToInt(copy(Num,22,1)) * 7;
 if copy(Num,23,1) <> '' then
  D23 := StrToInt(copy(Num,23,1)) * 6;
 if copy(Num,24,1) <> '' then
  D24 := StrToInt(copy(Num,24,1)) * 5;
 if copy(Num,25,1) <> '' then
  D25 := StrToInt(copy(Num,25,1)) * 4;
 if copy(Num,26,1) <> '' then
  D26 := StrToInt(copy(Num,26,1)) * 3;
 if copy(Num,27,1) <> '' then
  D27 := StrToInt(copy(Num,27,1)) * 2;
 if copy(Num,28,1) <> '' then
  D28 := StrToInt(copy(Num,28,1)) * 9;
 if copy(Num,29,1) <> '' then
  D29 := StrToInt(copy(Num,29,1)) * 8;
 if copy(Num,30,1) <> '' then
  D30 := StrToInt(copy(Num,30,1)) * 7;
 if copy(Num,31,1) <> '' then
  D31 := StrToInt(copy(Num,31,1)) * 6;
 if copy(Num,32,1) <> '' then
  D32 := StrToInt(copy(Num,32,1)) * 5;
 if copy(Num,33,1) <> '' then
  D33 := StrToInt(copy(Num,33,1)) * 4;
 if copy(Num,34,1) <> '' then
  D34 := StrToInt(copy(Num,34,1)) * 3;
 if copy(Num,35,1) <> '' then
  D35 := StrToInt(copy(Num,35,1)) * 2;
 if copy(Num,36,1) <> '' then
  D36 := StrToInt(copy(Num,36,1)) * 9;
 if copy(Num,37,1) <> '' then
  D37 := StrToInt(copy(Num,37,1)) * 8;
 if copy(Num,38,1) <> '' then
  D38 := StrToInt(copy(Num,38,1)) * 7;
 if copy(Num,39,1) <> '' then
  D39 := StrToInt(copy(Num,39,1)) * 6;
 if copy(Num,40,1) <> '' then
  D40 := StrToInt(copy(Num,40,1)) * 5;
 if copy(Num,41,1) <> '' then
  D41 := StrToInt(copy(Num,41,1)) * 4;
 if copy(Num,42,1) <> '' then
  D42 := StrToInt(copy(Num,42,1)) * 3;
 if copy(Num,43,1) <> '' then
  D43 := StrToInt(copy(Num,43,1)) * 2;
 Total := D1 + D2 + D3 + D4 + D5 + D6 + D7 + D8 + D9 + D10 + D11 + D12 + D13 + D14 + D15 +
          D16 + D17 + D18 + D19 + D20 + D21 + D22 + D23 + D24 + D25 + D26 + D27 + D28 + D29 +
          D30 + D31 + D32 + D33 + D34 + D35 + D36 + D37 + D38 + D39 + D40 + D41 + D42 + D43;
 Difer := Total - (Trunc((Total / 11)) * 11);
 if (Difer = 10) or (Difer = 11) then
  Result := '1'
 else
  Result := FormatFloat('0',Difer);
end;

procedure TgbTitulo.PrepararBoleto(ABoleto: TBoleto);
var
   Agencia2,
   NossoNumero2,
   Especie,
   AAgenciaCodigoCedente,
   ANossoNumero,
   ACarteira,
   AEspecieDocumento,
   ACodigoBanco: string;
   AInstrucoes: TStringList;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetFormatoBoleto: procedure(ATitulo: TgbTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string) of object;
begin
   AInstrucoes := TStringList.Create;
   GetFormatoBoleto := nil;
   Agencia2 := Cedente.ContaBancaria.CodigoAgencia + '-' + Cedente.ContaBancaria.DigitoAgencia +
               ' / ' + Cedente.CodigoCedente + '-' + Cedente.DigitoCodigoCedente;
   AAgenciaCodigoCedente := Cedente.ContaBancaria.CodigoAgencia + '/' + Cedente.CodigoCedente;

   ANossoNumero := NossoNumero + '-' + DigitoNossoNumero;
//   NossoNumero2 := Copy(NossoNumero,1,3) + '.' + Copy(NossoNumero,4,3) + '.' +
//                   Copy(NossoNumero,7,5) + '-' + DigitoNossoNumero;
   NossoNumero2 := titulo1;
   ACarteira := Carteira;
   AEspecieDocumento := '';
   Especie := 'DM';

   ACodigoBanco := Formatar(Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
   AClasseBanco := GetClass('TgbBanco'+ACodigoBanco);
   if AClasseBanco <> nil then
   begin
      ABanco := AClasseBanco.Create;
      TRY
         @GetFormatoBoleto := ABanco.MethodAddress('FormatarBoleto');
         if @GetFormatoBoleto <> nil then
            GetFormatoBoleto(Self,AAgenciaCodigoCedente,ANossoNumero,ACarteira, AEspecieDocumento);
         ABanco.Free;
      EXCEPT
         ABanco.Free;
         Raise;
      END
   end;

 {  Manoel = Comentado para nao usar as intrucoes do componente
              foi criado campos instrucoes na tabela Banco

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
   }



  
   AInstrucoes.AddStrings(Instrucoes);

   with ABoleto do
   begin
                  // Inicio do Boleto  - Manoel 10/02/2007

      ReportTitle := 'Cobrança - ' + Cedente.ContaBancaria.Banco.Nome + ' - Sacado: ' + Sacado.Nome;

      {Primeira via do boleto}

      txtDataVencimento.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
      txtNomeCedente.Caption := AnsiUpperCase(Cedente.Nome);
      //txtDataDocumento.Caption := FormatDateTime('dd/mm/yyyy',DataDocumento);
      //txtNumeroDocumento.Caption := NumeroDocumento;
      //txtDataProcessamento.Caption := FormatDateTime('dd/mm/yyyy',Now);
      txtNossoNumero.Caption := NossoNumero2;
      //txtEspecieMoeda.Caption := 'R$';
      txtValorDocumento.Caption := FormatCurr('#,##0.00',ValorDocumento);
      txtInstrucoes.Lines.Clear;
      txtInstrucoes.Lines.AddStrings(AInstrucoes);
      txtValorDescontoAbatimento.Caption := '';
      txtSacadoNome.Caption := AnsiUpperCase(Sacado.Nome);
      txtSacadoRuaNumeroComplemento.Caption := AnsiUpperCase(Sacado.Endereco.Rua + ' - ' + Sacado.Endereco.Complemento);
      txtSacadoCEPBairroCidadeEstado.Caption := AnsiUpperCase(FormatarComMascara('00000-000;0; ',Sacado.Endereco.CEP));
      txtbairro.Caption := AnsiUpperCase(Sacado.Endereco.Bairro);
      txtmunicipio.Caption := AnsiUpperCase(Sacado.Endereco.Cidade);
      txtestado.Caption := AnsiUpperCase(Sacado.Endereco.Estado);
      txtEnderecoCedente.Caption := Cedente.Endereco.Rua;//dm.cds_empresaENDERECO.AsString;
      txtCep.Caption := Cedente.Endereco.CEP;//dm.cds_empresaCEP.AsString;
      txtCidade.Caption := Cedente.Endereco.Cidade;//dm.cds_empresaCIDADE.AsString;
      txtUf.Caption := Cedente.Endereco.Estado;//dm.cds_empresaUF.AsString;
      txtFone.Caption :=  fRel_CR.cds_empresaFONE.AsString;
      txtFax.Caption := fRel_CR.cds_empresaFAX.AsString;
      txtEmail.Caption := Cedente.Endereco.EMail;//dm.cds_empresaE_MAIL.AsString;
      txtWeb.Caption := fRel_CR.cds_empresaWEB.AsString;
      txtDDD.Caption := '('+ (fRel_CR.cds_empresaDDD.AsString)+')';
      txtDDDFax.Caption := '('+ (fRel_CR.cds_empresaDDD.AsString)+')';
      txtCNPJ.Caption := Cedente.NumeroCPFCGC;//dm.cds_empresaCNPJ_CPF.AsString;

      {Segunda via do boleto}




      {Terceira via do boleto}
      txtNomeBanco3.Caption := Cedente.ContaBancaria.Banco.Nome;
      txtCodigoBanco3.Caption := Cedente.ContaBancaria.Banco.Codigo + '-' + Cedente.ContaBancaria.Banco.Digito;
      txtLocalPagamento3.Caption := AnsiUpperCase(LocalPagamento);
      txtDataVencimento3.Caption := FormatDateTime('dd/mm/yyyy',DataVencimento);
      txtNomeCedente3.Caption := AnsiUpperCase(Cedente.Nome);
//      txtAgenciaCodigoCedente3.Caption := AAgenciaCodigoCedente;
      txtAgenciaCodigoCedente3.Caption := Agencia2;
      txtDataDocumento3.Caption := FormatDateTime('dd/mm/yyyy',DataDocumento);
      txtNumeroDocumento3.Caption := NumeroDocumento;
//      txtEspecieDocumento3.Caption := AEspecieDocumento;
      txtEspecieDocumento3.Caption := Especie;
      if AceiteDocumento = adSim then
         txtAceite3.Caption := 'S'
      else
         txtAceite3.Caption := 'N';
      txtDataProcessamento3.Caption := FormatDateTime('dd/mm/yyyy',Now);
//      txtNossoNumero3.Caption := ANossoNumero;
      txtNossoNumero3.Caption := titulo1;
      txtUsoBanco3.Caption := '';
      txtCarteira3.Caption := ACarteira;
      txtEspecieMoeda3.Caption := 'R$';
      txtQuantidadeMoeda3.Caption := '';
      txtValorMoeda3.Caption := '';
      txtValorDocumento3.Caption := FormatCurr('#,##0.00',ValorDocumento);
      txtInstrucoes3.Lines.Clear;
      txtInstrucoes3.Lines.AddStrings(AInstrucoes);
//      txtValorDescontoAbatimento3.Caption := '';
//      txtValorDescontoAbatimentoB3.Caption := '';
//      txtValorMoraMulta3.Caption := '';
//      txtValorMoraMultaB3.Caption := '';
      txtValorCobrado3.Caption := '';
      txtSacadoNome3.Caption := AnsiUpperCase(Sacado.Nome);
      case Sacado.TipoInscricao of
         tiPessoaFisica  : txtSacadoCPFCGC3.Caption := 'CPF: ' + FormatarComMascara('!000\.000\.000\-00;0; ',Sacado.NumeroCPFCGC);
         tiPessoaJuridica: txtSacadoCPFCGC3.Caption := 'CNPJ: ' + FormatarComMascara('!00\.000\.000\/0000\-00;0; ',Sacado.NumeroCPFCGC);
         tiOutro         : txtSacadoCPFCGC3.Caption := Sacado.NumeroCPFCGC;
      end;
      txtSacadoRuaNumeroComplemento3.Caption := AnsiUpperCase(Sacado.Endereco.Rua + ' - ' + Sacado.Endereco.Complemento);
      txtSacadoCEPBairroCidadeEstado3.Caption := AnsiUpperCase(Sacado.Endereco.Bairro + '    ' + Sacado.Endereco.Cidade + '    ' + Sacado.Endereco.Estado + FormatarComMascara('00000-000;0; ',Sacado.Endereco.CEP));
      txtavalista.Caption := AnsiUpperCase(avalista);
      //      txtCodigoBaixa3.Caption := ANossoNumero;
      txtCodigoBaixa3.Caption := NossoNumero2;
      txtLinhaDigitavel3.Caption := CodigoBarra.LinhaDigitavel;
      imgCodigoBarras3.Picture.Assign(CodigoBarra.Imagem.Picture);
   end;

   AInstrucoes.Free;
end;

//procedure TgbTitulo.EnviarPorEMail(Host, LoginUsuario: string; Porta : integer; Assunto : string; Mensagem : TStringList);
//var
   {$IFDEF VER150}
//     Mail : TIdMessage;
//     SMTP : TIdSMTP;
   {$ELSE}
//     Mail : TNMSMTP;
   {$ENDIF}
//   NomeArquivo : string;
//begin
{   if Host = '' then
      Raise Exception.Create('O host não foi informado');
   if Assunto = '' then
      Raise Exception.Create('O assunto da mensagem não foi informado');


   {$IFDEF VER150}
{     Mail := TIdMessage.Create(nil);
     SMTP := TIdSMTP.Create(nil);

     TRY
        NomeArquivo := 'ImagemBoleto.bmp';
        ImagemBoleto.Picture.SaveToFile(NomeArquivo);
        with Mail do
        begin
           if Cedente.Endereco.EMail <> '' then
              From.Address := Cedente.Endereco.EMail
           else
              Raise Exception.Create('O e-mail do cedente não foi informado');

           if Cedente.Nome <> '' then
              From.Name := Cedente.Nome
           else
              From.Name := From.Address;

           ReplyTo.EMailAddresses := From.Address;

           if Sacado.Endereco.EMail <> '' then
              Recipients.EMailAddresses := Sacado.Endereco.EMail
           else
              Raise Exception.Create('O e-mail do sacado não foi informado');

           Subject  := Assunto;
           Body.Text:= Mensagem.Text;
           TIdAttachment.Create(Mail.MessageParts, NomeArquivo);
        end;
        SMTP.Host := Host;
        SMTP.Username := LoginUsuario;
        SMTP.Port := Porta;
        SMTP.Connect;
        SMTP.Send(Mail);
        SMTP.Disconnect;
     EXCEPT
        if SMTP.Connected then SMTP.Disconnect;
        Raise;
     END;
     Mail.Free;
     SMTP.Free;
     if FileExists(NomeArquivo) then DeleteFile(NomeArquivo);

   {$ELSE}

{     Mail := TNMSMTP.Create(nil);

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
     EXCEPT
        if Mail.Connected then Mail.Disconnect;
        Raise;
     END;
     Mail.Free;
     if FileExists(NomeArquivo) then DeleteFile(NomeArquivo);

   {$ENDIF}
//end;

procedure TgbTitulo.Visualizar;
var
   ABoleto : TBoleto;
begin
   ABoleto := TBoleto.Create(nil);
   TRY
      PrepararBoleto(ABoleto);
      ABoleto.Preview;
      ABoleto.Free;
   EXCEPT
      ABoleto.Free;
      Raise;
   END;
end;

procedure TgbTitulo.Imprimir;
var
   ABoleto : TBoleto;
begin
   ABoleto := TBoleto.Create(nil);
   TRY
      PrepararBoleto(ABoleto);
      ABoleto.Print;
      ABoleto.Free;
   EXCEPT
      ABoleto.Free;
      Raise;
   END;
end;

function TgbTitulo.GetImagemBoleto : TImage;
var
   ABoleto : TBoleto;
   AImagem : TMetafile;
begin
   ABoleto := TBoleto.Create(nil);
   AImagem := TMetafile.Create;
   Result := TImage.Create(nil);
   TRY
      PrepararBoleto(ABoleto);
      ABoleto.Prepare;

      AImagem := ABoleto.QRPrinter.GetPage(1);
      Result.Height := AImagem.Height;
      Result.Width := AImagem.Width;
      Result.Canvas.Draw(0,0,AImagem);

      Result.Picture.Bitmap.Monochrome := TRUE;
      AImagem.Free;
      ABoleto.QRPrinter.Free;
      ABoleto.Free;
   EXCEPT
      AImagem.Free;
      ABoleto.QRPrinter.Free;
      ABoleto.Free;
      Raise;
   END;
   ABoleto.QRPrinter := nil;
end;

function TgbTitulo.GetImagemFichaCompensacao : TImage;
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

{TgbTituloList}

constructor TgbTituloList.Create;
begin
   {$IFDEF VER140}
      inherited Create(true);
   {$ELSE}
      {$IFDEF VER130}
         inherited Create(true);
      {$ELSE}
         inherited Create;
      {$ENDIF}
   {$ENDIF}
end;

function TgbTituloList.FindInstanceOf(AClass: TClass; AExact: Boolean;
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

function TgbTituloList.GetItem(Index: Integer): TgbTitulo;
begin
   Result := inherited Items[Index] as TgbTitulo;
end;

function TgbTituloList.Add(ATitulo : TgbTitulo) : integer;
var
   NovoTitulo : TgbTitulo;
begin
   NovoTitulo := TgbTitulo.Create(nil);
   NovoTitulo.Assign(ATitulo);
   Result := inherited Add(NovoTitulo);
end;

function TgbTituloList.IndexOf(ATitulo : TgbTitulo): Integer;
begin
  Result := inherited IndexOf(ATitulo);
end;

procedure TgbTituloList.Insert(Index: Integer; ATitulo: TgbTitulo);
begin
  inherited Insert(Index, ATitulo);
end;

function TgbTituloList.Remove(ATitulo: TgbTitulo): Integer;
begin
  Result := inherited Remove(ATitulo);
end;

procedure TgbTituloList.SetItem(Index: Integer; ATitulo: TgbTitulo);
begin
  inherited Items[Index] := ATitulo;
end;

{TgbCobranca}

constructor TgbCobranca.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   LayoutArquivo := laCNAB400;
   TipoMovimento := tmRetorno;
   Titulos := TgbTituloList.Create;
end;

destructor TgbCobranca.Destroy;
begin
   Titulos.Destroy;
   inherited Destroy;
end;

function TgbCobranca.GerarRemessa : boolean;
var
   Remessa: TStringList;
   ACodigoBanco: string;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetRemessa: function(var ACobranca: TgbCobranca; var Remessa: TStringList): boolean of object;
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
      AClasseBanco := GetClass('TgbBanco'+ACodigoBanco);
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


function TgbCobranca.LerRetorno : boolean;
var
   ACodigoBanco: string;
   Retorno : TStringList;
   AClasseBanco: TPersistentClass;
   ABanco: TPersistent;
   GetRetorno: function(var ACobranca: TgbCobranca; Retorno: TStringList): boolean of object;
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

      AClasseBanco := GetClass('TgbBanco'+ACodigoBanco);
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


function TgbCobranca.GerarRelatorio : TStringList;
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

            if trim(OcorrenciaOriginal) <> '' then
              if trim(DescricaoOcorrenciaOriginal) <> '' then
                 Add('Ocorrênc original: ' + DescricaoOcorrenciaOriginal )
              else
                 Add('Ocorrênc original: ' + OcorrenciaOriginal);
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

end.

