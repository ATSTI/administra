{***********************************************************************************************************}
{                                                                                                           }
{                                             XML Data Binding                                              }
{                                                                                                           }
{  12/02/2008 15:16 - Geração                                                                               }
{                                                                                                           }
{  12/02/2008 18:30 - Disponibilização para Testes:                                                         }
{                                                                                                           }
{  21/02/2008 17:33 - Correções Diversas (O Wizard não gerou coleções em alguns atributos)                  }
{                                                                                                           }
{  11/03/2008 09:56 - A classe Ct_OPMUtilizada só estava permitindo o cadastro de uma OPM                   }
{                                                                                                           }
{***********************************************************************************************************}

unit UTissV2_01_03;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  I213_MensagemTISS = interface;
  I213_CabecalhoTransacao = interface;
  I213_IdentificacaoTransacao = interface;
  I213_Ct_motivoGlosa = interface;
  I213_Ct_motivoGlosaList = interface;
  I213_Origem = interface;
  I213_Ct_identificacaoPrestadorExecutante = interface;
  I213_Destino = interface;
  I213_OperadoraParaPrestador = interface;
  I213_Ct_protocoloRecebimento = interface;
  I213_Ct_identificacaoOperadora = interface;
  I213_Ct_contratado = interface;
  I213_Ct_endereco = interface;
  I213_Ct_detalheProtocolo = interface;
  I213_CodigoGlosaProtocolo = interface;
  I213_FalhaNegocio = interface;
  I213_GuiasStatusLote = interface;
  I213_Ct_dadosGuia = interface;
  I213_Ct_beneficiario = interface;
  I213_Procedimentos = interface;
  I213_ProcedimentosAutorizacaoProc = interface;
  I213_ProcedimentosEquipe = interface;
  I213_Procedimento = interface;
  I213_ProcedimentoReapr = interface;
  I213_Ct_dadosProcedimento = interface;
  I213_Ct_tabela = interface;
  I213_RelacaoGlosa = interface;
  I213_DemonstrativosRetorno = interface;
  I213_Ct_demonstrativoAnaliseConta = interface;
  I213_Ct_demonstrativoAnaliseContaList = interface;
  I213_Ct_cabecalhoDemonstrativo = interface;
  I213_Fatura = interface;
  I213_Ct_dadosConta = interface;
  I213_Lote = interface;
  I213_LoteStatusProtocolo = interface;
  I213_Ct_dadosLote = interface;
  I213_Guias = interface;
  I213_Ct_demonstrativoOdontologia = interface;
  I213_Ct_demonstrativoOdontologiaList = interface;
  I213_IdentificacaoOperadora = interface;
  I213_Ct_periodoProcessamento = interface;
  I213_DadosPrestador = interface;
  I213_Ct_identificadorPrestOdontoDemo = interface;
  I213_Ct_dadosPagamento = interface;
  I213_Ct_totalDemoOdonto = interface;
  I213_DebitosCreditosTributaveis = interface;
  I213_Ct_descontoOdonto = interface;
  I213_Ct_descontoOdontoList = interface;
  I213_Ct_creditoOdonto = interface;
  I213_Ct_creditoOdontoList = interface;
  I213_DemaisImpostos = interface;
  I213_DebitosCreditosNaoTributaveis = interface;
  I213_Ct_demonstrativoPagamento = interface;
  I213_Ct_demonstrativoPagamentoList = interface;
  I213_Ct_dadoBancario = interface;
  I213_DadosResumo = interface;
  I213_Ct_dadosResumo = interface;
  I213_Ct_dadosResumoList = interface;
  I213_Ct_descontos = interface;
  I213_ItemDesconto = interface;
  I213_Ct_StatusProtocolo = interface;
  I213_Ct_statusLote = interface;
  I213_Detalheguia = interface;
  I213_Ct_cabecalhoGuia = interface;
  I213_ProcedimentosAnalisados = interface;
  I213_Ct_itemSolicitacao = interface;
  I213_Glosas = interface;
  I213_Ct_autorizacaoProcedimento = interface;
  I213_TotalOdonto = interface;
  I213_Ct_diariaProrrogacao = interface;
  I213_Ct_situacaoAutorizacao = interface;
  I213_DadosAutorizacao = interface;
  I213_Ct_diariaProrrogacaoAutorizada = interface;
  I213_Ct_retornoElegibilidade = interface;
  I213_Ct_reciboCancelaGuia = interface;
  I213_GuiasCanceladas = interface;
  I213_DadosGuia = interface;
  I213_PrestadorParaOperadora = interface;
  I213_Ct_loteGuias = interface;
  I213_Ct_guias = interface;
  I213_Ct_solicitacaoDemonstrativoPagamento = interface;
  I213_Ct_solicitacaoStatusProtocolo = interface;
  I213_DetalheProtocolo = interface;
  I213_SolicitacaoProcedimento = interface;
  I213_Ct_guiaSolicInternacao = interface;
  I213_Ct_guiaSolicInternacaoList = interface;
  I213_Ct_cabecalhoSolicitacao = interface;
  I213_Ct_solicitante = interface;
  I213_Ct_contratadoSolicitante = interface;
  I213_Ct_identificacaoPrestador = interface;
  I213_Ct_conselhoProfissional = interface;
  I213_Ct_identificacaoProfissional = interface;
  I213_PrestadorSolicitado = interface;
  I213_Ct_hipoteseDiagnostica = interface;
  I213_Ct_diagnosticoGuia = interface;
  I213_Ct_diagnostico = interface;
  I213_Ct_tempoEvolucaoDoenca = interface;
  I213_Ct_diagnosticosSecundarios = interface;
  I213_Ct_diagnosticosSecundariosList = interface;
  I213_Ct_procedimentosSolicitados = interface;
  I213_ProcedimentoSolicitado = interface;
  I213_Ct_OPMSolicitadas = interface;
  I213_OPMSolicitada = interface;
  I213_Ct_guiaSolicitacaoSP_SADT = interface;
  I213_Ct_guiaSolicitacaoSP_SADTList = interface;
  I213_Ct_guiaSolicitacaoOdonto = interface;
  I213_Ct_guiaSolicitacaoOdontoList = interface;
  I213_Ct_cabecalhoGuiaOdonto = interface;
  I213_DadosBeneficiario = interface;
  I213_DadosSolicitante = interface;
  I213_DadosContratado = interface;
  I213_Ct_profissionalExecutante = interface;
  I213_Ct_situacaoInicial = interface;
  I213_Ct_situacaoClinica = interface;
  I213_Dentes = interface;
  I213_PlanoTratamento = interface;
  I213_Ct_procedimentoOdontologia = interface;
  I213_Ct_denteRegiao = interface;
  I213_Ct_guiaSolicitacaoProrrogacao = interface;
  I213_Ct_guiaSolicitacaoProrrogacaoList = interface;
  I213_DiariaProrrogacaoAutorizada = interface;
  I213_Ct_solicitaStatusAutorizacao = interface;
  I213_IdentificacaoAutorizacao = interface;
  I213_IdentificacaoSolicitacao = interface;
  I213_Ct_solicitaElegibilidade = interface;
  I213_Ct_cancelaGuia = interface;
  I213_Epilogo = interface;
  I213_DefinicaoTissNet = interface;
  I213_Nodo_tissnet = interface;
  I213_PontoAPonto = interface;
  I213_Ct_hostporta = interface;
  I213_WebServices = interface;
  I213_Ct_atendimentoConsulta = interface;
  I213_Ct_atendimentoConsultaReapr = interface;
  I213_Ct_atendimentoOdontologia = interface;
  I213_Ct_autorizacaoGuia = interface;
  I213_Ct_autorizacaoGuiaInternacao = interface;
  I213_AutorizacaoServico = interface;
  I213_AutorizacaoServicoList = interface;
  I213_MotivoNegativa = interface;
  I213_DadosPagamento = interface;
  I213_Ct_loteOdonto = interface;
  I213_Ct_detalheGuiaOdonto = interface;
  I213_ProcedimentoRealizadoOdonto = interface;
  I213_ProcedimentoRealizado = interface;
  I213_Ct_procedimentoOdontoRealizado = interface;
  I213_Ct_diagnosticoAtendimento = interface;
  I213_Ct_diagnosticoSaidaInternacao = interface;
  I213_Ct_obitoInternacao = interface;
  I213_Ct_obitoInternacaoList = interface;
  I213_Ct_executanteComplementar = interface;
  I213_Ct_identificacaoEquipe = interface;
  I213_MembroEquipe = interface;
  I213_Ct_identificacaoPrestadorEquipe = interface;
  I213_DadosExecutante = interface;
  I213_Ct_identificacaoProfissionalCompl = interface;
  I213_Ct_internacaoObstetrica = interface;
  I213_Ct_numeroDN = interface;
  I213_LoteOdonto = interface;
  I213_Ct_obitoNeonatal = interface;
  I213_Ct_OPMUtilizada = interface;
  I213_OPM = interface;
  I213_IdentificacaoOPMUtilizada = interface;
  I213_IdentificacaoOPM = interface;
  I213_Ct_OPMUtilizadasRevisao = interface;
  I213_OPMUtilizada = interface;
  I213_Ct_outrasDespesas = interface;
  I213_Despesa = interface;
  I213_DespesaList = interface;
  I213_Ct_outrasDespesasRevisao = interface;
  I213_ItensDespesas = interface;
  I213_ItensDespesasList = interface;
  I213_Ct_procedimentosRealizados = interface;
  I213_Ct_procedimentoOdontoRevisao = interface;
  I213_ProcedimentoOdontologia = interface;
  I213_Ct_procedimentoRealizadoEquipe = interface;
  I213_Ct_procedimentoRevisao = interface;
  I213_Ct_procedimentoRevisaoList = interface;
  I213_ProcedimentosRevisao = interface;
  I213_Ct_situacaoDentes = interface;
  I213_Ct_totaisOdonto = interface;
  I213_Ct_tratamenteOdontoRealizado = interface;
  I213_Ct_tratamentoOdontoSolicitado = interface;
  I213_Ct_valorTotalServicos = interface;
  I213_GuiaFaturamento = interface;
  I213_Ct_guiaConsulta = interface;
  I213_Ct_guiaConsultaList = interface;
  I213_HipoteseDiagnostica = interface;
  I213_DadosAtendimento = interface;
  I213_Ct_guiaSP_SADT = interface;
  I213_Ct_guiaSP_SADTList = interface;
  I213_PrestadorExecutante = interface;
  I213_ProfissionalExecutanteCompl = interface;
  I213_Ct_guiaResumoInternacao = interface;
  I213_Ct_guiaResumoInternacaoList = interface;
  I213_Ct_guiaHonorarioIndividual = interface;
  I213_Ct_guiaHonorarioIndividualList = interface;
  I213_ContratadoExecutante = interface;
  I213_ProcedimentosExamesRealizados = interface;
  I213_Ct_guiaOdontologia = interface;
  I213_Ct_guiaOdontologiaList = interface;
  I213_DadosContratadoExecutante = interface;
  I213_ProcedimentosExecutados = interface;
  I213_ProcedimentosExecutadosOdontoRevisao = interface;
  I213_ProcedimentoExecutado = interface;
  I213_ProcedimentoExecutadoList = interface;
  I213_GuiaRevisaoGlosa = interface;
  I213_Ct_guiaConsultaReapresentacao = interface;
  I213_Ct_guiaConsultaReapresentacaoList = interface;
  I213_Ct_guiaSP_SADTReapresentacao = interface;
  I213_Ct_guiaSP_SADTReapresentacaoList = interface;
  I213_Ct_guiaResumoInternacaoReapresentacao = interface;
  I213_Ct_guiaResumoInternacaoReapresentacaoList = interface;
  I213_Ct_guiaHonorarioIndividualReapresentacao = interface;
  I213_Ct_guiaHonorarioIndividualReapresentacaoList = interface;
  I213_Ct_guiaTratamentoOdontologicoReapresentacao = interface;
  I213_Ct_guiaTratamentoOdontologicoReapresentacaoList = interface;
  I213_St_tipoGlosaList = interface;
  I213_OPMIdentificacao = interface;

{ I213_MensagemTISS }

  I213_MensagemTISS = interface(IXMLNode)
    ['{BA8DFCE2-0BCC-4C5B-95E2-0A6E1F73DCF7}']
    { Property Accessors }
    function Get_Cabecalho: I213_CabecalhoTransacao;
    function Get_OperadoraParaPrestador: I213_OperadoraParaPrestador;
    function Get_PrestadorParaOperadora: I213_PrestadorParaOperadora;
    function Get_Epilogo: I213_Epilogo;
    { Methods & Properties }
    property Cabecalho: I213_CabecalhoTransacao read Get_Cabecalho;
    property OperadoraParaPrestador: I213_OperadoraParaPrestador read Get_OperadoraParaPrestador;
    property PrestadorParaOperadora: I213_PrestadorParaOperadora read Get_PrestadorParaOperadora;
    property Epilogo: I213_Epilogo read Get_Epilogo;
  end;

{ I213_CabecalhoTransacao }

  I213_CabecalhoTransacao = interface(IXMLNode)
    ['{EE9A4923-3F19-402E-9BF3-2786981ADE87}']
    { Property Accessors }
    function Get_IdentificacaoTransacao: I213_IdentificacaoTransacao;
    function Get_FalhaNegocio: I213_FalhaNegocio;
    function Get_Origem: I213_Origem;
    function Get_Destino: I213_Destino;
    function Get_VersaoPadrao: WideString;
    procedure Set_VersaoPadrao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoTransacao: I213_IdentificacaoTransacao read Get_IdentificacaoTransacao;
    property FalhaNegocio: I213_FalhaNegocio read Get_FalhaNegocio;
    property Origem: I213_Origem read Get_Origem;
    property Destino: I213_Destino read Get_Destino;
    property VersaoPadrao: WideString read Get_VersaoPadrao write Set_VersaoPadrao;
  end;

{ I213_IdentificacaoTransacao }

  I213_IdentificacaoTransacao = interface(IXMLNode)
    ['{24F0E71E-D046-4362-A491-B3436F42383B}']
    { Property Accessors }
    function Get_TipoTransacao: WideString;
    function Get_SequencialTransacao: Integer;
    function Get_DataRegistroTransacao: WideString;
    function Get_HoraRegistroTransacao: WideString;
    procedure Set_TipoTransacao(Value: WideString);
    procedure Set_SequencialTransacao(Value: Integer);
    procedure Set_DataRegistroTransacao(Value: WideString);
    procedure Set_HoraRegistroTransacao(Value: WideString);
    { Methods & Properties }
    property TipoTransacao: WideString read Get_TipoTransacao write Set_TipoTransacao;
    property SequencialTransacao: Integer read Get_SequencialTransacao write Set_SequencialTransacao;
    property DataRegistroTransacao: WideString read Get_DataRegistroTransacao write Set_DataRegistroTransacao;
    property HoraRegistroTransacao: WideString read Get_HoraRegistroTransacao write Set_HoraRegistroTransacao;
  end;

{ I213_Ct_motivoGlosa }

  I213_Ct_motivoGlosa = interface(IXMLNode)
    ['{C03BA2F5-1752-4700-9A93-24E0CCB68ADA}']
    { Property Accessors }
    function Get_CodigoGlosa: WideString;
    function Get_DescricaoGlosa: WideString;
    procedure Set_CodigoGlosa(Value: WideString);
    procedure Set_DescricaoGlosa(Value: WideString);
    { Methods & Properties }
    property CodigoGlosa: WideString read Get_CodigoGlosa write Set_CodigoGlosa;
    property DescricaoGlosa: WideString read Get_DescricaoGlosa write Set_DescricaoGlosa;
  end;

{ I213_Ct_motivoGlosaList }

  I213_Ct_motivoGlosaList = interface(IXMLNodeCollection)
    ['{B8139A30-B0D8-4FBB-8E3C-1E810C32F269}']
    { Methods & Properties }
    function Add: I213_Ct_motivoGlosa;
    function Insert(const Index: Integer): I213_Ct_motivoGlosa;
    function Get_Item(Index: Integer): I213_Ct_motivoGlosa;
    property Items[Index: Integer]: I213_Ct_motivoGlosa read Get_Item; default;
  end;

{ I213_Origem }

  I213_Origem = interface(IXMLNode)
    ['{9EDD46A9-0F46-45F9-9F91-09E79B2681F7}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante read Get_CodigoPrestadorNaOperadora;
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
  end;

{ I213_Ct_identificacaoPrestadorExecutante }

  I213_Ct_identificacaoPrestadorExecutante = interface(IXMLNode)
    ['{3CDDCBE1-21F6-4064-8BFB-DFD8FAC94F1E}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property CodigoPrestadorNaOperadora: WideString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
  end;

{ I213_Destino }

  I213_Destino = interface(IXMLNode)
    ['{8C9DBF99-B351-4126-BC82-DCA256E3C4B0}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante read Get_CodigoPrestadorNaOperadora;
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
  end;

{ I213_OperadoraParaPrestador }

  I213_OperadoraParaPrestador = interface(IXMLNode)
    ['{E825A36C-3D56-4CDC-A117-1995B6F244AD}']
    { Property Accessors }
    function Get_ProtocoloRecebimento: I213_Ct_protocoloRecebimento;
    function Get_DemonstrativosRetorno: I213_DemonstrativosRetorno;
    function Get_SituacaoProtocolo: I213_Ct_StatusProtocolo;
    function Get_AutorizacaoServico: I213_AutorizacaoServicoList;
    function Get_SituacaoAutorizacao: I213_Ct_situacaoAutorizacao;
    function Get_RespostaElegibilidade: I213_Ct_retornoElegibilidade;
    function Get_ReciboCancelaGuia: I213_Ct_reciboCancelaGuia;
    { Methods & Properties }
    property ProtocoloRecebimento: I213_Ct_protocoloRecebimento read Get_ProtocoloRecebimento;
    property DemonstrativosRetorno: I213_DemonstrativosRetorno read Get_DemonstrativosRetorno;
    property SituacaoProtocolo: I213_Ct_StatusProtocolo read Get_SituacaoProtocolo;
    property AutorizacaoServico: I213_AutorizacaoServicoList read Get_AutorizacaoServico;
    property SituacaoAutorizacao: I213_Ct_situacaoAutorizacao read Get_SituacaoAutorizacao;
    property RespostaElegibilidade: I213_Ct_retornoElegibilidade read Get_RespostaElegibilidade;
    property ReciboCancelaGuia: I213_Ct_reciboCancelaGuia read Get_ReciboCancelaGuia;
  end;

{ I213_Ct_protocoloRecebimento }

  I213_Ct_protocoloRecebimento = interface(IXMLNode)
    ['{46DF14AB-8F30-41DF-B128-7799F87EBC5D}']
    { Property Accessors }
    function Get_DadosOperadora: I213_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroLote: WideString;
    function Get_MensagemDetalheProtocolo: I213_Ct_detalheProtocolo;
    function Get_NumeroProtocoloRecebimento: WideString;
    function Get_MensagemErro: WideString;
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_NumeroProtocoloRecebimento(Value: WideString);
    procedure Set_MensagemErro(Value: WideString);
    { Methods & Properties }
    property DadosOperadora: I213_Ct_identificacaoOperadora read Get_DadosOperadora;
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroLote: WideString read Get_NumeroLote write Set_NumeroLote;
    property MensagemDetalheProtocolo: I213_Ct_detalheProtocolo read Get_MensagemDetalheProtocolo;
    property NumeroProtocoloRecebimento: WideString read Get_NumeroProtocoloRecebimento write Set_NumeroProtocoloRecebimento;
    property MensagemErro: WideString read Get_MensagemErro write Set_MensagemErro;
  end;

{ I213_Ct_identificacaoOperadora }

  I213_Ct_identificacaoOperadora = interface(IXMLNode)
    ['{95F43836-A7E4-44F0-8805-63053B553291}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_NomeOperadora: WideString;
    function Get_CNPJ: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NomeOperadora(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property NomeOperadora: WideString read Get_NomeOperadora write Set_NomeOperadora;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
  end;

{ I213_Ct_contratado }

  I213_Ct_contratado = interface(IXMLNode)
    ['{701DB71A-91C4-49B3-A6E2-AB379299296E}']
    { Property Accessors }
    function Get_Identificacao: I213_Ct_identificacaoPrestadorExecutante;
    function Get_NomeContratado: WideString;
    function Get_EnderecoContratado: I213_Ct_endereco;
    function Get_NumeroCNES: WideString;
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
    { Methods & Properties }
    property Identificacao: I213_Ct_identificacaoPrestadorExecutante read Get_Identificacao;
    property NomeContratado: WideString read Get_NomeContratado write Set_NomeContratado;
    property EnderecoContratado: I213_Ct_endereco read Get_EnderecoContratado;
    property NumeroCNES: WideString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ I213_Ct_endereco }

  I213_Ct_endereco = interface(IXMLNode)
    ['{33692CA5-D581-471D-96E0-EA17E180722C}']
    { Property Accessors }
    function Get_TipoLogradouro: WideString;
    function Get_Logradouro: WideString;
    function Get_Numero: WideString;
    function Get_Complemento: WideString;
    function Get_CodigoIBGEMunicipio: WideString;
    function Get_Municipio: WideString;
    function Get_CodigoUF: WideString;
    function Get_Cep: WideString;
    procedure Set_TipoLogradouro(Value: WideString);
    procedure Set_Logradouro(Value: WideString);
    procedure Set_Numero(Value: WideString);
    procedure Set_Complemento(Value: WideString);
    procedure Set_CodigoIBGEMunicipio(Value: WideString);
    procedure Set_Municipio(Value: WideString);
    procedure Set_CodigoUF(Value: WideString);
    procedure Set_Cep(Value: WideString);
    { Methods & Properties }
    property TipoLogradouro: WideString read Get_TipoLogradouro write Set_TipoLogradouro;
    property Logradouro: WideString read Get_Logradouro write Set_Logradouro;
    property Numero: WideString read Get_Numero write Set_Numero;
    property Complemento: WideString read Get_Complemento write Set_Complemento;
    property CodigoIBGEMunicipio: WideString read Get_CodigoIBGEMunicipio write Set_CodigoIBGEMunicipio;
    property Municipio: WideString read Get_Municipio write Set_Municipio;
    property CodigoUF: WideString read Get_CodigoUF write Set_CodigoUF;
    property Cep: WideString read Get_Cep write Set_Cep;
  end;

{ I213_Ct_detalheProtocolo }

  I213_Ct_detalheProtocolo = interface(IXMLNode)
    ['{DAA48597-3336-479B-8103-CF7A93E30AFD}']
    { Property Accessors }
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: WideString;
    function Get_CodigoGlosaProtocolo: I213_CodigoGlosaProtocolo;
    function Get_Guias: I213_Guias;
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: WideString);
    { Methods & Properties }
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorProtocolo: WideString read Get_ValorProtocolo write Set_ValorProtocolo;
    property CodigoGlosaProtocolo: I213_CodigoGlosaProtocolo read Get_CodigoGlosaProtocolo;
    property Guias: I213_Guias read Get_Guias;
  end;

{ I213_CodigoGlosaProtocolo }

  I213_CodigoGlosaProtocolo = interface(IXMLNode)
    ['{C792EBB3-ABF9-4855-B135-D735CE628A0F}']
    { Property Accessors }
    function Get_MotivoGlosa: I213_Ct_motivoGlosaList;
    function Get_ValorGlosaProtocolo: WideString;
    procedure Set_ValorGlosaProtocolo(Value: WideString);
    { Methods & Properties }
    property MotivoGlosa: I213_Ct_motivoGlosaList read Get_MotivoGlosa;
    property ValorGlosaProtocolo: WideString read Get_ValorGlosaProtocolo write Set_ValorGlosaProtocolo;
  end;

{ I213_FalhaNegocio }

  I213_FalhaNegocio = interface(I213_Ct_motivoGlosa)
    ['{EFDD8EC7-BD59-48B2-A5FB-A0B779ADB76A}']
    { Property Accessors }
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Guias }

  I213_Guias = interface(IXMLNodeCollection)
    ['{0AF7C399-913D-4887-BB92-A63DB92C1D6A}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I213_Ct_dadosGuia;
    { Methods & Properties }
    function Add: I213_Ct_dadosGuia;
    function Insert(const Index: Integer): I213_Ct_dadosGuia;
    property DadosGuia[Index: Integer]: I213_Ct_dadosGuia read Get_DadosGuia; default;
  end;

{ I213_GuiasStatusLote }

  I213_GuiasStatusLote = interface(IXMLNodeCollection)
    ['{1EC5E5F2-FA58-4026-8A5A-C59BDBD68A62}']
    { Property Accessors }
    function Get_Detalheguia(Index: Integer): I213_Detalheguia;
    { Methods & Properties }
    function Add: I213_Detalheguia;
    function Insert(const Index: Integer): I213_Detalheguia;
    property Detalheguia[Index: Integer]: I213_Detalheguia read Get_Detalheguia; default;
  end;

{ I213_Guias }

//  I213_Guias = interface(I213_Ct_guias)
//    ['{A59DFE85-6022-4643-83D5-021E484D3C96}']
//  end;

{ I213_Ct_dadosGuia }

  I213_Ct_dadosGuia = interface(IXMLNode)
    ['{79C29898-9B60-4A20-BDED-D5497489218F}']
    { Property Accessors }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_DataRealizacao: WideString;
    function Get_ValorProcessadoGuia: WideString;
    function Get_ValorLiberadoGuia: WideString;
    function Get_ValorGlosaGuia: WideString;
    function Get_Procedimentos: I213_Procedimentos;
    function Get_CodigoGlosaGuia: I213_Ct_motivoGlosaList;
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ValorProcessadoGuia(Value: WideString);
    procedure Set_ValorLiberadoGuia(Value: WideString);
    procedure Set_ValorGlosaGuia(Value: WideString);
    { Methods & Properties }
    property NumeroGuiaPrestador: WideString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: WideString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property Beneficiario: I213_Ct_beneficiario read Get_Beneficiario;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property ValorProcessadoGuia: WideString read Get_ValorProcessadoGuia write Set_ValorProcessadoGuia;
    property ValorLiberadoGuia: WideString read Get_ValorLiberadoGuia write Set_ValorLiberadoGuia;
    property ValorGlosaGuia: WideString read Get_ValorGlosaGuia write Set_ValorGlosaGuia;
    property Procedimentos: I213_Procedimentos read Get_Procedimentos;
    property CodigoGlosaGuia: I213_Ct_motivoGlosaList read Get_CodigoGlosaGuia;
  end;

{ I213_Ct_beneficiario }

  I213_Ct_beneficiario = interface(IXMLNode)
    ['{16422FB8-3860-4E29-A659-AFCB6D416E49}']
    { Property Accessors }
    function Get_NumeroCarteira: WideString;
    function Get_NomeBeneficiario: WideString;
    function Get_NomePlano: WideString;
    function Get_ValidadeCarteira: WideString;
    function Get_NumeroCNS: WideString;
    function Get_IdentificadorBeneficiario: WideString;
    procedure Set_NumeroCarteira(Value: WideString);
    procedure Set_NomeBeneficiario(Value: WideString);
    procedure Set_NomePlano(Value: WideString);
    procedure Set_ValidadeCarteira(Value: WideString);
    procedure Set_NumeroCNS(Value: WideString);
    procedure Set_IdentificadorBeneficiario(Value: WideString);
    { Methods & Properties }
    property NumeroCarteira: WideString read Get_NumeroCarteira write Set_NumeroCarteira;
    property NomeBeneficiario: WideString read Get_NomeBeneficiario write Set_NomeBeneficiario;
    property NomePlano: WideString read Get_NomePlano write Set_NomePlano;
    property ValidadeCarteira: WideString read Get_ValidadeCarteira write Set_ValidadeCarteira;
    property NumeroCNS: WideString read Get_NumeroCNS write Set_NumeroCNS;
    property IdentificadorBeneficiario: WideString read Get_IdentificadorBeneficiario write Set_IdentificadorBeneficiario;
  end;

{ I213_Procedimentos }

  I213_Procedimentos = interface(IXMLNodeCollection)
    ['{CE02DD24-B4B2-4121-A3F6-70DCE4214D2C}']
    { Property Accessors }
    function Get_DadosProcedimento(Index: Integer): I213_Ct_dadosProcedimento;
    { Methods & Properties }
    function Add: I213_Ct_dadosProcedimento;
    function Insert(const Index: Integer): I213_Ct_dadosProcedimento;
    property DadosProcedimento[Index: Integer]: I213_Ct_dadosProcedimento read Get_DadosProcedimento; default;
  end;

{ I213_ProcedimentosAutorizacaoProc }

  I213_ProcedimentosAutorizacaoProc = interface(IXMLNodeCollection)
    ['{F5230ECC-EB1F-456F-9ED1-5F00550845CB}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): I213_Ct_itemSolicitacao;
    { Methods & Properties }
    function Add: I213_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I213_Ct_itemSolicitacao;
    property Procedimento[Index: Integer]: I213_Ct_itemSolicitacao read Get_Procedimento; default;
  end;

{ I213_ProcedimentosEquipe }

  I213_ProcedimentosEquipe = interface(IXMLNode)
    ['{E50A588A-6161-42EA-8DC0-441B9E86A706}']
    { Property Accessors }
    function Get_Equipe: I213_Ct_identificacaoEquipe;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property Equipe: I213_Ct_identificacaoEquipe read Get_Equipe;
    property Procedimento: I213_Ct_tabela read Get_Procedimento;
    property Data: WideString read Get_Data write Set_Data;
    property HoraInicio: WideString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: WideString read Get_HoraFim write Set_HoraFim;
    property QuantidadeRealizada: Integer read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: WideString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: WideString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: WideString read Get_Valor write Set_Valor;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I213_Ct_dadosProcedimento }

  I213_Ct_dadosProcedimento = interface(IXMLNode)
    ['{A4F9B63E-90A9-46F6-B6B3-7B511C8D8F7D}']
    { Property Accessors }
    function Get_Procedimento: I213_Ct_tabela;
    function Get_QuantidadeExecutada: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_GrauParticipacao: WideString;
    function Get_RelacaoGlosa: I213_RelacaoGlosa;
    procedure Set_QuantidadeExecutada(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_GrauParticipacao(Value: WideString);
    { Methods & Properties }
    property Procedimento: I213_Ct_tabela read Get_Procedimento;
    property QuantidadeExecutada: Integer read Get_QuantidadeExecutada write Set_QuantidadeExecutada;
    property ValorProcessado: WideString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: WideString read Get_ValorLiberado write Set_ValorLiberado;
    property GrauParticipacao: WideString read Get_GrauParticipacao write Set_GrauParticipacao;
    property RelacaoGlosa: I213_RelacaoGlosa read Get_RelacaoGlosa;
  end;

{ I213_Ct_tabela }

  I213_Ct_tabela = interface(IXMLNode)
    ['{1BF21EC4-0011-4D41-B07A-ADFB41891778}']
    { Property Accessors }
    function Get_Codigo: WideString;
    function Get_TipoTabela: WideString;
    function Get_Descricao: WideString;
    procedure Set_Codigo(Value: WideString);
    procedure Set_TipoTabela(Value: WideString);
    procedure Set_Descricao(Value: WideString);
    { Methods & Properties }
    property Codigo: WideString read Get_Codigo write Set_Codigo;
    property TipoTabela: WideString read Get_TipoTabela write Set_TipoTabela;
    property Descricao: WideString read Get_Descricao write Set_Descricao;
  end;

{ I213_RelacaoGlosa }

  I213_RelacaoGlosa = interface(IXMLNode)
    ['{D0675FE0-357E-44C9-BCD4-9132B91A7191}']
    { Property Accessors }
    function Get_TipoGlosa: I213_Ct_motivoGlosaList;
    function Get_ValorGlosa: WideString;
    procedure Set_ValorGlosa(Value: WideString);
    { Methods & Properties }
    property TipoGlosa: I213_Ct_motivoGlosaList read Get_TipoGlosa;
    property ValorGlosa: WideString read Get_ValorGlosa write Set_ValorGlosa;
  end;

{ I213_DemonstrativosRetorno }

  I213_DemonstrativosRetorno = interface(IXMLNode)
    ['{9B19E1AE-30FE-4157-A9B5-8E76D9319803}']
    { Property Accessors }
    function Get_DemonstrativoAnaliseConta: I213_Ct_demonstrativoAnaliseContaList;
    function Get_DemonstrativoOdontologia: I213_Ct_demonstrativoOdontologiaList;
    function Get_DemonstrativoPagamento: I213_Ct_demonstrativoPagamentoList;
    { Methods & Properties }
    property DemonstrativoAnaliseConta: I213_Ct_demonstrativoAnaliseContaList read Get_DemonstrativoAnaliseConta;
    property DemonstrativoOdontologia: I213_Ct_demonstrativoOdontologiaList read Get_DemonstrativoOdontologia;
    property DemonstrativoPagamento: I213_Ct_demonstrativoPagamentoList read Get_DemonstrativoPagamento;
  end;

{ I213_Ct_demonstrativoAnaliseConta }

  I213_Ct_demonstrativoAnaliseConta = interface(IXMLNode)
    ['{DCFADA64-6F4C-44D0-A176-F7FC50026322}']
    { Property Accessors }
    function Get_IdentificacaoOperadora: I213_Ct_identificacaoOperadora;
    function Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_Fatura: I213_Fatura;
    function Get_ValorProcessadoGeral: WideString;
    function Get_ValorLiberadoGeral: WideString;
    function Get_ValorGlosaGeral: WideString;
    procedure Set_ValorProcessadoGeral(Value: WideString);
    procedure Set_ValorLiberadoGeral(Value: WideString);
    procedure Set_ValorGlosaGeral(Value: WideString);
    { Methods & Properties }
    property IdentificacaoOperadora: I213_Ct_identificacaoOperadora read Get_IdentificacaoOperadora;
    property CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property Fatura: I213_Fatura read Get_Fatura;
    property ValorProcessadoGeral: WideString read Get_ValorProcessadoGeral write Set_ValorProcessadoGeral;
    property ValorLiberadoGeral: WideString read Get_ValorLiberadoGeral write Set_ValorLiberadoGeral;
    property ValorGlosaGeral: WideString read Get_ValorGlosaGeral write Set_ValorGlosaGeral;
  end;

{ I213_Ct_demonstrativoAnaliseContaList }

  I213_Ct_demonstrativoAnaliseContaList = interface(IXMLNodeCollection)
    ['{850F1CE1-C9F9-454F-8920-3967A06479DA}']
    { Methods & Properties }
    function Add: I213_Ct_demonstrativoAnaliseConta;
    function Insert(const Index: Integer): I213_Ct_demonstrativoAnaliseConta;
    function Get_Item(Index: Integer): I213_Ct_demonstrativoAnaliseConta;
    property Items[Index: Integer]: I213_Ct_demonstrativoAnaliseConta read Get_Item; default;
  end;

{ I213_Ct_cabecalhoDemonstrativo }

  I213_Ct_cabecalhoDemonstrativo = interface(IXMLNode)
    ['{F9BFD87C-EC9D-430A-8F2A-BE72F6F3E4DB}']
    { Property Accessors }
    function Get_NumeroDemonstrativo: WideString;
    function Get_DataEmissao: WideString;
    procedure Set_NumeroDemonstrativo(Value: WideString);
    procedure Set_DataEmissao(Value: WideString);
    { Methods & Properties }
    property NumeroDemonstrativo: WideString read Get_NumeroDemonstrativo write Set_NumeroDemonstrativo;
    property DataEmissao: WideString read Get_DataEmissao write Set_DataEmissao;
  end;

{ I213_Fatura }

  I213_Fatura = interface(IXMLNode)
    ['{EC55A873-5691-4A9E-A3C0-630C7B63E5DD}']
    { Property Accessors }
    function Get_DadosFatura: I213_Ct_dadosConta;
    { Methods & Properties }
    property DadosFatura: I213_Ct_dadosConta read Get_DadosFatura;
  end;

{ I213_Ct_dadosConta }

  I213_Ct_dadosConta = interface(IXMLNode)
    ['{A667DBE2-2039-4C22-9804-BBF0A537A929}']
    { Property Accessors }
    function Get_NumeroFatura: WideString;
    function Get_Lote: I213_Ct_dadosLote;
    function Get_ValorProcessadoFatura: WideString;
    function Get_ValorLiberadoFatura: WideString;
    function Get_ValorGlosaFatura: WideString;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_ValorProcessadoFatura(Value: WideString);
    procedure Set_ValorLiberadoFatura(Value: WideString);
    procedure Set_ValorGlosaFatura(Value: WideString);
    { Methods & Properties }
    property NumeroFatura: WideString read Get_NumeroFatura write Set_NumeroFatura;
    property Lote: I213_Ct_dadosLote read Get_Lote;
    property ValorProcessadoFatura: WideString read Get_ValorProcessadoFatura write Set_ValorProcessadoFatura;
    property ValorLiberadoFatura: WideString read Get_ValorLiberadoFatura write Set_ValorLiberadoFatura;
    property ValorGlosaFatura: WideString read Get_ValorGlosaFatura write Set_ValorGlosaFatura;
  end;

{ I213_Lote }

  I213_Lote = interface(IXMLNodeCollection)
    ['{AFEBC191-8CED-4100-8229-8684FC0088B2}']
    { Property Accessors }
    function Get_DadosLote(Index: Integer): I213_Ct_dadosLote;
    { Methods & Properties }
    function Add: I213_Ct_dadosLote;
    function Insert(const Index: Integer): I213_Ct_dadosLote;
    property DadosLote[Index: Integer]: I213_Ct_dadosLote read Get_DadosLote; default;
  end;

{ I213_LoteStatusProtocolo }

  I213_LoteStatusProtocolo = interface(IXMLNodeCollection)
    ['{3FB4D439-0CA7-45E9-AFEA-B8E70910ACB9}']
    { Property Accessors }
    function Get_DetalheLote(Index: Integer): I213_Ct_statusLote;
    { Methods & Properties }
    function Add: I213_Ct_statusLote;
    function Insert(const Index: Integer): I213_Ct_statusLote;
    property DetalheLote[Index: Integer]: I213_Ct_statusLote read Get_DetalheLote; default;
  end;

{ I213_Ct_dadosLote }

  I213_Ct_dadosLote = interface(IXMLNode)
    ['{044905D1-350C-471F-9F3B-B99FA50A756B}']
    { Property Accessors }
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: WideString;
    function Get_ValorGlosaProtocolo: WideString;
    function Get_CodigoGlosaProtocolo: I213_St_tipoGlosaList;
    function Get_Guia: I213_Ct_dadosGuia;
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: WideString);
    procedure Set_ValorGlosaProtocolo(Value: WideString);
    { Methods & Properties }
    property NumeroLote: WideString read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorProtocolo: WideString read Get_ValorProtocolo write Set_ValorProtocolo;
    property ValorGlosaProtocolo: WideString read Get_ValorGlosaProtocolo write Set_ValorGlosaProtocolo;
    property CodigoGlosaProtocolo: I213_St_tipoGlosaList read Get_CodigoGlosaProtocolo;
    property Guia: I213_Ct_dadosGuia read Get_Guia;
  end;

{ I213_Guia }
(*
  I213_Guia = interface(IXMLNodeCollection)
    ['{A12577BD-6071-4804-9699-8B7FE2C80092}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I213_Ct_dadosGuia;
    { Methods & Properties }
    function Add: I213_Ct_dadosGuia;
    function Insert(const Index: Integer): I213_Ct_dadosGuia;
    property DadosGuia[Index: Integer]: I213_Ct_dadosGuia read Get_DadosGuia; default;
  end;
*)
{ I213_Guia }
(*
  I213_Guia = interface(IXMLNodeCollection)
    ['{8E435D7D-533A-46DF-9C2F-C2962DC2DBF7}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I213_Ct_cabecalhoGuia;
    { Methods & Properties }
    function Add: I213_Ct_cabecalhoGuia;
    function Insert(const Index: Integer): I213_Ct_cabecalhoGuia;
    property DadosGuia[Index: Integer]: I213_Ct_cabecalhoGuia read Get_DadosGuia; default;
  end;
*)
{ I213_Ct_demonstrativoOdontologia }

  I213_Ct_demonstrativoOdontologia = interface(IXMLNode)
    ['{3FDA66AB-A48A-4D1B-9802-B24732736058}']
    { Property Accessors }
    function Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I213_IdentificacaoOperadora;
    function Get_DadosPrestador: I213_DadosPrestador;
    function Get_DadosPagamento: I213_DadosPagamento;
    function Get_DebitosCreditosTributaveis: I213_DebitosCreditosTributaveis;
    function Get_DemaisImpostos: I213_DemaisImpostos;
    function Get_DebitosCreditosNaoTributaveis: I213_DebitosCreditosNaoTributaveis;
    function Get_ValorFinalReceber: WideString;
    function Get_Observacao: WideString;
    procedure Set_ValorFinalReceber(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property IdentificacaoOperadora: I213_IdentificacaoOperadora read Get_IdentificacaoOperadora;
    property DadosPrestador: I213_DadosPrestador read Get_DadosPrestador;
    property DadosPagamento: I213_DadosPagamento read Get_DadosPagamento;
    property DebitosCreditosTributaveis: I213_DebitosCreditosTributaveis read Get_DebitosCreditosTributaveis;
    property DemaisImpostos: I213_DemaisImpostos read Get_DemaisImpostos;
    property DebitosCreditosNaoTributaveis: I213_DebitosCreditosNaoTributaveis read Get_DebitosCreditosNaoTributaveis;
    property ValorFinalReceber: WideString read Get_ValorFinalReceber write Set_ValorFinalReceber;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_demonstrativoOdontologiaList }

  I213_Ct_demonstrativoOdontologiaList = interface(IXMLNodeCollection)
    ['{908B1505-8B87-433F-B720-B3EF736C9078}']
    { Methods & Properties }
    function Add: I213_Ct_demonstrativoOdontologia;
    function Insert(const Index: Integer): I213_Ct_demonstrativoOdontologia;
    function Get_Item(Index: Integer): I213_Ct_demonstrativoOdontologia;
    property Items[Index: Integer]: I213_Ct_demonstrativoOdontologia read Get_Item; default;
  end;

{ I213_IdentificacaoOperadora }

  I213_IdentificacaoOperadora = interface(I213_Ct_identificacaoOperadora)
    ['{BE41915E-9DE9-4F8A-8132-D25CFFEE05C1}']
    { Property Accessors }
    function Get_PeriodoProcessamento: I213_Ct_periodoProcessamento;
    { Methods & Properties }
    property PeriodoProcessamento: I213_Ct_periodoProcessamento read Get_PeriodoProcessamento;
  end;

{ I213_Ct_periodoProcessamento }

  I213_Ct_periodoProcessamento = interface(IXMLNode)
    ['{9D686D08-382B-4F71-9AE4-4358D7D84C98}']
    { Property Accessors }
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
    { Methods & Properties }
    property DataInicial: WideString read Get_DataInicial write Set_DataInicial;
    property DataFinal: WideString read Get_DataFinal write Set_DataFinal;
  end;

{ I213_DadosPrestador }

  I213_DadosPrestador = interface(IXMLNode)
    ['{C89CE0F6-BD5D-48A6-BC54-5EA54D458D80}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_IdentificadorPrestador: I213_Ct_identificadorPrestOdontoDemo;
    function Get_NomeContratado: WideString;
    function Get_NumeroCNES: WideString;
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: WideString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
    property IdentificadorPrestador: I213_Ct_identificadorPrestOdontoDemo read Get_IdentificadorPrestador;
    property NomeContratado: WideString read Get_NomeContratado write Set_NomeContratado;
    property NumeroCNES: WideString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ I213_Ct_identificadorPrestOdontoDemo }

  I213_Ct_identificadorPrestOdontoDemo = interface(IXMLNode)
    ['{D16D71C9-4734-4AA7-A882-39063BA82FBA}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property Cpf: WideString read Get_Cpf write Set_Cpf;
  end;

{ I213_Ct_dadosPagamento }

  I213_Ct_dadosPagamento = interface(IXMLNode)
    ['{FF6FBA33-71E0-4CD8-9354-96B17C92F012}']
    { Property Accessors }
    function Get_DataPagamento: WideString;
    function Get_LoteOdonto: I213_LoteOdonto;
    procedure Set_DataPagamento(Value: WideString);
    { Methods & Properties }
    property DataPagamento: WideString read Get_DataPagamento write Set_DataPagamento;
    property LoteOdonto: I213_LoteOdonto read Get_LoteOdonto;
  end;

{ I213_Ct_totalDemoOdonto }

  I213_Ct_totalDemoOdonto = interface(IXMLNode)
    ['{E8DECAC5-D1D4-464F-B330-E7390852CA5D}']
    { Property Accessors }
    function Get_ValorTotalGeralGlosa: WideString;
    function Get_ValorTotalGeralLiberado: WideString;
    function Get_ValorTotalProcessadoGuia: WideString;
    procedure Set_ValorTotalGeralGlosa(Value: WideString);
    procedure Set_ValorTotalGeralLiberado(Value: WideString);
    procedure Set_ValorTotalProcessadoGuia(Value: WideString);
    { Methods & Properties }
    property ValorTotalGeralGlosa: WideString read Get_ValorTotalGeralGlosa write Set_ValorTotalGeralGlosa;
    property ValorTotalGeralLiberado: WideString read Get_ValorTotalGeralLiberado write Set_ValorTotalGeralLiberado;
    property ValorTotalProcessadoGuia: WideString read Get_ValorTotalProcessadoGuia write Set_ValorTotalProcessadoGuia;
  end;

{ I213_DebitosCreditosTributaveis }

  I213_DebitosCreditosTributaveis = interface(IXMLNode)
    ['{BEF769D8-0717-4F09-8910-C61D46E76A67}']
    { Property Accessors }
    function Get_Descontos: I213_Ct_descontoOdontoList;
    function Get_Creditos: I213_Ct_creditoOdontoList;
    function Get_ValorTotalTributavel: WideString;
    procedure Set_ValorTotalTributavel(Value: WideString);
    { Methods & Properties }
    property Descontos: I213_Ct_descontoOdontoList read Get_Descontos;
    property Creditos: I213_Ct_creditoOdontoList read Get_Creditos;
    property ValorTotalTributavel: WideString read Get_ValorTotalTributavel write Set_ValorTotalTributavel;
  end;

{ I213_Ct_descontoOdonto }

  I213_Ct_descontoOdonto = interface(IXMLNode)
    ['{DADB2320-A2C1-4762-9738-93828319798B}']
    { Property Accessors }
    function Get_Descricao: WideString;
    function Get_ValorDesconto: WideString;
    procedure Set_Descricao(Value: WideString);
    procedure Set_ValorDesconto(Value: WideString);
    { Methods & Properties }
    property Descricao: WideString read Get_Descricao write Set_Descricao;
    property ValorDesconto: WideString read Get_ValorDesconto write Set_ValorDesconto;
  end;

{ I213_Ct_descontoOdontoList }

  I213_Ct_descontoOdontoList = interface(IXMLNodeCollection)
    ['{3FB9F282-DCB1-41CB-BBCD-5A2BE6607F42}']
    { Methods & Properties }
    function Add: I213_Ct_descontoOdonto;
    function Insert(const Index: Integer): I213_Ct_descontoOdonto;
    function Get_Item(Index: Integer): I213_Ct_descontoOdonto;
    property Items[Index: Integer]: I213_Ct_descontoOdonto read Get_Item; default;
  end;

{ I213_Ct_creditoOdonto }

  I213_Ct_creditoOdonto = interface(IXMLNode)
    ['{86B8505C-6B8D-4E5D-8AB1-6D992AFDC814}']
    { Property Accessors }
    function Get_ValorDesconto: WideString;
    function Get_Descricao: WideString;
    procedure Set_ValorDesconto(Value: WideString);
    procedure Set_Descricao(Value: WideString);
    { Methods & Properties }
    property ValorDesconto: WideString read Get_ValorDesconto write Set_ValorDesconto;
    property Descricao: WideString read Get_Descricao write Set_Descricao;
  end;

{ I213_Ct_creditoOdontoList }

  I213_Ct_creditoOdontoList = interface(IXMLNodeCollection)
    ['{93172D04-EC64-42E5-B35B-172C336C3137}']
    { Methods & Properties }
    function Add: I213_Ct_creditoOdonto;
    function Insert(const Index: Integer): I213_Ct_creditoOdonto;
    function Get_Item(Index: Integer): I213_Ct_creditoOdonto;
    property Items[Index: Integer]: I213_Ct_creditoOdonto read Get_Item; default;
  end;

{ I213_DemaisImpostos }

  I213_DemaisImpostos = interface(IXMLNode)
    ['{6570812F-B19E-48F9-98AC-0D510742EFDA}']
    { Property Accessors }
    function Get_Descontos: I213_Ct_descontoOdontoList;
    function Get_ValorTotalImpostos: WideString;
    procedure Set_ValorTotalImpostos(Value: WideString);
    { Methods & Properties }
    property Descontos: I213_Ct_descontoOdontoList read Get_Descontos;
    property ValorTotalImpostos: WideString read Get_ValorTotalImpostos write Set_ValorTotalImpostos;
  end;

{ I213_DebitosCreditosNaoTributaveis }

  I213_DebitosCreditosNaoTributaveis = interface(IXMLNode)
    ['{F28E6BEE-5609-469C-8ED7-26BDFED1415B}']
    { Property Accessors }
    function Get_Descontos: I213_Ct_descontoOdontoList;
    function Get_Creditos: I213_Ct_creditoOdontoList;
    function Get_ValorTotalNaoTributavel: WideString;
    procedure Set_ValorTotalNaoTributavel(Value: WideString);
    { Methods & Properties }
    property Descontos: I213_Ct_descontoOdontoList read Get_Descontos;
    property Creditos: I213_Ct_creditoOdontoList read Get_Creditos;
    property ValorTotalNaoTributavel: WideString read Get_ValorTotalNaoTributavel write Set_ValorTotalNaoTributavel;
  end;

{ I213_Ct_demonstrativoPagamento }

  I213_Ct_demonstrativoPagamento = interface(IXMLNode)
    ['{A1950652-4D42-4634-B822-87AB29AD5023}']
    { Property Accessors }
    function Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I213_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DadosPagamento: I213_Ct_dadoBancario;
    function Get_DadosResumo: I213_DadosResumo;
    function Get_ValorTotal: WideString;
    function Get_DemaisDescontos: I213_Ct_descontos;
    function Get_ValorFinalLiberado: WideString;
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_ValorFinalLiberado(Value: WideString);
    { Methods & Properties }
    property CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property IdentificacaoOperadora: I213_Ct_identificacaoOperadora read Get_IdentificacaoOperadora;
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property DadosPagamento: I213_Ct_dadoBancario read Get_DadosPagamento;
    property DadosResumo: I213_DadosResumo read Get_DadosResumo;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property DemaisDescontos: I213_Ct_descontos read Get_DemaisDescontos;
    property ValorFinalLiberado: WideString read Get_ValorFinalLiberado write Set_ValorFinalLiberado;
  end;

{ I213_Ct_demonstrativoPagamentoList }

  I213_Ct_demonstrativoPagamentoList = interface(IXMLNodeCollection)
    ['{07F55B51-23BE-40C8-9D22-4D5DB297A8AD}']
    { Methods & Properties }
    function Add: I213_Ct_demonstrativoPagamento;
    function Insert(const Index: Integer): I213_Ct_demonstrativoPagamento;
    function Get_Item(Index: Integer): I213_Ct_demonstrativoPagamento;
    property Items[Index: Integer]: I213_Ct_demonstrativoPagamento read Get_Item; default;
  end;

{ I213_Ct_dadoBancario }

  I213_Ct_dadoBancario = interface(IXMLNode)
    ['{FA4816CC-B582-4324-AFD8-79EB0A2F9D00}']
    { Property Accessors }
    function Get_DataPagamento: WideString;
    function Get_FormaPagamento: WideString;
    function Get_Banco: Integer;
    function Get_Agencia: WideString;
    function Get_ContaCorrente: WideString;
    procedure Set_DataPagamento(Value: WideString);
    procedure Set_FormaPagamento(Value: WideString);
    procedure Set_Banco(Value: Integer);
    procedure Set_Agencia(Value: WideString);
    procedure Set_ContaCorrente(Value: WideString);
    { Methods & Properties }
    property DataPagamento: WideString read Get_DataPagamento write Set_DataPagamento;
    property FormaPagamento: WideString read Get_FormaPagamento write Set_FormaPagamento;
    property Banco: Integer read Get_Banco write Set_Banco;
    property Agencia: WideString read Get_Agencia write Set_Agencia;
    property ContaCorrente: WideString read Get_ContaCorrente write Set_ContaCorrente;
  end;

{ I213_DadosResumo }

  I213_DadosResumo = interface(IXMLNode)
    ['{45DFAD27-395F-4035-8A90-1D6056EA270A}']
    { Property Accessors }
    function Get_DetalheResumo: I213_Ct_dadosResumoList;
    function Get_TotalGeralInformado: WideString;
    function Get_TotalGeralProcessado: WideString;
    function Get_TotalGeralGlosa: WideString;
    function Get_TotalGeralLiberado: WideString;
    procedure Set_TotalGeralInformado(Value: WideString);
    procedure Set_TotalGeralProcessado(Value: WideString);
    procedure Set_TotalGeralGlosa(Value: WideString);
    procedure Set_TotalGeralLiberado(Value: WideString);
    { Methods & Properties }
    property DetalheResumo: I213_Ct_dadosResumoList read Get_DetalheResumo;
    property TotalGeralInformado: WideString read Get_TotalGeralInformado write Set_TotalGeralInformado;
    property TotalGeralProcessado: WideString read Get_TotalGeralProcessado write Set_TotalGeralProcessado;
    property TotalGeralGlosa: WideString read Get_TotalGeralGlosa write Set_TotalGeralGlosa;
    property TotalGeralLiberado: WideString read Get_TotalGeralLiberado write Set_TotalGeralLiberado;
  end;

{ I213_Ct_dadosResumo }

  I213_Ct_dadosResumo = interface(IXMLNode)
    ['{070AE9C2-8CED-4D97-8494-03D42F5751F6}']
    { Property Accessors }
    function Get_NumeroFatura: WideString;
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorInformado: WideString;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_ValorGlosa: WideString;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorInformado(Value: WideString);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_ValorGlosa(Value: WideString);
    { Methods & Properties }
    property NumeroFatura: WideString read Get_NumeroFatura write Set_NumeroFatura;
    property NumeroLote: WideString read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorInformado: WideString read Get_ValorInformado write Set_ValorInformado;
    property ValorProcessado: WideString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: WideString read Get_ValorLiberado write Set_ValorLiberado;
    property ValorGlosa: WideString read Get_ValorGlosa write Set_ValorGlosa;
  end;

{ I213_Ct_dadosResumoList }

  I213_Ct_dadosResumoList = interface(IXMLNodeCollection)
    ['{171DA6E2-556F-4251-8F1F-FE182B56040B}']
    { Methods & Properties }
    function Add: I213_Ct_dadosResumo;
    function Insert(const Index: Integer): I213_Ct_dadosResumo;
    function Get_Item(Index: Integer): I213_Ct_dadosResumo;
    property Items[Index: Integer]: I213_Ct_dadosResumo read Get_Item; default;
  end;

{ I213_Ct_descontos }

  I213_Ct_descontos = interface(IXMLNodeCollection)
    ['{DF3C3859-134C-4D5B-AF64-928A0233BA92}']
    { Property Accessors }
    function Get_ItemDesconto(Index: Integer): I213_ItemDesconto;
    { Methods & Properties }
    function Add: I213_ItemDesconto;
    function Insert(const Index: Integer): I213_ItemDesconto;
    property ItemDesconto[Index: Integer]: I213_ItemDesconto read Get_ItemDesconto; default;
  end;

{ I213_ItemDesconto }

  I213_ItemDesconto = interface(IXMLNode)
    ['{19EBB664-C1D7-4B53-81C9-6AE2965C16FB}']
    { Property Accessors }
    function Get_ValorDesconto: WideString;
    function Get_Descricao: WideString;
    procedure Set_ValorDesconto(Value: WideString);
    procedure Set_Descricao(Value: WideString);
    { Methods & Properties }
    property ValorDesconto: WideString read Get_ValorDesconto write Set_ValorDesconto;
    property Descricao: WideString read Get_Descricao write Set_Descricao;
  end;

{ I213_Ct_StatusProtocolo }

  I213_Ct_StatusProtocolo = interface(IXMLNode)
    ['{89862685-D9CE-4E93-8FDC-9A9CD857665C}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_NomeOperadora: WideString;
    function Get_CNPJ: WideString;
    function Get_StatusProtocolo: WideString;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_CNESPrestador: WideString;
    function Get_Lote: I213_LoteStatusProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NomeOperadora(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_StatusProtocolo(Value: WideString);
    procedure Set_CNESPrestador(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property NomeOperadora: WideString read Get_NomeOperadora write Set_NomeOperadora;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property StatusProtocolo: WideString read Get_StatusProtocolo write Set_StatusProtocolo;
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property CNESPrestador: WideString read Get_CNESPrestador write Set_CNESPrestador;
    property Lote: I213_LoteStatusProtocolo read Get_Lote;
  end;

{ I213_Ct_statusLote }

  I213_Ct_statusLote = interface(IXMLNode)
    ['{5A26C1E9-C136-404E-B863-13CE2E0ABBAD}']
    { Property Accessors }
    function Get_NumeroProtocolo: WideString;
    function Get_NumeroLote: Integer;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroFatura: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_ValorGlosa: WideString;
    function Get_Status: WideString;
    function Get_Guias: I213_GuiasStatusLote;
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroFatura(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_ValorGlosa(Value: WideString);
    procedure Set_Status(Value: WideString);
    { Methods & Properties }
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property NumeroLote: Integer read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroFatura: Integer read Get_NumeroFatura write Set_NumeroFatura;
    property ValorProcessado: WideString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: WideString read Get_ValorLiberado write Set_ValorLiberado;
    property ValorGlosa: WideString read Get_ValorGlosa write Set_ValorGlosa;
    property Status: WideString read Get_Status write Set_Status;
    property Guias: I213_GuiasStatusLote read Get_Guias;
  end;

{ I213_Detalheguia }

  I213_Detalheguia = interface(IXMLNode)
    ['{329541FD-C59F-4A10-8DE7-8B3F9DC086D1}']
    { Property Accessors }
    function Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: I213_ProcedimentosAnalisados;
    { Methods & Properties }
    property IdentificacaoGuia: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuia;
    property ProcedimentosAnalisados: I213_ProcedimentosAnalisados read Get_ProcedimentosAnalisados;
  end;

{ I213_Ct_cabecalhoGuia }

  I213_Ct_cabecalhoGuia = interface(IXMLNode)
    ['{32DDA69C-D116-4F53-B637-345383AAFC0F}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property DataEmissaoGuia: WideString read Get_DataEmissaoGuia write Set_DataEmissaoGuia;
    property NumeroGuiaPrestador: WideString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: WideString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
  end;

{ I213_ProcedimentosAnalisados }

  I213_ProcedimentosAnalisados = interface(IXMLNodeCollection)
    ['{F3AF973C-FCDF-47F2-86B7-B8B25FB3E37F}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): I213_Ct_itemSolicitacao;
    { Methods & Properties }
    function Add: I213_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I213_Ct_itemSolicitacao;
    property Procedimento[Index: Integer]: I213_Ct_itemSolicitacao read Get_Procedimento; default;
  end;

{ I213_Ct_itemSolicitacao }

  I213_Ct_itemSolicitacao = interface(IXMLNode)
    ['{467CADEE-0DD9-4172-9C39-76570B461AC9}']
    { Property Accessors }
    function Get_IdentificacaoProcedimentos: I213_Ct_tabela;
    function Get_QuantidadeSolicitada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_StatusSolicitacaoProcedimento: WideString;
    function Get_Glosas: I213_Glosas;
    function Get_Observacao: WideString;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
    procedure Set_StatusSolicitacaoProcedimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoProcedimentos: I213_Ct_tabela read Get_IdentificacaoProcedimentos;
    property QuantidadeSolicitada: WideString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property QuantidadeAutorizada: WideString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property StatusSolicitacaoProcedimento: WideString read Get_StatusSolicitacaoProcedimento write Set_StatusSolicitacaoProcedimento;
    property Glosas: I213_Glosas read Get_Glosas;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Glosas }

  I213_Glosas = interface(IXMLNodeCollection)
    ['{1B14EBB5-C6D8-49F6-A126-AFCDBABB0F1B}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): I213_Ct_motivoGlosa;
    { Methods & Properties }
    function Add: I213_Ct_motivoGlosa;
    function Insert(const Index: Integer): I213_Ct_motivoGlosa;
    property MotivoGlosa[Index: Integer]: I213_Ct_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ I213_Ct_autorizacaoProcedimento }

  I213_Ct_autorizacaoProcedimento = interface(IXMLNode)
    ['{8B570619-2FFB-4672-B2F3-D9AE38E57BBE}']
    { Property Accessors }
    function Get_IdentificacaoAutorizacao: I213_Ct_cabecalhoGuia;
    function Get_StatusSolicitacao: WideString;
    function Get_MotivoNegativa: I213_MotivoNegativa;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_PrestadorAutorizado: I213_Ct_contratado;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuiaInternacao;
    function Get_Procedimentos: I213_ProcedimentosAutorizacaoProc;
    procedure Set_StatusSolicitacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoAutorizacao: I213_Ct_cabecalhoGuia read Get_IdentificacaoAutorizacao;
    property StatusSolicitacao: WideString read Get_StatusSolicitacao write Set_StatusSolicitacao;
    property MotivoNegativa: I213_MotivoNegativa read Get_MotivoNegativa;
    property Beneficiario: I213_Ct_beneficiario read Get_Beneficiario;
    property PrestadorAutorizado: I213_Ct_contratado read Get_PrestadorAutorizado;
    property DadosAutorizacao: I213_Ct_autorizacaoGuiaInternacao read Get_DadosAutorizacao;
    property Procedimentos: I213_ProcedimentosAutorizacaoProc read Get_Procedimentos;
  end;

{ I213_TotalOdonto }

  I213_TotalOdonto = interface(IXMLNode)
    ['{F374169E-6DB9-4238-A43F-46321603841A}']
    { Property Accessors }
    function Get_Totalvalor: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    function Get_TotalquantidadeUS: WideString;
    procedure Set_Totalvalor(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    procedure Set_TotalquantidadeUS(Value: WideString);
    { Methods & Properties }
    property Totalvalor: WideString read Get_Totalvalor write Set_Totalvalor;
    property TotalFranquiaCoparticipacao: WideString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
    property TotalquantidadeUS: WideString read Get_TotalquantidadeUS write Set_TotalquantidadeUS;
  end;

{ I213_Ct_diariaProrrogacao }

  I213_Ct_diariaProrrogacao = interface(IXMLNode)
    ['{E539B36C-1B01-4D41-9A20-F06FAD75B60C}']
    { Property Accessors }
    function Get_TipoAcomodacao: WideString;
    function Get_QuantidadeDiaria: WideString;
    procedure Set_TipoAcomodacao(Value: WideString);
    procedure Set_QuantidadeDiaria(Value: WideString);
    { Methods & Properties }
    property TipoAcomodacao: WideString read Get_TipoAcomodacao write Set_TipoAcomodacao;
    property QuantidadeDiaria: WideString read Get_QuantidadeDiaria write Set_QuantidadeDiaria;
  end;

{ I213_Ct_situacaoAutorizacao }

  I213_Ct_situacaoAutorizacao = interface(IXMLNodeCollection)
    ['{711277E5-652A-4EE1-AF18-16BE21CA1B10}']
    { Property Accessors }
    function Get_DadosAutorizacao(Index: Integer): I213_DadosAutorizacao;
    { Methods & Properties }
    function Add: I213_DadosAutorizacao;
    function Insert(const Index: Integer): I213_DadosAutorizacao;
    property DadosAutorizacao[Index: Integer]: I213_DadosAutorizacao read Get_DadosAutorizacao; default;
  end;

{ I213_DadosAutorizacao }

  I213_DadosAutorizacao = interface(I213_Ct_autorizacaoProcedimento)
    ['{685B666B-41D0-4FC3-AE25-E60AECABBA62}']
    { Property Accessors }
    function Get_TotalOdonto: I213_TotalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: I213_Ct_diariaProrrogacaoAutorizada;
    { Methods & Properties }
    property TotalOdonto: I213_TotalOdonto read Get_TotalOdonto;
    property Ct_diariaProrrogacaoAutorizada: I213_Ct_diariaProrrogacaoAutorizada read Get_Ct_diariaProrrogacaoAutorizada;
  end;

{ I213_Ct_diariaProrrogacaoAutorizada }

  I213_Ct_diariaProrrogacaoAutorizada = interface(I213_Ct_diariaProrrogacao)
    ['{FF432CB5-C34A-4F36-83FA-F1CF242CE0B6}']
    { Property Accessors }
    function Get_TipoAcomodacaoAutorizada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_MotivoGlosa: I213_Ct_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
    { Methods & Properties }
    property TipoAcomodacaoAutorizada: WideString read Get_TipoAcomodacaoAutorizada write Set_TipoAcomodacaoAutorizada;
    property QuantidadeAutorizada: WideString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property MotivoGlosa: I213_Ct_motivoGlosa read Get_MotivoGlosa;
  end;

{ I213_Ct_retornoElegibilidade }

  I213_Ct_retornoElegibilidade = interface(IXMLNode)
    ['{E591B5D5-8D07-41DE-B3FC-8D7D2BD337C2}']
    { Property Accessors }
    function Get_DadosOperadora: I213_Ct_identificacaoOperadora;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_RespostaSolicitacao: Boolean;
    function Get_MotivoNegacao: I213_Ct_motivoGlosa;
    procedure Set_RespostaSolicitacao(Value: Boolean);
    { Methods & Properties }
    property DadosOperadora: I213_Ct_identificacaoOperadora read Get_DadosOperadora;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property RespostaSolicitacao: Boolean read Get_RespostaSolicitacao write Set_RespostaSolicitacao;
    property MotivoNegacao: I213_Ct_motivoGlosa read Get_MotivoNegacao;
  end;

{ I213_Ct_reciboCancelaGuia }

  I213_Ct_reciboCancelaGuia = interface(IXMLNode)
    ['{7DD81F8B-2210-4DEE-A284-DD1655CB2252}']
    { Property Accessors }
    function Get_Operadora: I213_Ct_identificacaoOperadora;
    function Get_GuiasCanceladas: I213_GuiasCanceladas;
    { Methods & Properties }
    property Operadora: I213_Ct_identificacaoOperadora read Get_Operadora;
    property GuiasCanceladas: I213_GuiasCanceladas read Get_GuiasCanceladas;
  end;

{ I213_GuiasCanceladas }

  I213_GuiasCanceladas = interface(IXMLNodeCollection)
    ['{7DEBD7D9-EFFE-4705-AD05-48644116C534}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I213_DadosGuia;
    { Methods & Properties }
    function Add: I213_DadosGuia;
    function Insert(const Index: Integer): I213_DadosGuia;
    property DadosGuia[Index: Integer]: I213_DadosGuia read Get_DadosGuia; default;
  end;

{ I213_DadosGuia }

  I213_DadosGuia = interface(I213_Ct_cabecalhoGuia)
    ['{0D64F5E9-CA8C-4A58-BCE3-05CF73248FEC}']
    { Property Accessors }
    function Get_StatusCancelamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_StatusCancelamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property StatusCancelamento: WideString read Get_StatusCancelamento write Set_StatusCancelamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_PrestadorParaOperadora }

  I213_PrestadorParaOperadora = interface(IXMLNode)
    ['{3B1F92C2-B269-4575-80B3-E460B6FFC150}']
    { Property Accessors }
    function Get_LoteGuias: I213_Ct_loteGuias;
    function Get_SolicitacaoDemonstrativoRetorno: I213_Ct_solicitacaoDemonstrativoPagamento;
    function Get_SolicitacaoStatusProtocolo: I213_Ct_solicitacaoStatusProtocolo;
    function Get_SolicitacaoProcedimento: I213_SolicitacaoProcedimento;
    function Get_SolicitaStatusAutorizacao: I213_Ct_solicitaStatusAutorizacao;
    function Get_VerificaElegibilidade: I213_Ct_solicitaElegibilidade;
    function Get_CancelaGuia: I213_Ct_cancelaGuia;
    { Methods & Properties }
    property LoteGuias: I213_Ct_loteGuias read Get_LoteGuias;
    property SolicitacaoDemonstrativoRetorno: I213_Ct_solicitacaoDemonstrativoPagamento read Get_SolicitacaoDemonstrativoRetorno;
    property SolicitacaoStatusProtocolo: I213_Ct_solicitacaoStatusProtocolo read Get_SolicitacaoStatusProtocolo;
    property SolicitacaoProcedimento: I213_SolicitacaoProcedimento read Get_SolicitacaoProcedimento;
    property SolicitaStatusAutorizacao: I213_Ct_solicitaStatusAutorizacao read Get_SolicitaStatusAutorizacao;
    property VerificaElegibilidade: I213_Ct_solicitaElegibilidade read Get_VerificaElegibilidade;
    property CancelaGuia: I213_Ct_cancelaGuia read Get_CancelaGuia;
  end;

{ I213_Ct_loteGuias }

  I213_Ct_loteGuias = interface(IXMLNode)
    ['{98F0626B-DE72-403E-B938-3E4B382374F7}']
    { Property Accessors }
    function Get_NumeroLote: Integer;
    function Get_Guias: I213_Ct_guias;
    procedure Set_NumeroLote(Value: Integer);
    { Methods & Properties }
    property NumeroLote: Integer read Get_NumeroLote write Set_NumeroLote;
    property Guias: I213_Ct_guias read Get_Guias;
  end;

{ I213_Ct_guias }

  I213_Ct_guias = interface(IXMLNode)
    ['{4302E08C-63B5-4FD0-87CB-2C53D94EFA61}']
    { Property Accessors }
    function Get_GuiaFaturamento: I213_GuiaFaturamento;
    function Get_GuiaRevisaoGlosa: I213_GuiaRevisaoGlosa;
    { Methods & Properties }
    property GuiaFaturamento: I213_GuiaFaturamento read Get_GuiaFaturamento;
    property GuiaRevisaoGlosa: I213_GuiaRevisaoGlosa read Get_GuiaRevisaoGlosa;
  end;

{ I213_Ct_solicitacaoDemonstrativoPagamento }

  I213_Ct_solicitacaoDemonstrativoPagamento = interface(IXMLNode)
    ['{194E53E1-3300-46EE-9B89-6CF39B81A0B4}']
    { Property Accessors }
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_RegistroANS: WideString;
    function Get_DataSolicitacao: WideString;
    function Get_TipoDemonstrativo: WideString;
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    function Get_NumeroProtocolo: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
    procedure Set_TipoDemonstrativo(Value: WideString);
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    { Methods & Properties }
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property DataSolicitacao: WideString read Get_DataSolicitacao write Set_DataSolicitacao;
    property TipoDemonstrativo: WideString read Get_TipoDemonstrativo write Set_TipoDemonstrativo;
    property DataInicial: WideString read Get_DataInicial write Set_DataInicial;
    property DataFinal: WideString read Get_DataFinal write Set_DataFinal;
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
  end;

{ I213_Ct_solicitacaoStatusProtocolo }

  I213_Ct_solicitacaoStatusProtocolo = interface(IXMLNode)
    ['{87E34B1B-E700-4F22-BE0D-1883B4745035}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DataSolicitacao: WideString;
    function Get_DetalheProtocolo: I213_DetalheProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property DataSolicitacao: WideString read Get_DataSolicitacao write Set_DataSolicitacao;
    property DetalheProtocolo: I213_DetalheProtocolo read Get_DetalheProtocolo;
  end;

{ I213_DetalheProtocolo }

  I213_DetalheProtocolo = interface(IXMLNodeCollection)
    ['{1B88EEFC-3525-4CDF-BF97-63C07345FDDA}']
    { Property Accessors }
    function Get_NumeroProtocolo(Index: Integer): WideString;
    { Methods & Properties }
    function Add(const NumeroProtocolo: WideString): IXMLNode;
    function Insert(const Index: Integer; const NumeroProtocolo: WideString): IXMLNode;
    property NumeroProtocolo[Index: Integer]: WideString read Get_NumeroProtocolo; default;
  end;

{ I213_SolicitacaoProcedimento }

  I213_SolicitacaoProcedimento = interface(IXMLNode)
    ['{08F6ACCC-FBA6-485F-BBBD-3475695F4654}']
    { Property Accessors }
    function Get_GuiaSolicInternacao: I213_Ct_guiaSolicInternacaoList;
    function Get_GuiaSolicitacaoSADT: I213_Ct_guiaSolicitacaoSP_SADTList;
    function Get_GuiaSolicitacaoOdontologia: I213_Ct_guiaSolicitacaoOdontoList;
    function Get_GuiaSolicitacaoProrrogacao: I213_Ct_guiaSolicitacaoProrrogacaoList;
    { Methods & Properties }
    property GuiaSolicInternacao: I213_Ct_guiaSolicInternacaoList read Get_GuiaSolicInternacao;
    property GuiaSolicitacaoSADT: I213_Ct_guiaSolicitacaoSP_SADTList read Get_GuiaSolicitacaoSADT;
    property GuiaSolicitacaoOdontologia: I213_Ct_guiaSolicitacaoOdontoList read Get_GuiaSolicitacaoOdontologia;
    property GuiaSolicitacaoProrrogacao: I213_Ct_guiaSolicitacaoProrrogacaoList read Get_GuiaSolicitacaoProrrogacao;
  end;

{ I213_Ct_guiaSolicInternacao }

  I213_Ct_guiaSolicInternacao = interface(IXMLNode)
    ['{3B05DF74-5ED5-4525-BAB3-33CC3B232749}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSolicitacaoInternacao: I213_Ct_cabecalhoSolicitacao;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_PrestadorSolicitado: I213_PrestadorSolicitado;
    function Get_CaraterInternacao: WideString;
    function Get_TipoInternacao: WideString;
    function Get_IndicacaoClinica: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_HipotesesDiagnosticas: I213_Ct_hipoteseDiagnostica;
    function Get_ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados;
    function Get_OPMsSolicitadas: I213_Ct_OPMSolicitadas;
    function Get_DiasSolicitados: Integer;
    function Get_DataProvavelAdmisHosp: WideString;
    function Get_Observacao: WideString;
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_DiasSolicitados(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSolicitacaoInternacao: I213_Ct_cabecalhoSolicitacao read Get_IdentificacaoGuiaSolicitacaoInternacao;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I213_Ct_solicitante read Get_DadosSolicitante;
    property PrestadorSolicitado: I213_PrestadorSolicitado read Get_PrestadorSolicitado;
    property CaraterInternacao: WideString read Get_CaraterInternacao write Set_CaraterInternacao;
    property TipoInternacao: WideString read Get_TipoInternacao write Set_TipoInternacao;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property RegimeInternacao: WideString read Get_RegimeInternacao write Set_RegimeInternacao;
    property HipotesesDiagnosticas: I213_Ct_hipoteseDiagnostica read Get_HipotesesDiagnosticas;
    property ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados read Get_ProcedimentosExamesSolicitados;
    property OPMsSolicitadas: I213_Ct_OPMSolicitadas read Get_OPMsSolicitadas;
    property DiasSolicitados: Integer read Get_DiasSolicitados write Set_DiasSolicitados;
    property DataProvavelAdmisHosp: WideString read Get_DataProvavelAdmisHosp write Set_DataProvavelAdmisHosp;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_cabecalhoSolicitacao }

  I213_Ct_cabecalhoSolicitacao = interface(IXMLNode)
    ['{457BAFCE-4AAC-44C3-B9DC-AD0E32231CF9}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property DataEmissaoGuia: WideString read Get_DataEmissaoGuia write Set_DataEmissaoGuia;
    property NumeroGuiaOperadora: WideString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property NumeroGuiaPrestador: WideString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
  end;

{ I213_Ct_solicitante }

  I213_Ct_solicitante = interface(IXMLNode)
    ['{58B6FF2D-6D80-47F4-B84F-811318F408FB}']
    { Property Accessors }
    function Get_Contratado: I213_Ct_contratadoSolicitante;
    function Get_Profissional: I213_Ct_identificacaoProfissional;
    { Methods & Properties }
    property Contratado: I213_Ct_contratadoSolicitante read Get_Contratado;
    property Profissional: I213_Ct_identificacaoProfissional read Get_Profissional;
  end;

{ I213_Ct_contratadoSolicitante }

  I213_Ct_contratadoSolicitante = interface(IXMLNode)
    ['{3E8BCEBF-C7F4-46E3-93E5-FA98FD2E0CE1}']
    { Property Accessors }
    function Get_Identificacao: I213_Ct_identificacaoPrestador;
    function Get_NomeContratado: WideString;
    function Get_EnderecoContratado: I213_Ct_endereco;
    function Get_NumeroCNES: WideString;
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
    { Methods & Properties }
    property Identificacao: I213_Ct_identificacaoPrestador read Get_Identificacao;
    property NomeContratado: WideString read Get_NomeContratado write Set_NomeContratado;
    property EnderecoContratado: I213_Ct_endereco read Get_EnderecoContratado;
    property NumeroCNES: WideString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ I213_Ct_identificacaoPrestador }

  I213_Ct_identificacaoPrestador = interface(IXMLNode)
    ['{A9DC1D9D-64E9-4074-9E0E-0C9C78C4A4AA}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property Cpf: WideString read Get_Cpf write Set_Cpf;
    property CodigoPrestadorNaOperadora: WideString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
    property ConselhoProfissional: I213_Ct_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ I213_Ct_conselhoProfissional }

  I213_Ct_conselhoProfissional = interface(IXMLNode)
    ['{C02A3E02-5497-414D-8655-B08C9AC00406}']
    { Property Accessors }
    function Get_SiglaConselho: WideString;
    function Get_NumeroConselho: WideString;
    function Get_UfConselho: WideString;
    procedure Set_SiglaConselho(Value: WideString);
    procedure Set_NumeroConselho(Value: WideString);
    procedure Set_UfConselho(Value: WideString);
    { Methods & Properties }
    property SiglaConselho: WideString read Get_SiglaConselho write Set_SiglaConselho;
    property NumeroConselho: WideString read Get_NumeroConselho write Set_NumeroConselho;
    property UfConselho: WideString read Get_UfConselho write Set_UfConselho;
  end;

{ I213_Ct_identificacaoProfissional }

  I213_Ct_identificacaoProfissional = interface(IXMLNode)
    ['{CDF5E0D1-A3DD-42AE-AF7E-3C275A751DF2}']
    { Property Accessors }
    function Get_NomeProfissional: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    function Get_Cbos: WideString;
    procedure Set_NomeProfissional(Value: WideString);
    procedure Set_Cbos(Value: WideString);
    { Methods & Properties }
    property NomeProfissional: WideString read Get_NomeProfissional write Set_NomeProfissional;
    property ConselhoProfissional: I213_Ct_conselhoProfissional read Get_ConselhoProfissional;
    property Cbos: WideString read Get_Cbos write Set_Cbos;
  end;

{ I213_PrestadorSolicitado }

  I213_PrestadorSolicitado = interface(I213_Ct_identificacaoPrestador)
    ['{9D9017CA-AFF9-478B-9D06-490DC3E1B8A6}']
    { Property Accessors }
    function Get_NomePrestador: WideString;
    procedure Set_NomePrestador(Value: WideString);
    { Methods & Properties }
    property NomePrestador: WideString read Get_NomePrestador write Set_NomePrestador;
  end;

{ I213_Ct_hipoteseDiagnostica }

  I213_Ct_hipoteseDiagnostica = interface(IXMLNode)
    ['{D5FBB198-D294-46EE-827A-2383020C7025}']
    { Property Accessors }
    function Get_CIDPrincipal: I213_Ct_diagnosticoGuia;
    function Get_DiagnosticosSecundarios: I213_Ct_diagnosticosSecundariosList;
    { Methods & Properties }
    property CIDPrincipal: I213_Ct_diagnosticoGuia read Get_CIDPrincipal;
    property DiagnosticosSecundarios: I213_Ct_diagnosticosSecundariosList read Get_DiagnosticosSecundarios;
  end;

{ I213_Ct_diagnosticoGuia }

  I213_Ct_diagnosticoGuia = interface(IXMLNode)
    ['{C8FBEBD0-AB8A-476F-9419-E148E078D2B7}']
    { Property Accessors }
    function Get_CID: I213_Ct_diagnostico;
    function Get_TipoDoenca: WideString;
    function Get_TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: WideString;
    procedure Set_TipoDoenca(Value: WideString);
    procedure Set_IndicadorAcidente(Value: WideString);
    { Methods & Properties }
    property CID: I213_Ct_diagnostico read Get_CID;
    property TipoDoenca: WideString read Get_TipoDoenca write Set_TipoDoenca;
    property TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca read Get_TempoReferidoEvolucaoDoenca;
    property IndicadorAcidente: WideString read Get_IndicadorAcidente write Set_IndicadorAcidente;
  end;

{ I213_Ct_diagnostico }

  I213_Ct_diagnostico = interface(IXMLNode)
    ['{8BA1C7C2-03B6-486A-B87A-93B243646CF9}']
    { Property Accessors }
    function Get_NomeTabela: WideString;
    function Get_CodigoDiagnostico: WideString;
    function Get_DescricaoDiagnostico: WideString;
    procedure Set_NomeTabela(Value: WideString);
    procedure Set_CodigoDiagnostico(Value: WideString);
    procedure Set_DescricaoDiagnostico(Value: WideString);
    { Methods & Properties }
    property NomeTabela: WideString read Get_NomeTabela write Set_NomeTabela;
    property CodigoDiagnostico: WideString read Get_CodigoDiagnostico write Set_CodigoDiagnostico;
    property DescricaoDiagnostico: WideString read Get_DescricaoDiagnostico write Set_DescricaoDiagnostico;
  end;

{ I213_Ct_tempoEvolucaoDoenca }

  I213_Ct_tempoEvolucaoDoenca = interface(IXMLNode)
    ['{A4E79C05-2F29-4F5A-B98A-980320233B0C}']
    { Property Accessors }
    function Get_Valor: Integer;
    function Get_UnidadeTempo: WideString;
    procedure Set_Valor(Value: Integer);
    procedure Set_UnidadeTempo(Value: WideString);
    { Methods & Properties }
    property Valor: Integer read Get_Valor write Set_Valor;
    property UnidadeTempo: WideString read Get_UnidadeTempo write Set_UnidadeTempo;
  end;

{ I213_Ct_diagnosticosSecundarios }

  I213_Ct_diagnosticosSecundarios = interface(IXMLNodeCollection)
    ['{E6DCDFF5-F582-48DA-9D93-40C88C9EFEFE}']
    { Property Accessors }
    function Get_CID(Index: Integer): I213_Ct_diagnostico;
    { Methods & Properties }
    function Add: I213_Ct_diagnostico;
    function Insert(const Index: Integer): I213_Ct_diagnostico;
    property CID[Index: Integer]: I213_Ct_diagnostico read Get_CID; default;
  end;

{ I213_Ct_procedimentosSolicitados }

  I213_Ct_procedimentosSolicitados = interface(IXMLNodeCollection)
    ['{B5FB6836-EE98-4C9D-B4D6-C475986F0846}']
    { Property Accessors }
    function Get_ProcedimentoSolicitado(Index: Integer): I213_ProcedimentoSolicitado;
    { Methods & Properties }
    function Add: I213_ProcedimentoSolicitado;
    function Insert(const Index: Integer): I213_ProcedimentoSolicitado;
    property ProcedimentoSolicitado[Index: Integer]: I213_ProcedimentoSolicitado read Get_ProcedimentoSolicitado; default;
  end;

{ I213_ProcedimentoSolicitado }

  I213_ProcedimentoSolicitado = interface(IXMLNode)
    ['{1A3A0E7D-C760-4BCB-8B6F-1D5AF91C11E9}']
    { Property Accessors }
    function Get_QuantidadeSolicitada: Integer;
    function Get_Procedimento: I213_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: Integer);
    { Methods & Properties }
    property QuantidadeSolicitada: Integer read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property Procedimento: I213_Ct_tabela read Get_Procedimento;
  end;

{ I213_Ct_OPMSolicitadas }

  I213_Ct_OPMSolicitadas = interface(IXMLNodeCollection)
    ['{0C13C8BA-2356-4E9A-8BF1-96E86EDFD461}']
    { Property Accessors }
    function Get_OPMSolicitada(Index: Integer): I213_OPMSolicitada;
    { Methods & Properties }
    function Add: I213_OPMSolicitada;
    function Insert(const Index: Integer): I213_OPMSolicitada;
    property OPMSolicitada[Index: Integer]: I213_OPMSolicitada read Get_OPMSolicitada; default;
  end;

{ I213_OPMSolicitada }

  I213_OPMSolicitada = interface(IXMLNode)
    ['{582559D9-6EEF-4F6C-8122-F3BB18302A7C}']
    { Property Accessors }
    function Get_QuantidadeSolicitada: WideString;
    function Get_Fabricante: WideString;
    function Get_Valor: WideString;
    function Get_OPM: I213_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_Fabricante(Value: WideString);
    procedure Set_Valor(Value: WideString);
    { Methods & Properties }
    property QuantidadeSolicitada: WideString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property Fabricante: WideString read Get_Fabricante write Set_Fabricante;
    property Valor: WideString read Get_Valor write Set_Valor;
    property OPM: I213_Ct_tabela read Get_OPM;
  end;

{ I213_Ct_guiaSolicitacaoSP_SADT }

  I213_Ct_guiaSolicitacaoSP_SADT = interface(IXMLNode)
    ['{C6E4E232-D5CE-4601-91F1-868B7E7AE055}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSolicitacaoSADTSP: I213_Ct_cabecalhoSolicitacao;
    function Get_NumeroGuiaPrincipal: Integer;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_CaraterSolicitacao: WideString;
    function Get_DataHoraSolicitacao: WideString;
    function Get_Diagnostico: I213_Ct_diagnostico;
    function Get_IndicacaoClinica: WideString;
    function Get_ProcedimentosSolicitados: I213_Ct_procedimentosSolicitados;
    function Get_OpmSolicitada: I213_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: Integer);
    procedure Set_CaraterSolicitacao(Value: WideString);
    procedure Set_DataHoraSolicitacao(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSolicitacaoSADTSP: I213_Ct_cabecalhoSolicitacao read Get_IdentificacaoGuiaSolicitacaoSADTSP;
    property NumeroGuiaPrincipal: Integer read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I213_Ct_solicitante read Get_DadosSolicitante;
    property CaraterSolicitacao: WideString read Get_CaraterSolicitacao write Set_CaraterSolicitacao;
    property DataHoraSolicitacao: WideString read Get_DataHoraSolicitacao write Set_DataHoraSolicitacao;
    property Diagnostico: I213_Ct_diagnostico read Get_Diagnostico;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property ProcedimentosSolicitados: I213_Ct_procedimentosSolicitados read Get_ProcedimentosSolicitados;
    property OpmSolicitada: I213_Ct_OPMSolicitadas read Get_OpmSolicitada;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_guiaSolicitacaoOdonto }

  I213_Ct_guiaSolicitacaoOdonto = interface(IXMLNode)
    ['{861D3B18-A3D6-4C8C-BED2-97418588D694}']
    { Property Accessors }
    function Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I213_DadosBeneficiario;
    function Get_DadosSolicitante: I213_DadosSolicitante;
    function Get_SituacaoInicial: I213_Ct_situacaoInicial;
    function Get_PlanoTratamento: I213_PlanoTratamento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: I213_DadosBeneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I213_DadosSolicitante read Get_DadosSolicitante;
    property SituacaoInicial: I213_Ct_situacaoInicial read Get_SituacaoInicial;
    property PlanoTratamento: I213_PlanoTratamento read Get_PlanoTratamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_cabecalhoGuiaOdonto }

  I213_Ct_cabecalhoGuiaOdonto = interface(IXMLNode)
    ['{07D6183D-138A-41DF-AA55-9F00555CF10B}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DataAutorizacao: WideString;
    function Get_SenhaAutorizacao: WideString;
    function Get_ValidadeSenha: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_DataAutorizacao(Value: WideString);
    procedure Set_SenhaAutorizacao(Value: WideString);
    procedure Set_ValidadeSenha(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property NumeroGuiaPrestador: WideString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: WideString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property DataEmissaoGuia: WideString read Get_DataEmissaoGuia write Set_DataEmissaoGuia;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DataAutorizacao: WideString read Get_DataAutorizacao write Set_DataAutorizacao;
    property SenhaAutorizacao: WideString read Get_SenhaAutorizacao write Set_SenhaAutorizacao;
    property ValidadeSenha: WideString read Get_ValidadeSenha write Set_ValidadeSenha;
  end;

{ I213_DadosBeneficiario }

  I213_DadosBeneficiario = interface(I213_Ct_beneficiario)
    ['{E52E3676-4727-41B0-B41B-7DCF6905455E}']
    { Property Accessors }
    function Get_NomeEmpresa: WideString;
    function Get_NumeroTelefone: WideString;
    function Get_NomeTitular: WideString;
    procedure Set_NomeEmpresa(Value: WideString);
    procedure Set_NumeroTelefone(Value: WideString);
    procedure Set_NomeTitular(Value: WideString);
    { Methods & Properties }
    property NomeEmpresa: WideString read Get_NomeEmpresa write Set_NomeEmpresa;
    property NumeroTelefone: WideString read Get_NumeroTelefone write Set_NumeroTelefone;
    property NomeTitular: WideString read Get_NomeTitular write Set_NomeTitular;
  end;

{ I213_DadosSolicitante }

  I213_DadosSolicitante = interface(IXMLNode)
    ['{E2E42E36-930A-4F34-815B-8DE1EC7000CD}']
    { Property Accessors }
    function Get_DadosContratado: I213_DadosContratado;
    function Get_DadosExecutante: I213_DadosExecutante;
    { Methods & Properties }
    property DadosContratado: I213_DadosContratado read Get_DadosContratado;
    property DadosExecutante: I213_DadosExecutante read Get_DadosExecutante;
  end;

{ I213_DadosContratado }

  I213_DadosContratado = interface(I213_Ct_contratado)
    ['{D9A93D0F-325B-4C12-B5D7-06AF0C6953E2}']
    { Property Accessors }
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    { Methods & Properties }
    property ConselhoProfissional: I213_Ct_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ I213_Ct_profissionalExecutante }

  I213_Ct_profissionalExecutante = interface(IXMLNode)
    ['{5340D4ED-F55A-4BA9-821F-F50F67173C36}']
    { Property Accessors }
    function Get_NomeExecutante: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    function Get_CodigoCBOS: WideString;
    procedure Set_NomeExecutante(Value: WideString);
    procedure Set_CodigoCBOS(Value: WideString);
    { Methods & Properties }
    property NomeExecutante: WideString read Get_NomeExecutante write Set_NomeExecutante;
    property ConselhoProfissional: I213_Ct_conselhoProfissional read Get_ConselhoProfissional;
    property CodigoCBOS: WideString read Get_CodigoCBOS write Set_CodigoCBOS;
  end;

{ I213_Ct_situacaoInicial }

  I213_Ct_situacaoInicial = interface(IXMLNode)
    ['{48A9D125-F0C8-4927-8706-111836111190}']
    { Property Accessors }
    function Get_SituacaoClinica: I213_Ct_situacaoClinica;
    function Get_DoencaPeriodontal: Boolean;
    function Get_AlteracaoTecidoMole: Boolean;
    function Get_Observacao: WideString;
    procedure Set_DoencaPeriodontal(Value: Boolean);
    procedure Set_AlteracaoTecidoMole(Value: Boolean);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property SituacaoClinica: I213_Ct_situacaoClinica read Get_SituacaoClinica;
    property DoencaPeriodontal: Boolean read Get_DoencaPeriodontal write Set_DoencaPeriodontal;
    property AlteracaoTecidoMole: Boolean read Get_AlteracaoTecidoMole write Set_AlteracaoTecidoMole;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_situacaoClinica }

  I213_Ct_situacaoClinica = interface(IXMLNodeCollection)
    ['{892186B7-2F68-40DD-81A5-F32920071C63}']
    { Property Accessors }
    function Get_Dentes(Index: Integer): I213_Dentes;
    { Methods & Properties }
    function Add: I213_Dentes;
    function Insert(const Index: Integer): I213_Dentes;
    property Dentes[Index: Integer]: I213_Dentes read Get_Dentes; default;
  end;

{ I213_Dentes }

  I213_Dentes = interface(IXMLNode)
    ['{482EC398-A0FA-4990-B195-D0345AE71271}']
    { Property Accessors }
    function Get_ElementoDentario: WideString;
    function Get_CondicaoClinica: WideString;
    procedure Set_ElementoDentario(Value: WideString);
    procedure Set_CondicaoClinica(Value: WideString);
    { Methods & Properties }
    property ElementoDentario: WideString read Get_ElementoDentario write Set_ElementoDentario;
    property CondicaoClinica: WideString read Get_CondicaoClinica write Set_CondicaoClinica;
  end;

{ I213_PlanoTratamento }

  I213_PlanoTratamento = interface(IXMLNodeCollection)
    ['{4BCDF7BB-90F4-434D-A05E-568919693A24}']
    { Property Accessors }
    function Get_ProcedimentoSolicitado(Index: Integer): I213_Ct_procedimentoOdontologia;
    { Methods & Properties }
    function Add: I213_Ct_procedimentoOdontologia;
    function Insert(const Index: Integer): I213_Ct_procedimentoOdontologia;
    property ProcedimentoSolicitado[Index: Integer]: I213_Ct_procedimentoOdontologia read Get_ProcedimentoSolicitado; default;
  end;

{ I213_Ct_procedimentoOdontologia }

  I213_Ct_procedimentoOdontologia = interface(IXMLNode)
    ['{66ED0A0F-22BE-42EE-98FB-34EF63DB6B23}']
    { Property Accessors }
    function Get_ProcedimentoOdonto: I213_Ct_tabela;
    function Get_DenteRegiao: I213_Ct_denteRegiao;
    function Get_Face: WideString;
    function Get_Quantidade: Integer;
    function Get_QuantidadeUS: WideString;
    function Get_Valor: WideString;
    function Get_FranquiaCoparticipacao: WideString;
    procedure Set_Face(Value: WideString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_QuantidadeUS(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_FranquiaCoparticipacao(Value: WideString);
    { Methods & Properties }
    property ProcedimentoOdonto: I213_Ct_tabela read Get_ProcedimentoOdonto;
    property DenteRegiao: I213_Ct_denteRegiao read Get_DenteRegiao;
    property Face: WideString read Get_Face write Set_Face;
    property Quantidade: Integer read Get_Quantidade write Set_Quantidade;
    property QuantidadeUS: WideString read Get_QuantidadeUS write Set_QuantidadeUS;
    property Valor: WideString read Get_Valor write Set_Valor;
    property FranquiaCoparticipacao: WideString read Get_FranquiaCoparticipacao write Set_FranquiaCoparticipacao;
  end;

{ I213_Ct_denteRegiao }

  I213_Ct_denteRegiao = interface(IXMLNode)
    ['{E4E4C1B1-0743-4120-AE01-33228EF29F16}']
    { Property Accessors }
    function Get_Dente: WideString;
    function Get_Regiao: WideString;
    procedure Set_Dente(Value: WideString);
    procedure Set_Regiao(Value: WideString);
    { Methods & Properties }
    property Dente: WideString read Get_Dente write Set_Dente;
    property Regiao: WideString read Get_Regiao write Set_Regiao;
  end;

{ I213_Ct_guiaSolicitacaoProrrogacao }

  I213_Ct_guiaSolicitacaoProrrogacao = interface(IXMLNode)
    ['{82CDA614-5B3A-4B8E-B8F6-AA7C522FFD16}']
    { Property Accessors }
    function Get_IdentificacaoProrrogacao: I213_Ct_cabecalhoGuia;
    function Get_IdentificacaoGuiaReferencia: I213_Ct_cabecalhoGuia;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_IndicacaoClinica: WideString;
    function Get_ResponsavelAutorizacao: WideString;
    function Get_ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados;
    function Get_Diarias: I213_Ct_diariaProrrogacao;
    function Get_OPMsSolicitadas: I213_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_ResponsavelAutorizacao(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoProrrogacao: I213_Ct_cabecalhoGuia read Get_IdentificacaoProrrogacao;
    property IdentificacaoGuiaReferencia: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuiaReferencia;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I213_Ct_solicitante read Get_DadosSolicitante;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property ResponsavelAutorizacao: WideString read Get_ResponsavelAutorizacao write Set_ResponsavelAutorizacao;
    property ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados read Get_ProcedimentosExamesSolicitados;
    property Diarias: I213_Ct_diariaProrrogacao read Get_Diarias;
    property OPMsSolicitadas: I213_Ct_OPMSolicitadas read Get_OPMsSolicitadas;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_DiariaProrrogacaoAutorizada }

  I213_DiariaProrrogacaoAutorizada = interface(I213_Ct_diariaProrrogacao)
    ['{CFEBE261-EC06-419E-8546-AEFD05CF9EE7}']
    { Property Accessors }
    function Get_TipoAcomodacaoAutorizada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_MotivoGlosa: I213_Ct_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
    { Methods & Properties }
    property TipoAcomodacaoAutorizada: WideString read Get_TipoAcomodacaoAutorizada write Set_TipoAcomodacaoAutorizada;
    property QuantidadeAutorizada: WideString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property MotivoGlosa: I213_Ct_motivoGlosa read Get_MotivoGlosa;
  end;

{ I213_Ct_solicitaStatusAutorizacao }

  I213_Ct_solicitaStatusAutorizacao = interface(IXMLNode)
    ['{6934CF1C-AB41-41CE-85E6-40DA7A867926}']
    { Property Accessors }
    function Get_IdentificacaoAutorizacao: I213_IdentificacaoAutorizacao;
    function Get_DataSolicitaStatus: WideString;
    procedure Set_DataSolicitaStatus(Value: WideString);
    { Methods & Properties }
    property IdentificacaoAutorizacao: I213_IdentificacaoAutorizacao read Get_IdentificacaoAutorizacao;
    property DataSolicitaStatus: WideString read Get_DataSolicitaStatus write Set_DataSolicitaStatus;
  end;

{ I213_IdentificacaoAutorizacao }

  I213_IdentificacaoAutorizacao = interface(IXMLNodeCollection)
    ['{347DD9C3-B2B1-4093-99AE-46F28D14AFE1}']
    { Property Accessors }
    function Get_IdentificacaoSolicitacao(Index: Integer): I213_IdentificacaoSolicitacao;
    { Methods & Properties }
    function Add: I213_IdentificacaoSolicitacao;
    function Insert(const Index: Integer): I213_IdentificacaoSolicitacao;
    property IdentificacaoSolicitacao[Index: Integer]: I213_IdentificacaoSolicitacao read Get_IdentificacaoSolicitacao; default;
  end;

{ I213_IdentificacaoSolicitacao }

  I213_IdentificacaoSolicitacao = interface(I213_Ct_cabecalhoSolicitacao)
    ['{E9A54ABF-CAC8-4EE5-9B74-40F2DB74C303}']
    { Property Accessors }
    function Get_ProfissionalSolicitante: I213_Ct_contratadoSolicitante;
    function Get_IdentificacaoBeneficiario: I213_Ct_beneficiario;
    { Methods & Properties }
    property ProfissionalSolicitante: I213_Ct_contratadoSolicitante read Get_ProfissionalSolicitante;
    property IdentificacaoBeneficiario: I213_Ct_beneficiario read Get_IdentificacaoBeneficiario;
  end;

{ I213_Ct_solicitaElegibilidade }

  I213_Ct_solicitaElegibilidade = interface(IXMLNode)
    ['{D5C730F0-FB76-47C9-BAD7-4FDB4D5E1DE4}']
    { Property Accessors }
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    { Methods & Properties }
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
  end;

{ I213_Ct_cancelaGuia }

  I213_Ct_cancelaGuia = interface(IXMLNode)
    ['{80EECD53-306B-4F15-A53C-78D6FD1EF743}']
    { Property Accessors }
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_Guia: I213_Ct_cabecalhoGuia;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property DadosPrestador: I213_Ct_contratado read Get_DadosPrestador;
    property Guia: I213_Ct_cabecalhoGuia read Get_Guia;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Epilogo }

  I213_Epilogo = interface(IXMLNode)
    ['{0A1D69A9-277F-4E40-A632-02CD26B3196E}']
    { Property Accessors }
    function Get_Hash: WideString;
    procedure Set_Hash(Value: WideString);
    { Methods & Properties }
    property Hash: WideString read Get_Hash write Set_Hash;
  end;

{ I213_DefinicaoTissNet }

  I213_DefinicaoTissNet = interface(IXMLNodeCollection)
    ['{FEEA63BA-C262-45E3-9BC7-7F8ACD0AAD59}']
    { Property Accessors }
    function Get_Nodo(Index: Integer): I213_Nodo_tissnet;
    { Methods & Properties }
    function Add: I213_Nodo_tissnet;
    function Insert(const Index: Integer): I213_Nodo_tissnet;
    property Nodo[Index: Integer]: I213_Nodo_tissnet read Get_Nodo; default;
  end;

{ I213_Nodo_tissnet }

  I213_Nodo_tissnet = interface(IXMLNode)
    ['{4DC505AA-C4EF-4DBD-A0C2-DDAC82B58F90}']
    { Property Accessors }
    function Get_Operadora: WideString;
    function Get_PontoAPonto: I213_PontoAPonto;
    function Get_WebServices: I213_WebServices;
    procedure Set_Operadora(Value: WideString);
    { Methods & Properties }
    property Operadora: WideString read Get_Operadora write Set_Operadora;
    property PontoAPonto: I213_PontoAPonto read Get_PontoAPonto;
    property WebServices: I213_WebServices read Get_WebServices;
  end;

{ I213_PontoAPonto }

  I213_PontoAPonto = interface(IXMLNode)
    ['{55416B6D-57EB-428F-B8B6-ACDA44FAB08A}']
    { Property Accessors }
    function Get_Socket: I213_Ct_hostporta;
    function Get_Service: WideString;
    procedure Set_Service(Value: WideString);
    { Methods & Properties }
    property Socket: I213_Ct_hostporta read Get_Socket;
    property Service: WideString read Get_Service write Set_Service;
  end;

{ I213_Ct_hostporta }

  I213_Ct_hostporta = interface(IXMLNode)
    ['{05C85EC6-884C-4048-8F3D-40D2EFE15DEB}']
    { Property Accessors }
    function Get_Host: WideString;
    function Get_Port: Integer;
    procedure Set_Host(Value: WideString);
    procedure Set_Port(Value: Integer);
    { Methods & Properties }
    property Host: WideString read Get_Host write Set_Host;
    property Port: Integer read Get_Port write Set_Port;
  end;

{ I213_WebServices }

  I213_WebServices = interface(IXMLNode)
    ['{BAB3A4C5-0005-48C7-B4C2-A3C615733C12}']
    { Property Accessors }
    function Get_TissCancelaGuia: WideString;
    function Get_TissLoteGuias: WideString;
    function Get_TissSolicitacaoAnaliseConta: WideString;
    function Get_TissSolicitacaoDemonstrativoPagamento: WideString;
    function Get_TissSolicitacaoProcedimento: WideString;
    function Get_TissSolicitacaoStatusProtocolo: WideString;
    function Get_TissVerificaElegibilidade: WideString;
    procedure Set_TissCancelaGuia(Value: WideString);
    procedure Set_TissLoteGuias(Value: WideString);
    procedure Set_TissSolicitacaoAnaliseConta(Value: WideString);
    procedure Set_TissSolicitacaoDemonstrativoPagamento(Value: WideString);
    procedure Set_TissSolicitacaoProcedimento(Value: WideString);
    procedure Set_TissSolicitacaoStatusProtocolo(Value: WideString);
    procedure Set_TissVerificaElegibilidade(Value: WideString);
    { Methods & Properties }
    property TissCancelaGuia: WideString read Get_TissCancelaGuia write Set_TissCancelaGuia;
    property TissLoteGuias: WideString read Get_TissLoteGuias write Set_TissLoteGuias;
    property TissSolicitacaoAnaliseConta: WideString read Get_TissSolicitacaoAnaliseConta write Set_TissSolicitacaoAnaliseConta;
    property TissSolicitacaoDemonstrativoPagamento: WideString read Get_TissSolicitacaoDemonstrativoPagamento write Set_TissSolicitacaoDemonstrativoPagamento;
    property TissSolicitacaoProcedimento: WideString read Get_TissSolicitacaoProcedimento write Set_TissSolicitacaoProcedimento;
    property TissSolicitacaoStatusProtocolo: WideString read Get_TissSolicitacaoStatusProtocolo write Set_TissSolicitacaoStatusProtocolo;
    property TissVerificaElegibilidade: WideString read Get_TissVerificaElegibilidade write Set_TissVerificaElegibilidade;
  end;

{ I213_Ct_atendimentoConsulta }

  I213_Ct_atendimentoConsulta = interface(IXMLNode)
    ['{9DB9ECB6-FB66-4996-8707-3C361359C5D1}']
    { Property Accessors }
    function Get_DataAtendimento: WideString;
    function Get_Procedimento: I213_Procedimento;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: WideString;
    procedure Set_DataAtendimento(Value: WideString);
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    { Methods & Properties }
    property DataAtendimento: WideString read Get_DataAtendimento write Set_DataAtendimento;
    property Procedimento: I213_Procedimento read Get_Procedimento;
    property TipoConsulta: WideString read Get_TipoConsulta write Set_TipoConsulta;
    property TipoSaida: WideString read Get_TipoSaida write Set_TipoSaida;
  end;

{ I213_Procedimento }

  I213_Procedimento = interface(IXMLNode)
    ['{929226E0-6AF0-4578-AB18-D3339D456E25}']
    { Property Accessors }
    function Get_CodigoTabela: WideString;
    function Get_CodigoProcedimento: WideString;
    procedure Set_CodigoTabela(Value: WideString);
    procedure Set_CodigoProcedimento(Value: WideString);
    { Methods & Properties }
    property CodigoTabela: WideString read Get_CodigoTabela write Set_CodigoTabela;
    property CodigoProcedimento: WideString read Get_CodigoProcedimento write Set_CodigoProcedimento;
  end;

{ I213_ProcedimentoReapr }

  I213_ProcedimentoReapr = interface(IXMLNode)
    ['{25E56C4C-255F-4293-BEA5-8D285600C746}']
    { Property Accessors }
    function Get_CodigoTabela: WideString;
    function Get_CodigoProcedimento: WideString;
    function Get_Justificativa: WideString;
    procedure Set_CodigoTabela(Value: WideString);
    procedure Set_CodigoProcedimento(Value: WideString);
    procedure Set_Justificativa(Value: WideString);
    { Methods & Properties }
    property CodigoTabela: WideString read Get_CodigoTabela write Set_CodigoTabela;
    property CodigoProcedimento: WideString read Get_CodigoProcedimento write Set_CodigoProcedimento;
    property Justificativa: WideString read Get_Justificativa write Set_Justificativa;
  end;

{ I213_Ct_atendimentoConsultaReapr }

  I213_Ct_atendimentoConsultaReapr = interface(IXMLNode)
    ['{A19E0DE8-51BB-40D8-974D-0EA47AB0072D}']
    { Property Accessors }
    function Get_Procedimento: I213_ProcedimentoReapr;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: WideString;
    function Get_DataAtendimento: WideString;
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_DataAtendimento(Value: WideString);
    { Methods & Properties }
    property Procedimento: I213_ProcedimentoReapr read Get_Procedimento;
    property TipoConsulta: WideString read Get_TipoConsulta write Set_TipoConsulta;
    property TipoSaida: WideString read Get_TipoSaida write Set_TipoSaida;
    property DataAtendimento: WideString read Get_DataAtendimento write Set_DataAtendimento;
  end;

{ I213_Ct_atendimentoOdontologia }

  I213_Ct_atendimentoOdontologia = interface(IXMLNode)
    ['{1C445138-7150-4ADD-B3CC-49845778B079}']
    { Property Accessors }
    function Get_DataTerminoTratamento: WideString;
    function Get_TipoAtendimento: WideString;
    procedure Set_DataTerminoTratamento(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
    { Methods & Properties }
    property DataTerminoTratamento: WideString read Get_DataTerminoTratamento write Set_DataTerminoTratamento;
    property TipoAtendimento: WideString read Get_TipoAtendimento write Set_TipoAtendimento;
  end;

{ I213_Ct_autorizacaoGuia }

  I213_Ct_autorizacaoGuia = interface(IXMLNode)
    ['{195EFBC2-ADEC-48DE-B652-403C7CC4C40D}']
    { Property Accessors }
    function Get_DataAutorizacao: WideString;
    function Get_SenhaAutorizacao: WideString;
    function Get_ValidadeSenha: WideString;
    procedure Set_DataAutorizacao(Value: WideString);
    procedure Set_SenhaAutorizacao(Value: WideString);
    procedure Set_ValidadeSenha(Value: WideString);
    { Methods & Properties }
    property DataAutorizacao: WideString read Get_DataAutorizacao write Set_DataAutorizacao;
    property SenhaAutorizacao: WideString read Get_SenhaAutorizacao write Set_SenhaAutorizacao;
    property ValidadeSenha: WideString read Get_ValidadeSenha write Set_ValidadeSenha;
  end;

{ I213_Ct_autorizacaoGuiaInternacao }

  I213_Ct_autorizacaoGuiaInternacao = interface(I213_Ct_autorizacaoGuia)
    ['{D2DDF443-FC46-4F5C-B715-7A943844DAB0}']
    { Property Accessors }
    function Get_DiasAutorizado: Integer;
    function Get_DataProvavelAdmisHosp: WideString;
    function Get_TipoAcomodacao: WideString;
    procedure Set_DiasAutorizado(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: WideString);
    procedure Set_TipoAcomodacao(Value: WideString);
    { Methods & Properties }
    property DiasAutorizado: Integer read Get_DiasAutorizado write Set_DiasAutorizado;
    property DataProvavelAdmisHosp: WideString read Get_DataProvavelAdmisHosp write Set_DataProvavelAdmisHosp;
    property TipoAcomodacao: WideString read Get_TipoAcomodacao write Set_TipoAcomodacao;
  end;

{ I213_AutorizacaoServico }

  I213_AutorizacaoServico = interface(I213_Ct_autorizacaoProcedimento)
    ['{8D1B17B0-97F5-4C05-8836-E00E31E5345B}']
    { Property Accessors }
    function Get_TotalOdonto: I213_TotalOdonto;
    function Get_DiariaProrrogacaoAutorizada: I213_DiariaProrrogacaoAutorizada;
    { Methods & Properties }
    property TotalOdonto: I213_TotalOdonto read Get_TotalOdonto;
    property DiariaProrrogacaoAutorizada: I213_DiariaProrrogacaoAutorizada read Get_DiariaProrrogacaoAutorizada;
  end;

{ I213_AutorizacaoServicoList }

  I213_AutorizacaoServicoList = interface(IXMLNodeCollection)
    ['{C45B847D-6509-440A-9BFF-73A3612ADD85}']
    { Methods & Properties }
    function Add: I213_AutorizacaoServico;
    function Insert(const Index: Integer): I213_AutorizacaoServico;
    function Get_Item(Index: Integer): I213_AutorizacaoServico;
    property Items[Index: Integer]: I213_AutorizacaoServico read Get_Item; default;
  end;

{ I213_MotivoNegativa }

  I213_MotivoNegativa = interface(IXMLNodeCollection)
    ['{A8DFC888-E5E3-4379-B4C4-18875DBC7045}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): I213_Ct_motivoGlosa;
    { Methods & Properties }
    function Add: I213_Ct_motivoGlosa;
    function Insert(const Index: Integer): I213_Ct_motivoGlosa;
    property MotivoGlosa[Index: Integer]: I213_Ct_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ I213_DadosPagamento }

  I213_DadosPagamento = interface(I213_Ct_dadosPagamento)
    ['{A1B355B1-48ED-491A-BAC4-265AAB491A2A}']
    { Property Accessors }
    function Get_TotalGeral: I213_Ct_totalDemoOdonto;
    { Methods & Properties }
    property TotalGeral: I213_Ct_totalDemoOdonto read Get_TotalGeral;
  end;

{ I213_Ct_loteOdonto }

  I213_Ct_loteOdonto = interface(IXMLNode)
    ['{00A32A0C-58EA-41CF-80C7-E37562013570}']
    { Property Accessors }
    function Get_NumeroLote: WideString;
    function Get_DetalheGuia: I213_Ct_detalheGuiaOdonto;
    function Get_ValorTotalLiberadoLote: WideString;
    function Get_ValorTotalProcessadoLote: WideString;
    function Get_ValorTotalGlosaLote: WideString;
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_ValorTotalLiberadoLote(Value: WideString);
    procedure Set_ValorTotalProcessadoLote(Value: WideString);
    procedure Set_ValorTotalGlosaLote(Value: WideString);
    { Methods & Properties }
    property NumeroLote: WideString read Get_NumeroLote write Set_NumeroLote;
    property DetalheGuia: I213_Ct_detalheGuiaOdonto read Get_DetalheGuia;
    property ValorTotalLiberadoLote: WideString read Get_ValorTotalLiberadoLote write Set_ValorTotalLiberadoLote;
    property ValorTotalProcessadoLote: WideString read Get_ValorTotalProcessadoLote write Set_ValorTotalProcessadoLote;
    property ValorTotalGlosaLote: WideString read Get_ValorTotalGlosaLote write Set_ValorTotalGlosaLote;
  end;

{ I213_Ct_detalheGuiaOdonto }

  I213_Ct_detalheGuiaOdonto = interface(IXMLNode)
    ['{059E24E5-0842-4C84-8D4E-1C85CBCB6073}']
    { Property Accessors }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_CodigoBeneficiario: WideString;
    function Get_NomeBeneficiario: WideString;
    function Get_ProcedimentoRealizado: I213_ProcedimentoRealizadoOdonto;
    function Get_ValorTotalGlosaGuia: WideString;
    function Get_ValorTotalLiberadoGuia: WideString;
    function Get_ValorTotalProcessadoGuia: WideString;
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_CodigoBeneficiario(Value: WideString);
    procedure Set_NomeBeneficiario(Value: WideString);
    procedure Set_ValorTotalGlosaGuia(Value: WideString);
    procedure Set_ValorTotalLiberadoGuia(Value: WideString);
    procedure Set_ValorTotalProcessadoGuia(Value: WideString);
    { Methods & Properties }
    property NumeroGuiaPrestador: WideString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: WideString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property CodigoBeneficiario: WideString read Get_CodigoBeneficiario write Set_CodigoBeneficiario;
    property NomeBeneficiario: WideString read Get_NomeBeneficiario write Set_NomeBeneficiario;
    property ProcedimentoRealizado: I213_ProcedimentoRealizadoOdonto read Get_ProcedimentoRealizado;
    property ValorTotalGlosaGuia: WideString read Get_ValorTotalGlosaGuia write Set_ValorTotalGlosaGuia;
    property ValorTotalLiberadoGuia: WideString read Get_ValorTotalLiberadoGuia write Set_ValorTotalLiberadoGuia;
    property ValorTotalProcessadoGuia: WideString read Get_ValorTotalProcessadoGuia write Set_ValorTotalProcessadoGuia;
  end;

{ I213_ProcedimentoRealizadoOdonto }

  I213_ProcedimentoRealizadoOdonto = interface(IXMLNodeCollection)
    ['{043351A3-6C62-4C89-96D3-93F597704257}']
    { Property Accessors }
    function Get_ProcedimentosOdonto(Index: Integer): I213_Ct_procedimentoOdontoRealizado;
    { Methods & Properties }
    function Add: I213_Ct_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): I213_Ct_procedimentoOdontoRealizado;
    property ProcedimentosOdonto[Index: Integer]: I213_Ct_procedimentoOdontoRealizado read Get_ProcedimentosOdonto; default;
  end;

{ I213_ProcedimentoRealizado }

  I213_ProcedimentoRealizado = interface(IXMLNode)
    ['{CB33722D-1A6C-428E-8EE3-6CB2AAB93869}']
    { Property Accessors }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property Data: WideString read Get_Data write Set_Data;
    property HoraInicio: WideString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: WideString read Get_HoraFim write Set_HoraFim;
    property Procedimento: I213_Ct_tabela read Get_Procedimento;
    property QuantidadeRealizada: Integer read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: WideString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: WideString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: WideString read Get_Valor write Set_Valor;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I213_Ct_procedimentoOdontoRealizado }

  I213_Ct_procedimentoOdontoRealizado = interface(IXMLNode)
    ['{EF5972AC-5E96-4CE6-B25B-54C4E1420544}']
    { Property Accessors }
    function Get_ProcedimentoOdonto: I213_Ct_tabela;
    function Get_DenteRegiao: I213_Ct_denteRegiao;
    function Get_Face: WideString;
    function Get_DataRealizacao: WideString;
    function Get_Quantidade: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorGlosaEstorno: WideString;
    function Get_MotivoGlosa: I213_St_tipoGlosaList;
    function Get_ValorLiberado: WideString;
    procedure Set_Face(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorGlosaEstorno(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    { Methods & Properties }
    property ProcedimentoOdonto: I213_Ct_tabela read Get_ProcedimentoOdonto;
    property DenteRegiao: I213_Ct_denteRegiao read Get_DenteRegiao;
    property Face: WideString read Get_Face write Set_Face;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property Quantidade: Integer read Get_Quantidade write Set_Quantidade;
    property ValorProcessado: WideString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorGlosaEstorno: WideString read Get_ValorGlosaEstorno write Set_ValorGlosaEstorno;
    property MotivoGlosa: I213_St_tipoGlosaList read Get_MotivoGlosa;
    property ValorLiberado: WideString read Get_ValorLiberado write Set_ValorLiberado;
  end;

{ I213_Ct_diagnosticoAtendimento }

  I213_Ct_diagnosticoAtendimento = interface(IXMLNode)
    ['{D0DBA174-93FB-4D3A-9484-9DDABC447E47}']
    { Property Accessors }
    function Get_CID: I213_Ct_diagnostico;
    function Get_TipoDoenca: WideString;
    function Get_TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: WideString;
    procedure Set_TipoDoenca(Value: WideString);
    procedure Set_IndicadorAcidente(Value: WideString);
    { Methods & Properties }
    property CID: I213_Ct_diagnostico read Get_CID;
    property TipoDoenca: WideString read Get_TipoDoenca write Set_TipoDoenca;
    property TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca read Get_TempoReferidoEvolucaoDoenca;
    property IndicadorAcidente: WideString read Get_IndicadorAcidente write Set_IndicadorAcidente;
  end;

{ I213_Ct_diagnosticoSaidaInternacao }

  I213_Ct_diagnosticoSaidaInternacao = interface(IXMLNode)
    ['{149820FD-4E9E-451B-86B9-8719A43EC4D1}']
    { Property Accessors }
    function Get_DiagnosticoPrincipal: I213_Ct_diagnostico;
    function Get_IndicadorAcidente: WideString;
    function Get_DiagnosticosSecundarios: I213_Ct_diagnosticosSecundarios;
    function Get_MotivoSaidaInternacao: WideString;
    function Get_Obito: I213_Ct_obitoInternacaoList;
    procedure Set_IndicadorAcidente(Value: WideString);
    procedure Set_MotivoSaidaInternacao(Value: WideString);
    { Methods & Properties }
    property DiagnosticoPrincipal: I213_Ct_diagnostico read Get_DiagnosticoPrincipal;
    property IndicadorAcidente: WideString read Get_IndicadorAcidente write Set_IndicadorAcidente;
    property DiagnosticosSecundarios: I213_Ct_diagnosticosSecundarios read Get_DiagnosticosSecundarios;
    property MotivoSaidaInternacao: WideString read Get_MotivoSaidaInternacao write Set_MotivoSaidaInternacao;
    property Obito: I213_Ct_obitoInternacaoList read Get_Obito;
  end;

{ I213_Ct_obitoInternacao }

  I213_Ct_obitoInternacao = interface(IXMLNode)
    ['{BD852A64-2B95-4840-9CB3-E3E1FBD192EE}']
    { Property Accessors }
    function Get_CID: I213_Ct_diagnostico;
    function Get_NumeroDeclaracao: WideString;
    procedure Set_NumeroDeclaracao(Value: WideString);
    { Methods & Properties }
    property CID: I213_Ct_diagnostico read Get_CID;
    property NumeroDeclaracao: WideString read Get_NumeroDeclaracao write Set_NumeroDeclaracao;
  end;

{ I213_Ct_obitoInternacaoList }

  I213_Ct_obitoInternacaoList = interface(IXMLNodeCollection)
    ['{EF8E52CA-1F32-4A38-918F-7FA0505BD959}']
    { Methods & Properties }
    function Add: I213_Ct_obitoInternacao;
    function Insert(const Index: Integer): I213_Ct_obitoInternacao;
    function Get_Item(Index: Integer): I213_Ct_obitoInternacao;
    property Items[Index: Integer]: I213_Ct_obitoInternacao read Get_Item; default;
  end;

{ I213_Ct_executanteComplementar }

  I213_Ct_executanteComplementar = interface(IXMLNode)
    ['{A32E3CD7-5986-4C4C-ACD3-385FD0DF6E5F}']
    { Property Accessors }
    function Get_CodigoProfissionalCompl: I213_Ct_identificacaoPrestador;
    function Get_NomeProfissionalCompl: WideString;
    procedure Set_NomeProfissionalCompl(Value: WideString);
    { Methods & Properties }
    property CodigoProfissionalCompl: I213_Ct_identificacaoPrestador read Get_CodigoProfissionalCompl;
    property NomeProfissionalCompl: WideString read Get_NomeProfissionalCompl write Set_NomeProfissionalCompl;
  end;

{ I213_Ct_identificacaoEquipe }

  I213_Ct_identificacaoEquipe = interface(IXMLNodeCollection)
    ['{376E1F0C-86B9-463D-ABD0-8F422FC8DC26}']
    { Property Accessors }
    function Get_MembroEquipe(Index: Integer): I213_MembroEquipe;
    { Methods & Properties }
    function Add: I213_MembroEquipe;
    function Insert(const Index: Integer): I213_MembroEquipe;
    property MembroEquipe[Index: Integer]: I213_MembroEquipe read Get_MembroEquipe; default;
  end;

{ I213_MembroEquipe }

  I213_MembroEquipe = interface(IXMLNode)
    ['{06C15379-A5BC-4F04-B374-470EB8951959}']
    { Property Accessors }
    function Get_CodigoProfissional: I213_Ct_identificacaoPrestadorEquipe;
    function Get_IdentificacaoProfissional: I213_Ct_profissionalExecutante;
    function Get_Cpf: WideString;
    function Get_PosicaoProfissional: WideString;
    procedure Set_Cpf(Value: WideString);
    procedure Set_PosicaoProfissional(Value: WideString);
    { Methods & Properties }
    property CodigoProfissional: I213_Ct_identificacaoPrestadorEquipe read Get_CodigoProfissional;
    property IdentificacaoProfissional: I213_Ct_profissionalExecutante read Get_IdentificacaoProfissional;
    property Cpf: WideString read Get_Cpf write Set_Cpf;
    property PosicaoProfissional: WideString read Get_PosicaoProfissional write Set_PosicaoProfissional;
  end;

{ I213_Ct_identificacaoPrestadorEquipe }

  I213_Ct_identificacaoPrestadorEquipe = interface(IXMLNode)
    ['{A1E1A512-CEAC-49BF-A30F-F1169A950C75}']
    { Property Accessors }
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    { Methods & Properties }
    property Cpf: WideString read Get_Cpf write Set_Cpf;
    property CodigoPrestadorNaOperadora: WideString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
    property ConselhoProfissional: I213_Ct_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ I213_DadosExecutante }

  I213_DadosExecutante = interface(I213_Ct_profissionalExecutante)
    ['{849FBBAA-01E4-4D4F-8CA9-5E9136F1DF9E}']
  end;

{ I213_Ct_identificacaoProfissionalCompl }

  I213_Ct_identificacaoProfissionalCompl = interface(IXMLNode)
    ['{4C36EEB4-6DFF-4359-BE29-481D52E56BC5}']
    { Property Accessors }
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    { Methods & Properties }
    property Cpf: WideString read Get_Cpf write Set_Cpf;
    property CodigoPrestadorNaOperadora: WideString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
  end;

{ I213_Ct_internacaoObstetrica }

  I213_Ct_internacaoObstetrica = interface(IXMLNode)
    ['{FBE25EDA-2248-41BA-8BAA-5AA29163AF59}']
    { Property Accessors }
    function Get_EmGestacao: Boolean;
    function Get_Aborto: Boolean;
    function Get_TranstornoMaternoRelGravidez: Boolean;
    function Get_ComplicacaoPeriodoPuerperio: Boolean;
    function Get_AtendimentoRNSalaParto: Boolean;
    function Get_ComplicacaoNeonatal: Boolean;
    function Get_BaixoPeso: Boolean;
    function Get_PartoCesareo: Boolean;
    function Get_PartoNormal: Boolean;
    function Get_DeclaracoesNascidosVivos: I213_Ct_numeroDN;
    function Get_QtdNascidosVivosTermo: Integer;
    function Get_QtdNascidosMortos: Integer;
    function Get_QtdVivosPrematuros: Integer;
    function Get_ObitoMulher: WideString;
    procedure Set_EmGestacao(Value: Boolean);
    procedure Set_Aborto(Value: Boolean);
    procedure Set_TranstornoMaternoRelGravidez(Value: Boolean);
    procedure Set_ComplicacaoPeriodoPuerperio(Value: Boolean);
    procedure Set_AtendimentoRNSalaParto(Value: Boolean);
    procedure Set_ComplicacaoNeonatal(Value: Boolean);
    procedure Set_BaixoPeso(Value: Boolean);
    procedure Set_PartoCesareo(Value: Boolean);
    procedure Set_PartoNormal(Value: Boolean);
    procedure Set_QtdNascidosVivosTermo(Value: Integer);
    procedure Set_QtdNascidosMortos(Value: Integer);
    procedure Set_QtdVivosPrematuros(Value: Integer);
    procedure Set_ObitoMulher(Value: WideString);
    { Methods & Properties }
    property EmGestacao: Boolean read Get_EmGestacao write Set_EmGestacao;
    property Aborto: Boolean read Get_Aborto write Set_Aborto;
    property TranstornoMaternoRelGravidez: Boolean read Get_TranstornoMaternoRelGravidez write Set_TranstornoMaternoRelGravidez;
    property ComplicacaoPeriodoPuerperio: Boolean read Get_ComplicacaoPeriodoPuerperio write Set_ComplicacaoPeriodoPuerperio;
    property AtendimentoRNSalaParto: Boolean read Get_AtendimentoRNSalaParto write Set_AtendimentoRNSalaParto;
    property ComplicacaoNeonatal: Boolean read Get_ComplicacaoNeonatal write Set_ComplicacaoNeonatal;
    property BaixoPeso: Boolean read Get_BaixoPeso write Set_BaixoPeso;
    property PartoCesareo: Boolean read Get_PartoCesareo write Set_PartoCesareo;
    property PartoNormal: Boolean read Get_PartoNormal write Set_PartoNormal;
    property DeclaracoesNascidosVivos: I213_Ct_numeroDN read Get_DeclaracoesNascidosVivos;
    property QtdNascidosVivosTermo: Integer read Get_QtdNascidosVivosTermo write Set_QtdNascidosVivosTermo;
    property QtdNascidosMortos: Integer read Get_QtdNascidosMortos write Set_QtdNascidosMortos;
    property QtdVivosPrematuros: Integer read Get_QtdVivosPrematuros write Set_QtdVivosPrematuros;
    property ObitoMulher: WideString read Get_ObitoMulher write Set_ObitoMulher;
  end;

{ I213_Ct_numeroDN }

  I213_Ct_numeroDN = interface(IXMLNode)
    ['{8F4AD88E-6E8A-4C39-979A-0E675F22F15A}']
    { Property Accessors }
    function Get_NumeroDN: WideString;
    procedure Set_NumeroDN(Value: WideString);
    { Methods & Properties }
    property NumeroDN: WideString read Get_NumeroDN write Set_NumeroDN;
  end;

{ I213_LoteOdonto }

  I213_LoteOdonto = interface(I213_Ct_loteOdonto)
    ['{1A66FF3B-D847-4483-A1F7-940CC0E1E9BF}']
    { Property Accessors }
    function Get_TotalGeralLote: I213_Ct_totalDemoOdonto;
    { Methods & Properties }
    property TotalGeralLote: I213_Ct_totalDemoOdonto read Get_TotalGeralLote;
  end;

{ I213_Ct_obitoNeonatal }

  I213_Ct_obitoNeonatal = interface(IXMLNode)
    ['{5DD16BA7-BC43-42AF-9A4E-34AA8C054A6E}']
    { Property Accessors }
    function Get_QtdeobitoPrecoce: Integer;
    function Get_QtdeobitoTardio: Integer;
    procedure Set_QtdeobitoPrecoce(Value: Integer);
    procedure Set_QtdeobitoTardio(Value: Integer);
    { Methods & Properties }
    property QtdeobitoPrecoce: Integer read Get_QtdeobitoPrecoce write Set_QtdeobitoPrecoce;
    property QtdeobitoTardio: Integer read Get_QtdeobitoTardio write Set_QtdeobitoTardio;
  end;

{ I213_Ct_OPMUtilizada }

  I213_Ct_OPMUtilizada = interface(IXMLNode)
    ['{DF5E200A-3621-4951-808B-2B718FAB2B2B}']
    { Property Accessors }
    function Get_OPM: I213_OPMIdentificacao;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
    { Methods & Properties }
    property OPM: I213_OPMIdentificacao read Get_OPM;
    property ValorTotalOPM: WideString read Get_ValorTotalOPM write Set_ValorTotalOPM;
  end;

{ I213_OPMIdentificacao }

  I213_OPMIdentificacao = interface(IXMLNodeCollection)
    ['{F604E228-2E84-4A0F-A371-25F76B0024B3}']
    { Property Accessors }
    function Get_IdentificacaoOPM(Index: Integer): I213_IdentificacaoOPMUtilizada;
    { Methods & Properties }
    function Add: I213_IdentificacaoOPMUtilizada;
    function Insert(const Index: Integer): I213_IdentificacaoOPMUtilizada;
    property IdentificacaoOPM[Index: Integer]: I213_IdentificacaoOPMUtilizada read Get_IdentificacaoOPM; default;
  end;

{ I213_OPM }

  I213_OPM = interface(IXMLNodeCollection)
    ['{1608140D-7F3D-4050-9915-4F1FB8A62992}']
    { Property Accessors }
    function Get_IdentificacaoOPM(Index: Integer): I213_IdentificacaoOPM;
    { Methods & Properties }
    function Add: I213_IdentificacaoOPM;
    function Insert(const Index: Integer): I213_IdentificacaoOPM;
    property IdentificacaoOPM[Index: Integer]: I213_IdentificacaoOPM read Get_IdentificacaoOPM; default;
  end;

{ I213_IdentificacaoOPMUtilizada }

  I213_IdentificacaoOPMUtilizada = interface(IXMLNode)
    ['{35CAB100-F488-4AF8-8C63-B66363DA9294}']
    { Property Accessors }
    function Get_OPM: I213_Ct_tabela;
    function Get_ValorUnitario: WideString;
    function Get_Quantidade: WideString;
    function Get_CodigoBarra: WideString;
    function Get_ValorTotal: WideString;
    function Get_Justificativa: WideString;
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_CodigoBarra(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_Justificativa(Value: WideString);
    { Methods & Properties }
    property OPM: I213_Ct_tabela read Get_OPM;
    property ValorUnitario: WideString read Get_ValorUnitario write Set_ValorUnitario;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property CodigoBarra: WideString read Get_CodigoBarra write Set_CodigoBarra;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property Justificativa: WideString read Get_Justificativa write Set_Justificativa;
  end;

{ I213_IdentificacaoOPM }

  I213_IdentificacaoOPM = interface(IXMLNode)
    ['{09730018-BC31-4769-8D58-2B821BDADC77}']
    { Property Accessors }
    function Get_OPM: I213_Ct_tabela;
    function Get_Quantidade: WideString;
    function Get_CodigoBarra: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Quantidade(Value: WideString);
    procedure Set_CodigoBarra(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property OPM: I213_Ct_tabela read Get_OPM;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property CodigoBarra: WideString read Get_CodigoBarra write Set_CodigoBarra;
    property ValorUnitario: WideString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I213_Ct_OPMUtilizadasRevisao }

  I213_Ct_OPMUtilizadasRevisao = interface(IXMLNode)
    ['{F134DBBB-4B41-49FF-9D99-54F41F266F70}']
    { Property Accessors }
    function Get_OPMUtilizada: I213_OPMUtilizada;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
    { Methods & Properties }
    property OPMUtilizada: I213_OPMUtilizada read Get_OPMUtilizada;
    property ValorTotalOPM: WideString read Get_ValorTotalOPM write Set_ValorTotalOPM;
  end;

{ I213_OPMUtilizada }

  I213_OPMUtilizada = interface(IXMLNodeCollection)
    ['{25B7E57F-04D6-47BE-A576-900E95769EE2}']
    { Property Accessors }
    function Get_OPM(Index: Integer): I213_OPM;
    { Methods & Properties }
    function Add: I213_OPM;
    function Insert(const Index: Integer): I213_OPM;
    property OPM[Index: Integer]: I213_OPM read Get_OPM; default;
  end;

{ I213_Ct_outrasDespesas }

  I213_Ct_outrasDespesas = interface(IXMLNode)
    ['{C3CFBAB0-5815-4265-8CB1-F465827F765E}']
    { Property Accessors }
    function Get_Despesa: I213_DespesaList;
    function Get_TotalGeralOutrasDespesas: WideString;
    procedure Set_TotalGeralOutrasDespesas(Value: WideString);
    { Methods & Properties }
    property Despesa: I213_DespesaList read Get_Despesa;
    property TotalGeralOutrasDespesas: WideString read Get_TotalGeralOutrasDespesas write Set_TotalGeralOutrasDespesas;
  end;

{ I213_Despesa }

  I213_Despesa = interface(IXMLNode)
    ['{C59246A5-EBB9-49D8-A370-CFFB94A9E958}']
    { Property Accessors }
    function Get_IdentificadorDespesa: I213_Ct_tabela;
    function Get_TipoDespesa: WideString;
    function Get_DataRealizacao: WideString;
    function Get_HoraInicial: WideString;
    function Get_HoraFinal: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_TipoDespesa(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_HoraInicial(Value: WideString);
    procedure Set_HoraFinal(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property IdentificadorDespesa: I213_Ct_tabela read Get_IdentificadorDespesa;
    property TipoDespesa: WideString read Get_TipoDespesa write Set_TipoDespesa;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property HoraInicial: WideString read Get_HoraInicial write Set_HoraInicial;
    property HoraFinal: WideString read Get_HoraFinal write Set_HoraFinal;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property ValorUnitario: WideString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I213_DespesaList }

  I213_DespesaList = interface(IXMLNodeCollection)
    ['{E82A4705-8E85-4960-A4F6-60C7C60ADD9D}']
    { Methods & Properties }
    function Add: I213_Despesa;
    function Insert(const Index: Integer): I213_Despesa;
    function Get_Item(Index: Integer): I213_Despesa;
    property Items[Index: Integer]: I213_Despesa read Get_Item; default;
  end;

{ I213_Ct_outrasDespesasRevisao }

  I213_Ct_outrasDespesasRevisao = interface(IXMLNode)
    ['{48AE925D-F34F-413B-B828-871BD02C5DF0}']
    { Property Accessors }
    function Get_ItensDespesas: I213_ItensDespesasList;
    function Get_TotalGeralOutrasDespesas: WideString;
    procedure Set_TotalGeralOutrasDespesas(Value: WideString);
    { Methods & Properties }
    property ItensDespesas: I213_ItensDespesasList read Get_ItensDespesas;
    property TotalGeralOutrasDespesas: WideString read Get_TotalGeralOutrasDespesas write Set_TotalGeralOutrasDespesas;
  end;

{ I213_ItensDespesas }

  I213_ItensDespesas = interface(IXMLNode)
    ['{CDF8572F-8A86-4473-A93A-A206DC3F9A3D}']
    { Property Accessors }
    function Get_TipoDespesa: WideString;
    function Get_DataRealizacao: WideString;
    function Get_Despesa: I213_Ct_tabela;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    function Get_Justificativa: WideString;
    procedure Set_TipoDespesa(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_Justificativa(Value: WideString);
    { Methods & Properties }
    property TipoDespesa: WideString read Get_TipoDespesa write Set_TipoDespesa;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property Despesa: I213_Ct_tabela read Get_Despesa;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property ValorUnitario: WideString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property Justificativa: WideString read Get_Justificativa write Set_Justificativa;
  end;

{ I213_ItensDespesasList }

  I213_ItensDespesasList = interface(IXMLNodeCollection)
    ['{2F305053-E255-428F-911B-3E259576D325}']
    { Methods & Properties }
    function Add: I213_ItensDespesas;
    function Insert(const Index: Integer): I213_ItensDespesas;
    function Get_Item(Index: Integer): I213_ItensDespesas;
    property Items[Index: Integer]: I213_ItensDespesas read Get_Item; default;
  end;

{ I213_Ct_procedimentosRealizados }

  I213_Ct_procedimentosRealizados = interface(IXMLNodeCollection)
    ['{E5615E4B-8F77-4324-8779-67DB6F2F5477}']
    { Property Accessors }
    function Get_ProcedimentoRealizado(Index: Integer): I213_ProcedimentoRealizado;
    { Methods & Properties }
    function Add: I213_ProcedimentoRealizado;
    function Insert(const Index: Integer): I213_ProcedimentoRealizado;
    property ProcedimentoRealizado[Index: Integer]: I213_ProcedimentoRealizado read Get_ProcedimentoRealizado; default;
  end;

{ I213_Ct_procedimentoOdontoRevisao }

  I213_Ct_procedimentoOdontoRevisao = interface(IXMLNode)
    ['{FD48D2DA-D1C0-4E49-A1E3-6A8845891FB0}']
    { Property Accessors }
    function Get_ProcedimentoOdontologia: I213_ProcedimentoOdontologia;
    function Get_ValorTotal: WideString;
    function Get_QuantidadeTotalUS: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    function Get_JustificativaRevisao: WideString;
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_QuantidadeTotalUS(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    procedure Set_JustificativaRevisao(Value: WideString);
    { Methods & Properties }
    property ProcedimentoOdontologia: I213_ProcedimentoOdontologia read Get_ProcedimentoOdontologia;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property QuantidadeTotalUS: WideString read Get_QuantidadeTotalUS write Set_QuantidadeTotalUS;
    property TotalFranquiaCoparticipacao: WideString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
    property JustificativaRevisao: WideString read Get_JustificativaRevisao write Set_JustificativaRevisao;
  end;

{ I213_ProcedimentoOdontologia }

  I213_ProcedimentoOdontologia = interface(I213_Ct_procedimentoOdontologia)
    ['{471DB20C-7CEB-4AC5-A69D-316DE1EFB6AD}']
    { Property Accessors }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
    { Methods & Properties }
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
  end;

{ I213_Ct_procedimentoRealizadoEquipe }

  I213_Ct_procedimentoRealizadoEquipe = interface(IXMLNodeCollection)
    ['{CA8CD9F1-7788-4F65-9208-5DC291561E9A}']
    { Property Accessors }
    function Get_Procedimentos(Index: Integer): I213_ProcedimentosEquipe;
    { Methods & Properties }
    function Add: I213_ProcedimentosEquipe;
    function Insert(const Index: Integer): I213_ProcedimentosEquipe;
    property Procedimentos[Index: Integer]: I213_ProcedimentosEquipe read Get_Procedimentos; default;
  end;

{ I213_Ct_procedimentoRevisao }

  I213_Ct_procedimentoRevisao = interface(IXMLNodeCollection)
    ['{8524B9FE-B98E-4D21-8E97-C6E56AE586AA}']
    { Property Accessors }
    function Get_ProcedimentosRevisao(Index: Integer): I213_ProcedimentosRevisao;
    { Methods & Properties }
    function Add: I213_ProcedimentosRevisao;
    function Insert(const Index: Integer): I213_ProcedimentosRevisao;
    property ProcedimentosRevisao[Index: Integer]: I213_ProcedimentosRevisao read Get_ProcedimentosRevisao; default;
  end;

{ I213_ProcedimentosRevisao }

  I213_ProcedimentosRevisao = interface(IXMLNode)
    ['{877689E3-351A-4030-9206-732BB3248E3C}']
    { Property Accessors }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    function Get_JustificativaRevisao: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_JustificativaRevisao(Value: WideString);
    { Methods & Properties }
    property Data: WideString read Get_Data write Set_Data;
    property HoraInicio: WideString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: WideString read Get_HoraFim write Set_HoraFim;
    property Procedimento: I213_Ct_tabela read Get_Procedimento;
    property QuantidadeRealizada: Integer read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: WideString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: WideString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: WideString read Get_Valor write Set_Valor;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property JustificativaRevisao: WideString read Get_JustificativaRevisao write Set_JustificativaRevisao;
  end;

{ I213_Ct_situacaoDentes }

  I213_Ct_situacaoDentes = interface(IXMLNode)
    ['{F3DBF35A-9D62-404D-ADEC-842AD7F5E387}']
    { Property Accessors }
    function Get_Dente: WideString;
    function Get_Obturado: Boolean;
    function Get_Careado: Boolean;
    function Get_Perdido: Boolean;
    procedure Set_Dente(Value: WideString);
    procedure Set_Obturado(Value: Boolean);
    procedure Set_Careado(Value: Boolean);
    procedure Set_Perdido(Value: Boolean);
    { Methods & Properties }
    property Dente: WideString read Get_Dente write Set_Dente;
    property Obturado: Boolean read Get_Obturado write Set_Obturado;
    property Careado: Boolean read Get_Careado write Set_Careado;
    property Perdido: Boolean read Get_Perdido write Set_Perdido;
  end;

{ I213_Ct_totaisOdonto }

  I213_Ct_totaisOdonto = interface(IXMLNode)
    ['{537E2B1B-1CCC-444D-9C8D-B8EDFC129C42}']
    { Property Accessors }
    function Get_ServicoExecutado: WideString;
    function Get_Taxas: WideString;
    function Get_Materiais: WideString;
    function Get_Medicamentos: WideString;
    function Get_TotalGeral: WideString;
    procedure Set_ServicoExecutado(Value: WideString);
    procedure Set_Taxas(Value: WideString);
    procedure Set_Materiais(Value: WideString);
    procedure Set_Medicamentos(Value: WideString);
    procedure Set_TotalGeral(Value: WideString);
    { Methods & Properties }
    property ServicoExecutado: WideString read Get_ServicoExecutado write Set_ServicoExecutado;
    property Taxas: WideString read Get_Taxas write Set_Taxas;
    property Materiais: WideString read Get_Materiais write Set_Materiais;
    property Medicamentos: WideString read Get_Medicamentos write Set_Medicamentos;
    property TotalGeral: WideString read Get_TotalGeral write Set_TotalGeral;
  end;

{ I213_Ct_tratamenteOdontoRealizado }

  I213_Ct_tratamenteOdontoRealizado = interface(IXMLNode)
    ['{BF033906-291F-4BB9-968F-919DC3AA752B}']
    { Property Accessors }
    function Get_Data: WideString;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_Dente: WideString;
    function Get_Face: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_Dente(Value: WideString);
    procedure Set_Face(Value: WideString);
    { Methods & Properties }
    property Data: WideString read Get_Data write Set_Data;
    property Procedimento: I213_Ct_tabela read Get_Procedimento;
    property Dente: WideString read Get_Dente write Set_Dente;
    property Face: WideString read Get_Face write Set_Face;
  end;

{ I213_Ct_tratamentoOdontoSolicitado }

  I213_Ct_tratamentoOdontoSolicitado = interface(IXMLNode)
    ['{31A3DD49-F0A0-4EAE-866B-3FA5C754608B}']
    { Property Accessors }
    function Get_Procedimento: I213_Ct_tabela;
    function Get_Dente: WideString;
    function Get_Face: WideString;
    procedure Set_Dente(Value: WideString);
    procedure Set_Face(Value: WideString);
    { Methods & Properties }
    property Procedimento: I213_Ct_tabela read Get_Procedimento;
    property Dente: WideString read Get_Dente write Set_Dente;
    property Face: WideString read Get_Face write Set_Face;
  end;

{ I213_Ct_valorTotalServicos }

  I213_Ct_valorTotalServicos = interface(IXMLNode)
    ['{91505D6A-4839-4978-AEBC-A946E3B9A62C}']
    { Property Accessors }
    function Get_ServicosExecutados: WideString;
    function Get_Diarias: WideString;
    function Get_Taxas: WideString;
    function Get_Materiais: WideString;
    function Get_Medicamentos: WideString;
    function Get_Gases: WideString;
    function Get_TotalGeral: WideString;
    procedure Set_ServicosExecutados(Value: WideString);
    procedure Set_Diarias(Value: WideString);
    procedure Set_Taxas(Value: WideString);
    procedure Set_Materiais(Value: WideString);
    procedure Set_Medicamentos(Value: WideString);
    procedure Set_Gases(Value: WideString);
    procedure Set_TotalGeral(Value: WideString);
    { Methods & Properties }
    property ServicosExecutados: WideString read Get_ServicosExecutados write Set_ServicosExecutados;
    property Diarias: WideString read Get_Diarias write Set_Diarias;
    property Taxas: WideString read Get_Taxas write Set_Taxas;
    property Materiais: WideString read Get_Materiais write Set_Materiais;
    property Medicamentos: WideString read Get_Medicamentos write Set_Medicamentos;
    property Gases: WideString read Get_Gases write Set_Gases;
    property TotalGeral: WideString read Get_TotalGeral write Set_TotalGeral;
  end;

{ I213_GuiaFaturamento }

  I213_GuiaFaturamento = interface(IXMLNode)
    ['{C088F300-F7E4-4FF1-8BD9-F15D0DD7AB39}']
    { Property Accessors }
    function Get_GuiaConsulta: I213_Ct_guiaConsultaList;
    function Get_GuiaSP_SADT: I213_Ct_guiaSP_SADTList;
    function Get_GuiaResumoInternacao: I213_Ct_guiaResumoInternacaoList;
    function Get_GuiaHonorarioIndividual: I213_Ct_guiaHonorarioIndividualList;
    function Get_GuiaOdontologia: I213_Ct_guiaOdontologiaList;
    { Methods & Properties }
    property GuiaConsulta: I213_Ct_guiaConsultaList read Get_GuiaConsulta;
    property GuiaSP_SADT: I213_Ct_guiaSP_SADTList read Get_GuiaSP_SADT;
    property GuiaResumoInternacao: I213_Ct_guiaResumoInternacaoList read Get_GuiaResumoInternacao;
    property GuiaHonorarioIndividual: I213_Ct_guiaHonorarioIndividualList read Get_GuiaHonorarioIndividual;
    property GuiaOdontologia: I213_Ct_guiaOdontologiaList read Get_GuiaOdontologia;
  end;

{ I213_Ct_guiaConsulta }

  I213_Ct_guiaConsulta = interface(IXMLNode)
    ['{62981A77-5DFB-4104-8198-717EDD9B5E69}']
    { Property Accessors }
    function Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_DadosContratado: I213_Ct_contratado;
    function Get_ProfissionalExecutante: I213_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I213_HipoteseDiagnostica;
    function Get_DadosAtendimento: I213_DadosAtendimento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuia: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuia;
    property Beneficiario: I213_Ct_beneficiario read Get_Beneficiario;
    property DadosContratado: I213_Ct_contratado read Get_DadosContratado;
    property ProfissionalExecutante: I213_Ct_identificacaoProfissional read Get_ProfissionalExecutante;
    property HipoteseDiagnostica: I213_HipoteseDiagnostica read Get_HipoteseDiagnostica;
    property DadosAtendimento: I213_DadosAtendimento read Get_DadosAtendimento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_HipoteseDiagnostica }

  I213_HipoteseDiagnostica = interface(I213_Ct_diagnosticoAtendimento)
    ['{77304A93-CE3F-4CE8-9825-DDF7C0F7A3E0}']
    { Property Accessors }
    function Get_DiagnosticoSecundario: I213_Ct_diagnosticosSecundarios;
    { Methods & Properties }
    property DiagnosticoSecundario: I213_Ct_diagnosticosSecundarios read Get_DiagnosticoSecundario;
  end;

{ I213_DadosAtendimento }

  I213_DadosAtendimento = interface(I213_Ct_atendimentoConsulta)
    ['{A37C0573-92E1-4FB0-A641-CA47CBA2563C}']
  end;

{ I213_Ct_guiaSP_SADT }

  I213_Ct_guiaSP_SADT = interface(IXMLNode)
    ['{A35E6A89-16BC-4C5B-97CD-266DCA0172CA}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_PrestadorExecutante: I213_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoAtendimento: I213_Ct_diagnosticoAtendimento;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: WideString;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_OPMUtilizada: I213_Ct_OPMUtilizada;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuiaSADTSP;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosAutorizacao: I213_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I213_Ct_solicitante read Get_DadosSolicitante;
    property PrestadorExecutante: I213_PrestadorExecutante read Get_PrestadorExecutante;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property CaraterAtendimento: WideString read Get_CaraterAtendimento write Set_CaraterAtendimento;
    property DataHoraAtendimento: WideString read Get_DataHoraAtendimento write Set_DataHoraAtendimento;
    property DiagnosticoAtendimento: I213_Ct_diagnosticoAtendimento read Get_DiagnosticoAtendimento;
    property TipoSaida: WideString read Get_TipoSaida write Set_TipoSaida;
    property TipoAtendimento: WideString read Get_TipoAtendimento write Set_TipoAtendimento;
    property ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe read Get_ProcedimentosRealizados;
    property OutrasDespesas: I213_Ct_outrasDespesas read Get_OutrasDespesas;
    property OPMUtilizada: I213_Ct_OPMUtilizada read Get_OPMUtilizada;
    property ValorTotal: I213_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_PrestadorExecutante }

  I213_PrestadorExecutante = interface(I213_Ct_contratado)
    ['{5C948EF0-DE12-495D-BA0E-C8555BAEAEB1}']
    { Property Accessors }
    function Get_ProfissionalExecutanteCompl: I213_ProfissionalExecutanteCompl;
    { Methods & Properties }
    property ProfissionalExecutanteCompl: I213_ProfissionalExecutanteCompl read Get_ProfissionalExecutanteCompl;
  end;

{ I213_ProfissionalExecutanteCompl }

  I213_ProfissionalExecutanteCompl = interface(I213_Ct_profissionalExecutante)
    ['{70105798-4790-4F3F-ACD6-F3CF933946CF}']
    { Property Accessors }
    function Get_CodigoProfissionalCompl: I213_Ct_identificacaoProfissionalCompl;
    { Methods & Properties }
    property CodigoProfissionalCompl: I213_Ct_identificacaoProfissionalCompl read Get_CodigoProfissionalCompl;
  end;

{ I213_Ct_guiaResumoInternacao }

  I213_Ct_guiaResumoInternacao = interface(IXMLNode)
    ['{B01CF40D-FEFC-4305-B3E3-CAFF2AC03370}']
    { Property Accessors }
    function Get_IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I213_Ct_contratado;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I213_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I213_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe;
    function Get_OPMUtilizadas: I213_Ct_OPMUtilizada;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuiaInternacao;
    property NumeroGuiaSolicitacao: WideString read Get_NumeroGuiaSolicitacao write Set_NumeroGuiaSolicitacao;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property IdentificacaoExecutante: I213_Ct_contratado read Get_IdentificacaoExecutante;
    property DadosAutorizacao: I213_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property CaraterInternacao: WideString read Get_CaraterInternacao write Set_CaraterInternacao;
    property Acomodacao: WideString read Get_Acomodacao write Set_Acomodacao;
    property DataHoraInternacao: WideString read Get_DataHoraInternacao write Set_DataHoraInternacao;
    property DataHoraSaidaInternacao: WideString read Get_DataHoraSaidaInternacao write Set_DataHoraSaidaInternacao;
    property TipoInternacao: WideString read Get_TipoInternacao write Set_TipoInternacao;
    property RegimeInternacao: WideString read Get_RegimeInternacao write Set_RegimeInternacao;
    property InternacaoObstetrica: I213_Ct_internacaoObstetrica read Get_InternacaoObstetrica;
    property ObitoNeonatal: I213_Ct_obitoNeonatal read Get_ObitoNeonatal;
    property DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao read Get_DiagnosticosSaidaInternacao;
    property ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe read Get_ProcedimentosRealizados;
    property OPMUtilizadas: I213_Ct_OPMUtilizada read Get_OPMUtilizadas;
    property OutrasDespesas: I213_Ct_outrasDespesas read Get_OutrasDespesas;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property ValorTotal: I213_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_guiaHonorarioIndividual }

  I213_Ct_guiaHonorarioIndividual = interface(IXMLNode)
    ['{B98119AF-DE1A-4AC0-B96C-B283C0C756E0}']
    { Property Accessors }
    function Get_IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_Contratado: I213_Ct_contratado;
    function Get_ContratadoExecutante: I213_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuiaHonorarioIndividual;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property Contratado: I213_Ct_contratado read Get_Contratado;
    property ContratadoExecutante: I213_ContratadoExecutante read Get_ContratadoExecutante;
    property ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados read Get_ProcedimentosExamesRealizados;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_ContratadoExecutante }

  I213_ContratadoExecutante = interface(I213_Ct_contratado)
    ['{A90ED2B9-E3E3-4B43-AA27-1DF68DC83B9E}']
    { Property Accessors }
    function Get_IdentificacaoProfissional: I213_Ct_profissionalExecutante;
    function Get_PosicaoProfissional: WideString;
    function Get_TipoAcomodacao: WideString;
    procedure Set_PosicaoProfissional(Value: WideString);
    procedure Set_TipoAcomodacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoProfissional: I213_Ct_profissionalExecutante read Get_IdentificacaoProfissional;
    property PosicaoProfissional: WideString read Get_PosicaoProfissional write Set_PosicaoProfissional;
    property TipoAcomodacao: WideString read Get_TipoAcomodacao write Set_TipoAcomodacao;
  end;

{ I213_ProcedimentosExamesRealizados }

  I213_ProcedimentosExamesRealizados = interface(I213_Ct_procedimentosRealizados)
    ['{F06292EE-F8A3-460D-A9C9-3BFE52349B7A}']
    { Property Accessors }
    function Get_TotalGeralHonorario: WideString;
    procedure Set_TotalGeralHonorario(Value: WideString);
    { Methods & Properties }
    property TotalGeralHonorario: WideString read Get_TotalGeralHonorario write Set_TotalGeralHonorario;
  end;

{ I213_Ct_guiaOdontologia }

  I213_Ct_guiaOdontologia = interface(IXMLNode)
    ['{74A4F6BE-9AD8-47D6-B071-6E76572CCA49}']
    { Property Accessors }
    function Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I213_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I213_DadosContratadoExecutante;
    function Get_ProcedimentosExecutados: I213_ProcedimentosExecutados;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_DadosAtendimento: I213_Ct_atendimentoOdontologia;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: I213_DadosBeneficiario read Get_DadosBeneficiario;
    property DadosContratadoExecutante: I213_DadosContratadoExecutante read Get_DadosContratadoExecutante;
    property ProcedimentosExecutados: I213_ProcedimentosExecutados read Get_ProcedimentosExecutados;
    property OutrasDespesas: I213_Ct_outrasDespesas read Get_OutrasDespesas;
    property DadosAtendimento: I213_Ct_atendimentoOdontologia read Get_DadosAtendimento;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_DadosContratadoExecutante }

  I213_DadosContratadoExecutante = interface(IXMLNode)
    ['{55F76FF7-4FDF-455D-AC4D-5BC1AAFED2C2}']
    { Property Accessors }
    function Get_DadosContratado: I213_DadosContratado;
    function Get_DadosExecutante: I213_Ct_profissionalExecutante;
    { Methods & Properties }
    property DadosContratado: I213_DadosContratado read Get_DadosContratado;
    property DadosExecutante: I213_Ct_profissionalExecutante read Get_DadosExecutante;
  end;

{ I213_ProcedimentosExecutados }

  I213_ProcedimentosExecutados = interface(IXMLNode)
    ['{5CE7D86F-94CF-4068-B542-C94C7ADA4E16}']
    { Property Accessors }
    function Get_ProcedimentoExecutado: I213_ProcedimentoExecutadoList;
    function Get_QuantidadeTotalUS: WideString;
    function Get_ValorTotal: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    procedure Set_QuantidadeTotalUS(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    { Methods & Properties }
    property ProcedimentoExecutado: I213_ProcedimentoExecutadoList read Get_ProcedimentoExecutado;
    property QuantidadeTotalUS: WideString read Get_QuantidadeTotalUS write Set_QuantidadeTotalUS;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property TotalFranquiaCoparticipacao: WideString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
  end;

{ I213_ProcedimentosExecutadosOdontoRevisao }

  I213_ProcedimentosExecutadosOdontoRevisao = interface(IXMLNodeCollection)
    ['{0447947E-610E-4920-8800-5A19CE7D15AB}']
    { Property Accessors }
    function Get_ProcedimentoExecutado(Index: Integer): I213_Ct_procedimentoOdontoRevisao;
    { Methods & Properties }
    function Add: I213_Ct_procedimentoOdontoRevisao;
    function Insert(const Index: Integer): I213_Ct_procedimentoOdontoRevisao;
    property ProcedimentoExecutado[Index: Integer]: I213_Ct_procedimentoOdontoRevisao read Get_ProcedimentoExecutado; default;
  end;

{ I213_ProcedimentoExecutado }

  I213_ProcedimentoExecutado = interface(I213_Ct_procedimentoOdontologia)
    ['{694497D6-D47A-44C3-8DF4-02F0344A937C}']
    { Property Accessors }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
    { Methods & Properties }
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
  end;

{ I213_ProcedimentoExecutadoList }

  I213_ProcedimentoExecutadoList = interface(IXMLNodeCollection)
    ['{E41DB810-1F41-4B1F-9B08-9DAD3256B076}']
    { Methods & Properties }
    function Add: I213_ProcedimentoExecutado;
    function Insert(const Index: Integer): I213_ProcedimentoExecutado;
    function Get_Item(Index: Integer): I213_ProcedimentoExecutado;
    property Items[Index: Integer]: I213_ProcedimentoExecutado read Get_Item; default;
  end;

{ I213_GuiaRevisaoGlosa }

  I213_GuiaRevisaoGlosa = interface(IXMLNode)
    ['{6B9074AF-A6FF-421B-A3A3-823310BD30BD}']
    { Property Accessors }
    function Get_GuiaConsultaReapresentacao: I213_Ct_guiaConsultaReapresentacaoList;
    function Get_GuiaSP_SADTReapresentacao: I213_Ct_guiaSP_SADTReapresentacaoList;
    function Get_GuiaResumoInternacaoReapresentacao: I213_Ct_guiaResumoInternacaoReapresentacaoList;
    function Get_GuiaHonorarioIndividualReapresentacao: I213_Ct_guiaHonorarioIndividualReapresentacaoList;
    function Get_GuiaOdontologiaReapresentacao: I213_Ct_guiaTratamentoOdontologicoReapresentacaoList;
    { Methods & Properties }
    property GuiaConsultaReapresentacao: I213_Ct_guiaConsultaReapresentacaoList read Get_GuiaConsultaReapresentacao;
    property GuiaSP_SADTReapresentacao: I213_Ct_guiaSP_SADTReapresentacaoList read Get_GuiaSP_SADTReapresentacao;
    property GuiaResumoInternacaoReapresentacao: I213_Ct_guiaResumoInternacaoReapresentacaoList read Get_GuiaResumoInternacaoReapresentacao;
    property GuiaHonorarioIndividualReapresentacao: I213_Ct_guiaHonorarioIndividualReapresentacaoList read Get_GuiaHonorarioIndividualReapresentacao;
    property GuiaOdontologiaReapresentacao: I213_Ct_guiaTratamentoOdontologicoReapresentacaoList read Get_GuiaOdontologiaReapresentacao;
  end;

{ I213_Ct_guiaConsultaReapresentacao }

  I213_Ct_guiaConsultaReapresentacao = interface(IXMLNode)
    ['{11F8288D-40E4-4ED4-9AB3-79661A7B5DC3}']
    { Property Accessors }
    function Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_DadosContratado: I213_Ct_contratado;
    function Get_ProfissionalExecutante: I213_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I213_Ct_diagnosticoAtendimento;
    function Get_DadosAtendimento: I213_Ct_atendimentoConsultaReapr;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuia: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuia;
    property Beneficiario: I213_Ct_beneficiario read Get_Beneficiario;
    property DadosContratado: I213_Ct_contratado read Get_DadosContratado;
    property ProfissionalExecutante: I213_Ct_identificacaoProfissional read Get_ProfissionalExecutante;
    property HipoteseDiagnostica: I213_Ct_diagnosticoAtendimento read Get_HipoteseDiagnostica;
    property DadosAtendimento: I213_Ct_atendimentoConsultaReapr read Get_DadosAtendimento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_guiaSP_SADTReapresentacao }

  I213_Ct_guiaSP_SADTReapresentacao = interface(IXMLNode)
    ['{8E487495-560A-4894-B89B-BDAB9F1A4F4E}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_PrestadorExecutante: I213_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoGuia: I213_Ct_diagnosticoAtendimento;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: WideString;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRevisaoList;
    function Get_OutrasDespesas: I213_Ct_outrasDespesasRevisao;
    function Get_OPMUtilizada: I213_Ct_OPMUtilizadasRevisao;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuiaSADTSP;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosAutorizacao: I213_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I213_Ct_solicitante read Get_DadosSolicitante;
    property PrestadorExecutante: I213_PrestadorExecutante read Get_PrestadorExecutante;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property CaraterAtendimento: WideString read Get_CaraterAtendimento write Set_CaraterAtendimento;
    property DataHoraAtendimento: WideString read Get_DataHoraAtendimento write Set_DataHoraAtendimento;
    property DiagnosticoGuia: I213_Ct_diagnosticoAtendimento read Get_DiagnosticoGuia;
    property TipoSaida: WideString read Get_TipoSaida write Set_TipoSaida;
    property TipoAtendimento: WideString read Get_TipoAtendimento write Set_TipoAtendimento;
    property ProcedimentosRealizados: I213_Ct_procedimentoRevisaoList read Get_ProcedimentosRealizados;
    property OutrasDespesas: I213_Ct_outrasDespesasRevisao read Get_OutrasDespesas;
    property OPMUtilizada: I213_Ct_OPMUtilizadasRevisao read Get_OPMUtilizada;
    property ValorTotal: I213_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_guiaResumoInternacaoReapresentacao }

  I213_Ct_guiaResumoInternacaoReapresentacao = interface(IXMLNode)
    ['{029B2F3D-290D-45FA-80AA-60F63742D37B}']
    { Property Accessors }
    function Get_IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I213_Ct_contratado;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I213_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I213_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRevisao;
    function Get_OPMUtilizadas: I213_Ct_OPMUtilizadasRevisao;
    function Get_OutrasDespesas: I213_Ct_outrasDespesasRevisao;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuiaInternacao;
    property NumeroGuiaSolicitacao: WideString read Get_NumeroGuiaSolicitacao write Set_NumeroGuiaSolicitacao;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property IdentificacaoExecutante: I213_Ct_contratado read Get_IdentificacaoExecutante;
    property DadosAutorizacao: I213_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property CaraterInternacao: WideString read Get_CaraterInternacao write Set_CaraterInternacao;
    property Acomodacao: WideString read Get_Acomodacao write Set_Acomodacao;
    property DataHoraInternacao: WideString read Get_DataHoraInternacao write Set_DataHoraInternacao;
    property DataHoraSaidaInternacao: WideString read Get_DataHoraSaidaInternacao write Set_DataHoraSaidaInternacao;
    property TipoInternacao: WideString read Get_TipoInternacao write Set_TipoInternacao;
    property RegimeInternacao: WideString read Get_RegimeInternacao write Set_RegimeInternacao;
    property InternacaoObstetrica: I213_Ct_internacaoObstetrica read Get_InternacaoObstetrica;
    property ObitoNeonatal: I213_Ct_obitoNeonatal read Get_ObitoNeonatal;
    property DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao read Get_DiagnosticosSaidaInternacao;
    property ProcedimentosRealizados: I213_Ct_procedimentoRevisao read Get_ProcedimentosRealizados;
    property OPMUtilizadas: I213_Ct_OPMUtilizadasRevisao read Get_OPMUtilizadas;
    property OutrasDespesas: I213_Ct_outrasDespesasRevisao read Get_OutrasDespesas;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property ValorTotal: I213_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_guiaHonorarioIndividualReapresentacao }

  I213_Ct_guiaHonorarioIndividualReapresentacao = interface(IXMLNode)
    ['{58F9A694-D5E4-48A5-9E34-072A7D873A0D}']
    { Property Accessors }
    function Get_IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_Contratado: I213_Ct_contratado;
    function Get_ContratadoExecutante: I213_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia read Get_IdentificacaoGuiaHonorarioIndividual;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: I213_Ct_beneficiario read Get_DadosBeneficiario;
    property Contratado: I213_Ct_contratado read Get_Contratado;
    property ContratadoExecutante: I213_ContratadoExecutante read Get_ContratadoExecutante;
    property ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados read Get_ProcedimentosExamesRealizados;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_Ct_guiaTratamentoOdontologicoReapresentacao }

  I213_Ct_guiaTratamentoOdontologicoReapresentacao = interface(IXMLNode)
    ['{2980C004-BDD0-48CF-8AC9-2C874FC8B857}']
    { Property Accessors }
    function Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I213_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I213_DadosContratadoExecutante;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_DadosAtendimento: I213_Ct_atendimentoOdontologia;
    function Get_ProcedimentosExecutados: I213_ProcedimentosExecutadosOdontoRevisao;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: I213_DadosBeneficiario read Get_DadosBeneficiario;
    property DadosContratadoExecutante: I213_DadosContratadoExecutante read Get_DadosContratadoExecutante;
    property OutrasDespesas: I213_Ct_outrasDespesas read Get_OutrasDespesas;
    property DadosAtendimento: I213_Ct_atendimentoOdontologia read Get_DadosAtendimento;
    property ProcedimentosExecutados: I213_ProcedimentosExecutadosOdontoRevisao read Get_ProcedimentosExecutados;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I213_St_tipoGlosaList }

  I213_St_tipoGlosaList = interface(IXMLNodeCollection)
    ['{0D9AD81B-5DBE-4AB7-BCA3-7D2835E624D9}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  T213_MensagemTISS = class;
  T213_CabecalhoTransacao = class;
  T213_IdentificacaoTransacao = class;
  T213_Ct_motivoGlosa = class;
  T213_Ct_motivoGlosaList = class;
  T213_Origem = class;
  T213_Ct_identificacaoPrestadorExecutante = class;
  T213_Destino = class;
  T213_OperadoraParaPrestador = class;
  T213_Ct_protocoloRecebimento = class;
  T213_Ct_identificacaoOperadora = class;
  T213_Ct_contratado = class;
  T213_Ct_endereco = class;
  T213_Ct_detalheProtocolo = class;
  T213_CodigoGlosaProtocolo = class;
  T213_FalhaNegocio = class;
  T213_Guias = class;
  T213_GuiasStatusLote = class;
//  T213_Guias = class;
  T213_Ct_dadosGuia = class;
  T213_Ct_beneficiario = class;
  T213_Procedimentos = class;
  T213_Ct_dadosProcedimento = class;
  T213_Ct_tabela = class;
  T213_RelacaoGlosa = class;
  T213_DemonstrativosRetorno = class;
  T213_Ct_demonstrativoAnaliseConta = class;
  T213_Ct_demonstrativoAnaliseContaList = class;
  T213_Ct_cabecalhoDemonstrativo = class;
  T213_Fatura = class;
  T213_Ct_dadosConta = class;
  T213_Lote = class;
  T213_LoteStatusProtocolo = class;
  T213_Ct_dadosLote = class;
//  T213_Guia = class;
//  T213_Guia = class;
  T213_Ct_demonstrativoOdontologia = class;
  T213_Ct_demonstrativoOdontologiaList = class;
  T213_IdentificacaoOperadora = class;
  T213_Ct_periodoProcessamento = class;
  T213_DadosPrestador = class;
  T213_Ct_identificadorPrestOdontoDemo = class;
  T213_Ct_dadosPagamento = class;
  T213_Ct_totalDemoOdonto = class;
  T213_DebitosCreditosTributaveis = class;
  T213_Ct_descontoOdonto = class;
  T213_Ct_descontoOdontoList = class;
  T213_Ct_creditoOdonto = class;
  T213_Ct_creditoOdontoList = class;
  T213_DemaisImpostos = class;
  T213_DebitosCreditosNaoTributaveis = class;
  T213_Ct_demonstrativoPagamento = class;
  T213_Ct_demonstrativoPagamentoList = class;
  T213_Ct_dadoBancario = class;
  T213_DadosResumo = class;
  T213_Ct_dadosResumo = class;
  T213_Ct_dadosResumoList = class;
  T213_Ct_descontos = class;
  T213_ItemDesconto = class;
  T213_Ct_StatusProtocolo = class;
  T213_Ct_statusLote = class;
  T213_Detalheguia = class;
  T213_Ct_cabecalhoGuia = class;
  T213_ProcedimentosAnalisados = class;
  T213_Ct_itemSolicitacao = class;
  T213_Glosas = class;
  T213_Ct_autorizacaoProcedimento = class;
  T213_TotalOdonto = class;
  T213_Ct_diariaProrrogacao = class;
  T213_Ct_situacaoAutorizacao = class;
  T213_DadosAutorizacao = class;
  T213_Ct_diariaProrrogacaoAutorizada = class;
  T213_Ct_retornoElegibilidade = class;
  T213_Ct_reciboCancelaGuia = class;
  T213_GuiasCanceladas = class;
  T213_DadosGuia = class;
  T213_PrestadorParaOperadora = class;
  T213_Ct_loteGuias = class;
  T213_Ct_guias = class;
  T213_Ct_solicitacaoDemonstrativoPagamento = class;
  T213_Ct_solicitacaoStatusProtocolo = class;
  T213_DetalheProtocolo = class;
  T213_SolicitacaoProcedimento = class;
  T213_Ct_guiaSolicInternacao = class;
  T213_Ct_cabecalhoSolicitacao = class;
  T213_Ct_solicitante = class;
  T213_Ct_contratadoSolicitante = class;
  T213_Ct_identificacaoPrestador = class;
  T213_Ct_conselhoProfissional = class;
  T213_Ct_identificacaoProfissional = class;
  T213_PrestadorSolicitado = class;
  T213_Ct_hipoteseDiagnostica = class;
  T213_Ct_diagnosticoGuia = class;
  T213_Ct_diagnostico = class;
  T213_Ct_tempoEvolucaoDoenca = class;
  T213_Ct_diagnosticosSecundarios = class;
  T213_Ct_procedimentosSolicitados = class;
  T213_ProcedimentoSolicitado = class;
  T213_Ct_OPMSolicitadas = class;
  T213_OPMSolicitada = class;
  T213_Ct_guiaSolicitacaoSP_SADT = class;
  T213_Ct_guiaSolicitacaoOdonto = class;
  T213_Ct_cabecalhoGuiaOdonto = class;
  T213_DadosBeneficiario = class;
  T213_DadosSolicitante = class;
  T213_DadosContratado = class;
  T213_Ct_profissionalExecutante = class;
  T213_Ct_situacaoInicial = class;
  T213_Ct_situacaoClinica = class;
  T213_Dentes = class;
  T213_PlanoTratamento = class;
  T213_Ct_procedimentoOdontologia = class;
  T213_Ct_denteRegiao = class;
  T213_Ct_guiaSolicitacaoProrrogacao = class;
  T213_DiariaProrrogacaoAutorizada = class;
  T213_Ct_solicitaStatusAutorizacao = class;
  T213_IdentificacaoAutorizacao = class;
  T213_IdentificacaoSolicitacao = class;
  T213_Ct_solicitaElegibilidade = class;
  T213_Ct_cancelaGuia = class;
  T213_Epilogo = class;
  T213_DefinicaoTissNet = class;
  T213_Nodo_tissnet = class;
  T213_PontoAPonto = class;
  T213_Ct_hostporta = class;
  T213_WebServices = class;
  T213_Ct_atendimentoConsulta = class;
  T213_Procedimento = class;
  T213_ProcedimentoReapr = class;
  T213_Ct_atendimentoConsultaReapr = class;
  T213_Ct_atendimentoOdontologia = class;
  T213_Ct_autorizacaoGuia = class;
  T213_Ct_autorizacaoGuiaInternacao = class;
  T213_AutorizacaoServico = class;
  T213_AutorizacaoServicoList = class;
  T213_MotivoNegativa = class;
  T213_ProcedimentosAutorizacaoProc = class;
  T213_DadosPagamento = class;
  T213_Ct_loteOdonto = class;
  T213_Ct_detalheGuiaOdonto = class;
  T213_ProcedimentoRealizadoOdonto = class;
  T213_ProcedimentoRealizado = class;
  T213_Ct_procedimentoOdontoRealizado = class;
  T213_Ct_diagnosticoAtendimento = class;
  T213_Ct_diagnosticoSaidaInternacao = class;
  T213_Ct_obitoInternacao = class;
  T213_Ct_obitoInternacaoList = class;
  T213_Ct_executanteComplementar = class;
  T213_Ct_identificacaoEquipe = class;
  T213_MembroEquipe = class;
  T213_Ct_identificacaoPrestadorEquipe = class;
  T213_DadosExecutante = class;
  T213_Ct_identificacaoProfissionalCompl = class;
  T213_Ct_internacaoObstetrica = class;
  T213_Ct_numeroDN = class;
  T213_LoteOdonto = class;
  T213_Ct_obitoNeonatal = class;
  T213_Ct_OPMUtilizada = class;
  T213_OPM = class;
  T213_IdentificacaoOPMUtilizada = class;
  T213_IdentificacaoOPM = class;
  T213_Ct_OPMUtilizadasRevisao = class;
  T213_OPMUtilizada = class;
  T213_Ct_outrasDespesas = class;
  T213_Despesa = class;
  T213_DespesaList = class;
  T213_Ct_outrasDespesasRevisao = class;
  T213_ItensDespesas = class;
  T213_ItensDespesasList = class;
  T213_Ct_procedimentosRealizados = class;
  T213_Ct_procedimentoOdontoRevisao = class;
  T213_ProcedimentoOdontologia = class;
  T213_Ct_procedimentoRealizadoEquipe = class;
  T213_ProcedimentosEquipe = class;
  T213_Ct_procedimentoRevisao = class;
  T213_ProcedimentosRevisao = class;
  T213_Ct_situacaoDentes = class;
  T213_Ct_totaisOdonto = class;
  T213_Ct_tratamenteOdontoRealizado = class;
  T213_Ct_tratamentoOdontoSolicitado = class;
  T213_Ct_valorTotalServicos = class;
  T213_GuiaFaturamento = class;
  T213_Ct_guiaConsulta = class;
  T213_HipoteseDiagnostica = class;
  T213_DadosAtendimento = class;
  T213_Ct_guiaSP_SADT = class;
  T213_PrestadorExecutante = class;
  T213_ProfissionalExecutanteCompl = class;
  T213_Ct_guiaResumoInternacao = class;
  T213_Ct_guiaHonorarioIndividual = class;
  T213_ContratadoExecutante = class;
  T213_ProcedimentosExamesRealizados = class;
  T213_Ct_guiaOdontologia = class;
  T213_DadosContratadoExecutante = class;
  T213_ProcedimentosExecutados = class;
  T213_ProcedimentosExecutadosOdontoRevisao = class;
  T213_ProcedimentoExecutado = class;
  T213_ProcedimentoExecutadoList = class;
  T213_GuiaRevisaoGlosa = class;
  T213_Ct_guiaConsultaReapresentacao = class;
  T213_Ct_guiaSP_SADTReapresentacao = class;
  T213_Ct_guiaResumoInternacaoReapresentacao = class;
  T213_Ct_guiaHonorarioIndividualReapresentacao = class;
  T213_Ct_guiaTratamentoOdontologicoReapresentacao = class;
  T213_St_tipoGlosaList = class;
  T213_Ct_guiaSolicInternacaoList = class;
  T213_Ct_diagnosticosSecundariosList = class;
  T213_Ct_guiaSolicitacaoSP_SADTList = class;
  T213_Ct_guiaSolicitacaoOdontoList = class;
  T213_Ct_guiaSolicitacaoProrrogacaoList = class;
  T213_Ct_guiaConsultaReapresentacaoList = class;
  T213_Ct_guiaConsultaList = class;
  T213_Ct_guiaSP_SADTList = class;
  T213_Ct_guiaResumoInternacaoList = class;
  T213_Ct_guiaHonorarioIndividualList = class;
  T213_Ct_guiaOdontologiaList = class;
  T213_Ct_guiaResumoInternacaoReapresentacaoList = class;
  T213_Ct_guiaHonorarioIndividualReapresentacaoList = class;
  T213_Ct_guiaTratamentoOdontologicoReapresentacaoList = class;
  T213_OPMIdentificacao = class;

{ T213_MensagemTISS }

  T213_MensagemTISS = class(TXMLNode, I213_MensagemTISS)
  protected
    { I213_MensagemTISS }
    function Get_Cabecalho: I213_CabecalhoTransacao;
    function Get_OperadoraParaPrestador: I213_OperadoraParaPrestador;
    function Get_PrestadorParaOperadora: I213_PrestadorParaOperadora;
    function Get_Epilogo: I213_Epilogo;
  public
    procedure AfterConstruction; override;
  end;

{ T213_CabecalhoTransacao }

  T213_CabecalhoTransacao = class(TXMLNode, I213_CabecalhoTransacao)
  protected
    { I213_CabecalhoTransacao }
    function Get_IdentificacaoTransacao: I213_IdentificacaoTransacao;
    function Get_FalhaNegocio: I213_FalhaNegocio;
    function Get_Origem: I213_Origem;
    function Get_Destino: I213_Destino;
    function Get_VersaoPadrao: WideString;
    procedure Set_VersaoPadrao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_IdentificacaoTransacao }

  T213_IdentificacaoTransacao = class(TXMLNode, I213_IdentificacaoTransacao)
  protected
    { I213_IdentificacaoTransacao }
    function Get_TipoTransacao: WideString;
    function Get_SequencialTransacao: Integer;
    function Get_DataRegistroTransacao: WideString;
    function Get_HoraRegistroTransacao: WideString;
    procedure Set_TipoTransacao(Value: WideString);
    procedure Set_SequencialTransacao(Value: Integer);
    procedure Set_DataRegistroTransacao(Value: WideString);
    procedure Set_HoraRegistroTransacao(Value: WideString);
  end;

{ T213_Ct_motivoGlosa }

  T213_Ct_motivoGlosa = class(TXMLNode, I213_Ct_motivoGlosa)
  protected
    { I213_Ct_motivoGlosa }
    function Get_CodigoGlosa: WideString;
    function Get_DescricaoGlosa: WideString;
    procedure Set_CodigoGlosa(Value: WideString);
    procedure Set_DescricaoGlosa(Value: WideString);
  end;

{ T213_Ct_motivoGlosaList }

  T213_Ct_motivoGlosaList = class(TXMLNodeCollection, I213_Ct_motivoGlosaList)
  protected
    { I213_Ct_motivoGlosaList }
    function Add: I213_Ct_motivoGlosa;
    function Insert(const Index: Integer): I213_Ct_motivoGlosa;
    function Get_Item(Index: Integer): I213_Ct_motivoGlosa;
  end;

{ T213_Origem }

  T213_Origem = class(TXMLNode, I213_Origem)
  protected
    { I213_Origem }
    function Get_CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_identificacaoPrestadorExecutante }

  T213_Ct_identificacaoPrestadorExecutante = class(TXMLNode, I213_Ct_identificacaoPrestadorExecutante)
  protected
    { I213_Ct_identificacaoPrestadorExecutante }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
  end;

{ T213_Destino }

  T213_Destino = class(TXMLNode, I213_Destino)
  protected
    { I213_Destino }
    function Get_CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_OperadoraParaPrestador }

  T213_OperadoraParaPrestador = class(TXMLNode, I213_OperadoraParaPrestador)
  private
    FAutorizacaoServico: I213_AutorizacaoServicoList;
  protected
    { I213_OperadoraParaPrestador }
    function Get_ProtocoloRecebimento: I213_Ct_protocoloRecebimento;
    function Get_DemonstrativosRetorno: I213_DemonstrativosRetorno;
    function Get_SituacaoProtocolo: I213_Ct_StatusProtocolo;
    function Get_AutorizacaoServico: I213_AutorizacaoServicoList;
    function Get_SituacaoAutorizacao: I213_Ct_situacaoAutorizacao;
    function Get_RespostaElegibilidade: I213_Ct_retornoElegibilidade;
    function Get_ReciboCancelaGuia: I213_Ct_reciboCancelaGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_protocoloRecebimento }

  T213_Ct_protocoloRecebimento = class(TXMLNode, I213_Ct_protocoloRecebimento)
  protected
    { I213_Ct_protocoloRecebimento }
    function Get_DadosOperadora: I213_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroLote: WideString;
    function Get_MensagemDetalheProtocolo: I213_Ct_detalheProtocolo;
    function Get_NumeroProtocoloRecebimento: WideString;
    function Get_MensagemErro: WideString;
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_NumeroProtocoloRecebimento(Value: WideString);
    procedure Set_MensagemErro(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_identificacaoOperadora }

  T213_Ct_identificacaoOperadora = class(TXMLNode, I213_Ct_identificacaoOperadora)
  protected
    { I213_Ct_identificacaoOperadora }
    function Get_RegistroANS: WideString;
    function Get_NomeOperadora: WideString;
    function Get_CNPJ: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NomeOperadora(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
  end;

{ T213_Ct_contratado }

  T213_Ct_contratado = class(TXMLNode, I213_Ct_contratado)
  protected
    { I213_Ct_contratado }
    function Get_Identificacao: I213_Ct_identificacaoPrestadorExecutante;
    function Get_NomeContratado: WideString;
    function Get_EnderecoContratado: I213_Ct_endereco;
    function Get_NumeroCNES: WideString;
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_endereco }

  T213_Ct_endereco = class(TXMLNode, I213_Ct_endereco)
  protected
    { I213_Ct_endereco }
    function Get_TipoLogradouro: WideString;
    function Get_Logradouro: WideString;
    function Get_Numero: WideString;
    function Get_Complemento: WideString;
    function Get_CodigoIBGEMunicipio: WideString;
    function Get_Municipio: WideString;
    function Get_CodigoUF: WideString;
    function Get_Cep: WideString;
    procedure Set_TipoLogradouro(Value: WideString);
    procedure Set_Logradouro(Value: WideString);
    procedure Set_Numero(Value: WideString);
    procedure Set_Complemento(Value: WideString);
    procedure Set_CodigoIBGEMunicipio(Value: WideString);
    procedure Set_Municipio(Value: WideString);
    procedure Set_CodigoUF(Value: WideString);
    procedure Set_Cep(Value: WideString);
  end;

{ T213_Ct_detalheProtocolo }

  T213_Ct_detalheProtocolo = class(TXMLNode, I213_Ct_detalheProtocolo)
  protected
    { I213_Ct_detalheProtocolo }
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: WideString;
    function Get_CodigoGlosaProtocolo: I213_CodigoGlosaProtocolo;
    function Get_Guias: I213_Guias;
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_CodigoGlosaProtocolo }

  T213_CodigoGlosaProtocolo = class(TXMLNode, I213_CodigoGlosaProtocolo)
  private
    FMotivoGlosa: I213_Ct_motivoGlosaList;
  protected
    { I213_CodigoGlosaProtocolo }
    function Get_MotivoGlosa: I213_Ct_motivoGlosaList;
    function Get_ValorGlosaProtocolo: WideString;
    procedure Set_ValorGlosaProtocolo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_FalhaNegocio }

  T213_FalhaNegocio = class(T213_Ct_motivoGlosa, I213_FalhaNegocio)
  protected
    { I213_FalhaNegocio }
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  end;

{ T213_Guias }

  T213_Guias = class(TXMLNodeCollection, I213_Guias)
  protected
    { I213_Guias }
    function Get_DadosGuia(Index: Integer): I213_Ct_dadosGuia;
    function Add: I213_Ct_dadosGuia;
    function Insert(const Index: Integer): I213_Ct_dadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T213_GuiasStatusLote }

  T213_GuiasStatusLote = class(TXMLNodeCollection, I213_GuiasStatusLote)
  protected
    { I213_GuiasStatusLote }
    function Get_Detalheguia(Index: Integer): I213_Detalheguia;
    function Add: I213_Detalheguia;
    function Insert(const Index: Integer): I213_Detalheguia;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_dadosGuia }

  T213_Ct_dadosGuia = class(TXMLNode, I213_Ct_dadosGuia)
  private
    FCodigoGlosaGuia: I213_Ct_motivoGlosaList;
  protected
    { I213_Ct_dadosGuia }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_DataRealizacao: WideString;
    function Get_ValorProcessadoGuia: WideString;
    function Get_ValorLiberadoGuia: WideString;
    function Get_ValorGlosaGuia: WideString;
    function Get_Procedimentos: I213_Procedimentos;
    function Get_CodigoGlosaGuia: I213_Ct_motivoGlosaList;
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ValorProcessadoGuia(Value: WideString);
    procedure Set_ValorLiberadoGuia(Value: WideString);
    procedure Set_ValorGlosaGuia(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_beneficiario }

  T213_Ct_beneficiario = class(TXMLNode, I213_Ct_beneficiario)
  protected
    { I213_Ct_beneficiario }
    function Get_NumeroCarteira: WideString;
    function Get_NomeBeneficiario: WideString;
    function Get_NomePlano: WideString;
    function Get_ValidadeCarteira: WideString;
    function Get_NumeroCNS: WideString;
    function Get_IdentificadorBeneficiario: WideString;
    procedure Set_NumeroCarteira(Value: WideString);
    procedure Set_NomeBeneficiario(Value: WideString);
    procedure Set_NomePlano(Value: WideString);
    procedure Set_ValidadeCarteira(Value: WideString);
    procedure Set_NumeroCNS(Value: WideString);
    procedure Set_IdentificadorBeneficiario(Value: WideString);
  end;

{ T213_Procedimentos }

  T213_Procedimentos = class(TXMLNodeCollection, I213_Procedimentos)
  protected
    { I213_Procedimentos }
    function Get_DadosProcedimento(Index: Integer): I213_Ct_dadosProcedimento;
    function Add: I213_Ct_dadosProcedimento;
    function Insert(const Index: Integer): I213_Ct_dadosProcedimento;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_dadosProcedimento }

  T213_Ct_dadosProcedimento = class(TXMLNode, I213_Ct_dadosProcedimento)
  protected
    { I213_Ct_dadosProcedimento }
    function Get_Procedimento: I213_Ct_tabela;
    function Get_QuantidadeExecutada: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_GrauParticipacao: WideString;
    function Get_RelacaoGlosa: I213_RelacaoGlosa;
    procedure Set_QuantidadeExecutada(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_GrauParticipacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_tabela }

  T213_Ct_tabela = class(TXMLNode, I213_Ct_tabela)
  protected
    { I213_Ct_tabela }
    function Get_Codigo: WideString;
    function Get_TipoTabela: WideString;
    function Get_Descricao: WideString;
    procedure Set_Codigo(Value: WideString);
    procedure Set_TipoTabela(Value: WideString);
    procedure Set_Descricao(Value: WideString);
  end;

{ T213_RelacaoGlosa }

  T213_RelacaoGlosa = class(TXMLNode, I213_RelacaoGlosa)
  private
    FTipoGlosa: I213_Ct_motivoGlosaList;
  protected
    { I213_RelacaoGlosa }
    function Get_TipoGlosa: I213_Ct_motivoGlosaList;
    function Get_ValorGlosa: WideString;
    procedure Set_ValorGlosa(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_DemonstrativosRetorno }

  T213_DemonstrativosRetorno = class(TXMLNode, I213_DemonstrativosRetorno)
  private
    FDemonstrativoAnaliseConta: I213_Ct_demonstrativoAnaliseContaList;
    FDemonstrativoOdontologia: I213_Ct_demonstrativoOdontologiaList;
    FDemonstrativoPagamento: I213_Ct_demonstrativoPagamentoList;
  protected
    { I213_DemonstrativosRetorno }
    function Get_DemonstrativoAnaliseConta: I213_Ct_demonstrativoAnaliseContaList;
    function Get_DemonstrativoOdontologia: I213_Ct_demonstrativoOdontologiaList;
    function Get_DemonstrativoPagamento: I213_Ct_demonstrativoPagamentoList;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_demonstrativoAnaliseConta }

  T213_Ct_demonstrativoAnaliseConta = class(TXMLNode, I213_Ct_demonstrativoAnaliseConta)
  protected
    { I213_Ct_demonstrativoAnaliseConta }
    function Get_IdentificacaoOperadora: I213_Ct_identificacaoOperadora;
    function Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_Fatura: I213_Fatura;
    function Get_ValorProcessadoGeral: WideString;
    function Get_ValorLiberadoGeral: WideString;
    function Get_ValorGlosaGeral: WideString;
    procedure Set_ValorProcessadoGeral(Value: WideString);
    procedure Set_ValorLiberadoGeral(Value: WideString);
    procedure Set_ValorGlosaGeral(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_demonstrativoAnaliseContaList }

  T213_Ct_demonstrativoAnaliseContaList = class(TXMLNodeCollection, I213_Ct_demonstrativoAnaliseContaList)
  protected
    { I213_Ct_demonstrativoAnaliseContaList }
    function Add: I213_Ct_demonstrativoAnaliseConta;
    function Insert(const Index: Integer): I213_Ct_demonstrativoAnaliseConta;
    function Get_Item(Index: Integer): I213_Ct_demonstrativoAnaliseConta;
  end;

{ T213_Ct_cabecalhoDemonstrativo }

  T213_Ct_cabecalhoDemonstrativo = class(TXMLNode, I213_Ct_cabecalhoDemonstrativo)
  protected
    { I213_Ct_cabecalhoDemonstrativo }
    function Get_NumeroDemonstrativo: WideString;
    function Get_DataEmissao: WideString;
    procedure Set_NumeroDemonstrativo(Value: WideString);
    procedure Set_DataEmissao(Value: WideString);
  end;

{ T213_Fatura }

  T213_Fatura = class(TXMLNode, I213_Fatura)
  protected
    { I213_Fatura }
    function Get_DadosFatura: I213_Ct_dadosConta;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_dadosConta }

  T213_Ct_dadosConta = class(TXMLNode, I213_Ct_dadosConta)
  protected
    { I213_Ct_dadosConta }
    function Get_NumeroFatura: WideString;
    function Get_Lote: I213_Ct_dadosLote;
    function Get_ValorProcessadoFatura: WideString;
    function Get_ValorLiberadoFatura: WideString;
    function Get_ValorGlosaFatura: WideString;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_ValorProcessadoFatura(Value: WideString);
    procedure Set_ValorLiberadoFatura(Value: WideString);
    procedure Set_ValorGlosaFatura(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Lote }

  T213_Lote = class(TXMLNodeCollection, I213_Lote)
  protected
    { I213_Lote }
    function Get_DadosLote(Index: Integer): I213_Ct_dadosLote;
    function Add: I213_Ct_dadosLote;
    function Insert(const Index: Integer): I213_Ct_dadosLote;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Lote }

  T213_LoteStatusProtocolo = class(TXMLNodeCollection, I213_LoteStatusProtocolo)
  protected
    { I213_LoteStatusProtocolo }
    function Get_DetalheLote(Index: Integer): I213_Ct_statusLote;
    function Add: I213_Ct_statusLote;
    function Insert(const Index: Integer): I213_Ct_statusLote;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_dadosLote }

  T213_Ct_dadosLote = class(TXMLNode, I213_Ct_dadosLote)
  private
    FCodigoGlosaProtocolo: I213_St_tipoGlosaList;
  protected
    { I213_Ct_dadosLote }
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: WideString;
    function Get_ValorGlosaProtocolo: WideString;
    function Get_CodigoGlosaProtocolo: I213_St_tipoGlosaList;
    function Get_Guia: I213_Ct_dadosGuia;
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: WideString);
    procedure Set_ValorGlosaProtocolo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

(*  
{ T213_Guia }

  T213_Guia = class(TXMLNodeCollection, I213_Guia)
  protected
    { I213_Guia }
    function Get_DadosGuia(Index: Integer): I213_Ct_dadosGuia;
    function Add: I213_Ct_dadosGuia;
    function Insert(const Index: Integer): I213_Ct_dadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Guia }

  T213_Guia = class(TXMLNodeCollection, I213_Guia)
  protected
    { I213_Guia }
    function Get_DadosGuia(Index: Integer): I213_Ct_cabecalhoGuia;
    function Add: I213_Ct_cabecalhoGuia;
    function Insert(const Index: Integer): I213_Ct_cabecalhoGuia;
  public
    procedure AfterConstruction; override;
  end;
*)

{ T213_Ct_demonstrativoOdontologia }

  T213_Ct_demonstrativoOdontologia = class(TXMLNode, I213_Ct_demonstrativoOdontologia)
  protected
    { I213_Ct_demonstrativoOdontologia }
    function Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I213_IdentificacaoOperadora;
    function Get_DadosPrestador: I213_DadosPrestador;
    function Get_DadosPagamento: I213_DadosPagamento;
    function Get_DebitosCreditosTributaveis: I213_DebitosCreditosTributaveis;
    function Get_DemaisImpostos: I213_DemaisImpostos;
    function Get_DebitosCreditosNaoTributaveis: I213_DebitosCreditosNaoTributaveis;
    function Get_ValorFinalReceber: WideString;
    function Get_Observacao: WideString;
    procedure Set_ValorFinalReceber(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_demonstrativoOdontologiaList }

  T213_Ct_demonstrativoOdontologiaList = class(TXMLNodeCollection, I213_Ct_demonstrativoOdontologiaList)
  protected
    { I213_Ct_demonstrativoOdontologiaList }
    function Add: I213_Ct_demonstrativoOdontologia;
    function Insert(const Index: Integer): I213_Ct_demonstrativoOdontologia;
    function Get_Item(Index: Integer): I213_Ct_demonstrativoOdontologia;
  end;

{ T213_IdentificacaoOperadora }

  T213_IdentificacaoOperadora = class(T213_Ct_identificacaoOperadora, I213_IdentificacaoOperadora)
  protected
    { I213_IdentificacaoOperadora }
    function Get_PeriodoProcessamento: I213_Ct_periodoProcessamento;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_periodoProcessamento }

  T213_Ct_periodoProcessamento = class(TXMLNode, I213_Ct_periodoProcessamento)
  protected
    { I213_Ct_periodoProcessamento }
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
  end;

{ T213_DadosPrestador }

  T213_DadosPrestador = class(TXMLNode, I213_DadosPrestador)
  protected
    { I213_DadosPrestador }
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_IdentificadorPrestador: I213_Ct_identificadorPrestOdontoDemo;
    function Get_NomeContratado: WideString;
    function Get_NumeroCNES: WideString;
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_identificadorPrestOdontoDemo }

  T213_Ct_identificadorPrestOdontoDemo = class(TXMLNode, I213_Ct_identificadorPrestOdontoDemo)
  protected
    { I213_Ct_identificadorPrestOdontoDemo }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
  end;

{ T213_Ct_dadosPagamento }

  T213_Ct_dadosPagamento = class(TXMLNode, I213_Ct_dadosPagamento)
  protected
    { I213_Ct_dadosPagamento }
    function Get_DataPagamento: WideString;
    function Get_LoteOdonto: I213_LoteOdonto;
    procedure Set_DataPagamento(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_totalDemoOdonto }

  T213_Ct_totalDemoOdonto = class(TXMLNode, I213_Ct_totalDemoOdonto)
  protected
    { I213_Ct_totalDemoOdonto }
    function Get_ValorTotalGeralGlosa: WideString;
    function Get_ValorTotalGeralLiberado: WideString;
    function Get_ValorTotalProcessadoGuia: WideString;
    procedure Set_ValorTotalGeralGlosa(Value: WideString);
    procedure Set_ValorTotalGeralLiberado(Value: WideString);
    procedure Set_ValorTotalProcessadoGuia(Value: WideString);
  end;

{ T213_DebitosCreditosTributaveis }

  T213_DebitosCreditosTributaveis = class(TXMLNode, I213_DebitosCreditosTributaveis)
  private
    FDescontos: I213_Ct_descontoOdontoList;
    FCreditos: I213_Ct_creditoOdontoList;
  protected
    { I213_DebitosCreditosTributaveis }
    function Get_Descontos: I213_Ct_descontoOdontoList;
    function Get_Creditos: I213_Ct_creditoOdontoList;
    function Get_ValorTotalTributavel: WideString;
    procedure Set_ValorTotalTributavel(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_descontoOdonto }

  T213_Ct_descontoOdonto = class(TXMLNode, I213_Ct_descontoOdonto)
  protected
    { I213_Ct_descontoOdonto }
    function Get_Descricao: WideString;
    function Get_ValorDesconto: WideString;
    procedure Set_Descricao(Value: WideString);
    procedure Set_ValorDesconto(Value: WideString);
  end;

{ T213_Ct_descontoOdontoList }

  T213_Ct_descontoOdontoList = class(TXMLNodeCollection, I213_Ct_descontoOdontoList)
  protected
    { I213_Ct_descontoOdontoList }
    function Add: I213_Ct_descontoOdonto;
    function Insert(const Index: Integer): I213_Ct_descontoOdonto;
    function Get_Item(Index: Integer): I213_Ct_descontoOdonto;
  end;

{ T213_Ct_creditoOdonto }

  T213_Ct_creditoOdonto = class(TXMLNode, I213_Ct_creditoOdonto)
  protected
    { I213_Ct_creditoOdonto }
    function Get_ValorDesconto: WideString;
    function Get_Descricao: WideString;
    procedure Set_ValorDesconto(Value: WideString);
    procedure Set_Descricao(Value: WideString);
  end;

{ T213_Ct_creditoOdontoList }

  T213_Ct_creditoOdontoList = class(TXMLNodeCollection, I213_Ct_creditoOdontoList)
  protected
    { I213_Ct_creditoOdontoList }
    function Add: I213_Ct_creditoOdonto;
    function Insert(const Index: Integer): I213_Ct_creditoOdonto;
    function Get_Item(Index: Integer): I213_Ct_creditoOdonto;
  end;

{ T213_DemaisImpostos }

  T213_DemaisImpostos = class(TXMLNode, I213_DemaisImpostos)
  private
    FDescontos: I213_Ct_descontoOdontoList;
  protected
    { I213_DemaisImpostos }
    function Get_Descontos: I213_Ct_descontoOdontoList;
    function Get_ValorTotalImpostos: WideString;
    procedure Set_ValorTotalImpostos(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_DebitosCreditosNaoTributaveis }

  T213_DebitosCreditosNaoTributaveis = class(TXMLNode, I213_DebitosCreditosNaoTributaveis)
  private
    FDescontos: I213_Ct_descontoOdontoList;
    FCreditos: I213_Ct_creditoOdontoList;
  protected
    { I213_DebitosCreditosNaoTributaveis }
    function Get_Descontos: I213_Ct_descontoOdontoList;
    function Get_Creditos: I213_Ct_creditoOdontoList;
    function Get_ValorTotalNaoTributavel: WideString;
    procedure Set_ValorTotalNaoTributavel(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_demonstrativoPagamento }

  T213_Ct_demonstrativoPagamento = class(TXMLNode, I213_Ct_demonstrativoPagamento)
  protected
    { I213_Ct_demonstrativoPagamento }
    function Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I213_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DadosPagamento: I213_Ct_dadoBancario;
    function Get_DadosResumo: I213_DadosResumo;
    function Get_ValorTotal: WideString;
    function Get_DemaisDescontos: I213_Ct_descontos;
    function Get_ValorFinalLiberado: WideString;
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_ValorFinalLiberado(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_demonstrativoPagamentoList }

  T213_Ct_demonstrativoPagamentoList = class(TXMLNodeCollection, I213_Ct_demonstrativoPagamentoList)
  protected
    { I213_Ct_demonstrativoPagamentoList }
    function Add: I213_Ct_demonstrativoPagamento;
    function Insert(const Index: Integer): I213_Ct_demonstrativoPagamento;
    function Get_Item(Index: Integer): I213_Ct_demonstrativoPagamento;
  end;

{ T213_Ct_dadoBancario }

  T213_Ct_dadoBancario = class(TXMLNode, I213_Ct_dadoBancario)
  protected
    { I213_Ct_dadoBancario }
    function Get_DataPagamento: WideString;
    function Get_FormaPagamento: WideString;
    function Get_Banco: Integer;
    function Get_Agencia: WideString;
    function Get_ContaCorrente: WideString;
    procedure Set_DataPagamento(Value: WideString);
    procedure Set_FormaPagamento(Value: WideString);
    procedure Set_Banco(Value: Integer);
    procedure Set_Agencia(Value: WideString);
    procedure Set_ContaCorrente(Value: WideString);
  end;

{ T213_DadosResumo }

  T213_DadosResumo = class(TXMLNode, I213_DadosResumo)
  private
    FDetalheResumo: I213_Ct_dadosResumoList;
  protected
    { I213_DadosResumo }
    function Get_DetalheResumo: I213_Ct_dadosResumoList;
    function Get_TotalGeralInformado: WideString;
    function Get_TotalGeralProcessado: WideString;
    function Get_TotalGeralGlosa: WideString;
    function Get_TotalGeralLiberado: WideString;
    procedure Set_TotalGeralInformado(Value: WideString);
    procedure Set_TotalGeralProcessado(Value: WideString);
    procedure Set_TotalGeralGlosa(Value: WideString);
    procedure Set_TotalGeralLiberado(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_dadosResumo }

  T213_Ct_dadosResumo = class(TXMLNode, I213_Ct_dadosResumo)
  protected
    { I213_Ct_dadosResumo }
    function Get_NumeroFatura: WideString;
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorInformado: WideString;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_ValorGlosa: WideString;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorInformado(Value: WideString);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_ValorGlosa(Value: WideString);
  end;

{ T213_Ct_dadosResumoList }

  T213_Ct_dadosResumoList = class(TXMLNodeCollection, I213_Ct_dadosResumoList)
  protected
    { I213_Ct_dadosResumoList }
    function Add: I213_Ct_dadosResumo;
    function Insert(const Index: Integer): I213_Ct_dadosResumo;
    function Get_Item(Index: Integer): I213_Ct_dadosResumo;
  end;

{ T213_Ct_descontos }

  T213_Ct_descontos = class(TXMLNodeCollection, I213_Ct_descontos)
  protected
    { I213_Ct_descontos }
    function Get_ItemDesconto(Index: Integer): I213_ItemDesconto;
    function Add: I213_ItemDesconto;
    function Insert(const Index: Integer): I213_ItemDesconto;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ItemDesconto }

  T213_ItemDesconto = class(TXMLNode, I213_ItemDesconto)
  protected
    { I213_ItemDesconto }
    function Get_ValorDesconto: WideString;
    function Get_Descricao: WideString;
    procedure Set_ValorDesconto(Value: WideString);
    procedure Set_Descricao(Value: WideString);
  end;

{ T213_Ct_StatusProtocolo }

  T213_Ct_StatusProtocolo = class(TXMLNode, I213_Ct_StatusProtocolo)
  protected
    { I213_Ct_StatusProtocolo }
    function Get_RegistroANS: WideString;
    function Get_NomeOperadora: WideString;
    function Get_CNPJ: WideString;
    function Get_StatusProtocolo: WideString;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_CNESPrestador: WideString;
    function Get_Lote: I213_LoteStatusProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NomeOperadora(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_StatusProtocolo(Value: WideString);
    procedure Set_CNESPrestador(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_statusLote }

  T213_Ct_statusLote = class(TXMLNode, I213_Ct_statusLote)
  protected
    { I213_Ct_statusLote }
    function Get_NumeroProtocolo: WideString;
    function Get_NumeroLote: Integer;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroFatura: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_ValorGlosa: WideString;
    function Get_Status: WideString;
    function Get_Guias: I213_GuiasStatusLote;
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroFatura(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_ValorGlosa(Value: WideString);
    procedure Set_Status(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Detalheguia }

  T213_Detalheguia = class(TXMLNode, I213_Detalheguia)
  protected
    { I213_Detalheguia }
    function Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: I213_ProcedimentosAnalisados;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_cabecalhoGuia }

  T213_Ct_cabecalhoGuia = class(TXMLNode, I213_Ct_cabecalhoGuia)
  protected
    { I213_Ct_cabecalhoGuia }
    function Get_RegistroANS: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
  end;

{ T213_ProcedimentosAnalisados }

  T213_ProcedimentosAnalisados = class(TXMLNodeCollection, I213_ProcedimentosAnalisados)
  protected
    { I213_ProcedimentosAnalisados }
    function Get_Procedimento(Index: Integer): I213_Ct_itemSolicitacao;
    function Add: I213_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I213_Ct_itemSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_itemSolicitacao }

  T213_Ct_itemSolicitacao = class(TXMLNode, I213_Ct_itemSolicitacao)
  protected
    { I213_Ct_itemSolicitacao }
    function Get_IdentificacaoProcedimentos: I213_Ct_tabela;
    function Get_QuantidadeSolicitada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_StatusSolicitacaoProcedimento: WideString;
    function Get_Glosas: I213_Glosas;
    function Get_Observacao: WideString;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
    procedure Set_StatusSolicitacaoProcedimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Glosas }

  T213_Glosas = class(TXMLNodeCollection, I213_Glosas)
  protected
    { I213_Glosas }
    function Get_MotivoGlosa(Index: Integer): I213_Ct_motivoGlosa;
    function Add: I213_Ct_motivoGlosa;
    function Insert(const Index: Integer): I213_Ct_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_autorizacaoProcedimento }

  T213_Ct_autorizacaoProcedimento = class(TXMLNode, I213_Ct_autorizacaoProcedimento)
  protected
    { I213_Ct_autorizacaoProcedimento }
    function Get_IdentificacaoAutorizacao: I213_Ct_cabecalhoGuia;
    function Get_StatusSolicitacao: WideString;
    function Get_MotivoNegativa: I213_MotivoNegativa;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_PrestadorAutorizado: I213_Ct_contratado;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuiaInternacao;
    function Get_Procedimentos: I213_ProcedimentosAutorizacaoProc;
    procedure Set_StatusSolicitacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_TotalOdonto }

  T213_TotalOdonto = class(TXMLNode, I213_TotalOdonto)
  protected
    { I213_TotalOdonto }
    function Get_Totalvalor: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    function Get_TotalquantidadeUS: WideString;
    procedure Set_Totalvalor(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    procedure Set_TotalquantidadeUS(Value: WideString);
  end;

{ T213_Ct_diariaProrrogacao }

  T213_Ct_diariaProrrogacao = class(TXMLNode, I213_Ct_diariaProrrogacao)
  protected
    { I213_Ct_diariaProrrogacao }
    function Get_TipoAcomodacao: WideString;
    function Get_QuantidadeDiaria: WideString;
    procedure Set_TipoAcomodacao(Value: WideString);
    procedure Set_QuantidadeDiaria(Value: WideString);
  end;

{ T213_Ct_situacaoAutorizacao }

  T213_Ct_situacaoAutorizacao = class(TXMLNodeCollection, I213_Ct_situacaoAutorizacao)
  protected
    { I213_Ct_situacaoAutorizacao }
    function Get_DadosAutorizacao(Index: Integer): I213_DadosAutorizacao;
    function Add: I213_DadosAutorizacao;
    function Insert(const Index: Integer): I213_DadosAutorizacao;
  public
    procedure AfterConstruction; override;
  end;

{ T213_DadosAutorizacao }

  T213_DadosAutorizacao = class(T213_Ct_autorizacaoProcedimento, I213_DadosAutorizacao)
  protected
    { I213_DadosAutorizacao }
    function Get_TotalOdonto: I213_TotalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: I213_Ct_diariaProrrogacaoAutorizada;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_diariaProrrogacaoAutorizada }

  T213_Ct_diariaProrrogacaoAutorizada = class(T213_Ct_diariaProrrogacao, I213_Ct_diariaProrrogacaoAutorizada)
  protected
    { I213_Ct_diariaProrrogacaoAutorizada }
    function Get_TipoAcomodacaoAutorizada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_MotivoGlosa: I213_Ct_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_retornoElegibilidade }

  T213_Ct_retornoElegibilidade = class(TXMLNode, I213_Ct_retornoElegibilidade)
  protected
    { I213_Ct_retornoElegibilidade }
    function Get_DadosOperadora: I213_Ct_identificacaoOperadora;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_RespostaSolicitacao: Boolean;
    function Get_MotivoNegacao: I213_Ct_motivoGlosa;
    procedure Set_RespostaSolicitacao(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_reciboCancelaGuia }

  T213_Ct_reciboCancelaGuia = class(TXMLNode, I213_Ct_reciboCancelaGuia)
  protected
    { I213_Ct_reciboCancelaGuia }
    function Get_Operadora: I213_Ct_identificacaoOperadora;
    function Get_GuiasCanceladas: I213_GuiasCanceladas;
  public
    procedure AfterConstruction; override;
  end;

{ T213_GuiasCanceladas }

  T213_GuiasCanceladas = class(TXMLNodeCollection, I213_GuiasCanceladas)
  protected
    { I213_GuiasCanceladas }
    function Get_DadosGuia(Index: Integer): I213_DadosGuia;
    function Add: I213_DadosGuia;
    function Insert(const Index: Integer): I213_DadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T213_DadosGuia }

  T213_DadosGuia = class(T213_Ct_cabecalhoGuia, I213_DadosGuia)
  protected
    { I213_DadosGuia }
    function Get_StatusCancelamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_StatusCancelamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  end;

{ T213_PrestadorParaOperadora }

  T213_PrestadorParaOperadora = class(TXMLNode, I213_PrestadorParaOperadora)
  protected
    { I213_PrestadorParaOperadora }
    function Get_LoteGuias: I213_Ct_loteGuias;
    function Get_SolicitacaoDemonstrativoRetorno: I213_Ct_solicitacaoDemonstrativoPagamento;
    function Get_SolicitacaoStatusProtocolo: I213_Ct_solicitacaoStatusProtocolo;
    function Get_SolicitacaoProcedimento: I213_SolicitacaoProcedimento;
    function Get_SolicitaStatusAutorizacao: I213_Ct_solicitaStatusAutorizacao;
    function Get_VerificaElegibilidade: I213_Ct_solicitaElegibilidade;
    function Get_CancelaGuia: I213_Ct_cancelaGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_loteGuias }

  T213_Ct_loteGuias = class(TXMLNode, I213_Ct_loteGuias)
  protected
    { I213_Ct_loteGuias }
    function Get_NumeroLote: Integer;
    function Get_Guias: I213_Ct_Guias;
    procedure Set_NumeroLote(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guias }

  T213_Ct_guias = class(TXMLNode, I213_Ct_guias)
  protected
    { I213_Ct_guias }
    function Get_GuiaFaturamento: I213_GuiaFaturamento;
    function Get_GuiaRevisaoGlosa: I213_GuiaRevisaoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_solicitacaoDemonstrativoPagamento }

  T213_Ct_solicitacaoDemonstrativoPagamento = class(TXMLNode, I213_Ct_solicitacaoDemonstrativoPagamento)
  protected
    { I213_Ct_solicitacaoDemonstrativoPagamento }
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_RegistroANS: WideString;
    function Get_DataSolicitacao: WideString;
    function Get_TipoDemonstrativo: WideString;
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    function Get_NumeroProtocolo: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
    procedure Set_TipoDemonstrativo(Value: WideString);
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_solicitacaoStatusProtocolo }

  T213_Ct_solicitacaoStatusProtocolo = class(TXMLNode, I213_Ct_solicitacaoStatusProtocolo)
  protected
    { I213_Ct_solicitacaoStatusProtocolo }
    function Get_RegistroANS: WideString;
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DataSolicitacao: WideString;
    function Get_DetalheProtocolo: I213_DetalheProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_DetalheProtocolo }

  T213_DetalheProtocolo = class(TXMLNodeCollection, I213_DetalheProtocolo)
  protected
    { I213_DetalheProtocolo }
    function Get_NumeroProtocolo(Index: Integer): WideString;
    function Add(const NumeroProtocolo: WideString): IXMLNode;
    function Insert(const Index: Integer; const NumeroProtocolo: WideString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ T213_SolicitacaoProcedimento }

  T213_SolicitacaoProcedimento = class(TXMLNode, I213_SolicitacaoProcedimento)
  private
    FGuiaSolicInternacao: I213_Ct_guiaSolicInternacaoList;
    FGuiaSolicitacaoSADT: I213_Ct_guiaSolicitacaoSP_SADTList;
    FGuiaSolicitacaoOdontologia: I213_Ct_guiaSolicitacaoOdontoList;
    FGuiaSolicitacaoProrrogacao: I213_Ct_guiaSolicitacaoProrrogacaoList;
  protected
    { I213_SolicitacaoProcedimento }
    function Get_GuiaSolicInternacao: I213_Ct_guiaSolicInternacaoList;
    function Get_GuiaSolicitacaoSADT: I213_Ct_guiaSolicitacaoSP_SADTList;
    function Get_GuiaSolicitacaoOdontologia: I213_Ct_guiaSolicitacaoOdontoList;
    function Get_GuiaSolicitacaoProrrogacao: I213_Ct_guiaSolicitacaoProrrogacaoList;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaSolicInternacao }

  T213_Ct_guiaSolicInternacao = class(TXMLNode, I213_Ct_guiaSolicInternacao)
  protected
    { I213_Ct_guiaSolicInternacao }
    function Get_IdentificacaoGuiaSolicitacaoInternacao: I213_Ct_cabecalhoSolicitacao;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_PrestadorSolicitado: I213_PrestadorSolicitado;
    function Get_CaraterInternacao: WideString;
    function Get_TipoInternacao: WideString;
    function Get_IndicacaoClinica: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_HipotesesDiagnosticas: I213_Ct_hipoteseDiagnostica;
    function Get_ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados;
    function Get_OPMsSolicitadas: I213_Ct_OPMSolicitadas;
    function Get_DiasSolicitados: Integer;
    function Get_DataProvavelAdmisHosp: WideString;
    function Get_Observacao: WideString;
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_DiasSolicitados(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_cabecalhoSolicitacao }

  T213_Ct_cabecalhoSolicitacao = class(TXMLNode, I213_Ct_cabecalhoSolicitacao)
  protected
    { I213_Ct_cabecalhoSolicitacao }
    function Get_RegistroANS: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
  end;

{ T213_Ct_solicitante }

  T213_Ct_solicitante = class(TXMLNode, I213_Ct_solicitante)
  protected
    { I213_Ct_solicitante }
    function Get_Contratado: I213_Ct_contratadoSolicitante;
    function Get_Profissional: I213_Ct_identificacaoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_contratadoSolicitante }

  T213_Ct_contratadoSolicitante = class(TXMLNode, I213_Ct_contratadoSolicitante)
  protected
    { I213_Ct_contratadoSolicitante }
    function Get_Identificacao: I213_Ct_identificacaoPrestador;
    function Get_NomeContratado: WideString;
    function Get_EnderecoContratado: I213_Ct_endereco;
    function Get_NumeroCNES: WideString;
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_identificacaoPrestador }

  T213_Ct_identificacaoPrestador = class(TXMLNode, I213_Ct_identificacaoPrestador)
  protected
    { I213_Ct_identificacaoPrestador }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_conselhoProfissional }

  T213_Ct_conselhoProfissional = class(TXMLNode, I213_Ct_conselhoProfissional)
  protected
    { I213_Ct_conselhoProfissional }
    function Get_SiglaConselho: WideString;
    function Get_NumeroConselho: WideString;
    function Get_UfConselho: WideString;
    procedure Set_SiglaConselho(Value: WideString);
    procedure Set_NumeroConselho(Value: WideString);
    procedure Set_UfConselho(Value: WideString);
  end;

{ T213_Ct_identificacaoProfissional }

  T213_Ct_identificacaoProfissional = class(TXMLNode, I213_Ct_identificacaoProfissional)
  protected
    { I213_Ct_identificacaoProfissional }
    function Get_NomeProfissional: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    function Get_Cbos: WideString;
    procedure Set_NomeProfissional(Value: WideString);
    procedure Set_Cbos(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_PrestadorSolicitado }

  T213_PrestadorSolicitado = class(T213_Ct_identificacaoPrestador, I213_PrestadorSolicitado)
  protected
    { I213_PrestadorSolicitado }
    function Get_NomePrestador: WideString;
    procedure Set_NomePrestador(Value: WideString);
  end;

{ T213_Ct_hipoteseDiagnostica }

  T213_Ct_hipoteseDiagnostica = class(TXMLNode, I213_Ct_hipoteseDiagnostica)
  private
    FDiagnosticosSecundarios: I213_Ct_diagnosticosSecundariosList;
  protected
    { I213_Ct_hipoteseDiagnostica }
    function Get_CIDPrincipal: I213_Ct_diagnosticoGuia;
    function Get_DiagnosticosSecundarios: I213_Ct_diagnosticosSecundariosList;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_diagnosticoGuia }

  T213_Ct_diagnosticoGuia = class(TXMLNode, I213_Ct_diagnosticoGuia)
  protected
    { I213_Ct_diagnosticoGuia }
    function Get_CID: I213_Ct_diagnostico;
    function Get_TipoDoenca: WideString;
    function Get_TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: WideString;
    procedure Set_TipoDoenca(Value: WideString);
    procedure Set_IndicadorAcidente(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_diagnostico }

  T213_Ct_diagnostico = class(TXMLNode, I213_Ct_diagnostico)
  protected
    { I213_Ct_diagnostico }
    function Get_NomeTabela: WideString;
    function Get_CodigoDiagnostico: WideString;
    function Get_DescricaoDiagnostico: WideString;
    procedure Set_NomeTabela(Value: WideString);
    procedure Set_CodigoDiagnostico(Value: WideString);
    procedure Set_DescricaoDiagnostico(Value: WideString);
  end;

{ T213_Ct_tempoEvolucaoDoenca }

  T213_Ct_tempoEvolucaoDoenca = class(TXMLNode, I213_Ct_tempoEvolucaoDoenca)
  protected
    { I213_Ct_tempoEvolucaoDoenca }
    function Get_Valor: Integer;
    function Get_UnidadeTempo: WideString;
    procedure Set_Valor(Value: Integer);
    procedure Set_UnidadeTempo(Value: WideString);
  end;

{ T213_Ct_diagnosticosSecundarios }

  T213_Ct_diagnosticosSecundarios = class(TXMLNodeCollection, I213_Ct_diagnosticosSecundarios)
  protected
    { I213_Ct_diagnosticosSecundarios }
    function Get_CID(Index: Integer): I213_Ct_diagnostico;
    function Add: I213_Ct_diagnostico;
    function Insert(const Index: Integer): I213_Ct_diagnostico;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_procedimentosSolicitados }

  T213_Ct_procedimentosSolicitados = class(TXMLNodeCollection, I213_Ct_procedimentosSolicitados)
  protected
    { I213_Ct_procedimentosSolicitados }
    function Get_ProcedimentoSolicitado(Index: Integer): I213_ProcedimentoSolicitado;
    function Add: I213_ProcedimentoSolicitado;
    function Insert(const Index: Integer): I213_ProcedimentoSolicitado;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentoSolicitado }

  T213_ProcedimentoSolicitado = class(TXMLNode, I213_ProcedimentoSolicitado)
  protected
    { I213_ProcedimentoSolicitado }
    function Get_QuantidadeSolicitada: Integer;
    function Get_Procedimento: I213_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_OPMSolicitadas }

  T213_Ct_OPMSolicitadas = class(TXMLNodeCollection, I213_Ct_OPMSolicitadas)
  protected
    { I213_Ct_OPMSolicitadas }
    function Get_OPMSolicitada(Index: Integer): I213_OPMSolicitada;
    function Add: I213_OPMSolicitada;
    function Insert(const Index: Integer): I213_OPMSolicitada;
  public
    procedure AfterConstruction; override;
  end;

{ T213_OPMSolicitada }

  T213_OPMSolicitada = class(TXMLNode, I213_OPMSolicitada)
  protected
    { I213_OPMSolicitada }
    function Get_QuantidadeSolicitada: WideString;
    function Get_Fabricante: WideString;
    function Get_Valor: WideString;
    function Get_OPM: I213_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_Fabricante(Value: WideString);
    procedure Set_Valor(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaSolicitacaoSP_SADT }

  T213_Ct_guiaSolicitacaoSP_SADT = class(TXMLNode, I213_Ct_guiaSolicitacaoSP_SADT)
  protected
    { I213_Ct_guiaSolicitacaoSP_SADT }
    function Get_IdentificacaoGuiaSolicitacaoSADTSP: I213_Ct_cabecalhoSolicitacao;
    function Get_NumeroGuiaPrincipal: Integer;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_CaraterSolicitacao: WideString;
    function Get_DataHoraSolicitacao: WideString;
    function Get_Diagnostico: I213_Ct_diagnostico;
    function Get_IndicacaoClinica: WideString;
    function Get_ProcedimentosSolicitados: I213_Ct_procedimentosSolicitados;
    function Get_OpmSolicitada: I213_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: Integer);
    procedure Set_CaraterSolicitacao(Value: WideString);
    procedure Set_DataHoraSolicitacao(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaSolicitacaoOdonto }

  T213_Ct_guiaSolicitacaoOdonto = class(TXMLNode, I213_Ct_guiaSolicitacaoOdonto)
  protected
    { I213_Ct_guiaSolicitacaoOdonto }
    function Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I213_DadosBeneficiario;
    function Get_DadosSolicitante: I213_DadosSolicitante;
    function Get_SituacaoInicial: I213_Ct_situacaoInicial;
    function Get_PlanoTratamento: I213_PlanoTratamento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_cabecalhoGuiaOdonto }

  T213_Ct_cabecalhoGuiaOdonto = class(TXMLNode, I213_Ct_cabecalhoGuiaOdonto)
  protected
    { I213_Ct_cabecalhoGuiaOdonto }
    function Get_RegistroANS: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DataAutorizacao: WideString;
    function Get_SenhaAutorizacao: WideString;
    function Get_ValidadeSenha: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_DataAutorizacao(Value: WideString);
    procedure Set_SenhaAutorizacao(Value: WideString);
    procedure Set_ValidadeSenha(Value: WideString);
  end;

{ T213_DadosBeneficiario }

  T213_DadosBeneficiario = class(T213_Ct_beneficiario, I213_DadosBeneficiario)
  protected
    { I213_DadosBeneficiario }
    function Get_NomeEmpresa: WideString;
    function Get_NumeroTelefone: WideString;
    function Get_NomeTitular: WideString;
    procedure Set_NomeEmpresa(Value: WideString);
    procedure Set_NumeroTelefone(Value: WideString);
    procedure Set_NomeTitular(Value: WideString);
  end;

{ T213_DadosSolicitante }

  T213_DadosSolicitante = class(TXMLNode, I213_DadosSolicitante)
  protected
    { I213_DadosSolicitante }
    function Get_DadosContratado: I213_DadosContratado;
    function Get_DadosExecutante: I213_DadosExecutante;
  public
    procedure AfterConstruction; override;
  end;

{ T213_DadosContratado }

  T213_DadosContratado = class(T213_Ct_contratado, I213_DadosContratado)
  protected
    { I213_DadosContratado }
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_profissionalExecutante }

  T213_Ct_profissionalExecutante = class(TXMLNode, I213_Ct_profissionalExecutante)
  protected
    { I213_Ct_profissionalExecutante }
    function Get_NomeExecutante: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    function Get_CodigoCBOS: WideString;
    procedure Set_NomeExecutante(Value: WideString);
    procedure Set_CodigoCBOS(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_situacaoInicial }

  T213_Ct_situacaoInicial = class(TXMLNode, I213_Ct_situacaoInicial)
  protected
    { I213_Ct_situacaoInicial }
    function Get_SituacaoClinica: I213_Ct_situacaoClinica;
    function Get_DoencaPeriodontal: Boolean;
    function Get_AlteracaoTecidoMole: Boolean;
    function Get_Observacao: WideString;
    procedure Set_DoencaPeriodontal(Value: Boolean);
    procedure Set_AlteracaoTecidoMole(Value: Boolean);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_situacaoClinica }

  T213_Ct_situacaoClinica = class(TXMLNodeCollection, I213_Ct_situacaoClinica)
  protected
    { I213_Ct_situacaoClinica }
    function Get_Dentes(Index: Integer): I213_Dentes;
    function Add: I213_Dentes;
    function Insert(const Index: Integer): I213_Dentes;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Dentes }

  T213_Dentes = class(TXMLNode, I213_Dentes)
  protected
    { I213_Dentes }
    function Get_ElementoDentario: WideString;
    function Get_CondicaoClinica: WideString;
    procedure Set_ElementoDentario(Value: WideString);
    procedure Set_CondicaoClinica(Value: WideString);
  end;

{ T213_PlanoTratamento }

  T213_PlanoTratamento = class(TXMLNodeCollection, I213_PlanoTratamento)
  protected
    { I213_PlanoTratamento }
    function Get_ProcedimentoSolicitado(Index: Integer): I213_Ct_procedimentoOdontologia;
    function Add: I213_Ct_procedimentoOdontologia;
    function Insert(const Index: Integer): I213_Ct_procedimentoOdontologia;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_procedimentoOdontologia }

  T213_Ct_procedimentoOdontologia = class(TXMLNode, I213_Ct_procedimentoOdontologia)
  protected
    { I213_Ct_procedimentoOdontologia }
    function Get_ProcedimentoOdonto: I213_Ct_tabela;
    function Get_DenteRegiao: I213_Ct_denteRegiao;
    function Get_Face: WideString;
    function Get_Quantidade: Integer;
    function Get_QuantidadeUS: WideString;
    function Get_Valor: WideString;
    function Get_FranquiaCoparticipacao: WideString;
    procedure Set_Face(Value: WideString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_QuantidadeUS(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_FranquiaCoparticipacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_denteRegiao }

  T213_Ct_denteRegiao = class(TXMLNode, I213_Ct_denteRegiao)
  protected
    { I213_Ct_denteRegiao }
    function Get_Dente: WideString;
    function Get_Regiao: WideString;
    procedure Set_Dente(Value: WideString);
    procedure Set_Regiao(Value: WideString);
  end;

{ T213_Ct_guiaSolicitacaoProrrogacao }

  T213_Ct_guiaSolicitacaoProrrogacao = class(TXMLNode, I213_Ct_guiaSolicitacaoProrrogacao)
  protected
    { I213_Ct_guiaSolicitacaoProrrogacao }
    function Get_IdentificacaoProrrogacao: I213_Ct_cabecalhoGuia;
    function Get_IdentificacaoGuiaReferencia: I213_Ct_cabecalhoGuia;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_IndicacaoClinica: WideString;
    function Get_ResponsavelAutorizacao: WideString;
    function Get_ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados;
    function Get_Diarias: I213_Ct_diariaProrrogacao;
    function Get_OPMsSolicitadas: I213_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_ResponsavelAutorizacao(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_DiariaProrrogacaoAutorizada }

  T213_DiariaProrrogacaoAutorizada = class(T213_Ct_diariaProrrogacao, I213_DiariaProrrogacaoAutorizada)
  protected
    { I213_DiariaProrrogacaoAutorizada }
    function Get_TipoAcomodacaoAutorizada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_MotivoGlosa: I213_Ct_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_solicitaStatusAutorizacao }

  T213_Ct_solicitaStatusAutorizacao = class(TXMLNode, I213_Ct_solicitaStatusAutorizacao)
  protected
    { I213_Ct_solicitaStatusAutorizacao }
    function Get_IdentificacaoAutorizacao: I213_IdentificacaoAutorizacao;
    function Get_DataSolicitaStatus: WideString;
    procedure Set_DataSolicitaStatus(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_IdentificacaoAutorizacao }

  T213_IdentificacaoAutorizacao = class(TXMLNodeCollection, I213_IdentificacaoAutorizacao)
  protected
    { I213_IdentificacaoAutorizacao }
    function Get_IdentificacaoSolicitacao(Index: Integer): I213_IdentificacaoSolicitacao;
    function Add: I213_IdentificacaoSolicitacao;
    function Insert(const Index: Integer): I213_IdentificacaoSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ T213_IdentificacaoSolicitacao }

  T213_IdentificacaoSolicitacao = class(T213_Ct_cabecalhoSolicitacao, I213_IdentificacaoSolicitacao)
  protected
    { I213_IdentificacaoSolicitacao }
    function Get_ProfissionalSolicitante: I213_Ct_contratadoSolicitante;
    function Get_IdentificacaoBeneficiario: I213_Ct_beneficiario;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_solicitaElegibilidade }

  T213_Ct_solicitaElegibilidade = class(TXMLNode, I213_Ct_solicitaElegibilidade)
  protected
    { I213_Ct_solicitaElegibilidade }
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_cancelaGuia }

  T213_Ct_cancelaGuia = class(TXMLNode, I213_Ct_cancelaGuia)
  protected
    { I213_Ct_cancelaGuia }
    function Get_DadosPrestador: I213_Ct_contratado;
    function Get_Guia: I213_Ct_cabecalhoGuia;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Epilogo }

  T213_Epilogo = class(TXMLNode, I213_Epilogo)
  protected
    { I213_Epilogo }
    function Get_Hash: WideString;
    procedure Set_Hash(Value: WideString);
  end;

{ T213_DefinicaoTissNet }

  T213_DefinicaoTissNet = class(TXMLNodeCollection, I213_DefinicaoTissNet)
  protected
    { I213_DefinicaoTissNet }
    function Get_Nodo(Index: Integer): I213_Nodo_tissnet;
    function Add: I213_Nodo_tissnet;
    function Insert(const Index: Integer): I213_Nodo_tissnet;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Nodo_tissnet }

  T213_Nodo_tissnet = class(TXMLNode, I213_Nodo_tissnet)
  protected
    { I213_Nodo_tissnet }
    function Get_Operadora: WideString;
    function Get_PontoAPonto: I213_PontoAPonto;
    function Get_WebServices: I213_WebServices;
    procedure Set_Operadora(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_PontoAPonto }

  T213_PontoAPonto = class(TXMLNode, I213_PontoAPonto)
  protected
    { I213_PontoAPonto }
    function Get_Socket: I213_Ct_hostporta;
    function Get_Service: WideString;
    procedure Set_Service(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_hostporta }

  T213_Ct_hostporta = class(TXMLNode, I213_Ct_hostporta)
  protected
    { I213_Ct_hostporta }
    function Get_Host: WideString;
    function Get_Port: Integer;
    procedure Set_Host(Value: WideString);
    procedure Set_Port(Value: Integer);
  end;

{ T213_WebServices }

  T213_WebServices = class(TXMLNode, I213_WebServices)
  protected
    { I213_WebServices }
    function Get_TissCancelaGuia: WideString;
    function Get_TissLoteGuias: WideString;
    function Get_TissSolicitacaoAnaliseConta: WideString;
    function Get_TissSolicitacaoDemonstrativoPagamento: WideString;
    function Get_TissSolicitacaoProcedimento: WideString;
    function Get_TissSolicitacaoStatusProtocolo: WideString;
    function Get_TissVerificaElegibilidade: WideString;
    procedure Set_TissCancelaGuia(Value: WideString);
    procedure Set_TissLoteGuias(Value: WideString);
    procedure Set_TissSolicitacaoAnaliseConta(Value: WideString);
    procedure Set_TissSolicitacaoDemonstrativoPagamento(Value: WideString);
    procedure Set_TissSolicitacaoProcedimento(Value: WideString);
    procedure Set_TissSolicitacaoStatusProtocolo(Value: WideString);
    procedure Set_TissVerificaElegibilidade(Value: WideString);
  end;

{ T213_Ct_atendimentoConsulta }

  T213_Ct_atendimentoConsulta = class(TXMLNode, I213_Ct_atendimentoConsulta)
  protected
    { I213_Ct_atendimentoConsulta }
    function Get_DataAtendimento: WideString;
    function Get_Procedimento: I213_Procedimento;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: WideString;
    procedure Set_DataAtendimento(Value: WideString);
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Procedimento }

  T213_Procedimento = class(TXMLNode, I213_Procedimento)
  protected
    { I213_Procedimento }
    function Get_CodigoTabela: WideString;
    function Get_CodigoProcedimento: WideString;
    procedure Set_CodigoTabela(Value: WideString);
    procedure Set_CodigoProcedimento(Value: WideString);
  end;

{ T213_ProcedimentoReapr }

  T213_ProcedimentoReapr = class(TXMLNode, I213_ProcedimentoReapr)
  protected
    { I213_ProcedimentoReapr }
    function Get_CodigoTabela: WideString;
    function Get_CodigoProcedimento: WideString;
    function Get_Justificativa: WideString;
    procedure Set_CodigoTabela(Value: WideString);
    procedure Set_CodigoProcedimento(Value: WideString);
    procedure Set_Justificativa(Value: WideString);
  end;

{ T213_Ct_atendimentoConsultaReapr }

  T213_Ct_atendimentoConsultaReapr = class(TXMLNode, I213_Ct_atendimentoConsultaReapr)
  protected
    { I213_Ct_atendimentoConsultaReapr }
    function Get_Procedimento: I213_ProcedimentoReapr;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: WideString;
    function Get_DataAtendimento: WideString;
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_DataAtendimento(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_atendimentoOdontologia }

  T213_Ct_atendimentoOdontologia = class(TXMLNode, I213_Ct_atendimentoOdontologia)
  protected
    { I213_Ct_atendimentoOdontologia }
    function Get_DataTerminoTratamento: WideString;
    function Get_TipoAtendimento: WideString;
    procedure Set_DataTerminoTratamento(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
  end;

{ T213_Ct_autorizacaoGuia }

  T213_Ct_autorizacaoGuia = class(TXMLNode, I213_Ct_autorizacaoGuia)
  protected
    { I213_Ct_autorizacaoGuia }
    function Get_DataAutorizacao: WideString;
    function Get_SenhaAutorizacao: WideString;
    function Get_ValidadeSenha: WideString;
    procedure Set_DataAutorizacao(Value: WideString);
    procedure Set_SenhaAutorizacao(Value: WideString);
    procedure Set_ValidadeSenha(Value: WideString);
  end;

{ T213_Ct_autorizacaoGuiaInternacao }

  T213_Ct_autorizacaoGuiaInternacao = class(T213_Ct_autorizacaoGuia, I213_Ct_autorizacaoGuiaInternacao)
  protected
    { I213_Ct_autorizacaoGuiaInternacao }
    function Get_DiasAutorizado: Integer;
    function Get_DataProvavelAdmisHosp: WideString;
    function Get_TipoAcomodacao: WideString;
    procedure Set_DiasAutorizado(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: WideString);
    procedure Set_TipoAcomodacao(Value: WideString);
  end;

{ T213_AutorizacaoServico }

  T213_AutorizacaoServico = class(T213_Ct_autorizacaoProcedimento, I213_AutorizacaoServico)
  protected
    { I213_AutorizacaoServico }
    function Get_TotalOdonto: I213_TotalOdonto;
    function Get_DiariaProrrogacaoAutorizada: I213_DiariaProrrogacaoAutorizada;
  public
    procedure AfterConstruction; override;
  end;

{ T213_AutorizacaoServicoList }

  T213_AutorizacaoServicoList = class(TXMLNodeCollection, I213_AutorizacaoServicoList)
  protected
    { I213_AutorizacaoServicoList }
    function Add: I213_AutorizacaoServico;
    function Insert(const Index: Integer): I213_AutorizacaoServico;
    function Get_Item(Index: Integer): I213_AutorizacaoServico;
  end;

{ T213_MotivoNegativa }

  T213_MotivoNegativa = class(TXMLNodeCollection, I213_MotivoNegativa)
  protected
    { I213_MotivoNegativa }
    function Get_MotivoGlosa(Index: Integer): I213_Ct_motivoGlosa;
    function Add: I213_Ct_motivoGlosa;
    function Insert(const Index: Integer): I213_Ct_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentosAutorizacaoProc }

  T213_ProcedimentosAutorizacaoProc = class(TXMLNodeCollection, I213_ProcedimentosAutorizacaoProc)
  protected
    { I213_Procedimentos }
    function Get_Procedimento(Index: Integer): I213_Ct_itemSolicitacao;
    function Add: I213_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I213_Ct_itemSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ T213_DadosPagamento }

  T213_DadosPagamento = class(T213_Ct_dadosPagamento, I213_DadosPagamento)
  protected
    { I213_DadosPagamento }
    function Get_TotalGeral: I213_Ct_totalDemoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_loteOdonto }

  T213_Ct_loteOdonto = class(TXMLNode, I213_Ct_loteOdonto)
  protected
    { I213_Ct_loteOdonto }
    function Get_NumeroLote: WideString;
    function Get_DetalheGuia: I213_Ct_detalheGuiaOdonto;
    function Get_ValorTotalLiberadoLote: WideString;
    function Get_ValorTotalProcessadoLote: WideString;
    function Get_ValorTotalGlosaLote: WideString;
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_ValorTotalLiberadoLote(Value: WideString);
    procedure Set_ValorTotalProcessadoLote(Value: WideString);
    procedure Set_ValorTotalGlosaLote(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_detalheGuiaOdonto }

  T213_Ct_detalheGuiaOdonto = class(TXMLNode, I213_Ct_detalheGuiaOdonto)
  protected
    { I213_Ct_detalheGuiaOdonto }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_CodigoBeneficiario: WideString;
    function Get_NomeBeneficiario: WideString;
    function Get_ProcedimentoRealizado: I213_ProcedimentoRealizadoOdonto;
    function Get_ValorTotalGlosaGuia: WideString;
    function Get_ValorTotalLiberadoGuia: WideString;
    function Get_ValorTotalProcessadoGuia: WideString;
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_CodigoBeneficiario(Value: WideString);
    procedure Set_NomeBeneficiario(Value: WideString);
    procedure Set_ValorTotalGlosaGuia(Value: WideString);
    procedure Set_ValorTotalLiberadoGuia(Value: WideString);
    procedure Set_ValorTotalProcessadoGuia(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentoRealizadoOdonto }

  T213_ProcedimentoRealizadoOdonto = class(TXMLNodeCollection, I213_ProcedimentoRealizadoOdonto)
  protected
    { I213_ProcedimentoRealizadoOdonto }
    function Get_ProcedimentosOdonto(Index: Integer): I213_Ct_procedimentoOdontoRealizado;
    function Add: I213_Ct_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): I213_Ct_procedimentoOdontoRealizado;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentoRealizado }

  T213_ProcedimentoRealizado = class(TXMLNode, I213_ProcedimentoRealizado)
  protected
    { I213_ProcedimentoRealizado }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_procedimentoOdontoRealizado }

  T213_Ct_procedimentoOdontoRealizado = class(TXMLNode, I213_Ct_procedimentoOdontoRealizado)
  private
    FMotivoGlosa: I213_St_tipoGlosaList;
  protected
    { I213_Ct_procedimentoOdontoRealizado }
    function Get_ProcedimentoOdonto: I213_Ct_tabela;
    function Get_DenteRegiao: I213_Ct_denteRegiao;
    function Get_Face: WideString;
    function Get_DataRealizacao: WideString;
    function Get_Quantidade: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorGlosaEstorno: WideString;
    function Get_MotivoGlosa: I213_St_tipoGlosaList;
    function Get_ValorLiberado: WideString;
    procedure Set_Face(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorGlosaEstorno(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_diagnosticoAtendimento }

  T213_Ct_diagnosticoAtendimento = class(TXMLNode, I213_Ct_diagnosticoAtendimento)
  protected
    { I213_Ct_diagnosticoAtendimento }
    function Get_CID: I213_Ct_diagnostico;
    function Get_TipoDoenca: WideString;
    function Get_TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: WideString;
    procedure Set_TipoDoenca(Value: WideString);
    procedure Set_IndicadorAcidente(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_diagnosticoSaidaInternacao }

  T213_Ct_diagnosticoSaidaInternacao = class(TXMLNode, I213_Ct_diagnosticoSaidaInternacao)
  private
    FObito: I213_Ct_obitoInternacaoList;
  protected
    { I213_Ct_diagnosticoSaidaInternacao }
    function Get_DiagnosticoPrincipal: I213_Ct_diagnostico;
    function Get_IndicadorAcidente: WideString;
    function Get_DiagnosticosSecundarios: I213_Ct_diagnosticosSecundarios;
    function Get_MotivoSaidaInternacao: WideString;
    function Get_Obito: I213_Ct_obitoInternacaoList;
    procedure Set_IndicadorAcidente(Value: WideString);
    procedure Set_MotivoSaidaInternacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_obitoInternacao }

  T213_Ct_obitoInternacao = class(TXMLNode, I213_Ct_obitoInternacao)
  protected
    { I213_Ct_obitoInternacao }
    function Get_CID: I213_Ct_diagnostico;
    function Get_NumeroDeclaracao: WideString;
    procedure Set_NumeroDeclaracao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_obitoInternacaoList }

  T213_Ct_obitoInternacaoList = class(TXMLNodeCollection, I213_Ct_obitoInternacaoList)
  protected
    { I213_Ct_obitoInternacaoList }
    function Add: I213_Ct_obitoInternacao;
    function Insert(const Index: Integer): I213_Ct_obitoInternacao;
    function Get_Item(Index: Integer): I213_Ct_obitoInternacao;
  end;

{ T213_Ct_executanteComplementar }

  T213_Ct_executanteComplementar = class(TXMLNode, I213_Ct_executanteComplementar)
  protected
    { I213_Ct_executanteComplementar }
    function Get_CodigoProfissionalCompl: I213_Ct_identificacaoPrestador;
    function Get_NomeProfissionalCompl: WideString;
    procedure Set_NomeProfissionalCompl(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_identificacaoEquipe }

  T213_Ct_identificacaoEquipe = class(TXMLNodeCollection, I213_Ct_identificacaoEquipe)
  protected
    { I213_Ct_identificacaoEquipe }
    function Get_MembroEquipe(Index: Integer): I213_MembroEquipe;
    function Add: I213_MembroEquipe;
    function Insert(const Index: Integer): I213_MembroEquipe;
  public
    procedure AfterConstruction; override;
  end;

{ T213_MembroEquipe }

  T213_MembroEquipe = class(TXMLNode, I213_MembroEquipe)
  protected
    { I213_MembroEquipe }
    function Get_CodigoProfissional: I213_Ct_identificacaoPrestadorEquipe;
    function Get_IdentificacaoProfissional: I213_Ct_profissionalExecutante;
    function Get_Cpf: WideString;
    function Get_PosicaoProfissional: WideString;
    procedure Set_Cpf(Value: WideString);
    procedure Set_PosicaoProfissional(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_identificacaoPrestadorEquipe }

  T213_Ct_identificacaoPrestadorEquipe = class(TXMLNode, I213_Ct_identificacaoPrestadorEquipe)
  protected
    { I213_Ct_identificacaoPrestadorEquipe }
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_DadosExecutante }

  T213_DadosExecutante = class(T213_Ct_profissionalExecutante, I213_DadosExecutante)
  protected
    { I213_DadosExecutante }
  end;

{ T213_Ct_identificacaoProfissionalCompl }

  T213_Ct_identificacaoProfissionalCompl = class(TXMLNode, I213_Ct_identificacaoProfissionalCompl)
  protected
    { I213_Ct_identificacaoProfissionalCompl }
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
  end;

{ T213_Ct_internacaoObstetrica }

  T213_Ct_internacaoObstetrica = class(TXMLNode, I213_Ct_internacaoObstetrica)
  protected
    { I213_Ct_internacaoObstetrica }
    function Get_EmGestacao: Boolean;
    function Get_Aborto: Boolean;
    function Get_TranstornoMaternoRelGravidez: Boolean;
    function Get_ComplicacaoPeriodoPuerperio: Boolean;
    function Get_AtendimentoRNSalaParto: Boolean;
    function Get_ComplicacaoNeonatal: Boolean;
    function Get_BaixoPeso: Boolean;
    function Get_PartoCesareo: Boolean;
    function Get_PartoNormal: Boolean;
    function Get_DeclaracoesNascidosVivos: I213_Ct_numeroDN;
    function Get_QtdNascidosVivosTermo: Integer;
    function Get_QtdNascidosMortos: Integer;
    function Get_QtdVivosPrematuros: Integer;
    function Get_ObitoMulher: WideString;
    procedure Set_EmGestacao(Value: Boolean);
    procedure Set_Aborto(Value: Boolean);
    procedure Set_TranstornoMaternoRelGravidez(Value: Boolean);
    procedure Set_ComplicacaoPeriodoPuerperio(Value: Boolean);
    procedure Set_AtendimentoRNSalaParto(Value: Boolean);
    procedure Set_ComplicacaoNeonatal(Value: Boolean);
    procedure Set_BaixoPeso(Value: Boolean);
    procedure Set_PartoCesareo(Value: Boolean);
    procedure Set_PartoNormal(Value: Boolean);
    procedure Set_QtdNascidosVivosTermo(Value: Integer);
    procedure Set_QtdNascidosMortos(Value: Integer);
    procedure Set_QtdVivosPrematuros(Value: Integer);
    procedure Set_ObitoMulher(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_numeroDN }

  T213_Ct_numeroDN = class(TXMLNode, I213_Ct_numeroDN)
  protected
    { I213_Ct_numeroDN }
    function Get_NumeroDN: WideString;
    procedure Set_NumeroDN(Value: WideString);
  end;

{ T213_LoteOdonto }

  T213_LoteOdonto = class(T213_Ct_loteOdonto, I213_LoteOdonto)
  protected
    { I213_LoteOdonto }
    function Get_TotalGeralLote: I213_Ct_totalDemoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_obitoNeonatal }

  T213_Ct_obitoNeonatal = class(TXMLNode, I213_Ct_obitoNeonatal)
  protected
    { I213_Ct_obitoNeonatal }
    function Get_QtdeobitoPrecoce: Integer;
    function Get_QtdeobitoTardio: Integer;
    procedure Set_QtdeobitoPrecoce(Value: Integer);
    procedure Set_QtdeobitoTardio(Value: Integer);
  end;

{ T213_Ct_OPMUtilizada }

  T213_Ct_OPMUtilizada = class(TXMLNode, I213_Ct_OPMUtilizada)
  protected
    { I213_Ct_OPMUtilizada }
    function Get_OPM: I213_OPMIdentificacao;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_OPMIdentificacao }

  T213_OPMIdentificacao = class(TXMLNodeCollection, I213_OPMIdentificacao)
  protected
    { I213_OPM }
    function Get_IdentificacaoOPM(Index: Integer): I213_IdentificacaoOPMUtilizada;
    function Add: I213_IdentificacaoOPMUtilizada;
    function Insert(const Index: Integer): I213_IdentificacaoOPMUtilizada;
  public
    procedure AfterConstruction; override;
  end;

{ T213_OPM }

  T213_OPM = class(TXMLNodeCollection, I213_OPM)
  protected
    { I213_OPM }
    function Get_IdentificacaoOPM(Index: Integer): I213_IdentificacaoOPM;
    function Add: I213_IdentificacaoOPM;
    function Insert(const Index: Integer): I213_IdentificacaoOPM;
  public
    procedure AfterConstruction; override;
  end;

{ T213_IdentificacaoOPMUtilizada }

  T213_IdentificacaoOPMUtilizada = class(TXMLNode, I213_IdentificacaoOPMUtilizada)
  protected
    { I213_OPM }
    function Get_OPM: I213_Ct_tabela;
    function Get_ValorUnitario: WideString;
    function Get_Quantidade: WideString;
    function Get_CodigoBarra: WideString;
    function Get_ValorTotal: WideString;
    function Get_Justificativa: WideString;
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_CodigoBarra(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_Justificativa(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_IdentificacaoOPM }

  T213_IdentificacaoOPM = class(TXMLNode, I213_IdentificacaoOPM)
  protected
    { I213_IdentificacaoOPM }
    function Get_OPM: I213_Ct_tabela;
    function Get_Quantidade: WideString;
    function Get_CodigoBarra: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Quantidade(Value: WideString);
    procedure Set_CodigoBarra(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_OPMUtilizadasRevisao }

  T213_Ct_OPMUtilizadasRevisao = class(TXMLNode, I213_Ct_OPMUtilizadasRevisao)
  protected
    { I213_Ct_OPMUtilizadasRevisao }
    function Get_OPMUtilizada: I213_OPMUtilizada;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_OPMUtilizada }

  T213_OPMUtilizada = class(TXMLNodeCollection, I213_OPMUtilizada)
  protected
    { I213_OPMUtilizada }
    function Get_OPM(Index: Integer): I213_OPM;
    function Add: I213_OPM;
    function Insert(const Index: Integer): I213_OPM;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_outrasDespesas }

  T213_Ct_outrasDespesas = class(TXMLNode, I213_Ct_outrasDespesas)
  private
    FDespesa: I213_DespesaList;
  protected
    { I213_Ct_outrasDespesas }
    function Get_Despesa: I213_DespesaList;
    function Get_TotalGeralOutrasDespesas: WideString;
    procedure Set_TotalGeralOutrasDespesas(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Despesa }

  T213_Despesa = class(TXMLNode, I213_Despesa)
  protected
    { I213_Despesa }
    function Get_IdentificadorDespesa: I213_Ct_tabela;
    function Get_TipoDespesa: WideString;
    function Get_DataRealizacao: WideString;
    function Get_HoraInicial: WideString;
    function Get_HoraFinal: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_TipoDespesa(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_HoraInicial(Value: WideString);
    procedure Set_HoraFinal(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_DespesaList }

  T213_DespesaList = class(TXMLNodeCollection, I213_DespesaList)
  protected
    { I213_DespesaList }
    function Add: I213_Despesa;
    function Insert(const Index: Integer): I213_Despesa;
    function Get_Item(Index: Integer): I213_Despesa;
  end;

{ T213_Ct_outrasDespesasRevisao }

  T213_Ct_outrasDespesasRevisao = class(TXMLNode, I213_Ct_outrasDespesasRevisao)
  private
    FItensDespesas: I213_ItensDespesasList;
  protected
    { I213_Ct_outrasDespesasRevisao }
    function Get_ItensDespesas: I213_ItensDespesasList;
    function Get_TotalGeralOutrasDespesas: WideString;
    procedure Set_TotalGeralOutrasDespesas(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_ItensDespesas }

  T213_ItensDespesas = class(TXMLNode, I213_ItensDespesas)
  protected
    { I213_ItensDespesas }
    function Get_TipoDespesa: WideString;
    function Get_DataRealizacao: WideString;
    function Get_Despesa: I213_Ct_tabela;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    function Get_Justificativa: WideString;
    procedure Set_TipoDespesa(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_Justificativa(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_ItensDespesasList }

  T213_ItensDespesasList = class(TXMLNodeCollection, I213_ItensDespesasList)
  protected
    { I213_ItensDespesasList }
    function Add: I213_ItensDespesas;
    function Insert(const Index: Integer): I213_ItensDespesas;
    function Get_Item(Index: Integer): I213_ItensDespesas;
  end;

{ T213_Ct_procedimentosRealizados }

  T213_Ct_procedimentosRealizados = class(TXMLNodeCollection, I213_Ct_procedimentosRealizados)
  protected
    { I213_Ct_procedimentosRealizados }
    function Get_ProcedimentoRealizado(Index: Integer): I213_ProcedimentoRealizado;
    function Add: I213_ProcedimentoRealizado;
    function Insert(const Index: Integer): I213_ProcedimentoRealizado;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_procedimentoOdontoRevisao }

  T213_Ct_procedimentoOdontoRevisao = class(TXMLNode, I213_Ct_procedimentoOdontoRevisao)
  protected
    { I213_Ct_procedimentoOdontoRevisao }
    function Get_ProcedimentoOdontologia: I213_ProcedimentoOdontologia;
    function Get_ValorTotal: WideString;
    function Get_QuantidadeTotalUS: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    function Get_JustificativaRevisao: WideString;
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_QuantidadeTotalUS(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    procedure Set_JustificativaRevisao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentoOdontologia }

  T213_ProcedimentoOdontologia = class(T213_Ct_procedimentoOdontologia, I213_ProcedimentoOdontologia)
  protected
    { I213_ProcedimentoOdontologia }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
  end;

{ T213_Ct_procedimentoRealizadoEquipe }

  T213_Ct_procedimentoRealizadoEquipe = class(TXMLNodeCollection, I213_Ct_procedimentoRealizadoEquipe)
  protected
    { I213_Ct_procedimentoRealizadoEquipe }
    function Get_Procedimentos(Index: Integer): I213_ProcedimentosEquipe;
    function Add: I213_ProcedimentosEquipe;
    function Insert(const Index: Integer): I213_ProcedimentosEquipe;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentosEquipe }

  T213_ProcedimentosEquipe = class(TXMLNode, I213_ProcedimentosEquipe)
  protected
    { I213_Procedimentos }
    function Get_Equipe: I213_Ct_identificacaoEquipe;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_procedimentoRevisao }

  T213_Ct_procedimentoRevisao = class(TXMLNodeCollection, I213_Ct_procedimentoRevisao)
  protected
    { I213_Ct_procedimentoRevisao }
    function Get_ProcedimentosRevisao(Index: Integer): I213_ProcedimentosRevisao;
    function Add: I213_ProcedimentosRevisao;
    function Insert(const Index: Integer): I213_ProcedimentosRevisao;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentosRevisao }

  T213_ProcedimentosRevisao = class(TXMLNode, I213_ProcedimentosRevisao)
  protected
    { I213_ProcedimentosRevisao }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    function Get_JustificativaRevisao: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_JustificativaRevisao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_situacaoDentes }

  T213_Ct_situacaoDentes = class(TXMLNode, I213_Ct_situacaoDentes)
  protected
    { I213_Ct_situacaoDentes }
    function Get_Dente: WideString;
    function Get_Obturado: Boolean;
    function Get_Careado: Boolean;
    function Get_Perdido: Boolean;
    procedure Set_Dente(Value: WideString);
    procedure Set_Obturado(Value: Boolean);
    procedure Set_Careado(Value: Boolean);
    procedure Set_Perdido(Value: Boolean);
  end;

{ T213_Ct_totaisOdonto }

  T213_Ct_totaisOdonto = class(TXMLNode, I213_Ct_totaisOdonto)
  protected
    { I213_Ct_totaisOdonto }
    function Get_ServicoExecutado: WideString;
    function Get_Taxas: WideString;
    function Get_Materiais: WideString;
    function Get_Medicamentos: WideString;
    function Get_TotalGeral: WideString;
    procedure Set_ServicoExecutado(Value: WideString);
    procedure Set_Taxas(Value: WideString);
    procedure Set_Materiais(Value: WideString);
    procedure Set_Medicamentos(Value: WideString);
    procedure Set_TotalGeral(Value: WideString);
  end;

{ T213_Ct_tratamenteOdontoRealizado }

  T213_Ct_tratamenteOdontoRealizado = class(TXMLNode, I213_Ct_tratamenteOdontoRealizado)
  protected
    { I213_Ct_tratamenteOdontoRealizado }
    function Get_Data: WideString;
    function Get_Procedimento: I213_Ct_tabela;
    function Get_Dente: WideString;
    function Get_Face: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_Dente(Value: WideString);
    procedure Set_Face(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_tratamentoOdontoSolicitado }

  T213_Ct_tratamentoOdontoSolicitado = class(TXMLNode, I213_Ct_tratamentoOdontoSolicitado)
  protected
    { I213_Ct_tratamentoOdontoSolicitado }
    function Get_Procedimento: I213_Ct_tabela;
    function Get_Dente: WideString;
    function Get_Face: WideString;
    procedure Set_Dente(Value: WideString);
    procedure Set_Face(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_valorTotalServicos }

  T213_Ct_valorTotalServicos = class(TXMLNode, I213_Ct_valorTotalServicos)
  protected
    { I213_Ct_valorTotalServicos }
    function Get_ServicosExecutados: WideString;
    function Get_Diarias: WideString;
    function Get_Taxas: WideString;
    function Get_Materiais: WideString;
    function Get_Medicamentos: WideString;
    function Get_Gases: WideString;
    function Get_TotalGeral: WideString;
    procedure Set_ServicosExecutados(Value: WideString);
    procedure Set_Diarias(Value: WideString);
    procedure Set_Taxas(Value: WideString);
    procedure Set_Materiais(Value: WideString);
    procedure Set_Medicamentos(Value: WideString);
    procedure Set_Gases(Value: WideString);
    procedure Set_TotalGeral(Value: WideString);
  end;

{ T213_Guias }

//  T213_Guias = class(T213_Ct_guias, I213_Guias)
//  protected
//    { I213_Guias }
//  end;

{ T213_GuiaFaturamento }

  T213_GuiaFaturamento = class(TXMLNode, I213_GuiaFaturamento)
  private
    FGuiaConsulta: I213_Ct_guiaConsultaList;
    FGuiaSP_SADT: I213_Ct_guiaSP_SADTList;
    FGuiaResumoInternacao: I213_Ct_guiaResumoInternacaoList;
    FGuiaHonorarioIndividual: I213_Ct_guiaHonorarioIndividualList;
    FGuiaOdontologia: I213_Ct_guiaOdontologiaList;
  protected
    { I213_GuiaFaturamento }
    function Get_GuiaConsulta: I213_Ct_guiaConsultaList;
    function Get_GuiaSP_SADT: I213_Ct_guiaSP_SADTList;
    function Get_GuiaResumoInternacao: I213_Ct_guiaResumoInternacaoList;
    function Get_GuiaHonorarioIndividual: I213_Ct_guiaHonorarioIndividualList;
    function Get_GuiaOdontologia: I213_Ct_guiaOdontologiaList;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaConsulta }

  T213_Ct_guiaConsulta = class(TXMLNode, I213_Ct_guiaConsulta)
  protected
    { I213_Ct_guiaConsulta }
    function Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_DadosContratado: I213_Ct_contratado;
    function Get_ProfissionalExecutante: I213_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I213_HipoteseDiagnostica;
    function Get_DadosAtendimento: I213_DadosAtendimento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_HipoteseDiagnostica }

  T213_HipoteseDiagnostica = class(T213_Ct_diagnosticoAtendimento, I213_HipoteseDiagnostica)
  protected
    { I213_HipoteseDiagnostica }
    function Get_DiagnosticoSecundario: I213_Ct_diagnosticosSecundarios;
  public
    procedure AfterConstruction; override;
  end;

{ T213_DadosAtendimento }

  T213_DadosAtendimento = class(T213_Ct_atendimentoConsulta, I213_DadosAtendimento)
  protected
    { I213_DadosAtendimento }
  end;

{ T213_Ct_guiaSP_SADT }

  T213_Ct_guiaSP_SADT = class(TXMLNode, I213_Ct_guiaSP_SADT)
  protected
    { I213_Ct_guiaSP_SADT }
    function Get_IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_PrestadorExecutante: I213_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoAtendimento: I213_Ct_diagnosticoAtendimento;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: WideString;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_OPMUtilizada: I213_Ct_OPMUtilizada;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_PrestadorExecutante }

  T213_PrestadorExecutante = class(T213_Ct_contratado, I213_PrestadorExecutante)
  protected
    { I213_PrestadorExecutante }
    function Get_ProfissionalExecutanteCompl: I213_ProfissionalExecutanteCompl;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProfissionalExecutanteCompl }

  T213_ProfissionalExecutanteCompl = class(T213_Ct_profissionalExecutante, I213_ProfissionalExecutanteCompl)
  protected
    { I213_ProfissionalExecutanteCompl }
    function Get_CodigoProfissionalCompl: I213_Ct_identificacaoProfissionalCompl;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaResumoInternacao }

  T213_Ct_guiaResumoInternacao = class(TXMLNode, I213_Ct_guiaResumoInternacao)
  protected
    { I213_Ct_guiaResumoInternacao }
    function Get_IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I213_Ct_contratado;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I213_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I213_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe;
    function Get_OPMUtilizadas: I213_Ct_OPMUtilizada;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaHonorarioIndividual }

  T213_Ct_guiaHonorarioIndividual = class(TXMLNode, I213_Ct_guiaHonorarioIndividual)
  protected
    { I213_Ct_guiaHonorarioIndividual }
    function Get_IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_Contratado: I213_Ct_contratado;
    function Get_ContratadoExecutante: I213_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_ContratadoExecutante }

  T213_ContratadoExecutante = class(T213_Ct_contratado, I213_ContratadoExecutante)
  protected
    { I213_ContratadoExecutante }
    function Get_IdentificacaoProfissional: I213_Ct_profissionalExecutante;
    function Get_PosicaoProfissional: WideString;
    function Get_TipoAcomodacao: WideString;
    procedure Set_PosicaoProfissional(Value: WideString);
    procedure Set_TipoAcomodacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentosExamesRealizados }

  T213_ProcedimentosExamesRealizados = class(T213_Ct_procedimentosRealizados, I213_ProcedimentosExamesRealizados)
  protected
    { I213_ProcedimentosExamesRealizados }
    function Get_TotalGeralHonorario: WideString;
    procedure Set_TotalGeralHonorario(Value: WideString);
  end;

{ T213_Ct_guiaOdontologia }

  T213_Ct_guiaOdontologia = class(TXMLNode, I213_Ct_guiaOdontologia)
  protected
    { I213_Ct_guiaOdontologia }
    function Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I213_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I213_DadosContratadoExecutante;
    function Get_ProcedimentosExecutados: I213_ProcedimentosExecutados;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_DadosAtendimento: I213_Ct_atendimentoOdontologia;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_DadosContratadoExecutante }

  T213_DadosContratadoExecutante = class(TXMLNode, I213_DadosContratadoExecutante)
  protected
    { I213_DadosContratadoExecutante }
    function Get_DadosContratado: I213_DadosContratado;
    function Get_DadosExecutante: I213_Ct_profissionalExecutante;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentosExecutados }

  T213_ProcedimentosExecutados = class(TXMLNode, I213_ProcedimentosExecutados)
  private
    FProcedimentoExecutado: I213_ProcedimentoExecutadoList;
  protected
    { I213_ProcedimentosExecutados }
    function Get_ProcedimentoExecutado: I213_ProcedimentoExecutadoList;
    function Get_QuantidadeTotalUS: WideString;
    function Get_ValorTotal: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    procedure Set_QuantidadeTotalUS(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentosExecutadosOdontoRevisao }

  T213_ProcedimentosExecutadosOdontoRevisao = class(TXMLNodeCollection, I213_ProcedimentosExecutadosOdontoRevisao)
  protected
    { I213_ProcedimentosExecutados }
    function Get_ProcedimentoExecutado(Index: Integer): I213_Ct_procedimentoOdontoRevisao;
    function Add: I213_Ct_procedimentoOdontoRevisao;
    function Insert(const Index: Integer): I213_Ct_procedimentoOdontoRevisao;
  public
    procedure AfterConstruction; override;
  end;

{ T213_ProcedimentoExecutado }

  T213_ProcedimentoExecutado = class(T213_Ct_procedimentoOdontologia, I213_ProcedimentoExecutado)
  protected
    { I213_ProcedimentoExecutado }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
  end;

{ T213_ProcedimentoExecutadoList }

  T213_ProcedimentoExecutadoList = class(TXMLNodeCollection, I213_ProcedimentoExecutadoList)
  protected
    { I213_ProcedimentoExecutadoList }
    function Add: I213_ProcedimentoExecutado;
    function Insert(const Index: Integer): I213_ProcedimentoExecutado;
    function Get_Item(Index: Integer): I213_ProcedimentoExecutado;
  end;

{ T213_GuiaRevisaoGlosa }

  T213_GuiaRevisaoGlosa = class(TXMLNode, I213_GuiaRevisaoGlosa)
  private
    FGuiaConsultaReapresentacao: I213_Ct_guiaConsultaReapresentacaoList;
    FGuiaSP_SADTReapresentacao: I213_Ct_guiaSP_SADTReapresentacaoList;
    FGuiaResumoInternacaoReapresentacao: I213_Ct_guiaResumoInternacaoReapresentacaoList;
    FGuiaHonorarioIndividualReapresentacao: I213_Ct_guiaHonorarioIndividualReapresentacaoList;
    FGuiaOdontologiaReapresentacao: I213_Ct_guiaTratamentoOdontologicoReapresentacaoList;
  protected
    { I213_GuiaRevisaoGlosa }
    function Get_GuiaConsultaReapresentacao: I213_Ct_guiaConsultaReapresentacaoList;
    function Get_GuiaSP_SADTReapresentacao: I213_Ct_guiaSP_SADTReapresentacaoList;
    function Get_GuiaResumoInternacaoReapresentacao: I213_Ct_guiaResumoInternacaoReapresentacaoList;
    function Get_GuiaHonorarioIndividualReapresentacao: I213_Ct_guiaHonorarioIndividualReapresentacaoList;
    function Get_GuiaOdontologiaReapresentacao: I213_Ct_guiaTratamentoOdontologicoReapresentacaoList;
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaConsultaReapresentacao }

  T213_Ct_guiaConsultaReapresentacao = class(TXMLNode, I213_Ct_guiaConsultaReapresentacao)
  protected
    { I213_Ct_guiaConsultaReapresentacao }
    function Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
    function Get_Beneficiario: I213_Ct_beneficiario;
    function Get_DadosContratado: I213_Ct_contratado;
    function Get_ProfissionalExecutante: I213_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I213_Ct_diagnosticoAtendimento;
    function Get_DadosAtendimento: I213_Ct_atendimentoConsultaReapr;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaSP_SADTReapresentacao }

  T213_Ct_guiaSP_SADTReapresentacao = class(TXMLNode, I213_Ct_guiaSP_SADTReapresentacao)
  private
    FProcedimentosRealizados: I213_Ct_procedimentoRevisaoList;
  protected
    { I213_Ct_guiaSP_SADTReapresentacao }
    function Get_IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_DadosSolicitante: I213_Ct_solicitante;
    function Get_PrestadorExecutante: I213_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoGuia: I213_Ct_diagnosticoAtendimento;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: WideString;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRevisaoList;
    function Get_OutrasDespesas: I213_Ct_outrasDespesasRevisao;
    function Get_OPMUtilizada: I213_Ct_OPMUtilizadasRevisao;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaResumoInternacaoReapresentacao }

  T213_Ct_guiaResumoInternacaoReapresentacao = class(TXMLNode, I213_Ct_guiaResumoInternacaoReapresentacao)
  protected
    { I213_Ct_guiaResumoInternacaoReapresentacao }
    function Get_IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I213_Ct_contratado;
    function Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I213_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I213_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I213_Ct_procedimentoRevisao;
    function Get_OPMUtilizadas: I213_Ct_OPMUtilizadasRevisao;
    function Get_OutrasDespesas: I213_Ct_outrasDespesasRevisao;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I213_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaHonorarioIndividualReapresentacao }

  T213_Ct_guiaHonorarioIndividualReapresentacao = class(TXMLNode, I213_Ct_guiaHonorarioIndividualReapresentacao)
  protected
    { I213_Ct_guiaHonorarioIndividualReapresentacao }
    function Get_IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I213_Ct_beneficiario;
    function Get_Contratado: I213_Ct_contratado;
    function Get_ContratadoExecutante: I213_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_Ct_guiaTratamentoOdontologicoReapresentacao }

  T213_Ct_guiaTratamentoOdontologicoReapresentacao = class(TXMLNode, I213_Ct_guiaTratamentoOdontologicoReapresentacao)
  protected
    { I213_Ct_guiaTratamentoOdontologicoReapresentacao }
    function Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I213_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I213_DadosContratadoExecutante;
    function Get_OutrasDespesas: I213_Ct_outrasDespesas;
    function Get_DadosAtendimento: I213_Ct_atendimentoOdontologia;
    function Get_ProcedimentosExecutados: I213_ProcedimentosExecutadosOdontoRevisao;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T213_St_tipoGlosaList }

  T213_St_tipoGlosaList = class(TXMLNodeCollection, I213_St_tipoGlosaList)
  protected
    { I213_St_tipoGlosaList }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
  end;

{ I213_Ct_guiaSolicInternacaoList }

  I213_Ct_guiaSolicInternacaoList = interface(IXMLNodeCollection)
    ['{30B5CDDD-65FA-4AAF-BC46-F34125B171C4}']
    { Methods & Properties }
    function Add: I213_Ct_guiaSolicInternacao;
    function Insert(const Index: Integer): I213_Ct_guiaSolicInternacao;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicInternacao;
    property Items[Index: Integer]: I213_Ct_guiaSolicInternacao read Get_Item; default;
  end;

{ T213_Ct_guiaSolicInternacaoList }

  T213_Ct_guiaSolicInternacaoList = class(TXMLNodeCollection, I213_Ct_guiaSolicInternacaoList)
  protected
    { I213_Ct_guiaSolicInternacaoList }
    function Add: I213_Ct_guiaSolicInternacao;
    function Insert(const Index: Integer): I213_Ct_guiaSolicInternacao;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicInternacao;
  end;

{ I213_Ct_diagnosticosSecundariosList }

  I213_Ct_diagnosticosSecundariosList = interface(IXMLNodeCollection)
    ['{107EE3B3-C445-4309-BA8F-07B30F3CEF8B}']
    { Methods & Properties }
    function Add: I213_Ct_diagnosticosSecundarios;
    function Insert(const Index: Integer): I213_Ct_diagnosticosSecundarios;
    function Get_Item(Index: Integer): I213_Ct_diagnosticosSecundarios;
    property Items[Index: Integer]: I213_Ct_diagnosticosSecundarios read Get_Item; default;
  end;

{ T213_Ct_diagnosticosSecundariosList }

  T213_Ct_diagnosticosSecundariosList = class(TXMLNodeCollection, I213_Ct_diagnosticosSecundariosList)
  protected
    { I213_Ct_diagnosticosSecundariosList }
    function Add: I213_Ct_diagnosticosSecundarios;
    function Insert(const Index: Integer): I213_Ct_diagnosticosSecundarios;
    function Get_Item(Index: Integer): I213_Ct_diagnosticosSecundarios;
  end;

{ I213_Ct_guiaSolicitacaoSP_SADTList }

  I213_Ct_guiaSolicitacaoSP_SADTList = interface(IXMLNodeCollection)
    ['{765733D1-9BB2-446D-8D0E-65B2ABB1AB21}']
    { Methods & Properties }
    function Add: I213_Ct_guiaSolicitacaoSP_SADT;
    function Insert(const Index: Integer): I213_Ct_guiaSolicitacaoSP_SADT;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoSP_SADT;
    property Items[Index: Integer]: I213_Ct_guiaSolicitacaoSP_SADT read Get_Item; default;
  end;

{ T213_Ct_guiaSolicitacaoSP_SADTList }

  T213_Ct_guiaSolicitacaoSP_SADTList = class(TXMLNodeCollection, I213_Ct_guiaSolicitacaoSP_SADTList)
  protected
    { I213_Ct_guiaSolicitacaoSP_SADTList }
    function Add: I213_Ct_guiaSolicitacaoSP_SADT;
    function Insert(const Index: Integer): I213_Ct_guiaSolicitacaoSP_SADT;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoSP_SADT;
  end;

{ I213_Ct_guiaSolicitacaoOdontoList }

  I213_Ct_guiaSolicitacaoOdontoList = interface(IXMLNodeCollection)
    ['{F4853157-64AF-4266-9307-52A1DFCC26F7}']
    { Methods & Properties }
    function Add: I213_Ct_guiaSolicitacaoOdonto;
    function Insert(const Index: Integer): I213_Ct_guiaSolicitacaoOdonto;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoOdonto;
    property Items[Index: Integer]: I213_Ct_guiaSolicitacaoOdonto read Get_Item; default;
  end;

{ T213_Ct_guiaSolicitacaoOdontoList }

  T213_Ct_guiaSolicitacaoOdontoList = class(TXMLNodeCollection, I213_Ct_guiaSolicitacaoOdontoList)
  protected
    { I213_Ct_guiaSolicitacaoOdontoList }
    function Add: I213_Ct_guiaSolicitacaoOdonto;
    function Insert(const Index: Integer): I213_Ct_guiaSolicitacaoOdonto;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoOdonto;
  end;

{ I213_Ct_guiaSolicitacaoProrrogacaoList }

  I213_Ct_guiaSolicitacaoProrrogacaoList = interface(IXMLNodeCollection)
    ['{19511F06-612B-44EC-99B5-8AFAF69F925F}']
    { Methods & Properties }
    function Add: I213_Ct_guiaSolicitacaoProrrogacao;
    function Insert(const Index: Integer): I213_Ct_guiaSolicitacaoProrrogacao;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoProrrogacao;
    property Items[Index: Integer]: I213_Ct_guiaSolicitacaoProrrogacao read Get_Item; default;
  end;

{ T213_Ct_guiaSolicitacaoProrrogacaoList }

  T213_Ct_guiaSolicitacaoProrrogacaoList = class(TXMLNodeCollection, I213_Ct_guiaSolicitacaoProrrogacaoList)
  protected
    { I213_Ct_guiaSolicitacaoProrrogacaoList }
    function Add: I213_Ct_guiaSolicitacaoProrrogacao;
    function Insert(const Index: Integer): I213_Ct_guiaSolicitacaoProrrogacao;
    function Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoProrrogacao;
  end;

{ I213_Ct_procedimentoRevisaoList }

  I213_Ct_procedimentoRevisaoList = interface(IXMLNodeCollection)
    ['{F016B6C0-9761-40E1-A02E-0976F7EFA04B}']
    { Methods & Properties }
    function Add: I213_Ct_procedimentoRevisao;
    function Insert(const Index: Integer): I213_Ct_procedimentoRevisao;
    function Get_Item(Index: Integer): I213_Ct_procedimentoRevisao;
    property Items[Index: Integer]: I213_Ct_procedimentoRevisao read Get_Item; default;
  end;

{ T213_Ct_procedimentoRevisaoList }

  T213_Ct_procedimentoRevisaoList = class(TXMLNodeCollection, I213_Ct_procedimentoRevisaoList)
  protected
    { I213_Ct_procedimentoRevisaoList }
    function Add: I213_Ct_procedimentoRevisao;
    function Insert(const Index: Integer): I213_Ct_procedimentoRevisao;
    function Get_Item(Index: Integer): I213_Ct_procedimentoRevisao;
  end;

{ I213_Ct_guiaSP_SADTReapresentacaoList }

  I213_Ct_guiaSP_SADTReapresentacaoList = interface(IXMLNodeCollection)
    ['{7A6252D9-C713-4F87-8D6E-5E3AB2D859F6}']
    { Methods & Properties }
    function Add: I213_Ct_guiaSP_SADTReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaSP_SADTReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaSP_SADTReapresentacao;
    property Items[Index: Integer]: I213_Ct_guiaSP_SADTReapresentacao read Get_Item; default;
  end;

{ T213_Ct_guiaSP_SADTReapresentacaoList }

  T213_Ct_guiaSP_SADTReapresentacaoList = class(TXMLNodeCollection, I213_Ct_guiaSP_SADTReapresentacaoList)
  protected
    { I213_Ct_guiaSP_SADTReapresentacaoList }
    function Add: I213_Ct_guiaSP_SADTReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaSP_SADTReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaSP_SADTReapresentacao;
  end;

{ I213_Ct_guiaConsultaReapresentacaoList }

  I213_Ct_guiaConsultaReapresentacaoList = interface(IXMLNodeCollection)
    ['{5521B0B1-5F94-404E-B8E6-F022BCCB4B2B}']
    { Methods & Properties }
    function Add: I213_Ct_guiaConsultaReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaConsultaReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaConsultaReapresentacao;
    property Items[Index: Integer]: I213_Ct_guiaConsultaReapresentacao read Get_Item; default;
  end;

{ T213_Ct_guiaConsultaReapresentacaoList }

  T213_Ct_guiaConsultaReapresentacaoList = class(TXMLNodeCollection, I213_Ct_guiaConsultaReapresentacaoList)
  protected
    { I213_Ct_guiaConsultaReapresentacaoList }
    function Add: I213_Ct_guiaConsultaReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaConsultaReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaConsultaReapresentacao;
  end;

{ I213_Ct_guiaConsultaList }

  I213_Ct_guiaConsultaList = interface(IXMLNodeCollection)
    ['{2A24BDA8-8449-4AE9-B3BA-2D1E1FC540A8}']
    { Methods & Properties }
    function Add: I213_Ct_guiaConsulta;
    function Insert(const Index: Integer): I213_Ct_guiaConsulta;
    function Get_Item(Index: Integer): I213_Ct_guiaConsulta;
    property Items[Index: Integer]: I213_Ct_guiaConsulta read Get_Item; default;
  end;

{ T213_Ct_guiaConsultaList }

  T213_Ct_guiaConsultaList = class(TXMLNodeCollection, I213_Ct_guiaConsultaList)
  protected
    { I213_Ct_guiaConsultaList }
    function Add: I213_Ct_guiaConsulta;
    function Insert(const Index: Integer): I213_Ct_guiaConsulta;
    function Get_Item(Index: Integer): I213_Ct_guiaConsulta;
  end;

{ I213_Ct_guiaSP_SADTList }

  I213_Ct_guiaSP_SADTList = interface(IXMLNodeCollection)
    ['{C51EB766-837E-4B9B-BF66-194BF505C280}']
    { Methods & Properties }
    function Add: I213_Ct_guiaSP_SADT;
    function Insert(const Index: Integer): I213_Ct_guiaSP_SADT;
    function Get_Item(Index: Integer): I213_Ct_guiaSP_SADT;
    property Items[Index: Integer]: I213_Ct_guiaSP_SADT read Get_Item; default;
  end;

{ T213_Ct_guiaSP_SADTList }

  T213_Ct_guiaSP_SADTList = class(TXMLNodeCollection, I213_Ct_guiaSP_SADTList)
  protected
    { I213_Ct_guiaSP_SADTList }
    function Add: I213_Ct_guiaSP_SADT;
    function Insert(const Index: Integer): I213_Ct_guiaSP_SADT;
    function Get_Item(Index: Integer): I213_Ct_guiaSP_SADT;
  end;

{ I213_Ct_guiaResumoInternacaoList }

  I213_Ct_guiaResumoInternacaoList = interface(IXMLNodeCollection)
    ['{45E11468-7621-4F46-B715-C2724D72EDD3}']
    { Methods & Properties }
    function Add: I213_Ct_guiaResumoInternacao;
    function Insert(const Index: Integer): I213_Ct_guiaResumoInternacao;
    function Get_Item(Index: Integer): I213_Ct_guiaResumoInternacao;
    property Items[Index: Integer]: I213_Ct_guiaResumoInternacao read Get_Item; default;
  end;

{ T213_Ct_guiaResumoInternacaoList }

  T213_Ct_guiaResumoInternacaoList = class(TXMLNodeCollection, I213_Ct_guiaResumoInternacaoList)
  protected
    { I213_Ct_guiaResumoInternacaoList }
    function Add: I213_Ct_guiaResumoInternacao;
    function Insert(const Index: Integer): I213_Ct_guiaResumoInternacao;
    function Get_Item(Index: Integer): I213_Ct_guiaResumoInternacao;
  end;

{ I213_Ct_guiaHonorarioIndividualList }

  I213_Ct_guiaHonorarioIndividualList = interface(IXMLNodeCollection)
    ['{2EC5B35A-43EC-4232-9172-2FC0374358B2}']
    { Methods & Properties }
    function Add: I213_Ct_guiaHonorarioIndividual;
    function Insert(const Index: Integer): I213_Ct_guiaHonorarioIndividual;
    function Get_Item(Index: Integer): I213_Ct_guiaHonorarioIndividual;
    property Items[Index: Integer]: I213_Ct_guiaHonorarioIndividual read Get_Item; default;
  end;

{ T213_Ct_guiaHonorarioIndividualList }

  T213_Ct_guiaHonorarioIndividualList = class(TXMLNodeCollection, I213_Ct_guiaHonorarioIndividualList)
  protected
    { I213_Ct_guiaHonorarioIndividualList }
    function Add: I213_Ct_guiaHonorarioIndividual;
    function Insert(const Index: Integer): I213_Ct_guiaHonorarioIndividual;
    function Get_Item(Index: Integer): I213_Ct_guiaHonorarioIndividual;
  end;

{ I213_Ct_guiaOdontologiaList }

  I213_Ct_guiaOdontologiaList = interface(IXMLNodeCollection)
    ['{5545592E-CDDA-4A13-BD49-88179AF1BBD4}']
    { Methods & Properties }
    function Add: I213_Ct_guiaOdontologia;
    function Insert(const Index: Integer): I213_Ct_guiaOdontologia;
    function Get_Item(Index: Integer): I213_Ct_guiaOdontologia;
    property Items[Index: Integer]: I213_Ct_guiaOdontologia read Get_Item; default;
  end;

{ T213_Ct_guiaOdontologiaList }

  T213_Ct_guiaOdontologiaList = class(TXMLNodeCollection, I213_Ct_guiaOdontologiaList)
  protected
    { I213_Ct_guiaOdontologiaList }
    function Add: I213_Ct_guiaOdontologia;
    function Insert(const Index: Integer): I213_Ct_guiaOdontologia;
    function Get_Item(Index: Integer): I213_Ct_guiaOdontologia;
  end;

{ I213_Ct_guiaResumoInternacaoReapresentacaoList }

  I213_Ct_guiaResumoInternacaoReapresentacaoList = interface(IXMLNodeCollection)
    ['{3769FB99-F58A-4004-A251-A830A540DC72}']
    { Methods & Properties }
    function Add: I213_Ct_guiaResumoInternacaoReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaResumoInternacaoReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaResumoInternacaoReapresentacao;
    property Items[Index: Integer]: I213_Ct_guiaResumoInternacaoReapresentacao read Get_Item; default;
  end;

{ T213_Ct_guiaResumoInternacaoReapresentacaoList }

  T213_Ct_guiaResumoInternacaoReapresentacaoList = class(TXMLNodeCollection, I213_Ct_guiaResumoInternacaoReapresentacaoList)
  protected
    { I213_Ct_guiaResumoInternacaoReapresentacaoList }
    function Add: I213_Ct_guiaResumoInternacaoReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaResumoInternacaoReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaResumoInternacaoReapresentacao;
  end;

{ I213_Ct_guiaHonorarioIndividualReapresentacaoList }

  I213_Ct_guiaHonorarioIndividualReapresentacaoList = interface(IXMLNodeCollection)
    ['{E92514D8-F229-4FB0-95DB-FDB6F6012907}']
    { Methods & Properties }
    function Add: I213_Ct_guiaHonorarioIndividualReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaHonorarioIndividualReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaHonorarioIndividualReapresentacao;
    property Items[Index: Integer]: I213_Ct_guiaHonorarioIndividualReapresentacao read Get_Item; default;
  end;

{ T213_Ct_guiaHonorarioIndividualReapresentacaoList }

  T213_Ct_guiaHonorarioIndividualReapresentacaoList = class(TXMLNodeCollection, I213_Ct_guiaHonorarioIndividualReapresentacaoList)
  protected
    { I213_Ct_guiaHonorarioIndividualReapresentacaoList }
    function Add: I213_Ct_guiaHonorarioIndividualReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaHonorarioIndividualReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaHonorarioIndividualReapresentacao;
  end;

{ I213_Ct_guiaTratamentoOdontologicoReapresentacaoList }

  I213_Ct_guiaTratamentoOdontologicoReapresentacaoList = interface(IXMLNodeCollection)
    ['{A8B5ADFD-9270-4608-A036-1A101AE11500}']
    { Methods & Properties }
    function Add: I213_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaTratamentoOdontologicoReapresentacao;
    property Items[Index: Integer]: I213_Ct_guiaTratamentoOdontologicoReapresentacao read Get_Item; default;
  end;

{ T213_Ct_guiaTratamentoOdontologicoReapresentacaoList }

  T213_Ct_guiaTratamentoOdontologicoReapresentacaoList = class(TXMLNodeCollection, I213_Ct_guiaTratamentoOdontologicoReapresentacaoList)
  protected
    { I213_Ct_guiaTratamentoOdontologicoReapresentacaoList }
    function Add: I213_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Insert(const Index: Integer): I213_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Get_Item(Index: Integer): I213_Ct_guiaTratamentoOdontologicoReapresentacao;
  end;

{ Global Functions }

function GetmensagemTISS(Doc: IXMLDocument): I213_MensagemTISS;
function LoadmensagemTISS(const FileName: WideString): I213_MensagemTISS;
function NewmensagemTISS: I213_MensagemTISS;

const
  TargetNamespace = 'http://www.ans.gov.br/padroes/tiss/schemas';

implementation

{ Global Functions }

function GetmensagemTISS(Doc: IXMLDocument): I213_MensagemTISS;
begin
  Result := Doc.GetDocBinding('ans:mensagemTISS', T213_MensagemTISS, TargetNamespace) as I213_MensagemTISS;

  Doc.Version := '1.0';
  Doc.Encoding := 'iso-8859-1';
end;

function LoadmensagemTISS(const FileName: WideString): I213_MensagemTISS;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('mensagemTISS', T213_MensagemTISS, TargetNamespace) as I213_MensagemTISS;
end;

function NewmensagemTISS: I213_MensagemTISS;
begin
  Result := NewXMLDocument.GetDocBinding('mensagemTISS', T213_MensagemTISS, TargetNamespace) as I213_MensagemTISS;
end;

{ T213_MensagemTISS }

procedure T213_MensagemTISS.AfterConstruction;
begin
  RegisterChildNode('cabecalho', T213_CabecalhoTransacao);
  RegisterChildNode('operadoraParaPrestador', T213_OperadoraParaPrestador);
  RegisterChildNode('prestadorParaOperadora', T213_PrestadorParaOperadora);
  RegisterChildNode('epilogo', T213_Epilogo);
  inherited;
end;

function T213_MensagemTISS.Get_Cabecalho: I213_CabecalhoTransacao;
begin
  Result := ChildNodes['cabecalho'] as I213_CabecalhoTransacao;
end;

function T213_MensagemTISS.Get_OperadoraParaPrestador: I213_OperadoraParaPrestador;
begin
  Result := ChildNodes['operadoraParaPrestador'] as I213_OperadoraParaPrestador;
end;

function T213_MensagemTISS.Get_PrestadorParaOperadora: I213_PrestadorParaOperadora;
begin
  Result := ChildNodes['prestadorParaOperadora'] as I213_PrestadorParaOperadora;
end;

function T213_MensagemTISS.Get_Epilogo: I213_Epilogo;
begin
  Result := ChildNodes['epilogo'] as I213_Epilogo;
end;

{ T213_CabecalhoTransacao }

procedure T213_CabecalhoTransacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoTransacao', T213_IdentificacaoTransacao);
  RegisterChildNode('falhaNegocio', T213_FalhaNegocio);
  RegisterChildNode('origem', T213_Origem);
  RegisterChildNode('destino', T213_Destino);
  inherited;
end;

function T213_CabecalhoTransacao.Get_IdentificacaoTransacao: I213_IdentificacaoTransacao;
begin
  Result := ChildNodes['identificacaoTransacao'] as I213_IdentificacaoTransacao;
end;

function T213_CabecalhoTransacao.Get_FalhaNegocio: I213_FalhaNegocio;
begin
  Result := ChildNodes['falhaNegocio'] as I213_FalhaNegocio;
end;

function T213_CabecalhoTransacao.Get_Origem: I213_Origem;
begin
  Result := ChildNodes['origem'] as I213_Origem;
end;

function T213_CabecalhoTransacao.Get_Destino: I213_Destino;
begin
  Result := ChildNodes['destino'] as I213_Destino;
end;

function T213_CabecalhoTransacao.Get_VersaoPadrao: WideString;
begin
  Result := ChildNodes['versaoPadrao'].Text;
end;

procedure T213_CabecalhoTransacao.Set_VersaoPadrao(Value: WideString);
begin
  ChildNodes['versaoPadrao'].NodeValue := Value;
end;

{ T213_IdentificacaoTransacao }

function T213_IdentificacaoTransacao.Get_TipoTransacao: WideString;
begin
  Result := ChildNodes['tipoTransacao'].Text;
end;

procedure T213_IdentificacaoTransacao.Set_TipoTransacao(Value: WideString);
begin
  ChildNodes['tipoTransacao'].NodeValue := Value;
end;

function T213_IdentificacaoTransacao.Get_SequencialTransacao: Integer;
begin
  Result := ChildNodes['sequencialTransacao'].NodeValue;
end;

procedure T213_IdentificacaoTransacao.Set_SequencialTransacao(Value: Integer);
begin
  ChildNodes['sequencialTransacao'].NodeValue := Value;
end;

function T213_IdentificacaoTransacao.Get_DataRegistroTransacao: WideString;
begin
  Result := ChildNodes['dataRegistroTransacao'].Text;
end;

procedure T213_IdentificacaoTransacao.Set_DataRegistroTransacao(Value: WideString);
begin
  ChildNodes['dataRegistroTransacao'].NodeValue := Value;
end;

function T213_IdentificacaoTransacao.Get_HoraRegistroTransacao: WideString;
begin
  Result := ChildNodes['horaRegistroTransacao'].Text;
end;

procedure T213_IdentificacaoTransacao.Set_HoraRegistroTransacao(Value: WideString);
begin
  ChildNodes['horaRegistroTransacao'].NodeValue := Value;
end;

{ T213_Ct_motivoGlosa }

function T213_Ct_motivoGlosa.Get_CodigoGlosa: WideString;
begin
  Result := ChildNodes['codigoGlosa'].Text;
end;

procedure T213_Ct_motivoGlosa.Set_CodigoGlosa(Value: WideString);
begin
  ChildNodes['codigoGlosa'].NodeValue := Value;
end;

function T213_Ct_motivoGlosa.Get_DescricaoGlosa: WideString;
begin
  Result := ChildNodes['descricaoGlosa'].Text;
end;

procedure T213_Ct_motivoGlosa.Set_DescricaoGlosa(Value: WideString);
begin
  ChildNodes['descricaoGlosa'].NodeValue := Value;
end;

{ T213_Ct_motivoGlosaList }

function T213_Ct_motivoGlosaList.Add: I213_Ct_motivoGlosa;
begin
  Result := AddItem(-1) as I213_Ct_motivoGlosa;
end;

function T213_Ct_motivoGlosaList.Insert(const Index: Integer): I213_Ct_motivoGlosa;
begin
  Result := AddItem(Index) as I213_Ct_motivoGlosa;
end;
function T213_Ct_motivoGlosaList.Get_Item(Index: Integer): I213_Ct_motivoGlosa;
begin
  Result := List[Index] as I213_Ct_motivoGlosa;
end;

{ T213_Origem }

procedure T213_Origem.AfterConstruction;
begin
  RegisterChildNode('codigoPrestadorNaOperadora', T213_Ct_identificacaoPrestadorExecutante);
  inherited;
end;

function T213_Origem.Get_CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'] as I213_Ct_identificacaoPrestadorExecutante;
end;

function T213_Origem.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Origem.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

{ T213_Ct_identificacaoPrestadorExecutante }

function T213_Ct_identificacaoPrestadorExecutante.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T213_Ct_identificacaoPrestadorExecutante.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function T213_Ct_identificacaoPrestadorExecutante.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure T213_Ct_identificacaoPrestadorExecutante.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function T213_Ct_identificacaoPrestadorExecutante.Get_CodigoPrestadorNaOperadora: WideString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure T213_Ct_identificacaoPrestadorExecutante.Set_CodigoPrestadorNaOperadora(Value: WideString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

{ T213_Destino }

procedure T213_Destino.AfterConstruction;
begin
  RegisterChildNode('codigoPrestadorNaOperadora', T213_Ct_identificacaoPrestadorExecutante);
  inherited;
end;

function T213_Destino.Get_CodigoPrestadorNaOperadora: I213_Ct_identificacaoPrestadorExecutante;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'] as I213_Ct_identificacaoPrestadorExecutante;
end;

function T213_Destino.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Destino.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

{ T213_OperadoraParaPrestador }

procedure T213_OperadoraParaPrestador.AfterConstruction;
begin
  RegisterChildNode('protocoloRecebimento', T213_Ct_protocoloRecebimento);
  RegisterChildNode('demonstrativosRetorno', T213_DemonstrativosRetorno);
  RegisterChildNode('situacaoProtocolo', T213_Ct_StatusProtocolo);
  RegisterChildNode('autorizacaoServico', T213_AutorizacaoServico);
  RegisterChildNode('situacaoAutorizacao', T213_Ct_situacaoAutorizacao);
  RegisterChildNode('respostaElegibilidade', T213_Ct_retornoElegibilidade);
  RegisterChildNode('reciboCancelaGuia', T213_Ct_reciboCancelaGuia);
  FAutorizacaoServico := CreateCollection(T213_AutorizacaoServicoList, I213_AutorizacaoServico, 'autorizacaoServico') as I213_AutorizacaoServicoList;
  inherited;
end;

function T213_OperadoraParaPrestador.Get_ProtocoloRecebimento: I213_Ct_protocoloRecebimento;
begin
  Result := ChildNodes['protocoloRecebimento'] as I213_Ct_protocoloRecebimento;
end;

function T213_OperadoraParaPrestador.Get_DemonstrativosRetorno: I213_DemonstrativosRetorno;
begin
  Result := ChildNodes['demonstrativosRetorno'] as I213_DemonstrativosRetorno;
end;

function T213_OperadoraParaPrestador.Get_SituacaoProtocolo: I213_Ct_StatusProtocolo;
begin
  Result := ChildNodes['situacaoProtocolo'] as I213_Ct_StatusProtocolo;
end;

function T213_OperadoraParaPrestador.Get_AutorizacaoServico: I213_AutorizacaoServicoList;
begin
  Result := FAutorizacaoServico;
end;

function T213_OperadoraParaPrestador.Get_SituacaoAutorizacao: I213_Ct_situacaoAutorizacao;
begin
  Result := ChildNodes['situacaoAutorizacao'] as I213_Ct_situacaoAutorizacao;
end;

function T213_OperadoraParaPrestador.Get_RespostaElegibilidade: I213_Ct_retornoElegibilidade;
begin
  Result := ChildNodes['respostaElegibilidade'] as I213_Ct_retornoElegibilidade;
end;

function T213_OperadoraParaPrestador.Get_ReciboCancelaGuia: I213_Ct_reciboCancelaGuia;
begin
  Result := ChildNodes['reciboCancelaGuia'] as I213_Ct_reciboCancelaGuia;
end;

{ T213_Ct_protocoloRecebimento }

procedure T213_Ct_protocoloRecebimento.AfterConstruction;
begin
  RegisterChildNode('dadosOperadora', T213_Ct_identificacaoOperadora);
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  RegisterChildNode('mensagemDetalheProtocolo', T213_Ct_detalheProtocolo);
  inherited;
end;

function T213_Ct_protocoloRecebimento.Get_DadosOperadora: I213_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['dadosOperadora'] as I213_Ct_identificacaoOperadora;
end;

function T213_Ct_protocoloRecebimento.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_protocoloRecebimento.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T213_Ct_protocoloRecebimento.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T213_Ct_protocoloRecebimento.Get_NumeroLote: WideString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure T213_Ct_protocoloRecebimento.Set_NumeroLote(Value: WideString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T213_Ct_protocoloRecebimento.Get_MensagemDetalheProtocolo: I213_Ct_detalheProtocolo;
begin
  Result := ChildNodes['mensagemDetalheProtocolo'] as I213_Ct_detalheProtocolo;
end;

function T213_Ct_protocoloRecebimento.Get_NumeroProtocoloRecebimento: WideString;
begin
  Result := ChildNodes['numeroProtocoloRecebimento'].Text;
end;

procedure T213_Ct_protocoloRecebimento.Set_NumeroProtocoloRecebimento(Value: WideString);
begin
  ChildNodes['numeroProtocoloRecebimento'].NodeValue := Value;
end;

function T213_Ct_protocoloRecebimento.Get_MensagemErro: WideString;
begin
  Result := ChildNodes['mensagemErro'].Text;
end;

procedure T213_Ct_protocoloRecebimento.Set_MensagemErro(Value: WideString);
begin
  ChildNodes['mensagemErro'].NodeValue := Value;
end;

{ T213_Ct_identificacaoOperadora }

function T213_Ct_identificacaoOperadora.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Ct_identificacaoOperadora.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T213_Ct_identificacaoOperadora.Get_NomeOperadora: WideString;
begin
  Result := ChildNodes['nomeOperadora'].Text;
end;

procedure T213_Ct_identificacaoOperadora.Set_NomeOperadora(Value: WideString);
begin
  ChildNodes['nomeOperadora'].NodeValue := Value;
end;

function T213_Ct_identificacaoOperadora.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T213_Ct_identificacaoOperadora.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

{ T213_Ct_contratado }

procedure T213_Ct_contratado.AfterConstruction;
begin
  RegisterChildNode('identificacao', T213_Ct_identificacaoPrestadorExecutante);
  RegisterChildNode('enderecoContratado', T213_Ct_endereco);
  inherited;
end;

function T213_Ct_contratado.Get_Identificacao: I213_Ct_identificacaoPrestadorExecutante;
begin
  Result := ChildNodes['identificacao'] as I213_Ct_identificacaoPrestadorExecutante;
end;

function T213_Ct_contratado.Get_NomeContratado: WideString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure T213_Ct_contratado.Set_NomeContratado(Value: WideString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function T213_Ct_contratado.Get_EnderecoContratado: I213_Ct_endereco;
begin
  Result := ChildNodes['enderecoContratado'] as I213_Ct_endereco;
end;

function T213_Ct_contratado.Get_NumeroCNES: WideString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure T213_Ct_contratado.Set_NumeroCNES(Value: WideString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ T213_Ct_endereco }

function T213_Ct_endereco.Get_TipoLogradouro: WideString;
begin
  Result := ChildNodes['tipoLogradouro'].Text;
end;

procedure T213_Ct_endereco.Set_TipoLogradouro(Value: WideString);
begin
  ChildNodes['tipoLogradouro'].NodeValue := Value;
end;

function T213_Ct_endereco.Get_Logradouro: WideString;
begin
  Result := ChildNodes['logradouro'].Text;
end;

procedure T213_Ct_endereco.Set_Logradouro(Value: WideString);
begin
  ChildNodes['logradouro'].NodeValue := Value;
end;

function T213_Ct_endereco.Get_Numero: WideString;
begin
  Result := ChildNodes['numero'].Text;
end;

procedure T213_Ct_endereco.Set_Numero(Value: WideString);
begin
  ChildNodes['numero'].NodeValue := Value;
end;

function T213_Ct_endereco.Get_Complemento: WideString;
begin
  Result := ChildNodes['complemento'].Text;
end;

procedure T213_Ct_endereco.Set_Complemento(Value: WideString);
begin
  ChildNodes['complemento'].NodeValue := Value;
end;

function T213_Ct_endereco.Get_CodigoIBGEMunicipio: WideString;
begin
  Result := ChildNodes['codigoIBGEMunicipio'].Text;
end;

procedure T213_Ct_endereco.Set_CodigoIBGEMunicipio(Value: WideString);
begin
  ChildNodes['codigoIBGEMunicipio'].NodeValue := Value;
end;

function T213_Ct_endereco.Get_Municipio: WideString;
begin
  Result := ChildNodes['municipio'].Text;
end;

procedure T213_Ct_endereco.Set_Municipio(Value: WideString);
begin
  ChildNodes['municipio'].NodeValue := Value;
end;

function T213_Ct_endereco.Get_CodigoUF: WideString;
begin
  Result := ChildNodes['codigoUF'].Text;
end;

procedure T213_Ct_endereco.Set_CodigoUF(Value: WideString);
begin
  ChildNodes['codigoUF'].NodeValue := Value;
end;

function T213_Ct_endereco.Get_Cep: WideString;
begin
  Result := ChildNodes['cep'].Text;
end;

procedure T213_Ct_endereco.Set_Cep(Value: WideString);
begin
  ChildNodes['cep'].NodeValue := Value;
end;

{ T213_Ct_detalheProtocolo }

procedure T213_Ct_detalheProtocolo.AfterConstruction;
begin
  RegisterChildNode('codigoGlosaProtocolo', T213_CodigoGlosaProtocolo);
  RegisterChildNode('guias', T213_Guias);
  inherited;
end;

function T213_Ct_detalheProtocolo.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T213_Ct_detalheProtocolo.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T213_Ct_detalheProtocolo.Get_ValorProtocolo: WideString;
begin
  Result := ChildNodes['valorProtocolo'].Text;
end;

procedure T213_Ct_detalheProtocolo.Set_ValorProtocolo(Value: WideString);
begin
  ChildNodes['valorProtocolo'].NodeValue := Value;
end;

function T213_Ct_detalheProtocolo.Get_CodigoGlosaProtocolo: I213_CodigoGlosaProtocolo;
begin
  Result := ChildNodes['codigoGlosaProtocolo'] as I213_CodigoGlosaProtocolo;
end;

function T213_Ct_detalheProtocolo.Get_Guias: I213_Guias;
begin
  Result := ChildNodes['guias'] as I213_Guias;
end;

{ T213_CodigoGlosaProtocolo }

procedure T213_CodigoGlosaProtocolo.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T213_Ct_motivoGlosa);
  FMotivoGlosa := CreateCollection(T213_Ct_motivoGlosaList, I213_Ct_motivoGlosa, 'motivoGlosa') as I213_Ct_motivoGlosaList;
  inherited;
end;

function T213_CodigoGlosaProtocolo.Get_MotivoGlosa: I213_Ct_motivoGlosaList;
begin
  Result := FMotivoGlosa;
end;

function T213_CodigoGlosaProtocolo.Get_ValorGlosaProtocolo: WideString;
begin
  Result := ChildNodes['valorGlosaProtocolo'].Text;
end;

procedure T213_CodigoGlosaProtocolo.Set_ValorGlosaProtocolo(Value: WideString);
begin
  ChildNodes['valorGlosaProtocolo'].NodeValue := Value;
end;

{ T213_FalhaNegocio }

function T213_FalhaNegocio.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_FalhaNegocio.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Guias }

procedure T213_Guias.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T213_Ct_dadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I213_Ct_dadosGuia;
  inherited;
end;

function T213_Guias.Get_DadosGuia(Index: Integer): I213_Ct_dadosGuia;
begin
  Result := List[Index] as I213_Ct_dadosGuia;
end;

function T213_Guias.Add: I213_Ct_dadosGuia;
begin
  Result := AddItem(-1) as I213_Ct_dadosGuia;
end;

function T213_Guias.Insert(const Index: Integer): I213_Ct_dadosGuia;
begin
  Result := AddItem(Index) as I213_Ct_dadosGuia;
end;

{ T213_Ct_dadosGuia }

procedure T213_Ct_dadosGuia.AfterConstruction;
begin
  RegisterChildNode('beneficiario', T213_Ct_beneficiario);
  RegisterChildNode('procedimentos', T213_Procedimentos);
  RegisterChildNode('codigoGlosaGuia', T213_Ct_motivoGlosa);
  FCodigoGlosaGuia := CreateCollection(T213_Ct_motivoGlosaList, I213_Ct_motivoGlosa, 'codigoGlosaGuia') as I213_Ct_motivoGlosaList;
  inherited;
end;

function T213_Ct_dadosGuia.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T213_Ct_dadosGuia.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T213_Ct_dadosGuia.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T213_Ct_dadosGuia.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T213_Ct_dadosGuia.Get_Beneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_dadosGuia.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T213_Ct_dadosGuia.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T213_Ct_dadosGuia.Get_ValorProcessadoGuia: WideString;
begin
  Result := ChildNodes['valorProcessadoGuia'].Text;
end;

procedure T213_Ct_dadosGuia.Set_ValorProcessadoGuia(Value: WideString);
begin
  ChildNodes['valorProcessadoGuia'].NodeValue := Value;
end;

function T213_Ct_dadosGuia.Get_ValorLiberadoGuia: WideString;
begin
  Result := ChildNodes['valorLiberadoGuia'].Text;
end;

procedure T213_Ct_dadosGuia.Set_ValorLiberadoGuia(Value: WideString);
begin
  ChildNodes['valorLiberadoGuia'].NodeValue := Value;
end;

function T213_Ct_dadosGuia.Get_ValorGlosaGuia: WideString;
begin
  Result := ChildNodes['valorGlosaGuia'].Text;
end;

procedure T213_Ct_dadosGuia.Set_ValorGlosaGuia(Value: WideString);
begin
  ChildNodes['valorGlosaGuia'].NodeValue := Value;
end;

function T213_Ct_dadosGuia.Get_Procedimentos: I213_Procedimentos;
begin
  Result := ChildNodes['procedimentos'] as I213_Procedimentos;
end;

function T213_Ct_dadosGuia.Get_CodigoGlosaGuia: I213_Ct_motivoGlosaList;
begin
  Result := FCodigoGlosaGuia;
end;

{ T213_Ct_beneficiario }

function T213_Ct_beneficiario.Get_NumeroCarteira: WideString;
begin
  Result := ChildNodes['numeroCarteira'].Text;
end;

procedure T213_Ct_beneficiario.Set_NumeroCarteira(Value: WideString);
begin
  ChildNodes['numeroCarteira'].NodeValue := Value;
end;

function T213_Ct_beneficiario.Get_NomeBeneficiario: WideString;
begin
  Result := ChildNodes['nomeBeneficiario'].Text;
end;

procedure T213_Ct_beneficiario.Set_NomeBeneficiario(Value: WideString);
begin
  ChildNodes['nomeBeneficiario'].NodeValue := Value;
end;

function T213_Ct_beneficiario.Get_NomePlano: WideString;
begin
  Result := ChildNodes['nomePlano'].Text;
end;

procedure T213_Ct_beneficiario.Set_NomePlano(Value: WideString);
begin
  ChildNodes['nomePlano'].NodeValue := Value;
end;

function T213_Ct_beneficiario.Get_ValidadeCarteira: WideString;
begin
  Result := ChildNodes['validadeCarteira'].Text;
end;

procedure T213_Ct_beneficiario.Set_ValidadeCarteira(Value: WideString);
begin
  ChildNodes['validadeCarteira'].NodeValue := Value;
end;

function T213_Ct_beneficiario.Get_NumeroCNS: WideString;
begin
  Result := ChildNodes['numeroCNS'].Text;
end;

procedure T213_Ct_beneficiario.Set_NumeroCNS(Value: WideString);
begin
  ChildNodes['numeroCNS'].NodeValue := Value;
end;

function T213_Ct_beneficiario.Get_IdentificadorBeneficiario: WideString;
begin
  Result := ChildNodes['identificadorBeneficiario'].Text;
end;

procedure T213_Ct_beneficiario.Set_IdentificadorBeneficiario(Value: WideString);
begin
  ChildNodes['identificadorBeneficiario'].NodeValue := Value;
end;

{ T213_Procedimentos }

procedure T213_Procedimentos.AfterConstruction;
begin
  RegisterChildNode('dadosProcedimento', T213_Ct_dadosProcedimento);
  ItemTag := 'dadosProcedimento';
  ItemInterface := I213_Ct_dadosProcedimento;
  inherited;
end;

function T213_Procedimentos.Get_DadosProcedimento(Index: Integer): I213_Ct_dadosProcedimento;
begin
  Result := List[Index] as I213_Ct_dadosProcedimento;
end;

function T213_Procedimentos.Add: I213_Ct_dadosProcedimento;
begin
  Result := AddItem(-1) as I213_Ct_dadosProcedimento;
end;

function T213_Procedimentos.Insert(const Index: Integer): I213_Ct_dadosProcedimento;
begin
  Result := AddItem(Index) as I213_Ct_dadosProcedimento;
end;

{ T213_ProcedimentosAutorizacaoProc }

procedure T213_ProcedimentosAutorizacaoProc.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_itemSolicitacao);
  ItemTag := 'procedimento';
  ItemInterface := I213_Ct_itemSolicitacao;
  inherited;
end;

function T213_ProcedimentosAutorizacaoProc.Get_Procedimento(Index: Integer): I213_Ct_itemSolicitacao;
begin
  Result := List[Index] as I213_Ct_itemSolicitacao;
end;

function T213_ProcedimentosAutorizacaoProc.Add: I213_Ct_itemSolicitacao;
begin
  Result := AddItem(-1) as I213_Ct_itemSolicitacao;
end;

function T213_ProcedimentosAutorizacaoProc.Insert(const Index: Integer): I213_Ct_itemSolicitacao;
begin
  Result := AddItem(Index) as I213_Ct_itemSolicitacao;
end;

{ T213_ProcedimentosEquipe }

procedure T213_ProcedimentosEquipe.AfterConstruction;
begin
  RegisterChildNode('equipe', T213_Ct_identificacaoEquipe);
  RegisterChildNode('procedimento', T213_Ct_tabela);
  inherited;
end;

function T213_ProcedimentosEquipe.Get_Equipe: I213_Ct_identificacaoEquipe;
begin
  Result := ChildNodes['equipe'] as I213_Ct_identificacaoEquipe;
end;

function T213_ProcedimentosEquipe.Get_Procedimento: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I213_Ct_tabela;
end;

function T213_ProcedimentosEquipe.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_HoraInicio: WideString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_HoraInicio(Value: WideString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_HoraFim: WideString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_HoraFim(Value: WideString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_QuantidadeRealizada: Integer;
begin
  Result := ChildNodes['quantidadeRealizada'].NodeValue;
end;

procedure T213_ProcedimentosEquipe.Set_QuantidadeRealizada(Value: Integer);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_ViaAcesso: WideString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_ViaAcesso(Value: WideString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_TecnicaUtilizada: WideString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_TecnicaUtilizada(Value: WideString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T213_ProcedimentosEquipe.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_ProcedimentosEquipe.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T213_DadosPagamento }

procedure T213_DadosPagamento.AfterConstruction;
begin
  RegisterChildNode('totalGeral', T213_Ct_totalDemoOdonto);
  inherited;
end;

function T213_DadosPagamento.Get_TotalGeral: I213_Ct_totalDemoOdonto;
begin
  Result := ChildNodes['totalGeral'] as I213_Ct_totalDemoOdonto;
end;

{ T213_Ct_dadosProcedimento }

procedure T213_Ct_dadosProcedimento.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_tabela);
  RegisterChildNode('relacaoGlosa', T213_RelacaoGlosa);
  inherited;
end;

function T213_Ct_dadosProcedimento.Get_Procedimento: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I213_Ct_tabela;
end;

function T213_Ct_dadosProcedimento.Get_QuantidadeExecutada: Integer;
begin
  Result := ChildNodes['quantidadeExecutada'].NodeValue;
end;

procedure T213_Ct_dadosProcedimento.Set_QuantidadeExecutada(Value: Integer);
begin
  ChildNodes['quantidadeExecutada'].NodeValue := Value;
end;

function T213_Ct_dadosProcedimento.Get_ValorProcessado: WideString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure T213_Ct_dadosProcedimento.Set_ValorProcessado(Value: WideString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T213_Ct_dadosProcedimento.Get_ValorLiberado: WideString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure T213_Ct_dadosProcedimento.Set_ValorLiberado(Value: WideString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function T213_Ct_dadosProcedimento.Get_GrauParticipacao: WideString;
begin
  Result := ChildNodes['grauParticipacao'].Text;
end;

procedure T213_Ct_dadosProcedimento.Set_GrauParticipacao(Value: WideString);
begin
  ChildNodes['grauParticipacao'].NodeValue := Value;
end;

function T213_Ct_dadosProcedimento.Get_RelacaoGlosa: I213_RelacaoGlosa;
begin
  Result := ChildNodes['relacaoGlosa'] as I213_RelacaoGlosa;
end;

{ T213_Ct_tabela }

function T213_Ct_tabela.Get_Codigo: WideString;
begin
  Result := ChildNodes['codigo'].Text;
end;

procedure T213_Ct_tabela.Set_Codigo(Value: WideString);
begin
  ChildNodes['codigo'].NodeValue := Value;
end;

function T213_Ct_tabela.Get_TipoTabela: WideString;
begin
  Result := ChildNodes['tipoTabela'].Text;
end;

procedure T213_Ct_tabela.Set_TipoTabela(Value: WideString);
begin
  ChildNodes['tipoTabela'].NodeValue := Value;
end;

function T213_Ct_tabela.Get_Descricao: WideString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure T213_Ct_tabela.Set_Descricao(Value: WideString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ T213_RelacaoGlosa }

procedure T213_RelacaoGlosa.AfterConstruction;
begin
  RegisterChildNode('tipoGlosa', T213_Ct_motivoGlosa);
  FTipoGlosa := CreateCollection(T213_Ct_motivoGlosaList, I213_Ct_motivoGlosa, 'tipoGlosa') as I213_Ct_motivoGlosaList;
  inherited;
end;

function T213_RelacaoGlosa.Get_TipoGlosa: I213_Ct_motivoGlosaList;
begin
  Result := FTipoGlosa;
end;

function T213_RelacaoGlosa.Get_ValorGlosa: WideString;
begin
  Result := ChildNodes['valorGlosa'].Text;
end;

procedure T213_RelacaoGlosa.Set_ValorGlosa(Value: WideString);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

{ T213_DemonstrativosRetorno }

procedure T213_DemonstrativosRetorno.AfterConstruction;
begin
  RegisterChildNode('demonstrativoAnaliseConta', T213_Ct_demonstrativoAnaliseConta);
  RegisterChildNode('demonstrativoOdontologia', T213_Ct_demonstrativoOdontologia);
  RegisterChildNode('demonstrativoPagamento', T213_Ct_demonstrativoPagamento);
  FDemonstrativoAnaliseConta := CreateCollection(T213_Ct_demonstrativoAnaliseContaList, I213_Ct_demonstrativoAnaliseConta, 'demonstrativoAnaliseConta') as I213_Ct_demonstrativoAnaliseContaList;
  FDemonstrativoOdontologia := CreateCollection(T213_Ct_demonstrativoOdontologiaList, I213_Ct_demonstrativoOdontologia, 'demonstrativoOdontologia') as I213_Ct_demonstrativoOdontologiaList;
  FDemonstrativoPagamento := CreateCollection(T213_Ct_demonstrativoPagamentoList, I213_Ct_demonstrativoPagamento, 'demonstrativoPagamento') as I213_Ct_demonstrativoPagamentoList;
  inherited;
end;

function T213_DemonstrativosRetorno.Get_DemonstrativoAnaliseConta: I213_Ct_demonstrativoAnaliseContaList;
begin
  Result := FDemonstrativoAnaliseConta;
end;

function T213_DemonstrativosRetorno.Get_DemonstrativoOdontologia: I213_Ct_demonstrativoOdontologiaList;
begin
  Result := FDemonstrativoOdontologia;
end;

function T213_DemonstrativosRetorno.Get_DemonstrativoPagamento: I213_Ct_demonstrativoPagamentoList;
begin
  Result := FDemonstrativoPagamento;
end;

{ T213_Ct_demonstrativoAnaliseConta }

procedure T213_Ct_demonstrativoAnaliseConta.AfterConstruction;
begin
  RegisterChildNode('identificacaoOperadora', T213_Ct_identificacaoOperadora);
  RegisterChildNode('cabecalhoDemonstrativo', T213_Ct_cabecalhoDemonstrativo);
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  RegisterChildNode('fatura', T213_Fatura);
  inherited;
end;

function T213_Ct_demonstrativoAnaliseConta.Get_IdentificacaoOperadora: I213_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['identificacaoOperadora'] as I213_Ct_identificacaoOperadora;
end;

function T213_Ct_demonstrativoAnaliseConta.Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as I213_Ct_cabecalhoDemonstrativo;
end;

function T213_Ct_demonstrativoAnaliseConta.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_demonstrativoAnaliseConta.Get_Fatura: I213_Fatura;
begin
  Result := ChildNodes['fatura'] as I213_Fatura;
end;

function T213_Ct_demonstrativoAnaliseConta.Get_ValorProcessadoGeral: WideString;
begin
  Result := ChildNodes['valorProcessadoGeral'].Text;
end;

procedure T213_Ct_demonstrativoAnaliseConta.Set_ValorProcessadoGeral(Value: WideString);
begin
  ChildNodes['valorProcessadoGeral'].NodeValue := Value;
end;

function T213_Ct_demonstrativoAnaliseConta.Get_ValorLiberadoGeral: WideString;
begin
  Result := ChildNodes['valorLiberadoGeral'].Text;
end;

procedure T213_Ct_demonstrativoAnaliseConta.Set_ValorLiberadoGeral(Value: WideString);
begin
  ChildNodes['valorLiberadoGeral'].NodeValue := Value;
end;

function T213_Ct_demonstrativoAnaliseConta.Get_ValorGlosaGeral: WideString;
begin
  Result := ChildNodes['valorGlosaGeral'].Text;
end;

procedure T213_Ct_demonstrativoAnaliseConta.Set_ValorGlosaGeral(Value: WideString);
begin
  ChildNodes['valorGlosaGeral'].NodeValue := Value;
end;

{ T213_Ct_demonstrativoAnaliseContaList }

function T213_Ct_demonstrativoAnaliseContaList.Add: I213_Ct_demonstrativoAnaliseConta;
begin
  Result := AddItem(-1) as I213_Ct_demonstrativoAnaliseConta;
end;

function T213_Ct_demonstrativoAnaliseContaList.Insert(const Index: Integer): I213_Ct_demonstrativoAnaliseConta;
begin
  Result := AddItem(Index) as I213_Ct_demonstrativoAnaliseConta;
end;
function T213_Ct_demonstrativoAnaliseContaList.Get_Item(Index: Integer): I213_Ct_demonstrativoAnaliseConta;
begin
  Result := List[Index] as I213_Ct_demonstrativoAnaliseConta;
end;

{ T213_Ct_cabecalhoDemonstrativo }

function T213_Ct_cabecalhoDemonstrativo.Get_NumeroDemonstrativo: WideString;
begin
  Result := ChildNodes['numeroDemonstrativo'].Text;
end;

procedure T213_Ct_cabecalhoDemonstrativo.Set_NumeroDemonstrativo(Value: WideString);
begin
  ChildNodes['numeroDemonstrativo'].NodeValue := Value;
end;

function T213_Ct_cabecalhoDemonstrativo.Get_DataEmissao: WideString;
begin
  Result := ChildNodes['dataEmissao'].Text;
end;

procedure T213_Ct_cabecalhoDemonstrativo.Set_DataEmissao(Value: WideString);
begin
  ChildNodes['dataEmissao'].NodeValue := Value;
end;

{ T213_Fatura }

procedure T213_Fatura.AfterConstruction;
begin
  RegisterChildNode('dadosFatura', T213_Ct_dadosConta);
  inherited;
end;

function T213_Fatura.Get_DadosFatura: I213_Ct_dadosConta;
begin
  Result := ChildNodes['dadosFatura'] as I213_Ct_dadosConta;
end;

{ T213_Ct_dadosConta }

procedure T213_Ct_dadosConta.AfterConstruction;
begin
  RegisterChildNode('lote', T213_Lote);
  inherited;
end;

function T213_Ct_dadosConta.Get_NumeroFatura: WideString;
begin
  Result := ChildNodes['numeroFatura'].Text;
end;

procedure T213_Ct_dadosConta.Set_NumeroFatura(Value: WideString);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function T213_Ct_dadosConta.Get_Lote: I213_Ct_dadosLote;
begin
  Result := ChildNodes['lote'] as I213_Ct_dadosLote;
end;

function T213_Ct_dadosConta.Get_ValorProcessadoFatura: WideString;
begin
  Result := ChildNodes['valorProcessadoFatura'].Text;
end;

procedure T213_Ct_dadosConta.Set_ValorProcessadoFatura(Value: WideString);
begin
  ChildNodes['valorProcessadoFatura'].NodeValue := Value;
end;

function T213_Ct_dadosConta.Get_ValorLiberadoFatura: WideString;
begin
  Result := ChildNodes['valorLiberadoFatura'].Text;
end;

procedure T213_Ct_dadosConta.Set_ValorLiberadoFatura(Value: WideString);
begin
  ChildNodes['valorLiberadoFatura'].NodeValue := Value;
end;

function T213_Ct_dadosConta.Get_ValorGlosaFatura: WideString;
begin
  Result := ChildNodes['valorGlosaFatura'].Text;
end;

procedure T213_Ct_dadosConta.Set_ValorGlosaFatura(Value: WideString);
begin
  ChildNodes['valorGlosaFatura'].NodeValue := Value;
end;

{ T213_Lote }

procedure T213_Lote.AfterConstruction;
begin
  RegisterChildNode('dadosLote', T213_Ct_dadosLote);
  ItemTag := 'dadosLote';
  ItemInterface := I213_Ct_dadosLote;
  inherited;
end;

function T213_Lote.Get_DadosLote(Index: Integer): I213_Ct_dadosLote;
begin
  Result := List[Index] as I213_Ct_dadosLote;
end;

function T213_Lote.Add: I213_Ct_dadosLote;
begin
  Result := AddItem(-1) as I213_Ct_dadosLote;
end;

function T213_Lote.Insert(const Index: Integer): I213_Ct_dadosLote;
begin
  Result := AddItem(Index) as I213_Ct_dadosLote;
end;

{ T213_Ct_dadosLote }

procedure T213_Ct_dadosLote.AfterConstruction;
begin
  RegisterChildNode('guia', T213_Ct_dadosGuia);
  FCodigoGlosaProtocolo := CreateCollection(T213_St_tipoGlosaList, IXMLNode, 'codigoGlosaProtocolo') as I213_St_tipoGlosaList;
  inherited;
end;

function T213_Ct_dadosLote.Get_NumeroLote: WideString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure T213_Ct_dadosLote.Set_NumeroLote(Value: WideString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T213_Ct_dadosLote.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T213_Ct_dadosLote.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T213_Ct_dadosLote.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T213_Ct_dadosLote.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T213_Ct_dadosLote.Get_ValorProtocolo: WideString;
begin
  Result := ChildNodes['valorProtocolo'].Text;
end;

procedure T213_Ct_dadosLote.Set_ValorProtocolo(Value: WideString);
begin
  ChildNodes['valorProtocolo'].NodeValue := Value;
end;

function T213_Ct_dadosLote.Get_ValorGlosaProtocolo: WideString;
begin
  Result := ChildNodes['valorGlosaProtocolo'].Text;
end;

procedure T213_Ct_dadosLote.Set_ValorGlosaProtocolo(Value: WideString);
begin
  ChildNodes['valorGlosaProtocolo'].NodeValue := Value;
end;

function T213_Ct_dadosLote.Get_CodigoGlosaProtocolo: I213_St_tipoGlosaList;
begin
  Result := FCodigoGlosaProtocolo;
end;

function T213_Ct_dadosLote.Get_Guia: I213_Ct_dadosGuia;
begin
  Result := ChildNodes['guia'] as I213_Ct_dadosGuia;
end;
(*
{ T213_Guia }

procedure T213_Guia.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T213_Ct_dadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I213_Ct_dadosGuia;
  inherited;
end;

function T213_Guia.Get_DadosGuia(Index: Integer): I213_Ct_dadosGuia;
begin
  Result := List[Index] as I213_Ct_dadosGuia;
end;

function T213_Guia.Add: I213_Ct_dadosGuia;
begin
  Result := AddItem(-1) as I213_Ct_dadosGuia;
end;

function T213_Guia.Insert(const Index: Integer): I213_Ct_dadosGuia;
begin
  Result := AddItem(Index) as I213_Ct_dadosGuia;
end;

{ T213_Guia }

procedure T213_Guia.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T213_Ct_cabecalhoGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I213_Ct_cabecalhoGuia;
  inherited;
end;

function T213_Guia.Get_DadosGuia(Index: Integer): I213_Ct_cabecalhoGuia;
begin
  Result := List[Index] as I213_Ct_cabecalhoGuia;
end;

function T213_Guia.Add: I213_Ct_cabecalhoGuia;
begin
  Result := AddItem(-1) as I213_Ct_cabecalhoGuia;
end;

function T213_Guia.Insert(const Index: Integer): I213_Ct_cabecalhoGuia;
begin
  Result := AddItem(Index) as I213_Ct_cabecalhoGuia;
end;
*)

{ T213_Ct_demonstrativoOdontologia }

procedure T213_Ct_demonstrativoOdontologia.AfterConstruction;
begin
  RegisterChildNode('cabecalhoDemonstrativo', T213_Ct_cabecalhoDemonstrativo);
  RegisterChildNode('identificacaoOperadora', T213_IdentificacaoOperadora);
  RegisterChildNode('dadosPrestador', T213_DadosPrestador);
  RegisterChildNode('dadosPagamento', T213_DadosPagamento);
  RegisterChildNode('debitosCreditosTributaveis', T213_DebitosCreditosTributaveis);
  RegisterChildNode('demaisImpostos', T213_DemaisImpostos);
  RegisterChildNode('debitosCreditosNaoTributaveis', T213_DebitosCreditosNaoTributaveis);
  inherited;
end;

function T213_Ct_demonstrativoOdontologia.Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as I213_Ct_cabecalhoDemonstrativo;
end;

function T213_Ct_demonstrativoOdontologia.Get_IdentificacaoOperadora: I213_IdentificacaoOperadora;
begin
  Result := ChildNodes['identificacaoOperadora'] as I213_IdentificacaoOperadora;
end;

function T213_Ct_demonstrativoOdontologia.Get_DadosPrestador: I213_DadosPrestador;
begin
  Result := ChildNodes['dadosPrestador'] as I213_DadosPrestador;
end;

function T213_Ct_demonstrativoOdontologia.Get_DadosPagamento: I213_DadosPagamento;
begin
  Result := ChildNodes['dadosPagamento'] as I213_DadosPagamento;
end;

function T213_Ct_demonstrativoOdontologia.Get_DebitosCreditosTributaveis: I213_DebitosCreditosTributaveis;
begin
  Result := ChildNodes['debitosCreditosTributaveis'] as I213_DebitosCreditosTributaveis;
end;

function T213_Ct_demonstrativoOdontologia.Get_DemaisImpostos: I213_DemaisImpostos;
begin
  Result := ChildNodes['demaisImpostos'] as I213_DemaisImpostos;
end;

function T213_Ct_demonstrativoOdontologia.Get_DebitosCreditosNaoTributaveis: I213_DebitosCreditosNaoTributaveis;
begin
  Result := ChildNodes['debitosCreditosNaoTributaveis'] as I213_DebitosCreditosNaoTributaveis;
end;

function T213_Ct_demonstrativoOdontologia.Get_ValorFinalReceber: WideString;
begin
  Result := ChildNodes['valorFinalReceber'].Text;
end;

procedure T213_Ct_demonstrativoOdontologia.Set_ValorFinalReceber(Value: WideString);
begin
  ChildNodes['valorFinalReceber'].NodeValue := Value;
end;

function T213_Ct_demonstrativoOdontologia.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_demonstrativoOdontologia.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_demonstrativoOdontologiaList }

function T213_Ct_demonstrativoOdontologiaList.Add: I213_Ct_demonstrativoOdontologia;
begin
  Result := AddItem(-1) as I213_Ct_demonstrativoOdontologia;
end;

function T213_Ct_demonstrativoOdontologiaList.Insert(const Index: Integer): I213_Ct_demonstrativoOdontologia;
begin
  Result := AddItem(Index) as I213_Ct_demonstrativoOdontologia;
end;
function T213_Ct_demonstrativoOdontologiaList.Get_Item(Index: Integer): I213_Ct_demonstrativoOdontologia;
begin
  Result := List[Index] as I213_Ct_demonstrativoOdontologia;
end;

{ T213_IdentificacaoOperadora }

procedure T213_IdentificacaoOperadora.AfterConstruction;
begin
  RegisterChildNode('periodoProcessamento', T213_Ct_periodoProcessamento);
  inherited;
end;

function T213_IdentificacaoOperadora.Get_PeriodoProcessamento: I213_Ct_periodoProcessamento;
begin
  Result := ChildNodes['periodoProcessamento'] as I213_Ct_periodoProcessamento;
end;

{ T213_Ct_periodoProcessamento }

function T213_Ct_periodoProcessamento.Get_DataInicial: WideString;
begin
  Result := ChildNodes['dataInicial'].Text;
end;

procedure T213_Ct_periodoProcessamento.Set_DataInicial(Value: WideString);
begin
  ChildNodes['dataInicial'].NodeValue := Value;
end;

function T213_Ct_periodoProcessamento.Get_DataFinal: WideString;
begin
  Result := ChildNodes['dataFinal'].Text;
end;

procedure T213_Ct_periodoProcessamento.Set_DataFinal(Value: WideString);
begin
  ChildNodes['dataFinal'].NodeValue := Value;
end;

{ T213_DadosPrestador }

procedure T213_DadosPrestador.AfterConstruction;
begin
  RegisterChildNode('identificadorPrestador', T213_Ct_identificadorPrestOdontoDemo);
  inherited;
end;

function T213_DadosPrestador.Get_CodigoPrestadorNaOperadora: WideString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure T213_DadosPrestador.Set_CodigoPrestadorNaOperadora(Value: WideString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

function T213_DadosPrestador.Get_IdentificadorPrestador: I213_Ct_identificadorPrestOdontoDemo;
begin
  Result := ChildNodes['identificadorPrestador'] as I213_Ct_identificadorPrestOdontoDemo;
end;

function T213_DadosPrestador.Get_NomeContratado: WideString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure T213_DadosPrestador.Set_NomeContratado(Value: WideString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function T213_DadosPrestador.Get_NumeroCNES: WideString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure T213_DadosPrestador.Set_NumeroCNES(Value: WideString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ T213_Ct_identificadorPrestOdontoDemo }

function T213_Ct_identificadorPrestOdontoDemo.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T213_Ct_identificadorPrestOdontoDemo.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function T213_Ct_identificadorPrestOdontoDemo.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T213_Ct_identificadorPrestOdontoDemo.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

{ T213_Ct_dadosPagamento }

procedure T213_Ct_dadosPagamento.AfterConstruction;
begin
  RegisterChildNode('loteOdonto', T213_LoteOdonto);
  inherited;
end;

function T213_Ct_dadosPagamento.Get_DataPagamento: WideString;
begin
  Result := ChildNodes['dataPagamento'].Text;
end;

procedure T213_Ct_dadosPagamento.Set_DataPagamento(Value: WideString);
begin
  ChildNodes['dataPagamento'].NodeValue := Value;
end;

function T213_Ct_dadosPagamento.Get_LoteOdonto: I213_LoteOdonto;
begin
  Result := ChildNodes['loteOdonto'] as I213_LoteOdonto;
end;

{ T213_Ct_totalDemoOdonto }

function T213_Ct_totalDemoOdonto.Get_ValorTotalGeralGlosa: WideString;
begin
  Result := ChildNodes['valorTotalGeralGlosa'].Text;
end;

procedure T213_Ct_totalDemoOdonto.Set_ValorTotalGeralGlosa(Value: WideString);
begin
  ChildNodes['valorTotalGeralGlosa'].NodeValue := Value;
end;

function T213_Ct_totalDemoOdonto.Get_ValorTotalGeralLiberado: WideString;
begin
  Result := ChildNodes['valorTotalGeralLiberado'].Text;
end;

procedure T213_Ct_totalDemoOdonto.Set_ValorTotalGeralLiberado(Value: WideString);
begin
  ChildNodes['valorTotalGeralLiberado'].NodeValue := Value;
end;

function T213_Ct_totalDemoOdonto.Get_ValorTotalProcessadoGuia: WideString;
begin
  Result := ChildNodes['valorTotalProcessadoGuia'].Text;
end;

procedure T213_Ct_totalDemoOdonto.Set_ValorTotalProcessadoGuia(Value: WideString);
begin
  ChildNodes['valorTotalProcessadoGuia'].NodeValue := Value;
end;

{ T213_DebitosCreditosTributaveis }

procedure T213_DebitosCreditosTributaveis.AfterConstruction;
begin
  RegisterChildNode('descontos', T213_Ct_descontoOdonto);
  RegisterChildNode('creditos', T213_Ct_creditoOdonto);
  FDescontos := CreateCollection(T213_Ct_descontoOdontoList, I213_Ct_descontoOdonto, 'descontos') as I213_Ct_descontoOdontoList;
  FCreditos := CreateCollection(T213_Ct_creditoOdontoList, I213_Ct_creditoOdonto, 'creditos') as I213_Ct_creditoOdontoList;
  inherited;
end;

function T213_DebitosCreditosTributaveis.Get_Descontos: I213_Ct_descontoOdontoList;
begin
  Result := FDescontos;
end;

function T213_DebitosCreditosTributaveis.Get_Creditos: I213_Ct_creditoOdontoList;
begin
  Result := FCreditos;
end;

function T213_DebitosCreditosTributaveis.Get_ValorTotalTributavel: WideString;
begin
  Result := ChildNodes['valorTotalTributavel'].Text;
end;

procedure T213_DebitosCreditosTributaveis.Set_ValorTotalTributavel(Value: WideString);
begin
  ChildNodes['valorTotalTributavel'].NodeValue := Value;
end;

{ T213_Ct_descontoOdonto }

function T213_Ct_descontoOdonto.Get_Descricao: WideString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure T213_Ct_descontoOdonto.Set_Descricao(Value: WideString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

function T213_Ct_descontoOdonto.Get_ValorDesconto: WideString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure T213_Ct_descontoOdonto.Set_ValorDesconto(Value: WideString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

{ T213_Ct_descontoOdontoList }

function T213_Ct_descontoOdontoList.Add: I213_Ct_descontoOdonto;
begin
  Result := AddItem(-1) as I213_Ct_descontoOdonto;
end;

function T213_Ct_descontoOdontoList.Insert(const Index: Integer): I213_Ct_descontoOdonto;
begin
  Result := AddItem(Index) as I213_Ct_descontoOdonto;
end;
function T213_Ct_descontoOdontoList.Get_Item(Index: Integer): I213_Ct_descontoOdonto;
begin
  Result := List[Index] as I213_Ct_descontoOdonto;
end;

{ T213_Ct_creditoOdonto }

function T213_Ct_creditoOdonto.Get_ValorDesconto: WideString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure T213_Ct_creditoOdonto.Set_ValorDesconto(Value: WideString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

function T213_Ct_creditoOdonto.Get_Descricao: WideString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure T213_Ct_creditoOdonto.Set_Descricao(Value: WideString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ T213_Ct_creditoOdontoList }

function T213_Ct_creditoOdontoList.Add: I213_Ct_creditoOdonto;
begin
  Result := AddItem(-1) as I213_Ct_creditoOdonto;
end;

function T213_Ct_creditoOdontoList.Insert(const Index: Integer): I213_Ct_creditoOdonto;
begin
  Result := AddItem(Index) as I213_Ct_creditoOdonto;
end;
function T213_Ct_creditoOdontoList.Get_Item(Index: Integer): I213_Ct_creditoOdonto;
begin
  Result := List[Index] as I213_Ct_creditoOdonto;
end;

{ T213_DemaisImpostos }

procedure T213_DemaisImpostos.AfterConstruction;
begin
  RegisterChildNode('descontos', T213_Ct_descontoOdonto);
  FDescontos := CreateCollection(T213_Ct_descontoOdontoList, I213_Ct_descontoOdonto, 'descontos') as I213_Ct_descontoOdontoList;
  inherited;
end;

function T213_DemaisImpostos.Get_Descontos: I213_Ct_descontoOdontoList;
begin
  Result := FDescontos;
end;

function T213_DemaisImpostos.Get_ValorTotalImpostos: WideString;
begin
  Result := ChildNodes['valorTotalImpostos'].Text;
end;

procedure T213_DemaisImpostos.Set_ValorTotalImpostos(Value: WideString);
begin
  ChildNodes['valorTotalImpostos'].NodeValue := Value;
end;

{ T213_DebitosCreditosNaoTributaveis }

procedure T213_DebitosCreditosNaoTributaveis.AfterConstruction;
begin
  RegisterChildNode('descontos', T213_Ct_descontoOdonto);
  RegisterChildNode('creditos', T213_Ct_creditoOdonto);
  FDescontos := CreateCollection(T213_Ct_descontoOdontoList, I213_Ct_descontoOdonto, 'descontos') as I213_Ct_descontoOdontoList;
  FCreditos := CreateCollection(T213_Ct_creditoOdontoList, I213_Ct_creditoOdonto, 'creditos') as I213_Ct_creditoOdontoList;
  inherited;
end;

function T213_DebitosCreditosNaoTributaveis.Get_Descontos: I213_Ct_descontoOdontoList;
begin
  Result := FDescontos;
end;

function T213_DebitosCreditosNaoTributaveis.Get_Creditos: I213_Ct_creditoOdontoList;
begin
  Result := FCreditos;
end;

function T213_DebitosCreditosNaoTributaveis.Get_ValorTotalNaoTributavel: WideString;
begin
  Result := ChildNodes['valorTotalNaoTributavel'].Text;
end;

procedure T213_DebitosCreditosNaoTributaveis.Set_ValorTotalNaoTributavel(Value: WideString);
begin
  ChildNodes['valorTotalNaoTributavel'].NodeValue := Value;
end;

{ T213_Ct_demonstrativoPagamento }

procedure T213_Ct_demonstrativoPagamento.AfterConstruction;
begin
  RegisterChildNode('cabecalhoDemonstrativo', T213_Ct_cabecalhoDemonstrativo);
  RegisterChildNode('identificacaoOperadora', T213_Ct_identificacaoOperadora);
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  RegisterChildNode('dadosPagamento', T213_Ct_dadoBancario);
  RegisterChildNode('dadosResumo', T213_DadosResumo);
  RegisterChildNode('demaisDescontos', T213_Ct_descontos);
  inherited;
end;

function T213_Ct_demonstrativoPagamento.Get_CabecalhoDemonstrativo: I213_Ct_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as I213_Ct_cabecalhoDemonstrativo;
end;

function T213_Ct_demonstrativoPagamento.Get_IdentificacaoOperadora: I213_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['identificacaoOperadora'] as I213_Ct_identificacaoOperadora;
end;

function T213_Ct_demonstrativoPagamento.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_demonstrativoPagamento.Get_DadosPagamento: I213_Ct_dadoBancario;
begin
  Result := ChildNodes['dadosPagamento'] as I213_Ct_dadoBancario;
end;

function T213_Ct_demonstrativoPagamento.Get_DadosResumo: I213_DadosResumo;
begin
  Result := ChildNodes['dadosResumo'] as I213_DadosResumo;
end;

function T213_Ct_demonstrativoPagamento.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_Ct_demonstrativoPagamento.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T213_Ct_demonstrativoPagamento.Get_DemaisDescontos: I213_Ct_descontos;
begin
  Result := ChildNodes['demaisDescontos'] as I213_Ct_descontos;
end;

function T213_Ct_demonstrativoPagamento.Get_ValorFinalLiberado: WideString;
begin
  Result := ChildNodes['valorFinalLiberado'].Text;
end;

procedure T213_Ct_demonstrativoPagamento.Set_ValorFinalLiberado(Value: WideString);
begin
  ChildNodes['valorFinalLiberado'].NodeValue := Value;
end;

{ T213_Ct_demonstrativoPagamentoList }

function T213_Ct_demonstrativoPagamentoList.Add: I213_Ct_demonstrativoPagamento;
begin
  Result := AddItem(-1) as I213_Ct_demonstrativoPagamento;
end;

function T213_Ct_demonstrativoPagamentoList.Insert(const Index: Integer): I213_Ct_demonstrativoPagamento;
begin
  Result := AddItem(Index) as I213_Ct_demonstrativoPagamento;
end;
function T213_Ct_demonstrativoPagamentoList.Get_Item(Index: Integer): I213_Ct_demonstrativoPagamento;
begin
  Result := List[Index] as I213_Ct_demonstrativoPagamento;
end;

{ T213_Ct_dadoBancario }

function T213_Ct_dadoBancario.Get_DataPagamento: WideString;
begin
  Result := ChildNodes['dataPagamento'].Text;
end;

procedure T213_Ct_dadoBancario.Set_DataPagamento(Value: WideString);
begin
  ChildNodes['dataPagamento'].NodeValue := Value;
end;

function T213_Ct_dadoBancario.Get_FormaPagamento: WideString;
begin
  Result := ChildNodes['formaPagamento'].Text;
end;

procedure T213_Ct_dadoBancario.Set_FormaPagamento(Value: WideString);
begin
  ChildNodes['formaPagamento'].NodeValue := Value;
end;

function T213_Ct_dadoBancario.Get_Banco: Integer;
begin
  Result := ChildNodes['banco'].NodeValue;
end;

procedure T213_Ct_dadoBancario.Set_Banco(Value: Integer);
begin
  ChildNodes['banco'].NodeValue := Value;
end;

function T213_Ct_dadoBancario.Get_Agencia: WideString;
begin
  Result := ChildNodes['agencia'].Text;
end;

procedure T213_Ct_dadoBancario.Set_Agencia(Value: WideString);
begin
  ChildNodes['agencia'].NodeValue := Value;
end;

function T213_Ct_dadoBancario.Get_ContaCorrente: WideString;
begin
  Result := ChildNodes['contaCorrente'].Text;
end;

procedure T213_Ct_dadoBancario.Set_ContaCorrente(Value: WideString);
begin
  ChildNodes['contaCorrente'].NodeValue := Value;
end;

{ T213_DadosResumo }

procedure T213_DadosResumo.AfterConstruction;
begin
  RegisterChildNode('detalheResumo', T213_Ct_dadosResumo);
  FDetalheResumo := CreateCollection(T213_Ct_dadosResumoList, I213_Ct_dadosResumo, 'detalheResumo') as I213_Ct_dadosResumoList;
  inherited;
end;

function T213_DadosResumo.Get_DetalheResumo: I213_Ct_dadosResumoList;
begin
  Result := FDetalheResumo;
end;

function T213_DadosResumo.Get_TotalGeralInformado: WideString;
begin
  Result := ChildNodes['totalGeralInformado'].Text;
end;

procedure T213_DadosResumo.Set_TotalGeralInformado(Value: WideString);
begin
  ChildNodes['totalGeralInformado'].NodeValue := Value;
end;

function T213_DadosResumo.Get_TotalGeralProcessado: WideString;
begin
  Result := ChildNodes['TotalGeralProcessado'].Text;
end;

procedure T213_DadosResumo.Set_TotalGeralProcessado(Value: WideString);
begin
  ChildNodes['TotalGeralProcessado'].NodeValue := Value;
end;

function T213_DadosResumo.Get_TotalGeralGlosa: WideString;
begin
  Result := ChildNodes['TotalGeralGlosa'].Text;
end;

procedure T213_DadosResumo.Set_TotalGeralGlosa(Value: WideString);
begin
  ChildNodes['TotalGeralGlosa'].NodeValue := Value;
end;

function T213_DadosResumo.Get_TotalGeralLiberado: WideString;
begin
  Result := ChildNodes['TotalGeralLiberado'].Text;
end;

procedure T213_DadosResumo.Set_TotalGeralLiberado(Value: WideString);
begin
  ChildNodes['TotalGeralLiberado'].NodeValue := Value;
end;

{ T213_Ct_dadosResumo }

function T213_Ct_dadosResumo.Get_NumeroFatura: WideString;
begin
  Result := ChildNodes['numeroFatura'].Text;
end;

procedure T213_Ct_dadosResumo.Set_NumeroFatura(Value: WideString);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function T213_Ct_dadosResumo.Get_NumeroLote: WideString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure T213_Ct_dadosResumo.Set_NumeroLote(Value: WideString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T213_Ct_dadosResumo.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T213_Ct_dadosResumo.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T213_Ct_dadosResumo.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T213_Ct_dadosResumo.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T213_Ct_dadosResumo.Get_ValorInformado: WideString;
begin
  Result := ChildNodes['valorInformado'].Text;
end;

procedure T213_Ct_dadosResumo.Set_ValorInformado(Value: WideString);
begin
  ChildNodes['valorInformado'].NodeValue := Value;
end;

function T213_Ct_dadosResumo.Get_ValorProcessado: WideString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure T213_Ct_dadosResumo.Set_ValorProcessado(Value: WideString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T213_Ct_dadosResumo.Get_ValorLiberado: WideString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure T213_Ct_dadosResumo.Set_ValorLiberado(Value: WideString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function T213_Ct_dadosResumo.Get_ValorGlosa: WideString;
begin
  Result := ChildNodes['valorGlosa'].Text;
end;

procedure T213_Ct_dadosResumo.Set_ValorGlosa(Value: WideString);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

{ T213_Ct_dadosResumoList }

function T213_Ct_dadosResumoList.Add: I213_Ct_dadosResumo;
begin
  Result := AddItem(-1) as I213_Ct_dadosResumo;
end;

function T213_Ct_dadosResumoList.Insert(const Index: Integer): I213_Ct_dadosResumo;
begin
  Result := AddItem(Index) as I213_Ct_dadosResumo;
end;
function T213_Ct_dadosResumoList.Get_Item(Index: Integer): I213_Ct_dadosResumo;
begin
  Result := List[Index] as I213_Ct_dadosResumo;
end;

{ T213_Ct_descontos }

procedure T213_Ct_descontos.AfterConstruction;
begin
  RegisterChildNode('itemDesconto', T213_ItemDesconto);
  ItemTag := 'itemDesconto';
  ItemInterface := I213_ItemDesconto;
  inherited;
end;

function T213_Ct_descontos.Get_ItemDesconto(Index: Integer): I213_ItemDesconto;
begin
  Result := List[Index] as I213_ItemDesconto;
end;

function T213_Ct_descontos.Add: I213_ItemDesconto;
begin
  Result := AddItem(-1) as I213_ItemDesconto;
end;

function T213_Ct_descontos.Insert(const Index: Integer): I213_ItemDesconto;
begin
  Result := AddItem(Index) as I213_ItemDesconto;
end;

{ T213_ItemDesconto }

function T213_ItemDesconto.Get_ValorDesconto: WideString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure T213_ItemDesconto.Set_ValorDesconto(Value: WideString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

function T213_ItemDesconto.Get_Descricao: WideString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure T213_ItemDesconto.Set_Descricao(Value: WideString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ T213_Ct_StatusProtocolo }

procedure T213_Ct_StatusProtocolo.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  RegisterChildNode('lote', T213_LoteStatusProtocolo);
  inherited;
end;

function T213_Ct_StatusProtocolo.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Ct_StatusProtocolo.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T213_Ct_StatusProtocolo.Get_NomeOperadora: WideString;
begin
  Result := ChildNodes['nomeOperadora'].Text;
end;

procedure T213_Ct_StatusProtocolo.Set_NomeOperadora(Value: WideString);
begin
  ChildNodes['nomeOperadora'].NodeValue := Value;
end;

function T213_Ct_StatusProtocolo.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T213_Ct_StatusProtocolo.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function T213_Ct_StatusProtocolo.Get_StatusProtocolo: WideString;
begin
  Result := ChildNodes['statusProtocolo'].Text;
end;

procedure T213_Ct_StatusProtocolo.Set_StatusProtocolo(Value: WideString);
begin
  ChildNodes['statusProtocolo'].NodeValue := Value;
end;

function T213_Ct_StatusProtocolo.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_StatusProtocolo.Get_CNESPrestador: WideString;
begin
  Result := ChildNodes['CNESPrestador'].Text;
end;

procedure T213_Ct_StatusProtocolo.Set_CNESPrestador(Value: WideString);
begin
  ChildNodes['CNESPrestador'].NodeValue := Value;
end;

function T213_Ct_StatusProtocolo.Get_Lote: I213_LoteStatusProtocolo;
begin
  Result := ChildNodes['lote'] as I213_LoteStatusProtocolo;
end;

{ T213_LoteStatusProtocolo }

procedure T213_LoteStatusProtocolo.AfterConstruction;
begin
  RegisterChildNode('detalheLote', T213_Ct_statusLote);
  ItemTag := 'detalheLote';
  ItemInterface := I213_Ct_statusLote;
  inherited;
end;

function T213_LoteStatusProtocolo.Get_DetalheLote(Index: Integer): I213_Ct_statusLote;
begin
  Result := List[Index] as I213_Ct_statusLote;
end;

function T213_LoteStatusProtocolo.Add: I213_Ct_statusLote;
begin
  Result := AddItem(-1) as I213_Ct_statusLote;
end;

function T213_LoteStatusProtocolo.Insert(const Index: Integer): I213_Ct_statusLote;
begin
  Result := AddItem(Index) as I213_Ct_statusLote;
end;

{ T213_Ct_statusLote }

procedure T213_Ct_statusLote.AfterConstruction;
begin
  RegisterChildNode('guias', T213_Guias);
  inherited;
end;

function T213_Ct_statusLote.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T213_Ct_statusLote.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_NumeroLote: Integer;
begin
  Result := ChildNodes['numeroLote'].NodeValue;
end;

procedure T213_Ct_statusLote.Set_NumeroLote(Value: Integer);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T213_Ct_statusLote.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_NumeroFatura: Integer;
begin
  Result := ChildNodes['numeroFatura'].NodeValue;
end;

procedure T213_Ct_statusLote.Set_NumeroFatura(Value: Integer);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_ValorProcessado: WideString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure T213_Ct_statusLote.Set_ValorProcessado(Value: WideString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_ValorLiberado: WideString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure T213_Ct_statusLote.Set_ValorLiberado(Value: WideString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_ValorGlosa: WideString;
begin
  Result := ChildNodes['valorGlosa'].Text;
end;

procedure T213_Ct_statusLote.Set_ValorGlosa(Value: WideString);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_Status: WideString;
begin
  Result := ChildNodes['status'].Text;
end;

procedure T213_Ct_statusLote.Set_Status(Value: WideString);
begin
  ChildNodes['status'].NodeValue := Value;
end;

function T213_Ct_statusLote.Get_Guias: I213_GuiasStatusLote;
begin
  Result := ChildNodes['guias'] as I213_GuiasStatusLote;
end;

{ T213_GuiasStatusLote }

procedure T213_GuiasStatusLote.AfterConstruction;
begin
  RegisterChildNode('detalheguia', T213_Detalheguia);
  ItemTag := 'detalheguia';
  ItemInterface := I213_Detalheguia;
  inherited;
end;

function T213_GuiasStatusLote.Get_Detalheguia(Index: Integer): I213_Detalheguia;
begin
  Result := List[Index] as I213_Detalheguia;
end;

function T213_GuiasStatusLote.Add: I213_Detalheguia;
begin
  Result := AddItem(-1) as I213_Detalheguia;
end;

function T213_GuiasStatusLote.Insert(const Index: Integer): I213_Detalheguia;
begin
  Result := AddItem(Index) as I213_Detalheguia;
end;

{ T213_Detalheguia }

procedure T213_Detalheguia.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', T213_Ct_cabecalhoGuia);
  RegisterChildNode('procedimentosAnalisados', T213_ProcedimentosAnalisados);
  inherited;
end;

function T213_Detalheguia.Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as I213_Ct_cabecalhoGuia;
end;

function T213_Detalheguia.Get_ProcedimentosAnalisados: I213_ProcedimentosAnalisados;
begin
  Result := ChildNodes['procedimentosAnalisados'] as I213_ProcedimentosAnalisados;
end;

{ T213_Ct_cabecalhoGuia }

function T213_Ct_cabecalhoGuia.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Ct_cabecalhoGuia.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuia.Get_DataEmissaoGuia: WideString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure T213_Ct_cabecalhoGuia.Set_DataEmissaoGuia(Value: WideString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuia.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T213_Ct_cabecalhoGuia.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuia.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T213_Ct_cabecalhoGuia.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

{ T213_ProcedimentosAnalisados }

procedure T213_ProcedimentosAnalisados.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_itemSolicitacao);
  ItemTag := 'procedimento';
  ItemInterface := I213_Ct_itemSolicitacao;
  inherited;
end;

function T213_ProcedimentosAnalisados.Get_Procedimento(Index: Integer): I213_Ct_itemSolicitacao;
begin
  Result := List[Index] as I213_Ct_itemSolicitacao;
end;

function T213_ProcedimentosAnalisados.Add: I213_Ct_itemSolicitacao;
begin
  Result := AddItem(-1) as I213_Ct_itemSolicitacao;
end;

function T213_ProcedimentosAnalisados.Insert(const Index: Integer): I213_Ct_itemSolicitacao;
begin
  Result := AddItem(Index) as I213_Ct_itemSolicitacao;
end;

{ T213_Ct_itemSolicitacao }

procedure T213_Ct_itemSolicitacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoProcedimentos', T213_Ct_tabela);
  RegisterChildNode('glosas', T213_Glosas);
  inherited;
end;

function T213_Ct_itemSolicitacao.Get_IdentificacaoProcedimentos: I213_Ct_tabela;
begin
  Result := ChildNodes['identificacaoProcedimentos'] as I213_Ct_tabela;
end;

function T213_Ct_itemSolicitacao.Get_QuantidadeSolicitada: WideString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure T213_Ct_itemSolicitacao.Set_QuantidadeSolicitada(Value: WideString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function T213_Ct_itemSolicitacao.Get_QuantidadeAutorizada: WideString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure T213_Ct_itemSolicitacao.Set_QuantidadeAutorizada(Value: WideString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function T213_Ct_itemSolicitacao.Get_StatusSolicitacaoProcedimento: WideString;
begin
  Result := ChildNodes['statusSolicitacaoProcedimento'].Text;
end;

procedure T213_Ct_itemSolicitacao.Set_StatusSolicitacaoProcedimento(Value: WideString);
begin
  ChildNodes['statusSolicitacaoProcedimento'].NodeValue := Value;
end;

function T213_Ct_itemSolicitacao.Get_Glosas: I213_Glosas;
begin
  Result := ChildNodes['glosas'] as I213_Glosas;
end;

function T213_Ct_itemSolicitacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_itemSolicitacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Glosas }

procedure T213_Glosas.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T213_Ct_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := I213_Ct_motivoGlosa;
  inherited;
end;

function T213_Glosas.Get_MotivoGlosa(Index: Integer): I213_Ct_motivoGlosa;
begin
  Result := List[Index] as I213_Ct_motivoGlosa;
end;

function T213_Glosas.Add: I213_Ct_motivoGlosa;
begin
  Result := AddItem(-1) as I213_Ct_motivoGlosa;
end;

function T213_Glosas.Insert(const Index: Integer): I213_Ct_motivoGlosa;
begin
  Result := AddItem(Index) as I213_Ct_motivoGlosa;
end;

{ T213_Ct_autorizacaoProcedimento }

procedure T213_Ct_autorizacaoProcedimento.AfterConstruction;
begin
  RegisterChildNode('identificacaoAutorizacao', T213_Ct_cabecalhoGuia);
  RegisterChildNode('motivoNegativa', T213_MotivoNegativa);
  RegisterChildNode('beneficiario', T213_Ct_beneficiario);
  RegisterChildNode('prestadorAutorizado', T213_Ct_contratado);
  RegisterChildNode('dadosAutorizacao', T213_Ct_autorizacaoGuiaInternacao);
  RegisterChildNode('procedimentos', T213_Procedimentos);
  inherited;
end;

function T213_Ct_autorizacaoProcedimento.Get_IdentificacaoAutorizacao: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoAutorizacao'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_autorizacaoProcedimento.Get_StatusSolicitacao: WideString;
begin
  Result := ChildNodes['statusSolicitacao'].Text;
end;

procedure T213_Ct_autorizacaoProcedimento.Set_StatusSolicitacao(Value: WideString);
begin
  ChildNodes['statusSolicitacao'].NodeValue := Value;
end;

function T213_Ct_autorizacaoProcedimento.Get_MotivoNegativa: I213_MotivoNegativa;
begin
  Result := ChildNodes['motivoNegativa'] as I213_MotivoNegativa;
end;

function T213_Ct_autorizacaoProcedimento.Get_Beneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_autorizacaoProcedimento.Get_PrestadorAutorizado: I213_Ct_contratado;
begin
  Result := ChildNodes['prestadorAutorizado'] as I213_Ct_contratado;
end;

function T213_Ct_autorizacaoProcedimento.Get_DadosAutorizacao: I213_Ct_autorizacaoGuiaInternacao;
begin
  Result := ChildNodes['dadosAutorizacao'] as I213_Ct_autorizacaoGuiaInternacao;
end;

function T213_Ct_autorizacaoProcedimento.Get_Procedimentos: I213_ProcedimentosAutorizacaoProc;
begin
  Result := ChildNodes['procedimentos'] as I213_ProcedimentosAutorizacaoProc;
end;

{ T213_TotalOdonto }

function T213_TotalOdonto.Get_Totalvalor: WideString;
begin
  Result := ChildNodes['totalvalor'].Text;
end;

procedure T213_TotalOdonto.Set_Totalvalor(Value: WideString);
begin
  ChildNodes['totalvalor'].NodeValue := Value;
end;

function T213_TotalOdonto.Get_TotalFranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure T213_TotalOdonto.Set_TotalFranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

function T213_TotalOdonto.Get_TotalquantidadeUS: WideString;
begin
  Result := ChildNodes['totalquantidadeUS'].Text;
end;

procedure T213_TotalOdonto.Set_TotalquantidadeUS(Value: WideString);
begin
  ChildNodes['totalquantidadeUS'].NodeValue := Value;
end;

{ T213_Ct_diariaProrrogacao }

function T213_Ct_diariaProrrogacao.Get_TipoAcomodacao: WideString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure T213_Ct_diariaProrrogacao.Set_TipoAcomodacao(Value: WideString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

function T213_Ct_diariaProrrogacao.Get_QuantidadeDiaria: WideString;
begin
  Result := ChildNodes['quantidadeDiaria'].Text;
end;

procedure T213_Ct_diariaProrrogacao.Set_QuantidadeDiaria(Value: WideString);
begin
  ChildNodes['quantidadeDiaria'].NodeValue := Value;
end;

{ T213_Ct_situacaoAutorizacao }

procedure T213_Ct_situacaoAutorizacao.AfterConstruction;
begin
  RegisterChildNode('dadosAutorizacao', T213_DadosAutorizacao);
  ItemTag := 'dadosAutorizacao';
  ItemInterface := I213_DadosAutorizacao;
  inherited;
end;

function T213_Ct_situacaoAutorizacao.Get_DadosAutorizacao(Index: Integer): I213_DadosAutorizacao;
begin
  Result := List[Index] as I213_DadosAutorizacao;
end;

function T213_Ct_situacaoAutorizacao.Add: I213_DadosAutorizacao;
begin
  Result := AddItem(-1) as I213_DadosAutorizacao;
end;

function T213_Ct_situacaoAutorizacao.Insert(const Index: Integer): I213_DadosAutorizacao;
begin
  Result := AddItem(Index) as I213_DadosAutorizacao;
end;

{ T213_DadosAutorizacao }

procedure T213_DadosAutorizacao.AfterConstruction;
begin
  RegisterChildNode('totalOdonto', T213_TotalOdonto);
  RegisterChildNode('ct_diariaProrrogacaoAutorizada', T213_Ct_diariaProrrogacaoAutorizada);
  inherited;
end;

function T213_DadosAutorizacao.Get_TotalOdonto: I213_TotalOdonto;
begin
  Result := ChildNodes['totalOdonto'] as I213_TotalOdonto;
end;

function T213_DadosAutorizacao.Get_Ct_diariaProrrogacaoAutorizada: I213_Ct_diariaProrrogacaoAutorizada;
begin
  Result := ChildNodes['ct_diariaProrrogacaoAutorizada'] as I213_Ct_diariaProrrogacaoAutorizada;
end;

{ T213_Ct_diariaProrrogacaoAutorizada }

procedure T213_Ct_diariaProrrogacaoAutorizada.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T213_Ct_motivoGlosa);
  inherited;
end;

function T213_Ct_diariaProrrogacaoAutorizada.Get_TipoAcomodacaoAutorizada: WideString;
begin
  Result := ChildNodes['tipoAcomodacaoAutorizada'].Text;
end;

procedure T213_Ct_diariaProrrogacaoAutorizada.Set_TipoAcomodacaoAutorizada(Value: WideString);
begin
  ChildNodes['tipoAcomodacaoAutorizada'].NodeValue := Value;
end;

function T213_Ct_diariaProrrogacaoAutorizada.Get_QuantidadeAutorizada: WideString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure T213_Ct_diariaProrrogacaoAutorizada.Set_QuantidadeAutorizada(Value: WideString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function T213_Ct_diariaProrrogacaoAutorizada.Get_MotivoGlosa: I213_Ct_motivoGlosa;
begin
  Result := ChildNodes['motivoGlosa'] as I213_Ct_motivoGlosa;
end;

{ T213_Ct_retornoElegibilidade }

procedure T213_Ct_retornoElegibilidade.AfterConstruction;
begin
  RegisterChildNode('dadosOperadora', T213_Ct_identificacaoOperadora);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('motivoNegacao', T213_Ct_motivoGlosa);
  inherited;
end;

function T213_Ct_retornoElegibilidade.Get_DadosOperadora: I213_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['dadosOperadora'] as I213_Ct_identificacaoOperadora;
end;

function T213_Ct_retornoElegibilidade.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_retornoElegibilidade.Get_RespostaSolicitacao: Boolean;
begin
  Result := ChildNodes['respostaSolicitacao'].NodeValue;
end;

procedure T213_Ct_retornoElegibilidade.Set_RespostaSolicitacao(Value: Boolean);
begin
  ChildNodes['respostaSolicitacao'].NodeValue := Value;
end;

function T213_Ct_retornoElegibilidade.Get_MotivoNegacao: I213_Ct_motivoGlosa;
begin
  Result := ChildNodes['motivoNegacao'] as I213_Ct_motivoGlosa;
end;

{ T213_Ct_reciboCancelaGuia }

procedure T213_Ct_reciboCancelaGuia.AfterConstruction;
begin
  RegisterChildNode('operadora', T213_Ct_identificacaoOperadora);
  RegisterChildNode('guiasCanceladas', T213_GuiasCanceladas);
  inherited;
end;

function T213_Ct_reciboCancelaGuia.Get_Operadora: I213_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['operadora'] as I213_Ct_identificacaoOperadora;
end;

function T213_Ct_reciboCancelaGuia.Get_GuiasCanceladas: I213_GuiasCanceladas;
begin
  Result := ChildNodes['guiasCanceladas'] as I213_GuiasCanceladas;
end;

{ T213_GuiasCanceladas }

procedure T213_GuiasCanceladas.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T213_DadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I213_DadosGuia;
  inherited;
end;

function T213_GuiasCanceladas.Get_DadosGuia(Index: Integer): I213_DadosGuia;
begin
  Result := List[Index] as I213_DadosGuia;
end;

function T213_GuiasCanceladas.Add: I213_DadosGuia;
begin
  Result := AddItem(-1) as I213_DadosGuia;
end;

function T213_GuiasCanceladas.Insert(const Index: Integer): I213_DadosGuia;
begin
  Result := AddItem(Index) as I213_DadosGuia;
end;

{ T213_DadosGuia }

function T213_DadosGuia.Get_StatusCancelamento: WideString;
begin
  Result := ChildNodes['statusCancelamento'].Text;
end;

procedure T213_DadosGuia.Set_StatusCancelamento(Value: WideString);
begin
  ChildNodes['statusCancelamento'].NodeValue := Value;
end;

function T213_DadosGuia.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_DadosGuia.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_PrestadorParaOperadora }

procedure T213_PrestadorParaOperadora.AfterConstruction;
begin
  RegisterChildNode('loteGuias', T213_Ct_loteGuias);
  RegisterChildNode('solicitacaoDemonstrativoRetorno', T213_Ct_solicitacaoDemonstrativoPagamento);
  RegisterChildNode('solicitacaoStatusProtocolo', T213_Ct_solicitacaoStatusProtocolo);
  RegisterChildNode('solicitacaoProcedimento', T213_SolicitacaoProcedimento);
  RegisterChildNode('solicitaStatusAutorizacao', T213_Ct_solicitaStatusAutorizacao);
  RegisterChildNode('verificaElegibilidade', T213_Ct_solicitaElegibilidade);
  RegisterChildNode('cancelaGuia', T213_Ct_cancelaGuia);
  inherited;
end;

function T213_PrestadorParaOperadora.Get_LoteGuias: I213_Ct_loteGuias;
begin
  Result := ChildNodes['loteGuias'] as I213_Ct_loteGuias;
end;

function T213_PrestadorParaOperadora.Get_SolicitacaoDemonstrativoRetorno: I213_Ct_solicitacaoDemonstrativoPagamento;
begin
  Result := ChildNodes['solicitacaoDemonstrativoRetorno'] as I213_Ct_solicitacaoDemonstrativoPagamento;
end;

function T213_PrestadorParaOperadora.Get_SolicitacaoStatusProtocolo: I213_Ct_solicitacaoStatusProtocolo;
begin
  Result := ChildNodes['solicitacaoStatusProtocolo'] as I213_Ct_solicitacaoStatusProtocolo;
end;

function T213_PrestadorParaOperadora.Get_SolicitacaoProcedimento: I213_SolicitacaoProcedimento;
begin
  Result := ChildNodes['solicitacaoProcedimento'] as I213_SolicitacaoProcedimento;
end;

function T213_PrestadorParaOperadora.Get_SolicitaStatusAutorizacao: I213_Ct_solicitaStatusAutorizacao;
begin
  Result := ChildNodes['solicitaStatusAutorizacao'] as I213_Ct_solicitaStatusAutorizacao;
end;

function T213_PrestadorParaOperadora.Get_VerificaElegibilidade: I213_Ct_solicitaElegibilidade;
begin
  Result := ChildNodes['verificaElegibilidade'] as I213_Ct_solicitaElegibilidade;
end;

function T213_PrestadorParaOperadora.Get_CancelaGuia: I213_Ct_cancelaGuia;
begin
  Result := ChildNodes['cancelaGuia'] as I213_Ct_cancelaGuia;
end;

{ T213_Ct_loteGuias }

procedure T213_Ct_loteGuias.AfterConstruction;
begin
  RegisterChildNode('guias', T213_Ct_guias);
  inherited;
end;

function T213_Ct_loteGuias.Get_NumeroLote: Integer;
begin
  Result := ChildNodes['numeroLote'].NodeValue;
end;

procedure T213_Ct_loteGuias.Set_NumeroLote(Value: Integer);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T213_Ct_loteGuias.Get_Guias: I213_Ct_guias;
begin
  Result := ChildNodes['guias'] as I213_Ct_guias;
end;

{ T213_Ct_guias }

procedure T213_Ct_guias.AfterConstruction;
begin
  RegisterChildNode('guiaFaturamento', T213_GuiaFaturamento);
  RegisterChildNode('guiaRevisaoGlosa', T213_GuiaRevisaoGlosa);
  inherited;
end;

function T213_Ct_guias.Get_GuiaFaturamento: I213_GuiaFaturamento;
begin
  Result := ChildNodes['guiaFaturamento'] as I213_GuiaFaturamento;
end;

function T213_Ct_guias.Get_GuiaRevisaoGlosa: I213_GuiaRevisaoGlosa;
begin
  Result := ChildNodes['guiaRevisaoGlosa'] as I213_GuiaRevisaoGlosa;
end;

{ T213_Ct_solicitacaoDemonstrativoPagamento }

procedure T213_Ct_solicitacaoDemonstrativoPagamento.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  inherited;
end;

function T213_Ct_solicitacaoDemonstrativoPagamento.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_solicitacaoDemonstrativoPagamento.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Ct_solicitacaoDemonstrativoPagamento.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T213_Ct_solicitacaoDemonstrativoPagamento.Get_DataSolicitacao: WideString;
begin
  Result := ChildNodes['dataSolicitacao'].Text;
end;

procedure T213_Ct_solicitacaoDemonstrativoPagamento.Set_DataSolicitacao(Value: WideString);
begin
  ChildNodes['dataSolicitacao'].NodeValue := Value;
end;

function T213_Ct_solicitacaoDemonstrativoPagamento.Get_TipoDemonstrativo: WideString;
begin
  Result := ChildNodes['tipoDemonstrativo'].Text;
end;

procedure T213_Ct_solicitacaoDemonstrativoPagamento.Set_TipoDemonstrativo(Value: WideString);
begin
  ChildNodes['tipoDemonstrativo'].NodeValue := Value;
end;

function T213_Ct_solicitacaoDemonstrativoPagamento.Get_DataInicial: WideString;
begin
  Result := ChildNodes['dataInicial'].Text;
end;

procedure T213_Ct_solicitacaoDemonstrativoPagamento.Set_DataInicial(Value: WideString);
begin
  ChildNodes['dataInicial'].NodeValue := Value;
end;

function T213_Ct_solicitacaoDemonstrativoPagamento.Get_DataFinal: WideString;
begin
  Result := ChildNodes['dataFinal'].Text;
end;

procedure T213_Ct_solicitacaoDemonstrativoPagamento.Set_DataFinal(Value: WideString);
begin
  ChildNodes['dataFinal'].NodeValue := Value;
end;

function T213_Ct_solicitacaoDemonstrativoPagamento.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T213_Ct_solicitacaoDemonstrativoPagamento.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

{ T213_Ct_solicitacaoStatusProtocolo }

procedure T213_Ct_solicitacaoStatusProtocolo.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  RegisterChildNode('detalheProtocolo', T213_DetalheProtocolo);
  inherited;
end;

function T213_Ct_solicitacaoStatusProtocolo.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Ct_solicitacaoStatusProtocolo.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T213_Ct_solicitacaoStatusProtocolo.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_solicitacaoStatusProtocolo.Get_DataSolicitacao: WideString;
begin
  Result := ChildNodes['dataSolicitacao'].Text;
end;

procedure T213_Ct_solicitacaoStatusProtocolo.Set_DataSolicitacao(Value: WideString);
begin
  ChildNodes['dataSolicitacao'].NodeValue := Value;
end;

function T213_Ct_solicitacaoStatusProtocolo.Get_DetalheProtocolo: I213_DetalheProtocolo;
begin
  Result := ChildNodes['detalheProtocolo'] as I213_DetalheProtocolo;
end;

{ T213_DetalheProtocolo }

procedure T213_DetalheProtocolo.AfterConstruction;
begin
  ItemTag := 'numeroProtocolo';
  ItemInterface := IXMLNode;
  inherited;
end;

function T213_DetalheProtocolo.Get_NumeroProtocolo(Index: Integer): WideString;
begin
  Result := List[Index].Text;
end;

function T213_DetalheProtocolo.Add(const NumeroProtocolo: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := NumeroProtocolo;
end;

function T213_DetalheProtocolo.Insert(const Index: Integer; const NumeroProtocolo: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := NumeroProtocolo;
end;

{ T213_SolicitacaoProcedimento }

procedure T213_SolicitacaoProcedimento.AfterConstruction;
begin
  RegisterChildNode('guiaSolicInternacao', T213_Ct_guiaSolicInternacao);
  RegisterChildNode('guiaSolicitacaoSADT', T213_Ct_guiaSolicitacaoSP_SADT);
  RegisterChildNode('guiaSolicitacaoOdontologia', T213_Ct_guiaSolicitacaoOdonto);
  RegisterChildNode('guiaSolicitacaoProrrogacao', T213_Ct_guiaSolicitacaoProrrogacao);
  FGuiaSolicInternacao := CreateCollection(T213_Ct_guiaSolicInternacaoList, I213_Ct_guiaSolicInternacao, 'guiaSolicInternacao') as I213_Ct_guiaSolicInternacaoList;
  FGuiaSolicitacaoSADT := CreateCollection(T213_Ct_guiaSolicitacaoSP_SADTList, I213_Ct_guiaSolicitacaoSP_SADT, 'guiaSolicitacaoSADT') as I213_Ct_guiaSolicitacaoSP_SADTList;
  FGuiaSolicitacaoOdontologia := CreateCollection(T213_Ct_guiaSolicitacaoOdontoList, I213_Ct_guiaSolicitacaoOdonto, 'guiaSolicitacaoOdontologia') as I213_Ct_guiaSolicitacaoOdontoList;
  FGuiaSolicitacaoProrrogacao := CreateCollection(T213_Ct_guiaSolicitacaoProrrogacaoList, I213_Ct_guiaSolicitacaoProrrogacao, 'guiaSolicitacaoProrrogacao') as I213_Ct_guiaSolicitacaoProrrogacaoList;
  inherited;
end;

function T213_SolicitacaoProcedimento.Get_GuiaSolicInternacao: I213_Ct_guiaSolicInternacaoList;
begin
  Result := FGuiaSolicInternacao;
end;

function T213_SolicitacaoProcedimento.Get_GuiaSolicitacaoSADT: I213_Ct_guiaSolicitacaoSP_SADTList;
begin
  Result := FGuiaSolicitacaoSADT;
end;

function T213_SolicitacaoProcedimento.Get_GuiaSolicitacaoOdontologia: I213_Ct_guiaSolicitacaoOdontoList;
begin
  Result := FGuiaSolicitacaoOdontologia;
end;

function T213_SolicitacaoProcedimento.Get_GuiaSolicitacaoProrrogacao: I213_Ct_guiaSolicitacaoProrrogacaoList;
begin
  Result := FGuiaSolicitacaoProrrogacao;
end;

{ T213_Ct_guiaSolicInternacao }

procedure T213_Ct_guiaSolicInternacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSolicitacaoInternacao', T213_Ct_cabecalhoSolicitacao);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T213_Ct_solicitante);
  RegisterChildNode('prestadorSolicitado', T213_PrestadorSolicitado);
  RegisterChildNode('hipotesesDiagnosticas', T213_Ct_hipoteseDiagnostica);
  RegisterChildNode('procedimentosExamesSolicitados', T213_Ct_procedimentosSolicitados);
  RegisterChildNode('OPMsSolicitadas', T213_Ct_OPMSolicitadas);
  inherited;
end;

function T213_Ct_guiaSolicInternacao.Get_IdentificacaoGuiaSolicitacaoInternacao: I213_Ct_cabecalhoSolicitacao;
begin
  Result := ChildNodes['identificacaoGuiaSolicitacaoInternacao'] as I213_Ct_cabecalhoSolicitacao;
end;

function T213_Ct_guiaSolicInternacao.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaSolicInternacao.Get_DadosSolicitante: I213_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I213_Ct_solicitante;
end;

function T213_Ct_guiaSolicInternacao.Get_PrestadorSolicitado: I213_PrestadorSolicitado;
begin
  Result := ChildNodes['prestadorSolicitado'] as I213_PrestadorSolicitado;
end;

function T213_Ct_guiaSolicInternacao.Get_CaraterInternacao: WideString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure T213_Ct_guiaSolicInternacao.Set_CaraterInternacao(Value: WideString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaSolicInternacao.Get_TipoInternacao: WideString;
begin
  Result := ChildNodes['tipoInternacao'].Text;
end;

procedure T213_Ct_guiaSolicInternacao.Set_TipoInternacao(Value: WideString);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaSolicInternacao.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T213_Ct_guiaSolicInternacao.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T213_Ct_guiaSolicInternacao.Get_RegimeInternacao: WideString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure T213_Ct_guiaSolicInternacao.Set_RegimeInternacao(Value: WideString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaSolicInternacao.Get_HipotesesDiagnosticas: I213_Ct_hipoteseDiagnostica;
begin
  Result := ChildNodes['hipotesesDiagnosticas'] as I213_Ct_hipoteseDiagnostica;
end;

function T213_Ct_guiaSolicInternacao.Get_ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosExamesSolicitados'] as I213_Ct_procedimentosSolicitados;
end;

function T213_Ct_guiaSolicInternacao.Get_OPMsSolicitadas: I213_Ct_OPMSolicitadas;
begin
  Result := ChildNodes['OPMsSolicitadas'] as I213_Ct_OPMSolicitadas;
end;

function T213_Ct_guiaSolicInternacao.Get_DiasSolicitados: Integer;
begin
  Result := ChildNodes['diasSolicitados'].NodeValue;
end;

procedure T213_Ct_guiaSolicInternacao.Set_DiasSolicitados(Value: Integer);
begin
  ChildNodes['diasSolicitados'].NodeValue := Value;
end;

function T213_Ct_guiaSolicInternacao.Get_DataProvavelAdmisHosp: WideString;
begin
  Result := ChildNodes['dataProvavelAdmisHosp'].Text;
end;

procedure T213_Ct_guiaSolicInternacao.Set_DataProvavelAdmisHosp(Value: WideString);
begin
  ChildNodes['dataProvavelAdmisHosp'].NodeValue := Value;
end;

function T213_Ct_guiaSolicInternacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaSolicInternacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_cabecalhoSolicitacao }

function T213_Ct_cabecalhoSolicitacao.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Ct_cabecalhoSolicitacao.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T213_Ct_cabecalhoSolicitacao.Get_DataEmissaoGuia: WideString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure T213_Ct_cabecalhoSolicitacao.Set_DataEmissaoGuia(Value: WideString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function T213_Ct_cabecalhoSolicitacao.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T213_Ct_cabecalhoSolicitacao.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T213_Ct_cabecalhoSolicitacao.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T213_Ct_cabecalhoSolicitacao.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

{ T213_Ct_solicitante }

procedure T213_Ct_solicitante.AfterConstruction;
begin
  RegisterChildNode('contratado', T213_Ct_contratadoSolicitante);
  RegisterChildNode('profissional', T213_Ct_identificacaoProfissional);
  inherited;
end;

function T213_Ct_solicitante.Get_Contratado: I213_Ct_contratadoSolicitante;
begin
  Result := ChildNodes['contratado'] as I213_Ct_contratadoSolicitante;
end;

function T213_Ct_solicitante.Get_Profissional: I213_Ct_identificacaoProfissional;
begin
  Result := ChildNodes['profissional'] as I213_Ct_identificacaoProfissional;
end;

{ T213_Ct_contratadoSolicitante }

procedure T213_Ct_contratadoSolicitante.AfterConstruction;
begin
  RegisterChildNode('identificacao', T213_Ct_identificacaoPrestador);
  RegisterChildNode('enderecoContratado', T213_Ct_endereco);
  inherited;
end;

function T213_Ct_contratadoSolicitante.Get_Identificacao: I213_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['identificacao'] as I213_Ct_identificacaoPrestador;
end;

function T213_Ct_contratadoSolicitante.Get_NomeContratado: WideString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure T213_Ct_contratadoSolicitante.Set_NomeContratado(Value: WideString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function T213_Ct_contratadoSolicitante.Get_EnderecoContratado: I213_Ct_endereco;
begin
  Result := ChildNodes['enderecoContratado'] as I213_Ct_endereco;
end;

function T213_Ct_contratadoSolicitante.Get_NumeroCNES: WideString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure T213_Ct_contratadoSolicitante.Set_NumeroCNES(Value: WideString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ T213_Ct_identificacaoPrestador }

procedure T213_Ct_identificacaoPrestador.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T213_Ct_conselhoProfissional);
  inherited;
end;

function T213_Ct_identificacaoPrestador.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T213_Ct_identificacaoPrestador.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function T213_Ct_identificacaoPrestador.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T213_Ct_identificacaoPrestador.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function T213_Ct_identificacaoPrestador.Get_CodigoPrestadorNaOperadora: WideString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure T213_Ct_identificacaoPrestador.Set_CodigoPrestadorNaOperadora(Value: WideString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

function T213_Ct_identificacaoPrestador.Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I213_Ct_conselhoProfissional;
end;

{ T213_Ct_conselhoProfissional }

function T213_Ct_conselhoProfissional.Get_SiglaConselho: WideString;
begin
  Result := ChildNodes['siglaConselho'].Text;
end;

procedure T213_Ct_conselhoProfissional.Set_SiglaConselho(Value: WideString);
begin
  ChildNodes['siglaConselho'].NodeValue := Value;
end;

function T213_Ct_conselhoProfissional.Get_NumeroConselho: WideString;
begin
  Result := ChildNodes['numeroConselho'].Text;
end;

procedure T213_Ct_conselhoProfissional.Set_NumeroConselho(Value: WideString);
begin
  ChildNodes['numeroConselho'].NodeValue := Value;
end;

function T213_Ct_conselhoProfissional.Get_UfConselho: WideString;
begin
  Result := ChildNodes['ufConselho'].Text;
end;

procedure T213_Ct_conselhoProfissional.Set_UfConselho(Value: WideString);
begin
  ChildNodes['ufConselho'].NodeValue := Value;
end;

{ T213_Ct_identificacaoProfissional }

procedure T213_Ct_identificacaoProfissional.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T213_Ct_conselhoProfissional);
  inherited;
end;

function T213_Ct_identificacaoProfissional.Get_NomeProfissional: WideString;
begin
  Result := ChildNodes['nomeProfissional'].Text;
end;

procedure T213_Ct_identificacaoProfissional.Set_NomeProfissional(Value: WideString);
begin
  ChildNodes['nomeProfissional'].NodeValue := Value;
end;

function T213_Ct_identificacaoProfissional.Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I213_Ct_conselhoProfissional;
end;

function T213_Ct_identificacaoProfissional.Get_Cbos: WideString;
begin
  Result := ChildNodes['cbos'].Text;
end;

procedure T213_Ct_identificacaoProfissional.Set_Cbos(Value: WideString);
begin
  ChildNodes['cbos'].NodeValue := Value;
end;

{ T213_PrestadorSolicitado }

function T213_PrestadorSolicitado.Get_NomePrestador: WideString;
begin
  Result := ChildNodes['nomePrestador'].Text;
end;

procedure T213_PrestadorSolicitado.Set_NomePrestador(Value: WideString);
begin
  ChildNodes['nomePrestador'].NodeValue := Value;
end;

{ T213_Ct_hipoteseDiagnostica }

procedure T213_Ct_hipoteseDiagnostica.AfterConstruction;
begin
  RegisterChildNode('CIDPrincipal', T213_Ct_diagnosticoGuia);
  RegisterChildNode('diagnosticosSecundarios', T213_Ct_diagnosticosSecundarios);
  FDiagnosticosSecundarios := CreateCollection(T213_Ct_diagnosticosSecundariosList, I213_Ct_diagnosticosSecundarios, 'diagnosticosSecundarios') as I213_Ct_diagnosticosSecundariosList;
  inherited;
end;

function T213_Ct_hipoteseDiagnostica.Get_CIDPrincipal: I213_Ct_diagnosticoGuia;
begin
  Result := ChildNodes['CIDPrincipal'] as I213_Ct_diagnosticoGuia;
end;

function T213_Ct_hipoteseDiagnostica.Get_DiagnosticosSecundarios: I213_Ct_diagnosticosSecundariosList;
begin
  Result := FDiagnosticosSecundarios;
end;

{ T213_Ct_diagnosticoGuia }

procedure T213_Ct_diagnosticoGuia.AfterConstruction;
begin
  RegisterChildNode('CID', T213_Ct_diagnostico);
  RegisterChildNode('tempoReferidoEvolucaoDoenca', T213_Ct_tempoEvolucaoDoenca);
  inherited;
end;

function T213_Ct_diagnosticoGuia.Get_CID: I213_Ct_diagnostico;
begin
  Result := ChildNodes['CID'] as I213_Ct_diagnostico;
end;

function T213_Ct_diagnosticoGuia.Get_TipoDoenca: WideString;
begin
  Result := ChildNodes['tipoDoenca'].Text;
end;

procedure T213_Ct_diagnosticoGuia.Set_TipoDoenca(Value: WideString);
begin
  ChildNodes['tipoDoenca'].NodeValue := Value;
end;

function T213_Ct_diagnosticoGuia.Get_TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca;
begin
  Result := ChildNodes['tempoReferidoEvolucaoDoenca'] as I213_Ct_tempoEvolucaoDoenca;
end;

function T213_Ct_diagnosticoGuia.Get_IndicadorAcidente: WideString;
begin
  Result := ChildNodes['indicadorAcidente'].Text;
end;

procedure T213_Ct_diagnosticoGuia.Set_IndicadorAcidente(Value: WideString);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

{ T213_Ct_diagnostico }

function T213_Ct_diagnostico.Get_NomeTabela: WideString;
begin
  Result := ChildNodes['nomeTabela'].Text;
end;

procedure T213_Ct_diagnostico.Set_NomeTabela(Value: WideString);
begin
  ChildNodes['nomeTabela'].NodeValue := Value;
end;

function T213_Ct_diagnostico.Get_CodigoDiagnostico: WideString;
begin
  Result := ChildNodes['codigoDiagnostico'].Text;
end;

procedure T213_Ct_diagnostico.Set_CodigoDiagnostico(Value: WideString);
begin
  ChildNodes['codigoDiagnostico'].NodeValue := Value;
end;

function T213_Ct_diagnostico.Get_DescricaoDiagnostico: WideString;
begin
  Result := ChildNodes['descricaoDiagnostico'].Text;
end;

procedure T213_Ct_diagnostico.Set_DescricaoDiagnostico(Value: WideString);
begin
  ChildNodes['descricaoDiagnostico'].NodeValue := Value;
end;

{ T213_Ct_tempoEvolucaoDoenca }

function T213_Ct_tempoEvolucaoDoenca.Get_Valor: Integer;
begin
  Result := ChildNodes['valor'].NodeValue;
end;

procedure T213_Ct_tempoEvolucaoDoenca.Set_Valor(Value: Integer);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T213_Ct_tempoEvolucaoDoenca.Get_UnidadeTempo: WideString;
begin
  Result := ChildNodes['unidadeTempo'].Text;
end;

procedure T213_Ct_tempoEvolucaoDoenca.Set_UnidadeTempo(Value: WideString);
begin
  ChildNodes['unidadeTempo'].NodeValue := Value;
end;

{ T213_Ct_diagnosticosSecundarios }

procedure T213_Ct_diagnosticosSecundarios.AfterConstruction;
begin
  RegisterChildNode('CID', T213_Ct_diagnostico);
  ItemTag := 'CID';
  ItemInterface := I213_Ct_diagnostico;
  inherited;
end;

function T213_Ct_diagnosticosSecundarios.Get_CID(Index: Integer): I213_Ct_diagnostico;
begin
  Result := List[Index] as I213_Ct_diagnostico;
end;

function T213_Ct_diagnosticosSecundarios.Add: I213_Ct_diagnostico;
begin
  Result := AddItem(-1) as I213_Ct_diagnostico;
end;

function T213_Ct_diagnosticosSecundarios.Insert(const Index: Integer): I213_Ct_diagnostico;
begin
  Result := AddItem(Index) as I213_Ct_diagnostico;
end;

{ T213_Ct_procedimentosSolicitados }

procedure T213_Ct_procedimentosSolicitados.AfterConstruction;
begin
  RegisterChildNode('procedimentoSolicitado', T213_ProcedimentoSolicitado);
  ItemTag := 'procedimentoSolicitado';
  ItemInterface := I213_ProcedimentoSolicitado;
  inherited;
end;

function T213_Ct_procedimentosSolicitados.Get_ProcedimentoSolicitado(Index: Integer): I213_ProcedimentoSolicitado;
begin
  Result := List[Index] as I213_ProcedimentoSolicitado;
end;

function T213_Ct_procedimentosSolicitados.Add: I213_ProcedimentoSolicitado;
begin
  Result := AddItem(-1) as I213_ProcedimentoSolicitado;
end;

function T213_Ct_procedimentosSolicitados.Insert(const Index: Integer): I213_ProcedimentoSolicitado;
begin
  Result := AddItem(Index) as I213_ProcedimentoSolicitado;
end;

{ T213_ProcedimentoSolicitado }

procedure T213_ProcedimentoSolicitado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_tabela);
  inherited;
end;

function T213_ProcedimentoSolicitado.Get_QuantidadeSolicitada: Integer;
begin
  Result := ChildNodes['quantidadeSolicitada'].NodeValue;
end;

procedure T213_ProcedimentoSolicitado.Set_QuantidadeSolicitada(Value: Integer);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function T213_ProcedimentoSolicitado.Get_Procedimento: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I213_Ct_tabela;
end;

{ T213_Ct_OPMSolicitadas }

procedure T213_Ct_OPMSolicitadas.AfterConstruction;
begin
  RegisterChildNode('OPMSolicitada', T213_OPMSolicitada);
  ItemTag := 'OPMSolicitada';
  ItemInterface := I213_OPMSolicitada;
  inherited;
end;

function T213_Ct_OPMSolicitadas.Get_OPMSolicitada(Index: Integer): I213_OPMSolicitada;
begin
  Result := List[Index] as I213_OPMSolicitada;
end;

function T213_Ct_OPMSolicitadas.Add: I213_OPMSolicitada;
begin
  Result := AddItem(-1) as I213_OPMSolicitada;
end;

function T213_Ct_OPMSolicitadas.Insert(const Index: Integer): I213_OPMSolicitada;
begin
  Result := AddItem(Index) as I213_OPMSolicitada;
end;

{ T213_OPMSolicitada }

procedure T213_OPMSolicitada.AfterConstruction;
begin
  RegisterChildNode('OPM', T213_Ct_tabela);
  inherited;
end;

function T213_OPMSolicitada.Get_QuantidadeSolicitada: WideString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure T213_OPMSolicitada.Set_QuantidadeSolicitada(Value: WideString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function T213_OPMSolicitada.Get_Fabricante: WideString;
begin
  Result := ChildNodes['fabricante'].Text;
end;

procedure T213_OPMSolicitada.Set_Fabricante(Value: WideString);
begin
  ChildNodes['fabricante'].NodeValue := Value;
end;

function T213_OPMSolicitada.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T213_OPMSolicitada.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T213_OPMSolicitada.Get_OPM: I213_Ct_tabela;
begin
  Result := ChildNodes['OPM'] as I213_Ct_tabela;
end;

{ T213_Ct_guiaSolicitacaoSP_SADT }

procedure T213_Ct_guiaSolicitacaoSP_SADT.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSolicitacaoSADTSP', T213_Ct_cabecalhoSolicitacao);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T213_Ct_solicitante);
  RegisterChildNode('Diagnostico', T213_Ct_diagnostico);
  RegisterChildNode('procedimentosSolicitados', T213_Ct_procedimentosSolicitados);
  RegisterChildNode('opmSolicitada', T213_Ct_OPMSolicitadas);
  inherited;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_IdentificacaoGuiaSolicitacaoSADTSP: I213_Ct_cabecalhoSolicitacao;
begin
  Result := ChildNodes['identificacaoGuiaSolicitacaoSADTSP'] as I213_Ct_cabecalhoSolicitacao;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_NumeroGuiaPrincipal: Integer;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].NodeValue;
end;

procedure T213_Ct_guiaSolicitacaoSP_SADT.Set_NumeroGuiaPrincipal(Value: Integer);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_DadosSolicitante: I213_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I213_Ct_solicitante;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_CaraterSolicitacao: WideString;
begin
  Result := ChildNodes['caraterSolicitacao'].Text;
end;

procedure T213_Ct_guiaSolicitacaoSP_SADT.Set_CaraterSolicitacao(Value: WideString);
begin
  ChildNodes['caraterSolicitacao'].NodeValue := Value;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_DataHoraSolicitacao: WideString;
begin
  Result := ChildNodes['dataHoraSolicitacao'].Text;
end;

procedure T213_Ct_guiaSolicitacaoSP_SADT.Set_DataHoraSolicitacao(Value: WideString);
begin
  ChildNodes['dataHoraSolicitacao'].NodeValue := Value;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_Diagnostico: I213_Ct_diagnostico;
begin
  Result := ChildNodes['Diagnostico'] as I213_Ct_diagnostico;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T213_Ct_guiaSolicitacaoSP_SADT.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_ProcedimentosSolicitados: I213_Ct_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosSolicitados'] as I213_Ct_procedimentosSolicitados;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_OpmSolicitada: I213_Ct_OPMSolicitadas;
begin
  Result := ChildNodes['opmSolicitada'] as I213_Ct_OPMSolicitadas;
end;

function T213_Ct_guiaSolicitacaoSP_SADT.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaSolicitacaoSP_SADT.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_guiaSolicitacaoOdonto }

procedure T213_Ct_guiaSolicitacaoOdonto.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', T213_Ct_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', T213_DadosBeneficiario);
  RegisterChildNode('dadosSolicitante', T213_DadosSolicitante);
  RegisterChildNode('situacaoInicial', T213_Ct_situacaoInicial);
  RegisterChildNode('planoTratamento', T213_PlanoTratamento);
  inherited;
end;

function T213_Ct_guiaSolicitacaoOdonto.Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as I213_Ct_cabecalhoGuiaOdonto;
end;

function T213_Ct_guiaSolicitacaoOdonto.Get_DadosBeneficiario: I213_DadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_DadosBeneficiario;
end;

function T213_Ct_guiaSolicitacaoOdonto.Get_DadosSolicitante: I213_DadosSolicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I213_DadosSolicitante;
end;

function T213_Ct_guiaSolicitacaoOdonto.Get_SituacaoInicial: I213_Ct_situacaoInicial;
begin
  Result := ChildNodes['situacaoInicial'] as I213_Ct_situacaoInicial;
end;

function T213_Ct_guiaSolicitacaoOdonto.Get_PlanoTratamento: I213_PlanoTratamento;
begin
  Result := ChildNodes['planoTratamento'] as I213_PlanoTratamento;
end;

function T213_Ct_guiaSolicitacaoOdonto.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaSolicitacaoOdonto.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_cabecalhoGuiaOdonto }

function T213_Ct_cabecalhoGuiaOdonto.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuiaOdonto.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuiaOdonto.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuiaOdonto.Get_DataEmissaoGuia: WideString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_DataEmissaoGuia(Value: WideString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuiaOdonto.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuiaOdonto.Get_DataAutorizacao: WideString;
begin
  Result := ChildNodes['dataAutorizacao'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_DataAutorizacao(Value: WideString);
begin
  ChildNodes['dataAutorizacao'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuiaOdonto.Get_SenhaAutorizacao: WideString;
begin
  Result := ChildNodes['senhaAutorizacao'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_SenhaAutorizacao(Value: WideString);
begin
  ChildNodes['senhaAutorizacao'].NodeValue := Value;
end;

function T213_Ct_cabecalhoGuiaOdonto.Get_ValidadeSenha: WideString;
begin
  Result := ChildNodes['validadeSenha'].Text;
end;

procedure T213_Ct_cabecalhoGuiaOdonto.Set_ValidadeSenha(Value: WideString);
begin
  ChildNodes['validadeSenha'].NodeValue := Value;
end;

{ T213_DadosBeneficiario }

function T213_DadosBeneficiario.Get_NomeEmpresa: WideString;
begin
  Result := ChildNodes['nomeEmpresa'].Text;
end;

procedure T213_DadosBeneficiario.Set_NomeEmpresa(Value: WideString);
begin
  ChildNodes['nomeEmpresa'].NodeValue := Value;
end;

function T213_DadosBeneficiario.Get_NumeroTelefone: WideString;
begin
  Result := ChildNodes['numeroTelefone'].Text;
end;

procedure T213_DadosBeneficiario.Set_NumeroTelefone(Value: WideString);
begin
  ChildNodes['numeroTelefone'].NodeValue := Value;
end;

function T213_DadosBeneficiario.Get_NomeTitular: WideString;
begin
  Result := ChildNodes['nomeTitular'].Text;
end;

procedure T213_DadosBeneficiario.Set_NomeTitular(Value: WideString);
begin
  ChildNodes['nomeTitular'].NodeValue := Value;
end;

{ T213_DadosSolicitante }

procedure T213_DadosSolicitante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', T213_DadosContratado);
  RegisterChildNode('dadosExecutante', T213_DadosExecutante);
  inherited;
end;

function T213_DadosSolicitante.Get_DadosContratado: I213_DadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as I213_DadosContratado;
end;

function T213_DadosSolicitante.Get_DadosExecutante: I213_DadosExecutante;
begin
  Result := ChildNodes['dadosExecutante'] as I213_DadosExecutante;
end;

{ T213_DadosContratado }

procedure T213_DadosContratado.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T213_Ct_conselhoProfissional);
  inherited;
end;

function T213_DadosContratado.Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I213_Ct_conselhoProfissional;
end;

{ T213_Ct_profissionalExecutante }

procedure T213_Ct_profissionalExecutante.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T213_Ct_conselhoProfissional);
  inherited;
end;

function T213_Ct_profissionalExecutante.Get_NomeExecutante: WideString;
begin
  Result := ChildNodes['nomeExecutante'].Text;
end;

procedure T213_Ct_profissionalExecutante.Set_NomeExecutante(Value: WideString);
begin
  ChildNodes['nomeExecutante'].NodeValue := Value;
end;

function T213_Ct_profissionalExecutante.Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I213_Ct_conselhoProfissional;
end;

function T213_Ct_profissionalExecutante.Get_CodigoCBOS: WideString;
begin
  Result := ChildNodes['codigoCBOS'].Text;
end;

procedure T213_Ct_profissionalExecutante.Set_CodigoCBOS(Value: WideString);
begin
  ChildNodes['codigoCBOS'].NodeValue := Value;
end;

{ T213_Ct_situacaoInicial }

procedure T213_Ct_situacaoInicial.AfterConstruction;
begin
  RegisterChildNode('situacaoClinica', T213_Ct_situacaoClinica);
  inherited;
end;

function T213_Ct_situacaoInicial.Get_SituacaoClinica: I213_Ct_situacaoClinica;
begin
  Result := ChildNodes['situacaoClinica'] as I213_Ct_situacaoClinica;
end;

function T213_Ct_situacaoInicial.Get_DoencaPeriodontal: Boolean;
begin
  Result := ChildNodes['doencaPeriodontal'].NodeValue;
end;

procedure T213_Ct_situacaoInicial.Set_DoencaPeriodontal(Value: Boolean);
begin
  ChildNodes['doencaPeriodontal'].NodeValue := Value;
end;

function T213_Ct_situacaoInicial.Get_AlteracaoTecidoMole: Boolean;
begin
  Result := ChildNodes['alteracaoTecidoMole'].NodeValue;
end;

procedure T213_Ct_situacaoInicial.Set_AlteracaoTecidoMole(Value: Boolean);
begin
  ChildNodes['alteracaoTecidoMole'].NodeValue := Value;
end;

function T213_Ct_situacaoInicial.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_situacaoInicial.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_situacaoClinica }

procedure T213_Ct_situacaoClinica.AfterConstruction;
begin
  RegisterChildNode('dentes', T213_Dentes);
  ItemTag := 'dentes';
  ItemInterface := I213_Dentes;
  inherited;
end;

function T213_Ct_situacaoClinica.Get_Dentes(Index: Integer): I213_Dentes;
begin
  Result := List[Index] as I213_Dentes;
end;

function T213_Ct_situacaoClinica.Add: I213_Dentes;
begin
  Result := AddItem(-1) as I213_Dentes;
end;

function T213_Ct_situacaoClinica.Insert(const Index: Integer): I213_Dentes;
begin
  Result := AddItem(Index) as I213_Dentes;
end;

{ T213_Dentes }

function T213_Dentes.Get_ElementoDentario: WideString;
begin
  Result := ChildNodes['elementoDentario'].Text;
end;

procedure T213_Dentes.Set_ElementoDentario(Value: WideString);
begin
  ChildNodes['elementoDentario'].NodeValue := Value;
end;

function T213_Dentes.Get_CondicaoClinica: WideString;
begin
  Result := ChildNodes['condicaoClinica'].Text;
end;

procedure T213_Dentes.Set_CondicaoClinica(Value: WideString);
begin
  ChildNodes['condicaoClinica'].NodeValue := Value;
end;

{ T213_PlanoTratamento }

procedure T213_PlanoTratamento.AfterConstruction;
begin
  RegisterChildNode('procedimentoSolicitado', T213_Ct_procedimentoOdontologia);
  ItemTag := 'procedimentoSolicitado';
  ItemInterface := I213_Ct_procedimentoOdontologia;
  inherited;
end;

function T213_PlanoTratamento.Get_ProcedimentoSolicitado(Index: Integer): I213_Ct_procedimentoOdontologia;
begin
  Result := List[Index] as I213_Ct_procedimentoOdontologia;
end;

function T213_PlanoTratamento.Add: I213_Ct_procedimentoOdontologia;
begin
  Result := AddItem(-1) as I213_Ct_procedimentoOdontologia;
end;

function T213_PlanoTratamento.Insert(const Index: Integer): I213_Ct_procedimentoOdontologia;
begin
  Result := AddItem(Index) as I213_Ct_procedimentoOdontologia;
end;

{ T213_Ct_procedimentoOdontologia }

procedure T213_Ct_procedimentoOdontologia.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdonto', T213_Ct_tabela);
  RegisterChildNode('denteRegiao', T213_Ct_denteRegiao);
  inherited;
end;

function T213_Ct_procedimentoOdontologia.Get_ProcedimentoOdonto: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimentoOdonto'] as I213_Ct_tabela;
end;

function T213_Ct_procedimentoOdontologia.Get_DenteRegiao: I213_Ct_denteRegiao;
begin
  Result := ChildNodes['denteRegiao'] as I213_Ct_denteRegiao;
end;

function T213_Ct_procedimentoOdontologia.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T213_Ct_procedimentoOdontologia.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontologia.Get_Quantidade: Integer;
begin
  Result := ChildNodes['quantidade'].NodeValue;
end;

procedure T213_Ct_procedimentoOdontologia.Set_Quantidade(Value: Integer);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontologia.Get_QuantidadeUS: WideString;
begin
  Result := ChildNodes['quantidadeUS'].Text;
end;

procedure T213_Ct_procedimentoOdontologia.Set_QuantidadeUS(Value: WideString);
begin
  ChildNodes['quantidadeUS'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontologia.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T213_Ct_procedimentoOdontologia.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontologia.Get_FranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['franquiaCoparticipacao'].Text;
end;

procedure T213_Ct_procedimentoOdontologia.Set_FranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['franquiaCoparticipacao'].NodeValue := Value;
end;

{ T213_Ct_denteRegiao }

function T213_Ct_denteRegiao.Get_Dente: WideString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure T213_Ct_denteRegiao.Set_Dente(Value: WideString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T213_Ct_denteRegiao.Get_Regiao: WideString;
begin
  Result := ChildNodes['regiao'].Text;
end;

procedure T213_Ct_denteRegiao.Set_Regiao(Value: WideString);
begin
  ChildNodes['regiao'].NodeValue := Value;
end;

{ T213_Ct_guiaSolicitacaoProrrogacao }

procedure T213_Ct_guiaSolicitacaoProrrogacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoProrrogacao', T213_Ct_cabecalhoGuia);
  RegisterChildNode('identificacaoGuiaReferencia', T213_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T213_Ct_solicitante);
  RegisterChildNode('procedimentosExamesSolicitados', T213_Ct_procedimentosSolicitados);
  RegisterChildNode('diarias', T213_Ct_diariaProrrogacao);
  RegisterChildNode('OPMsSolicitadas', T213_Ct_OPMSolicitadas);
  inherited;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_IdentificacaoProrrogacao: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoProrrogacao'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_IdentificacaoGuiaReferencia: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaReferencia'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_DadosSolicitante: I213_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I213_Ct_solicitante;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T213_Ct_guiaSolicitacaoProrrogacao.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_ResponsavelAutorizacao: WideString;
begin
  Result := ChildNodes['responsavelAutorizacao'].Text;
end;

procedure T213_Ct_guiaSolicitacaoProrrogacao.Set_ResponsavelAutorizacao(Value: WideString);
begin
  ChildNodes['responsavelAutorizacao'].NodeValue := Value;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_ProcedimentosExamesSolicitados: I213_Ct_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosExamesSolicitados'] as I213_Ct_procedimentosSolicitados;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_Diarias: I213_Ct_diariaProrrogacao;
begin
  Result := ChildNodes['diarias'] as I213_Ct_diariaProrrogacao;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_OPMsSolicitadas: I213_Ct_OPMSolicitadas;
begin
  Result := ChildNodes['OPMsSolicitadas'] as I213_Ct_OPMSolicitadas;
end;

function T213_Ct_guiaSolicitacaoProrrogacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaSolicitacaoProrrogacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_DiariaProrrogacaoAutorizada }

procedure T213_DiariaProrrogacaoAutorizada.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T213_Ct_motivoGlosa);
  inherited;
end;

function T213_DiariaProrrogacaoAutorizada.Get_TipoAcomodacaoAutorizada: WideString;
begin
  Result := ChildNodes['tipoAcomodacaoAutorizada'].Text;
end;

procedure T213_DiariaProrrogacaoAutorizada.Set_TipoAcomodacaoAutorizada(Value: WideString);
begin
  ChildNodes['tipoAcomodacaoAutorizada'].NodeValue := Value;
end;

function T213_DiariaProrrogacaoAutorizada.Get_QuantidadeAutorizada: WideString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure T213_DiariaProrrogacaoAutorizada.Set_QuantidadeAutorizada(Value: WideString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function T213_DiariaProrrogacaoAutorizada.Get_MotivoGlosa: I213_Ct_motivoGlosa;
begin
  Result := ChildNodes['motivoGlosa'] as I213_Ct_motivoGlosa;
end;

{ T213_Ct_solicitaStatusAutorizacao }

procedure T213_Ct_solicitaStatusAutorizacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoAutorizacao', T213_IdentificacaoAutorizacao);
  inherited;
end;

function T213_Ct_solicitaStatusAutorizacao.Get_IdentificacaoAutorizacao: I213_IdentificacaoAutorizacao;
begin
  Result := ChildNodes['identificacaoAutorizacao'] as I213_IdentificacaoAutorizacao;
end;

function T213_Ct_solicitaStatusAutorizacao.Get_DataSolicitaStatus: WideString;
begin
  Result := ChildNodes['dataSolicitaStatus'].Text;
end;

procedure T213_Ct_solicitaStatusAutorizacao.Set_DataSolicitaStatus(Value: WideString);
begin
  ChildNodes['dataSolicitaStatus'].NodeValue := Value;
end;

{ T213_IdentificacaoAutorizacao }

procedure T213_IdentificacaoAutorizacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoSolicitacao', T213_IdentificacaoSolicitacao);
  ItemTag := 'identificacaoSolicitacao';
  ItemInterface := I213_IdentificacaoSolicitacao;
  inherited;
end;

function T213_IdentificacaoAutorizacao.Get_IdentificacaoSolicitacao(Index: Integer): I213_IdentificacaoSolicitacao;
begin
  Result := List[Index] as I213_IdentificacaoSolicitacao;
end;

function T213_IdentificacaoAutorizacao.Add: I213_IdentificacaoSolicitacao;
begin
  Result := AddItem(-1) as I213_IdentificacaoSolicitacao;
end;

function T213_IdentificacaoAutorizacao.Insert(const Index: Integer): I213_IdentificacaoSolicitacao;
begin
  Result := AddItem(Index) as I213_IdentificacaoSolicitacao;
end;

{ T213_IdentificacaoSolicitacao }

procedure T213_IdentificacaoSolicitacao.AfterConstruction;
begin
  RegisterChildNode('profissionalSolicitante', T213_Ct_contratadoSolicitante);
  RegisterChildNode('identificacaoBeneficiario', T213_Ct_beneficiario);
  inherited;
end;

function T213_IdentificacaoSolicitacao.Get_ProfissionalSolicitante: I213_Ct_contratadoSolicitante;
begin
  Result := ChildNodes['profissionalSolicitante'] as I213_Ct_contratadoSolicitante;
end;

function T213_IdentificacaoSolicitacao.Get_IdentificacaoBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['identificacaoBeneficiario'] as I213_Ct_beneficiario;
end;

{ T213_Ct_solicitaElegibilidade }

procedure T213_Ct_solicitaElegibilidade.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  inherited;
end;

function T213_Ct_solicitaElegibilidade.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_solicitaElegibilidade.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

{ T213_Ct_cancelaGuia }

procedure T213_Ct_cancelaGuia.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T213_Ct_contratado);
  RegisterChildNode('guia', T213_Ct_cabecalhoGuia);
  inherited;
end;

function T213_Ct_cancelaGuia.Get_DadosPrestador: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I213_Ct_contratado;
end;

function T213_Ct_cancelaGuia.Get_Guia: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['guia'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_cancelaGuia.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_cancelaGuia.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Epilogo }

function T213_Epilogo.Get_Hash: WideString;
begin
  Result := ChildNodes['hash'].Text;
end;

procedure T213_Epilogo.Set_Hash(Value: WideString);
begin
  ChildNodes['hash'].NodeValue := Value;
end;

{ T213_DefinicaoTissNet }

procedure T213_DefinicaoTissNet.AfterConstruction;
begin
  RegisterChildNode('nodo', T213_Nodo_tissnet);
  ItemTag := 'nodo';
  ItemInterface := I213_Nodo_tissnet;
  inherited;
end;

function T213_DefinicaoTissNet.Get_Nodo(Index: Integer): I213_Nodo_tissnet;
begin
  Result := List[Index] as I213_Nodo_tissnet;
end;

function T213_DefinicaoTissNet.Add: I213_Nodo_tissnet;
begin
  Result := AddItem(-1) as I213_Nodo_tissnet;
end;

function T213_DefinicaoTissNet.Insert(const Index: Integer): I213_Nodo_tissnet;
begin
  Result := AddItem(Index) as I213_Nodo_tissnet;
end;

{ T213_Nodo_tissnet }

procedure T213_Nodo_tissnet.AfterConstruction;
begin
  RegisterChildNode('pontoAPonto', T213_PontoAPonto);
  RegisterChildNode('webServices', T213_WebServices);
  inherited;
end;

function T213_Nodo_tissnet.Get_Operadora: WideString;
begin
  Result := ChildNodes['operadora'].Text;
end;

procedure T213_Nodo_tissnet.Set_Operadora(Value: WideString);
begin
  ChildNodes['operadora'].NodeValue := Value;
end;

function T213_Nodo_tissnet.Get_PontoAPonto: I213_PontoAPonto;
begin
  Result := ChildNodes['pontoAPonto'] as I213_PontoAPonto;
end;

function T213_Nodo_tissnet.Get_WebServices: I213_WebServices;
begin
  Result := ChildNodes['webServices'] as I213_WebServices;
end;

{ T213_PontoAPonto }

procedure T213_PontoAPonto.AfterConstruction;
begin
  RegisterChildNode('socket', T213_Ct_hostporta);
  inherited;
end;

function T213_PontoAPonto.Get_Socket: I213_Ct_hostporta;
begin
  Result := ChildNodes['socket'] as I213_Ct_hostporta;
end;

function T213_PontoAPonto.Get_Service: WideString;
begin
  Result := ChildNodes['service'].Text;
end;

procedure T213_PontoAPonto.Set_Service(Value: WideString);
begin
  ChildNodes['service'].NodeValue := Value;
end;

{ T213_Ct_hostporta }

function T213_Ct_hostporta.Get_Host: WideString;
begin
  Result := ChildNodes['host'].Text;
end;

procedure T213_Ct_hostporta.Set_Host(Value: WideString);
begin
  ChildNodes['host'].NodeValue := Value;
end;

function T213_Ct_hostporta.Get_Port: Integer;
begin
  Result := ChildNodes['port'].NodeValue;
end;

procedure T213_Ct_hostporta.Set_Port(Value: Integer);
begin
  ChildNodes['port'].NodeValue := Value;
end;

{ T213_WebServices }

function T213_WebServices.Get_TissCancelaGuia: WideString;
begin
  Result := ChildNodes['tissCancelaGuia'].Text;
end;

procedure T213_WebServices.Set_TissCancelaGuia(Value: WideString);
begin
  ChildNodes['tissCancelaGuia'].NodeValue := Value;
end;

function T213_WebServices.Get_TissLoteGuias: WideString;
begin
  Result := ChildNodes['tissLoteGuias'].Text;
end;

procedure T213_WebServices.Set_TissLoteGuias(Value: WideString);
begin
  ChildNodes['tissLoteGuias'].NodeValue := Value;
end;

function T213_WebServices.Get_TissSolicitacaoAnaliseConta: WideString;
begin
  Result := ChildNodes['tissSolicitacaoAnaliseConta'].Text;
end;

procedure T213_WebServices.Set_TissSolicitacaoAnaliseConta(Value: WideString);
begin
  ChildNodes['tissSolicitacaoAnaliseConta'].NodeValue := Value;
end;

function T213_WebServices.Get_TissSolicitacaoDemonstrativoPagamento: WideString;
begin
  Result := ChildNodes['tissSolicitacaoDemonstrativoPagamento'].Text;
end;

procedure T213_WebServices.Set_TissSolicitacaoDemonstrativoPagamento(Value: WideString);
begin
  ChildNodes['tissSolicitacaoDemonstrativoPagamento'].NodeValue := Value;
end;

function T213_WebServices.Get_TissSolicitacaoProcedimento: WideString;
begin
  Result := ChildNodes['tissSolicitacaoProcedimento'].Text;
end;

procedure T213_WebServices.Set_TissSolicitacaoProcedimento(Value: WideString);
begin
  ChildNodes['tissSolicitacaoProcedimento'].NodeValue := Value;
end;

function T213_WebServices.Get_TissSolicitacaoStatusProtocolo: WideString;
begin
  Result := ChildNodes['tissSolicitacaoStatusProtocolo'].Text;
end;

procedure T213_WebServices.Set_TissSolicitacaoStatusProtocolo(Value: WideString);
begin
  ChildNodes['tissSolicitacaoStatusProtocolo'].NodeValue := Value;
end;

function T213_WebServices.Get_TissVerificaElegibilidade: WideString;
begin
  Result := ChildNodes['tissVerificaElegibilidade'].Text;
end;

procedure T213_WebServices.Set_TissVerificaElegibilidade(Value: WideString);
begin
  ChildNodes['tissVerificaElegibilidade'].NodeValue := Value;
end;

{ T213_Ct_atendimentoConsulta }

procedure T213_Ct_atendimentoConsulta.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Procedimento);
  inherited;
end;

function T213_Ct_atendimentoConsulta.Get_DataAtendimento: WideString;
begin
  Result := ChildNodes['dataAtendimento'].Text;
end;

procedure T213_Ct_atendimentoConsulta.Set_DataAtendimento(Value: WideString);
begin
  ChildNodes['dataAtendimento'].NodeValue := Value;
end;

function T213_Ct_atendimentoConsulta.Get_Procedimento: I213_Procedimento;
begin
  Result := ChildNodes['procedimento'] as I213_Procedimento;
end;

function T213_Ct_atendimentoConsulta.Get_TipoConsulta: WideString;
begin
  Result := ChildNodes['tipoConsulta'].Text;
end;

procedure T213_Ct_atendimentoConsulta.Set_TipoConsulta(Value: WideString);
begin
  ChildNodes['tipoConsulta'].NodeValue := Value;
end;

function T213_Ct_atendimentoConsulta.Get_TipoSaida: WideString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure T213_Ct_atendimentoConsulta.Set_TipoSaida(Value: WideString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

{ T213_Procedimento }

function T213_Procedimento.Get_CodigoTabela: WideString;
begin
  Result := ChildNodes['codigoTabela'].Text;
end;

procedure T213_Procedimento.Set_CodigoTabela(Value: WideString);
begin
  ChildNodes['codigoTabela'].NodeValue := Value;
end;

function T213_Procedimento.Get_CodigoProcedimento: WideString;
begin
  Result := ChildNodes['codigoProcedimento'].Text;
end;

procedure T213_Procedimento.Set_CodigoProcedimento(Value: WideString);
begin
  ChildNodes['codigoProcedimento'].NodeValue := Value;
end;

{ T213_ProcedimentoReapr }

function T213_ProcedimentoReapr.Get_CodigoTabela: WideString;
begin
  Result := ChildNodes['codigoTabela'].Text;
end;

procedure T213_ProcedimentoReapr.Set_CodigoTabela(Value: WideString);
begin
  ChildNodes['codigoTabela'].NodeValue := Value;
end;

function T213_ProcedimentoReapr.Get_CodigoProcedimento: WideString;
begin
  Result := ChildNodes['codigoProcedimento'].Text;
end;

procedure T213_ProcedimentoReapr.Set_CodigoProcedimento(Value: WideString);
begin
  ChildNodes['codigoProcedimento'].NodeValue := Value;
end;

function T213_ProcedimentoReapr.Get_Justificativa: WideString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure T213_ProcedimentoReapr.Set_Justificativa(Value: WideString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ T213_Ct_atendimentoConsultaReapr }

procedure T213_Ct_atendimentoConsultaReapr.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Procedimento);
  inherited;
end;

function T213_Ct_atendimentoConsultaReapr.Get_Procedimento: I213_ProcedimentoReapr;
begin
  Result := ChildNodes['procedimento'] as I213_ProcedimentoReapr;
end;

function T213_Ct_atendimentoConsultaReapr.Get_TipoConsulta: WideString;
begin
  Result := ChildNodes['tipoConsulta'].Text;
end;

procedure T213_Ct_atendimentoConsultaReapr.Set_TipoConsulta(Value: WideString);
begin
  ChildNodes['tipoConsulta'].NodeValue := Value;
end;

function T213_Ct_atendimentoConsultaReapr.Get_TipoSaida: WideString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure T213_Ct_atendimentoConsultaReapr.Set_TipoSaida(Value: WideString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function T213_Ct_atendimentoConsultaReapr.Get_DataAtendimento: WideString;
begin
  Result := ChildNodes['dataAtendimento'].Text;
end;

procedure T213_Ct_atendimentoConsultaReapr.Set_DataAtendimento(Value: WideString);
begin
  ChildNodes['dataAtendimento'].NodeValue := Value;
end;

{ T213_Ct_atendimentoOdontologia }

function T213_Ct_atendimentoOdontologia.Get_DataTerminoTratamento: WideString;
begin
  Result := ChildNodes['dataTerminoTratamento'].Text;
end;

procedure T213_Ct_atendimentoOdontologia.Set_DataTerminoTratamento(Value: WideString);
begin
  ChildNodes['dataTerminoTratamento'].NodeValue := Value;
end;

function T213_Ct_atendimentoOdontologia.Get_TipoAtendimento: WideString;
begin
  Result := ChildNodes['tipoAtendimento'].Text;
end;

procedure T213_Ct_atendimentoOdontologia.Set_TipoAtendimento(Value: WideString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

{ T213_Ct_autorizacaoGuia }

function T213_Ct_autorizacaoGuia.Get_DataAutorizacao: WideString;
begin
  Result := ChildNodes['dataAutorizacao'].Text;
end;

procedure T213_Ct_autorizacaoGuia.Set_DataAutorizacao(Value: WideString);
begin
  ChildNodes['dataAutorizacao'].NodeValue := Value;
end;

function T213_Ct_autorizacaoGuia.Get_SenhaAutorizacao: WideString;
begin
  Result := ChildNodes['senhaAutorizacao'].Text;
end;

procedure T213_Ct_autorizacaoGuia.Set_SenhaAutorizacao(Value: WideString);
begin
  ChildNodes['senhaAutorizacao'].NodeValue := Value;
end;

function T213_Ct_autorizacaoGuia.Get_ValidadeSenha: WideString;
begin
  Result := ChildNodes['validadeSenha'].Text;
end;

procedure T213_Ct_autorizacaoGuia.Set_ValidadeSenha(Value: WideString);
begin
  ChildNodes['validadeSenha'].NodeValue := Value;
end;

{ T213_Ct_autorizacaoGuiaInternacao }

function T213_Ct_autorizacaoGuiaInternacao.Get_DiasAutorizado: Integer;
begin
  Result := ChildNodes['diasAutorizado'].NodeValue;
end;

procedure T213_Ct_autorizacaoGuiaInternacao.Set_DiasAutorizado(Value: Integer);
begin
  ChildNodes['diasAutorizado'].NodeValue := Value;
end;

function T213_Ct_autorizacaoGuiaInternacao.Get_DataProvavelAdmisHosp: WideString;
begin
  Result := ChildNodes['dataProvavelAdmisHosp'].Text;
end;

procedure T213_Ct_autorizacaoGuiaInternacao.Set_DataProvavelAdmisHosp(Value: WideString);
begin
  ChildNodes['dataProvavelAdmisHosp'].NodeValue := Value;
end;

function T213_Ct_autorizacaoGuiaInternacao.Get_TipoAcomodacao: WideString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure T213_Ct_autorizacaoGuiaInternacao.Set_TipoAcomodacao(Value: WideString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

{ T213_AutorizacaoServico }

procedure T213_AutorizacaoServico.AfterConstruction;
begin
  RegisterChildNode('totalOdonto', T213_TotalOdonto);
  RegisterChildNode('diariaProrrogacaoAutorizada', T213_DiariaProrrogacaoAutorizada);
  inherited;
end;

function T213_AutorizacaoServico.Get_TotalOdonto: I213_TotalOdonto;
begin
  Result := ChildNodes['totalOdonto'] as I213_TotalOdonto;
end;

function T213_AutorizacaoServico.Get_DiariaProrrogacaoAutorizada: I213_DiariaProrrogacaoAutorizada;
begin
  Result := ChildNodes['diariaProrrogacaoAutorizada'] as I213_DiariaProrrogacaoAutorizada;
end;

{ T213_AutorizacaoServicoList }

function T213_AutorizacaoServicoList.Add: I213_AutorizacaoServico;
begin
  Result := AddItem(-1) as I213_AutorizacaoServico;
end;

function T213_AutorizacaoServicoList.Insert(const Index: Integer): I213_AutorizacaoServico;
begin
  Result := AddItem(Index) as I213_AutorizacaoServico;
end;
function T213_AutorizacaoServicoList.Get_Item(Index: Integer): I213_AutorizacaoServico;
begin
  Result := List[Index] as I213_AutorizacaoServico;
end;

{ T213_MotivoNegativa }

procedure T213_MotivoNegativa.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T213_Ct_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := I213_Ct_motivoGlosa;
  inherited;
end;

function T213_MotivoNegativa.Get_MotivoGlosa(Index: Integer): I213_Ct_motivoGlosa;
begin
  Result := List[Index] as I213_Ct_motivoGlosa;
end;

function T213_MotivoNegativa.Add: I213_Ct_motivoGlosa;
begin
  Result := AddItem(-1) as I213_Ct_motivoGlosa;
end;

function T213_MotivoNegativa.Insert(const Index: Integer): I213_Ct_motivoGlosa;
begin
  Result := AddItem(Index) as I213_Ct_motivoGlosa;
end;

{ T213_Ct_loteOdonto }

procedure T213_Ct_loteOdonto.AfterConstruction;
begin
  RegisterChildNode('detalheGuia', T213_Ct_detalheGuiaOdonto);
  inherited;
end;

function T213_Ct_loteOdonto.Get_NumeroLote: WideString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure T213_Ct_loteOdonto.Set_NumeroLote(Value: WideString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T213_Ct_loteOdonto.Get_DetalheGuia: I213_Ct_detalheGuiaOdonto;
begin
  Result := ChildNodes['detalheGuia'] as I213_Ct_detalheGuiaOdonto;
end;

function T213_Ct_loteOdonto.Get_ValorTotalLiberadoLote: WideString;
begin
  Result := ChildNodes['valorTotalLiberadoLote'].Text;
end;

procedure T213_Ct_loteOdonto.Set_ValorTotalLiberadoLote(Value: WideString);
begin
  ChildNodes['valorTotalLiberadoLote'].NodeValue := Value;
end;

function T213_Ct_loteOdonto.Get_ValorTotalProcessadoLote: WideString;
begin
  Result := ChildNodes['valorTotalProcessadoLote'].Text;
end;

procedure T213_Ct_loteOdonto.Set_ValorTotalProcessadoLote(Value: WideString);
begin
  ChildNodes['valorTotalProcessadoLote'].NodeValue := Value;
end;

function T213_Ct_loteOdonto.Get_ValorTotalGlosaLote: WideString;
begin
  Result := ChildNodes['valorTotalGlosaLote'].Text;
end;

procedure T213_Ct_loteOdonto.Set_ValorTotalGlosaLote(Value: WideString);
begin
  ChildNodes['valorTotalGlosaLote'].NodeValue := Value;
end;

{ T213_Ct_detalheGuiaOdonto }

procedure T213_Ct_detalheGuiaOdonto.AfterConstruction;
begin
  RegisterChildNode('procedimentoRealizado', T213_ProcedimentoRealizadoOdonto);
  inherited;
end;

function T213_Ct_detalheGuiaOdonto.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T213_Ct_detalheGuiaOdonto.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T213_Ct_detalheGuiaOdonto.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T213_Ct_detalheGuiaOdonto.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T213_Ct_detalheGuiaOdonto.Get_CodigoBeneficiario: WideString;
begin
  Result := ChildNodes['codigoBeneficiario'].Text;
end;

procedure T213_Ct_detalheGuiaOdonto.Set_CodigoBeneficiario(Value: WideString);
begin
  ChildNodes['codigoBeneficiario'].NodeValue := Value;
end;

function T213_Ct_detalheGuiaOdonto.Get_NomeBeneficiario: WideString;
begin
  Result := ChildNodes['NomeBeneficiario'].Text;
end;

procedure T213_Ct_detalheGuiaOdonto.Set_NomeBeneficiario(Value: WideString);
begin
  ChildNodes['NomeBeneficiario'].NodeValue := Value;
end;

function T213_Ct_detalheGuiaOdonto.Get_ProcedimentoRealizado: I213_ProcedimentoRealizadoOdonto;
begin
  Result := ChildNodes['procedimentoRealizado'] as I213_ProcedimentoRealizadoOdonto;
end;

function T213_Ct_detalheGuiaOdonto.Get_ValorTotalGlosaGuia: WideString;
begin
  Result := ChildNodes['valorTotalGlosaGuia'].Text;
end;

procedure T213_Ct_detalheGuiaOdonto.Set_ValorTotalGlosaGuia(Value: WideString);
begin
  ChildNodes['valorTotalGlosaGuia'].NodeValue := Value;
end;

function T213_Ct_detalheGuiaOdonto.Get_ValorTotalLiberadoGuia: WideString;
begin
  Result := ChildNodes['valorTotalLiberadoGuia'].Text;
end;

procedure T213_Ct_detalheGuiaOdonto.Set_ValorTotalLiberadoGuia(Value: WideString);
begin
  ChildNodes['valorTotalLiberadoGuia'].NodeValue := Value;
end;

function T213_Ct_detalheGuiaOdonto.Get_ValorTotalProcessadoGuia: WideString;
begin
  Result := ChildNodes['valorTotalProcessadoGuia'].Text;
end;

procedure T213_Ct_detalheGuiaOdonto.Set_ValorTotalProcessadoGuia(Value: WideString);
begin
  ChildNodes['valorTotalProcessadoGuia'].NodeValue := Value;
end;

{ T213_ProcedimentoRealizadoOdonto }

procedure T213_ProcedimentoRealizadoOdonto.AfterConstruction;
begin
  RegisterChildNode('procedimentosOdonto', T213_Ct_procedimentoOdontoRealizado);
  ItemTag := 'procedimentosOdonto';
  ItemInterface := I213_Ct_procedimentoOdontoRealizado;
  inherited;
end;

function T213_ProcedimentoRealizadoOdonto.Get_ProcedimentosOdonto(Index: Integer): I213_Ct_procedimentoOdontoRealizado;
begin
  Result := List[Index] as I213_Ct_procedimentoOdontoRealizado;
end;

function T213_ProcedimentoRealizadoOdonto.Add: I213_Ct_procedimentoOdontoRealizado;
begin
  Result := AddItem(-1) as I213_Ct_procedimentoOdontoRealizado;
end;

function T213_ProcedimentoRealizadoOdonto.Insert(const Index: Integer): I213_Ct_procedimentoOdontoRealizado;
begin
  Result := AddItem(Index) as I213_Ct_procedimentoOdontoRealizado;
end;

{ T213_Ct_procedimentoOdontoRealizado }

procedure T213_Ct_procedimentoOdontoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdonto', T213_Ct_tabela);
  RegisterChildNode('denteRegiao', T213_Ct_denteRegiao);
  FMotivoGlosa := CreateCollection(T213_St_tipoGlosaList, IXMLNode, 'motivoGlosa') as I213_St_tipoGlosaList;
  inherited;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_ProcedimentoOdonto: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimentoOdonto'] as I213_Ct_tabela;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_DenteRegiao: I213_Ct_denteRegiao;
begin
  Result := ChildNodes['denteRegiao'] as I213_Ct_denteRegiao;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T213_Ct_procedimentoOdontoRealizado.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T213_Ct_procedimentoOdontoRealizado.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_Quantidade: Integer;
begin
  Result := ChildNodes['quantidade'].NodeValue;
end;

procedure T213_Ct_procedimentoOdontoRealizado.Set_Quantidade(Value: Integer);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_ValorProcessado: WideString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure T213_Ct_procedimentoOdontoRealizado.Set_ValorProcessado(Value: WideString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_ValorGlosaEstorno: WideString;
begin
  Result := ChildNodes['valorGlosaEstorno'].Text;
end;

procedure T213_Ct_procedimentoOdontoRealizado.Set_ValorGlosaEstorno(Value: WideString);
begin
  ChildNodes['valorGlosaEstorno'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_MotivoGlosa: I213_St_tipoGlosaList;
begin
  Result := FMotivoGlosa;
end;

function T213_Ct_procedimentoOdontoRealizado.Get_ValorLiberado: WideString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure T213_Ct_procedimentoOdontoRealizado.Set_ValorLiberado(Value: WideString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

{ T213_Ct_diagnosticoAtendimento }

procedure T213_Ct_diagnosticoAtendimento.AfterConstruction;
begin
  RegisterChildNode('CID', T213_Ct_diagnostico);
  RegisterChildNode('tempoReferidoEvolucaoDoenca', T213_Ct_tempoEvolucaoDoenca);
  inherited;
end;

function T213_Ct_diagnosticoAtendimento.Get_CID: I213_Ct_diagnostico;
begin
  Result := ChildNodes['CID'] as I213_Ct_diagnostico;
end;

function T213_Ct_diagnosticoAtendimento.Get_TipoDoenca: WideString;
begin
  Result := ChildNodes['tipoDoenca'].Text;
end;

procedure T213_Ct_diagnosticoAtendimento.Set_TipoDoenca(Value: WideString);
begin
  ChildNodes['tipoDoenca'].NodeValue := Value;
end;

function T213_Ct_diagnosticoAtendimento.Get_TempoReferidoEvolucaoDoenca: I213_Ct_tempoEvolucaoDoenca;
begin
  Result := ChildNodes['tempoReferidoEvolucaoDoenca'] as I213_Ct_tempoEvolucaoDoenca;
end;

function T213_Ct_diagnosticoAtendimento.Get_IndicadorAcidente: WideString;
begin
  Result := ChildNodes['indicadorAcidente'].Text;
end;

procedure T213_Ct_diagnosticoAtendimento.Set_IndicadorAcidente(Value: WideString);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

{ T213_Ct_diagnosticoSaidaInternacao }

procedure T213_Ct_diagnosticoSaidaInternacao.AfterConstruction;
begin
  RegisterChildNode('diagnosticoPrincipal', T213_Ct_diagnostico);
  RegisterChildNode('diagnosticosSecundarios', T213_Ct_diagnosticosSecundarios);
  RegisterChildNode('obito', T213_Ct_obitoInternacao);
  FObito := CreateCollection(T213_Ct_obitoInternacaoList, I213_Ct_obitoInternacao, 'obito') as I213_Ct_obitoInternacaoList;
  inherited;
end;

function T213_Ct_diagnosticoSaidaInternacao.Get_DiagnosticoPrincipal: I213_Ct_diagnostico;
begin
  Result := ChildNodes['diagnosticoPrincipal'] as I213_Ct_diagnostico;
end;

function T213_Ct_diagnosticoSaidaInternacao.Get_IndicadorAcidente: WideString;
begin
  Result := ChildNodes['indicadorAcidente'].Text;
end;

procedure T213_Ct_diagnosticoSaidaInternacao.Set_IndicadorAcidente(Value: WideString);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

function T213_Ct_diagnosticoSaidaInternacao.Get_DiagnosticosSecundarios: I213_Ct_diagnosticosSecundarios;
begin
  Result := ChildNodes['diagnosticosSecundarios'] as I213_Ct_diagnosticosSecundarios;
end;

function T213_Ct_diagnosticoSaidaInternacao.Get_MotivoSaidaInternacao: WideString;
begin
  Result := ChildNodes['motivoSaidaInternacao'].Text;
end;

procedure T213_Ct_diagnosticoSaidaInternacao.Set_MotivoSaidaInternacao(Value: WideString);
begin
  ChildNodes['motivoSaidaInternacao'].NodeValue := Value;
end;

function T213_Ct_diagnosticoSaidaInternacao.Get_Obito: I213_Ct_obitoInternacaoList;
begin
  Result := FObito;
end;

{ T213_Ct_obitoInternacao }

procedure T213_Ct_obitoInternacao.AfterConstruction;
begin
  RegisterChildNode('CID', T213_Ct_diagnostico);
  inherited;
end;

function T213_Ct_obitoInternacao.Get_CID: I213_Ct_diagnostico;
begin
  Result := ChildNodes['CID'] as I213_Ct_diagnostico;
end;

function T213_Ct_obitoInternacao.Get_NumeroDeclaracao: WideString;
begin
  Result := ChildNodes['numeroDeclaracao'].Text;
end;

procedure T213_Ct_obitoInternacao.Set_NumeroDeclaracao(Value: WideString);
begin
  ChildNodes['numeroDeclaracao'].NodeValue := Value;
end;

{ T213_Ct_obitoInternacaoList }

function T213_Ct_obitoInternacaoList.Add: I213_Ct_obitoInternacao;
begin
  Result := AddItem(-1) as I213_Ct_obitoInternacao;
end;

function T213_Ct_obitoInternacaoList.Insert(const Index: Integer): I213_Ct_obitoInternacao;
begin
  Result := AddItem(Index) as I213_Ct_obitoInternacao;
end;
function T213_Ct_obitoInternacaoList.Get_Item(Index: Integer): I213_Ct_obitoInternacao;
begin
  Result := List[Index] as I213_Ct_obitoInternacao;
end;

{ T213_Ct_executanteComplementar }

procedure T213_Ct_executanteComplementar.AfterConstruction;
begin
  RegisterChildNode('codigoProfissionalCompl', T213_Ct_identificacaoPrestador);
  inherited;
end;

function T213_Ct_executanteComplementar.Get_CodigoProfissionalCompl: I213_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['codigoProfissionalCompl'] as I213_Ct_identificacaoPrestador;
end;

function T213_Ct_executanteComplementar.Get_NomeProfissionalCompl: WideString;
begin
  Result := ChildNodes['nomeProfissionalCompl'].Text;
end;

procedure T213_Ct_executanteComplementar.Set_NomeProfissionalCompl(Value: WideString);
begin
  ChildNodes['nomeProfissionalCompl'].NodeValue := Value;
end;

{ T213_Ct_identificacaoEquipe }

procedure T213_Ct_identificacaoEquipe.AfterConstruction;
begin
  RegisterChildNode('membroEquipe', T213_MembroEquipe);
  ItemTag := 'membroEquipe';
  ItemInterface := I213_MembroEquipe;
  inherited;
end;

function T213_Ct_identificacaoEquipe.Get_MembroEquipe(Index: Integer): I213_MembroEquipe;
begin
  Result := List[Index] as I213_MembroEquipe;
end;

function T213_Ct_identificacaoEquipe.Add: I213_MembroEquipe;
begin
  Result := AddItem(-1) as I213_MembroEquipe;
end;

function T213_Ct_identificacaoEquipe.Insert(const Index: Integer): I213_MembroEquipe;
begin
  Result := AddItem(Index) as I213_MembroEquipe;
end;

{ T213_MembroEquipe }

procedure T213_MembroEquipe.AfterConstruction;
begin
  RegisterChildNode('codigoProfissional', T213_Ct_identificacaoPrestadorEquipe);
  RegisterChildNode('identificacaoProfissional', T213_Ct_profissionalExecutante);
  inherited;
end;

function T213_MembroEquipe.Get_CodigoProfissional: I213_Ct_identificacaoPrestadorEquipe;
begin
  Result := ChildNodes['codigoProfissional'] as I213_Ct_identificacaoPrestadorEquipe;
end;

function T213_MembroEquipe.Get_IdentificacaoProfissional: I213_Ct_profissionalExecutante;
begin
  Result := ChildNodes['identificacaoProfissional'] as I213_Ct_profissionalExecutante;
end;

function T213_MembroEquipe.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T213_MembroEquipe.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function T213_MembroEquipe.Get_PosicaoProfissional: WideString;
begin
  Result := ChildNodes['posicaoProfissional'].Text;
end;

procedure T213_MembroEquipe.Set_PosicaoProfissional(Value: WideString);
begin
  ChildNodes['posicaoProfissional'].NodeValue := Value;
end;

{ T213_Ct_identificacaoPrestadorEquipe }

procedure T213_Ct_identificacaoPrestadorEquipe.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T213_Ct_conselhoProfissional);
  inherited;
end;

function T213_Ct_identificacaoPrestadorEquipe.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T213_Ct_identificacaoPrestadorEquipe.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function T213_Ct_identificacaoPrestadorEquipe.Get_CodigoPrestadorNaOperadora: WideString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure T213_Ct_identificacaoPrestadorEquipe.Set_CodigoPrestadorNaOperadora(Value: WideString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

function T213_Ct_identificacaoPrestadorEquipe.Get_ConselhoProfissional: I213_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I213_Ct_conselhoProfissional;
end;

{ T213_DadosExecutante }

{ T213_Ct_identificacaoProfissionalCompl }

function T213_Ct_identificacaoProfissionalCompl.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T213_Ct_identificacaoProfissionalCompl.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function T213_Ct_identificacaoProfissionalCompl.Get_CodigoPrestadorNaOperadora: WideString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure T213_Ct_identificacaoProfissionalCompl.Set_CodigoPrestadorNaOperadora(Value: WideString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

{ T213_Ct_internacaoObstetrica }

procedure T213_Ct_internacaoObstetrica.AfterConstruction;
begin
  RegisterChildNode('declaracoesNascidosVivos', T213_Ct_numeroDN);
  inherited;
end;

function T213_Ct_internacaoObstetrica.Get_EmGestacao: Boolean;
begin
  Result := ChildNodes['emGestacao'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_EmGestacao(Value: Boolean);
begin
  ChildNodes['emGestacao'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_Aborto: Boolean;
begin
  Result := ChildNodes['aborto'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_Aborto(Value: Boolean);
begin
  ChildNodes['aborto'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_TranstornoMaternoRelGravidez: Boolean;
begin
  Result := ChildNodes['transtornoMaternoRelGravidez'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_TranstornoMaternoRelGravidez(Value: Boolean);
begin
  ChildNodes['transtornoMaternoRelGravidez'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_ComplicacaoPeriodoPuerperio: Boolean;
begin
  Result := ChildNodes['complicacaoPeriodoPuerperio'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_ComplicacaoPeriodoPuerperio(Value: Boolean);
begin
  ChildNodes['complicacaoPeriodoPuerperio'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_AtendimentoRNSalaParto: Boolean;
begin
  Result := ChildNodes['atendimentoRNSalaParto'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_AtendimentoRNSalaParto(Value: Boolean);
begin
  ChildNodes['atendimentoRNSalaParto'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_ComplicacaoNeonatal: Boolean;
begin
  Result := ChildNodes['complicacaoNeonatal'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_ComplicacaoNeonatal(Value: Boolean);
begin
  ChildNodes['complicacaoNeonatal'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_BaixoPeso: Boolean;
begin
  Result := ChildNodes['baixoPeso'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_BaixoPeso(Value: Boolean);
begin
  ChildNodes['baixoPeso'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_PartoCesareo: Boolean;
begin
  Result := ChildNodes['partoCesareo'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_PartoCesareo(Value: Boolean);
begin
  ChildNodes['partoCesareo'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_PartoNormal: Boolean;
begin
  Result := ChildNodes['partoNormal'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_PartoNormal(Value: Boolean);
begin
  ChildNodes['partoNormal'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_DeclaracoesNascidosVivos: I213_Ct_numeroDN;
begin
  Result := ChildNodes['declaracoesNascidosVivos'] as I213_Ct_numeroDN;
end;

function T213_Ct_internacaoObstetrica.Get_QtdNascidosVivosTermo: Integer;
begin
  Result := ChildNodes['qtdNascidosVivosTermo'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_QtdNascidosVivosTermo(Value: Integer);
begin
  ChildNodes['qtdNascidosVivosTermo'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_QtdNascidosMortos: Integer;
begin
  Result := ChildNodes['qtdNascidosMortos'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_QtdNascidosMortos(Value: Integer);
begin
  ChildNodes['qtdNascidosMortos'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_QtdVivosPrematuros: Integer;
begin
  Result := ChildNodes['qtdVivosPrematuros'].NodeValue;
end;

procedure T213_Ct_internacaoObstetrica.Set_QtdVivosPrematuros(Value: Integer);
begin
  ChildNodes['qtdVivosPrematuros'].NodeValue := Value;
end;

function T213_Ct_internacaoObstetrica.Get_ObitoMulher: WideString;
begin
  Result := ChildNodes['obitoMulher'].Text;
end;

procedure T213_Ct_internacaoObstetrica.Set_ObitoMulher(Value: WideString);
begin
  ChildNodes['obitoMulher'].NodeValue := Value;
end;

{ T213_Ct_numeroDN }

function T213_Ct_numeroDN.Get_NumeroDN: WideString;
begin
  Result := ChildNodes['numeroDN'].Text;
end;

procedure T213_Ct_numeroDN.Set_NumeroDN(Value: WideString);
begin
  ChildNodes['numeroDN'].NodeValue := Value;
end;

{ T213_LoteOdonto }

procedure T213_LoteOdonto.AfterConstruction;
begin
  RegisterChildNode('totalGeralLote', T213_Ct_totalDemoOdonto);
  inherited;
end;

function T213_LoteOdonto.Get_TotalGeralLote: I213_Ct_totalDemoOdonto;
begin
  Result := ChildNodes['totalGeralLote'] as I213_Ct_totalDemoOdonto;
end;

{ T213_Ct_obitoNeonatal }

function T213_Ct_obitoNeonatal.Get_QtdeobitoPrecoce: Integer;
begin
  Result := ChildNodes['qtdeobitoPrecoce'].NodeValue;
end;

procedure T213_Ct_obitoNeonatal.Set_QtdeobitoPrecoce(Value: Integer);
begin
  ChildNodes['qtdeobitoPrecoce'].NodeValue := Value;
end;

function T213_Ct_obitoNeonatal.Get_QtdeobitoTardio: Integer;
begin
  Result := ChildNodes['qtdeobitoTardio'].NodeValue;
end;

procedure T213_Ct_obitoNeonatal.Set_QtdeobitoTardio(Value: Integer);
begin
  ChildNodes['qtdeobitoTardio'].NodeValue := Value;
end;

{ T213_Ct_OPMUtilizada }

procedure T213_Ct_OPMUtilizada.AfterConstruction;
begin
  RegisterChildNode('OPM', T213_OPMIdentificacao);
  inherited;
end;

function T213_Ct_OPMUtilizada.Get_OPM: I213_OPMIdentificacao;
begin
  Result := ChildNodes['OPM'] as I213_OPMIdentificacao;
end;

function T213_Ct_OPMUtilizada.Get_ValorTotalOPM: WideString;
begin
  Result := ChildNodes['valorTotalOPM'].Text;
end;

procedure T213_Ct_OPMUtilizada.Set_ValorTotalOPM(Value: WideString);
begin
  ChildNodes['valorTotalOPM'].NodeValue := Value;
end;

{ T213_OPMIdentificacao }

procedure T213_OPMIdentificacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoOPM', T213_IdentificacaoOPMUtilizada);
  ItemTag := 'identificacaoOPM';
  ItemInterface := I213_IdentificacaoOPMUtilizada;
  inherited;
end;

function T213_OPMIdentificacao.Get_IdentificacaoOPM(Index: Integer): I213_IdentificacaoOPMUtilizada;
begin
  Result := List[Index] as I213_IdentificacaoOPMUtilizada;
end;

function T213_OPMIdentificacao.Add: I213_IdentificacaoOPMUtilizada;
begin
  Result := AddItem(-1) as I213_IdentificacaoOPMUtilizada;
end;

function T213_OPMIdentificacao.Insert(const Index: Integer): I213_IdentificacaoOPMUtilizada;
begin
  Result := AddItem(Index) as I213_IdentificacaoOPMUtilizada;
end;

{ T213_OPM }

procedure T213_OPM.AfterConstruction;
begin
  RegisterChildNode('identificacaoOPM', T213_IdentificacaoOPM);
  ItemTag := 'identificacaoOPM';
  ItemInterface := I213_IdentificacaoOPM;
  inherited;
end;

function T213_OPM.Get_IdentificacaoOPM(Index: Integer): I213_IdentificacaoOPM;
begin
  Result := List[Index] as I213_IdentificacaoOPM;
end;

function T213_OPM.Add: I213_IdentificacaoOPM;
begin
  Result := AddItem(-1) as I213_IdentificacaoOPM;
end;

function T213_OPM.Insert(const Index: Integer): I213_IdentificacaoOPM;
begin
  Result := AddItem(Index) as I213_IdentificacaoOPM;
end;

{ T213_IdentificacaoOPMUtilizada }

procedure T213_IdentificacaoOPMUtilizada.AfterConstruction;
begin
  RegisterChildNode('OPM', T213_Ct_tabela);
  inherited;
end;

function T213_IdentificacaoOPMUtilizada.Get_OPM: I213_Ct_tabela;
begin
  Result := ChildNodes['OPM'] as I213_Ct_tabela;
end;

function T213_IdentificacaoOPMUtilizada.Get_ValorUnitario: WideString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure T213_IdentificacaoOPMUtilizada.Set_ValorUnitario(Value: WideString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T213_IdentificacaoOPMUtilizada.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T213_IdentificacaoOPMUtilizada.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T213_IdentificacaoOPMUtilizada.Get_CodigoBarra: WideString;
begin
  Result := ChildNodes['codigoBarra'].Text;
end;

procedure T213_IdentificacaoOPMUtilizada.Set_CodigoBarra(Value: WideString);
begin
  ChildNodes['codigoBarra'].NodeValue := Value;
end;

function T213_IdentificacaoOPMUtilizada.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_IdentificacaoOPMUtilizada.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T213_IdentificacaoOPMUtilizada.Get_Justificativa: WideString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure T213_IdentificacaoOPMUtilizada.Set_Justificativa(Value: WideString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ T213_IdentificacaoOPM }

procedure T213_IdentificacaoOPM.AfterConstruction;
begin
  RegisterChildNode('OPM', T213_Ct_tabela);
  inherited;
end;

function T213_IdentificacaoOPM.Get_OPM: I213_Ct_tabela;
begin
  Result := ChildNodes['OPM'] as I213_Ct_tabela;
end;

function T213_IdentificacaoOPM.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T213_IdentificacaoOPM.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T213_IdentificacaoOPM.Get_CodigoBarra: WideString;
begin
  Result := ChildNodes['codigoBarra'].Text;
end;

procedure T213_IdentificacaoOPM.Set_CodigoBarra(Value: WideString);
begin
  ChildNodes['codigoBarra'].NodeValue := Value;
end;

function T213_IdentificacaoOPM.Get_ValorUnitario: WideString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure T213_IdentificacaoOPM.Set_ValorUnitario(Value: WideString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T213_IdentificacaoOPM.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_IdentificacaoOPM.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T213_Ct_OPMUtilizadasRevisao }

procedure T213_Ct_OPMUtilizadasRevisao.AfterConstruction;
begin
  RegisterChildNode('OPMUtilizada', T213_OPMUtilizada);
  inherited;
end;

function T213_Ct_OPMUtilizadasRevisao.Get_OPMUtilizada: I213_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizada'] as I213_OPMUtilizada;
end;

function T213_Ct_OPMUtilizadasRevisao.Get_ValorTotalOPM: WideString;
begin
  Result := ChildNodes['valorTotalOPM'].Text;
end;

procedure T213_Ct_OPMUtilizadasRevisao.Set_ValorTotalOPM(Value: WideString);
begin
  ChildNodes['valorTotalOPM'].NodeValue := Value;
end;

{ T213_OPMUtilizada }

procedure T213_OPMUtilizada.AfterConstruction;
begin
  RegisterChildNode('OPM', T213_OPM);
  ItemTag := 'OPM';
  ItemInterface := I213_OPM;
  inherited;
end;

function T213_OPMUtilizada.Get_OPM(Index: Integer): I213_OPM;
begin
  Result := List[Index] as I213_OPM;
end;

function T213_OPMUtilizada.Add: I213_OPM;
begin
  Result := AddItem(-1) as I213_OPM;
end;

function T213_OPMUtilizada.Insert(const Index: Integer): I213_OPM;
begin
  Result := AddItem(Index) as I213_OPM;
end;

{ T213_Ct_outrasDespesas }

procedure T213_Ct_outrasDespesas.AfterConstruction;
begin
  RegisterChildNode('despesa', T213_Despesa);
  FDespesa := CreateCollection(T213_DespesaList, I213_Despesa, 'despesa') as I213_DespesaList;
  inherited;
end;

function T213_Ct_outrasDespesas.Get_Despesa: I213_DespesaList;
begin
  Result := FDespesa;
end;

function T213_Ct_outrasDespesas.Get_TotalGeralOutrasDespesas: WideString;
begin
  Result := ChildNodes['totalGeralOutrasDespesas'].Text;
end;

procedure T213_Ct_outrasDespesas.Set_TotalGeralOutrasDespesas(Value: WideString);
begin
  ChildNodes['totalGeralOutrasDespesas'].NodeValue := Value;
end;

{ T213_Despesa }

procedure T213_Despesa.AfterConstruction;
begin
  RegisterChildNode('identificadorDespesa', T213_Ct_tabela);
  inherited;
end;

function T213_Despesa.Get_IdentificadorDespesa: I213_Ct_tabela;
begin
  Result := ChildNodes['identificadorDespesa'] as I213_Ct_tabela;
end;

function T213_Despesa.Get_TipoDespesa: WideString;
begin
  Result := ChildNodes['tipoDespesa'].Text;
end;

procedure T213_Despesa.Set_TipoDespesa(Value: WideString);
begin
  ChildNodes['tipoDespesa'].NodeValue := Value;
end;

function T213_Despesa.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T213_Despesa.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T213_Despesa.Get_HoraInicial: WideString;
begin
  Result := ChildNodes['horaInicial'].Text;
end;

procedure T213_Despesa.Set_HoraInicial(Value: WideString);
begin
  ChildNodes['horaInicial'].NodeValue := Value;
end;

function T213_Despesa.Get_HoraFinal: WideString;
begin
  Result := ChildNodes['horaFinal'].Text;
end;

procedure T213_Despesa.Set_HoraFinal(Value: WideString);
begin
  ChildNodes['horaFinal'].NodeValue := Value;
end;

function T213_Despesa.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T213_Despesa.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T213_Despesa.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T213_Despesa.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T213_Despesa.Get_ValorUnitario: WideString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure T213_Despesa.Set_ValorUnitario(Value: WideString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T213_Despesa.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_Despesa.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T213_DespesaList }

function T213_DespesaList.Add: I213_Despesa;
begin
  Result := AddItem(-1) as I213_Despesa;
end;

function T213_DespesaList.Insert(const Index: Integer): I213_Despesa;
begin
  Result := AddItem(Index) as I213_Despesa;
end;
function T213_DespesaList.Get_Item(Index: Integer): I213_Despesa;
begin
  Result := List[Index] as I213_Despesa;
end;

{ T213_Ct_outrasDespesasRevisao }

procedure T213_Ct_outrasDespesasRevisao.AfterConstruction;
begin
  RegisterChildNode('itensDespesas', T213_ItensDespesas);
  FItensDespesas := CreateCollection(T213_ItensDespesasList, I213_ItensDespesas, 'itensDespesas') as I213_ItensDespesasList;
  inherited;
end;

function T213_Ct_outrasDespesasRevisao.Get_ItensDespesas: I213_ItensDespesasList;
begin
  Result := FItensDespesas;
end;

function T213_Ct_outrasDespesasRevisao.Get_TotalGeralOutrasDespesas: WideString;
begin
  Result := ChildNodes['totalGeralOutrasDespesas'].Text;
end;

procedure T213_Ct_outrasDespesasRevisao.Set_TotalGeralOutrasDespesas(Value: WideString);
begin
  ChildNodes['totalGeralOutrasDespesas'].NodeValue := Value;
end;

{ T213_ItensDespesas }

procedure T213_ItensDespesas.AfterConstruction;
begin
  RegisterChildNode('despesa', T213_Ct_tabela);
  inherited;
end;

function T213_ItensDespesas.Get_TipoDespesa: WideString;
begin
  Result := ChildNodes['tipoDespesa'].Text;
end;

procedure T213_ItensDespesas.Set_TipoDespesa(Value: WideString);
begin
  ChildNodes['tipoDespesa'].NodeValue := Value;
end;

function T213_ItensDespesas.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T213_ItensDespesas.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T213_ItensDespesas.Get_Despesa: I213_Ct_tabela;
begin
  Result := ChildNodes['despesa'] as I213_Ct_tabela;
end;

function T213_ItensDespesas.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T213_ItensDespesas.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T213_ItensDespesas.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T213_ItensDespesas.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T213_ItensDespesas.Get_ValorUnitario: WideString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure T213_ItensDespesas.Set_ValorUnitario(Value: WideString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T213_ItensDespesas.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_ItensDespesas.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T213_ItensDespesas.Get_Justificativa: WideString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure T213_ItensDespesas.Set_Justificativa(Value: WideString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ T213_ItensDespesasList }

function T213_ItensDespesasList.Add: I213_ItensDespesas;
begin
  Result := AddItem(-1) as I213_ItensDespesas;
end;

function T213_ItensDespesasList.Insert(const Index: Integer): I213_ItensDespesas;
begin
  Result := AddItem(Index) as I213_ItensDespesas;
end;
function T213_ItensDespesasList.Get_Item(Index: Integer): I213_ItensDespesas;
begin
  Result := List[Index] as I213_ItensDespesas;
end;

{ T213_Ct_procedimentosRealizados }

procedure T213_Ct_procedimentosRealizados.AfterConstruction;
begin
  RegisterChildNode('procedimentoRealizado', T213_ProcedimentoRealizado);
  ItemTag := 'procedimentoRealizado';
  ItemInterface := I213_ProcedimentoRealizado;
  inherited;
end;

function T213_Ct_procedimentosRealizados.Get_ProcedimentoRealizado(Index: Integer): I213_ProcedimentoRealizado;
begin
  Result := List[Index] as I213_ProcedimentoRealizado;
end;

function T213_Ct_procedimentosRealizados.Add: I213_ProcedimentoRealizado;
begin
  Result := AddItem(-1) as I213_ProcedimentoRealizado;
end;

function T213_Ct_procedimentosRealizados.Insert(const Index: Integer): I213_ProcedimentoRealizado;
begin
  Result := AddItem(Index) as I213_ProcedimentoRealizado;
end;

{ T213_ProcedimentoRealizado }

procedure T213_ProcedimentoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_tabela);
  inherited;
end;

function T213_ProcedimentoRealizado.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_HoraInicio: WideString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_HoraInicio(Value: WideString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_HoraFim: WideString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_HoraFim(Value: WideString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_Procedimento: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I213_Ct_tabela;
end;

function T213_ProcedimentoRealizado.Get_QuantidadeRealizada: Integer;
begin
  Result := ChildNodes['quantidadeRealizada'].NodeValue;
end;

procedure T213_ProcedimentoRealizado.Set_QuantidadeRealizada(Value: Integer);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_ViaAcesso: WideString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_ViaAcesso(Value: WideString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_TecnicaUtilizada: WideString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_TecnicaUtilizada(Value: WideString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T213_ProcedimentoRealizado.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_ProcedimentoRealizado.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T213_Ct_procedimentoOdontoRevisao }

procedure T213_Ct_procedimentoOdontoRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdontologia', T213_ProcedimentoOdontologia);
  inherited;
end;

function T213_Ct_procedimentoOdontoRevisao.Get_ProcedimentoOdontologia: I213_ProcedimentoOdontologia;
begin
  Result := ChildNodes['procedimentoOdontologia'] as I213_ProcedimentoOdontologia;
end;

function T213_Ct_procedimentoOdontoRevisao.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_Ct_procedimentoOdontoRevisao.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRevisao.Get_QuantidadeTotalUS: WideString;
begin
  Result := ChildNodes['quantidadeTotalUS'].Text;
end;

procedure T213_Ct_procedimentoOdontoRevisao.Set_QuantidadeTotalUS(Value: WideString);
begin
  ChildNodes['quantidadeTotalUS'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRevisao.Get_TotalFranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure T213_Ct_procedimentoOdontoRevisao.Set_TotalFranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

function T213_Ct_procedimentoOdontoRevisao.Get_JustificativaRevisao: WideString;
begin
  Result := ChildNodes['justificativaRevisao'].Text;
end;

procedure T213_Ct_procedimentoOdontoRevisao.Set_JustificativaRevisao(Value: WideString);
begin
  ChildNodes['justificativaRevisao'].NodeValue := Value;
end;

{ T213_ProcedimentoOdontologia }

function T213_ProcedimentoOdontologia.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T213_ProcedimentoOdontologia.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

{ T213_Ct_procedimentoRealizadoEquipe }

procedure T213_Ct_procedimentoRealizadoEquipe.AfterConstruction;
begin
  RegisterChildNode('procedimentos', T213_ProcedimentosEquipe);
  ItemTag := 'procedimentos';
  ItemInterface := I213_ProcedimentosEquipe;
  inherited;
end;

function T213_Ct_procedimentoRealizadoEquipe.Get_Procedimentos(Index: Integer): I213_ProcedimentosEquipe;
begin
  Result := List[Index] as I213_ProcedimentosEquipe;
end;

function T213_Ct_procedimentoRealizadoEquipe.Add: I213_ProcedimentosEquipe;
begin
  Result := AddItem(-1) as I213_ProcedimentosEquipe;
end;

function T213_Ct_procedimentoRealizadoEquipe.Insert(const Index: Integer): I213_ProcedimentosEquipe;
begin
  Result := AddItem(Index) as I213_ProcedimentosEquipe;
end;

{ T213_Ct_procedimentoRevisao }

procedure T213_Ct_procedimentoRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimentosRevisao', T213_ProcedimentosRevisao);
  ItemTag := 'procedimentosRevisao';
  ItemInterface := I213_ProcedimentosRevisao;
  inherited;
end;

function T213_Ct_procedimentoRevisao.Get_ProcedimentosRevisao(Index: Integer): I213_ProcedimentosRevisao;
begin
  Result := List[Index] as I213_ProcedimentosRevisao;
end;

function T213_Ct_procedimentoRevisao.Add: I213_ProcedimentosRevisao;
begin
  Result := AddItem(-1) as I213_ProcedimentosRevisao;
end;

function T213_Ct_procedimentoRevisao.Insert(const Index: Integer): I213_ProcedimentosRevisao;
begin
  Result := AddItem(Index) as I213_ProcedimentosRevisao;
end;

{ T213_ProcedimentosRevisao }

procedure T213_ProcedimentosRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_tabela);
  inherited;
end;

function T213_ProcedimentosRevisao.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_HoraInicio: WideString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_HoraInicio(Value: WideString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_HoraFim: WideString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_HoraFim(Value: WideString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_Procedimento: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I213_Ct_tabela;
end;

function T213_ProcedimentosRevisao.Get_QuantidadeRealizada: Integer;
begin
  Result := ChildNodes['quantidadeRealizada'].NodeValue;
end;

procedure T213_ProcedimentosRevisao.Set_QuantidadeRealizada(Value: Integer);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_ViaAcesso: WideString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_ViaAcesso(Value: WideString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_TecnicaUtilizada: WideString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_TecnicaUtilizada(Value: WideString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T213_ProcedimentosRevisao.Get_JustificativaRevisao: WideString;
begin
  Result := ChildNodes['justificativaRevisao'].Text;
end;

procedure T213_ProcedimentosRevisao.Set_JustificativaRevisao(Value: WideString);
begin
  ChildNodes['justificativaRevisao'].NodeValue := Value;
end;

{ T213_Ct_situacaoDentes }

function T213_Ct_situacaoDentes.Get_Dente: WideString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure T213_Ct_situacaoDentes.Set_Dente(Value: WideString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T213_Ct_situacaoDentes.Get_Obturado: Boolean;
begin
  Result := ChildNodes['obturado'].NodeValue;
end;

procedure T213_Ct_situacaoDentes.Set_Obturado(Value: Boolean);
begin
  ChildNodes['obturado'].NodeValue := Value;
end;

function T213_Ct_situacaoDentes.Get_Careado: Boolean;
begin
  Result := ChildNodes['careado'].NodeValue;
end;

procedure T213_Ct_situacaoDentes.Set_Careado(Value: Boolean);
begin
  ChildNodes['careado'].NodeValue := Value;
end;

function T213_Ct_situacaoDentes.Get_Perdido: Boolean;
begin
  Result := ChildNodes['perdido'].NodeValue;
end;

procedure T213_Ct_situacaoDentes.Set_Perdido(Value: Boolean);
begin
  ChildNodes['perdido'].NodeValue := Value;
end;

{ T213_Ct_totaisOdonto }

function T213_Ct_totaisOdonto.Get_ServicoExecutado: WideString;
begin
  Result := ChildNodes['servicoExecutado'].Text;
end;

procedure T213_Ct_totaisOdonto.Set_ServicoExecutado(Value: WideString);
begin
  ChildNodes['servicoExecutado'].NodeValue := Value;
end;

function T213_Ct_totaisOdonto.Get_Taxas: WideString;
begin
  Result := ChildNodes['taxas'].Text;
end;

procedure T213_Ct_totaisOdonto.Set_Taxas(Value: WideString);
begin
  ChildNodes['taxas'].NodeValue := Value;
end;

function T213_Ct_totaisOdonto.Get_Materiais: WideString;
begin
  Result := ChildNodes['materiais'].Text;
end;

procedure T213_Ct_totaisOdonto.Set_Materiais(Value: WideString);
begin
  ChildNodes['materiais'].NodeValue := Value;
end;

function T213_Ct_totaisOdonto.Get_Medicamentos: WideString;
begin
  Result := ChildNodes['medicamentos'].Text;
end;

procedure T213_Ct_totaisOdonto.Set_Medicamentos(Value: WideString);
begin
  ChildNodes['medicamentos'].NodeValue := Value;
end;

function T213_Ct_totaisOdonto.Get_TotalGeral: WideString;
begin
  Result := ChildNodes['totalGeral'].Text;
end;

procedure T213_Ct_totaisOdonto.Set_TotalGeral(Value: WideString);
begin
  ChildNodes['totalGeral'].NodeValue := Value;
end;

{ T213_Ct_tratamenteOdontoRealizado }

procedure T213_Ct_tratamenteOdontoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_tabela);
  inherited;
end;

function T213_Ct_tratamenteOdontoRealizado.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T213_Ct_tratamenteOdontoRealizado.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T213_Ct_tratamenteOdontoRealizado.Get_Procedimento: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I213_Ct_tabela;
end;

function T213_Ct_tratamenteOdontoRealizado.Get_Dente: WideString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure T213_Ct_tratamenteOdontoRealizado.Set_Dente(Value: WideString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T213_Ct_tratamenteOdontoRealizado.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T213_Ct_tratamenteOdontoRealizado.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

{ T213_Ct_tratamentoOdontoSolicitado }

procedure T213_Ct_tratamentoOdontoSolicitado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T213_Ct_tabela);
  inherited;
end;

function T213_Ct_tratamentoOdontoSolicitado.Get_Procedimento: I213_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I213_Ct_tabela;
end;

function T213_Ct_tratamentoOdontoSolicitado.Get_Dente: WideString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure T213_Ct_tratamentoOdontoSolicitado.Set_Dente(Value: WideString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T213_Ct_tratamentoOdontoSolicitado.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T213_Ct_tratamentoOdontoSolicitado.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

{ T213_Ct_valorTotalServicos }

function T213_Ct_valorTotalServicos.Get_ServicosExecutados: WideString;
begin
  Result := ChildNodes['servicosExecutados'].Text;
end;

procedure T213_Ct_valorTotalServicos.Set_ServicosExecutados(Value: WideString);
begin
  ChildNodes['servicosExecutados'].NodeValue := Value;
end;

function T213_Ct_valorTotalServicos.Get_Diarias: WideString;
begin
  Result := ChildNodes['diarias'].Text;
end;

procedure T213_Ct_valorTotalServicos.Set_Diarias(Value: WideString);
begin
  ChildNodes['diarias'].NodeValue := Value;
end;

function T213_Ct_valorTotalServicos.Get_Taxas: WideString;
begin
  Result := ChildNodes['taxas'].Text;
end;

procedure T213_Ct_valorTotalServicos.Set_Taxas(Value: WideString);
begin
  ChildNodes['taxas'].NodeValue := Value;
end;

function T213_Ct_valorTotalServicos.Get_Materiais: WideString;
begin
  Result := ChildNodes['materiais'].Text;
end;

procedure T213_Ct_valorTotalServicos.Set_Materiais(Value: WideString);
begin
  ChildNodes['materiais'].NodeValue := Value;
end;

function T213_Ct_valorTotalServicos.Get_Medicamentos: WideString;
begin
  Result := ChildNodes['medicamentos'].Text;
end;

procedure T213_Ct_valorTotalServicos.Set_Medicamentos(Value: WideString);
begin
  ChildNodes['medicamentos'].NodeValue := Value;
end;

function T213_Ct_valorTotalServicos.Get_Gases: WideString;
begin
  Result := ChildNodes['gases'].Text;
end;

procedure T213_Ct_valorTotalServicos.Set_Gases(Value: WideString);
begin
  ChildNodes['gases'].NodeValue := Value;
end;

function T213_Ct_valorTotalServicos.Get_TotalGeral: WideString;
begin
  Result := ChildNodes['totalGeral'].Text;
end;

procedure T213_Ct_valorTotalServicos.Set_TotalGeral(Value: WideString);
begin
  ChildNodes['totalGeral'].NodeValue := Value;
end;

{ T213_Guias }

{ T213_GuiaFaturamento }

procedure T213_GuiaFaturamento.AfterConstruction;
begin
  RegisterChildNode('guiaConsulta', T213_Ct_guiaConsulta);
  RegisterChildNode('guiaSP_SADT', T213_Ct_guiaSP_SADT);
  RegisterChildNode('guiaResumoInternacao', T213_Ct_guiaResumoInternacao);
  RegisterChildNode('guiaHonorarioIndividual', T213_Ct_guiaHonorarioIndividual);
  RegisterChildNode('guiaOdontologia', T213_Ct_guiaOdontologia);
  FGuiaConsulta := CreateCollection(T213_Ct_guiaConsultaList, I213_Ct_guiaConsulta, 'guiaConsulta') as I213_Ct_guiaConsultaList;
  FGuiaSP_SADT := CreateCollection(T213_Ct_guiaSP_SADTList, I213_Ct_guiaSP_SADT, 'guiaSP_SADT') as I213_Ct_guiaSP_SADTList;
  FGuiaResumoInternacao := CreateCollection(T213_Ct_guiaResumoInternacaoList, I213_Ct_guiaResumoInternacao, 'guiaResumoInternacao') as I213_Ct_guiaResumoInternacaoList;
  FGuiaHonorarioIndividual := CreateCollection(T213_Ct_guiaHonorarioIndividualList, I213_Ct_guiaHonorarioIndividual, 'guiaHonorarioIndividual') as I213_Ct_guiaHonorarioIndividualList;
  FGuiaOdontologia := CreateCollection(T213_Ct_guiaOdontologiaList, I213_Ct_guiaOdontologia, 'guiaOdontologia') as I213_Ct_guiaOdontologiaList;
  inherited;
end;

function T213_GuiaFaturamento.Get_GuiaConsulta: I213_Ct_guiaConsultaList;
begin
  Result := FGuiaConsulta;
end;

function T213_GuiaFaturamento.Get_GuiaSP_SADT: I213_Ct_guiaSP_SADTList;
begin
  Result := FGuiaSP_SADT;
end;

function T213_GuiaFaturamento.Get_GuiaResumoInternacao: I213_Ct_guiaResumoInternacaoList;
begin
  Result := FGuiaResumoInternacao;
end;

function T213_GuiaFaturamento.Get_GuiaHonorarioIndividual: I213_Ct_guiaHonorarioIndividualList;
begin
  Result := FGuiaHonorarioIndividual;
end;

function T213_GuiaFaturamento.Get_GuiaOdontologia: I213_Ct_guiaOdontologiaList;
begin
  Result := FGuiaOdontologia;
end;

{ T213_Ct_guiaConsulta }

procedure T213_Ct_guiaConsulta.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', T213_Ct_cabecalhoGuia);
  RegisterChildNode('beneficiario', T213_Ct_beneficiario);
  RegisterChildNode('dadosContratado', T213_Ct_contratado);
  RegisterChildNode('profissionalExecutante', T213_Ct_identificacaoProfissional);
  RegisterChildNode('hipoteseDiagnostica', T213_HipoteseDiagnostica);
  RegisterChildNode('dadosAtendimento', T213_DadosAtendimento);
  inherited;
end;

function T213_Ct_guiaConsulta.Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaConsulta.Get_Beneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaConsulta.Get_DadosContratado: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosContratado'] as I213_Ct_contratado;
end;

function T213_Ct_guiaConsulta.Get_ProfissionalExecutante: I213_Ct_identificacaoProfissional;
begin
  Result := ChildNodes['profissionalExecutante'] as I213_Ct_identificacaoProfissional;
end;

function T213_Ct_guiaConsulta.Get_HipoteseDiagnostica: I213_HipoteseDiagnostica;
begin
  Result := ChildNodes['hipoteseDiagnostica'] as I213_HipoteseDiagnostica;
end;

function T213_Ct_guiaConsulta.Get_DadosAtendimento: I213_DadosAtendimento;
begin
  Result := ChildNodes['dadosAtendimento'] as I213_DadosAtendimento;
end;

function T213_Ct_guiaConsulta.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaConsulta.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_HipoteseDiagnostica }

procedure T213_HipoteseDiagnostica.AfterConstruction;
begin
  RegisterChildNode('diagnosticoSecundario', T213_Ct_diagnosticosSecundarios);
  inherited;
end;

function T213_HipoteseDiagnostica.Get_DiagnosticoSecundario: I213_Ct_diagnosticosSecundarios;
begin
  Result := ChildNodes['diagnosticoSecundario'] as I213_Ct_diagnosticosSecundarios;
end;

{ T213_DadosAtendimento }

{ T213_Ct_guiaSP_SADT }

procedure T213_Ct_guiaSP_SADT.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSADTSP', T213_Ct_cabecalhoGuia);
  RegisterChildNode('dadosAutorizacao', T213_Ct_autorizacaoGuia);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T213_Ct_solicitante);
  RegisterChildNode('prestadorExecutante', T213_PrestadorExecutante);
  RegisterChildNode('diagnosticoAtendimento', T213_Ct_diagnosticoAtendimento);
  RegisterChildNode('procedimentosRealizados', T213_Ct_procedimentoRealizadoEquipe);
  RegisterChildNode('outrasDespesas', T213_Ct_outrasDespesas);
  RegisterChildNode('OPMUtilizada', T213_Ct_OPMUtilizada);
  RegisterChildNode('valorTotal', T213_Ct_valorTotalServicos);
  inherited;
end;

function T213_Ct_guiaSP_SADT.Get_IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaSADTSP'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaSP_SADT.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T213_Ct_guiaSP_SADT.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADT.Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I213_Ct_autorizacaoGuia;
end;

function T213_Ct_guiaSP_SADT.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaSP_SADT.Get_DadosSolicitante: I213_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I213_Ct_solicitante;
end;

function T213_Ct_guiaSP_SADT.Get_PrestadorExecutante: I213_PrestadorExecutante;
begin
  Result := ChildNodes['prestadorExecutante'] as I213_PrestadorExecutante;
end;

function T213_Ct_guiaSP_SADT.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T213_Ct_guiaSP_SADT.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADT.Get_CaraterAtendimento: WideString;
begin
  Result := ChildNodes['caraterAtendimento'].Text;
end;

procedure T213_Ct_guiaSP_SADT.Set_CaraterAtendimento(Value: WideString);
begin
  ChildNodes['caraterAtendimento'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADT.Get_DataHoraAtendimento: WideString;
begin
  Result := ChildNodes['dataHoraAtendimento'].Text;
end;

procedure T213_Ct_guiaSP_SADT.Set_DataHoraAtendimento(Value: WideString);
begin
  ChildNodes['dataHoraAtendimento'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADT.Get_DiagnosticoAtendimento: I213_Ct_diagnosticoAtendimento;
begin
  Result := ChildNodes['diagnosticoAtendimento'] as I213_Ct_diagnosticoAtendimento;
end;

function T213_Ct_guiaSP_SADT.Get_TipoSaida: WideString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure T213_Ct_guiaSP_SADT.Set_TipoSaida(Value: WideString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADT.Get_TipoAtendimento: WideString;
begin
  Result := ChildNodes['tipoAtendimento'].Text;
end;

procedure T213_Ct_guiaSP_SADT.Set_TipoAtendimento(Value: WideString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADT.Get_ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe;
begin
  Result := ChildNodes['procedimentosRealizados'] as I213_Ct_procedimentoRealizadoEquipe;
end;

function T213_Ct_guiaSP_SADT.Get_OutrasDespesas: I213_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I213_Ct_outrasDespesas;
end;

function T213_Ct_guiaSP_SADT.Get_OPMUtilizada: I213_Ct_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizada'] as I213_Ct_OPMUtilizada;
end;

function T213_Ct_guiaSP_SADT.Get_ValorTotal: I213_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I213_Ct_valorTotalServicos;
end;

function T213_Ct_guiaSP_SADT.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaSP_SADT.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_PrestadorExecutante }

procedure T213_PrestadorExecutante.AfterConstruction;
begin
  RegisterChildNode('profissionalExecutanteCompl', T213_ProfissionalExecutanteCompl);
  inherited;
end;

function T213_PrestadorExecutante.Get_ProfissionalExecutanteCompl: I213_ProfissionalExecutanteCompl;
begin
  Result := ChildNodes['profissionalExecutanteCompl'] as I213_ProfissionalExecutanteCompl;
end;

{ T213_ProfissionalExecutanteCompl }

procedure T213_ProfissionalExecutanteCompl.AfterConstruction;
begin
  RegisterChildNode('codigoProfissionalCompl', T213_Ct_identificacaoProfissionalCompl);
  inherited;
end;

function T213_ProfissionalExecutanteCompl.Get_CodigoProfissionalCompl: I213_Ct_identificacaoProfissionalCompl;
begin
  Result := ChildNodes['codigoProfissionalCompl'] as I213_Ct_identificacaoProfissionalCompl;
end;

{ T213_Ct_guiaResumoInternacao }

procedure T213_Ct_guiaResumoInternacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaInternacao', T213_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('identificacaoExecutante', T213_Ct_contratado);
  RegisterChildNode('dadosAutorizacao', T213_Ct_autorizacaoGuia);
  RegisterChildNode('internacaoObstetrica', T213_Ct_internacaoObstetrica);
  RegisterChildNode('obitoNeonatal', T213_Ct_obitoNeonatal);
  RegisterChildNode('diagnosticosSaidaInternacao', T213_Ct_diagnosticoSaidaInternacao);
  RegisterChildNode('procedimentosRealizados', T213_Ct_procedimentoRealizadoEquipe);
  RegisterChildNode('OPMUtilizadas', T213_Ct_OPMUtilizada);
  RegisterChildNode('outrasDespesas', T213_Ct_outrasDespesas);
  RegisterChildNode('valorTotal', T213_Ct_valorTotalServicos);
  inherited;
end;

function T213_Ct_guiaResumoInternacao.Get_IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaInternacao'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaResumoInternacao.Get_NumeroGuiaSolicitacao: WideString;
begin
  Result := ChildNodes['numeroGuiaSolicitacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_NumeroGuiaSolicitacao(Value: WideString);
begin
  ChildNodes['numeroGuiaSolicitacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaResumoInternacao.Get_IdentificacaoExecutante: I213_Ct_contratado;
begin
  Result := ChildNodes['identificacaoExecutante'] as I213_Ct_contratado;
end;

function T213_Ct_guiaResumoInternacao.Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I213_Ct_autorizacaoGuia;
end;

function T213_Ct_guiaResumoInternacao.Get_CaraterInternacao: WideString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_CaraterInternacao(Value: WideString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_Acomodacao: WideString;
begin
  Result := ChildNodes['acomodacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_Acomodacao(Value: WideString);
begin
  ChildNodes['acomodacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_DataHoraInternacao: WideString;
begin
  Result := ChildNodes['dataHoraInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_DataHoraInternacao(Value: WideString);
begin
  ChildNodes['dataHoraInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_DataHoraSaidaInternacao: WideString;
begin
  Result := ChildNodes['dataHoraSaidaInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_DataHoraSaidaInternacao(Value: WideString);
begin
  ChildNodes['dataHoraSaidaInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_TipoInternacao: WideString;
begin
  Result := ChildNodes['tipoInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_TipoInternacao(Value: WideString);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_RegimeInternacao: WideString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_RegimeInternacao(Value: WideString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_InternacaoObstetrica: I213_Ct_internacaoObstetrica;
begin
  Result := ChildNodes['internacaoObstetrica'] as I213_Ct_internacaoObstetrica;
end;

function T213_Ct_guiaResumoInternacao.Get_ObitoNeonatal: I213_Ct_obitoNeonatal;
begin
  Result := ChildNodes['obitoNeonatal'] as I213_Ct_obitoNeonatal;
end;

function T213_Ct_guiaResumoInternacao.Get_DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao;
begin
  Result := ChildNodes['diagnosticosSaidaInternacao'] as I213_Ct_diagnosticoSaidaInternacao;
end;

function T213_Ct_guiaResumoInternacao.Get_ProcedimentosRealizados: I213_Ct_procedimentoRealizadoEquipe;
begin
  Result := ChildNodes['procedimentosRealizados'] as I213_Ct_procedimentoRealizadoEquipe;
end;

function T213_Ct_guiaResumoInternacao.Get_OPMUtilizadas: I213_Ct_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizadas'] as I213_Ct_OPMUtilizada;
end;

function T213_Ct_guiaResumoInternacao.Get_OutrasDespesas: I213_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I213_Ct_outrasDespesas;
end;

function T213_Ct_guiaResumoInternacao.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacao.Get_ValorTotal: I213_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I213_Ct_valorTotalServicos;
end;

function T213_Ct_guiaResumoInternacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_guiaHonorarioIndividual }

procedure T213_Ct_guiaHonorarioIndividual.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaHonorarioIndividual', T213_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('contratado', T213_Ct_contratado);
  RegisterChildNode('contratadoExecutante', T213_ContratadoExecutante);
  RegisterChildNode('procedimentosExamesRealizados', T213_ProcedimentosExamesRealizados);
  inherited;
end;

function T213_Ct_guiaHonorarioIndividual.Get_IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaHonorarioIndividual'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaHonorarioIndividual.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T213_Ct_guiaHonorarioIndividual.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T213_Ct_guiaHonorarioIndividual.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaHonorarioIndividual.Get_Contratado: I213_Ct_contratado;
begin
  Result := ChildNodes['contratado'] as I213_Ct_contratado;
end;

function T213_Ct_guiaHonorarioIndividual.Get_ContratadoExecutante: I213_ContratadoExecutante;
begin
  Result := ChildNodes['contratadoExecutante'] as I213_ContratadoExecutante;
end;

function T213_Ct_guiaHonorarioIndividual.Get_ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados;
begin
  Result := ChildNodes['procedimentosExamesRealizados'] as I213_ProcedimentosExamesRealizados;
end;

function T213_Ct_guiaHonorarioIndividual.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaHonorarioIndividual.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_ContratadoExecutante }

procedure T213_ContratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('identificacaoProfissional', T213_Ct_profissionalExecutante);
  inherited;
end;

function T213_ContratadoExecutante.Get_IdentificacaoProfissional: I213_Ct_profissionalExecutante;
begin
  Result := ChildNodes['identificacaoProfissional'] as I213_Ct_profissionalExecutante;
end;

function T213_ContratadoExecutante.Get_PosicaoProfissional: WideString;
begin
  Result := ChildNodes['posicaoProfissional'].Text;
end;

procedure T213_ContratadoExecutante.Set_PosicaoProfissional(Value: WideString);
begin
  ChildNodes['posicaoProfissional'].NodeValue := Value;
end;

function T213_ContratadoExecutante.Get_TipoAcomodacao: WideString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure T213_ContratadoExecutante.Set_TipoAcomodacao(Value: WideString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

{ T213_ProcedimentosExamesRealizados }

function T213_ProcedimentosExamesRealizados.Get_TotalGeralHonorario: WideString;
begin
  Result := ChildNodes['totalGeralHonorario'].Text;
end;

procedure T213_ProcedimentosExamesRealizados.Set_TotalGeralHonorario(Value: WideString);
begin
  ChildNodes['totalGeralHonorario'].NodeValue := Value;
end;

{ T213_Ct_guiaOdontologia }

procedure T213_Ct_guiaOdontologia.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', T213_Ct_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', T213_DadosBeneficiario);
  RegisterChildNode('dadosContratadoExecutante', T213_DadosContratadoExecutante);
  RegisterChildNode('procedimentosExecutados', T213_ProcedimentosExecutados);
  RegisterChildNode('outrasDespesas', T213_Ct_outrasDespesas);
  RegisterChildNode('dadosAtendimento', T213_Ct_atendimentoOdontologia);
  inherited;
end;

function T213_Ct_guiaOdontologia.Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as I213_Ct_cabecalhoGuiaOdonto;
end;

function T213_Ct_guiaOdontologia.Get_DadosBeneficiario: I213_DadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_DadosBeneficiario;
end;

function T213_Ct_guiaOdontologia.Get_DadosContratadoExecutante: I213_DadosContratadoExecutante;
begin
  Result := ChildNodes['dadosContratadoExecutante'] as I213_DadosContratadoExecutante;
end;

function T213_Ct_guiaOdontologia.Get_ProcedimentosExecutados: I213_ProcedimentosExecutados;
begin
  Result := ChildNodes['procedimentosExecutados'] as I213_ProcedimentosExecutados;
end;

function T213_Ct_guiaOdontologia.Get_OutrasDespesas: I213_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I213_Ct_outrasDespesas;
end;

function T213_Ct_guiaOdontologia.Get_DadosAtendimento: I213_Ct_atendimentoOdontologia;
begin
  Result := ChildNodes['dadosAtendimento'] as I213_Ct_atendimentoOdontologia;
end;

function T213_Ct_guiaOdontologia.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T213_Ct_guiaOdontologia.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T213_Ct_guiaOdontologia.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaOdontologia.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_DadosContratadoExecutante }

procedure T213_DadosContratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', T213_DadosContratado);
  RegisterChildNode('dadosExecutante', T213_Ct_profissionalExecutante);
  inherited;
end;

function T213_DadosContratadoExecutante.Get_DadosContratado: I213_DadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as I213_DadosContratado;
end;

function T213_DadosContratadoExecutante.Get_DadosExecutante: I213_Ct_profissionalExecutante;
begin
  Result := ChildNodes['dadosExecutante'] as I213_Ct_profissionalExecutante;
end;

{ T213_ProcedimentosExecutados }

procedure T213_ProcedimentosExecutados.AfterConstruction;
begin
  RegisterChildNode('procedimentoExecutado', T213_ProcedimentoExecutado);
  FProcedimentoExecutado := CreateCollection(T213_ProcedimentoExecutadoList, I213_ProcedimentoExecutado, 'procedimentoExecutado') as I213_ProcedimentoExecutadoList;
  inherited;
end;

function T213_ProcedimentosExecutados.Get_ProcedimentoExecutado: I213_ProcedimentoExecutadoList;
begin
  Result := FProcedimentoExecutado;
end;

function T213_ProcedimentosExecutados.Get_QuantidadeTotalUS: WideString;
begin
  Result := ChildNodes['quantidadeTotalUS'].Text;
end;

procedure T213_ProcedimentosExecutados.Set_QuantidadeTotalUS(Value: WideString);
begin
  ChildNodes['quantidadeTotalUS'].NodeValue := Value;
end;

function T213_ProcedimentosExecutados.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T213_ProcedimentosExecutados.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T213_ProcedimentosExecutados.Get_TotalFranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure T213_ProcedimentosExecutados.Set_TotalFranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

{ T213_ProcedimentosExecutadosOdontoRevisao }

procedure T213_ProcedimentosExecutadosOdontoRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimentoExecutado', T213_Ct_procedimentoOdontoRevisao);
  ItemTag := 'procedimentoExecutado';
  ItemInterface := I213_Ct_procedimentoOdontoRevisao;
  inherited;
end;

function T213_ProcedimentosExecutadosOdontoRevisao.Get_ProcedimentoExecutado(Index: Integer): I213_Ct_procedimentoOdontoRevisao;
begin
  Result := List[Index] as I213_Ct_procedimentoOdontoRevisao;
end;

function T213_ProcedimentosExecutadosOdontoRevisao.Add: I213_Ct_procedimentoOdontoRevisao;
begin
  Result := AddItem(-1) as I213_Ct_procedimentoOdontoRevisao;
end;

function T213_ProcedimentosExecutadosOdontoRevisao.Insert(const Index: Integer): I213_Ct_procedimentoOdontoRevisao;
begin
  Result := AddItem(Index) as I213_Ct_procedimentoOdontoRevisao;
end;

{ T213_ProcedimentoExecutado }

function T213_ProcedimentoExecutado.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T213_ProcedimentoExecutado.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

{ T213_ProcedimentoExecutadoList }

function T213_ProcedimentoExecutadoList.Add: I213_ProcedimentoExecutado;
begin
  Result := AddItem(-1) as I213_ProcedimentoExecutado;
end;

function T213_ProcedimentoExecutadoList.Insert(const Index: Integer): I213_ProcedimentoExecutado;
begin
  Result := AddItem(Index) as I213_ProcedimentoExecutado;
end;
function T213_ProcedimentoExecutadoList.Get_Item(Index: Integer): I213_ProcedimentoExecutado;
begin
  Result := List[Index] as I213_ProcedimentoExecutado;
end;

{ T213_GuiaRevisaoGlosa }

procedure T213_GuiaRevisaoGlosa.AfterConstruction;
begin
  RegisterChildNode('guiaConsultaReapresentacao', T213_Ct_guiaConsultaReapresentacao);
  RegisterChildNode('guiaSP_SADTReapresentacao', T213_Ct_guiaSP_SADTReapresentacao);
  RegisterChildNode('guiaResumoInternacaoReapresentacao', T213_Ct_guiaResumoInternacaoReapresentacao);
  RegisterChildNode('guiaHonorarioIndividualReapresentacao', T213_Ct_guiaHonorarioIndividualReapresentacao);
  RegisterChildNode('guiaOdontologiaReapresentacao', T213_Ct_guiaTratamentoOdontologicoReapresentacao);
  FGuiaConsultaReapresentacao := CreateCollection(T213_Ct_guiaConsultaReapresentacaoList, I213_Ct_guiaConsultaReapresentacao, 'guiaConsultaReapresentacao') as I213_Ct_guiaConsultaReapresentacaoList;
  FGuiaSP_SADTReapresentacao := CreateCollection(T213_Ct_guiaSP_SADTReapresentacaoList, I213_Ct_guiaSP_SADTReapresentacao, 'guiaSP_SADTReapresentacao') as I213_Ct_guiaSP_SADTReapresentacaoList;
  FGuiaResumoInternacaoReapresentacao := CreateCollection(T213_Ct_guiaResumoInternacaoReapresentacaoList, I213_Ct_guiaResumoInternacaoReapresentacao, 'guiaResumoInternacaoReapresentacao') as I213_Ct_guiaResumoInternacaoReapresentacaoList;
  FGuiaHonorarioIndividualReapresentacao := CreateCollection(T213_Ct_guiaHonorarioIndividualReapresentacaoList, I213_Ct_guiaHonorarioIndividualReapresentacao, 'guiaHonorarioIndividualReapresentacao') as I213_Ct_guiaHonorarioIndividualReapresentacaoList;
  FGuiaOdontologiaReapresentacao := CreateCollection(T213_Ct_guiaTratamentoOdontologicoReapresentacaoList, I213_Ct_guiaTratamentoOdontologicoReapresentacao, 'guiaOdontologiaReapresentacao') as I213_Ct_guiaTratamentoOdontologicoReapresentacaoList;
  inherited;
end;

function T213_GuiaRevisaoGlosa.Get_GuiaConsultaReapresentacao: I213_Ct_guiaConsultaReapresentacaoList;
begin
  Result := FGuiaConsultaReapresentacao;
end;

function T213_GuiaRevisaoGlosa.Get_GuiaSP_SADTReapresentacao: I213_Ct_guiaSP_SADTReapresentacaoList;
begin
  Result := FGuiaSP_SADTReapresentacao;
end;

function T213_GuiaRevisaoGlosa.Get_GuiaResumoInternacaoReapresentacao: I213_Ct_guiaResumoInternacaoReapresentacaoList;
begin
  Result := FGuiaResumoInternacaoReapresentacao;
end;

function T213_GuiaRevisaoGlosa.Get_GuiaHonorarioIndividualReapresentacao: I213_Ct_guiaHonorarioIndividualReapresentacaoList;
begin
  Result := FGuiaHonorarioIndividualReapresentacao;
end;

function T213_GuiaRevisaoGlosa.Get_GuiaOdontologiaReapresentacao: I213_Ct_guiaTratamentoOdontologicoReapresentacaoList;
begin
  Result := FGuiaOdontologiaReapresentacao;
end;

{ T213_Ct_guiaConsultaReapresentacao }

procedure T213_Ct_guiaConsultaReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', T213_Ct_cabecalhoGuia);
  RegisterChildNode('beneficiario', T213_Ct_beneficiario);
  RegisterChildNode('dadosContratado', T213_Ct_contratado);
  RegisterChildNode('profissionalExecutante', T213_Ct_identificacaoProfissional);
  RegisterChildNode('hipoteseDiagnostica', T213_Ct_diagnosticoAtendimento);
  RegisterChildNode('dadosAtendimento', T213_Ct_atendimentoConsultaReapr);
  inherited;
end;

function T213_Ct_guiaConsultaReapresentacao.Get_IdentificacaoGuia: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaConsultaReapresentacao.Get_Beneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaConsultaReapresentacao.Get_DadosContratado: I213_Ct_contratado;
begin
  Result := ChildNodes['dadosContratado'] as I213_Ct_contratado;
end;

function T213_Ct_guiaConsultaReapresentacao.Get_ProfissionalExecutante: I213_Ct_identificacaoProfissional;
begin
  Result := ChildNodes['profissionalExecutante'] as I213_Ct_identificacaoProfissional;
end;

function T213_Ct_guiaConsultaReapresentacao.Get_HipoteseDiagnostica: I213_Ct_diagnosticoAtendimento;
begin
  Result := ChildNodes['hipoteseDiagnostica'] as I213_Ct_diagnosticoAtendimento;
end;

function T213_Ct_guiaConsultaReapresentacao.Get_DadosAtendimento: I213_Ct_atendimentoConsultaReapr;
begin
  Result := ChildNodes['dadosAtendimento'] as I213_Ct_atendimentoConsultaReapr;
end;

function T213_Ct_guiaConsultaReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaConsultaReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_guiaSP_SADTReapresentacao }

procedure T213_Ct_guiaSP_SADTReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSADTSP', T213_Ct_cabecalhoGuia);
  RegisterChildNode('dadosAutorizacao', T213_Ct_autorizacaoGuia);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T213_Ct_solicitante);
  RegisterChildNode('prestadorExecutante', T213_PrestadorExecutante);
  RegisterChildNode('diagnosticoGuia', T213_Ct_diagnosticoGuia);
  RegisterChildNode('procedimentosRealizados', T213_Ct_procedimentoRevisao);
  RegisterChildNode('outrasDespesas', T213_Ct_outrasDespesasRevisao);
  RegisterChildNode('OPMUtilizada', T213_Ct_OPMUtilizadasRevisao);
  RegisterChildNode('valorTotal', T213_Ct_valorTotalServicos);
  FProcedimentosRealizados := CreateCollection(T213_Ct_procedimentoRevisaoList, I213_Ct_procedimentoRevisao, 'procedimentosRealizados') as I213_Ct_procedimentoRevisaoList;
  inherited;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_IdentificacaoGuiaSADTSP: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaSADTSP'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T213_Ct_guiaSP_SADTReapresentacao.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I213_Ct_autorizacaoGuia;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_DadosSolicitante: I213_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I213_Ct_solicitante;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_PrestadorExecutante: I213_PrestadorExecutante;
begin
  Result := ChildNodes['prestadorExecutante'] as I213_PrestadorExecutante;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T213_Ct_guiaSP_SADTReapresentacao.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_CaraterAtendimento: WideString;
begin
  Result := ChildNodes['caraterAtendimento'].Text;
end;

procedure T213_Ct_guiaSP_SADTReapresentacao.Set_CaraterAtendimento(Value: WideString);
begin
  ChildNodes['caraterAtendimento'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_DataHoraAtendimento: WideString;
begin
  Result := ChildNodes['dataHoraAtendimento'].Text;
end;

procedure T213_Ct_guiaSP_SADTReapresentacao.Set_DataHoraAtendimento(Value: WideString);
begin
  ChildNodes['dataHoraAtendimento'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_DiagnosticoGuia: I213_Ct_diagnosticoAtendimento;
begin
  Result := ChildNodes['diagnosticoGuia'] as I213_Ct_diagnosticoAtendimento;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_TipoSaida: WideString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure T213_Ct_guiaSP_SADTReapresentacao.Set_TipoSaida(Value: WideString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_TipoAtendimento: WideString;
begin
  Result := ChildNodes['tipoAtendimento'].NodeValue;
end;

procedure T213_Ct_guiaSP_SADTReapresentacao.Set_TipoAtendimento(Value: WideString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_ProcedimentosRealizados: I213_Ct_procedimentoRevisaoList;
begin
  Result := FProcedimentosRealizados;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_OutrasDespesas: I213_Ct_outrasDespesasRevisao;
begin
  Result := ChildNodes['outrasDespesas'] as I213_Ct_outrasDespesasRevisao;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_OPMUtilizada: I213_Ct_OPMUtilizadasRevisao;
begin
  Result := ChildNodes['OPMUtilizada'] as I213_Ct_OPMUtilizadasRevisao;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_ValorTotal: I213_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I213_Ct_valorTotalServicos;
end;

function T213_Ct_guiaSP_SADTReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaSP_SADTReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_guiaSP_SADTReapresentacaoList }

function T213_Ct_guiaSP_SADTReapresentacaoList.Add: I213_Ct_guiaSP_SADTReapresentacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaSP_SADTReapresentacao;
end;

function T213_Ct_guiaSP_SADTReapresentacaoList.Insert(const Index: Integer): I213_Ct_guiaSP_SADTReapresentacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaSP_SADTReapresentacao;
end;
function T213_Ct_guiaSP_SADTReapresentacaoList.Get_Item(Index: Integer): I213_Ct_guiaSP_SADTReapresentacao;
begin
  Result := List[Index] as I213_Ct_guiaSP_SADTReapresentacao;
end;

{ T213_Ct_guiaResumoInternacaoReapresentacao }

procedure T213_Ct_guiaResumoInternacaoReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaInternacao', T213_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('identificacaoExecutante', T213_Ct_contratado);
  RegisterChildNode('dadosAutorizacao', T213_Ct_autorizacaoGuia);
  RegisterChildNode('internacaoObstetrica', T213_Ct_internacaoObstetrica);
  RegisterChildNode('obitoNeonatal', T213_Ct_obitoNeonatal);
  RegisterChildNode('diagnosticosSaidaInternacao', T213_Ct_diagnosticoSaidaInternacao);
  RegisterChildNode('procedimentosRealizados', T213_Ct_procedimentoRevisao);
  RegisterChildNode('OPMUtilizadas', T213_Ct_OPMUtilizadasRevisao);
  RegisterChildNode('outrasDespesas', T213_Ct_outrasDespesasRevisao);
  RegisterChildNode('valorTotal', T213_Ct_valorTotalServicos);
  inherited;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_IdentificacaoGuiaInternacao: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaInternacao'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_NumeroGuiaSolicitacao: WideString;
begin
  Result := ChildNodes['numeroGuiaSolicitacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_NumeroGuiaSolicitacao(Value: WideString);
begin
  ChildNodes['numeroGuiaSolicitacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_IdentificacaoExecutante: I213_Ct_contratado;
begin
  Result := ChildNodes['identificacaoExecutante'] as I213_Ct_contratado;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_DadosAutorizacao: I213_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I213_Ct_autorizacaoGuia;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_CaraterInternacao: WideString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_CaraterInternacao(Value: WideString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_Acomodacao: WideString;
begin
  Result := ChildNodes['acomodacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_Acomodacao(Value: WideString);
begin
  ChildNodes['acomodacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_DataHoraInternacao: WideString;
begin
  Result := ChildNodes['dataHoraInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_DataHoraInternacao(Value: WideString);
begin
  ChildNodes['dataHoraInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_DataHoraSaidaInternacao: WideString;
begin
  Result := ChildNodes['dataHoraSaidaInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_DataHoraSaidaInternacao(Value: WideString);
begin
  ChildNodes['dataHoraSaidaInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_TipoInternacao: WideString;
begin
  Result := ChildNodes['tipoInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_TipoInternacao(Value: WideString);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_RegimeInternacao: WideString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_RegimeInternacao(Value: WideString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_InternacaoObstetrica: I213_Ct_internacaoObstetrica;
begin
  Result := ChildNodes['internacaoObstetrica'] as I213_Ct_internacaoObstetrica;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_ObitoNeonatal: I213_Ct_obitoNeonatal;
begin
  Result := ChildNodes['obitoNeonatal'] as I213_Ct_obitoNeonatal;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_DiagnosticosSaidaInternacao: I213_Ct_diagnosticoSaidaInternacao;
begin
  Result := ChildNodes['diagnosticosSaidaInternacao'] as I213_Ct_diagnosticoSaidaInternacao;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_ProcedimentosRealizados: I213_Ct_procedimentoRevisao;
begin
  Result := ChildNodes['procedimentosRealizados'] as I213_Ct_procedimentoRevisao;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_OPMUtilizadas: I213_Ct_OPMUtilizadasRevisao;
begin
  Result := ChildNodes['OPMUtilizadas'] as I213_Ct_OPMUtilizadasRevisao;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_OutrasDespesas: I213_Ct_outrasDespesasRevisao;
begin
  Result := ChildNodes['outrasDespesas'] as I213_Ct_outrasDespesasRevisao;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_ValorTotal: I213_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I213_Ct_valorTotalServicos;
end;

function T213_Ct_guiaResumoInternacaoReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaResumoInternacaoReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_guiaHonorarioIndividualReapresentacao }

procedure T213_Ct_guiaHonorarioIndividualReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaHonorarioIndividual', T213_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T213_Ct_beneficiario);
  RegisterChildNode('contratado', T213_Ct_contratado);
  RegisterChildNode('contratadoExecutante', T213_ContratadoExecutante);
  RegisterChildNode('procedimentosExamesRealizados', T213_ProcedimentosExamesRealizados);
  inherited;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacao.Get_IdentificacaoGuiaHonorarioIndividual: I213_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaHonorarioIndividual'] as I213_Ct_cabecalhoGuia;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacao.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T213_Ct_guiaHonorarioIndividualReapresentacao.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacao.Get_DadosBeneficiario: I213_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_Ct_beneficiario;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacao.Get_Contratado: I213_Ct_contratado;
begin
  Result := ChildNodes['contratado'] as I213_Ct_contratado;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacao.Get_ContratadoExecutante: I213_ContratadoExecutante;
begin
  Result := ChildNodes['contratadoExecutante'] as I213_ContratadoExecutante;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacao.Get_ProcedimentosExamesRealizados: I213_ProcedimentosExamesRealizados;
begin
  Result := ChildNodes['procedimentosExamesRealizados'] as I213_ProcedimentosExamesRealizados;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaHonorarioIndividualReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_Ct_guiaTratamentoOdontologicoReapresentacao }

procedure T213_Ct_guiaTratamentoOdontologicoReapresentacao.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', T213_Ct_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', T213_DadosBeneficiario);
  RegisterChildNode('dadosContratadoExecutante', T213_DadosContratadoExecutante);
  RegisterChildNode('outrasDespesas', T213_Ct_outrasDespesas);
  RegisterChildNode('dadosAtendimento', T213_Ct_atendimentoOdontologia);
  RegisterChildNode('procedimentosExecutados', T213_ProcedimentosExecutadosOdontoRevisao);
  inherited;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_CabecalhoGuia: I213_Ct_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as I213_Ct_cabecalhoGuiaOdonto;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_DadosBeneficiario: I213_DadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I213_DadosBeneficiario;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_DadosContratadoExecutante: I213_DadosContratadoExecutante;
begin
  Result := ChildNodes['dadosContratadoExecutante'] as I213_DadosContratadoExecutante;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_OutrasDespesas: I213_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I213_Ct_outrasDespesas;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_DadosAtendimento: I213_Ct_atendimentoOdontologia;
begin
  Result := ChildNodes['dadosAtendimento'] as I213_Ct_atendimentoOdontologia;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_ProcedimentosExecutados: I213_ProcedimentosExecutadosOdontoRevisao;
begin
  Result := ChildNodes['procedimentosExecutados'] as I213_ProcedimentosExecutadosOdontoRevisao;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T213_Ct_guiaTratamentoOdontologicoReapresentacao.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T213_Ct_guiaTratamentoOdontologicoReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T213_St_tipoGlosaList }

function T213_St_tipoGlosaList.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function T213_St_tipoGlosaList.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;
function T213_St_tipoGlosaList.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

{ T213_Ct_guiaSolicInternacaoList }

function T213_Ct_guiaSolicInternacaoList.Add: I213_Ct_guiaSolicInternacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaSolicInternacao;
end;

function T213_Ct_guiaSolicInternacaoList.Insert(const Index: Integer): I213_Ct_guiaSolicInternacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaSolicInternacao;
end;
function T213_Ct_guiaSolicInternacaoList.Get_Item(Index: Integer): I213_Ct_guiaSolicInternacao;
begin
  Result := List[Index] as I213_Ct_guiaSolicInternacao;
end;

{ T213_Ct_diagnosticosSecundariosList }

function T213_Ct_diagnosticosSecundariosList.Add: I213_Ct_diagnosticosSecundarios;
begin
  Result := AddItem(-1) as I213_Ct_diagnosticosSecundarios;
end;

function T213_Ct_diagnosticosSecundariosList.Insert(const Index: Integer): I213_Ct_diagnosticosSecundarios;
begin
  Result := AddItem(Index) as I213_Ct_diagnosticosSecundarios;
end;
function T213_Ct_diagnosticosSecundariosList.Get_Item(Index: Integer): I213_Ct_diagnosticosSecundarios;
begin
  Result := List[Index] as I213_Ct_diagnosticosSecundarios;
end;

{ T213_Ct_guiaSolicitacaoSP_SADTList }

function T213_Ct_guiaSolicitacaoSP_SADTList.Add: I213_Ct_guiaSolicitacaoSP_SADT;
begin
  Result := AddItem(-1) as I213_Ct_guiaSolicitacaoSP_SADT;
end;

function T213_Ct_guiaSolicitacaoSP_SADTList.Insert(const Index: Integer): I213_Ct_guiaSolicitacaoSP_SADT;
begin
  Result := AddItem(Index) as I213_Ct_guiaSolicitacaoSP_SADT;
end;
function T213_Ct_guiaSolicitacaoSP_SADTList.Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoSP_SADT;
begin
  Result := List[Index] as I213_Ct_guiaSolicitacaoSP_SADT;
end;

{ T213_Ct_guiaSolicitacaoOdontoList }

function T213_Ct_guiaSolicitacaoOdontoList.Add: I213_Ct_guiaSolicitacaoOdonto;
begin
  Result := AddItem(-1) as I213_Ct_guiaSolicitacaoOdonto;
end;

function T213_Ct_guiaSolicitacaoOdontoList.Insert(const Index: Integer): I213_Ct_guiaSolicitacaoOdonto;
begin
  Result := AddItem(Index) as I213_Ct_guiaSolicitacaoOdonto;
end;
function T213_Ct_guiaSolicitacaoOdontoList.Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoOdonto;
begin
  Result := List[Index] as I213_Ct_guiaSolicitacaoOdonto;
end;

{ T213_Ct_guiaConsultaReapresentacaoList }

function T213_Ct_guiaConsultaReapresentacaoList.Add: I213_Ct_guiaConsultaReapresentacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaConsultaReapresentacao;
end;

function T213_Ct_guiaConsultaReapresentacaoList.Insert(const Index: Integer): I213_Ct_guiaConsultaReapresentacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaConsultaReapresentacao;
end;
function T213_Ct_guiaConsultaReapresentacaoList.Get_Item(Index: Integer): I213_Ct_guiaConsultaReapresentacao;
begin
  Result := List[Index] as I213_Ct_guiaConsultaReapresentacao;
end;

{ T213_Ct_guiaSolicitacaoProrrogacaoList }

function T213_Ct_guiaSolicitacaoProrrogacaoList.Add: I213_Ct_guiaSolicitacaoProrrogacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaSolicitacaoProrrogacao;
end;

function T213_Ct_guiaSolicitacaoProrrogacaoList.Insert(const Index: Integer): I213_Ct_guiaSolicitacaoProrrogacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaSolicitacaoProrrogacao;
end;
function T213_Ct_guiaSolicitacaoProrrogacaoList.Get_Item(Index: Integer): I213_Ct_guiaSolicitacaoProrrogacao;
begin
  Result := List[Index] as I213_Ct_guiaSolicitacaoProrrogacao;
end;

{ T213_Ct_guiaConsultaList }

function T213_Ct_guiaConsultaList.Add: I213_Ct_guiaConsulta;
begin
  Result := AddItem(-1) as I213_Ct_guiaConsulta;
end;

function T213_Ct_guiaConsultaList.Insert(const Index: Integer): I213_Ct_guiaConsulta;
begin
  Result := AddItem(Index) as I213_Ct_guiaConsulta;
end;
function T213_Ct_guiaConsultaList.Get_Item(Index: Integer): I213_Ct_guiaConsulta;
begin
  Result := List[Index] as I213_Ct_guiaConsulta;
end;

{ T213_Ct_guiaSP_SADTList }

function T213_Ct_guiaSP_SADTList.Add: I213_Ct_guiaSP_SADT;
begin
  Result := AddItem(-1) as I213_Ct_guiaSP_SADT;
end;

function T213_Ct_guiaSP_SADTList.Insert(const Index: Integer): I213_Ct_guiaSP_SADT;
begin
  Result := AddItem(Index) as I213_Ct_guiaSP_SADT;
end;
function T213_Ct_guiaSP_SADTList.Get_Item(Index: Integer): I213_Ct_guiaSP_SADT;
begin
  Result := List[Index] as I213_Ct_guiaSP_SADT;
end;

{ T213_Ct_guiaResumoInternacaoList }

function T213_Ct_guiaResumoInternacaoList.Add: I213_Ct_guiaResumoInternacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaResumoInternacao;
end;

function T213_Ct_guiaResumoInternacaoList.Insert(const Index: Integer): I213_Ct_guiaResumoInternacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaResumoInternacao;
end;
function T213_Ct_guiaResumoInternacaoList.Get_Item(Index: Integer): I213_Ct_guiaResumoInternacao;
begin
  Result := List[Index] as I213_Ct_guiaResumoInternacao;
end;

{ T213_Ct_guiaHonorarioIndividualList }

function T213_Ct_guiaHonorarioIndividualList.Add: I213_Ct_guiaHonorarioIndividual;
begin
  Result := AddItem(-1) as I213_Ct_guiaHonorarioIndividual;
end;

function T213_Ct_guiaHonorarioIndividualList.Insert(const Index: Integer): I213_Ct_guiaHonorarioIndividual;
begin
  Result := AddItem(Index) as I213_Ct_guiaHonorarioIndividual;
end;
function T213_Ct_guiaHonorarioIndividualList.Get_Item(Index: Integer): I213_Ct_guiaHonorarioIndividual;
begin
  Result := List[Index] as I213_Ct_guiaHonorarioIndividual;
end;

{ T213_Ct_guiaOdontologiaList }

function T213_Ct_guiaOdontologiaList.Add: I213_Ct_guiaOdontologia;
begin
  Result := AddItem(-1) as I213_Ct_guiaOdontologia;
end;

function T213_Ct_guiaOdontologiaList.Insert(const Index: Integer): I213_Ct_guiaOdontologia;
begin
  Result := AddItem(Index) as I213_Ct_guiaOdontologia;
end;
function T213_Ct_guiaOdontologiaList.Get_Item(Index: Integer): I213_Ct_guiaOdontologia;
begin
  Result := List[Index] as I213_Ct_guiaOdontologia;
end;

{ T213_Ct_guiaResumoInternacaoReapresentacaoList }

function T213_Ct_guiaResumoInternacaoReapresentacaoList.Add: I213_Ct_guiaResumoInternacaoReapresentacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaResumoInternacaoReapresentacao;
end;

function T213_Ct_guiaResumoInternacaoReapresentacaoList.Insert(const Index: Integer): I213_Ct_guiaResumoInternacaoReapresentacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaResumoInternacaoReapresentacao;
end;
function T213_Ct_guiaResumoInternacaoReapresentacaoList.Get_Item(Index: Integer): I213_Ct_guiaResumoInternacaoReapresentacao;
begin
  Result := List[Index] as I213_Ct_guiaResumoInternacaoReapresentacao;
end;

{ T213_Ct_guiaHonorarioIndividualReapresentacaoList }

function T213_Ct_guiaHonorarioIndividualReapresentacaoList.Add: I213_Ct_guiaHonorarioIndividualReapresentacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaHonorarioIndividualReapresentacao;
end;

function T213_Ct_guiaHonorarioIndividualReapresentacaoList.Insert(const Index: Integer): I213_Ct_guiaHonorarioIndividualReapresentacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaHonorarioIndividualReapresentacao;
end;
function T213_Ct_guiaHonorarioIndividualReapresentacaoList.Get_Item(Index: Integer): I213_Ct_guiaHonorarioIndividualReapresentacao;
begin
  Result := List[Index] as I213_Ct_guiaHonorarioIndividualReapresentacao;
end;

{ T213_Ct_guiaTratamentoOdontologicoReapresentacaoList }

function T213_Ct_guiaTratamentoOdontologicoReapresentacaoList.Add: I213_Ct_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := AddItem(-1) as I213_Ct_guiaTratamentoOdontologicoReapresentacao;
end;

function T213_Ct_guiaTratamentoOdontologicoReapresentacaoList.Insert(const Index: Integer): I213_Ct_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := AddItem(Index) as I213_Ct_guiaTratamentoOdontologicoReapresentacao;
end;
function T213_Ct_guiaTratamentoOdontologicoReapresentacaoList.Get_Item(Index: Integer): I213_Ct_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := List[Index] as I213_Ct_guiaTratamentoOdontologicoReapresentacao;
end;

{ T213_Ct_procedimentoRevisaoList }

function T213_Ct_procedimentoRevisaoList.Add: I213_Ct_procedimentoRevisao;
begin
  Result := AddItem(-1) as I213_Ct_procedimentoRevisao;
end;

function T213_Ct_procedimentoRevisaoList.Insert(const Index: Integer): I213_Ct_procedimentoRevisao;
begin
  Result := AddItem(Index) as I213_Ct_procedimentoRevisao;
end;
function T213_Ct_procedimentoRevisaoList.Get_Item(Index: Integer): I213_Ct_procedimentoRevisao;
begin
  Result := List[Index] as I213_Ct_procedimentoRevisao;
end;

end.