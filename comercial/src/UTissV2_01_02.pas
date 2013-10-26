{******************************************************************************************************}
{                                                                                                      }
{                                           XML Data Binding                                           }
{                                                                                                      }
{  Geração:                                                                                            }
{     21/5/2007 10:18                                                                                  }
{                                                                                                      }
{  Modificações:                                                                                       }
{     11/06/2007 10:19 - Criação da classe T212_Ct_ProcedimentosExamesRealizadosReapresentacao         }
{                        para ser usada em T212_Ct_guiaHonorarioIndividualReapresentacao               }
{                                                                                                      }
{     21/06/2007 09:53 - Limpeza de alguns atributos desnecessários na tag "mensagemTISS"              }
{                19:00 - Retirado o atributo duplicado "xmlns"                                         }
{                                                                                                      }
{     02/07/2007 11:30 - Inclusão automática do prefixo "ans" nas Tags                                 }
{                      - Inclusão da tag inicial informando o Enconding                                }
{                      - Identação automática para facilitar a visualização                            }
{                17:59 - Retirada a Identação. Provocava erros no cálculo do hash                      }    
{                                                                                                      }
{******************************************************************************************************}

unit UTissV2_01_02;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  I212_Ct_diariaProrrogacao = interface;
  I212_Ct_motivoGlosa = interface;
  I212_Ct_motivoGlosaList = interface;
  I212_MensagemTISS = interface;
  I212_CabecalhoTransacao = interface;
  I212_IdentificacaoTransacao = interface;
  I212_FalhaNegocio = interface;
  I212_Origem = interface;
  I212_Ct_identificacaoPrestador = interface;
  I212_Destino = interface;
  I212_OperadoraParaPrestador = interface;
  I212_DemonstrativosRetorno = interface;
  I212_Ct_demonstrativoAnaliseConta = interface;
  I212_Ct_demonstrativoAnaliseContaList = interface;
  I212_Ct_identificacaoOperadora = interface;
  I212_Ct_cabecalhoDemonstrativo = interface;
  I212_Ct_contratado = interface;
  I212_Ct_endereco = interface;
  I212_Fatura = interface;
  I212_Ct_dadosConta = interface;
  I212_Lote = interface;
  I212_Ct_dadosLote = interface;
  I212_Guia = interface;
  I212_Ct_dadosGuia = interface;
  I212_Ct_beneficiario = interface;
  I212_ProcedimentosAutorizacao = interface;
  I212_Ct_dadosProcedimento = interface;
  I212_Ct_tabela = interface;
  I212_RelacaoGlosa = interface;
  I212_Ct_demonstrativoOdontologia = interface;
  I212_Ct_demonstrativoOdontologiaList = interface;
  I212_IdentificacaoOperadora = interface;
  I212_Ct_periodoProcessamento = interface;
  I212_DadosPrestador = interface;
  I212_Ct_identificadorPrestOdontoDemo = interface;
  I212_Ct_dadosPagamento = interface;
  I212_Ct_loteOdonto = interface;
  I212_Ct_detalheGuiaOdonto = interface;
  I212_ProcedimentoRealizadoOdonto = interface;
  I212_Ct_procedimentoOdontoRealizado = interface;
  I212_Ct_denteRegiao = interface;
  I212_DemaisDescontos = interface;
  I212_Ct_descontoOdonto = interface;
  I212_Ct_totalDemoOdonto = interface;
  I212_Ct_demonstrativoPagamento = interface;
  I212_Ct_demonstrativoPagamentoList = interface;
  I212_Ct_dadoBancario = interface;
  I212_DadosResumo = interface;
  I212_Ct_dadosResumo = interface;
  I212_Ct_dadosResumoList = interface;
  I212_Ct_descontos = interface;
  I212_ItemDesconto = interface;
  I212_Ct_protocoloRecebimento = interface;
  I212_Ct_detalheProtocolo = interface;
  I212_CodigoGlosaProtocolo = interface;
  I212_GuiasProtocolo = interface;
  I212_Ct_StatusProtocolo = interface;
  I212_LoteProtocolo = interface;
  I212_Ct_statusLote = interface;
  I212_GuiasStatusLote = interface;
  I212_Detalheguia = interface;
  I212_Ct_cabecalhoGuia = interface;
  I212_ProcedimentosAnalisados = interface;
  I212_Ct_itemSolicitacao = interface;
  I212_Glosas = interface;
  I212_Ct_autorizacaoProcedimento = interface;
  I212_TotalOdonto = interface;
  I212_Ct_diariaProrrogacaoAutorizada = interface;
  I212_Ct_situacaoAutorizacao = interface;
  I212_DadosAutorizacao = interface;
  I212_Ct_retornoElegibilidade = interface;
  I212_Ct_reciboCancelaGuia = interface;
  I212_GuiasCanceladas = interface;
  I212_DadosGuia = interface;
  I212_PrestadorParaOperadora = interface;
  I212_Ct_loteGuias = interface;
  I212_Ct_guias = interface;
  I212_Ct_solicitacaoDemonstrativoPagamento = interface;
  I212_Ct_solicitacaoStatusProtocolo = interface;
  I212_DetalheProtocolo = interface;
  I212_SolicitacaoProcedimento = interface;
  I212_Ct_guiaSolicInternacao = interface;
  I212_Ct_guiaSolicInternacaoList = interface;
  I212_Ct_cabecalhoSolicitacao = interface;
  I212_Ct_solicitante = interface;
  I212_Ct_identificacaoProfissional = interface;
  I212_Ct_conselhoProfissional = interface;
  I212_PrestadorSolicitado = interface;
  I212_Ct_hipoteseDiagnostica = interface;
  I212_Ct_diagnosticoGuia = interface;
  I212_Ct_diagnostico = interface;
  I212_Ct_tempoEvolucaoDoenca = interface;
  I212_Ct_diagnosticosSecundarios = interface;
  I212_Ct_diagnosticosSecundariosList = interface;
  I212_Ct_procedimentosSolicitados = interface;
  I212_ProcedimentoSolicitado = interface;
  I212_Ct_OPMSolicitadas = interface;
  I212_OPMSolicitada = interface;
  I212_Ct_guiaSolicitacaoSP_SADT = interface;
  I212_Ct_guiaSolicitacaoSP_SADTList = interface;
  I212_Ct_guiaSolicitacaoOdonto = interface;
  I212_Ct_guiaSolicitacaoOdontoList = interface;
  I212_Ct_cabecalhoGuiaOdonto = interface;
  I212_DadosBeneficiario = interface;
  I212_DadosSolicitante = interface;
  I212_DadosContratado = interface;
  I212_Ct_profissionalExecutante = interface;
  I212_Ct_situacaoInicial = interface;
  I212_Ct_situacaoClinica = interface;
  I212_Dentes = interface;
  I212_PlanoTratamento = interface;
  I212_Ct_procedimentoOdontologia = interface;
  I212_Ct_guiaSolicitacaoProrrogacao = interface;
  I212_Ct_guiaSolicitacaoProrrogacaoList = interface;
  I212_Ct_solicitaStatusAutorizacao = interface;
  I212_IdentificacaoAutorizacao = interface;
  I212_Ct_solicitaElegibilidade = interface;
  I212_Ct_cancelaGuia = interface;
  I212_GuiaCabecalho = interface;
  I212_Epilogo = interface;
  I212_Ct_atendimentoConsulta = interface;
  I212_Ct_atendimentoConsultaReapr = interface;
  I212_Procedimento = interface;
  I212_Ct_atendimentoOdontologia = interface;
  I212_Ct_autorizacaoGuia = interface;
  I212_Ct_autorizacaoGuiaInternacao = interface;
  I212_AutorizacaoServico = interface;
  I212_AutorizacaoServicoList = interface;
  I212_ProcedimentosGuia = interface;
  I212_Ct_diagnosticoSaidaInternacao = interface;
  I212_Ct_obitoInternacao = interface;
  I212_Ct_executanteComplementar = interface;
  I212_Ct_identificacaoEquipe = interface;
  I212_MembroEquipe = interface;
  I212_DadosExecutante = interface;
  I212_Ct_internacaoObstetrica = interface;
  I212_Ct_numeroDN = interface;
  I212_Ct_obitoNeonatal = interface;
  I212_Ct_OPMUtilizada = interface;
  I212_OPMIdentificacao = interface;
  I212_IdentificacaoOPM = interface;
  I212_Ct_OPMUtilizadasRevisao = interface;
  I212_OPMUtilizada = interface;
  I212_OPM = interface;
  I212_Ct_outrasDespesas = interface;
  I212_Despesa = interface;
  I212_DespesaList = interface;
  I212_Ct_outrasDespesasRevisao = interface;
  I212_ItensDespesas = interface;
  I212_ItensDespesasList = interface;
  I212_Ct_procedimentosRealizados = interface;
  I212_ProcedimentoRealizado = interface;
  I212_Ct_procedimentoOdontoRevisao = interface;
  I212_ProcedimentoOdontologia = interface;
  I212_Ct_procedimentoRealizadoEquipe = interface;
  I212_ProcedimentosEquipe = interface;
  I212_Ct_procedimentoRevisao = interface;
  I212_Ct_procedimentoRevisaoList = interface;
  I212_ProcedimentosRevisao = interface;
  I212_Ct_situacaoDentes = interface;
  I212_Ct_totaisOdonto = interface;
  I212_Ct_tratamenteOdontoRealizado = interface;
  I212_Ct_tratamentoOdontoSolicitado = interface;
  I212_Ct_valorTotalServicos = interface;
  I212_Guias = interface;
  I212_GuiaFaturamento = interface;
  I212_Ct_guiaConsulta = interface;
  I212_Ct_guiaConsultaList = interface;
  I212_HipoteseDiagnostica = interface;
  I212_DadosAtendimento = interface;
  I212_Ct_guiaSP_SADT = interface;
  I212_Ct_guiaSP_SADTList = interface;
  I212_PrestadorExecutante = interface;
  I212_ProfissionalExecutanteCompl = interface;
  I212_Ct_guiaResumoInternacao = interface;
  I212_Ct_guiaResumoInternacaoList = interface;
  I212_Ct_guiaHonorarioIndividual = interface;
  I212_Ct_guiaHonorarioIndividualList = interface;
  I212_ContratadoExecutante = interface;
  I212_ProcedimentosExamesRealizados = interface;
  I212_ProcedimentosExamesRealizadosReapresentacao = interface;
  I212_Ct_guiaOdontologia = interface;
  I212_Ct_guiaOdontologiaList = interface;
  I212_DadosContratadoExecutante = interface;
  I212_ProcedimentosExecutados = interface;
  I212_ProcedimentoExecutado = interface;
  I212_ProcedimentoExecutadoList = interface;
  I212_GuiaRevisaoGlosa = interface;
  I212_Ct_guiaConsultaReapresentacao = interface;
  I212_Ct_guiaConsultaReapresentacaoList = interface;
  I212_Ct_guiaSP_SADTReapresentacao = interface;
  I212_Ct_guiaSP_SADTReapresentacaoList = interface;
  I212_Ct_guiaResumoInternacaoReapresentacao = interface;
  I212_Ct_guiaResumoInternacaoReapresentacaoList = interface;
  I212_Ct_guiaHonorarioIndividualReapresentacao = interface;
  I212_Ct_guiaHonorarioIndividualReapresentacaoList = interface;
  I212_Ct_guiaTratamentoOdontologicoReapresentacao = interface;
  I212_Ct_guiaTratamentoOdontologicoReapresentacaoList = interface;
  I212_ProcedimentosExecutadosOdonto = interface;
  I212_St_tipoGlosaList = interface;

{ I212_Ct_diariaProrrogacao }

  I212_Ct_diariaProrrogacao = interface(IXMLNode)
    ['{C221F0CA-1223-4ACD-A37B-ECDB10C5E713}']
    { Property Accessors }
    function Get_TipoAcomodacao: WideString;
    function Get_QuantidadeDiaria: WideString;
    procedure Set_TipoAcomodacao(Value: WideString);
    procedure Set_QuantidadeDiaria(Value: WideString);
    { Methods & Properties }
    property TipoAcomodacao: WideString read Get_TipoAcomodacao write Set_TipoAcomodacao;
    property QuantidadeDiaria: WideString read Get_QuantidadeDiaria write Set_QuantidadeDiaria;
  end;

{ I212_Ct_motivoGlosa }

  I212_Ct_motivoGlosa = interface(IXMLNode)
    ['{FAC7FE23-C742-46AA-81A3-5EAD9470A639}']
    { Property Accessors }
    function Get_CodigoGlosa: WideString;
    function Get_DescricaoGlosa: WideString;
    procedure Set_CodigoGlosa(Value: WideString);
    procedure Set_DescricaoGlosa(Value: WideString);
    { Methods & Properties }
    property CodigoGlosa: WideString read Get_CodigoGlosa write Set_CodigoGlosa;
    property DescricaoGlosa: WideString read Get_DescricaoGlosa write Set_DescricaoGlosa;
  end;

{ I212_Ct_motivoGlosaList }

  I212_Ct_motivoGlosaList = interface(IXMLNodeCollection)
    ['{7243E99D-C2F2-4EC0-BBDA-19608C822DAA}']
    { Methods & Properties }
    function Add: I212_Ct_motivoGlosa;
    function Insert(const Index: Integer): I212_Ct_motivoGlosa;
    function Get_Item(Index: Integer): I212_Ct_motivoGlosa;
    property Items[Index: Integer]: I212_Ct_motivoGlosa read Get_Item; default;
  end;

{ I212_MensagemTISS }

  I212_MensagemTISS = interface(IXMLNode)
    ['{FC1B3244-F752-45B1-913C-11AE2509A143}']
    { Property Accessors }
    function Get_Cabecalho: I212_CabecalhoTransacao;
    function Get_OperadoraParaPrestador: I212_OperadoraParaPrestador;
    function Get_PrestadorParaOperadora: I212_PrestadorParaOperadora;
    function Get_Epilogo: I212_Epilogo;
    { Methods & Properties }
    property Cabecalho: I212_CabecalhoTransacao read Get_Cabecalho;
    property OperadoraParaPrestador: I212_OperadoraParaPrestador read Get_OperadoraParaPrestador;
    property PrestadorParaOperadora: I212_PrestadorParaOperadora read Get_PrestadorParaOperadora;
    property Epilogo: I212_Epilogo read Get_Epilogo;
  end;

{ I212_CabecalhoTransacao }

  I212_CabecalhoTransacao = interface(IXMLNode)
    ['{74132608-FACB-496A-858D-25C13E89D84E}']
    { Property Accessors }
    function Get_IdentificacaoTransacao: I212_IdentificacaoTransacao;
    function Get_FalhaNegocio: I212_FalhaNegocio;
    function Get_Origem: I212_Origem;
    function Get_Destino: I212_Destino;
    function Get_VersaoPadrao: WideString;
    procedure Set_VersaoPadrao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoTransacao: I212_IdentificacaoTransacao read Get_IdentificacaoTransacao;
    property FalhaNegocio: I212_FalhaNegocio read Get_FalhaNegocio;
    property Origem: I212_Origem read Get_Origem;
    property Destino: I212_Destino read Get_Destino;
    property VersaoPadrao: WideString read Get_VersaoPadrao write Set_VersaoPadrao;
  end;

{ I212_IdentificacaoTransacao }

  I212_IdentificacaoTransacao = interface(IXMLNode)
    ['{D96A7D07-4EE4-4178-A9C7-8FB1FEB2535A}']
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

{ I212_FalhaNegocio }

  I212_FalhaNegocio = interface(I212_Ct_motivoGlosa)
    ['{C4DFF39C-8168-4A1D-BB6B-1BF0F04851C6}']
    { Property Accessors }
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Origem }

  I212_Origem = interface(IXMLNode)
    ['{19E57387-0F47-4F40-8045-CF7548B8E06D}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador read Get_CodigoPrestadorNaOperadora;
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
  end;

{ I212_Ct_identificacaoPrestador }

  I212_Ct_identificacaoPrestador = interface(IXMLNode)
    ['{D0A71814-8341-4B11-B502-E33565239127}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property Cpf: WideString read Get_Cpf write Set_Cpf;
    property CodigoPrestadorNaOperadora: WideString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
  end;

{ I212_Destino }

  I212_Destino = interface(IXMLNode)
    ['{64D48DA3-95A4-417D-8062-3A64904AD9C1}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador read Get_CodigoPrestadorNaOperadora;
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
  end;

{ I212_OperadoraParaPrestador }

  I212_OperadoraParaPrestador = interface(IXMLNode)
    ['{360F040B-01F0-4397-95C2-97B0DE8B2EFA}']
    { Property Accessors }
    function Get_DemonstrativosRetorno: I212_DemonstrativosRetorno;
    function Get_ProtocoloRecebimento: I212_Ct_protocoloRecebimento;
    function Get_SituacaoProtocolo: I212_Ct_StatusProtocolo;
    function Get_AutorizacaoServico: I212_AutorizacaoServicoList;
    function Get_SituacaoAutorizacao: I212_Ct_situacaoAutorizacao;
    function Get_RespostaElegibilidade: I212_Ct_retornoElegibilidade;
    function Get_ReciboCancelaGuia: I212_Ct_reciboCancelaGuia;
    { Methods & Properties }
    property DemonstrativosRetorno: I212_DemonstrativosRetorno read Get_DemonstrativosRetorno;
    property ProtocoloRecebimento: I212_Ct_protocoloRecebimento read Get_ProtocoloRecebimento;
    property SituacaoProtocolo: I212_Ct_StatusProtocolo read Get_SituacaoProtocolo;
    property AutorizacaoServico: I212_AutorizacaoServicoList read Get_AutorizacaoServico;
    property SituacaoAutorizacao: I212_Ct_situacaoAutorizacao read Get_SituacaoAutorizacao;
    property RespostaElegibilidade: I212_Ct_retornoElegibilidade read Get_RespostaElegibilidade;
    property ReciboCancelaGuia: I212_Ct_reciboCancelaGuia read Get_ReciboCancelaGuia;
  end;

{ I212_DemonstrativosRetorno }

  I212_DemonstrativosRetorno = interface(IXMLNode)
    ['{91C366D8-4D41-4D2F-8CC1-540B685BC1D1}']
    { Property Accessors }
    function Get_DemonstrativoAnaliseConta: I212_Ct_demonstrativoAnaliseContaList;
    function Get_DemonstrativoOdontologia: I212_Ct_demonstrativoOdontologiaList;
    function Get_DemonstrativoPagamento: I212_Ct_demonstrativoPagamentoList;
    { Methods & Properties }
    property DemonstrativoAnaliseConta: I212_Ct_demonstrativoAnaliseContaList read Get_DemonstrativoAnaliseConta;
    property DemonstrativoOdontologia: I212_Ct_demonstrativoOdontologiaList read Get_DemonstrativoOdontologia;
    property DemonstrativoPagamento: I212_Ct_demonstrativoPagamentoList read Get_DemonstrativoPagamento;
  end;

{ I212_Ct_demonstrativoAnaliseConta }

  I212_Ct_demonstrativoAnaliseConta = interface(IXMLNode)
    ['{1A2015A8-69C1-417C-9615-E0B7AD986748}']
    { Property Accessors }
    function Get_IdentificacaoOperadora: I212_Ct_identificacaoOperadora;
    function Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_Fatura: I212_Fatura;
    function Get_ValorProcessadoGeral: Double;
    function Get_ValorLiberadoGeral: Double;
    function Get_ValorGlosaGeral: Double;
    procedure Set_ValorProcessadoGeral(Value: Double);
    procedure Set_ValorLiberadoGeral(Value: Double);
    procedure Set_ValorGlosaGeral(Value: Double);
    { Methods & Properties }
    property IdentificacaoOperadora: I212_Ct_identificacaoOperadora read Get_IdentificacaoOperadora;
    property CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property Fatura: I212_Fatura read Get_Fatura;
    property ValorProcessadoGeral: Double read Get_ValorProcessadoGeral write Set_ValorProcessadoGeral;
    property ValorLiberadoGeral: Double read Get_ValorLiberadoGeral write Set_ValorLiberadoGeral;
    property ValorGlosaGeral: Double read Get_ValorGlosaGeral write Set_ValorGlosaGeral;
  end;

{ I212_Ct_demonstrativoAnaliseContaList }

  I212_Ct_demonstrativoAnaliseContaList = interface(IXMLNodeCollection)
    ['{DC919165-C0C3-4137-8971-1A0B775F1D38}']
    { Methods & Properties }
    function Add: I212_Ct_demonstrativoAnaliseConta;
    function Insert(const Index: Integer): I212_Ct_demonstrativoAnaliseConta;
    function Get_Item(Index: Integer): I212_Ct_demonstrativoAnaliseConta;
    property Items[Index: Integer]: I212_Ct_demonstrativoAnaliseConta read Get_Item; default;
  end;

{ I212_Ct_identificacaoOperadora }

  I212_Ct_identificacaoOperadora = interface(IXMLNode)
    ['{8E0F5F31-0DDC-41DA-80CD-86F80E6E2D34}']
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

{ I212_Ct_cabecalhoDemonstrativo }

  I212_Ct_cabecalhoDemonstrativo = interface(IXMLNode)
    ['{A23F2AC6-A061-4075-87E5-FA935762D198}']
    { Property Accessors }
    function Get_NumeroDemonstrativo: WideString;
    function Get_DataEmissao: WideString;
    procedure Set_NumeroDemonstrativo(Value: WideString);
    procedure Set_DataEmissao(Value: WideString);
    { Methods & Properties }
    property NumeroDemonstrativo: WideString read Get_NumeroDemonstrativo write Set_NumeroDemonstrativo;
    property DataEmissao: WideString read Get_DataEmissao write Set_DataEmissao;
  end;

{ I212_Ct_contratado }

  I212_Ct_contratado = interface(IXMLNode)
    ['{A5304E3B-6FA5-4D6B-BB7C-15E54D1F435C}']
    { Property Accessors }
    function Get_Identificacao: I212_Ct_identificacaoPrestador;
    function Get_NomeContratado: WideString;
    function Get_EnderecoContratado: I212_Ct_endereco;
    function Get_NumeroCNES: WideString;
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
    { Methods & Properties }
    property Identificacao: I212_Ct_identificacaoPrestador read Get_Identificacao;
    property NomeContratado: WideString read Get_NomeContratado write Set_NomeContratado;
    property EnderecoContratado: I212_Ct_endereco read Get_EnderecoContratado;
    property NumeroCNES: WideString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ I212_Ct_endereco }

  I212_Ct_endereco = interface(IXMLNode)
    ['{8DCD23AE-9F18-4160-A9B9-871828EC444A}']
    { Property Accessors }
    function Get_TipoLogradouro: WideString;
    function Get_Logradouro: WideString;
    function Get_Numero: WideString;
    function Get_Complemento: WideString;
    function Get_CodigoIBGEMunicipio: WideString;
    function Get_Municipio: WideString;
    function Get_CodigoUF: WideString;
    function Get_Cep: Integer;
    procedure Set_TipoLogradouro(Value: WideString);
    procedure Set_Logradouro(Value: WideString);
    procedure Set_Numero(Value: WideString);
    procedure Set_Complemento(Value: WideString);
    procedure Set_CodigoIBGEMunicipio(Value: WideString);
    procedure Set_Municipio(Value: WideString);
    procedure Set_CodigoUF(Value: WideString);
    procedure Set_Cep(Value: Integer);
    { Methods & Properties }
    property TipoLogradouro: WideString read Get_TipoLogradouro write Set_TipoLogradouro;
    property Logradouro: WideString read Get_Logradouro write Set_Logradouro;
    property Numero: WideString read Get_Numero write Set_Numero;
    property Complemento: WideString read Get_Complemento write Set_Complemento;
    property CodigoIBGEMunicipio: WideString read Get_CodigoIBGEMunicipio write Set_CodigoIBGEMunicipio;
    property Municipio: WideString read Get_Municipio write Set_Municipio;
    property CodigoUF: WideString read Get_CodigoUF write Set_CodigoUF;
    property Cep: Integer read Get_Cep write Set_Cep;
  end;

{ I212_Fatura }

  I212_Fatura = interface(IXMLNode)
    ['{B2F6B99A-C574-49DA-B580-1B2F58932A48}']
    { Property Accessors }
    function Get_DadosFatura: I212_Ct_dadosConta;
    { Methods & Properties }
    property DadosFatura: I212_Ct_dadosConta read Get_DadosFatura;
  end;

{ I212_Ct_dadosConta }

  I212_Ct_dadosConta = interface(IXMLNode)
    ['{661E178D-E84B-4DC9-B0C8-12FA87698398}']
    { Property Accessors }
    function Get_NumeroFatura: WideString;
    function Get_Lote: I212_Lote;
    function Get_ValorProcessadoFatura: Double;
    function Get_ValorLiberadoFatura: Double;
    function Get_ValorGlosaFatura: Double;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_ValorProcessadoFatura(Value: Double);
    procedure Set_ValorLiberadoFatura(Value: Double);
    procedure Set_ValorGlosaFatura(Value: Double);
    { Methods & Properties }
    property NumeroFatura: WideString read Get_NumeroFatura write Set_NumeroFatura;
    property Lote: I212_Lote read Get_Lote;
    property ValorProcessadoFatura: Double read Get_ValorProcessadoFatura write Set_ValorProcessadoFatura;
    property ValorLiberadoFatura: Double read Get_ValorLiberadoFatura write Set_ValorLiberadoFatura;
    property ValorGlosaFatura: Double read Get_ValorGlosaFatura write Set_ValorGlosaFatura;
  end;

{ I212_Lote }

  I212_Lote = interface(IXMLNodeCollection)
    ['{4DDCFD06-3290-4BE0-B32B-E46ACCD337C3}']
    { Property Accessors }
    function Get_DadosLote(Index: Integer): I212_Ct_dadosLote;
    { Methods & Properties }
    function Add: I212_Ct_dadosLote;
    function Insert(const Index: Integer): I212_Ct_dadosLote;
    property DadosLote[Index: Integer]: I212_Ct_dadosLote read Get_DadosLote; default;
  end;

{ I212_Ct_dadosLote }

  I212_Ct_dadosLote = interface(IXMLNode)
    ['{D778421A-9179-48A7-8F98-1C0CA342CBD4}']
    { Property Accessors }
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: Double;
    function Get_ValorGlosaProtocolo: Double;
    function Get_CodigoGlosaProtocolo: I212_St_tipoGlosaList;
    function Get_Guia: I212_Guia;
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: Double);
    procedure Set_ValorGlosaProtocolo(Value: Double);
    { Methods & Properties }
    property NumeroLote: WideString read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorProtocolo: Double read Get_ValorProtocolo write Set_ValorProtocolo;
    property ValorGlosaProtocolo: Double read Get_ValorGlosaProtocolo write Set_ValorGlosaProtocolo;
    property CodigoGlosaProtocolo: I212_St_tipoGlosaList read Get_CodigoGlosaProtocolo;
    property Guia: I212_Guia read Get_Guia;
  end;

{ I212_Guia }

  I212_Guia = interface(IXMLNodeCollection)
    ['{5698A44B-91B2-47E9-A532-D190D6A08AF6}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I212_Ct_dadosGuia;
    { Methods & Properties }
    function Add: I212_Ct_dadosGuia;
    function Insert(const Index: Integer): I212_Ct_dadosGuia;
    property DadosGuia[Index: Integer]: I212_Ct_dadosGuia read Get_DadosGuia; default;
  end;

{ I212_Ct_dadosGuia }

  I212_Ct_dadosGuia = interface(IXMLNode)
    ['{9BA9C8FC-05DE-419A-B298-5B40556A4188}']
    { Property Accessors }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_DataRealizacao: WideString;
    function Get_ValorProcessadoGuia: Double;
    function Get_ValorLiberadoGuia: Double;
    function Get_ValorGlosaGuia: WideString;
    function Get_Procedimentos: I212_ProcedimentosGuia;
    function Get_CodigoGlosaGuia: I212_Ct_motivoGlosaList;
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ValorProcessadoGuia(Value: Double);
    procedure Set_ValorLiberadoGuia(Value: Double);
    procedure Set_ValorGlosaGuia(Value: WideString);
    { Methods & Properties }
    property NumeroGuiaPrestador: WideString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: WideString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property Beneficiario: I212_Ct_beneficiario read Get_Beneficiario;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property ValorProcessadoGuia: Double read Get_ValorProcessadoGuia write Set_ValorProcessadoGuia;
    property ValorLiberadoGuia: Double read Get_ValorLiberadoGuia write Set_ValorLiberadoGuia;
    property ValorGlosaGuia: WideString read Get_ValorGlosaGuia write Set_ValorGlosaGuia;
    property Procedimentos: I212_ProcedimentosGuia read Get_Procedimentos;
    property CodigoGlosaGuia: I212_Ct_motivoGlosaList read Get_CodigoGlosaGuia;
  end;

{ I212_Ct_beneficiario }

  I212_Ct_beneficiario = interface(IXMLNode)
    ['{CFC3AF5D-BEFC-47B7-B3B2-E41FE233D90E}']
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

{ I212_ProcedimentosAutorizacao }

  I212_ProcedimentosAutorizacao = interface(IXMLNodeCollection)
    ['{3BAEA6B3-96DA-4682-A242-BE240D9152A0}']
    { Property Accessors }
    function Get_DadosProcedimento(Index: Integer): I212_Ct_dadosProcedimento;
    { Methods & Properties }
    function Add: I212_Ct_dadosProcedimento;
    function Insert(const Index: Integer): I212_Ct_dadosProcedimento;
    property DadosProcedimento[Index: Integer]: I212_Ct_dadosProcedimento read Get_DadosProcedimento; default;
  end;

{ I212_Ct_dadosProcedimento }

  I212_Ct_dadosProcedimento = interface(IXMLNode)
    ['{9558F07B-629D-44AC-9F20-702AA986E130}']
    { Property Accessors }
    function Get_Procedimento: I212_Ct_tabela;
    function Get_QuantidadeExecutada: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_GrauParticipacao: Integer;
    function Get_RelacaoGlosa: I212_RelacaoGlosa;
    procedure Set_QuantidadeExecutada(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_GrauParticipacao(Value: Integer);
    { Methods & Properties }
    property Procedimento: I212_Ct_tabela read Get_Procedimento;
    property QuantidadeExecutada: Integer read Get_QuantidadeExecutada write Set_QuantidadeExecutada;
    property ValorProcessado: WideString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: WideString read Get_ValorLiberado write Set_ValorLiberado;
    property GrauParticipacao: Integer read Get_GrauParticipacao write Set_GrauParticipacao;
    property RelacaoGlosa: I212_RelacaoGlosa read Get_RelacaoGlosa;
  end;

{ I212_Ct_tabela }

  I212_Ct_tabela = interface(IXMLNode)
    ['{AEB0FF66-FF1D-48CD-A422-139CE33DC298}']
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

{ I212_RelacaoGlosa }

  I212_RelacaoGlosa = interface(IXMLNode)
    ['{B15CF96F-BC30-4535-935B-92093268E742}']
    { Property Accessors }
    function Get_TipoGlosa: I212_Ct_motivoGlosaList;
    function Get_ValorGlosa: Double;
    procedure Set_ValorGlosa(Value: Double);
    { Methods & Properties }
    property TipoGlosa: I212_Ct_motivoGlosaList read Get_TipoGlosa;
    property ValorGlosa: Double read Get_ValorGlosa write Set_ValorGlosa;
  end;

{ I212_Ct_demonstrativoOdontologia }

  I212_Ct_demonstrativoOdontologia = interface(IXMLNode)
    ['{80803B3C-CCE9-469C-9524-CD4F5D0C09D2}']
    { Property Accessors }
    function Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I212_IdentificacaoOperadora;
    function Get_DadosPrestador: I212_DadosPrestador;
    function Get_DadosPagamento: I212_Ct_dadosPagamento;
    function Get_TotalGeral: I212_Ct_totalDemoOdonto;
    { Methods & Properties }
    property CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property IdentificacaoOperadora: I212_IdentificacaoOperadora read Get_IdentificacaoOperadora;
    property DadosPrestador: I212_DadosPrestador read Get_DadosPrestador;
    property DadosPagamento: I212_Ct_dadosPagamento read Get_DadosPagamento;
    property TotalGeral: I212_Ct_totalDemoOdonto read Get_TotalGeral;
  end;

{ I212_Ct_demonstrativoOdontologiaList }

  I212_Ct_demonstrativoOdontologiaList = interface(IXMLNodeCollection)
    ['{5B2177B4-6935-4BC8-8C93-08009D05BD28}']
    { Methods & Properties }
    function Add: I212_Ct_demonstrativoOdontologia;
    function Insert(const Index: Integer): I212_Ct_demonstrativoOdontologia;
    function Get_Item(Index: Integer): I212_Ct_demonstrativoOdontologia;
    property Items[Index: Integer]: I212_Ct_demonstrativoOdontologia read Get_Item; default;
  end;

{ I212_IdentificacaoOperadora }

  I212_IdentificacaoOperadora = interface(I212_Ct_identificacaoOperadora)
    ['{A5CE9AFA-D0B8-4767-B4D2-4D5409A28E89}']
    { Property Accessors }
    function Get_PeriodoProcessamento: I212_Ct_periodoProcessamento;
    { Methods & Properties }
    property PeriodoProcessamento: I212_Ct_periodoProcessamento read Get_PeriodoProcessamento;
  end;

{ I212_Ct_periodoProcessamento }

  I212_Ct_periodoProcessamento = interface(IXMLNode)
    ['{97EC06DB-3B39-4CC7-BED1-3DA1C8A7FEED}']
    { Property Accessors }
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
    { Methods & Properties }
    property DataInicial: WideString read Get_DataInicial write Set_DataInicial;
    property DataFinal: WideString read Get_DataFinal write Set_DataFinal;
  end;

{ I212_DadosPrestador }

  I212_DadosPrestador = interface(IXMLNode)
    ['{AFEE114D-310C-4A57-8E63-43B85E09ACC1}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_IdentificadorPrestador: I212_Ct_identificadorPrestOdontoDemo;
    function Get_NomeContratado: WideString;
    function Get_NumeroCNES: WideString;
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: WideString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
    property IdentificadorPrestador: I212_Ct_identificadorPrestOdontoDemo read Get_IdentificadorPrestador;
    property NomeContratado: WideString read Get_NomeContratado write Set_NomeContratado;
    property NumeroCNES: WideString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ I212_Ct_identificadorPrestOdontoDemo }

  I212_Ct_identificadorPrestOdontoDemo = interface(IXMLNode)
    ['{E4067570-86A3-4D5B-9369-B11B80EB1616}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property Cpf: WideString read Get_Cpf write Set_Cpf;
  end;

{ I212_Ct_dadosPagamento }

  I212_Ct_dadosPagamento = interface(IXMLNode)
    ['{B2CD7175-A28B-4B87-8C0C-ABD58EB2701C}']
    { Property Accessors }
    function Get_DataPagamento: WideString;
    function Get_LoteOdonto: I212_Ct_loteOdonto;
    function Get_DemaisDescontos: I212_DemaisDescontos;
    procedure Set_DataPagamento(Value: WideString);
    { Methods & Properties }
    property DataPagamento: WideString read Get_DataPagamento write Set_DataPagamento;
    property LoteOdonto: I212_Ct_loteOdonto read Get_LoteOdonto;
    property DemaisDescontos: I212_DemaisDescontos read Get_DemaisDescontos;
  end;

{ I212_Ct_loteOdonto }

  I212_Ct_loteOdonto = interface(IXMLNode)
    ['{25BB5EC4-DFFC-4E38-96FC-4C1C388AA3FE}']
    { Property Accessors }
    function Get_NumeroLote: WideString;
    function Get_DetalheGuia: I212_Ct_detalheGuiaOdonto;
    function Get_ValorTotalLiberadoLote: WideString;
    function Get_ValorTotalProcessadoLote: WideString;
    function Get_ValorTotalGlosaLote: WideString;
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_ValorTotalLiberadoLote(Value: WideString);
    procedure Set_ValorTotalProcessadoLote(Value: WideString);
    procedure Set_ValorTotalGlosaLote(Value: WideString);
    { Methods & Properties }
    property NumeroLote: WideString read Get_NumeroLote write Set_NumeroLote;
    property DetalheGuia: I212_Ct_detalheGuiaOdonto read Get_DetalheGuia;
    property ValorTotalLiberadoLote: WideString read Get_ValorTotalLiberadoLote write Set_ValorTotalLiberadoLote;
    property ValorTotalProcessadoLote: WideString read Get_ValorTotalProcessadoLote write Set_ValorTotalProcessadoLote;
    property ValorTotalGlosaLote: WideString read Get_ValorTotalGlosaLote write Set_ValorTotalGlosaLote;
  end;

{ I212_Ct_detalheGuiaOdonto }

  I212_Ct_detalheGuiaOdonto = interface(IXMLNode)
    ['{345C8327-9D27-49E7-A9BF-29144CDA6F96}']
    { Property Accessors }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_CodigoBeneficiario: WideString;
    function Get_NomeBeneficiario: WideString;
    function Get_ProcedimentoRealizado: I212_ProcedimentoRealizadoOdonto;
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
    property ProcedimentoRealizado: I212_ProcedimentoRealizadoOdonto read Get_ProcedimentoRealizado;
    property ValorTotalGlosaGuia: WideString read Get_ValorTotalGlosaGuia write Set_ValorTotalGlosaGuia;
    property ValorTotalLiberadoGuia: WideString read Get_ValorTotalLiberadoGuia write Set_ValorTotalLiberadoGuia;
    property ValorTotalProcessadoGuia: WideString read Get_ValorTotalProcessadoGuia write Set_ValorTotalProcessadoGuia;
  end;

{ I212_ProcedimentoRealizadoOdonto }

  I212_ProcedimentoRealizadoOdonto = interface(IXMLNodeCollection)
    ['{ADDCC1AA-C3C9-4762-B126-9A09505F751F}']
    { Property Accessors }
    function Get_ProcedimentosOdonto(Index: Integer): I212_Ct_procedimentoOdontoRealizado;
    { Methods & Properties }
    function Add: I212_Ct_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): I212_Ct_procedimentoOdontoRealizado;
    property ProcedimentosOdonto[Index: Integer]: I212_Ct_procedimentoOdontoRealizado read Get_ProcedimentosOdonto; default;
  end;

{ I212_Ct_procedimentoOdontoRealizado }

  I212_Ct_procedimentoOdontoRealizado = interface(IXMLNode)
    ['{C1AD2711-952B-43CB-8845-FD0AB5092721}']
    { Property Accessors }
    function Get_ProcedimentoOdonto: I212_Ct_tabela;
    function Get_DenteRegiao: I212_Ct_denteRegiao;
    function Get_Face: WideString;
    function Get_DataRealizacao: WideString;
    function Get_Quantidade: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorGlosaEstorno: WideString;
    function Get_MotivoGlosa: I212_St_tipoGlosaList;
    function Get_ValorLiberado: WideString;
    procedure Set_Face(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorGlosaEstorno(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    { Methods & Properties }
    property ProcedimentoOdonto: I212_Ct_tabela read Get_ProcedimentoOdonto;
    property DenteRegiao: I212_Ct_denteRegiao read Get_DenteRegiao;
    property Face: WideString read Get_Face write Set_Face;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property Quantidade: Integer read Get_Quantidade write Set_Quantidade;
    property ValorProcessado: WideString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorGlosaEstorno: WideString read Get_ValorGlosaEstorno write Set_ValorGlosaEstorno;
    property MotivoGlosa: I212_St_tipoGlosaList read Get_MotivoGlosa;
    property ValorLiberado: WideString read Get_ValorLiberado write Set_ValorLiberado;
  end;

{ I212_Ct_denteRegiao }

  I212_Ct_denteRegiao = interface(IXMLNode)
    ['{D07EA161-6ACF-4ECC-B167-C4596E1A534C}']
    { Property Accessors }
    function Get_Dente: Integer;
    function Get_Regiao: WideString;
    procedure Set_Dente(Value: Integer);
    procedure Set_Regiao(Value: WideString);
    { Methods & Properties }
    property Dente: Integer read Get_Dente write Set_Dente;
    property Regiao: WideString read Get_Regiao write Set_Regiao;
  end;

{ I212_DemaisDescontos }

  I212_DemaisDescontos = interface(IXMLNodeCollection)
    ['{6900E143-BB23-42C5-AAD0-863F358469B2}']
    { Property Accessors }
    function Get_Descontos(Index: Integer): I212_Ct_descontoOdonto;
    { Methods & Properties }
    function Add: I212_Ct_descontoOdonto;
    function Insert(const Index: Integer): I212_Ct_descontoOdonto;
    property Descontos[Index: Integer]: I212_Ct_descontoOdonto read Get_Descontos; default;
  end;

{ I212_Ct_descontoOdonto }

  I212_Ct_descontoOdonto = interface(IXMLNode)
    ['{5E4DE810-B350-489E-AF43-6CC663DE21F2}']
    { Property Accessors }
    function Get_Descricao: WideString;
    function Get_ValorDesconto: WideString;
    procedure Set_Descricao(Value: WideString);
    procedure Set_ValorDesconto(Value: WideString);
    { Methods & Properties }
    property Descricao: WideString read Get_Descricao write Set_Descricao;
    property ValorDesconto: WideString read Get_ValorDesconto write Set_ValorDesconto;
  end;

{ I212_Ct_totalDemoOdonto }

  I212_Ct_totalDemoOdonto = interface(IXMLNode)
    ['{6F7EBB10-E66E-42D4-BA53-BB4CBCAFC375}']
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

{ I212_Ct_demonstrativoPagamento }

  I212_Ct_demonstrativoPagamento = interface(IXMLNode)
    ['{56BC8AD6-02E2-4143-8CA6-AB1761540CD5}']
    { Property Accessors }
    function Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I212_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DadosPagamento: I212_Ct_dadoBancario;
    function Get_DadosResumo: I212_DadosResumo;
    function Get_ValorTotal: WideString;
    function Get_DemaisDescontos: I212_Ct_descontos;
    function Get_ValorFinalLiberado: Double;
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_ValorFinalLiberado(Value: Double);
    { Methods & Properties }
    property CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property IdentificacaoOperadora: I212_Ct_identificacaoOperadora read Get_IdentificacaoOperadora;
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property DadosPagamento: I212_Ct_dadoBancario read Get_DadosPagamento;
    property DadosResumo: I212_DadosResumo read Get_DadosResumo;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property DemaisDescontos: I212_Ct_descontos read Get_DemaisDescontos;
    property ValorFinalLiberado: Double read Get_ValorFinalLiberado write Set_ValorFinalLiberado;
  end;

{ I212_Ct_demonstrativoPagamentoList }

  I212_Ct_demonstrativoPagamentoList = interface(IXMLNodeCollection)
    ['{5532B4AF-0FFF-492D-BA83-1D6F403591FD}']
    { Methods & Properties }
    function Add: I212_Ct_demonstrativoPagamento;
    function Insert(const Index: Integer): I212_Ct_demonstrativoPagamento;
    function Get_Item(Index: Integer): I212_Ct_demonstrativoPagamento;
    property Items[Index: Integer]: I212_Ct_demonstrativoPagamento read Get_Item; default;
  end;

{ I212_Ct_dadoBancario }

  I212_Ct_dadoBancario = interface(IXMLNode)
    ['{274CBF63-7320-4904-9AF2-BEDB20105E70}']
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

{ I212_DadosResumo }

  I212_DadosResumo = interface(IXMLNode)
    ['{8AA38150-BD12-49AA-B332-26068F3E28AB}']
    { Property Accessors }
    function Get_DetalheResumo: I212_Ct_dadosResumoList;
    function Get_TotalGeralInformado: Double;
    function Get_TotalGeralProcessado: Double;
    function Get_TotalGeralGlosa: Double;
    function Get_TotalGeralLiberado: Double;
    procedure Set_TotalGeralInformado(Value: Double);
    procedure Set_TotalGeralProcessado(Value: Double);
    procedure Set_TotalGeralGlosa(Value: Double);
    procedure Set_TotalGeralLiberado(Value: Double);
    { Methods & Properties }
    property DetalheResumo: I212_Ct_dadosResumoList read Get_DetalheResumo;
    property TotalGeralInformado: Double read Get_TotalGeralInformado write Set_TotalGeralInformado;
    property TotalGeralProcessado: Double read Get_TotalGeralProcessado write Set_TotalGeralProcessado;
    property TotalGeralGlosa: Double read Get_TotalGeralGlosa write Set_TotalGeralGlosa;
    property TotalGeralLiberado: Double read Get_TotalGeralLiberado write Set_TotalGeralLiberado;
  end;

{ I212_Ct_dadosResumo }

  I212_Ct_dadosResumo = interface(IXMLNode)
    ['{F88F2CC8-5BE8-48E6-9BD3-9A75A89BCD35}']
    { Property Accessors }
    function Get_NumeroFatura: WideString;
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorInformado: Double;
    function Get_ValorProcessado: Double;
    function Get_ValorLiberado: Double;
    function Get_ValorGlosa: Double;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorInformado(Value: Double);
    procedure Set_ValorProcessado(Value: Double);
    procedure Set_ValorLiberado(Value: Double);
    procedure Set_ValorGlosa(Value: Double);
    { Methods & Properties }
    property NumeroFatura: WideString read Get_NumeroFatura write Set_NumeroFatura;
    property NumeroLote: WideString read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorInformado: Double read Get_ValorInformado write Set_ValorInformado;
    property ValorProcessado: Double read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: Double read Get_ValorLiberado write Set_ValorLiberado;
    property ValorGlosa: Double read Get_ValorGlosa write Set_ValorGlosa;
  end;

{ I212_Ct_dadosResumoList }

  I212_Ct_dadosResumoList = interface(IXMLNodeCollection)
    ['{B6394849-E346-434F-AC93-B0080D6FB0AE}']
    { Methods & Properties }
    function Add: I212_Ct_dadosResumo;
    function Insert(const Index: Integer): I212_Ct_dadosResumo;
    function Get_Item(Index: Integer): I212_Ct_dadosResumo;
    property Items[Index: Integer]: I212_Ct_dadosResumo read Get_Item; default;
  end;

{ I212_Ct_descontos }

  I212_Ct_descontos = interface(IXMLNodeCollection)
    ['{413A5F9F-BE46-4658-B844-8A29CFCDAA0D}']
    { Property Accessors }
    function Get_ItemDesconto(Index: Integer): I212_ItemDesconto;
    { Methods & Properties }
    function Add: I212_ItemDesconto;
    function Insert(const Index: Integer): I212_ItemDesconto;
    property ItemDesconto[Index: Integer]: I212_ItemDesconto read Get_ItemDesconto; default;
  end;

{ I212_ItemDesconto }

  I212_ItemDesconto = interface(IXMLNode)
    ['{37EEA7B4-E8DB-4F96-B154-B48DF89529DC}']
    { Property Accessors }
    function Get_ValorDesconto: WideString;
    function Get_Descricao: WideString;
    procedure Set_ValorDesconto(Value: WideString);
    procedure Set_Descricao(Value: WideString);
    { Methods & Properties }
    property ValorDesconto: WideString read Get_ValorDesconto write Set_ValorDesconto;
    property Descricao: WideString read Get_Descricao write Set_Descricao;
  end;

{ I212_Ct_protocoloRecebimento }

  I212_Ct_protocoloRecebimento = interface(IXMLNode)
    ['{1CD2848A-13F4-4A9F-8028-13F1D9AD0D9F}']
    { Property Accessors }
    function Get_DadosOperadora: I212_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroLote: Integer;
    function Get_MensagemDetalheProtocolo: I212_Ct_detalheProtocolo;
    function Get_NumeroProtocoloRecebimento: Integer;
    function Get_MensagemErro: WideString;
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_NumeroProtocoloRecebimento(Value: Integer);
    procedure Set_MensagemErro(Value: WideString);
    { Methods & Properties }
    property DadosOperadora: I212_Ct_identificacaoOperadora read Get_DadosOperadora;
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroLote: Integer read Get_NumeroLote write Set_NumeroLote;
    property MensagemDetalheProtocolo: I212_Ct_detalheProtocolo read Get_MensagemDetalheProtocolo;
    property NumeroProtocoloRecebimento: Integer read Get_NumeroProtocoloRecebimento write Set_NumeroProtocoloRecebimento;
    property MensagemErro: WideString read Get_MensagemErro write Set_MensagemErro;
  end;

{ I212_Ct_detalheProtocolo }

  I212_Ct_detalheProtocolo = interface(IXMLNode)
    ['{7D762B6E-C2C2-4F57-9466-96F6666ED54E}']
    { Property Accessors }
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: WideString;
    function Get_CodigoGlosaProtocolo: I212_CodigoGlosaProtocolo;
    function Get_Guias: I212_GuiasProtocolo;
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: WideString);
    { Methods & Properties }
    property NumeroProtocolo: WideString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorProtocolo: WideString read Get_ValorProtocolo write Set_ValorProtocolo;
    property CodigoGlosaProtocolo: I212_CodigoGlosaProtocolo read Get_CodigoGlosaProtocolo;
    property Guias: I212_GuiasProtocolo read Get_Guias;
  end;

{ I212_CodigoGlosaProtocolo }

  I212_CodigoGlosaProtocolo = interface(IXMLNode)
    ['{0B6AEB3D-8436-4D85-9BD1-302F77E5CBFA}']
    { Property Accessors }
    function Get_MotivoGlosa: I212_Ct_motivoGlosaList;
    function Get_ValorGlosaProtocolo: WideString;
    procedure Set_ValorGlosaProtocolo(Value: WideString);
    { Methods & Properties }
    property MotivoGlosa: I212_Ct_motivoGlosaList read Get_MotivoGlosa;
    property ValorGlosaProtocolo: WideString read Get_ValorGlosaProtocolo write Set_ValorGlosaProtocolo;
  end;

{ I212_GuiasProtocolo }

  I212_GuiasProtocolo = interface(IXMLNodeCollection)
    ['{EC52B001-AC26-4359-9A25-C368FE840FEF}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I212_Ct_dadosGuia;
    { Methods & Properties }
    function Add: I212_Ct_dadosGuia;
    function Insert(const Index: Integer): I212_Ct_dadosGuia;
    property DadosGuia[Index: Integer]: I212_Ct_dadosGuia read Get_DadosGuia; default;
  end;

{ I212_Ct_StatusProtocolo }

  I212_Ct_StatusProtocolo = interface(IXMLNode)
    ['{80563F34-9693-42A5-8435-505CE4C8F46F}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_NomeOperadora: WideString;
    function Get_CNPJ: WideString;
    function Get_StatusProtocolo: Integer;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_CNESPrestador: WideString;
    function Get_Lote: I212_LoteProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NomeOperadora(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_StatusProtocolo(Value: Integer);
    procedure Set_CNESPrestador(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property NomeOperadora: WideString read Get_NomeOperadora write Set_NomeOperadora;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property StatusProtocolo: Integer read Get_StatusProtocolo write Set_StatusProtocolo;
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property CNESPrestador: WideString read Get_CNESPrestador write Set_CNESPrestador;
    property Lote: I212_LoteProtocolo read Get_Lote;
  end;

{ I212_LoteProtocolo }

  I212_LoteProtocolo = interface(IXMLNodeCollection)
    ['{6B476EFC-6ABA-4D5C-9B85-501555239BE2}']
    { Property Accessors }
    function Get_DetalheLote(Index: Integer): I212_Ct_statusLote;
    { Methods & Properties }
    function Add: I212_Ct_statusLote;
    function Insert(const Index: Integer): I212_Ct_statusLote;
    property DetalheLote[Index: Integer]: I212_Ct_statusLote read Get_DetalheLote; default;
  end;

{ I212_Ct_statusLote }

  I212_Ct_statusLote = interface(IXMLNode)
    ['{FFB2F3BA-8816-49C1-9C45-E282818A2E0E}']
    { Property Accessors }
    function Get_NumeroProtocolo: Integer;
    function Get_NumeroLote: Integer;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroFatura: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_ValorGlosa: WideString;
    function Get_Status: Integer;
    function Get_Guias: I212_GuiasStatusLote;
    procedure Set_NumeroProtocolo(Value: Integer);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroFatura(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_ValorGlosa(Value: WideString);
    procedure Set_Status(Value: Integer);
    { Methods & Properties }
    property NumeroProtocolo: Integer read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property NumeroLote: Integer read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: WideString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroFatura: Integer read Get_NumeroFatura write Set_NumeroFatura;
    property ValorProcessado: WideString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: WideString read Get_ValorLiberado write Set_ValorLiberado;
    property ValorGlosa: WideString read Get_ValorGlosa write Set_ValorGlosa;
    property Status: Integer read Get_Status write Set_Status;
    property Guias: I212_GuiasStatusLote read Get_Guias;
  end;

{ I212_GuiasStatusLote }

  I212_GuiasStatusLote = interface(IXMLNodeCollection)
    ['{33667D28-BE4A-499C-9429-BA18E5A9F521}']
    { Property Accessors }
    function Get_Detalheguia(Index: Integer): I212_Detalheguia;
    { Methods & Properties }
    function Add: I212_Detalheguia;
    function Insert(const Index: Integer): I212_Detalheguia;
    property Detalheguia[Index: Integer]: I212_Detalheguia read Get_Detalheguia; default;
  end;

{ I212_Detalheguia }

  I212_Detalheguia = interface(IXMLNode)
    ['{D929BAAC-8760-4AD8-8CF5-ECF49B4854E2}']
    { Property Accessors }
    function Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: I212_ProcedimentosAnalisados;
    { Methods & Properties }
    property IdentificacaoGuia: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuia;
    property ProcedimentosAnalisados: I212_ProcedimentosAnalisados read Get_ProcedimentosAnalisados;
  end;

{ I212_Ct_cabecalhoGuia }

  I212_Ct_cabecalhoGuia = interface(IXMLNode)
    ['{CAE3F73B-0149-4494-8D82-2625DD45C6C2}']
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

{ I212_ProcedimentosAnalisados }

  I212_ProcedimentosAnalisados = interface(IXMLNodeCollection)
    ['{04895085-2CFD-4204-98CC-84192CC3FB13}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): I212_Ct_itemSolicitacao;
    { Methods & Properties }
    function Add: I212_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I212_Ct_itemSolicitacao;
    property Procedimento[Index: Integer]: I212_Ct_itemSolicitacao read Get_Procedimento; default;
  end;

{ I212_Ct_itemSolicitacao }

  I212_Ct_itemSolicitacao = interface(IXMLNode)
    ['{AC794F32-3645-4359-A0F1-1EA891058F37}']
    { Property Accessors }
    function Get_IdentificacaoProcedimentos: I212_Ct_tabela;
    function Get_QuantidadeSolicitada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_StatusSolicitacaoProcedimento: WideString;
    function Get_Glosas: I212_Glosas;
    function Get_Observacao: WideString;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
    procedure Set_StatusSolicitacaoProcedimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoProcedimentos: I212_Ct_tabela read Get_IdentificacaoProcedimentos;
    property QuantidadeSolicitada: WideString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property QuantidadeAutorizada: WideString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property StatusSolicitacaoProcedimento: WideString read Get_StatusSolicitacaoProcedimento write Set_StatusSolicitacaoProcedimento;
    property Glosas: I212_Glosas read Get_Glosas;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Glosas }

  I212_Glosas = interface(IXMLNodeCollection)
    ['{0D158510-834A-4596-A173-675CFC95620C}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): I212_Ct_motivoGlosa;
    { Methods & Properties }
    function Add: I212_Ct_motivoGlosa;
    function Insert(const Index: Integer): I212_Ct_motivoGlosa;
    property MotivoGlosa[Index: Integer]: I212_Ct_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ I212_Ct_autorizacaoProcedimento }

  I212_Ct_autorizacaoProcedimento = interface(IXMLNode)
    ['{7BCDF5AA-C46D-4CDD-AD07-255E5E5B1E3E}']
    { Property Accessors }
    function Get_IdentificacaoAutorizacao: I212_Ct_cabecalhoGuia;
    function Get_StatusSolicitacao: WideString;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_PrestadorAutorizado: I212_Ct_contratado;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuiaInternacao;
    function Get_Procedimentos: I212_ProcedimentosAutorizacao;
    procedure Set_StatusSolicitacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoAutorizacao: I212_Ct_cabecalhoGuia read Get_IdentificacaoAutorizacao;
    property StatusSolicitacao: WideString read Get_StatusSolicitacao write Set_StatusSolicitacao;
    property Beneficiario: I212_Ct_beneficiario read Get_Beneficiario;
    property PrestadorAutorizado: I212_Ct_contratado read Get_PrestadorAutorizado;
    property DadosAutorizacao: I212_Ct_autorizacaoGuiaInternacao read Get_DadosAutorizacao;
    property Procedimentos: I212_ProcedimentosAutorizacao read Get_Procedimentos;
  end;

{ I212_TotalOdonto }

  I212_TotalOdonto = interface(IXMLNode)
    ['{8FD5722C-5265-4B5F-9295-0994C242FA30}']
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

{ I212_Ct_diariaProrrogacaoAutorizada }

  I212_Ct_diariaProrrogacaoAutorizada = interface(I212_Ct_diariaProrrogacao)
    ['{2051252D-36F0-413E-A6BF-036544B89920}']
    { Property Accessors }
    function Get_TipoAcomodacaoAutorizada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_MotivoGlosa: I212_Ct_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
    { Methods & Properties }
    property TipoAcomodacaoAutorizada: WideString read Get_TipoAcomodacaoAutorizada write Set_TipoAcomodacaoAutorizada;
    property QuantidadeAutorizada: WideString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property MotivoGlosa: I212_Ct_motivoGlosa read Get_MotivoGlosa;
  end;

{ I212_Ct_situacaoAutorizacao }

  I212_Ct_situacaoAutorizacao = interface(IXMLNodeCollection)
    ['{7AE381CD-28C5-4C28-AE4C-EBC33FA711B2}']
    { Property Accessors }
    function Get_DadosAutorizacao(Index: Integer): I212_DadosAutorizacao;
    { Methods & Properties }
    function Add: I212_DadosAutorizacao;
    function Insert(const Index: Integer): I212_DadosAutorizacao;
    property DadosAutorizacao[Index: Integer]: I212_DadosAutorizacao read Get_DadosAutorizacao; default;
  end;

{ I212_DadosAutorizacao }

  I212_DadosAutorizacao = interface(I212_Ct_autorizacaoProcedimento)
    ['{3000BBDE-6E2E-49AB-ADD3-9C95F7672929}']
    { Property Accessors }
    function Get_TotalOdonto: I212_TotalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada;
    { Methods & Properties }
    property TotalOdonto: I212_TotalOdonto read Get_TotalOdonto;
    property Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada read Get_Ct_diariaProrrogacaoAutorizada;
  end;

{ I212_Ct_retornoElegibilidade }

  I212_Ct_retornoElegibilidade = interface(IXMLNode)
    ['{B3466D95-D278-4FED-998A-7A0F150C1CCB}']
    { Property Accessors }
    function Get_DadosOperadora: I212_Ct_identificacaoOperadora;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_RespostaSolicitacao: Boolean;
    function Get_MotivoNegacao: I212_Ct_motivoGlosa;
    procedure Set_RespostaSolicitacao(Value: Boolean);
    { Methods & Properties }
    property DadosOperadora: I212_Ct_identificacaoOperadora read Get_DadosOperadora;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property RespostaSolicitacao: Boolean read Get_RespostaSolicitacao write Set_RespostaSolicitacao;
    property MotivoNegacao: I212_Ct_motivoGlosa read Get_MotivoNegacao;
  end;

{ I212_Ct_reciboCancelaGuia }

  I212_Ct_reciboCancelaGuia = interface(IXMLNode)
    ['{F6C436BB-1E08-4C5D-A89C-B26CA47793F9}']
    { Property Accessors }
    function Get_Operadora: I212_Ct_identificacaoOperadora;
    function Get_GuiasCanceladas: I212_GuiasCanceladas;
    { Methods & Properties }
    property Operadora: I212_Ct_identificacaoOperadora read Get_Operadora;
    property GuiasCanceladas: I212_GuiasCanceladas read Get_GuiasCanceladas;
  end;

{ I212_GuiasCanceladas }

  I212_GuiasCanceladas = interface(IXMLNodeCollection)
    ['{34D2530B-247E-4673-85C6-E8D1A0DD1F7E}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I212_DadosGuia;
    { Methods & Properties }
    function Add: I212_DadosGuia;
    function Insert(const Index: Integer): I212_DadosGuia;
    property DadosGuia[Index: Integer]: I212_DadosGuia read Get_DadosGuia; default;
  end;

{ I212_DadosGuia }

  I212_DadosGuia = interface(I212_Ct_cabecalhoGuia)
    ['{C322255B-4CE0-42ED-83E3-47FAB97CB8AD}']
    { Property Accessors }
    function Get_StatusCancelamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_StatusCancelamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property StatusCancelamento: WideString read Get_StatusCancelamento write Set_StatusCancelamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_PrestadorParaOperadora }

  I212_PrestadorParaOperadora = interface(IXMLNode)
    ['{BA46BE4E-EF82-404C-8719-6F3E5715BBFB}']
    { Property Accessors }
    function Get_LoteGuias: I212_Ct_loteGuias;
    function Get_SolicitacaoDemonstrativoRetorno: I212_Ct_solicitacaoDemonstrativoPagamento;
    function Get_SolicitacaoStatusProtocolo: I212_Ct_solicitacaoStatusProtocolo;
    function Get_SolicitacaoProcedimento: I212_SolicitacaoProcedimento;
    function Get_SolicitaStatusAutorizacao: I212_Ct_solicitaStatusAutorizacao;
    function Get_VerificaElegibilidade: I212_Ct_solicitaElegibilidade;
    function Get_CancelaGuia: I212_Ct_cancelaGuia;
    { Methods & Properties }
    property LoteGuias: I212_Ct_loteGuias read Get_LoteGuias;
    property SolicitacaoDemonstrativoRetorno: I212_Ct_solicitacaoDemonstrativoPagamento read Get_SolicitacaoDemonstrativoRetorno;
    property SolicitacaoStatusProtocolo: I212_Ct_solicitacaoStatusProtocolo read Get_SolicitacaoStatusProtocolo;
    property SolicitacaoProcedimento: I212_SolicitacaoProcedimento read Get_SolicitacaoProcedimento;
    property SolicitaStatusAutorizacao: I212_Ct_solicitaStatusAutorizacao read Get_SolicitaStatusAutorizacao;
    property VerificaElegibilidade: I212_Ct_solicitaElegibilidade read Get_VerificaElegibilidade;
    property CancelaGuia: I212_Ct_cancelaGuia read Get_CancelaGuia;
  end;

{ I212_Ct_loteGuias }

  I212_Ct_loteGuias = interface(IXMLNode)
    ['{7B3DC647-9377-46E0-9714-662F44A018E9}']
    { Property Accessors }
    function Get_NumeroLote: Integer;
    function Get_Guias: I212_Guias;
    procedure Set_NumeroLote(Value: Integer);
    { Methods & Properties }
    property NumeroLote: Integer read Get_NumeroLote write Set_NumeroLote;
    property Guias: I212_Guias read Get_Guias;
  end;

{ I212_Ct_guias }

  I212_Ct_guias = interface(IXMLNode)
    ['{1B4D41EB-60C6-4E4C-94C9-11B50142FB5D}']
    { Property Accessors }
    function Get_GuiaFaturamento: I212_GuiaFaturamento;
    function Get_GuiaRevisaoGlosa: I212_GuiaRevisaoGlosa;
    { Methods & Properties }
    property GuiaFaturamento: I212_GuiaFaturamento read Get_GuiaFaturamento;
    property GuiaRevisaoGlosa: I212_GuiaRevisaoGlosa read Get_GuiaRevisaoGlosa;
  end;

{ I212_Ct_solicitacaoDemonstrativoPagamento }

  I212_Ct_solicitacaoDemonstrativoPagamento = interface(IXMLNode)
    ['{39214331-0CC9-42EA-A4EA-03DA2F1AAE07}']
    { Property Accessors }
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_RegistroANS: WideString;
    function Get_DataSolicitacao: WideString;
    function Get_TipoDemostrativo: WideString;
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    function Get_NumeroProtocolo: Integer;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
    procedure Set_TipoDemostrativo(Value: WideString);
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
    procedure Set_NumeroProtocolo(Value: Integer);
    { Methods & Properties }
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property DataSolicitacao: WideString read Get_DataSolicitacao write Set_DataSolicitacao;
    property TipoDemostrativo: WideString read Get_TipoDemostrativo write Set_TipoDemostrativo;
    property DataInicial: WideString read Get_DataInicial write Set_DataInicial;
    property DataFinal: WideString read Get_DataFinal write Set_DataFinal;
    property NumeroProtocolo: Integer read Get_NumeroProtocolo write Set_NumeroProtocolo;
  end;

{ I212_Ct_solicitacaoStatusProtocolo }

  I212_Ct_solicitacaoStatusProtocolo = interface(IXMLNode)
    ['{33613945-AA82-4842-BEF6-D230AC55BEFD}']
    { Property Accessors }
    function Get_RegistroANS: WideString;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DataSolicitacao: WideString;
    function Get_DetalheProtocolo: I212_DetalheProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
    { Methods & Properties }
    property RegistroANS: WideString read Get_RegistroANS write Set_RegistroANS;
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property DataSolicitacao: WideString read Get_DataSolicitacao write Set_DataSolicitacao;
    property DetalheProtocolo: I212_DetalheProtocolo read Get_DetalheProtocolo;
  end;

{ I212_DetalheProtocolo }

  I212_DetalheProtocolo = interface(IXMLNodeCollection)
    ['{39A0393E-A96E-405B-B51E-BE27895AB485}']
    { Property Accessors }
    function Get_NumeroProtocolo(Index: Integer): Integer;
    { Methods & Properties }
    function Add(const NumeroProtocolo: Integer): IXMLNode;
    function Insert(const Index: Integer; const NumeroProtocolo: Integer): IXMLNode;
    property NumeroProtocolo[Index: Integer]: Integer read Get_NumeroProtocolo; default;
  end;

{ I212_SolicitacaoProcedimento }

  I212_SolicitacaoProcedimento = interface(IXMLNode)
    ['{280E6478-635C-4979-B78F-9F4FD786753D}']
    { Property Accessors }
    function Get_GuiaSolicInternacao: I212_Ct_guiaSolicInternacaoList;
    function Get_GuiaSolicitacaoSADT: I212_Ct_guiaSolicitacaoSP_SADTList;
    function Get_GuiaSolicitacaoOdontologia: I212_Ct_guiaSolicitacaoOdontoList;
    function Get_GuiaSolicitacaoProrrogacao: I212_Ct_guiaSolicitacaoProrrogacaoList;
    { Methods & Properties }
    property GuiaSolicInternacao: I212_Ct_guiaSolicInternacaoList read Get_GuiaSolicInternacao;
    property GuiaSolicitacaoSADT: I212_Ct_guiaSolicitacaoSP_SADTList read Get_GuiaSolicitacaoSADT;
    property GuiaSolicitacaoOdontologia: I212_Ct_guiaSolicitacaoOdontoList read Get_GuiaSolicitacaoOdontologia;
    property GuiaSolicitacaoProrrogacao: I212_Ct_guiaSolicitacaoProrrogacaoList read Get_GuiaSolicitacaoProrrogacao;
  end;

{ I212_Ct_guiaSolicInternacao }

  I212_Ct_guiaSolicInternacao = interface(IXMLNode)
    ['{1F1873ED-CF3D-47BB-AB02-E3BF38B43F55}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSolicitacaoInternacao: I212_Ct_cabecalhoSolicitacao;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_PrestadorSolicitado: I212_PrestadorSolicitado;
    function Get_CaraterInternacao: WideString;
    function Get_TipoInternacao: Integer;
    function Get_IndicacaoClinica: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_HipotesesDiagnosticas: I212_Ct_hipoteseDiagnostica;
    function Get_ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados;
    function Get_OPMsSolicitadas: I212_Ct_OPMSolicitadas;
    function Get_DiasSolicitados: Integer;
    function Get_DataProvavelAdmisHosp: WideString;
    function Get_Observacao: WideString;
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: Integer);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_DiasSolicitados(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSolicitacaoInternacao: I212_Ct_cabecalhoSolicitacao read Get_IdentificacaoGuiaSolicitacaoInternacao;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I212_Ct_solicitante read Get_DadosSolicitante;
    property PrestadorSolicitado: I212_PrestadorSolicitado read Get_PrestadorSolicitado;
    property CaraterInternacao: WideString read Get_CaraterInternacao write Set_CaraterInternacao;
    property TipoInternacao: Integer read Get_TipoInternacao write Set_TipoInternacao;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property RegimeInternacao: WideString read Get_RegimeInternacao write Set_RegimeInternacao;
    property HipotesesDiagnosticas: I212_Ct_hipoteseDiagnostica read Get_HipotesesDiagnosticas;
    property ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados read Get_ProcedimentosExamesSolicitados;
    property OPMsSolicitadas: I212_Ct_OPMSolicitadas read Get_OPMsSolicitadas;
    property DiasSolicitados: Integer read Get_DiasSolicitados write Set_DiasSolicitados;
    property DataProvavelAdmisHosp: WideString read Get_DataProvavelAdmisHosp write Set_DataProvavelAdmisHosp;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaSolicInternacaoList }

  I212_Ct_guiaSolicInternacaoList = interface(IXMLNodeCollection)
    ['{30B5CDDD-65FA-4AAF-BC46-F34125B171C4}']
    { Methods & Properties }
    function Add: I212_Ct_guiaSolicInternacao;
    function Insert(const Index: Integer): I212_Ct_guiaSolicInternacao;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicInternacao;
    property Items[Index: Integer]: I212_Ct_guiaSolicInternacao read Get_Item; default;
  end;

{ I212_Ct_cabecalhoSolicitacao }

  I212_Ct_cabecalhoSolicitacao = interface(IXMLNode)
    ['{300B97BA-8BDC-48A0-95DE-3C07423117D3}']
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

{ I212_Ct_solicitante }

  I212_Ct_solicitante = interface(IXMLNode)
    ['{E3F16892-AC54-42C1-A690-0C03F1E8BC14}']
    { Property Accessors }
    function Get_Contratado: I212_Ct_contratado;
    function Get_Profissional: I212_Ct_identificacaoProfissional;
    { Methods & Properties }
    property Contratado: I212_Ct_contratado read Get_Contratado;
    property Profissional: I212_Ct_identificacaoProfissional read Get_Profissional;
  end;

{ I212_Ct_identificacaoProfissional }

  I212_Ct_identificacaoProfissional = interface(IXMLNode)
    ['{3C55F0E6-938A-46D7-9F68-BFBD6FE4E0F6}']
    { Property Accessors }
    function Get_NomeProfissional: WideString;
    function Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
    function Get_Cbos: WideString;
    procedure Set_NomeProfissional(Value: WideString);
    procedure Set_Cbos(Value: WideString);
    { Methods & Properties }
    property NomeProfissional: WideString read Get_NomeProfissional write Set_NomeProfissional;
    property ConselhoProfissional: I212_Ct_conselhoProfissional read Get_ConselhoProfissional;
    property Cbos: WideString read Get_Cbos write Set_Cbos;
  end;

{ I212_Ct_conselhoProfissional }

  I212_Ct_conselhoProfissional = interface(IXMLNode)
    ['{A1C7799A-34FF-4A3D-8274-B231B91D0337}']
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

{ I212_PrestadorSolicitado }

  I212_PrestadorSolicitado = interface(I212_Ct_identificacaoPrestador)
    ['{019ED5AD-5E36-4CB0-971E-69F3E21AC59F}']
    { Property Accessors }
    function Get_NomePrestador: WideString;
    procedure Set_NomePrestador(Value: WideString);
    { Methods & Properties }
    property NomePrestador: WideString read Get_NomePrestador write Set_NomePrestador;
  end;

{ I212_Ct_hipoteseDiagnostica }

  I212_Ct_hipoteseDiagnostica = interface(IXMLNode)
    ['{8166C969-3D0C-445F-958D-AB36EDFCD08C}']
    { Property Accessors }
    function Get_CIDPrincipal: I212_Ct_diagnosticoGuia;
    function Get_DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
    { Methods & Properties }
    property CIDPrincipal: I212_Ct_diagnosticoGuia read Get_CIDPrincipal;
    property DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList read Get_DiagnosticosSecundarios;
  end;

{ I212_Ct_diagnosticoGuia }

  I212_Ct_diagnosticoGuia = interface(IXMLNode)
    ['{7B2B6C1D-9E73-47F1-A05D-4D3C20C19BEE}']
    { Property Accessors }
    function Get_CID: I212_Ct_diagnostico;
    function Get_TipoDoenca: WideString;
    function Get_TempoReferidoEvolucaoDoenca: I212_Ct_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: Integer;
    procedure Set_TipoDoenca(Value: WideString);
    procedure Set_IndicadorAcidente(Value: Integer);
    { Methods & Properties }
    property CID: I212_Ct_diagnostico read Get_CID;
    property TipoDoenca: WideString read Get_TipoDoenca write Set_TipoDoenca;
    property TempoReferidoEvolucaoDoenca: I212_Ct_tempoEvolucaoDoenca read Get_TempoReferidoEvolucaoDoenca;
    property IndicadorAcidente: Integer read Get_IndicadorAcidente write Set_IndicadorAcidente;
  end;

{ I212_Ct_diagnostico }

  I212_Ct_diagnostico = interface(IXMLNode)
    ['{14CA99BC-B725-4EB3-AB15-695DB7CE29A7}']
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

{ I212_Ct_tempoEvolucaoDoenca }

  I212_Ct_tempoEvolucaoDoenca = interface(IXMLNode)
    ['{65B3FA5C-A58B-4DC4-AAFF-7756AADD0237}']
    { Property Accessors }
    function Get_Valor: Integer;
    function Get_UnidadeTempo: WideString;
    procedure Set_Valor(Value: Integer);
    procedure Set_UnidadeTempo(Value: WideString);
    { Methods & Properties }
    property Valor: Integer read Get_Valor write Set_Valor;
    property UnidadeTempo: WideString read Get_UnidadeTempo write Set_UnidadeTempo;
  end;

{ I212_Ct_diagnosticosSecundarios }

  I212_Ct_diagnosticosSecundarios = interface(IXMLNodeCollection)
    ['{C534B677-C5A6-4DB2-9E0A-BBC2E6840735}']
    { Property Accessors }
    function Get_CID(Index: Integer): I212_Ct_diagnostico;
    { Methods & Properties }
    function Add: I212_Ct_diagnostico;
    function Insert(const Index: Integer): I212_Ct_diagnostico;
    property CID[Index: Integer]: I212_Ct_diagnostico read Get_CID; default;
  end;

{ I212_Ct_diagnosticosSecundariosList }

  I212_Ct_diagnosticosSecundariosList = interface(IXMLNodeCollection)
    ['{107EE3B3-C445-4309-BA8F-07B30F3CEF8B}']
    { Methods & Properties }
    function Add: I212_Ct_diagnosticosSecundarios;
    function Insert(const Index: Integer): I212_Ct_diagnosticosSecundarios;
    function Get_Item(Index: Integer): I212_Ct_diagnosticosSecundarios;
    property Items[Index: Integer]: I212_Ct_diagnosticosSecundarios read Get_Item; default;
  end;

{ I212_Ct_procedimentosSolicitados }

  I212_Ct_procedimentosSolicitados = interface(IXMLNodeCollection)
    ['{66758033-73F2-477D-BC61-ACEFF645F319}']
    { Property Accessors }
    function Get_ProcedimentoSolicitado(Index: Integer): I212_ProcedimentoSolicitado;
    { Methods & Properties }
    function Add: I212_ProcedimentoSolicitado;
    function Insert(const Index: Integer): I212_ProcedimentoSolicitado;
    property ProcedimentoSolicitado[Index: Integer]: I212_ProcedimentoSolicitado read Get_ProcedimentoSolicitado; default;
  end;

{ I212_ProcedimentoSolicitado }

  I212_ProcedimentoSolicitado = interface(IXMLNode)
    ['{5FFB73E1-A6D6-4ACA-857D-3982844816B6}']
    { Property Accessors }
    function Get_QuantidadeSolicitada: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    { Methods & Properties }
    property QuantidadeSolicitada: WideString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property Procedimento: I212_Ct_tabela read Get_Procedimento;
  end;

{ I212_Ct_OPMSolicitadas }

  I212_Ct_OPMSolicitadas = interface(IXMLNodeCollection)
    ['{9BB48014-A431-445F-AA6B-07685EECC4B9}']
    { Property Accessors }
    function Get_OPMSolicitada(Index: Integer): I212_OPMSolicitada;
    { Methods & Properties }
    function Add: I212_OPMSolicitada;
    function Insert(const Index: Integer): I212_OPMSolicitada;
    property OPMSolicitada[Index: Integer]: I212_OPMSolicitada read Get_OPMSolicitada; default;
  end;

{ I212_OPMSolicitada }

  I212_OPMSolicitada = interface(IXMLNode)
    ['{11E11971-F2E6-4024-9570-09A44EFDEED4}']
    { Property Accessors }
    function Get_QuantidadeSolicitada: WideString;
    function Get_Fabricante: WideString;
    function Get_Valor: WideString;
    function Get_OPM: I212_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_Fabricante(Value: WideString);
    procedure Set_Valor(Value: WideString);
    { Methods & Properties }
    property QuantidadeSolicitada: WideString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property Fabricante: WideString read Get_Fabricante write Set_Fabricante;
    property Valor: WideString read Get_Valor write Set_Valor;
    property OPM: I212_Ct_tabela read Get_OPM;
  end;

{ I212_Ct_guiaSolicitacaoSP_SADT }

  I212_Ct_guiaSolicitacaoSP_SADT = interface(IXMLNode)
    ['{1DA3302D-6A36-4E22-BA88-7F077D3540C7}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSolicitacaoSADTSP: I212_Ct_cabecalhoSolicitacao;
    function Get_NumeroGuiaPrincipal: Integer;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_CaraterSolicitacao: WideString;
    function Get_DataHoraSolicitacao: WideString;
    function Get_Diagnostico: I212_Ct_diagnostico;
    function Get_IndicacaoClinica: WideString;
    function Get_ProcedimentosSolicitados: I212_Ct_procedimentosSolicitados;
    function Get_OpmSolicitada: I212_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: Integer);
    procedure Set_CaraterSolicitacao(Value: WideString);
    procedure Set_DataHoraSolicitacao(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSolicitacaoSADTSP: I212_Ct_cabecalhoSolicitacao read Get_IdentificacaoGuiaSolicitacaoSADTSP;
    property NumeroGuiaPrincipal: Integer read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I212_Ct_solicitante read Get_DadosSolicitante;
    property CaraterSolicitacao: WideString read Get_CaraterSolicitacao write Set_CaraterSolicitacao;
    property DataHoraSolicitacao: WideString read Get_DataHoraSolicitacao write Set_DataHoraSolicitacao;
    property Diagnostico: I212_Ct_diagnostico read Get_Diagnostico;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property ProcedimentosSolicitados: I212_Ct_procedimentosSolicitados read Get_ProcedimentosSolicitados;
    property OpmSolicitada: I212_Ct_OPMSolicitadas read Get_OpmSolicitada;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaSolicitacaoSP_SADTList }

  I212_Ct_guiaSolicitacaoSP_SADTList = interface(IXMLNodeCollection)
    ['{765733D1-9BB2-446D-8D0E-65B2ABB1AB21}']
    { Methods & Properties }
    function Add: I212_Ct_guiaSolicitacaoSP_SADT;
    function Insert(const Index: Integer): I212_Ct_guiaSolicitacaoSP_SADT;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoSP_SADT;
    property Items[Index: Integer]: I212_Ct_guiaSolicitacaoSP_SADT read Get_Item; default;
  end;

{ I212_Ct_guiaSolicitacaoOdonto }

  I212_Ct_guiaSolicitacaoOdonto = interface(IXMLNode)
    ['{2A694468-5D88-4D96-AC63-3374B837D5A7}']
    { Property Accessors }
    function Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I212_DadosBeneficiario;
    function Get_DadosSolicitante: I212_DadosSolicitante;
    function Get_SituacaoInicial: I212_Ct_situacaoInicial;
    function Get_PlanoTratamento: I212_PlanoTratamento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: I212_DadosBeneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I212_DadosSolicitante read Get_DadosSolicitante;
    property SituacaoInicial: I212_Ct_situacaoInicial read Get_SituacaoInicial;
    property PlanoTratamento: I212_PlanoTratamento read Get_PlanoTratamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaSolicitacaoOdontoList }

  I212_Ct_guiaSolicitacaoOdontoList = interface(IXMLNodeCollection)
    ['{F4853157-64AF-4266-9307-52A1DFCC26F7}']
    { Methods & Properties }
    function Add: I212_Ct_guiaSolicitacaoOdonto;
    function Insert(const Index: Integer): I212_Ct_guiaSolicitacaoOdonto;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoOdonto;
    property Items[Index: Integer]: I212_Ct_guiaSolicitacaoOdonto read Get_Item; default;
  end;

{ I212_Ct_cabecalhoGuiaOdonto }

  I212_Ct_cabecalhoGuiaOdonto = interface(IXMLNode)
    ['{A38DFF21-6113-4135-AA42-5A360E5E751F}']
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

{ I212_DadosBeneficiario }

  I212_DadosBeneficiario = interface(I212_Ct_beneficiario)
    ['{5079E30A-882C-4E4E-8D8B-2138528E0C45}']
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

{ I212_DadosSolicitante }

  I212_DadosSolicitante = interface(IXMLNode)
    ['{6DD47C6F-47C3-4285-97E1-963EE4E6DE74}']
    { Property Accessors }
    function Get_DadosContratado: I212_DadosContratado;
    function Get_DadosExecutante: I212_DadosExecutante;
    { Methods & Properties }
    property DadosContratado: I212_DadosContratado read Get_DadosContratado;
    property DadosExecutante: I212_DadosExecutante read Get_DadosExecutante;
  end;

{ I212_DadosContratado }

  I212_DadosContratado = interface(I212_Ct_contratado)
    ['{A33D846D-038A-421C-A68B-06664035A28E}']
    { Property Accessors }
    function Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
    { Methods & Properties }
    property ConselhoProfissional: I212_Ct_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ I212_Ct_profissionalExecutante }

  I212_Ct_profissionalExecutante = interface(IXMLNode)
    ['{0B5E9442-7E21-4241-8DB8-45F443FDD258}']
    { Property Accessors }
    function Get_NomeExecutante: WideString;
    function Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
    function Get_CodigoCBOS: WideString;
    procedure Set_NomeExecutante(Value: WideString);
    procedure Set_CodigoCBOS(Value: WideString);
    { Methods & Properties }
    property NomeExecutante: WideString read Get_NomeExecutante write Set_NomeExecutante;
    property ConselhoProfissional: I212_Ct_conselhoProfissional read Get_ConselhoProfissional;
    property CodigoCBOS: WideString read Get_CodigoCBOS write Set_CodigoCBOS;
  end;

{ I212_Ct_situacaoInicial }

  I212_Ct_situacaoInicial = interface(IXMLNode)
    ['{70C0E79E-25C9-4EEB-BA50-311FAA9E3CF5}']
    { Property Accessors }
    function Get_SituacaoClinica: I212_Ct_situacaoClinica;
    function Get_DoencaPeriodontal: Boolean;
    function Get_AlteracaoTecidoMole: Boolean;
    function Get_Observacao: WideString;
    procedure Set_DoencaPeriodontal(Value: Boolean);
    procedure Set_AlteracaoTecidoMole(Value: Boolean);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property SituacaoClinica: I212_Ct_situacaoClinica read Get_SituacaoClinica;
    property DoencaPeriodontal: Boolean read Get_DoencaPeriodontal write Set_DoencaPeriodontal;
    property AlteracaoTecidoMole: Boolean read Get_AlteracaoTecidoMole write Set_AlteracaoTecidoMole;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_situacaoClinica }

  I212_Ct_situacaoClinica = interface(IXMLNodeCollection)
    ['{6B6852FF-3DC1-4658-88D0-E526DA5EAEF1}']
    { Property Accessors }
    function Get_Dentes(Index: Integer): I212_Dentes;
    { Methods & Properties }
    function Add: I212_Dentes;
    function Insert(const Index: Integer): I212_Dentes;
    property Dentes[Index: Integer]: I212_Dentes read Get_Dentes; default;
  end;

{ I212_Dentes }

  I212_Dentes = interface(IXMLNode)
    ['{7F2FDCFA-A5D3-48AF-BBFD-44D97174D4BC}']
    { Property Accessors }
    function Get_ElementoDentario: Integer;
    function Get_CondicaoClinica: WideString;
    procedure Set_ElementoDentario(Value: Integer);
    procedure Set_CondicaoClinica(Value: WideString);
    { Methods & Properties }
    property ElementoDentario: Integer read Get_ElementoDentario write Set_ElementoDentario;
    property CondicaoClinica: WideString read Get_CondicaoClinica write Set_CondicaoClinica;
  end;

{ I212_PlanoTratamento }

  I212_PlanoTratamento = interface(IXMLNodeCollection)
    ['{2B1A5B28-6688-45DB-8581-94EA910C9AE8}']
    { Property Accessors }
    function Get_ProcedimentoSolicitado(Index: Integer): I212_Ct_procedimentoOdontologia;
    { Methods & Properties }
    function Add: I212_Ct_procedimentoOdontologia;
    function Insert(const Index: Integer): I212_Ct_procedimentoOdontologia;
    property ProcedimentoSolicitado[Index: Integer]: I212_Ct_procedimentoOdontologia read Get_ProcedimentoSolicitado; default;
  end;

{ I212_Ct_procedimentoOdontologia }

  I212_Ct_procedimentoOdontologia = interface(IXMLNode)
    ['{E37329E0-F1E1-4DBC-A8CE-3C5CA40B3670}']
    { Property Accessors }
    function Get_ProcedimentoOdonto: I212_Ct_tabela;
    function Get_DenteRegiao: I212_Ct_denteRegiao;
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
    property ProcedimentoOdonto: I212_Ct_tabela read Get_ProcedimentoOdonto;
    property DenteRegiao: I212_Ct_denteRegiao read Get_DenteRegiao;
    property Face: WideString read Get_Face write Set_Face;
    property Quantidade: Integer read Get_Quantidade write Set_Quantidade;
    property QuantidadeUS: WideString read Get_QuantidadeUS write Set_QuantidadeUS;
    property Valor: WideString read Get_Valor write Set_Valor;
    property FranquiaCoparticipacao: WideString read Get_FranquiaCoparticipacao write Set_FranquiaCoparticipacao;
  end;

{ I212_Ct_guiaSolicitacaoProrrogacao }

  I212_Ct_guiaSolicitacaoProrrogacao = interface(IXMLNode)
    ['{7D27F5CD-757E-4722-A3F9-635EAFBD3D69}']
    { Property Accessors }
    function Get_IdentificacaoProrrogacao: I212_Ct_cabecalhoGuia;
    function Get_IdentificacaoGuiaReferencia: I212_Ct_cabecalhoGuia;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_IndicacaoClinica: WideString;
    function Get_ResponsavelAutorizacao: WideString;
    function Get_ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados;
    function Get_Diarias: I212_Ct_diariaProrrogacao;
    function Get_OPMsSolicitadas: I212_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_ResponsavelAutorizacao(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoProrrogacao: I212_Ct_cabecalhoGuia read Get_IdentificacaoProrrogacao;
    property IdentificacaoGuiaReferencia: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuiaReferencia;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I212_Ct_solicitante read Get_DadosSolicitante;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property ResponsavelAutorizacao: WideString read Get_ResponsavelAutorizacao write Set_ResponsavelAutorizacao;
    property ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados read Get_ProcedimentosExamesSolicitados;
    property Diarias: I212_Ct_diariaProrrogacao read Get_Diarias;
    property OPMsSolicitadas: I212_Ct_OPMSolicitadas read Get_OPMsSolicitadas;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaSolicitacaoProrrogacaoList }

  I212_Ct_guiaSolicitacaoProrrogacaoList = interface(IXMLNodeCollection)
    ['{19511F06-612B-44EC-99B5-8AFAF69F925F}']
    { Methods & Properties }
    function Add: I212_Ct_guiaSolicitacaoProrrogacao;
    function Insert(const Index: Integer): I212_Ct_guiaSolicitacaoProrrogacao;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoProrrogacao;
    property Items[Index: Integer]: I212_Ct_guiaSolicitacaoProrrogacao read Get_Item; default;
  end;

{ I212_Ct_solicitaStatusAutorizacao }

  I212_Ct_solicitaStatusAutorizacao = interface(IXMLNode)
    ['{A047F275-554E-439A-B4F7-557CF278E76A}']
    { Property Accessors }
    function Get_IdentificacaoAutorizacao: I212_IdentificacaoAutorizacao;
    function Get_DataSolicitaStatus: WideString;
    procedure Set_DataSolicitaStatus(Value: WideString);
    { Methods & Properties }
    property IdentificacaoAutorizacao: I212_IdentificacaoAutorizacao read Get_IdentificacaoAutorizacao;
    property DataSolicitaStatus: WideString read Get_DataSolicitaStatus write Set_DataSolicitaStatus;
  end;

{ I212_IdentificacaoAutorizacao }

  I212_IdentificacaoAutorizacao = interface(IXMLNodeCollection)
    ['{B40A0ACE-77F5-4BBA-BA6B-A70415403745}']
    { Property Accessors }
    function Get_IdentificacaoSolicitacao(Index: Integer): I212_Ct_cabecalhoSolicitacao;
    { Methods & Properties }
    function Add: I212_Ct_cabecalhoSolicitacao;
    function Insert(const Index: Integer): I212_Ct_cabecalhoSolicitacao;
    property IdentificacaoSolicitacao[Index: Integer]: I212_Ct_cabecalhoSolicitacao read Get_IdentificacaoSolicitacao; default;
  end;

{ I212_Ct_solicitaElegibilidade }

  I212_Ct_solicitaElegibilidade = interface(IXMLNode)
    ['{DA36188E-EBF3-4976-9BEA-CF94938F7824}']
    { Property Accessors }
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    { Methods & Properties }
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
  end;

{ I212_Ct_cancelaGuia }

  I212_Ct_cancelaGuia = interface(IXMLNode)
    ['{C18E71AD-2DBA-45D8-99FA-8063F5DA7BEB}']
    { Property Accessors }
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_Guia: I212_GuiaCabecalho;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property DadosPrestador: I212_Ct_contratado read Get_DadosPrestador;
    property Guia: I212_GuiaCabecalho read Get_Guia;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_GuiaCabecalho }

  I212_GuiaCabecalho = interface(IXMLNodeCollection)
    ['{1DAF4B16-AD76-4A65-97B2-871B7270D03D}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): I212_Ct_cabecalhoGuia;
    { Methods & Properties }
    function Add: I212_Ct_cabecalhoGuia;
    function Insert(const Index: Integer): I212_Ct_cabecalhoGuia;
    property DadosGuia[Index: Integer]: I212_Ct_cabecalhoGuia read Get_DadosGuia; default;
  end;

{ I212_Epilogo }

  I212_Epilogo = interface(IXMLNode)
    ['{7D36A4FA-650F-40D3-A3CC-EF576F7F4A5B}']
    { Property Accessors }
    function Get_Hash: WideString;
    procedure Set_Hash(Value: WideString);
    { Methods & Properties }
    property Hash: WideString read Get_Hash write Set_Hash;
  end;

{ I212_Ct_atendimentoConsulta }

  I212_Ct_atendimentoConsulta = interface(IXMLNode)
    ['{19929051-0CC3-47D8-9144-D495B834701B}']
    { Property Accessors }
    function Get_DataAtendimento: WideString;
    function Get_Procedimento: I212_Procedimento;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: Integer;
    procedure Set_DataAtendimento(Value: WideString);
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: Integer);
    { Methods & Properties }
    property DataAtendimento: WideString read Get_DataAtendimento write Set_DataAtendimento;
    property Procedimento: I212_Procedimento read Get_Procedimento;
    property TipoConsulta: WideString read Get_TipoConsulta write Set_TipoConsulta;
    property TipoSaida: Integer read Get_TipoSaida write Set_TipoSaida;
  end;

{ I212_Ct_atendimentoConsultaReapr }

  I212_Ct_atendimentoConsultaReapr = interface(IXMLNode)
    ['{C6EEA558-AB98-45AF-B824-EAD5E074C04C}']
    { Property Accessors }
    function Get_DataAtendimento: WideString;
    function Get_Procedimento: I212_Procedimento;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: Integer;
    procedure Set_DataAtendimento(Value: WideString);
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: Integer);
    { Methods & Properties }
    property DataAtendimento: WideString read Get_DataAtendimento write Set_DataAtendimento;
    property Procedimento: I212_Procedimento read Get_Procedimento;
    property TipoConsulta: WideString read Get_TipoConsulta write Set_TipoConsulta;
    property TipoSaida: Integer read Get_TipoSaida write Set_TipoSaida;
  end;

{ I212_Procedimento }

  I212_Procedimento = interface(IXMLNode)
    ['{2C65BF88-57B0-47FE-B0E3-BB5952DC4BDD}']
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

{ I212_Ct_atendimentoOdontologia }

  I212_Ct_atendimentoOdontologia = interface(IXMLNode)
    ['{F70CFCF4-3481-4074-A9D4-0C7219448666}']
    { Property Accessors }
    function Get_DataTerminoTratamento: WideString;
    function Get_TipoAtendimento: WideString;
    procedure Set_DataTerminoTratamento(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
    { Methods & Properties }
    property DataTerminoTratamento: WideString read Get_DataTerminoTratamento write Set_DataTerminoTratamento;
    property TipoAtendimento: WideString read Get_TipoAtendimento write Set_TipoAtendimento;
  end;

{ I212_Ct_autorizacaoGuia }

  I212_Ct_autorizacaoGuia = interface(IXMLNode)
    ['{6822803C-B1CF-4A90-A554-4A65EF393D78}']
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

{ I212_Ct_autorizacaoGuiaInternacao }

  I212_Ct_autorizacaoGuiaInternacao = interface(I212_Ct_autorizacaoGuia)
    ['{4F3129CB-D809-4AC6-B8EA-0150FBDBB3D8}']
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

{ I212_AutorizacaoServico }

  I212_AutorizacaoServico = interface(I212_Ct_autorizacaoProcedimento)
    ['{A9B2BBB8-C50A-4F51-A218-B5297688D624}']
    { Property Accessors }
    function Get_TotalOdonto: I212_TotalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada;
    { Methods & Properties }
    property TotalOdonto: I212_TotalOdonto read Get_TotalOdonto;
    property Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada read Get_Ct_diariaProrrogacaoAutorizada;
  end;

{ I212_AutorizacaoServicoList }

  I212_AutorizacaoServicoList = interface(IXMLNodeCollection)
    ['{378EAA18-1512-4E86-8E42-D851FBA02F39}']
    { Methods & Properties }
    function Add: I212_AutorizacaoServico;
    function Insert(const Index: Integer): I212_AutorizacaoServico;
    function Get_Item(Index: Integer): I212_AutorizacaoServico;
    property Items[Index: Integer]: I212_AutorizacaoServico read Get_Item; default;
  end;

{ I212_ProcedimentosGuia }

  I212_ProcedimentosGuia = interface(IXMLNodeCollection)
    ['{AC05579C-66B4-4142-B4A2-B433F89C1AD2}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): I212_Ct_itemSolicitacao;
    { Methods & Properties }
    function Add: I212_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I212_Ct_itemSolicitacao;
    property Procedimento[Index: Integer]: I212_Ct_itemSolicitacao read Get_Procedimento; default;
  end;

{ I212_Ct_diagnosticoSaidaInternacao }

  I212_Ct_diagnosticoSaidaInternacao = interface(IXMLNode)
    ['{666761E0-2BF3-4561-9E2B-BA1025E7C055}']
    { Property Accessors }
    function Get_DiagnosticoPrincipal: I212_Ct_diagnostico;
    function Get_IndicadorAcidente: Integer;
    function Get_DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
    function Get_MotivoSaidaInternacao: WideString;
    function Get_Obito: I212_Ct_obitoInternacao;
    procedure Set_IndicadorAcidente(Value: Integer);
    procedure Set_MotivoSaidaInternacao(Value: WideString);
    { Methods & Properties }
    property DiagnosticoPrincipal: I212_Ct_diagnostico read Get_DiagnosticoPrincipal;
    property IndicadorAcidente: Integer read Get_IndicadorAcidente write Set_IndicadorAcidente;
    property DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList read Get_DiagnosticosSecundarios;
    property MotivoSaidaInternacao: WideString read Get_MotivoSaidaInternacao write Set_MotivoSaidaInternacao;
    property Obito: I212_Ct_obitoInternacao read Get_Obito;
  end;

{ I212_Ct_obitoInternacao }

  I212_Ct_obitoInternacao = interface(IXMLNode)
    ['{80BE0EC4-6B1B-4289-9230-09A16CB7E209}']
    { Property Accessors }
    function Get_CID: I212_Ct_diagnostico;
    function Get_NumeroDeclaracao: WideString;
    procedure Set_NumeroDeclaracao(Value: WideString);
    { Methods & Properties }
    property CID: I212_Ct_diagnostico read Get_CID;
    property NumeroDeclaracao: WideString read Get_NumeroDeclaracao write Set_NumeroDeclaracao;
  end;

{ I212_Ct_executanteComplementar }

  I212_Ct_executanteComplementar = interface(IXMLNode)
    ['{5F1C8689-2FBB-4ACE-B5EC-A23301C9B805}']
    { Property Accessors }
    function Get_CodigoProfissionalCompl: I212_Ct_identificacaoPrestador;
    function Get_NomeProfissionalCompl: WideString;
    procedure Set_NomeProfissionalCompl(Value: WideString);
    { Methods & Properties }
    property CodigoProfissionalCompl: I212_Ct_identificacaoPrestador read Get_CodigoProfissionalCompl;
    property NomeProfissionalCompl: WideString read Get_NomeProfissionalCompl write Set_NomeProfissionalCompl;
  end;

{ I212_Ct_identificacaoEquipe }

  I212_Ct_identificacaoEquipe = interface(IXMLNodeCollection)
    ['{44E4F277-C03B-4D44-A4E9-2B3F5D2F740A}']
    { Property Accessors }
    function Get_MembroEquipe(Index: Integer): I212_MembroEquipe;
    { Methods & Properties }
    function Add: I212_MembroEquipe;
    function Insert(const Index: Integer): I212_MembroEquipe;
    property MembroEquipe[Index: Integer]: I212_MembroEquipe read Get_MembroEquipe; default;
  end;

{ I212_MembroEquipe }

  I212_MembroEquipe = interface(IXMLNode)
    ['{8E866EEC-7E35-4F37-A409-9772F7C55529}']
    { Property Accessors }
    function Get_CodigoProfissional: I212_Ct_identificacaoPrestador;
    function Get_IdentificacaoProfissional: I212_Ct_profissionalExecutante;
    function Get_Cpf: WideString;
    function Get_PosicaoProfissional: Integer;
    procedure Set_Cpf(Value: WideString);
    procedure Set_PosicaoProfissional(Value: Integer);
    { Methods & Properties }
    property CodigoProfissional: I212_Ct_identificacaoPrestador read Get_CodigoProfissional;
    property IdentificacaoProfissional: I212_Ct_profissionalExecutante read Get_IdentificacaoProfissional;
    property Cpf: WideString read Get_Cpf write Set_Cpf;
    property PosicaoProfissional: Integer read Get_PosicaoProfissional write Set_PosicaoProfissional;
  end;

{ I212_DadosExecutante }

  I212_DadosExecutante = interface(I212_Ct_profissionalExecutante)
    ['{7BD81FF0-6713-4127-94DA-C12A52B719B6}']
  end;

{ I212_Ct_internacaoObstetrica }

  I212_Ct_internacaoObstetrica = interface(IXMLNode)
    ['{01CF5A28-4907-4DB6-95AD-1874D8634965}']
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
    function Get_DeclaracoesNascidosVivos: I212_Ct_numeroDN;
    function Get_QtdNascidosVivosTermo: Integer;
    function Get_QtdNascidosMortos: Integer;
    function Get_QtdVivosPrematuros: Integer;
    function Get_ObitoMulher: Integer;
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
    procedure Set_ObitoMulher(Value: Integer);
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
    property DeclaracoesNascidosVivos: I212_Ct_numeroDN read Get_DeclaracoesNascidosVivos;
    property QtdNascidosVivosTermo: Integer read Get_QtdNascidosVivosTermo write Set_QtdNascidosVivosTermo;
    property QtdNascidosMortos: Integer read Get_QtdNascidosMortos write Set_QtdNascidosMortos;
    property QtdVivosPrematuros: Integer read Get_QtdVivosPrematuros write Set_QtdVivosPrematuros;
    property ObitoMulher: Integer read Get_ObitoMulher write Set_ObitoMulher;
  end;

{ I212_Ct_numeroDN }

  I212_Ct_numeroDN = interface(IXMLNode)
    ['{EA8373D3-05DF-4F3B-A60C-4B6DED1DD274}']
    { Property Accessors }
    function Get_NumeroDN: WideString;
    procedure Set_NumeroDN(Value: WideString);
    { Methods & Properties }
    property NumeroDN: WideString read Get_NumeroDN write Set_NumeroDN;
  end;

{ I212_Ct_obitoNeonatal }

  I212_Ct_obitoNeonatal = interface(IXMLNode)
    ['{4993F86B-AF15-41C1-93F7-3124B970531E}']
    { Property Accessors }
    function Get_QtdeobitoPrecoce: Integer;
    function Get_QtdeobitoTardio: Integer;
    procedure Set_QtdeobitoPrecoce(Value: Integer);
    procedure Set_QtdeobitoTardio(Value: Integer);
    { Methods & Properties }
    property QtdeobitoPrecoce: Integer read Get_QtdeobitoPrecoce write Set_QtdeobitoPrecoce;
    property QtdeobitoTardio: Integer read Get_QtdeobitoTardio write Set_QtdeobitoTardio;
  end;

{ I212_Ct_OPMUtilizada }

  I212_Ct_OPMUtilizada = interface(IXMLNode)
    ['{32EE3BCA-24A9-45CA-B816-A510BD4AFB9F}']
    { Property Accessors }
    function Get_OPM: I212_OPMIdentificacao;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
    { Methods & Properties }
    property OPM: I212_OPMIdentificacao read Get_OPM;
    property ValorTotalOPM: WideString read Get_ValorTotalOPM write Set_ValorTotalOPM;
  end;

{ I212_OPMIdentificacao }

  I212_OPMIdentificacao = interface(IXMLNodeCollection)
    ['{F604E228-2E84-4A0F-A371-25F76B0024B3}']
    { Property Accessors }
    function Get_IdentificacaoOPM(Index: Integer): I212_IdentificacaoOPM;
    { Methods & Properties }
    function Add: I212_IdentificacaoOPM;
    function Insert(const Index: Integer): I212_IdentificacaoOPM;
    property IdentificacaoOPM[Index: Integer]: I212_IdentificacaoOPM read Get_IdentificacaoOPM; default;
  end;

{ I212_IdentificacaoOPM }

  I212_IdentificacaoOPM = interface(IXMLNode)
    ['{C2B2EDB7-0A86-4099-A0E3-9590773821F5}']
    { Property Accessors }
    function Get_OPM: I212_Ct_tabela;
    function Get_Quantidade: WideString;
    function Get_CodigoBarra: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Quantidade(Value: WideString);
    procedure Set_CodigoBarra(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property OPM: I212_Ct_tabela read Get_OPM;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property CodigoBarra: WideString read Get_CodigoBarra write Set_CodigoBarra;
    property ValorUnitario: WideString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I212_Ct_OPMUtilizadasRevisao }

  I212_Ct_OPMUtilizadasRevisao = interface(IXMLNode)
    ['{E32A39CB-7FBE-4C3D-BD07-80C27A2B1FC9}']
    { Property Accessors }
    function Get_OPMUtilizada: I212_OPMUtilizada;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
    { Methods & Properties }
    property OPMUtilizada: I212_OPMUtilizada read Get_OPMUtilizada;
    property ValorTotalOPM: WideString read Get_ValorTotalOPM write Set_ValorTotalOPM;
  end;

{ I212_OPMUtilizada }

  I212_OPMUtilizada = interface(IXMLNodeCollection)
    ['{2C5375EA-E241-4CA3-9692-66E5197B34BE}']
    { Property Accessors }
    function Get_OPM(Index: Integer): I212_OPM;
    { Methods & Properties }
    function Add: I212_OPM;
    function Insert(const Index: Integer): I212_OPM;
    property OPM[Index: Integer]: I212_OPM read Get_OPM; default;
  end;

{ I212_OPM }

  I212_OPM = interface(IXMLNode)
    ['{8A0CB639-4C3B-4AAD-8975-7827932F5DA0}']
    { Property Accessors }
    function Get_OPM: I212_Ct_tabela;
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
    property OPM: I212_Ct_tabela read Get_OPM;
    property ValorUnitario: WideString read Get_ValorUnitario write Set_ValorUnitario;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property CodigoBarra: WideString read Get_CodigoBarra write Set_CodigoBarra;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property Justificativa: WideString read Get_Justificativa write Set_Justificativa;
  end;

{ I212_Ct_outrasDespesas }

  I212_Ct_outrasDespesas = interface(IXMLNode)
    ['{3CE58D83-9FC7-423E-8B31-347411F62BC6}']
    { Property Accessors }
    function Get_Despesa: I212_DespesaList;
    function Get_TotalGeralOutrasDespesas: WideString;
    procedure Set_TotalGeralOutrasDespesas(Value: WideString);
    { Methods & Properties }
    property Despesa: I212_DespesaList read Get_Despesa;
    property TotalGeralOutrasDespesas: WideString read Get_TotalGeralOutrasDespesas write Set_TotalGeralOutrasDespesas;
  end;

{ I212_Despesa }

  I212_Despesa = interface(IXMLNode)
    ['{483DA05E-15CE-419F-B63D-4F9CFBBCDED1}']
    { Property Accessors }
    function Get_IdentificadorDespesa: I212_Ct_tabela;
    function Get_TipoDespesa: Integer;
    function Get_DataRealizacao: WideString;
    function Get_HoraInicial: WideString;
    function Get_HoraFinal: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_TipoDespesa(Value: Integer);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_HoraInicial(Value: WideString);
    procedure Set_HoraFinal(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_ValorUnitario(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property IdentificadorDespesa: I212_Ct_tabela read Get_IdentificadorDespesa;
    property TipoDespesa: Integer read Get_TipoDespesa write Set_TipoDespesa;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property HoraInicial: WideString read Get_HoraInicial write Set_HoraInicial;
    property HoraFinal: WideString read Get_HoraFinal write Set_HoraFinal;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property ValorUnitario: WideString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I212_DespesaList }

  I212_DespesaList = interface(IXMLNodeCollection)
    ['{B02FC80A-B4DB-486E-8683-C4A6E343D2BC}']
    { Methods & Properties }
    function Add: I212_Despesa;
    function Insert(const Index: Integer): I212_Despesa;
    function Get_Item(Index: Integer): I212_Despesa;
    property Items[Index: Integer]: I212_Despesa read Get_Item; default;
  end;

{ I212_Ct_outrasDespesasRevisao }

  I212_Ct_outrasDespesasRevisao = interface(IXMLNode)
    ['{9E43D54D-92AC-44EB-B104-AF743C5CEE26}']
    { Property Accessors }
    function Get_ItensDespesas: I212_ItensDespesasList;
    function Get_TotalGeralOutrasDespesas: Double;
    procedure Set_TotalGeralOutrasDespesas(Value: Double);
    { Methods & Properties }
    property ItensDespesas: I212_ItensDespesasList read Get_ItensDespesas;
    property TotalGeralOutrasDespesas: Double read Get_TotalGeralOutrasDespesas write Set_TotalGeralOutrasDespesas;
  end;

{ I212_ItensDespesas }

  I212_ItensDespesas = interface(IXMLNode)
    ['{7EC5827E-F17D-4432-BFD2-36A8A83B5B48}']
    { Property Accessors }
    function Get_TipoDespesa: Integer;
    function Get_DataRealizacao: WideString;
    function Get_Despesa: I212_Ct_tabela;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: Double;
    function Get_ValorTotal: Double;
    function Get_Justificativa: WideString;
    procedure Set_TipoDespesa(Value: Integer);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_ValorUnitario(Value: Double);
    procedure Set_ValorTotal(Value: Double);
    procedure Set_Justificativa(Value: WideString);
    { Methods & Properties }
    property TipoDespesa: Integer read Get_TipoDespesa write Set_TipoDespesa;
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
    property Despesa: I212_Ct_tabela read Get_Despesa;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Quantidade: WideString read Get_Quantidade write Set_Quantidade;
    property ValorUnitario: Double read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: Double read Get_ValorTotal write Set_ValorTotal;
    property Justificativa: WideString read Get_Justificativa write Set_Justificativa;
  end;

{ I212_ItensDespesasList }

  I212_ItensDespesasList = interface(IXMLNodeCollection)
    ['{63C627C6-A8D5-417C-B00A-FF39922EA455}']
    { Methods & Properties }
    function Add: I212_ItensDespesas;
    function Insert(const Index: Integer): I212_ItensDespesas;
    function Get_Item(Index: Integer): I212_ItensDespesas;
    property Items[Index: Integer]: I212_ItensDespesas read Get_Item; default;
  end;

{ I212_Ct_procedimentosRealizados }

  I212_Ct_procedimentosRealizados = interface(IXMLNodeCollection)
    ['{36C00343-588B-4004-8679-4933A6A7211B}']
    { Property Accessors }
    function Get_ProcedimentoRealizado(Index: Integer): I212_ProcedimentoRealizado;
    { Methods & Properties }
    function Add: I212_ProcedimentoRealizado;
    function Insert(const Index: Integer): I212_ProcedimentoRealizado;
    property ProcedimentoRealizado[Index: Integer]: I212_ProcedimentoRealizado read Get_ProcedimentoRealizado; default;
  end;

{ I212_ProcedimentoRealizado }

  I212_ProcedimentoRealizado = interface(IXMLNode)
    ['{A5A286B4-57D6-4D4A-ABE3-DC66806EF6C3}']
    { Property Accessors }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_QuantidadeRealizada: WideString;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: WideString);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property Data: WideString read Get_Data write Set_Data;
    property HoraInicio: WideString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: WideString read Get_HoraFim write Set_HoraFim;
    property Procedimento: I212_Ct_tabela read Get_Procedimento;
    property QuantidadeRealizada: WideString read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: WideString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: WideString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: WideString read Get_Valor write Set_Valor;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I212_Ct_procedimentoOdontoRevisao }

  I212_Ct_procedimentoOdontoRevisao = interface(IXMLNode)
    ['{43A04134-18D5-43FC-BC0E-2579C3CE7309}']
    { Property Accessors }
    function Get_ProcedimentoOdontologia: I212_ProcedimentoOdontologia;
    function Get_ValorTotal: WideString;
    function Get_QuantidadeTotalUS: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    function Get_JustificativaRevisao: WideString;
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_QuantidadeTotalUS(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    procedure Set_JustificativaRevisao(Value: WideString);
    { Methods & Properties }
    property ProcedimentoOdontologia: I212_ProcedimentoOdontologia read Get_ProcedimentoOdontologia;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property QuantidadeTotalUS: WideString read Get_QuantidadeTotalUS write Set_QuantidadeTotalUS;
    property TotalFranquiaCoparticipacao: WideString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
    property JustificativaRevisao: WideString read Get_JustificativaRevisao write Set_JustificativaRevisao;
  end;

{ I212_ProcedimentoOdontologia }

  I212_ProcedimentoOdontologia = interface(I212_Ct_procedimentoOdontologia)
    ['{14087AB8-1CAE-4E38-8CBC-E35962C81541}']
    { Property Accessors }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
    { Methods & Properties }
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
  end;

{ I212_Ct_procedimentoRealizadoEquipe }

  I212_Ct_procedimentoRealizadoEquipe = interface(IXMLNodeCollection)
    ['{2CB09FE2-A1D0-4B29-A48E-8CC3A193CE55}']
    { Property Accessors }
    function Get_Procedimentos(Index: Integer): I212_ProcedimentosEquipe;
    { Methods & Properties }
    function Add: I212_ProcedimentosEquipe;
    function Insert(const Index: Integer): I212_ProcedimentosEquipe;
    property Procedimentos[Index: Integer]: I212_ProcedimentosEquipe read Get_Procedimentos; default;
  end;

{ I212_ProcedimentosEquipe }

  I212_ProcedimentosEquipe = interface(IXMLNode)
    ['{5DC28874-E48E-40D8-A5A6-358BE8B729CE}']
    { Property Accessors }
    function Get_Equipe: I212_Ct_identificacaoEquipe;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_QuantidadeRealizada: WideString;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: WideString);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    { Methods & Properties }
    property Equipe: I212_Ct_identificacaoEquipe read Get_Equipe;
    property Procedimento: I212_Ct_tabela read Get_Procedimento;
    property Data: WideString read Get_Data write Set_Data;
    property HoraInicio: WideString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: WideString read Get_HoraFim write Set_HoraFim;
    property QuantidadeRealizada: WideString read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: WideString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: WideString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: WideString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: WideString read Get_Valor write Set_Valor;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
  end;

{ I212_Ct_procedimentoRevisao }

  I212_Ct_procedimentoRevisao = interface(IXMLNodeCollection)
    ['{A53719D9-8CE4-436B-9C17-22E1276BA146}']
    { Property Accessors }
    function Get_ProcedimentosRevisao(Index: Integer): I212_ProcedimentosRevisao;
    { Methods & Properties }
    function Add: I212_ProcedimentosRevisao;
    function Insert(const Index: Integer): I212_ProcedimentosRevisao;
    property ProcedimentosRevisao[Index: Integer]: I212_ProcedimentosRevisao read Get_ProcedimentosRevisao; default;
  end;

{ I212_Ct_procedimentoRevisaoList }

  I212_Ct_procedimentoRevisaoList = interface(IXMLNodeCollection)
    ['{F016B6C0-9761-40E1-A02E-0976F7EFA04B}']
    { Methods & Properties }
    function Add: I212_Ct_procedimentoRevisao;
    function Insert(const Index: Integer): I212_Ct_procedimentoRevisao;
    function Get_Item(Index: Integer): I212_Ct_procedimentoRevisao;
    property Items[Index: Integer]: I212_Ct_procedimentoRevisao read Get_Item; default;
  end;

{ I212_ProcedimentosRevisao }

  I212_ProcedimentosRevisao = interface(IXMLNode)
    ['{5598A31D-C633-4C39-8803-1348011BF224}']
    { Property Accessors }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_QuantidadeRealizada: WideString;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: Double;
    function Get_Valor: Double;
    function Get_ValorTotal: Double;
    function Get_JustificativaRevisao: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: WideString);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: Double);
    procedure Set_Valor(Value: Double);
    procedure Set_ValorTotal(Value: Double);
    procedure Set_JustificativaRevisao(Value: WideString);
    { Methods & Properties }
    property Data: WideString read Get_Data write Set_Data;
    property HoraInicio: WideString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: WideString read Get_HoraFim write Set_HoraFim;
    property Procedimento: I212_Ct_tabela read Get_Procedimento;
    property QuantidadeRealizada: WideString read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: WideString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: WideString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: Double read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: Double read Get_Valor write Set_Valor;
    property ValorTotal: Double read Get_ValorTotal write Set_ValorTotal;
    property JustificativaRevisao: WideString read Get_JustificativaRevisao write Set_JustificativaRevisao;
  end;

{ I212_Ct_situacaoDentes }

  I212_Ct_situacaoDentes = interface(IXMLNode)
    ['{5A741DBE-2418-4B06-A078-FCB61C080EF9}']
    { Property Accessors }
    function Get_Dente: Integer;
    function Get_Obturado: Boolean;
    function Get_Careado: Boolean;
    function Get_Perdido: Boolean;
    procedure Set_Dente(Value: Integer);
    procedure Set_Obturado(Value: Boolean);
    procedure Set_Careado(Value: Boolean);
    procedure Set_Perdido(Value: Boolean);
    { Methods & Properties }
    property Dente: Integer read Get_Dente write Set_Dente;
    property Obturado: Boolean read Get_Obturado write Set_Obturado;
    property Careado: Boolean read Get_Careado write Set_Careado;
    property Perdido: Boolean read Get_Perdido write Set_Perdido;
  end;

{ I212_Ct_totaisOdonto }

  I212_Ct_totaisOdonto = interface(IXMLNode)
    ['{0D8DB406-0414-4303-AE50-D45BDC896E17}']
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

{ I212_Ct_tratamenteOdontoRealizado }

  I212_Ct_tratamenteOdontoRealizado = interface(IXMLNode)
    ['{B26F2A68-D3D5-45B1-B012-DB7EEEC66865}']
    { Property Accessors }
    function Get_Data: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_Dente: Integer;
    function Get_Face: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_Dente(Value: Integer);
    procedure Set_Face(Value: WideString);
    { Methods & Properties }
    property Data: WideString read Get_Data write Set_Data;
    property Procedimento: I212_Ct_tabela read Get_Procedimento;
    property Dente: Integer read Get_Dente write Set_Dente;
    property Face: WideString read Get_Face write Set_Face;
  end;

{ I212_Ct_tratamentoOdontoSolicitado }

  I212_Ct_tratamentoOdontoSolicitado = interface(IXMLNode)
    ['{E03BD2E5-DD80-4FB2-B449-F36F95D50229}']
    { Property Accessors }
    function Get_Procedimento: I212_Ct_tabela;
    function Get_Dente: Integer;
    function Get_Face: WideString;
    procedure Set_Dente(Value: Integer);
    procedure Set_Face(Value: WideString);
    { Methods & Properties }
    property Procedimento: I212_Ct_tabela read Get_Procedimento;
    property Dente: Integer read Get_Dente write Set_Dente;
    property Face: WideString read Get_Face write Set_Face;
  end;

{ I212_Ct_valorTotalServicos }

  I212_Ct_valorTotalServicos = interface(IXMLNode)
    ['{C2972F5F-69D1-4053-8931-55D102C16AB2}']
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

{ I212_Guias }

  I212_Guias = interface(I212_Ct_guias)
    ['{BFEBF32A-4996-4A1A-96B5-07009308EEBE}']
  end;

{ I212_GuiaFaturamento }

  I212_GuiaFaturamento = interface(IXMLNode)
    ['{86BE46EB-64EA-446D-B5CE-C7D21BF6F8AB}']
    { Property Accessors }
    function Get_GuiaConsulta: I212_Ct_guiaConsultaList;
    function Get_GuiaSP_SADT: I212_Ct_guiaSP_SADTList;
    function Get_GuiaResumoInternacao: I212_Ct_guiaResumoInternacaoList;
    function Get_GuiaHonorarioIndividual: I212_Ct_guiaHonorarioIndividualList;
    function Get_GuiaOdontologia: I212_Ct_guiaOdontologiaList;
    { Methods & Properties }
    property GuiaConsulta: I212_Ct_guiaConsultaList read Get_GuiaConsulta;
    property GuiaSP_SADT: I212_Ct_guiaSP_SADTList read Get_GuiaSP_SADT;
    property GuiaResumoInternacao: I212_Ct_guiaResumoInternacaoList read Get_GuiaResumoInternacao;
    property GuiaHonorarioIndividual: I212_Ct_guiaHonorarioIndividualList read Get_GuiaHonorarioIndividual;
    property GuiaOdontologia: I212_Ct_guiaOdontologiaList read Get_GuiaOdontologia;
  end;

{ I212_Ct_guiaConsulta }

  I212_Ct_guiaConsulta = interface(IXMLNode)
    ['{32596A08-C6BD-4C2F-BE00-AB37FDA4CF43}']
    { Property Accessors }
    function Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_DadosContratado: I212_Ct_contratado;
    function Get_ProfissionalExecutante: I212_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I212_HipoteseDiagnostica;
    function Get_DadosAtendimento: I212_DadosAtendimento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuia: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuia;
    property Beneficiario: I212_Ct_beneficiario read Get_Beneficiario;
    property DadosContratado: I212_Ct_contratado read Get_DadosContratado;
    property ProfissionalExecutante: I212_Ct_identificacaoProfissional read Get_ProfissionalExecutante;
    property HipoteseDiagnostica: I212_HipoteseDiagnostica read Get_HipoteseDiagnostica;
    property DadosAtendimento: I212_DadosAtendimento read Get_DadosAtendimento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaConsultaList }

  I212_Ct_guiaConsultaList = interface(IXMLNodeCollection)
    ['{2A24BDA8-8449-4AE9-B3BA-2D1E1FC540A8}']
    { Methods & Properties }
    function Add: I212_Ct_guiaConsulta;
    function Insert(const Index: Integer): I212_Ct_guiaConsulta;
    function Get_Item(Index: Integer): I212_Ct_guiaConsulta;
    property Items[Index: Integer]: I212_Ct_guiaConsulta read Get_Item; default;
  end;

{ I212_HipoteseDiagnostica }

  I212_HipoteseDiagnostica = interface(I212_Ct_diagnosticoGuia)
    ['{1293A850-9882-4F1F-BA40-45DE310F8C3F}']
    { Property Accessors }
    function Get_DiagnosticoSecundario: I212_Ct_diagnosticosSecundarios;
    { Methods & Properties }
    property DiagnosticoSecundario: I212_Ct_diagnosticosSecundarios read Get_DiagnosticoSecundario;
  end;

{ I212_DadosAtendimento }

  I212_DadosAtendimento = interface(I212_Ct_atendimentoConsulta)
    ['{E3B37A57-27F3-4A66-9437-A6313857675D}']
  end;

{ I212_Ct_guiaSP_SADT }

  I212_Ct_guiaSP_SADT = interface(IXMLNode)
    ['{6C9ED34F-6E86-4356-BB9C-F68E9C4E0002}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_PrestadorExecutante: I212_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoGuia: I212_Ct_diagnosticoGuia;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: Integer;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_OPMUtilizada: I212_Ct_OPMUtilizada;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: Integer);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuiaSADTSP;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosAutorizacao: I212_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I212_Ct_solicitante read Get_DadosSolicitante;
    property PrestadorExecutante: I212_PrestadorExecutante read Get_PrestadorExecutante;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property CaraterAtendimento: WideString read Get_CaraterAtendimento write Set_CaraterAtendimento;
    property DataHoraAtendimento: WideString read Get_DataHoraAtendimento write Set_DataHoraAtendimento;
    property DiagnosticoGuia: I212_Ct_diagnosticoGuia read Get_DiagnosticoGuia;
    property TipoSaida: WideString read Get_TipoSaida write Set_TipoSaida;
    property TipoAtendimento: Integer read Get_TipoAtendimento write Set_TipoAtendimento;
    property ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe read Get_ProcedimentosRealizados;
    property OutrasDespesas: I212_Ct_outrasDespesas read Get_OutrasDespesas;
    property OPMUtilizada: I212_Ct_OPMUtilizada read Get_OPMUtilizada;
    property ValorTotal: I212_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaSP_SADTList }

  I212_Ct_guiaSP_SADTList = interface(IXMLNodeCollection)
    ['{C51EB766-837E-4B9B-BF66-194BF505C280}']
    { Methods & Properties }
    function Add: I212_Ct_guiaSP_SADT;
    function Insert(const Index: Integer): I212_Ct_guiaSP_SADT;
    function Get_Item(Index: Integer): I212_Ct_guiaSP_SADT;
    property Items[Index: Integer]: I212_Ct_guiaSP_SADT read Get_Item; default;
  end;

{ I212_PrestadorExecutante }

  I212_PrestadorExecutante = interface(I212_Ct_contratado)
    ['{B5F753BF-75F2-4020-B306-3EE2CA212877}']
    { Property Accessors }
    function Get_ProfissionalExecutanteCompl: I212_ProfissionalExecutanteCompl;
    { Methods & Properties }
    property ProfissionalExecutanteCompl: I212_ProfissionalExecutanteCompl read Get_ProfissionalExecutanteCompl;
  end;

{ I212_ProfissionalExecutanteCompl }

  I212_ProfissionalExecutanteCompl = interface(I212_Ct_profissionalExecutante)
    ['{57DD235D-7C62-4E99-A7E4-111FD1B74A4C}']
    { Property Accessors }
    function Get_CodigoProfissionalCompl: I212_Ct_identificacaoPrestador;
    { Methods & Properties }
    property CodigoProfissionalCompl: I212_Ct_identificacaoPrestador read Get_CodigoProfissionalCompl;
  end;

{ I212_Ct_guiaResumoInternacao }

  I212_Ct_guiaResumoInternacao = interface(IXMLNode)
    ['{B854FC3D-F33A-46C3-A6EC-53E6974D435F}']
    { Property Accessors }
    function Get_IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I212_Ct_contratado;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: Integer;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I212_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I212_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe;
    function Get_OPMUtilizadas: I212_Ct_OPMUtilizada;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: Integer);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuiaInternacao;
    property NumeroGuiaSolicitacao: WideString read Get_NumeroGuiaSolicitacao write Set_NumeroGuiaSolicitacao;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property IdentificacaoExecutante: I212_Ct_contratado read Get_IdentificacaoExecutante;
    property DadosAutorizacao: I212_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property CaraterInternacao: WideString read Get_CaraterInternacao write Set_CaraterInternacao;
    property Acomodacao: WideString read Get_Acomodacao write Set_Acomodacao;
    property DataHoraInternacao: WideString read Get_DataHoraInternacao write Set_DataHoraInternacao;
    property DataHoraSaidaInternacao: WideString read Get_DataHoraSaidaInternacao write Set_DataHoraSaidaInternacao;
    property TipoInternacao: Integer read Get_TipoInternacao write Set_TipoInternacao;
    property RegimeInternacao: WideString read Get_RegimeInternacao write Set_RegimeInternacao;
    property InternacaoObstetrica: I212_Ct_internacaoObstetrica read Get_InternacaoObstetrica;
    property ObitoNeonatal: I212_Ct_obitoNeonatal read Get_ObitoNeonatal;
    property DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao read Get_DiagnosticosSaidaInternacao;
    property ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe read Get_ProcedimentosRealizados;
    property OPMUtilizadas: I212_Ct_OPMUtilizada read Get_OPMUtilizadas;
    property OutrasDespesas: I212_Ct_outrasDespesas read Get_OutrasDespesas;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property ValorTotal: I212_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaResumoInternacaoList }

  I212_Ct_guiaResumoInternacaoList = interface(IXMLNodeCollection)
    ['{45E11468-7621-4F46-B715-C2724D72EDD3}']
    { Methods & Properties }
    function Add: I212_Ct_guiaResumoInternacao;
    function Insert(const Index: Integer): I212_Ct_guiaResumoInternacao;
    function Get_Item(Index: Integer): I212_Ct_guiaResumoInternacao;
    property Items[Index: Integer]: I212_Ct_guiaResumoInternacao read Get_Item; default;
  end;

{ I212_Ct_guiaHonorarioIndividual }

  I212_Ct_guiaHonorarioIndividual = interface(IXMLNode)
    ['{C407EFAF-E2BF-4E4E-AE2B-03F9BBA3DF78}']
    { Property Accessors }
    function Get_IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_Contratado: I212_Ct_contratado;
    function Get_ContratadoExecutante: I212_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizados;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuiaHonorarioIndividual;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property Contratado: I212_Ct_contratado read Get_Contratado;
    property ContratadoExecutante: I212_ContratadoExecutante read Get_ContratadoExecutante;
    property ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizados read Get_ProcedimentosExamesRealizados;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaHonorarioIndividualList }

  I212_Ct_guiaHonorarioIndividualList = interface(IXMLNodeCollection)
    ['{2EC5B35A-43EC-4232-9172-2FC0374358B2}']
    { Methods & Properties }
    function Add: I212_Ct_guiaHonorarioIndividual;
    function Insert(const Index: Integer): I212_Ct_guiaHonorarioIndividual;
    function Get_Item(Index: Integer): I212_Ct_guiaHonorarioIndividual;
    property Items[Index: Integer]: I212_Ct_guiaHonorarioIndividual read Get_Item; default;
  end;

{ I212_ContratadoExecutante }

  I212_ContratadoExecutante = interface(I212_Ct_contratado)
    ['{038C68A4-863F-48AB-B3B1-7321B408456E}']
    { Property Accessors }
    function Get_IdentificacaoProfissional: I212_Ct_profissionalExecutante;
    function Get_PosicaoProfissional: Integer;
    function Get_TipoAcomodacao: WideString;
    procedure Set_PosicaoProfissional(Value: Integer);
    procedure Set_TipoAcomodacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoProfissional: I212_Ct_profissionalExecutante read Get_IdentificacaoProfissional;
    property PosicaoProfissional: Integer read Get_PosicaoProfissional write Set_PosicaoProfissional;
    property TipoAcomodacao: WideString read Get_TipoAcomodacao write Set_TipoAcomodacao;
  end;

{ I212_ProcedimentosExamesRealizados }

  I212_ProcedimentosExamesRealizados = interface(I212_Ct_procedimentosRealizados)
    ['{96106956-3A53-4BDD-9656-07AFEB910FC5}']
    { Property Accessors }
    function Get_TotalGeralHonorario: WideString;
    procedure Set_TotalGeralHonorario(Value: WideString);
    { Methods & Properties }
    property TotalGeralHonorario: WideString read Get_TotalGeralHonorario write Set_TotalGeralHonorario;
  end;

{ I212_ProcedimentosExamesRealizadosReapresentacao }

  I212_ProcedimentosExamesRealizadosReapresentacao = interface(I212_ct_procedimentoRevisao)
    ['{96106956-3A53-4BDD-9656-07AFEB910FC6}']
    { Property Accessors }
    function Get_TotalGeralHonorario: WideString;
    procedure Set_TotalGeralHonorario(Value: WideString);
    { Methods & Properties }
    property TotalGeralHonorario: WideString read Get_TotalGeralHonorario write Set_TotalGeralHonorario;
  end;

{ I212_Ct_guiaOdontologia }

  I212_Ct_guiaOdontologia = interface(IXMLNode)
    ['{766239F8-660A-4779-B90F-B67A49553BA4}']
    { Property Accessors }
    function Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I212_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I212_DadosContratadoExecutante;
    function Get_ProcedimentosExecutados: I212_ProcedimentosExecutadosOdonto;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_DadosAtendimento: I212_Ct_atendimentoOdontologia;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: I212_DadosBeneficiario read Get_DadosBeneficiario;
    property DadosContratadoExecutante: I212_DadosContratadoExecutante read Get_DadosContratadoExecutante;
    property ProcedimentosExecutados: I212_ProcedimentosExecutadosOdonto read Get_ProcedimentosExecutados;
    property OutrasDespesas: I212_Ct_outrasDespesas read Get_OutrasDespesas;
    property DadosAtendimento: I212_Ct_atendimentoOdontologia read Get_DadosAtendimento;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaOdontologiaList }

  I212_Ct_guiaOdontologiaList = interface(IXMLNodeCollection)
    ['{5545592E-CDDA-4A13-BD49-88179AF1BBD4}']
    { Methods & Properties }
    function Add: I212_Ct_guiaOdontologia;
    function Insert(const Index: Integer): I212_Ct_guiaOdontologia;
    function Get_Item(Index: Integer): I212_Ct_guiaOdontologia;
    property Items[Index: Integer]: I212_Ct_guiaOdontologia read Get_Item; default;
  end;

{ I212_DadosContratadoExecutante }

  I212_DadosContratadoExecutante = interface(IXMLNode)
    ['{129B7E1D-521C-4D45-87BC-C0805B166361}']
    { Property Accessors }
    function Get_DadosContratado: I212_DadosContratado;
    function Get_DadosExecutante: I212_Ct_profissionalExecutante;
    { Methods & Properties }
    property DadosContratado: I212_DadosContratado read Get_DadosContratado;
    property DadosExecutante: I212_Ct_profissionalExecutante read Get_DadosExecutante;
  end;

{ I212_ProcedimentosExecutados }

  I212_ProcedimentosExecutados = interface(IXMLNode)
    ['{3ECAA903-B0FD-477F-9109-1BC5EBC3F9FF}']
    { Property Accessors }
    function Get_ProcedimentoExecutado: I212_ProcedimentoExecutadoList;
    function Get_QuantidadeTotalUS: WideString;
    function Get_ValorTotal: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    procedure Set_QuantidadeTotalUS(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    { Methods & Properties }
    property ProcedimentoExecutado: I212_ProcedimentoExecutadoList read Get_ProcedimentoExecutado;
    property QuantidadeTotalUS: WideString read Get_QuantidadeTotalUS write Set_QuantidadeTotalUS;
    property ValorTotal: WideString read Get_ValorTotal write Set_ValorTotal;
    property TotalFranquiaCoparticipacao: WideString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
  end;

{ I212_ProcedimentoExecutado }

  I212_ProcedimentoExecutado = interface(I212_Ct_procedimentoOdontologia)
    ['{7F4CBC7A-F570-4FFB-8589-2DD6DCBE05AF}']
    { Property Accessors }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
    { Methods & Properties }
    property DataRealizacao: WideString read Get_DataRealizacao write Set_DataRealizacao;
  end;

{ I212_ProcedimentoExecutadoList }

  I212_ProcedimentoExecutadoList = interface(IXMLNodeCollection)
    ['{27603F98-1F03-4EAF-8A9F-6EEE09D7C7CC}']
    { Methods & Properties }
    function Add: I212_ProcedimentoExecutado;
    function Insert(const Index: Integer): I212_ProcedimentoExecutado;
    function Get_Item(Index: Integer): I212_ProcedimentoExecutado;
    property Items[Index: Integer]: I212_ProcedimentoExecutado read Get_Item; default;
  end;

{ I212_GuiaRevisaoGlosa }

  I212_GuiaRevisaoGlosa = interface(IXMLNode)
    ['{CF8EC783-B9C4-450A-9FF7-003D6ACE6090}']
    { Property Accessors }
    function Get_GuiaConsultaReapresentacao: I212_Ct_guiaConsultaReapresentacaoList;
    function Get_GuiaSP_SADTReapresentacao: I212_Ct_guiaSP_SADTReapresentacaoList;
    function Get_GuiaResumoInternacaoReapresentacao: I212_Ct_guiaResumoInternacaoReapresentacaoList;
    function Get_GuiaHonorarioIndividualReapresentacao: I212_Ct_guiaHonorarioIndividualReapresentacaoList;
    function Get_GuiaOdontologiaReapresentacao: I212_Ct_guiaTratamentoOdontologicoReapresentacaoList;
    { Methods & Properties }
    property GuiaConsultaReapresentacao: I212_Ct_guiaConsultaReapresentacaoList read Get_GuiaConsultaReapresentacao;
    property GuiaSP_SADTReapresentacao: I212_Ct_guiaSP_SADTReapresentacaoList read Get_GuiaSP_SADTReapresentacao;
    property GuiaResumoInternacaoReapresentacao: I212_Ct_guiaResumoInternacaoReapresentacaoList read Get_GuiaResumoInternacaoReapresentacao;
    property GuiaHonorarioIndividualReapresentacao: I212_Ct_guiaHonorarioIndividualReapresentacaoList read Get_GuiaHonorarioIndividualReapresentacao;
    property GuiaOdontologiaReapresentacao: I212_Ct_guiaTratamentoOdontologicoReapresentacaoList read Get_GuiaOdontologiaReapresentacao;
  end;

{ I212_Ct_guiaConsultaReapresentacao }

  I212_Ct_guiaConsultaReapresentacao = interface(IXMLNode)
    ['{CB793AC8-B82E-44BC-9993-EF19D768CC61}']
    { Property Accessors }
    function Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_DadosContratado: I212_Ct_contratado;
    function Get_ProfissionalExecutante: I212_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I212_HipoteseDiagnostica;
    function Get_DadosAtendimento: I212_Ct_atendimentoConsultaReapr;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuia: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuia;
    property Beneficiario: I212_Ct_beneficiario read Get_Beneficiario;
    property DadosContratado: I212_Ct_contratado read Get_DadosContratado;
    property ProfissionalExecutante: I212_Ct_identificacaoProfissional read Get_ProfissionalExecutante;
    property HipoteseDiagnostica: I212_HipoteseDiagnostica read Get_HipoteseDiagnostica;
    property DadosAtendimento: I212_Ct_atendimentoConsultaReapr read Get_DadosAtendimento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaConsultaReapresentacaoList }

  I212_Ct_guiaConsultaReapresentacaoList = interface(IXMLNodeCollection)
    ['{5521B0B1-5F94-404E-B8E6-F022BCCB4B2B}']
    { Methods & Properties }
    function Add: I212_Ct_guiaConsultaReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaConsultaReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaConsultaReapresentacao;
    property Items[Index: Integer]: I212_Ct_guiaConsultaReapresentacao read Get_Item; default;
  end;

{ I212_Ct_guiaSP_SADTReapresentacao }

  I212_Ct_guiaSP_SADTReapresentacao = interface(IXMLNode)
    ['{3F5D9241-9DF5-42C1-A040-A00F0F11A792}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_PrestadorExecutante: I212_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoGuia: I212_Ct_diagnosticoGuia;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: Integer;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRevisaoList;
    function Get_OutrasDespesas: I212_Ct_outrasDespesasRevisao;
    function Get_OPMUtilizada: I212_Ct_OPMUtilizadasRevisao;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: Integer);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuiaSADTSP;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosAutorizacao: I212_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: I212_Ct_solicitante read Get_DadosSolicitante;
    property PrestadorExecutante: I212_PrestadorExecutante read Get_PrestadorExecutante;
    property IndicacaoClinica: WideString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property CaraterAtendimento: WideString read Get_CaraterAtendimento write Set_CaraterAtendimento;
    property DataHoraAtendimento: WideString read Get_DataHoraAtendimento write Set_DataHoraAtendimento;
    property DiagnosticoGuia: I212_Ct_diagnosticoGuia read Get_DiagnosticoGuia;
    property TipoSaida: WideString read Get_TipoSaida write Set_TipoSaida;
    property TipoAtendimento: Integer read Get_TipoAtendimento write Set_TipoAtendimento;
    property ProcedimentosRealizados: I212_Ct_procedimentoRevisaoList read Get_ProcedimentosRealizados;
    property OutrasDespesas: I212_Ct_outrasDespesasRevisao read Get_OutrasDespesas;
    property OPMUtilizada: I212_Ct_OPMUtilizadasRevisao read Get_OPMUtilizada;
    property ValorTotal: I212_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaSP_SADTReapresentacaoList }

  I212_Ct_guiaSP_SADTReapresentacaoList = interface(IXMLNodeCollection)
    ['{7A6252D9-C713-4F87-8D6E-5E3AB2D859F6}']
    { Methods & Properties }
    function Add: I212_Ct_guiaSP_SADTReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaSP_SADTReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaSP_SADTReapresentacao;
    property Items[Index: Integer]: I212_Ct_guiaSP_SADTReapresentacao read Get_Item; default;
  end;

{ I212_Ct_guiaResumoInternacaoReapresentacao }

  I212_Ct_guiaResumoInternacaoReapresentacao = interface(IXMLNode)
    ['{C5B35EAA-0CFA-4442-AD1B-3CBA981A6880}']
    { Property Accessors }
    function Get_IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I212_Ct_contratado;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: Integer;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I212_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I212_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRevisao;
    function Get_Ct_OPMUtilizadas: I212_Ct_OPMUtilizadasRevisao;
    function Get_OutrasDespesas: I212_Ct_outrasDespesasRevisao;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: Integer);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuiaInternacao;
    property NumeroGuiaSolicitacao: WideString read Get_NumeroGuiaSolicitacao write Set_NumeroGuiaSolicitacao;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property IdentificacaoExecutante: I212_Ct_contratado read Get_IdentificacaoExecutante;
    property DadosAutorizacao: I212_Ct_autorizacaoGuia read Get_DadosAutorizacao;
    property CaraterInternacao: WideString read Get_CaraterInternacao write Set_CaraterInternacao;
    property Acomodacao: WideString read Get_Acomodacao write Set_Acomodacao;
    property DataHoraInternacao: WideString read Get_DataHoraInternacao write Set_DataHoraInternacao;
    property DataHoraSaidaInternacao: WideString read Get_DataHoraSaidaInternacao write Set_DataHoraSaidaInternacao;
    property TipoInternacao: Integer read Get_TipoInternacao write Set_TipoInternacao;
    property RegimeInternacao: WideString read Get_RegimeInternacao write Set_RegimeInternacao;
    property InternacaoObstetrica: I212_Ct_internacaoObstetrica read Get_InternacaoObstetrica;
    property ObitoNeonatal: I212_Ct_obitoNeonatal read Get_ObitoNeonatal;
    property DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao read Get_DiagnosticosSaidaInternacao;
    property ProcedimentosRealizados: I212_Ct_procedimentoRevisao read Get_ProcedimentosRealizados;
    property Ct_OPMUtilizadas: I212_Ct_OPMUtilizadasRevisao read Get_Ct_OPMUtilizadas;
    property OutrasDespesas: I212_Ct_outrasDespesasRevisao read Get_OutrasDespesas;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property ValorTotal: I212_Ct_valorTotalServicos read Get_ValorTotal;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaResumoInternacaoReapresentacaoList }

  I212_Ct_guiaResumoInternacaoReapresentacaoList = interface(IXMLNodeCollection)
    ['{3769FB99-F58A-4004-A251-A830A540DC72}']
    { Methods & Properties }
    function Add: I212_Ct_guiaResumoInternacaoReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaResumoInternacaoReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaResumoInternacaoReapresentacao;
    property Items[Index: Integer]: I212_Ct_guiaResumoInternacaoReapresentacao read Get_Item; default;
  end;

{ I212_Ct_guiaHonorarioIndividualReapresentacao }

  I212_Ct_guiaHonorarioIndividualReapresentacao = interface(IXMLNode)
    ['{AB81F1F4-8D29-49E3-AF33-79CE0BA51C4E}']
    { Property Accessors }
    function Get_IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_Contratado: I212_Ct_contratado;
    function Get_ContratadoExecutante: I212_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizadosReapresentacao;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia read Get_IdentificacaoGuiaHonorarioIndividual;
    property NumeroGuiaPrincipal: WideString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: I212_Ct_beneficiario read Get_DadosBeneficiario;
    property Contratado: I212_Ct_contratado read Get_Contratado;
    property ContratadoExecutante: I212_ContratadoExecutante read Get_ContratadoExecutante;
    property ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizadosReapresentacao read Get_ProcedimentosExamesRealizados;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaHonorarioIndividualReapresentacaoList }

  I212_Ct_guiaHonorarioIndividualReapresentacaoList = interface(IXMLNodeCollection)
    ['{E92514D8-F229-4FB0-95DB-FDB6F6012907}']
    { Methods & Properties }
    function Add: I212_Ct_guiaHonorarioIndividualReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaHonorarioIndividualReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaHonorarioIndividualReapresentacao;
    property Items[Index: Integer]: I212_Ct_guiaHonorarioIndividualReapresentacao read Get_Item; default;
  end;

{ I212_Ct_guiaTratamentoOdontologicoReapresentacao }

  I212_Ct_guiaTratamentoOdontologicoReapresentacao = interface(IXMLNode)
    ['{223758BB-0F15-4CE0-98DA-63F72CFD82D7}']
    { Property Accessors }
    function Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I212_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I212_DadosContratadoExecutante;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_DadosAtendimento: I212_Ct_atendimentoOdontologia;
    function Get_ProcedimentosExecutados: I212_ProcedimentosExecutados;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
    { Methods & Properties }
    property CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: I212_DadosBeneficiario read Get_DadosBeneficiario;
    property DadosContratadoExecutante: I212_DadosContratadoExecutante read Get_DadosContratadoExecutante;
    property OutrasDespesas: I212_Ct_outrasDespesas read Get_OutrasDespesas;
    property DadosAtendimento: I212_Ct_atendimentoOdontologia read Get_DadosAtendimento;
    property ProcedimentosExecutados: I212_ProcedimentosExecutados read Get_ProcedimentosExecutados;
    property TipoFaturamento: WideString read Get_TipoFaturamento write Set_TipoFaturamento;
    property Observacao: WideString read Get_Observacao write Set_Observacao;
  end;

{ I212_Ct_guiaTratamentoOdontologicoReapresentacaoList }

  I212_Ct_guiaTratamentoOdontologicoReapresentacaoList = interface(IXMLNodeCollection)
    ['{A8B5ADFD-9270-4608-A036-1A101AE11500}']
    { Methods & Properties }
    function Add: I212_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaTratamentoOdontologicoReapresentacao;
    property Items[Index: Integer]: I212_Ct_guiaTratamentoOdontologicoReapresentacao read Get_Item; default;
  end;

{ I212_ProcedimentosExecutadosOdonto }

  I212_ProcedimentosExecutadosOdonto = interface(IXMLNodeCollection)
    ['{A6F69EF7-503F-4F9D-B6D9-355938088308}']
    { Property Accessors }
    function Get_ProcedimentoExecutado(Index: Integer): I212_Ct_procedimentoOdontoRevisao;
    { Methods & Properties }
    function Add: I212_Ct_procedimentoOdontoRevisao;
    function Insert(const Index: Integer): I212_Ct_procedimentoOdontoRevisao;
    property ProcedimentoExecutado[Index: Integer]: I212_Ct_procedimentoOdontoRevisao read Get_ProcedimentoExecutado; default;
  end;

{ I212_St_tipoGlosaList }

  I212_St_tipoGlosaList = interface(IXMLNodeCollection)
    ['{260D79CF-0E00-4E96-B980-1255B73B51DB}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  T212_Ct_diariaProrrogacao = class;
  T212_Ct_motivoGlosa = class;
  T212_Ct_motivoGlosaList = class;
  T212_MensagemTISS = class;
  T212_CabecalhoTransacao = class;
  T212_IdentificacaoTransacao = class;
  T212_FalhaNegocio = class;
  T212_Origem = class;
  T212_Ct_identificacaoPrestador = class;
  T212_Destino = class;
  T212_OperadoraParaPrestador = class;
  T212_DemonstrativosRetorno = class;
  T212_Ct_demonstrativoAnaliseConta = class;
  T212_Ct_demonstrativoAnaliseContaList = class;
  T212_Ct_identificacaoOperadora = class;
  T212_Ct_cabecalhoDemonstrativo = class;
  T212_Ct_contratado = class;
  T212_Ct_endereco = class;
  T212_Fatura = class;
  T212_Ct_dadosConta = class;
  T212_Lote = class;
  T212_Ct_dadosLote = class;
  T212_Guia = class;
  T212_Ct_dadosGuia = class;
  T212_Ct_beneficiario = class;
  T212_ProcedimentosAutorizacao = class;
  T212_Ct_dadosProcedimento = class;
  T212_Ct_tabela = class;
  T212_RelacaoGlosa = class;
  T212_Ct_demonstrativoOdontologia = class;
  T212_Ct_demonstrativoOdontologiaList = class;
  T212_IdentificacaoOperadora = class;
  T212_Ct_periodoProcessamento = class;
  T212_DadosPrestador = class;
  T212_Ct_identificadorPrestOdontoDemo = class;
  T212_Ct_dadosPagamento = class;
  T212_Ct_loteOdonto = class;
  T212_Ct_detalheGuiaOdonto = class;
  T212_ProcedimentoRealizadoOdonto = class;
  T212_Ct_procedimentoOdontoRealizado = class;
  T212_Ct_denteRegiao = class;
  T212_DemaisDescontos = class;
  T212_Ct_descontoOdonto = class;
  T212_Ct_totalDemoOdonto = class;
  T212_Ct_demonstrativoPagamento = class;
  T212_Ct_demonstrativoPagamentoList = class;
  T212_Ct_dadoBancario = class;
  T212_DadosResumo = class;
  T212_Ct_dadosResumo = class;
  T212_Ct_dadosResumoList = class;
  T212_Ct_descontos = class;
  T212_ItemDesconto = class;
  T212_Ct_protocoloRecebimento = class;
  T212_Ct_detalheProtocolo = class;
  T212_CodigoGlosaProtocolo = class;
  T212_GuiasProtocolo = class;
  T212_Ct_StatusProtocolo = class;
  T212_LoteProtocolo = class;
  T212_Ct_statusLote = class;
  T212_GuiasStatusLote = class;
  T212_Detalheguia = class;
  T212_Ct_cabecalhoGuia = class;
  T212_ProcedimentosAnalisados = class;
  T212_Ct_itemSolicitacao = class;
  T212_Glosas = class;
  T212_Ct_autorizacaoProcedimento = class;
  T212_TotalOdonto = class;
  T212_Ct_diariaProrrogacaoAutorizada = class;
  T212_Ct_situacaoAutorizacao = class;
  T212_DadosAutorizacao = class;
  T212_Ct_retornoElegibilidade = class;
  T212_Ct_reciboCancelaGuia = class;
  T212_GuiasCanceladas = class;
  T212_DadosGuia = class;
  T212_PrestadorParaOperadora = class;
  T212_Ct_loteGuias = class;
  T212_Ct_guias = class;
  T212_Ct_solicitacaoDemonstrativoPagamento = class;
  T212_Ct_solicitacaoStatusProtocolo = class;
  T212_DetalheProtocolo = class;
  T212_SolicitacaoProcedimento = class;
  T212_Ct_guiaSolicInternacao = class;
  T212_Ct_guiaSolicInternacaoList = class;
  T212_Ct_cabecalhoSolicitacao = class;
  T212_Ct_solicitante = class;
  T212_Ct_identificacaoProfissional = class;
  T212_Ct_conselhoProfissional = class;
  T212_PrestadorSolicitado = class;
  T212_Ct_hipoteseDiagnostica = class;
  T212_Ct_diagnosticoGuia = class;
  T212_Ct_diagnostico = class;
  T212_Ct_tempoEvolucaoDoenca = class;
  T212_Ct_diagnosticosSecundarios = class;
  T212_Ct_diagnosticosSecundariosList = class;
  T212_Ct_procedimentosSolicitados = class;
  T212_ProcedimentoSolicitado = class;
  T212_Ct_OPMSolicitadas = class;
  T212_OPMSolicitada = class;
  T212_Ct_guiaSolicitacaoSP_SADT = class;
  T212_Ct_guiaSolicitacaoSP_SADTList = class;
  T212_Ct_guiaSolicitacaoOdonto = class;
  T212_Ct_guiaSolicitacaoOdontoList = class;
  T212_Ct_cabecalhoGuiaOdonto = class;
  T212_DadosBeneficiario = class;
  T212_DadosSolicitante = class;
  T212_DadosContratado = class;
  T212_Ct_profissionalExecutante = class;
  T212_Ct_situacaoInicial = class;
  T212_Ct_situacaoClinica = class;
  T212_Dentes = class;
  T212_PlanoTratamento = class;
  T212_Ct_procedimentoOdontologia = class;
  T212_Ct_guiaSolicitacaoProrrogacao = class;
  T212_Ct_guiaSolicitacaoProrrogacaoList = class;
  T212_Ct_solicitaStatusAutorizacao = class;
  T212_IdentificacaoAutorizacao = class;
  T212_Ct_solicitaElegibilidade = class;
  T212_Ct_cancelaGuia = class;
  T212_GuiaCabecalho = class;
  T212_Epilogo = class;
  T212_Ct_atendimentoConsulta = class;
  T212_Ct_atendimentoConsultaReapr = class;
  T212_Procedimento = class;
  T212_Ct_atendimentoOdontologia = class;
  T212_Ct_autorizacaoGuia = class;
  T212_Ct_autorizacaoGuiaInternacao = class;
  T212_AutorizacaoServico = class;
  T212_AutorizacaoServicoList = class;
  T212_ProcedimentosGuia = class;
  T212_Ct_diagnosticoSaidaInternacao = class;
  T212_Ct_obitoInternacao = class;
  T212_Ct_executanteComplementar = class;
  T212_Ct_identificacaoEquipe = class;
  T212_MembroEquipe = class;
  T212_DadosExecutante = class;
  T212_Ct_internacaoObstetrica = class;
  T212_Ct_numeroDN = class;
  T212_Ct_obitoNeonatal = class;
  T212_Ct_OPMUtilizada = class;
  T212_OPMIdentificacao = class;
  T212_IdentificacaoOPM = class;
  T212_Ct_OPMUtilizadasRevisao = class;
  T212_OPMUtilizada = class;
  T212_OPM = class;
  T212_Ct_outrasDespesas = class;
  T212_Despesa = class;
  T212_DespesaList = class;
  T212_Ct_outrasDespesasRevisao = class;
  T212_ItensDespesas = class;
  T212_ItensDespesasList = class;
  T212_Ct_procedimentosRealizados = class;
  T212_ProcedimentoRealizado = class;
  T212_Ct_procedimentoOdontoRevisao = class;
  T212_ProcedimentoOdontologia = class;
  T212_Ct_procedimentoRealizadoEquipe = class;
  T212_ProcedimentosEquipe = class;
  T212_Ct_procedimentoRevisao = class;
  T212_Ct_procedimentoRevisaoList = class;
  T212_ProcedimentosRevisao = class;
  T212_Ct_situacaoDentes = class;
  T212_Ct_totaisOdonto = class;
  T212_Ct_tratamenteOdontoRealizado = class;
  T212_Ct_tratamentoOdontoSolicitado = class;
  T212_Ct_valorTotalServicos = class;
  T212_Guias = class;
  T212_GuiaFaturamento = class;
  T212_Ct_guiaConsulta = class;
  T212_Ct_guiaConsultaList = class;
  T212_HipoteseDiagnostica = class;
  T212_DadosAtendimento = class;
  T212_Ct_guiaSP_SADT = class;
  T212_Ct_guiaSP_SADTList = class;
  T212_PrestadorExecutante = class;
  T212_ProfissionalExecutanteCompl = class;
  T212_Ct_guiaResumoInternacao = class;
  T212_Ct_guiaResumoInternacaoList = class;
  T212_Ct_guiaHonorarioIndividual = class;
  T212_Ct_guiaHonorarioIndividualList = class;
  T212_ContratadoExecutante = class;
  T212_ProcedimentosExamesRealizados = class;
  T212_ProcedimentosExamesRealizadosReapresentacao = class;
  T212_Ct_guiaOdontologia = class;
  T212_Ct_guiaOdontologiaList = class;
  T212_DadosContratadoExecutante = class;
  T212_ProcedimentosExecutados = class;
  T212_ProcedimentoExecutado = class;
  T212_ProcedimentoExecutadoList = class;
  T212_GuiaRevisaoGlosa = class;
  T212_Ct_guiaConsultaReapresentacao = class;
  T212_Ct_guiaConsultaReapresentacaoList = class;
  T212_Ct_guiaSP_SADTReapresentacao = class;
  T212_Ct_guiaSP_SADTReapresentacaoList = class;
  T212_Ct_guiaResumoInternacaoReapresentacao = class;
  T212_Ct_guiaResumoInternacaoReapresentacaoList = class;
  T212_Ct_guiaHonorarioIndividualReapresentacao = class;
  T212_Ct_guiaHonorarioIndividualReapresentacaoList = class;
  T212_Ct_guiaTratamentoOdontologicoReapresentacao = class;
  T212_Ct_guiaTratamentoOdontologicoReapresentacaoList = class;
  T212_ProcedimentosExecutadosOdonto = class;
  T212_St_tipoGlosaList = class;

{ T212_Ct_diariaProrrogacao }

  T212_Ct_diariaProrrogacao = class(TXMLNode, I212_Ct_diariaProrrogacao)
  protected
    { I212_Ct_diariaProrrogacao }
    function Get_TipoAcomodacao: WideString;
    function Get_QuantidadeDiaria: WideString;
    procedure Set_TipoAcomodacao(Value: WideString);
    procedure Set_QuantidadeDiaria(Value: WideString);
  end;

{ T212_Ct_motivoGlosa }

  T212_Ct_motivoGlosa = class(TXMLNode, I212_Ct_motivoGlosa)
  protected
    { I212_Ct_motivoGlosa }
    function Get_CodigoGlosa: WideString;
    function Get_DescricaoGlosa: WideString;
    procedure Set_CodigoGlosa(Value: WideString);
    procedure Set_DescricaoGlosa(Value: WideString);
  end;

{ T212_Ct_motivoGlosaList }

  T212_Ct_motivoGlosaList = class(TXMLNodeCollection, I212_Ct_motivoGlosaList)
  protected
    { I212_Ct_motivoGlosaList }
    function Add: I212_Ct_motivoGlosa;
    function Insert(const Index: Integer): I212_Ct_motivoGlosa;
    function Get_Item(Index: Integer): I212_Ct_motivoGlosa;
  end;

{ T212_MensagemTISS }

  T212_MensagemTISS = class(TXMLNode, I212_MensagemTISS)
  protected
    { I212_MensagemTISS }
    function Get_Cabecalho: I212_CabecalhoTransacao;
    function Get_OperadoraParaPrestador: I212_OperadoraParaPrestador;
    function Get_PrestadorParaOperadora: I212_PrestadorParaOperadora;
    function Get_Epilogo: I212_Epilogo;
  public
    procedure AfterConstruction; override;
  end;

{ T212_CabecalhoTransacao }

  T212_CabecalhoTransacao = class(TXMLNode, I212_CabecalhoTransacao)
  protected
    { I212_CabecalhoTransacao }
    function Get_IdentificacaoTransacao: I212_IdentificacaoTransacao;
    function Get_FalhaNegocio: I212_FalhaNegocio;
    function Get_Origem: I212_Origem;
    function Get_Destino: I212_Destino;
    function Get_VersaoPadrao: WideString;
    procedure Set_VersaoPadrao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_IdentificacaoTransacao }

  T212_IdentificacaoTransacao = class(TXMLNode, I212_IdentificacaoTransacao)
  protected
    { I212_IdentificacaoTransacao }
    function Get_TipoTransacao: WideString;
    function Get_SequencialTransacao: Integer;
    function Get_DataRegistroTransacao: WideString;
    function Get_HoraRegistroTransacao: WideString;
    procedure Set_TipoTransacao(Value: WideString);
    procedure Set_SequencialTransacao(Value: Integer);
    procedure Set_DataRegistroTransacao(Value: WideString);
    procedure Set_HoraRegistroTransacao(Value: WideString);
  end;

{ T212_FalhaNegocio }

  T212_FalhaNegocio = class(T212_Ct_motivoGlosa, I212_FalhaNegocio)
  protected
    { I212_FalhaNegocio }
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  end;

{ T212_Origem }

  T212_Origem = class(TXMLNode, I212_Origem)
  protected
    { I212_Origem }
    function Get_CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_identificacaoPrestador }

  T212_Ct_identificacaoPrestador = class(TXMLNode, I212_Ct_identificacaoPrestador)
  protected
    { I212_Ct_identificacaoPrestador }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    function Get_CodigoPrestadorNaOperadora: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
  end;

{ T212_Destino }

  T212_Destino = class(TXMLNode, I212_Destino)
  protected
    { I212_Destino }
    function Get_CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador;
    function Get_RegistroANS: WideString;
    procedure Set_RegistroANS(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_OperadoraParaPrestador }

  T212_OperadoraParaPrestador = class(TXMLNode, I212_OperadoraParaPrestador)
  private
    FAutorizacaoServico: I212_AutorizacaoServicoList;
  protected
    { I212_OperadoraParaPrestador }
    function Get_DemonstrativosRetorno: I212_DemonstrativosRetorno;
    function Get_ProtocoloRecebimento: I212_Ct_protocoloRecebimento;
    function Get_SituacaoProtocolo: I212_Ct_StatusProtocolo;
    function Get_AutorizacaoServico: I212_AutorizacaoServicoList;
    function Get_SituacaoAutorizacao: I212_Ct_situacaoAutorizacao;
    function Get_RespostaElegibilidade: I212_Ct_retornoElegibilidade;
    function Get_ReciboCancelaGuia: I212_Ct_reciboCancelaGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_DemonstrativosRetorno }

  T212_DemonstrativosRetorno = class(TXMLNode, I212_DemonstrativosRetorno)
  private
    FDemonstrativoAnaliseConta: I212_Ct_demonstrativoAnaliseContaList;
    FDemonstrativoOdontologia: I212_Ct_demonstrativoOdontologiaList;
    FDemonstrativoPagamento: I212_Ct_demonstrativoPagamentoList;
  protected
    { I212_DemonstrativosRetorno }
    function Get_DemonstrativoAnaliseConta: I212_Ct_demonstrativoAnaliseContaList;
    function Get_DemonstrativoOdontologia: I212_Ct_demonstrativoOdontologiaList;
    function Get_DemonstrativoPagamento: I212_Ct_demonstrativoPagamentoList;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_demonstrativoAnaliseConta }

  T212_Ct_demonstrativoAnaliseConta = class(TXMLNode, I212_Ct_demonstrativoAnaliseConta)
  protected
    { I212_Ct_demonstrativoAnaliseConta }
    function Get_IdentificacaoOperadora: I212_Ct_identificacaoOperadora;
    function Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_Fatura: I212_Fatura;
    function Get_ValorProcessadoGeral: Double;
    function Get_ValorLiberadoGeral: Double;
    function Get_ValorGlosaGeral: Double;
    procedure Set_ValorProcessadoGeral(Value: Double);
    procedure Set_ValorLiberadoGeral(Value: Double);
    procedure Set_ValorGlosaGeral(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_demonstrativoAnaliseContaList }

  T212_Ct_demonstrativoAnaliseContaList = class(TXMLNodeCollection, I212_Ct_demonstrativoAnaliseContaList)
  protected
    { I212_Ct_demonstrativoAnaliseContaList }
    function Add: I212_Ct_demonstrativoAnaliseConta;
    function Insert(const Index: Integer): I212_Ct_demonstrativoAnaliseConta;
    function Get_Item(Index: Integer): I212_Ct_demonstrativoAnaliseConta;
  end;

{ T212_Ct_identificacaoOperadora }

  T212_Ct_identificacaoOperadora = class(TXMLNode, I212_Ct_identificacaoOperadora)
  protected
    { I212_Ct_identificacaoOperadora }
    function Get_RegistroANS: WideString;
    function Get_NomeOperadora: WideString;
    function Get_CNPJ: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NomeOperadora(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
  end;

{ T212_Ct_cabecalhoDemonstrativo }

  T212_Ct_cabecalhoDemonstrativo = class(TXMLNode, I212_Ct_cabecalhoDemonstrativo)
  protected
    { I212_Ct_cabecalhoDemonstrativo }
    function Get_NumeroDemonstrativo: WideString;
    function Get_DataEmissao: WideString;
    procedure Set_NumeroDemonstrativo(Value: WideString);
    procedure Set_DataEmissao(Value: WideString);
  end;

{ T212_Ct_contratado }

  T212_Ct_contratado = class(TXMLNode, I212_Ct_contratado)
  protected
    { I212_Ct_contratado }
    function Get_Identificacao: I212_Ct_identificacaoPrestador;
    function Get_NomeContratado: WideString;
    function Get_EnderecoContratado: I212_Ct_endereco;
    function Get_NumeroCNES: WideString;
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_endereco }

  T212_Ct_endereco = class(TXMLNode, I212_Ct_endereco)
  protected
    { I212_Ct_endereco }
    function Get_TipoLogradouro: WideString;
    function Get_Logradouro: WideString;
    function Get_Numero: WideString;
    function Get_Complemento: WideString;
    function Get_CodigoIBGEMunicipio: WideString;
    function Get_Municipio: WideString;
    function Get_CodigoUF: WideString;
    function Get_Cep: Integer;
    procedure Set_TipoLogradouro(Value: WideString);
    procedure Set_Logradouro(Value: WideString);
    procedure Set_Numero(Value: WideString);
    procedure Set_Complemento(Value: WideString);
    procedure Set_CodigoIBGEMunicipio(Value: WideString);
    procedure Set_Municipio(Value: WideString);
    procedure Set_CodigoUF(Value: WideString);
    procedure Set_Cep(Value: Integer);
  end;

{ T212_Fatura }

  T212_Fatura = class(TXMLNode, I212_Fatura)
  protected
    { I212_Fatura }
    function Get_DadosFatura: I212_Ct_dadosConta;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_dadosConta }

  T212_Ct_dadosConta = class(TXMLNode, I212_Ct_dadosConta)
  protected
    { I212_Ct_dadosConta }
    function Get_NumeroFatura: WideString;
    function Get_Lote: I212_Lote;
    function Get_ValorProcessadoFatura: Double;
    function Get_ValorLiberadoFatura: Double;
    function Get_ValorGlosaFatura: Double;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_ValorProcessadoFatura(Value: Double);
    procedure Set_ValorLiberadoFatura(Value: Double);
    procedure Set_ValorGlosaFatura(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Lote }

  T212_Lote = class(TXMLNodeCollection, I212_Lote)
  protected
    { I212_Lote }
    function Get_DadosLote(Index: Integer): I212_Ct_dadosLote;
    function Add: I212_Ct_dadosLote;
    function Insert(const Index: Integer): I212_Ct_dadosLote;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_dadosLote }

  T212_Ct_dadosLote = class(TXMLNode, I212_Ct_dadosLote)
  private
    FCodigoGlosaProtocolo: I212_St_tipoGlosaList;
  protected
    { I212_Ct_dadosLote }
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: Double;
    function Get_ValorGlosaProtocolo: Double;
    function Get_CodigoGlosaProtocolo: I212_St_tipoGlosaList;
    function Get_Guia: I212_Guia;
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: Double);
    procedure Set_ValorGlosaProtocolo(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Guia }

  T212_Guia = class(TXMLNodeCollection, I212_Guia)
  protected
    { I212_Guia }
    function Get_DadosGuia(Index: Integer): I212_Ct_dadosGuia;
    function Add: I212_Ct_dadosGuia;
    function Insert(const Index: Integer): I212_Ct_dadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_dadosGuia }

  T212_Ct_dadosGuia = class(TXMLNode, I212_Ct_dadosGuia)
  private
    FCodigoGlosaGuia: I212_Ct_motivoGlosaList;
  protected
    { I212_Ct_dadosGuia }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_DataRealizacao: WideString;
    function Get_ValorProcessadoGuia: Double;
    function Get_ValorLiberadoGuia: Double;
    function Get_ValorGlosaGuia: WideString;
    function Get_Procedimentos: I212_ProcedimentosGuia;
    function Get_CodigoGlosaGuia: I212_Ct_motivoGlosaList;
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ValorProcessadoGuia(Value: Double);
    procedure Set_ValorLiberadoGuia(Value: Double);
    procedure Set_ValorGlosaGuia(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_beneficiario }

  T212_Ct_beneficiario = class(TXMLNode, I212_Ct_beneficiario)
  protected
    { I212_Ct_beneficiario }
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

{ T212_ProcedimentosAutorizacao }

  T212_ProcedimentosAutorizacao = class(TXMLNodeCollection, I212_ProcedimentosAutorizacao)
  protected
    { I212_Procedimentos }
    function Get_DadosProcedimento(Index: Integer): I212_Ct_dadosProcedimento;
    function Add: I212_Ct_dadosProcedimento;
    function Insert(const Index: Integer): I212_Ct_dadosProcedimento;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_dadosProcedimento }

  T212_Ct_dadosProcedimento = class(TXMLNode, I212_Ct_dadosProcedimento)
  protected
    { I212_Ct_dadosProcedimento }
    function Get_Procedimento: I212_Ct_tabela;
    function Get_QuantidadeExecutada: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_GrauParticipacao: Integer;
    function Get_RelacaoGlosa: I212_RelacaoGlosa;
    procedure Set_QuantidadeExecutada(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_GrauParticipacao(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_tabela }

  T212_Ct_tabela = class(TXMLNode, I212_Ct_tabela)
  protected
    { I212_Ct_tabela }
    function Get_Codigo: WideString;
    function Get_TipoTabela: WideString;
    function Get_Descricao: WideString;
    procedure Set_Codigo(Value: WideString);
    procedure Set_TipoTabela(Value: WideString);
    procedure Set_Descricao(Value: WideString);
  end;

{ T212_RelacaoGlosa }

  T212_RelacaoGlosa = class(TXMLNode, I212_RelacaoGlosa)
  private
    FTipoGlosa: I212_Ct_motivoGlosaList;
  protected
    { I212_RelacaoGlosa }
    function Get_TipoGlosa: I212_Ct_motivoGlosaList;
    function Get_ValorGlosa: Double;
    procedure Set_ValorGlosa(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_demonstrativoOdontologia }

  T212_Ct_demonstrativoOdontologia = class(TXMLNode, I212_Ct_demonstrativoOdontologia)
  protected
    { I212_Ct_demonstrativoOdontologia }
    function Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I212_IdentificacaoOperadora;
    function Get_DadosPrestador: I212_DadosPrestador;
    function Get_DadosPagamento: I212_Ct_dadosPagamento;
    function Get_TotalGeral: I212_Ct_totalDemoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_demonstrativoOdontologiaList }

  T212_Ct_demonstrativoOdontologiaList = class(TXMLNodeCollection, I212_Ct_demonstrativoOdontologiaList)
  protected
    { I212_Ct_demonstrativoOdontologiaList }
    function Add: I212_Ct_demonstrativoOdontologia;
    function Insert(const Index: Integer): I212_Ct_demonstrativoOdontologia;
    function Get_Item(Index: Integer): I212_Ct_demonstrativoOdontologia;
  end;

{ T212_IdentificacaoOperadora }

  T212_IdentificacaoOperadora = class(T212_Ct_identificacaoOperadora, I212_IdentificacaoOperadora)
  protected
    { I212_IdentificacaoOperadora }
    function Get_PeriodoProcessamento: I212_Ct_periodoProcessamento;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_periodoProcessamento }

  T212_Ct_periodoProcessamento = class(TXMLNode, I212_Ct_periodoProcessamento)
  protected
    { I212_Ct_periodoProcessamento }
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
  end;

{ T212_DadosPrestador }

  T212_DadosPrestador = class(TXMLNode, I212_DadosPrestador)
  protected
    { I212_DadosPrestador }
    function Get_CodigoPrestadorNaOperadora: WideString;
    function Get_IdentificadorPrestador: I212_Ct_identificadorPrestOdontoDemo;
    function Get_NomeContratado: WideString;
    function Get_NumeroCNES: WideString;
    procedure Set_CodigoPrestadorNaOperadora(Value: WideString);
    procedure Set_NomeContratado(Value: WideString);
    procedure Set_NumeroCNES(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_identificadorPrestOdontoDemo }

  T212_Ct_identificadorPrestOdontoDemo = class(TXMLNode, I212_Ct_identificadorPrestOdontoDemo)
  protected
    { I212_Ct_identificadorPrestOdontoDemo }
    function Get_CNPJ: WideString;
    function Get_Cpf: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_Cpf(Value: WideString);
  end;

{ T212_Ct_dadosPagamento }

  T212_Ct_dadosPagamento = class(TXMLNode, I212_Ct_dadosPagamento)
  protected
    { I212_Ct_dadosPagamento }
    function Get_DataPagamento: WideString;
    function Get_LoteOdonto: I212_Ct_loteOdonto;
    function Get_DemaisDescontos: I212_DemaisDescontos;
    procedure Set_DataPagamento(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_loteOdonto }

  T212_Ct_loteOdonto = class(TXMLNode, I212_Ct_loteOdonto)
  protected
    { I212_Ct_loteOdonto }
    function Get_NumeroLote: WideString;
    function Get_DetalheGuia: I212_Ct_detalheGuiaOdonto;
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

{ T212_Ct_detalheGuiaOdonto }

  T212_Ct_detalheGuiaOdonto = class(TXMLNode, I212_Ct_detalheGuiaOdonto)
  protected
    { I212_Ct_detalheGuiaOdonto }
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_CodigoBeneficiario: WideString;
    function Get_NomeBeneficiario: WideString;
    function Get_ProcedimentoRealizado: I212_ProcedimentoRealizadoOdonto;
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

{ T212_ProcedimentoRealizadoOdonto }

  T212_ProcedimentoRealizadoOdonto = class(TXMLNodeCollection, I212_ProcedimentoRealizadoOdonto)
  protected
    { I212_ProcedimentoRealizado }
    function Get_ProcedimentosOdonto(Index: Integer): I212_Ct_procedimentoOdontoRealizado;
    function Add: I212_Ct_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): I212_Ct_procedimentoOdontoRealizado;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_procedimentoOdontoRealizado }

  T212_Ct_procedimentoOdontoRealizado = class(TXMLNode, I212_Ct_procedimentoOdontoRealizado)
  private
    FMotivoGlosa: I212_St_tipoGlosaList;
  protected
    { I212_Ct_procedimentoOdontoRealizado }
    function Get_ProcedimentoOdonto: I212_Ct_tabela;
    function Get_DenteRegiao: I212_Ct_denteRegiao;
    function Get_Face: WideString;
    function Get_DataRealizacao: WideString;
    function Get_Quantidade: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorGlosaEstorno: WideString;
    function Get_MotivoGlosa: I212_St_tipoGlosaList;
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

{ T212_Ct_denteRegiao }

  T212_Ct_denteRegiao = class(TXMLNode, I212_Ct_denteRegiao)
  protected
    { I212_Ct_denteRegiao }
    function Get_Dente: Integer;
    function Get_Regiao: WideString;
    procedure Set_Dente(Value: Integer);
    procedure Set_Regiao(Value: WideString);
  end;

{ T212_DemaisDescontos }

  T212_DemaisDescontos = class(TXMLNodeCollection, I212_DemaisDescontos)
  protected
    { I212_DemaisDescontos }
    function Get_Descontos(Index: Integer): I212_Ct_descontoOdonto;
    function Add: I212_Ct_descontoOdonto;
    function Insert(const Index: Integer): I212_Ct_descontoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_descontoOdonto }

  T212_Ct_descontoOdonto = class(TXMLNode, I212_Ct_descontoOdonto)
  protected
    { I212_Ct_descontoOdonto }
    function Get_Descricao: WideString;
    function Get_ValorDesconto: WideString;
    procedure Set_Descricao(Value: WideString);
    procedure Set_ValorDesconto(Value: WideString);
  end;

{ T212_Ct_totalDemoOdonto }

  T212_Ct_totalDemoOdonto = class(TXMLNode, I212_Ct_totalDemoOdonto)
  protected
    { I212_Ct_totalDemoOdonto }
    function Get_ValorTotalGeralGlosa: WideString;
    function Get_ValorTotalGeralLiberado: WideString;
    function Get_ValorTotalProcessadoGuia: WideString;
    procedure Set_ValorTotalGeralGlosa(Value: WideString);
    procedure Set_ValorTotalGeralLiberado(Value: WideString);
    procedure Set_ValorTotalProcessadoGuia(Value: WideString);
  end;

{ T212_Ct_demonstrativoPagamento }

  T212_Ct_demonstrativoPagamento = class(TXMLNode, I212_Ct_demonstrativoPagamento)
  protected
    { I212_Ct_demonstrativoPagamento }
    function Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
    function Get_IdentificacaoOperadora: I212_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DadosPagamento: I212_Ct_dadoBancario;
    function Get_DadosResumo: I212_DadosResumo;
    function Get_ValorTotal: WideString;
    function Get_DemaisDescontos: I212_Ct_descontos;
    function Get_ValorFinalLiberado: Double;
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_ValorFinalLiberado(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_demonstrativoPagamentoList }

  T212_Ct_demonstrativoPagamentoList = class(TXMLNodeCollection, I212_Ct_demonstrativoPagamentoList)
  protected
    { I212_Ct_demonstrativoPagamentoList }
    function Add: I212_Ct_demonstrativoPagamento;
    function Insert(const Index: Integer): I212_Ct_demonstrativoPagamento;
    function Get_Item(Index: Integer): I212_Ct_demonstrativoPagamento;
  end;

{ T212_Ct_dadoBancario }

  T212_Ct_dadoBancario = class(TXMLNode, I212_Ct_dadoBancario)
  protected
    { I212_Ct_dadoBancario }
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

{ T212_DadosResumo }

  T212_DadosResumo = class(TXMLNode, I212_DadosResumo)
  private
    FDetalheResumo: I212_Ct_dadosResumoList;
  protected
    { I212_DadosResumo }
    function Get_DetalheResumo: I212_Ct_dadosResumoList;
    function Get_TotalGeralInformado: Double;
    function Get_TotalGeralProcessado: Double;
    function Get_TotalGeralGlosa: Double;
    function Get_TotalGeralLiberado: Double;
    procedure Set_TotalGeralInformado(Value: Double);
    procedure Set_TotalGeralProcessado(Value: Double);
    procedure Set_TotalGeralGlosa(Value: Double);
    procedure Set_TotalGeralLiberado(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_dadosResumo }

  T212_Ct_dadosResumo = class(TXMLNode, I212_Ct_dadosResumo)
  protected
    { I212_Ct_dadosResumo }
    function Get_NumeroFatura: WideString;
    function Get_NumeroLote: WideString;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroProtocolo: WideString;
    function Get_ValorInformado: Double;
    function Get_ValorProcessado: Double;
    function Get_ValorLiberado: Double;
    function Get_ValorGlosa: Double;
    procedure Set_NumeroFatura(Value: WideString);
    procedure Set_NumeroLote(Value: WideString);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorInformado(Value: Double);
    procedure Set_ValorProcessado(Value: Double);
    procedure Set_ValorLiberado(Value: Double);
    procedure Set_ValorGlosa(Value: Double);
  end;

{ T212_Ct_dadosResumoList }

  T212_Ct_dadosResumoList = class(TXMLNodeCollection, I212_Ct_dadosResumoList)
  protected
    { I212_Ct_dadosResumoList }
    function Add: I212_Ct_dadosResumo;
    function Insert(const Index: Integer): I212_Ct_dadosResumo;
    function Get_Item(Index: Integer): I212_Ct_dadosResumo;
  end;

{ T212_Ct_descontos }

  T212_Ct_descontos = class(TXMLNodeCollection, I212_Ct_descontos)
  protected
    { I212_Ct_descontos }
    function Get_ItemDesconto(Index: Integer): I212_ItemDesconto;
    function Add: I212_ItemDesconto;
    function Insert(const Index: Integer): I212_ItemDesconto;
  public
    procedure AfterConstruction; override;
  end;

{ T212_ItemDesconto }

  T212_ItemDesconto = class(TXMLNode, I212_ItemDesconto)
  protected
    { I212_ItemDesconto }
    function Get_ValorDesconto: WideString;
    function Get_Descricao: WideString;
    procedure Set_ValorDesconto(Value: WideString);
    procedure Set_Descricao(Value: WideString);
  end;

{ T212_Ct_protocoloRecebimento }

  T212_Ct_protocoloRecebimento = class(TXMLNode, I212_Ct_protocoloRecebimento)
  protected
    { I212_Ct_protocoloRecebimento }
    function Get_DadosOperadora: I212_Ct_identificacaoOperadora;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroLote: Integer;
    function Get_MensagemDetalheProtocolo: I212_Ct_detalheProtocolo;
    function Get_NumeroProtocoloRecebimento: Integer;
    function Get_MensagemErro: WideString;
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_NumeroProtocoloRecebimento(Value: Integer);
    procedure Set_MensagemErro(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_detalheProtocolo }

  T212_Ct_detalheProtocolo = class(TXMLNode, I212_Ct_detalheProtocolo)
  protected
    { I212_Ct_detalheProtocolo }
    function Get_NumeroProtocolo: WideString;
    function Get_ValorProtocolo: WideString;
    function Get_CodigoGlosaProtocolo: I212_CodigoGlosaProtocolo;
    function Get_Guias: I212_GuiasProtocolo;
    procedure Set_NumeroProtocolo(Value: WideString);
    procedure Set_ValorProtocolo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_CodigoGlosaProtocolo }

  T212_CodigoGlosaProtocolo = class(TXMLNode, I212_CodigoGlosaProtocolo)
  private
    FMotivoGlosa: I212_Ct_motivoGlosaList;
  protected
    { I212_CodigoGlosaProtocolo }
    function Get_MotivoGlosa: I212_Ct_motivoGlosaList;
    function Get_ValorGlosaProtocolo: WideString;
    procedure Set_ValorGlosaProtocolo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_GuiasProtocolo }

  T212_GuiasProtocolo = class(TXMLNodeCollection, I212_GuiasProtocolo)
  protected
    { I212_Guias }
    function Get_DadosGuia(Index: Integer): I212_Ct_dadosGuia;
    function Add: I212_Ct_dadosGuia;
    function Insert(const Index: Integer): I212_Ct_dadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_StatusProtocolo }

  T212_Ct_StatusProtocolo = class(TXMLNode, I212_Ct_StatusProtocolo)
  protected
    { I212_Ct_StatusProtocolo }
    function Get_RegistroANS: WideString;
    function Get_NomeOperadora: WideString;
    function Get_CNPJ: WideString;
    function Get_StatusProtocolo: Integer;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_CNESPrestador: WideString;
    function Get_Lote: I212_LoteProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_NomeOperadora(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_StatusProtocolo(Value: Integer);
    procedure Set_CNESPrestador(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_LoteProtocolo }

  T212_LoteProtocolo = class(TXMLNodeCollection, I212_LoteProtocolo)
  protected
    { I212_Lote }
    function Get_DetalheLote(Index: Integer): I212_Ct_statusLote;
    function Add: I212_Ct_statusLote;
    function Insert(const Index: Integer): I212_Ct_statusLote;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_statusLote }

  T212_Ct_statusLote = class(TXMLNode, I212_Ct_statusLote)
  protected
    { I212_Ct_statusLote }
    function Get_NumeroProtocolo: Integer;
    function Get_NumeroLote: Integer;
    function Get_DataEnvioLote: WideString;
    function Get_NumeroFatura: Integer;
    function Get_ValorProcessado: WideString;
    function Get_ValorLiberado: WideString;
    function Get_ValorGlosa: WideString;
    function Get_Status: Integer;
    function Get_Guias: I212_GuiasStatusLote;
    procedure Set_NumeroProtocolo(Value: Integer);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_DataEnvioLote(Value: WideString);
    procedure Set_NumeroFatura(Value: Integer);
    procedure Set_ValorProcessado(Value: WideString);
    procedure Set_ValorLiberado(Value: WideString);
    procedure Set_ValorGlosa(Value: WideString);
    procedure Set_Status(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_GuiasStatusLote }

  T212_GuiasStatusLote = class(TXMLNodeCollection, I212_GuiasStatusLote)
  protected
    { I212_Guias }
    function Get_Detalheguia(Index: Integer): I212_Detalheguia;
    function Add: I212_Detalheguia;
    function Insert(const Index: Integer): I212_Detalheguia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Detalheguia }

  T212_Detalheguia = class(TXMLNode, I212_Detalheguia)
  protected
    { I212_Detalheguia }
    function Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: I212_ProcedimentosAnalisados;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_cabecalhoGuia }

  T212_Ct_cabecalhoGuia = class(TXMLNode, I212_Ct_cabecalhoGuia)
  protected
    { I212_Ct_cabecalhoGuia }
    function Get_RegistroANS: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
  end;

{ T212_ProcedimentosAnalisados }

  T212_ProcedimentosAnalisados = class(TXMLNodeCollection, I212_ProcedimentosAnalisados)
  protected
    { I212_ProcedimentosAnalisados }
    function Get_Procedimento(Index: Integer): I212_Ct_itemSolicitacao;
    function Add: I212_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I212_Ct_itemSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_itemSolicitacao }

  T212_Ct_itemSolicitacao = class(TXMLNode, I212_Ct_itemSolicitacao)
  protected
    { I212_Ct_itemSolicitacao }
    function Get_IdentificacaoProcedimentos: I212_Ct_tabela;
    function Get_QuantidadeSolicitada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_StatusSolicitacaoProcedimento: WideString;
    function Get_Glosas: I212_Glosas;
    function Get_Observacao: WideString;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
    procedure Set_StatusSolicitacaoProcedimento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Glosas }

  T212_Glosas = class(TXMLNodeCollection, I212_Glosas)
  protected
    { I212_Glosas }
    function Get_MotivoGlosa(Index: Integer): I212_Ct_motivoGlosa;
    function Add: I212_Ct_motivoGlosa;
    function Insert(const Index: Integer): I212_Ct_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_autorizacaoProcedimento }

  T212_Ct_autorizacaoProcedimento = class(TXMLNode, I212_Ct_autorizacaoProcedimento)
  protected
    { I212_Ct_autorizacaoProcedimento }
    function Get_IdentificacaoAutorizacao: I212_Ct_cabecalhoGuia;
    function Get_StatusSolicitacao: WideString;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_PrestadorAutorizado: I212_Ct_contratado;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuiaInternacao;
    function Get_Procedimentos: I212_ProcedimentosAutorizacao;
    procedure Set_StatusSolicitacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_TotalOdonto }

  T212_TotalOdonto = class(TXMLNode, I212_TotalOdonto)
  protected
    { I212_TotalOdonto }
    function Get_Totalvalor: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    function Get_TotalquantidadeUS: WideString;
    procedure Set_Totalvalor(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
    procedure Set_TotalquantidadeUS(Value: WideString);
  end;

{ T212_Ct_diariaProrrogacaoAutorizada }

  T212_Ct_diariaProrrogacaoAutorizada = class(T212_Ct_diariaProrrogacao, I212_Ct_diariaProrrogacaoAutorizada)
  protected
    { I212_Ct_diariaProrrogacaoAutorizada }
    function Get_TipoAcomodacaoAutorizada: WideString;
    function Get_QuantidadeAutorizada: WideString;
    function Get_MotivoGlosa: I212_Ct_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: WideString);
    procedure Set_QuantidadeAutorizada(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_situacaoAutorizacao }

  T212_Ct_situacaoAutorizacao = class(TXMLNodeCollection, I212_Ct_situacaoAutorizacao)
  protected
    { I212_Ct_situacaoAutorizacao }
    function Get_DadosAutorizacao(Index: Integer): I212_DadosAutorizacao;
    function Add: I212_DadosAutorizacao;
    function Insert(const Index: Integer): I212_DadosAutorizacao;
  public
    procedure AfterConstruction; override;
  end;

{ T212_DadosAutorizacao }

  T212_DadosAutorizacao = class(T212_Ct_autorizacaoProcedimento, I212_DadosAutorizacao)
  protected
    { I212_DadosAutorizacao }
    function Get_TotalOdonto: I212_TotalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_retornoElegibilidade }

  T212_Ct_retornoElegibilidade = class(TXMLNode, I212_Ct_retornoElegibilidade)
  protected
    { I212_Ct_retornoElegibilidade }
    function Get_DadosOperadora: I212_Ct_identificacaoOperadora;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_RespostaSolicitacao: Boolean;
    function Get_MotivoNegacao: I212_Ct_motivoGlosa;
    procedure Set_RespostaSolicitacao(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_reciboCancelaGuia }

  T212_Ct_reciboCancelaGuia = class(TXMLNode, I212_Ct_reciboCancelaGuia)
  protected
    { I212_Ct_reciboCancelaGuia }
    function Get_Operadora: I212_Ct_identificacaoOperadora;
    function Get_GuiasCanceladas: I212_GuiasCanceladas;
  public
    procedure AfterConstruction; override;
  end;

{ T212_GuiasCanceladas }

  T212_GuiasCanceladas = class(TXMLNodeCollection, I212_GuiasCanceladas)
  protected
    { I212_GuiasCanceladas }
    function Get_DadosGuia(Index: Integer): I212_DadosGuia;
    function Add: I212_DadosGuia;
    function Insert(const Index: Integer): I212_DadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_DadosGuia }

  T212_DadosGuia = class(T212_Ct_cabecalhoGuia, I212_DadosGuia)
  protected
    { I212_DadosGuia }
    function Get_StatusCancelamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_StatusCancelamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  end;

{ T212_PrestadorParaOperadora }

  T212_PrestadorParaOperadora = class(TXMLNode, I212_PrestadorParaOperadora)
  protected
    { I212_PrestadorParaOperadora }
    function Get_LoteGuias: I212_Ct_loteGuias;
    function Get_SolicitacaoDemonstrativoRetorno: I212_Ct_solicitacaoDemonstrativoPagamento;
    function Get_SolicitacaoStatusProtocolo: I212_Ct_solicitacaoStatusProtocolo;
    function Get_SolicitacaoProcedimento: I212_SolicitacaoProcedimento;
    function Get_SolicitaStatusAutorizacao: I212_Ct_solicitaStatusAutorizacao;
    function Get_VerificaElegibilidade: I212_Ct_solicitaElegibilidade;
    function Get_CancelaGuia: I212_Ct_cancelaGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_loteGuias }

  T212_Ct_loteGuias = class(TXMLNode, I212_Ct_loteGuias)
  protected
    { I212_Ct_loteGuias }
    function Get_NumeroLote: Integer;
    function Get_Guias: I212_Guias;
    procedure Set_NumeroLote(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guias }

  T212_Ct_guias = class(TXMLNode, I212_Ct_guias)
  protected
    { I212_Ct_guias }
    function Get_GuiaFaturamento: I212_GuiaFaturamento;
    function Get_GuiaRevisaoGlosa: I212_GuiaRevisaoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_solicitacaoDemonstrativoPagamento }

  T212_Ct_solicitacaoDemonstrativoPagamento = class(TXMLNode, I212_Ct_solicitacaoDemonstrativoPagamento)
  protected
    { I212_Ct_solicitacaoDemonstrativoPagamento }
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_RegistroANS: WideString;
    function Get_DataSolicitacao: WideString;
    function Get_TipoDemostrativo: WideString;
    function Get_DataInicial: WideString;
    function Get_DataFinal: WideString;
    function Get_NumeroProtocolo: Integer;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
    procedure Set_TipoDemostrativo(Value: WideString);
    procedure Set_DataInicial(Value: WideString);
    procedure Set_DataFinal(Value: WideString);
    procedure Set_NumeroProtocolo(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_solicitacaoStatusProtocolo }

  T212_Ct_solicitacaoStatusProtocolo = class(TXMLNode, I212_Ct_solicitacaoStatusProtocolo)
  protected
    { I212_Ct_solicitacaoStatusProtocolo }
    function Get_RegistroANS: WideString;
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DataSolicitacao: WideString;
    function Get_DetalheProtocolo: I212_DetalheProtocolo;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataSolicitacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_DetalheProtocolo }

  T212_DetalheProtocolo = class(TXMLNodeCollection, I212_DetalheProtocolo)
  protected
    { I212_DetalheProtocolo }
    function Get_NumeroProtocolo(Index: Integer): Integer;
    function Add(const NumeroProtocolo: Integer): IXMLNode;
    function Insert(const Index: Integer; const NumeroProtocolo: Integer): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ T212_SolicitacaoProcedimento }

  T212_SolicitacaoProcedimento = class(TXMLNode, I212_SolicitacaoProcedimento)
  private
    FGuiaSolicInternacao: I212_Ct_guiaSolicInternacaoList;
    FGuiaSolicitacaoSADT: I212_Ct_guiaSolicitacaoSP_SADTList;
    FGuiaSolicitacaoOdontologia: I212_Ct_guiaSolicitacaoOdontoList;
    FGuiaSolicitacaoProrrogacao: I212_Ct_guiaSolicitacaoProrrogacaoList;
  protected
    { I212_SolicitacaoProcedimento }
    function Get_GuiaSolicInternacao: I212_Ct_guiaSolicInternacaoList;
    function Get_GuiaSolicitacaoSADT: I212_Ct_guiaSolicitacaoSP_SADTList;
    function Get_GuiaSolicitacaoOdontologia: I212_Ct_guiaSolicitacaoOdontoList;
    function Get_GuiaSolicitacaoProrrogacao: I212_Ct_guiaSolicitacaoProrrogacaoList;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSolicInternacao }

  T212_Ct_guiaSolicInternacao = class(TXMLNode, I212_Ct_guiaSolicInternacao)
  protected
    { I212_Ct_guiaSolicInternacao }
    function Get_IdentificacaoGuiaSolicitacaoInternacao: I212_Ct_cabecalhoSolicitacao;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_PrestadorSolicitado: I212_PrestadorSolicitado;
    function Get_CaraterInternacao: WideString;
    function Get_TipoInternacao: Integer;
    function Get_IndicacaoClinica: WideString;
    function Get_RegimeInternacao: WideString;
    function Get_HipotesesDiagnosticas: I212_Ct_hipoteseDiagnostica;
    function Get_ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados;
    function Get_OPMsSolicitadas: I212_Ct_OPMSolicitadas;
    function Get_DiasSolicitados: Integer;
    function Get_DataProvavelAdmisHosp: WideString;
    function Get_Observacao: WideString;
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: Integer);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_DiasSolicitados(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSolicInternacaoList }

  T212_Ct_guiaSolicInternacaoList = class(TXMLNodeCollection, I212_Ct_guiaSolicInternacaoList)
  protected
    { I212_Ct_guiaSolicInternacaoList }
    function Add: I212_Ct_guiaSolicInternacao;
    function Insert(const Index: Integer): I212_Ct_guiaSolicInternacao;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicInternacao;
  end;

{ T212_Ct_cabecalhoSolicitacao }

  T212_Ct_cabecalhoSolicitacao = class(TXMLNode, I212_Ct_cabecalhoSolicitacao)
  protected
    { I212_Ct_cabecalhoSolicitacao }
    function Get_RegistroANS: WideString;
    function Get_DataEmissaoGuia: WideString;
    function Get_NumeroGuiaOperadora: WideString;
    function Get_NumeroGuiaPrestador: WideString;
    procedure Set_RegistroANS(Value: WideString);
    procedure Set_DataEmissaoGuia(Value: WideString);
    procedure Set_NumeroGuiaOperadora(Value: WideString);
    procedure Set_NumeroGuiaPrestador(Value: WideString);
  end;

{ T212_Ct_solicitante }

  T212_Ct_solicitante = class(TXMLNode, I212_Ct_solicitante)
  protected
    { I212_Ct_solicitante }
    function Get_Contratado: I212_Ct_contratado;
    function Get_Profissional: I212_Ct_identificacaoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_identificacaoProfissional }

  T212_Ct_identificacaoProfissional = class(TXMLNode, I212_Ct_identificacaoProfissional)
  protected
    { I212_Ct_identificacaoProfissional }
    function Get_NomeProfissional: WideString;
    function Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
    function Get_Cbos: WideString;
    procedure Set_NomeProfissional(Value: WideString);
    procedure Set_Cbos(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_conselhoProfissional }

  T212_Ct_conselhoProfissional = class(TXMLNode, I212_Ct_conselhoProfissional)
  protected
    { I212_Ct_conselhoProfissional }
    function Get_SiglaConselho: WideString;
    function Get_NumeroConselho: WideString;
    function Get_UfConselho: WideString;
    procedure Set_SiglaConselho(Value: WideString);
    procedure Set_NumeroConselho(Value: WideString);
    procedure Set_UfConselho(Value: WideString);
  end;

{ T212_PrestadorSolicitado }

  T212_PrestadorSolicitado = class(T212_Ct_identificacaoPrestador, I212_PrestadorSolicitado)
  protected
    { I212_PrestadorSolicitado }
    function Get_NomePrestador: WideString;
    procedure Set_NomePrestador(Value: WideString);
  end;

{ T212_Ct_hipoteseDiagnostica }

  T212_Ct_hipoteseDiagnostica = class(TXMLNode, I212_Ct_hipoteseDiagnostica)
  private
    FDiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
  protected
    { I212_Ct_hipoteseDiagnostica }
    function Get_CIDPrincipal: I212_Ct_diagnosticoGuia;
    function Get_DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_diagnosticoGuia }

  T212_Ct_diagnosticoGuia = class(TXMLNode, I212_Ct_diagnosticoGuia)
  protected
    { I212_Ct_diagnosticoGuia }
    function Get_CID: I212_Ct_diagnostico;
    function Get_TipoDoenca: WideString;
    function Get_TempoReferidoEvolucaoDoenca: I212_Ct_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: Integer;
    procedure Set_TipoDoenca(Value: WideString);
    procedure Set_IndicadorAcidente(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_diagnostico }

  T212_Ct_diagnostico = class(TXMLNode, I212_Ct_diagnostico)
  protected
    { I212_Ct_diagnostico }
    function Get_NomeTabela: WideString;
    function Get_CodigoDiagnostico: WideString;
    function Get_DescricaoDiagnostico: WideString;
    procedure Set_NomeTabela(Value: WideString);
    procedure Set_CodigoDiagnostico(Value: WideString);
    procedure Set_DescricaoDiagnostico(Value: WideString);
  end;

{ T212_Ct_tempoEvolucaoDoenca }

  T212_Ct_tempoEvolucaoDoenca = class(TXMLNode, I212_Ct_tempoEvolucaoDoenca)
  protected
    { I212_Ct_tempoEvolucaoDoenca }
    function Get_Valor: Integer;
    function Get_UnidadeTempo: WideString;
    procedure Set_Valor(Value: Integer);
    procedure Set_UnidadeTempo(Value: WideString);
  end;

{ T212_Ct_diagnosticosSecundarios }

  T212_Ct_diagnosticosSecundarios = class(TXMLNodeCollection, I212_Ct_diagnosticosSecundarios)
  protected
    { I212_Ct_diagnosticosSecundarios }
    function Get_CID(Index: Integer): I212_Ct_diagnostico;
    function Add: I212_Ct_diagnostico;
    function Insert(const Index: Integer): I212_Ct_diagnostico;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_diagnosticosSecundariosList }

  T212_Ct_diagnosticosSecundariosList = class(TXMLNodeCollection, I212_Ct_diagnosticosSecundariosList)
  protected
    { I212_Ct_diagnosticosSecundariosList }
    function Add: I212_Ct_diagnosticosSecundarios;
    function Insert(const Index: Integer): I212_Ct_diagnosticosSecundarios;
    function Get_Item(Index: Integer): I212_Ct_diagnosticosSecundarios;
  end;

{ T212_Ct_procedimentosSolicitados }

  T212_Ct_procedimentosSolicitados = class(TXMLNodeCollection, I212_Ct_procedimentosSolicitados)
  protected
    { I212_Ct_procedimentosSolicitados }
    function Get_ProcedimentoSolicitado(Index: Integer): I212_ProcedimentoSolicitado;
    function Add: I212_ProcedimentoSolicitado;
    function Insert(const Index: Integer): I212_ProcedimentoSolicitado;
  public
    procedure AfterConstruction; override;
  end;

{ T212_ProcedimentoSolicitado }

  T212_ProcedimentoSolicitado = class(TXMLNode, I212_ProcedimentoSolicitado)
  protected
    { I212_ProcedimentoSolicitado }
    function Get_QuantidadeSolicitada: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_OPMSolicitadas }

  T212_Ct_OPMSolicitadas = class(TXMLNodeCollection, I212_Ct_OPMSolicitadas)
  protected
    { I212_Ct_OPMSolicitadas }
    function Get_OPMSolicitada(Index: Integer): I212_OPMSolicitada;
    function Add: I212_OPMSolicitada;
    function Insert(const Index: Integer): I212_OPMSolicitada;
  public
    procedure AfterConstruction; override;
  end;

{ T212_OPMSolicitada }

  T212_OPMSolicitada = class(TXMLNode, I212_OPMSolicitada)
  protected
    { I212_OPMSolicitada }
    function Get_QuantidadeSolicitada: WideString;
    function Get_Fabricante: WideString;
    function Get_Valor: WideString;
    function Get_OPM: I212_Ct_tabela;
    procedure Set_QuantidadeSolicitada(Value: WideString);
    procedure Set_Fabricante(Value: WideString);
    procedure Set_Valor(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSolicitacaoSP_SADT }

  T212_Ct_guiaSolicitacaoSP_SADT = class(TXMLNode, I212_Ct_guiaSolicitacaoSP_SADT)
  protected
    { I212_Ct_guiaSolicitacaoSP_SADT }
    function Get_IdentificacaoGuiaSolicitacaoSADTSP: I212_Ct_cabecalhoSolicitacao;
    function Get_NumeroGuiaPrincipal: Integer;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_CaraterSolicitacao: WideString;
    function Get_DataHoraSolicitacao: WideString;
    function Get_Diagnostico: I212_Ct_diagnostico;
    function Get_IndicacaoClinica: WideString;
    function Get_ProcedimentosSolicitados: I212_Ct_procedimentosSolicitados;
    function Get_OpmSolicitada: I212_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: Integer);
    procedure Set_CaraterSolicitacao(Value: WideString);
    procedure Set_DataHoraSolicitacao(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSolicitacaoSP_SADTList }

  T212_Ct_guiaSolicitacaoSP_SADTList = class(TXMLNodeCollection, I212_Ct_guiaSolicitacaoSP_SADTList)
  protected
    { I212_Ct_guiaSolicitacaoSP_SADTList }
    function Add: I212_Ct_guiaSolicitacaoSP_SADT;
    function Insert(const Index: Integer): I212_Ct_guiaSolicitacaoSP_SADT;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoSP_SADT;
  end;

{ T212_Ct_guiaSolicitacaoOdonto }

  T212_Ct_guiaSolicitacaoOdonto = class(TXMLNode, I212_Ct_guiaSolicitacaoOdonto)
  protected
    { I212_Ct_guiaSolicitacaoOdonto }
    function Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I212_DadosBeneficiario;
    function Get_DadosSolicitante: I212_DadosSolicitante;
    function Get_SituacaoInicial: I212_Ct_situacaoInicial;
    function Get_PlanoTratamento: I212_PlanoTratamento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSolicitacaoOdontoList }

  T212_Ct_guiaSolicitacaoOdontoList = class(TXMLNodeCollection, I212_Ct_guiaSolicitacaoOdontoList)
  protected
    { I212_Ct_guiaSolicitacaoOdontoList }
    function Add: I212_Ct_guiaSolicitacaoOdonto;
    function Insert(const Index: Integer): I212_Ct_guiaSolicitacaoOdonto;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoOdonto;
  end;

{ T212_Ct_cabecalhoGuiaOdonto }

  T212_Ct_cabecalhoGuiaOdonto = class(TXMLNode, I212_Ct_cabecalhoGuiaOdonto)
  protected
    { I212_Ct_cabecalhoGuiaOdonto }
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

{ T212_DadosBeneficiario }

  T212_DadosBeneficiario = class(T212_Ct_beneficiario, I212_DadosBeneficiario)
  protected
    { I212_DadosBeneficiario }
    function Get_NomeEmpresa: WideString;
    function Get_NumeroTelefone: WideString;
    function Get_NomeTitular: WideString;
    procedure Set_NomeEmpresa(Value: WideString);
    procedure Set_NumeroTelefone(Value: WideString);
    procedure Set_NomeTitular(Value: WideString);
  end;

{ T212_DadosSolicitante }

  T212_DadosSolicitante = class(TXMLNode, I212_DadosSolicitante)
  protected
    { I212_DadosSolicitante }
    function Get_DadosContratado: I212_DadosContratado;
    function Get_DadosExecutante: I212_DadosExecutante;
  public
    procedure AfterConstruction; override;
  end;

{ T212_DadosContratado }

  T212_DadosContratado = class(T212_Ct_contratado, I212_DadosContratado)
  protected
    { I212_DadosContratado }
    function Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_profissionalExecutante }

  T212_Ct_profissionalExecutante = class(TXMLNode, I212_Ct_profissionalExecutante)
  protected
    { I212_Ct_profissionalExecutante }
    function Get_NomeExecutante: WideString;
    function Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
    function Get_CodigoCBOS: WideString;
    procedure Set_NomeExecutante(Value: WideString);
    procedure Set_CodigoCBOS(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_situacaoInicial }

  T212_Ct_situacaoInicial = class(TXMLNode, I212_Ct_situacaoInicial)
  protected
    { I212_Ct_situacaoInicial }
    function Get_SituacaoClinica: I212_Ct_situacaoClinica;
    function Get_DoencaPeriodontal: Boolean;
    function Get_AlteracaoTecidoMole: Boolean;
    function Get_Observacao: WideString;
    procedure Set_DoencaPeriodontal(Value: Boolean);
    procedure Set_AlteracaoTecidoMole(Value: Boolean);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_situacaoClinica }

  T212_Ct_situacaoClinica = class(TXMLNodeCollection, I212_Ct_situacaoClinica)
  protected
    { I212_Ct_situacaoClinica }
    function Get_Dentes(Index: Integer): I212_Dentes;
    function Add: I212_Dentes;
    function Insert(const Index: Integer): I212_Dentes;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Dentes }

  T212_Dentes = class(TXMLNode, I212_Dentes)
  protected
    { I212_Dentes }
    function Get_ElementoDentario: Integer;
    function Get_CondicaoClinica: WideString;
    procedure Set_ElementoDentario(Value: Integer);
    procedure Set_CondicaoClinica(Value: WideString);
  end;

{ T212_PlanoTratamento }

  T212_PlanoTratamento = class(TXMLNodeCollection, I212_PlanoTratamento)
  protected
    { I212_PlanoTratamento }
    function Get_ProcedimentoSolicitado(Index: Integer): I212_Ct_procedimentoOdontologia;
    function Add: I212_Ct_procedimentoOdontologia;
    function Insert(const Index: Integer): I212_Ct_procedimentoOdontologia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_procedimentoOdontologia }

  T212_Ct_procedimentoOdontologia = class(TXMLNode, I212_Ct_procedimentoOdontologia)
  protected
    { I212_Ct_procedimentoOdontologia }
    function Get_ProcedimentoOdonto: I212_Ct_tabela;
    function Get_DenteRegiao: I212_Ct_denteRegiao;
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

{ T212_Ct_guiaSolicitacaoProrrogacao }

  T212_Ct_guiaSolicitacaoProrrogacao = class(TXMLNode, I212_Ct_guiaSolicitacaoProrrogacao)
  protected
    { I212_Ct_guiaSolicitacaoProrrogacao }
    function Get_IdentificacaoProrrogacao: I212_Ct_cabecalhoGuia;
    function Get_IdentificacaoGuiaReferencia: I212_Ct_cabecalhoGuia;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_IndicacaoClinica: WideString;
    function Get_ResponsavelAutorizacao: WideString;
    function Get_ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados;
    function Get_Diarias: I212_Ct_diariaProrrogacao;
    function Get_OPMsSolicitadas: I212_Ct_OPMSolicitadas;
    function Get_Observacao: WideString;
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_ResponsavelAutorizacao(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSolicitacaoProrrogacaoList }

  T212_Ct_guiaSolicitacaoProrrogacaoList = class(TXMLNodeCollection, I212_Ct_guiaSolicitacaoProrrogacaoList)
  protected
    { I212_Ct_guiaSolicitacaoProrrogacaoList }
    function Add: I212_Ct_guiaSolicitacaoProrrogacao;
    function Insert(const Index: Integer): I212_Ct_guiaSolicitacaoProrrogacao;
    function Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoProrrogacao;
  end;

{ T212_Ct_solicitaStatusAutorizacao }

  T212_Ct_solicitaStatusAutorizacao = class(TXMLNode, I212_Ct_solicitaStatusAutorizacao)
  protected
    { I212_Ct_solicitaStatusAutorizacao }
    function Get_IdentificacaoAutorizacao: I212_IdentificacaoAutorizacao;
    function Get_DataSolicitaStatus: WideString;
    procedure Set_DataSolicitaStatus(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_IdentificacaoAutorizacao }

  T212_IdentificacaoAutorizacao = class(TXMLNodeCollection, I212_IdentificacaoAutorizacao)
  protected
    { I212_IdentificacaoAutorizacao }
    function Get_IdentificacaoSolicitacao(Index: Integer): I212_Ct_cabecalhoSolicitacao;
    function Add: I212_Ct_cabecalhoSolicitacao;
    function Insert(const Index: Integer): I212_Ct_cabecalhoSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_solicitaElegibilidade }

  T212_Ct_solicitaElegibilidade = class(TXMLNode, I212_Ct_solicitaElegibilidade)
  protected
    { I212_Ct_solicitaElegibilidade }
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_cancelaGuia }

  T212_Ct_cancelaGuia = class(TXMLNode, I212_Ct_cancelaGuia)
  protected
    { I212_Ct_cancelaGuia }
    function Get_DadosPrestador: I212_Ct_contratado;
    function Get_Guia: I212_GuiaCabecalho;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_GuiaCabecalho }

  T212_GuiaCabecalho = class(TXMLNodeCollection, I212_GuiaCabecalho)
  protected
    { I212_Guia }
    function Get_DadosGuia(Index: Integer): I212_Ct_cabecalhoGuia;
    function Add: I212_Ct_cabecalhoGuia;
    function Insert(const Index: Integer): I212_Ct_cabecalhoGuia;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Epilogo }

  T212_Epilogo = class(TXMLNode, I212_Epilogo)
  protected
    { I212_Epilogo }
    function Get_Hash: WideString;
    procedure Set_Hash(Value: WideString);
  end;

{ T212_Ct_atendimentoConsulta }

  T212_Ct_atendimentoConsulta = class(TXMLNode, I212_Ct_atendimentoConsulta)
  protected
    { I212_Ct_atendimentoConsulta }
    function Get_DataAtendimento: WideString;
    function Get_Procedimento: I212_Procedimento;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: Integer;
    procedure Set_DataAtendimento(Value: WideString);
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_atendimentoConsultaReapr }

  T212_Ct_atendimentoConsultaReapr = class(TXMLNode, I212_Ct_atendimentoConsultaReapr)
  protected
    { I212_Ct_atendimentoConsultaReapr }
    function Get_DataAtendimento: WideString;
    function Get_Procedimento: I212_Procedimento;
    function Get_TipoConsulta: WideString;
    function Get_TipoSaida: Integer;
    procedure Set_DataAtendimento(Value: WideString);
    procedure Set_TipoConsulta(Value: WideString);
    procedure Set_TipoSaida(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Procedimento }

  T212_Procedimento = class(TXMLNode, I212_Procedimento)
  protected
    { I212_Procedimento }
    function Get_CodigoTabela: WideString;
    function Get_CodigoProcedimento: WideString;
    function Get_Justificativa: WideString;
    procedure Set_CodigoTabela(Value: WideString);
    procedure Set_CodigoProcedimento(Value: WideString);
    procedure Set_Justificativa(Value: WideString);
  end;

{ T212_Ct_atendimentoOdontologia }

  T212_Ct_atendimentoOdontologia = class(TXMLNode, I212_Ct_atendimentoOdontologia)
  protected
    { I212_Ct_atendimentoOdontologia }
    function Get_DataTerminoTratamento: WideString;
    function Get_TipoAtendimento: WideString;
    procedure Set_DataTerminoTratamento(Value: WideString);
    procedure Set_TipoAtendimento(Value: WideString);
  end;

{ T212_Ct_autorizacaoGuia }

  T212_Ct_autorizacaoGuia = class(TXMLNode, I212_Ct_autorizacaoGuia)
  protected
    { I212_Ct_autorizacaoGuia }
    function Get_DataAutorizacao: WideString;
    function Get_SenhaAutorizacao: WideString;
    function Get_ValidadeSenha: WideString;
    procedure Set_DataAutorizacao(Value: WideString);
    procedure Set_SenhaAutorizacao(Value: WideString);
    procedure Set_ValidadeSenha(Value: WideString);
  end;

{ T212_Ct_autorizacaoGuiaInternacao }

  T212_Ct_autorizacaoGuiaInternacao = class(T212_Ct_autorizacaoGuia, I212_Ct_autorizacaoGuiaInternacao)
  protected
    { I212_Ct_autorizacaoGuiaInternacao }
    function Get_DiasAutorizado: Integer;
    function Get_DataProvavelAdmisHosp: WideString;
    function Get_TipoAcomodacao: WideString;
    procedure Set_DiasAutorizado(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: WideString);
    procedure Set_TipoAcomodacao(Value: WideString);
  end;

{ T212_AutorizacaoServico }

  T212_AutorizacaoServico = class(T212_Ct_autorizacaoProcedimento, I212_AutorizacaoServico)
  protected
    { I212_AutorizacaoServico }
    function Get_TotalOdonto: I212_TotalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada;
  public
    procedure AfterConstruction; override;
  end;

{ T212_AutorizacaoServicoList }

  T212_AutorizacaoServicoList = class(TXMLNodeCollection, I212_AutorizacaoServicoList)
  protected
    { I212_AutorizacaoServicoList }
    function Add: I212_AutorizacaoServico;
    function Insert(const Index: Integer): I212_AutorizacaoServico;
    function Get_Item(Index: Integer): I212_AutorizacaoServico;
  end;

{ T212_ProcedimentosGuia }

  T212_ProcedimentosGuia = class(TXMLNodeCollection, I212_ProcedimentosGuia)
  protected
    { I212_Procedimentos }
    function Get_Procedimento(Index: Integer): I212_Ct_itemSolicitacao;
    function Add: I212_Ct_itemSolicitacao;
    function Insert(const Index: Integer): I212_Ct_itemSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_diagnosticoSaidaInternacao }

  T212_Ct_diagnosticoSaidaInternacao = class(TXMLNode, I212_Ct_diagnosticoSaidaInternacao)
  private
    FDiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
  protected
    { I212_Ct_diagnosticoSaidaInternacao }
    function Get_DiagnosticoPrincipal: I212_Ct_diagnostico;
    function Get_IndicadorAcidente: Integer;
    function Get_DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
    function Get_MotivoSaidaInternacao: WideString;
    function Get_Obito: I212_Ct_obitoInternacao;
    procedure Set_IndicadorAcidente(Value: Integer);
    procedure Set_MotivoSaidaInternacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_obitoInternacao }

  T212_Ct_obitoInternacao = class(TXMLNode, I212_Ct_obitoInternacao)
  protected
    { I212_Ct_obitoInternacao }
    function Get_CID: I212_Ct_diagnostico;
    function Get_NumeroDeclaracao: WideString;
    procedure Set_NumeroDeclaracao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_executanteComplementar }

  T212_Ct_executanteComplementar = class(TXMLNode, I212_Ct_executanteComplementar)
  protected
    { I212_Ct_executanteComplementar }
    function Get_CodigoProfissionalCompl: I212_Ct_identificacaoPrestador;
    function Get_NomeProfissionalCompl: WideString;
    procedure Set_NomeProfissionalCompl(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_identificacaoEquipe }

  T212_Ct_identificacaoEquipe = class(TXMLNodeCollection, I212_Ct_identificacaoEquipe)
  protected
    { I212_Ct_identificacaoEquipe }
    function Get_MembroEquipe(Index: Integer): I212_MembroEquipe;
    function Add: I212_MembroEquipe;
    function Insert(const Index: Integer): I212_MembroEquipe;
  public
    procedure AfterConstruction; override;
  end;

{ T212_MembroEquipe }

  T212_MembroEquipe = class(TXMLNode, I212_MembroEquipe)
  protected
    { I212_MembroEquipe }
    function Get_CodigoProfissional: I212_Ct_identificacaoPrestador;
    function Get_IdentificacaoProfissional: I212_Ct_profissionalExecutante;
    function Get_Cpf: WideString;
    function Get_PosicaoProfissional: Integer;
    procedure Set_Cpf(Value: WideString);
    procedure Set_PosicaoProfissional(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_DadosExecutante }

  T212_DadosExecutante = class(T212_Ct_profissionalExecutante, I212_DadosExecutante)
  protected
    { I212_DadosExecutante }
  end;

{ T212_Ct_internacaoObstetrica }

  T212_Ct_internacaoObstetrica = class(TXMLNode, I212_Ct_internacaoObstetrica)
  protected
    { I212_Ct_internacaoObstetrica }
    function Get_EmGestacao: Boolean;
    function Get_Aborto: Boolean;
    function Get_TranstornoMaternoRelGravidez: Boolean;
    function Get_ComplicacaoPeriodoPuerperio: Boolean;
    function Get_AtendimentoRNSalaParto: Boolean;
    function Get_ComplicacaoNeonatal: Boolean;
    function Get_BaixoPeso: Boolean;
    function Get_PartoCesareo: Boolean;
    function Get_PartoNormal: Boolean;
    function Get_DeclaracoesNascidosVivos: I212_Ct_numeroDN;
    function Get_QtdNascidosVivosTermo: Integer;
    function Get_QtdNascidosMortos: Integer;
    function Get_QtdVivosPrematuros: Integer;
    function Get_ObitoMulher: Integer;
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
    procedure Set_ObitoMulher(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_numeroDN }

  T212_Ct_numeroDN = class(TXMLNode, I212_Ct_numeroDN)
  protected
    { I212_Ct_numeroDN }
    function Get_NumeroDN: WideString;
    procedure Set_NumeroDN(Value: WideString);
  end;

{ T212_Ct_obitoNeonatal }

  T212_Ct_obitoNeonatal = class(TXMLNode, I212_Ct_obitoNeonatal)
  protected
    { I212_Ct_obitoNeonatal }
    function Get_QtdeobitoPrecoce: Integer;
    function Get_QtdeobitoTardio: Integer;
    procedure Set_QtdeobitoPrecoce(Value: Integer);
    procedure Set_QtdeobitoTardio(Value: Integer);
  end;

{ T212_Ct_OPMUtilizada }

  T212_Ct_OPMUtilizada = class(TXMLNode, I212_Ct_OPMUtilizada)
  protected
    { I212_Ct_OPMUtilizada }
    function Get_OPM: I212_OPMIdentificacao;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_OPMIdentificacao }

  T212_OPMIdentificacao = class(TXMLNodeCollection, I212_OPMIdentificacao)
  protected
    { I212_OPM }
    function Get_IdentificacaoOPM(Index: Integer): I212_IdentificacaoOPM;
    function Add: I212_IdentificacaoOPM;
    function Insert(const Index: Integer): I212_IdentificacaoOPM;
  public
    procedure AfterConstruction; override;
  end;

{ T212_IdentificacaoOPM }

  T212_IdentificacaoOPM = class(TXMLNode, I212_IdentificacaoOPM)
  protected
    { I212_IdentificacaoOPM }
    function Get_OPM: I212_Ct_tabela;
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

{ T212_Ct_OPMUtilizadasRevisao }

  T212_Ct_OPMUtilizadasRevisao = class(TXMLNode, I212_Ct_OPMUtilizadasRevisao)
  protected
    { I212_Ct_OPMUtilizadasRevisao }
    function Get_OPMUtilizada: I212_OPMUtilizada;
    function Get_ValorTotalOPM: WideString;
    procedure Set_ValorTotalOPM(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_OPMUtilizada }

  T212_OPMUtilizada = class(TXMLNodeCollection, I212_OPMUtilizada)
  protected
    { I212_OPMUtilizada }
    function Get_OPM(Index: Integer): I212_OPM;
    function Add: I212_OPM;
    function Insert(const Index: Integer): I212_OPM;
  public
    procedure AfterConstruction; override;
  end;

{ T212_OPM }

  T212_OPM = class(TXMLNode, I212_OPM)
  protected
    { I212_OPM }
    function Get_OPM: I212_Ct_tabela;
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

{ T212_Ct_outrasDespesas }

  T212_Ct_outrasDespesas = class(TXMLNode, I212_Ct_outrasDespesas)
  private
    FDespesa: I212_DespesaList;
  protected
    { I212_Ct_outrasDespesas }
    function Get_Despesa: I212_DespesaList;
    function Get_TotalGeralOutrasDespesas: WideString;
    procedure Set_TotalGeralOutrasDespesas(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Despesa }

  T212_Despesa = class(TXMLNode, I212_Despesa)
  protected
    { I212_Despesa }
    function Get_IdentificadorDespesa: I212_Ct_tabela;
    function Get_TipoDespesa: Integer;
    function Get_DataRealizacao: WideString;
    function Get_HoraInicial: WideString;
    function Get_HoraFinal: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_TipoDespesa(Value: Integer);
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

{ T212_DespesaList }

  T212_DespesaList = class(TXMLNodeCollection, I212_DespesaList)
  protected
    { I212_DespesaList }
    function Add: I212_Despesa;
    function Insert(const Index: Integer): I212_Despesa;
    function Get_Item(Index: Integer): I212_Despesa;
  end;

{ T212_Ct_outrasDespesasRevisao }

  T212_Ct_outrasDespesasRevisao = class(TXMLNode, I212_Ct_outrasDespesasRevisao)
  private
    FItensDespesas: I212_ItensDespesasList;
  protected
    { I212_Ct_outrasDespesasRevisao }
    function Get_ItensDespesas: I212_ItensDespesasList;
    function Get_TotalGeralOutrasDespesas: Double;
    procedure Set_TotalGeralOutrasDespesas(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ T212_ItensDespesas }

  T212_ItensDespesas = class(TXMLNode, I212_ItensDespesas)
  protected
    { I212_ItensDespesas }
    function Get_TipoDespesa: Integer;
    function Get_DataRealizacao: WideString;
    function Get_Despesa: I212_Ct_tabela;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Quantidade: WideString;
    function Get_ValorUnitario: Double;
    function Get_ValorTotal: Double;
    function Get_Justificativa: WideString;
    procedure Set_TipoDespesa(Value: Integer);
    procedure Set_DataRealizacao(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Quantidade(Value: WideString);
    procedure Set_ValorUnitario(Value: Double);
    procedure Set_ValorTotal(Value: Double);
    procedure Set_Justificativa(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_ItensDespesasList }

  T212_ItensDespesasList = class(TXMLNodeCollection, I212_ItensDespesasList)
  protected
    { I212_ItensDespesasList }
    function Add: I212_ItensDespesas;
    function Insert(const Index: Integer): I212_ItensDespesas;
    function Get_Item(Index: Integer): I212_ItensDespesas;
  end;

{ T212_Ct_procedimentosRealizados }

  T212_Ct_procedimentosRealizados = class(TXMLNodeCollection, I212_Ct_procedimentosRealizados)
  protected
    { I212_Ct_procedimentosRealizados }
    function Get_ProcedimentoRealizado(Index: Integer): I212_ProcedimentoRealizado;
    function Add: I212_ProcedimentoRealizado;
    function Insert(const Index: Integer): I212_ProcedimentoRealizado;
  public
    procedure AfterConstruction; override;
  end;

{ T212_ProcedimentoRealizado }

  T212_ProcedimentoRealizado = class(TXMLNode, I212_ProcedimentoRealizado)
  protected
    { I212_ProcedimentoRealizado }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_QuantidadeRealizada: WideString;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: WideString);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_procedimentoOdontoRevisao }

  T212_Ct_procedimentoOdontoRevisao = class(TXMLNode, I212_Ct_procedimentoOdontoRevisao)
  protected
    { I212_Ct_procedimentoOdontoRevisao }
    function Get_ProcedimentoOdontologia: I212_ProcedimentoOdontologia;
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

{ T212_ProcedimentoOdontologia }

  T212_ProcedimentoOdontologia = class(T212_Ct_procedimentoOdontologia, I212_ProcedimentoOdontologia)
  protected
    { I212_ProcedimentoOdontologia }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
  end;

{ T212_Ct_procedimentoRealizadoEquipe }

  T212_Ct_procedimentoRealizadoEquipe = class(TXMLNodeCollection, I212_Ct_procedimentoRealizadoEquipe)
  protected
    { I212_Ct_procedimentoRealizadoEquipe }
    function Get_Procedimentos(Index: Integer): I212_ProcedimentosEquipe;
    function Add: I212_ProcedimentosEquipe;
    function Insert(const Index: Integer): I212_ProcedimentosEquipe;
  public
    procedure AfterConstruction; override;
  end;

{ T212_ProcedimentosEquipe }

  T212_ProcedimentosEquipe = class(TXMLNode, I212_ProcedimentosEquipe)
  protected
    { I212_Procedimentos }
    function Get_Equipe: I212_Ct_identificacaoEquipe;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_QuantidadeRealizada: WideString;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: WideString;
    function Get_Valor: WideString;
    function Get_ValorTotal: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: WideString);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: WideString);
    procedure Set_Valor(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_procedimentoRevisao }

  T212_Ct_procedimentoRevisao = class(TXMLNodeCollection, I212_Ct_procedimentoRevisao)
  protected
    { I212_Ct_procedimentoRevisao }
    function Get_ProcedimentosRevisao(Index: Integer): I212_ProcedimentosRevisao;
    function Add: I212_ProcedimentosRevisao;
    function Insert(const Index: Integer): I212_ProcedimentosRevisao;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_procedimentoRevisaoList }

  T212_Ct_procedimentoRevisaoList = class(TXMLNodeCollection, I212_Ct_procedimentoRevisaoList)
  protected
    { I212_Ct_procedimentoRevisaoList }
    function Add: I212_Ct_procedimentoRevisao;
    function Insert(const Index: Integer): I212_Ct_procedimentoRevisao;
    function Get_Item(Index: Integer): I212_Ct_procedimentoRevisao;
  end;

{ T212_ProcedimentosRevisao }

  T212_ProcedimentosRevisao = class(TXMLNode, I212_ProcedimentosRevisao)
  protected
    { I212_ProcedimentosRevisao }
    function Get_Data: WideString;
    function Get_HoraInicio: WideString;
    function Get_HoraFim: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_QuantidadeRealizada: WideString;
    function Get_ViaAcesso: WideString;
    function Get_TecnicaUtilizada: WideString;
    function Get_ReducaoAcrescimo: Double;
    function Get_Valor: Double;
    function Get_ValorTotal: Double;
    function Get_JustificativaRevisao: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_HoraInicio(Value: WideString);
    procedure Set_HoraFim(Value: WideString);
    procedure Set_QuantidadeRealizada(Value: WideString);
    procedure Set_ViaAcesso(Value: WideString);
    procedure Set_TecnicaUtilizada(Value: WideString);
    procedure Set_ReducaoAcrescimo(Value: Double);
    procedure Set_Valor(Value: Double);
    procedure Set_ValorTotal(Value: Double);
    procedure Set_JustificativaRevisao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_situacaoDentes }

  T212_Ct_situacaoDentes = class(TXMLNode, I212_Ct_situacaoDentes)
  protected
    { I212_Ct_situacaoDentes }
    function Get_Dente: Integer;
    function Get_Obturado: Boolean;
    function Get_Careado: Boolean;
    function Get_Perdido: Boolean;
    procedure Set_Dente(Value: Integer);
    procedure Set_Obturado(Value: Boolean);
    procedure Set_Careado(Value: Boolean);
    procedure Set_Perdido(Value: Boolean);
  end;

{ T212_Ct_totaisOdonto }

  T212_Ct_totaisOdonto = class(TXMLNode, I212_Ct_totaisOdonto)
  protected
    { I212_Ct_totaisOdonto }
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

{ T212_Ct_tratamenteOdontoRealizado }

  T212_Ct_tratamenteOdontoRealizado = class(TXMLNode, I212_Ct_tratamenteOdontoRealizado)
  protected
    { I212_Ct_tratamenteOdontoRealizado }
    function Get_Data: WideString;
    function Get_Procedimento: I212_Ct_tabela;
    function Get_Dente: Integer;
    function Get_Face: WideString;
    procedure Set_Data(Value: WideString);
    procedure Set_Dente(Value: Integer);
    procedure Set_Face(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_tratamentoOdontoSolicitado }

  T212_Ct_tratamentoOdontoSolicitado = class(TXMLNode, I212_Ct_tratamentoOdontoSolicitado)
  protected
    { I212_Ct_tratamentoOdontoSolicitado }
    function Get_Procedimento: I212_Ct_tabela;
    function Get_Dente: Integer;
    function Get_Face: WideString;
    procedure Set_Dente(Value: Integer);
    procedure Set_Face(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_valorTotalServicos }

  T212_Ct_valorTotalServicos = class(TXMLNode, I212_Ct_valorTotalServicos)
  protected
    { I212_Ct_valorTotalServicos }
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

{ T212_Guias }

  T212_Guias = class(T212_Ct_guias, I212_Guias)
  protected
    { I212_Guias }
  end;

{ T212_GuiaFaturamento }

  T212_GuiaFaturamento = class(TXMLNode, I212_GuiaFaturamento)
  private
    FGuiaConsulta: I212_Ct_guiaConsultaList;
    FGuiaSP_SADT: I212_Ct_guiaSP_SADTList;
    FGuiaResumoInternacao: I212_Ct_guiaResumoInternacaoList;
    FGuiaHonorarioIndividual: I212_Ct_guiaHonorarioIndividualList;
    FGuiaOdontologia: I212_Ct_guiaOdontologiaList;
  protected
    { I212_GuiaFaturamento }
    function Get_GuiaConsulta: I212_Ct_guiaConsultaList;
    function Get_GuiaSP_SADT: I212_Ct_guiaSP_SADTList;
    function Get_GuiaResumoInternacao: I212_Ct_guiaResumoInternacaoList;
    function Get_GuiaHonorarioIndividual: I212_Ct_guiaHonorarioIndividualList;
    function Get_GuiaOdontologia: I212_Ct_guiaOdontologiaList;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaConsulta }

  T212_Ct_guiaConsulta = class(TXMLNode, I212_Ct_guiaConsulta)
  protected
    { I212_Ct_guiaConsulta }
    function Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_DadosContratado: I212_Ct_contratado;
    function Get_ProfissionalExecutante: I212_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I212_HipoteseDiagnostica;
    function Get_DadosAtendimento: I212_DadosAtendimento;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaConsultaList }

  T212_Ct_guiaConsultaList = class(TXMLNodeCollection, I212_Ct_guiaConsultaList)
  protected
    { I212_Ct_guiaConsultaList }
    function Add: I212_Ct_guiaConsulta;
    function Insert(const Index: Integer): I212_Ct_guiaConsulta;
    function Get_Item(Index: Integer): I212_Ct_guiaConsulta;
  end;

{ T212_HipoteseDiagnostica }

  T212_HipoteseDiagnostica = class(T212_Ct_diagnosticoGuia, I212_HipoteseDiagnostica)
  protected
    { I212_HipoteseDiagnostica }
    function Get_DiagnosticoSecundario: I212_Ct_diagnosticosSecundarios;
  public
    procedure AfterConstruction; override;
  end;

{ T212_DadosAtendimento }

  T212_DadosAtendimento = class(T212_Ct_atendimentoConsulta, I212_DadosAtendimento)
  protected
    { I212_DadosAtendimento }
  end;

{ T212_Ct_guiaSP_SADT }

  T212_Ct_guiaSP_SADT = class(TXMLNode, I212_Ct_guiaSP_SADT)
  protected
    { I212_Ct_guiaSP_SADT }
    function Get_IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_PrestadorExecutante: I212_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoGuia: I212_Ct_diagnosticoGuia;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: Integer;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_OPMUtilizada: I212_Ct_OPMUtilizada;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: Integer);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSP_SADTList }

  T212_Ct_guiaSP_SADTList = class(TXMLNodeCollection, I212_Ct_guiaSP_SADTList)
  protected
    { I212_Ct_guiaSP_SADTList }
    function Add: I212_Ct_guiaSP_SADT;
    function Insert(const Index: Integer): I212_Ct_guiaSP_SADT;
    function Get_Item(Index: Integer): I212_Ct_guiaSP_SADT;
  end;

{ T212_PrestadorExecutante }

  T212_PrestadorExecutante = class(T212_Ct_contratado, I212_PrestadorExecutante)
  protected
    { I212_PrestadorExecutante }
    function Get_ProfissionalExecutanteCompl: I212_ProfissionalExecutanteCompl;
  public
    procedure AfterConstruction; override;
  end;

{ T212_ProfissionalExecutanteCompl }

  T212_ProfissionalExecutanteCompl = class(T212_Ct_profissionalExecutante, I212_ProfissionalExecutanteCompl)
  protected
    { I212_ProfissionalExecutanteCompl }
    function Get_CodigoProfissionalCompl: I212_Ct_identificacaoPrestador;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaResumoInternacao }

  T212_Ct_guiaResumoInternacao = class(TXMLNode, I212_Ct_guiaResumoInternacao)
  protected
    { I212_Ct_guiaResumoInternacao }
    function Get_IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I212_Ct_contratado;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: Integer;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I212_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I212_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe;
    function Get_OPMUtilizadas: I212_Ct_OPMUtilizada;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: Integer);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaResumoInternacaoList }

  T212_Ct_guiaResumoInternacaoList = class(TXMLNodeCollection, I212_Ct_guiaResumoInternacaoList)
  protected
    { I212_Ct_guiaResumoInternacaoList }
    function Add: I212_Ct_guiaResumoInternacao;
    function Insert(const Index: Integer): I212_Ct_guiaResumoInternacao;
    function Get_Item(Index: Integer): I212_Ct_guiaResumoInternacao;
  end;

{ T212_Ct_guiaHonorarioIndividual }

  T212_Ct_guiaHonorarioIndividual = class(TXMLNode, I212_Ct_guiaHonorarioIndividual)
  protected
    { I212_Ct_guiaHonorarioIndividual }
    function Get_IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_Contratado: I212_Ct_contratado;
    function Get_ContratadoExecutante: I212_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizados;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaHonorarioIndividualList }

  T212_Ct_guiaHonorarioIndividualList = class(TXMLNodeCollection, I212_Ct_guiaHonorarioIndividualList)
  protected
    { I212_Ct_guiaHonorarioIndividualList }
    function Add: I212_Ct_guiaHonorarioIndividual;
    function Insert(const Index: Integer): I212_Ct_guiaHonorarioIndividual;
    function Get_Item(Index: Integer): I212_Ct_guiaHonorarioIndividual;
  end;

{ T212_ContratadoExecutante }

  T212_ContratadoExecutante = class(T212_Ct_contratado, I212_ContratadoExecutante)
  protected
    { I212_ContratadoExecutante }
    function Get_IdentificacaoProfissional: I212_Ct_profissionalExecutante;
    function Get_PosicaoProfissional: Integer;
    function Get_TipoAcomodacao: WideString;
    procedure Set_PosicaoProfissional(Value: Integer);
    procedure Set_TipoAcomodacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_ProcedimentosExamesRealizados }

  T212_ProcedimentosExamesRealizados = class(T212_Ct_procedimentosRealizados, I212_ProcedimentosExamesRealizados)
  protected
    { I212_ProcedimentosExamesRealizados }
    function Get_TotalGeralHonorario: WideString;
    procedure Set_TotalGeralHonorario(Value: WideString);
  end;

{ T212_ProcedimentosExamesRealizadosReapresentacao }

  T212_ProcedimentosExamesRealizadosReapresentacao = class(T212_ct_procedimentoRevisao, I212_ProcedimentosExamesRealizadosReapresentacao)
  protected
    { I212_ProcedimentosExamesRealizadosReapresentacao }
    function Get_TotalGeralHonorario: WideString;
    procedure Set_TotalGeralHonorario(Value: WideString);
  end;

{ T212_Ct_guiaOdontologia }

  T212_Ct_guiaOdontologia = class(TXMLNode, I212_Ct_guiaOdontologia)
  protected
    { I212_Ct_guiaOdontologia }
    function Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I212_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I212_DadosContratadoExecutante;
    function Get_ProcedimentosExecutados: I212_ProcedimentosExecutadosOdonto;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_DadosAtendimento: I212_Ct_atendimentoOdontologia;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaOdontologiaList }

  T212_Ct_guiaOdontologiaList = class(TXMLNodeCollection, I212_Ct_guiaOdontologiaList)
  protected
    { I212_Ct_guiaOdontologiaList }
    function Add: I212_Ct_guiaOdontologia;
    function Insert(const Index: Integer): I212_Ct_guiaOdontologia;
    function Get_Item(Index: Integer): I212_Ct_guiaOdontologia;
  end;

{ T212_DadosContratadoExecutante }

  T212_DadosContratadoExecutante = class(TXMLNode, I212_DadosContratadoExecutante)
  protected
    { I212_DadosContratadoExecutante }
    function Get_DadosContratado: I212_DadosContratado;
    function Get_DadosExecutante: I212_Ct_profissionalExecutante;
  public
    procedure AfterConstruction; override;
  end;

{ T212_ProcedimentosExecutados }

  T212_ProcedimentosExecutados = class(TXMLNode, I212_ProcedimentosExecutados)
  private
    FProcedimentoExecutado: I212_ProcedimentoExecutadoList;
  protected
    { I212_ProcedimentosExecutados }
    function Get_ProcedimentoExecutado: I212_ProcedimentoExecutadoList;
    function Get_QuantidadeTotalUS: WideString;
    function Get_ValorTotal: WideString;
    function Get_TotalFranquiaCoparticipacao: WideString;
    procedure Set_QuantidadeTotalUS(Value: WideString);
    procedure Set_ValorTotal(Value: WideString);
    procedure Set_TotalFranquiaCoparticipacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_ProcedimentoExecutado }

  T212_ProcedimentoExecutado = class(T212_Ct_procedimentoOdontologia, I212_ProcedimentoExecutado)
  protected
    { I212_ProcedimentoExecutado }
    function Get_DataRealizacao: WideString;
    procedure Set_DataRealizacao(Value: WideString);
  end;

{ T212_ProcedimentoExecutadoList }

  T212_ProcedimentoExecutadoList = class(TXMLNodeCollection, I212_ProcedimentoExecutadoList)
  protected
    { I212_ProcedimentoExecutadoList }
    function Add: I212_ProcedimentoExecutado;
    function Insert(const Index: Integer): I212_ProcedimentoExecutado;
    function Get_Item(Index: Integer): I212_ProcedimentoExecutado;
  end;

{ T212_GuiaRevisaoGlosa }

  T212_GuiaRevisaoGlosa = class(TXMLNode, I212_GuiaRevisaoGlosa)
  private
    FGuiaConsultaReapresentacao: I212_Ct_guiaConsultaReapresentacaoList;
    FGuiaSP_SADTReapresentacao: I212_Ct_guiaSP_SADTReapresentacaoList;
    FGuiaResumoInternacaoReapresentacao: I212_Ct_guiaResumoInternacaoReapresentacaoList;
    FGuiaHonorarioIndividualReapresentacao: I212_Ct_guiaHonorarioIndividualReapresentacaoList;
    FGuiaOdontologiaReapresentacao: I212_Ct_guiaTratamentoOdontologicoReapresentacaoList;
  protected
    { I212_GuiaRevisaoGlosa }
    function Get_GuiaConsultaReapresentacao: I212_Ct_guiaConsultaReapresentacaoList;
    function Get_GuiaSP_SADTReapresentacao: I212_Ct_guiaSP_SADTReapresentacaoList;
    function Get_GuiaResumoInternacaoReapresentacao: I212_Ct_guiaResumoInternacaoReapresentacaoList;
    function Get_GuiaHonorarioIndividualReapresentacao: I212_Ct_guiaHonorarioIndividualReapresentacaoList;
    function Get_GuiaOdontologiaReapresentacao: I212_Ct_guiaTratamentoOdontologicoReapresentacaoList;
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaConsultaReapresentacao }

  T212_Ct_guiaConsultaReapresentacao = class(TXMLNode, I212_Ct_guiaConsultaReapresentacao)
  protected
    { I212_Ct_guiaConsultaReapresentacao }
    function Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
    function Get_Beneficiario: I212_Ct_beneficiario;
    function Get_DadosContratado: I212_Ct_contratado;
    function Get_ProfissionalExecutante: I212_Ct_identificacaoProfissional;
    function Get_HipoteseDiagnostica: I212_HipoteseDiagnostica;
    function Get_DadosAtendimento: I212_Ct_atendimentoConsultaReapr;
    function Get_Observacao: WideString;
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaConsultaReapresentacaoList }

  T212_Ct_guiaConsultaReapresentacaoList = class(TXMLNodeCollection, I212_Ct_guiaConsultaReapresentacaoList)
  protected
    { I212_Ct_guiaConsultaReapresentacaoList }
    function Add: I212_Ct_guiaConsultaReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaConsultaReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaConsultaReapresentacao;
  end;

{ T212_Ct_guiaSP_SADTReapresentacao }

  T212_Ct_guiaSP_SADTReapresentacao = class(TXMLNode, I212_Ct_guiaSP_SADTReapresentacao)
  private
    FProcedimentosRealizados: I212_Ct_procedimentoRevisaoList;
  protected
    { I212_Ct_guiaSP_SADTReapresentacao }
    function Get_IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_DadosSolicitante: I212_Ct_solicitante;
    function Get_PrestadorExecutante: I212_PrestadorExecutante;
    function Get_IndicacaoClinica: WideString;
    function Get_CaraterAtendimento: WideString;
    function Get_DataHoraAtendimento: WideString;
    function Get_DiagnosticoGuia: I212_Ct_diagnosticoGuia;
    function Get_TipoSaida: WideString;
    function Get_TipoAtendimento: Integer;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRevisaoList;
    function Get_OutrasDespesas: I212_Ct_outrasDespesasRevisao;
    function Get_OPMUtilizada: I212_Ct_OPMUtilizadasRevisao;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_IndicacaoClinica(Value: WideString);
    procedure Set_CaraterAtendimento(Value: WideString);
    procedure Set_DataHoraAtendimento(Value: WideString);
    procedure Set_TipoSaida(Value: WideString);
    procedure Set_TipoAtendimento(Value: Integer);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaSP_SADTReapresentacaoList }

  T212_Ct_guiaSP_SADTReapresentacaoList = class(TXMLNodeCollection, I212_Ct_guiaSP_SADTReapresentacaoList)
  protected
    { I212_Ct_guiaSP_SADTReapresentacaoList }
    function Add: I212_Ct_guiaSP_SADTReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaSP_SADTReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaSP_SADTReapresentacao;
  end;

{ T212_Ct_guiaResumoInternacaoReapresentacao }

  T212_Ct_guiaResumoInternacaoReapresentacao = class(TXMLNode, I212_Ct_guiaResumoInternacaoReapresentacao)
  protected
    { I212_Ct_guiaResumoInternacaoReapresentacao }
    function Get_IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_IdentificacaoExecutante: I212_Ct_contratado;
    function Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
    function Get_CaraterInternacao: WideString;
    function Get_Acomodacao: WideString;
    function Get_DataHoraInternacao: WideString;
    function Get_DataHoraSaidaInternacao: WideString;
    function Get_TipoInternacao: Integer;
    function Get_RegimeInternacao: WideString;
    function Get_InternacaoObstetrica: I212_Ct_internacaoObstetrica;
    function Get_ObitoNeonatal: I212_Ct_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: I212_Ct_procedimentoRevisao;
    function Get_Ct_OPMUtilizadas: I212_Ct_OPMUtilizadasRevisao;
    function Get_OutrasDespesas: I212_Ct_outrasDespesasRevisao;
    function Get_TipoFaturamento: WideString;
    function Get_ValorTotal: I212_Ct_valorTotalServicos;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaSolicitacao(Value: WideString);
    procedure Set_CaraterInternacao(Value: WideString);
    procedure Set_Acomodacao(Value: WideString);
    procedure Set_DataHoraInternacao(Value: WideString);
    procedure Set_DataHoraSaidaInternacao(Value: WideString);
    procedure Set_TipoInternacao(Value: Integer);
    procedure Set_RegimeInternacao(Value: WideString);
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaResumoInternacaoReapresentacaoList }

  T212_Ct_guiaResumoInternacaoReapresentacaoList = class(TXMLNodeCollection, I212_Ct_guiaResumoInternacaoReapresentacaoList)
  protected
    { I212_Ct_guiaResumoInternacaoReapresentacaoList }
    function Add: I212_Ct_guiaResumoInternacaoReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaResumoInternacaoReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaResumoInternacaoReapresentacao;
  end;

{ T212_Ct_guiaHonorarioIndividualReapresentacao }

  T212_Ct_guiaHonorarioIndividualReapresentacao = class(TXMLNode, I212_Ct_guiaHonorarioIndividualReapresentacao)
  protected
    { I212_Ct_guiaHonorarioIndividualReapresentacao }
    function Get_IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: WideString;
    function Get_DadosBeneficiario: I212_Ct_beneficiario;
    function Get_Contratado: I212_Ct_contratado;
    function Get_ContratadoExecutante: I212_ContratadoExecutante;
    function Get_ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizadosReapresentacao;
    function Get_Observacao: WideString;
    procedure Set_NumeroGuiaPrincipal(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaHonorarioIndividualReapresentacaoList }

  T212_Ct_guiaHonorarioIndividualReapresentacaoList = class(TXMLNodeCollection, I212_Ct_guiaHonorarioIndividualReapresentacaoList)
  protected
    { I212_Ct_guiaHonorarioIndividualReapresentacaoList }
    function Add: I212_Ct_guiaHonorarioIndividualReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaHonorarioIndividualReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaHonorarioIndividualReapresentacao;
  end;

{ T212_Ct_guiaTratamentoOdontologicoReapresentacao }

  T212_Ct_guiaTratamentoOdontologicoReapresentacao = class(TXMLNode, I212_Ct_guiaTratamentoOdontologicoReapresentacao)
  protected
    { I212_Ct_guiaTratamentoOdontologicoReapresentacao }
    function Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: I212_DadosBeneficiario;
    function Get_DadosContratadoExecutante: I212_DadosContratadoExecutante;
    function Get_OutrasDespesas: I212_Ct_outrasDespesas;
    function Get_DadosAtendimento: I212_Ct_atendimentoOdontologia;
    function Get_ProcedimentosExecutados: I212_ProcedimentosExecutados;
    function Get_TipoFaturamento: WideString;
    function Get_Observacao: WideString;
    procedure Set_TipoFaturamento(Value: WideString);
    procedure Set_Observacao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ T212_Ct_guiaTratamentoOdontologicoReapresentacaoList }

  T212_Ct_guiaTratamentoOdontologicoReapresentacaoList = class(TXMLNodeCollection, I212_Ct_guiaTratamentoOdontologicoReapresentacaoList)
  protected
    { I212_Ct_guiaTratamentoOdontologicoReapresentacaoList }
    function Add: I212_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Insert(const Index: Integer): I212_Ct_guiaTratamentoOdontologicoReapresentacao;
    function Get_Item(Index: Integer): I212_Ct_guiaTratamentoOdontologicoReapresentacao;
  end;

{ T212_ProcedimentosExecutadosOdonto }

  T212_ProcedimentosExecutadosOdonto = class(TXMLNodeCollection, I212_ProcedimentosExecutadosOdonto)
  protected
    { I212_ProcedimentosExecutados }
    function Get_ProcedimentoExecutado(Index: Integer): I212_Ct_procedimentoOdontoRevisao;
    function Add: I212_Ct_procedimentoOdontoRevisao;
    function Insert(const Index: Integer): I212_Ct_procedimentoOdontoRevisao;
  public
    procedure AfterConstruction; override;
  end;

{ T212_St_tipoGlosaList }

  T212_St_tipoGlosaList = class(TXMLNodeCollection, I212_St_tipoGlosaList)
  protected
    { I212_St_tipoGlosaList }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
  end;

{ Global Functions }

function GetmensagemTISS(Doc: IXMLDocument): I212_MensagemTISS;
function LoadmensagemTISS(const FileName: WideString): I212_MensagemTISS;
function NewmensagemTISS: I212_MensagemTISS;

const
  TargetNamespace = 'http://www.ans.gov.br/padroes/tiss/schemas';

implementation

{ Global Functions }

function GetmensagemTISS(Doc: IXMLDocument): I212_MensagemTISS;
begin
  Result := Doc.GetDocBinding('ans:mensagemTISS', T212_MensagemTISS, TargetNamespace) as I212_MensagemTISS;

  Doc.Version := '1.0';
  Doc.Encoding := 'iso-8859-1';
end;

function LoadmensagemTISS(const FileName: WideString): I212_MensagemTISS;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('mensagemTISS', T212_MensagemTISS, TargetNamespace) as I212_MensagemTISS;
end;

function NewmensagemTISS: I212_MensagemTISS;
begin
  Result := NewXMLDocument.GetDocBinding('mensagemTISS', T212_MensagemTISS, TargetNamespace) as I212_MensagemTISS;
end;

{ T212_Ct_diariaProrrogacao }

function T212_Ct_diariaProrrogacao.Get_TipoAcomodacao: WideString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure T212_Ct_diariaProrrogacao.Set_TipoAcomodacao(Value: WideString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

function T212_Ct_diariaProrrogacao.Get_QuantidadeDiaria: WideString;
begin
  Result := ChildNodes['quantidadeDiaria'].Text;
end;

procedure T212_Ct_diariaProrrogacao.Set_QuantidadeDiaria(Value: WideString);
begin
  ChildNodes['quantidadeDiaria'].NodeValue := Value;
end;

{ T212_Ct_motivoGlosa }

function T212_Ct_motivoGlosa.Get_CodigoGlosa: WideString;
begin
  Result := ChildNodes['codigoGlosa'].Text;
end;

procedure T212_Ct_motivoGlosa.Set_CodigoGlosa(Value: WideString);
begin
  ChildNodes['codigoGlosa'].NodeValue := Value;
end;

function T212_Ct_motivoGlosa.Get_DescricaoGlosa: WideString;
begin
  Result := ChildNodes['descricaoGlosa'].Text;
end;

procedure T212_Ct_motivoGlosa.Set_DescricaoGlosa(Value: WideString);
begin
  ChildNodes['descricaoGlosa'].NodeValue := Value;
end;

{ T212_Ct_motivoGlosaList }

function T212_Ct_motivoGlosaList.Add: I212_Ct_motivoGlosa;
begin
  Result := AddItem(-1) as I212_Ct_motivoGlosa;
end;

function T212_Ct_motivoGlosaList.Insert(const Index: Integer): I212_Ct_motivoGlosa;
begin
  Result := AddItem(Index) as I212_Ct_motivoGlosa;
end;
function T212_Ct_motivoGlosaList.Get_Item(Index: Integer): I212_Ct_motivoGlosa;
begin
  Result := List[Index] as I212_Ct_motivoGlosa;
end;

{ T212_MensagemTISS }

procedure T212_MensagemTISS.AfterConstruction;
begin
  RegisterChildNode('cabecalho', T212_CabecalhoTransacao);
  RegisterChildNode('operadoraParaPrestador', T212_OperadoraParaPrestador);
  RegisterChildNode('prestadorParaOperadora', T212_PrestadorParaOperadora);
  RegisterChildNode('epilogo', T212_Epilogo);
  inherited;
end;

function T212_MensagemTISS.Get_Cabecalho: I212_CabecalhoTransacao;
begin
  Result := ChildNodes['cabecalho'] as I212_CabecalhoTransacao;
end;

function T212_MensagemTISS.Get_OperadoraParaPrestador: I212_OperadoraParaPrestador;
begin
  Result := ChildNodes['operadoraParaPrestador'] as I212_OperadoraParaPrestador;
end;

function T212_MensagemTISS.Get_PrestadorParaOperadora: I212_PrestadorParaOperadora;
begin
  Result := ChildNodes['prestadorParaOperadora'] as I212_PrestadorParaOperadora;
end;

function T212_MensagemTISS.Get_Epilogo: I212_Epilogo;
begin
  Result := ChildNodes['epilogo'] as I212_Epilogo;
end;

{ T212_CabecalhoTransacao }

procedure T212_CabecalhoTransacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoTransacao', T212_IdentificacaoTransacao);
  RegisterChildNode('falhaNegocio', T212_FalhaNegocio);
  RegisterChildNode('origem', T212_Origem);
  RegisterChildNode('destino', T212_Destino);
  inherited;
end;

function T212_CabecalhoTransacao.Get_IdentificacaoTransacao: I212_IdentificacaoTransacao;
begin
  Result := ChildNodes['identificacaoTransacao'] as I212_IdentificacaoTransacao;
end;

function T212_CabecalhoTransacao.Get_FalhaNegocio: I212_FalhaNegocio;
begin
  Result := ChildNodes['falhaNegocio'] as I212_FalhaNegocio;
end;

function T212_CabecalhoTransacao.Get_Origem: I212_Origem;
begin
  Result := ChildNodes['origem'] as I212_Origem;
end;

function T212_CabecalhoTransacao.Get_Destino: I212_Destino;
begin
  Result := ChildNodes['destino'] as I212_Destino;
end;

function T212_CabecalhoTransacao.Get_VersaoPadrao: WideString;
begin
  Result := ChildNodes['versaoPadrao'].Text;
end;

procedure T212_CabecalhoTransacao.Set_VersaoPadrao(Value: WideString);
begin
  ChildNodes['versaoPadrao'].NodeValue := Value;
end;

{ T212_IdentificacaoTransacao }

function T212_IdentificacaoTransacao.Get_TipoTransacao: WideString;
begin
  Result := ChildNodes['tipoTransacao'].Text;
end;

procedure T212_IdentificacaoTransacao.Set_TipoTransacao(Value: WideString);
begin
  ChildNodes['tipoTransacao'].NodeValue := Value;
end;

function T212_IdentificacaoTransacao.Get_SequencialTransacao: Integer;
begin
  Result := ChildNodes['sequencialTransacao'].NodeValue;
end;

procedure T212_IdentificacaoTransacao.Set_SequencialTransacao(Value: Integer);
begin
  ChildNodes['sequencialTransacao'].NodeValue := Value;
end;

function T212_IdentificacaoTransacao.Get_DataRegistroTransacao: WideString;
begin
  Result := ChildNodes['dataRegistroTransacao'].Text;
end;

procedure T212_IdentificacaoTransacao.Set_DataRegistroTransacao(Value: WideString);
begin
  ChildNodes['dataRegistroTransacao'].NodeValue := Value;
end;

function T212_IdentificacaoTransacao.Get_HoraRegistroTransacao: WideString;
begin
  Result := ChildNodes['horaRegistroTransacao'].Text;
end;

procedure T212_IdentificacaoTransacao.Set_HoraRegistroTransacao(Value: WideString);
begin
  ChildNodes['horaRegistroTransacao'].NodeValue := Value;
end;

{ T212_FalhaNegocio }

function T212_FalhaNegocio.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_FalhaNegocio.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Origem }

procedure T212_Origem.AfterConstruction;
begin
  RegisterChildNode('codigoPrestadorNaOperadora', T212_Ct_identificacaoPrestador);
  inherited;
end;

function T212_Origem.Get_CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'] as I212_Ct_identificacaoPrestador;
end;

function T212_Origem.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Origem.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

{ T212_Ct_identificacaoPrestador }

function T212_Ct_identificacaoPrestador.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T212_Ct_identificacaoPrestador.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function T212_Ct_identificacaoPrestador.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T212_Ct_identificacaoPrestador.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function T212_Ct_identificacaoPrestador.Get_CodigoPrestadorNaOperadora: WideString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure T212_Ct_identificacaoPrestador.Set_CodigoPrestadorNaOperadora(Value: WideString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

{ T212_Destino }

procedure T212_Destino.AfterConstruction;
begin
  RegisterChildNode('codigoPrestadorNaOperadora', T212_Ct_identificacaoPrestador);
  inherited;
end;

function T212_Destino.Get_CodigoPrestadorNaOperadora: I212_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'] as I212_Ct_identificacaoPrestador;
end;

function T212_Destino.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Destino.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

{ T212_OperadoraParaPrestador }

procedure T212_OperadoraParaPrestador.AfterConstruction;
begin
  RegisterChildNode('demonstrativosRetorno', T212_DemonstrativosRetorno);
  RegisterChildNode('protocoloRecebimento', T212_Ct_protocoloRecebimento);
  RegisterChildNode('situacaoProtocolo', T212_Ct_StatusProtocolo);
  RegisterChildNode('autorizacaoServico', T212_AutorizacaoServico);
  RegisterChildNode('situacaoAutorizacao', T212_Ct_situacaoAutorizacao);
  RegisterChildNode('respostaElegibilidade', T212_Ct_retornoElegibilidade);
  RegisterChildNode('reciboCancelaGuia', T212_Ct_reciboCancelaGuia);
  FAutorizacaoServico := CreateCollection(T212_AutorizacaoServicoList, I212_AutorizacaoServico, 'autorizacaoServico') as I212_AutorizacaoServicoList;
  inherited;
end;

function T212_OperadoraParaPrestador.Get_DemonstrativosRetorno: I212_DemonstrativosRetorno;
begin
  Result := ChildNodes['demonstrativosRetorno'] as I212_DemonstrativosRetorno;
end;

function T212_OperadoraParaPrestador.Get_ProtocoloRecebimento: I212_Ct_protocoloRecebimento;
begin
  Result := ChildNodes['protocoloRecebimento'] as I212_Ct_protocoloRecebimento;
end;

function T212_OperadoraParaPrestador.Get_SituacaoProtocolo: I212_Ct_StatusProtocolo;
begin
  Result := ChildNodes['situacaoProtocolo'] as I212_Ct_StatusProtocolo;
end;

function T212_OperadoraParaPrestador.Get_AutorizacaoServico: I212_AutorizacaoServicoList;
begin
  Result := FAutorizacaoServico;
end;

function T212_OperadoraParaPrestador.Get_SituacaoAutorizacao: I212_Ct_situacaoAutorizacao;
begin
  Result := ChildNodes['situacaoAutorizacao'] as I212_Ct_situacaoAutorizacao;
end;

function T212_OperadoraParaPrestador.Get_RespostaElegibilidade: I212_Ct_retornoElegibilidade;
begin
  Result := ChildNodes['respostaElegibilidade'] as I212_Ct_retornoElegibilidade;
end;

function T212_OperadoraParaPrestador.Get_ReciboCancelaGuia: I212_Ct_reciboCancelaGuia;
begin
  Result := ChildNodes['reciboCancelaGuia'] as I212_Ct_reciboCancelaGuia;
end;

{ T212_DemonstrativosRetorno }

procedure T212_DemonstrativosRetorno.AfterConstruction;
begin
  RegisterChildNode('demonstrativoAnaliseConta', T212_Ct_demonstrativoAnaliseConta);
  RegisterChildNode('demonstrativoOdontologia', T212_Ct_demonstrativoOdontologia);
  RegisterChildNode('demonstrativoPagamento', T212_Ct_demonstrativoPagamento);
  FDemonstrativoAnaliseConta := CreateCollection(T212_Ct_demonstrativoAnaliseContaList, I212_Ct_demonstrativoAnaliseConta, 'demonstrativoAnaliseConta') as I212_Ct_demonstrativoAnaliseContaList;
  FDemonstrativoOdontologia := CreateCollection(T212_Ct_demonstrativoOdontologiaList, I212_Ct_demonstrativoOdontologia, 'demonstrativoOdontologia') as I212_Ct_demonstrativoOdontologiaList;
  FDemonstrativoPagamento := CreateCollection(T212_Ct_demonstrativoPagamentoList, I212_Ct_demonstrativoPagamento, 'demonstrativoPagamento') as I212_Ct_demonstrativoPagamentoList;
  inherited;
end;

function T212_DemonstrativosRetorno.Get_DemonstrativoAnaliseConta: I212_Ct_demonstrativoAnaliseContaList;
begin
  Result := FDemonstrativoAnaliseConta;
end;

function T212_DemonstrativosRetorno.Get_DemonstrativoOdontologia: I212_Ct_demonstrativoOdontologiaList;
begin
  Result := FDemonstrativoOdontologia;
end;

function T212_DemonstrativosRetorno.Get_DemonstrativoPagamento: I212_Ct_demonstrativoPagamentoList;
begin
  Result := FDemonstrativoPagamento;
end;

{ T212_Ct_demonstrativoAnaliseConta }

procedure T212_Ct_demonstrativoAnaliseConta.AfterConstruction;
begin
  RegisterChildNode('identificacaoOperadora', T212_Ct_identificacaoOperadora);
  RegisterChildNode('cabecalhoDemonstrativo', T212_Ct_cabecalhoDemonstrativo);
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  RegisterChildNode('fatura', T212_Fatura);
  inherited;
end;

function T212_Ct_demonstrativoAnaliseConta.Get_IdentificacaoOperadora: I212_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['identificacaoOperadora'] as I212_Ct_identificacaoOperadora;
end;

function T212_Ct_demonstrativoAnaliseConta.Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as I212_Ct_cabecalhoDemonstrativo;
end;

function T212_Ct_demonstrativoAnaliseConta.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_demonstrativoAnaliseConta.Get_Fatura: I212_Fatura;
begin
  Result := ChildNodes['fatura'] as I212_Fatura;
end;

function T212_Ct_demonstrativoAnaliseConta.Get_ValorProcessadoGeral: Double;
begin
  Result := ChildNodes['valorProcessadoGeral'].NodeValue;
end;

procedure T212_Ct_demonstrativoAnaliseConta.Set_ValorProcessadoGeral(Value: Double);
begin
  ChildNodes['valorProcessadoGeral'].NodeValue := Value;
end;

function T212_Ct_demonstrativoAnaliseConta.Get_ValorLiberadoGeral: Double;
begin
  Result := ChildNodes['valorLiberadoGeral'].NodeValue;
end;

procedure T212_Ct_demonstrativoAnaliseConta.Set_ValorLiberadoGeral(Value: Double);
begin
  ChildNodes['valorLiberadoGeral'].NodeValue := Value;
end;

function T212_Ct_demonstrativoAnaliseConta.Get_ValorGlosaGeral: Double;
begin
  Result := ChildNodes['valorGlosaGeral'].NodeValue;
end;

procedure T212_Ct_demonstrativoAnaliseConta.Set_ValorGlosaGeral(Value: Double);
begin
  ChildNodes['valorGlosaGeral'].NodeValue := Value;
end;

{ T212_Ct_demonstrativoAnaliseContaList }

function T212_Ct_demonstrativoAnaliseContaList.Add: I212_Ct_demonstrativoAnaliseConta;
begin
  Result := AddItem(-1) as I212_Ct_demonstrativoAnaliseConta;
end;

function T212_Ct_demonstrativoAnaliseContaList.Insert(const Index: Integer): I212_Ct_demonstrativoAnaliseConta;
begin
  Result := AddItem(Index) as I212_Ct_demonstrativoAnaliseConta;
end;
function T212_Ct_demonstrativoAnaliseContaList.Get_Item(Index: Integer): I212_Ct_demonstrativoAnaliseConta;
begin
  Result := List[Index] as I212_Ct_demonstrativoAnaliseConta;
end;

{ T212_Ct_identificacaoOperadora }

function T212_Ct_identificacaoOperadora.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Ct_identificacaoOperadora.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T212_Ct_identificacaoOperadora.Get_NomeOperadora: WideString;
begin
  Result := ChildNodes['nomeOperadora'].Text;
end;

procedure T212_Ct_identificacaoOperadora.Set_NomeOperadora(Value: WideString);
begin
  ChildNodes['nomeOperadora'].NodeValue := Value;
end;

function T212_Ct_identificacaoOperadora.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T212_Ct_identificacaoOperadora.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

{ T212_Ct_cabecalhoDemonstrativo }

function T212_Ct_cabecalhoDemonstrativo.Get_NumeroDemonstrativo: WideString;
begin
  Result := ChildNodes['numeroDemonstrativo'].Text;
end;

procedure T212_Ct_cabecalhoDemonstrativo.Set_NumeroDemonstrativo(Value: WideString);
begin
  ChildNodes['numeroDemonstrativo'].NodeValue := Value;
end;

function T212_Ct_cabecalhoDemonstrativo.Get_DataEmissao: WideString;
begin
  Result := ChildNodes['dataEmissao'].Text;
end;

procedure T212_Ct_cabecalhoDemonstrativo.Set_DataEmissao(Value: WideString);
begin
  ChildNodes['dataEmissao'].NodeValue := Value;
end;

{ T212_Ct_contratado }

procedure T212_Ct_contratado.AfterConstruction;
begin
  RegisterChildNode('identificacao', T212_Ct_identificacaoPrestador);
  RegisterChildNode('enderecoContratado', T212_Ct_endereco);
  inherited;
end;

function T212_Ct_contratado.Get_Identificacao: I212_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['identificacao'] as I212_Ct_identificacaoPrestador;
end;

function T212_Ct_contratado.Get_NomeContratado: WideString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure T212_Ct_contratado.Set_NomeContratado(Value: WideString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function T212_Ct_contratado.Get_EnderecoContratado: I212_Ct_endereco;
begin
  Result := ChildNodes['enderecoContratado'] as I212_Ct_endereco;
end;

function T212_Ct_contratado.Get_NumeroCNES: WideString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure T212_Ct_contratado.Set_NumeroCNES(Value: WideString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ T212_Ct_endereco }

function T212_Ct_endereco.Get_TipoLogradouro: WideString;
begin
  Result := ChildNodes['tipoLogradouro'].Text;
end;

procedure T212_Ct_endereco.Set_TipoLogradouro(Value: WideString);
begin
  ChildNodes['tipoLogradouro'].NodeValue := Value;
end;

function T212_Ct_endereco.Get_Logradouro: WideString;
begin
  Result := ChildNodes['logradouro'].Text;
end;

procedure T212_Ct_endereco.Set_Logradouro(Value: WideString);
begin
  ChildNodes['logradouro'].NodeValue := Value;
end;

function T212_Ct_endereco.Get_Numero: WideString;
begin
  Result := ChildNodes['numero'].Text;
end;

procedure T212_Ct_endereco.Set_Numero(Value: WideString);
begin
  ChildNodes['numero'].NodeValue := Value;
end;

function T212_Ct_endereco.Get_Complemento: WideString;
begin
  Result := ChildNodes['complemento'].Text;
end;

procedure T212_Ct_endereco.Set_Complemento(Value: WideString);
begin
  ChildNodes['complemento'].NodeValue := Value;
end;

function T212_Ct_endereco.Get_CodigoIBGEMunicipio: WideString;
begin
  Result := ChildNodes['codigoIBGEMunicipio'].Text;
end;

procedure T212_Ct_endereco.Set_CodigoIBGEMunicipio(Value: WideString);
begin
  ChildNodes['codigoIBGEMunicipio'].NodeValue := Value;
end;

function T212_Ct_endereco.Get_Municipio: WideString;
begin
  Result := ChildNodes['municipio'].Text;
end;

procedure T212_Ct_endereco.Set_Municipio(Value: WideString);
begin
  ChildNodes['municipio'].NodeValue := Value;
end;

function T212_Ct_endereco.Get_CodigoUF: WideString;
begin
  Result := ChildNodes['codigoUF'].Text;
end;

procedure T212_Ct_endereco.Set_CodigoUF(Value: WideString);
begin
  ChildNodes['codigoUF'].NodeValue := Value;
end;

function T212_Ct_endereco.Get_Cep: Integer;
begin
  Result := ChildNodes['cep'].NodeValue;
end;

procedure T212_Ct_endereco.Set_Cep(Value: Integer);
begin
  ChildNodes['cep'].NodeValue := Value;
end;

{ T212_Fatura }

procedure T212_Fatura.AfterConstruction;
begin
  RegisterChildNode('dadosFatura', T212_Ct_dadosConta);
  inherited;
end;

function T212_Fatura.Get_DadosFatura: I212_Ct_dadosConta;
begin
  Result := ChildNodes['dadosFatura'] as I212_Ct_dadosConta;
end;

{ T212_Ct_dadosConta }

procedure T212_Ct_dadosConta.AfterConstruction;
begin
  RegisterChildNode('lote', T212_Lote);
  inherited;
end;

function T212_Ct_dadosConta.Get_NumeroFatura: WideString;
begin
  Result := ChildNodes['numeroFatura'].Text;
end;

procedure T212_Ct_dadosConta.Set_NumeroFatura(Value: WideString);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function T212_Ct_dadosConta.Get_Lote: I212_Lote;
begin
  Result := ChildNodes['lote'] as I212_Lote;
end;

function T212_Ct_dadosConta.Get_ValorProcessadoFatura: Double;
begin
  Result := ChildNodes['valorProcessadoFatura'].NodeValue;
end;

procedure T212_Ct_dadosConta.Set_ValorProcessadoFatura(Value: Double);
begin
  ChildNodes['valorProcessadoFatura'].NodeValue := Value;
end;

function T212_Ct_dadosConta.Get_ValorLiberadoFatura: Double;
begin
  Result := ChildNodes['valorLiberadoFatura'].NodeValue;
end;

procedure T212_Ct_dadosConta.Set_ValorLiberadoFatura(Value: Double);
begin
  ChildNodes['valorLiberadoFatura'].NodeValue := Value;
end;

function T212_Ct_dadosConta.Get_ValorGlosaFatura: Double;
begin
  Result := ChildNodes['valorGlosaFatura'].NodeValue;
end;

procedure T212_Ct_dadosConta.Set_ValorGlosaFatura(Value: Double);
begin
  ChildNodes['valorGlosaFatura'].NodeValue := Value;
end;

{ T212_Lote }

procedure T212_Lote.AfterConstruction;
begin
  RegisterChildNode('dadosLote', T212_Ct_dadosLote);
  ItemTag := 'dadosLote';
  ItemInterface := I212_Ct_dadosLote;
  inherited;
end;

function T212_Lote.Get_DadosLote(Index: Integer): I212_Ct_dadosLote;
begin
  Result := List[Index] as I212_Ct_dadosLote;
end;

function T212_Lote.Add: I212_Ct_dadosLote;
begin
  Result := AddItem(-1) as I212_Ct_dadosLote;
end;

function T212_Lote.Insert(const Index: Integer): I212_Ct_dadosLote;
begin
  Result := AddItem(Index) as I212_Ct_dadosLote;
end;

{ T212_Ct_dadosLote }

procedure T212_Ct_dadosLote.AfterConstruction;
begin
  RegisterChildNode('guia', T212_Guia);
  FCodigoGlosaProtocolo := CreateCollection(T212_St_tipoGlosaList, IXMLNode, 'codigoGlosaProtocolo') as I212_St_tipoGlosaList;
  inherited;
end;

function T212_Ct_dadosLote.Get_NumeroLote: WideString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure T212_Ct_dadosLote.Set_NumeroLote(Value: WideString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T212_Ct_dadosLote.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T212_Ct_dadosLote.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T212_Ct_dadosLote.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T212_Ct_dadosLote.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T212_Ct_dadosLote.Get_ValorProtocolo: Double;
begin
  Result := ChildNodes['valorProtocolo'].NodeValue;
end;

procedure T212_Ct_dadosLote.Set_ValorProtocolo(Value: Double);
begin
  ChildNodes['valorProtocolo'].NodeValue := Value;
end;

function T212_Ct_dadosLote.Get_ValorGlosaProtocolo: Double;
begin
  Result := ChildNodes['valorGlosaProtocolo'].NodeValue;
end;

procedure T212_Ct_dadosLote.Set_ValorGlosaProtocolo(Value: Double);
begin
  ChildNodes['valorGlosaProtocolo'].NodeValue := Value;
end;

function T212_Ct_dadosLote.Get_CodigoGlosaProtocolo: I212_St_tipoGlosaList;
begin
  Result := FCodigoGlosaProtocolo;
end;

function T212_Ct_dadosLote.Get_Guia: I212_Guia;
begin
  Result := ChildNodes['guia'] as I212_Guia;
end;

{ T212_Guia }

procedure T212_Guia.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T212_Ct_dadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I212_Ct_dadosGuia;
  inherited;
end;

function T212_Guia.Get_DadosGuia(Index: Integer): I212_Ct_dadosGuia;
begin
  Result := List[Index] as I212_Ct_dadosGuia;
end;

function T212_Guia.Add: I212_Ct_dadosGuia;
begin
  Result := AddItem(-1) as I212_Ct_dadosGuia;
end;

function T212_Guia.Insert(const Index: Integer): I212_Ct_dadosGuia;
begin
  Result := AddItem(Index) as I212_Ct_dadosGuia;
end;

{ T212_Ct_dadosGuia }

procedure T212_Ct_dadosGuia.AfterConstruction;
begin
  RegisterChildNode('beneficiario', T212_Ct_beneficiario);
  RegisterChildNode('procedimentos', T212_ProcedimentosGuia);
  RegisterChildNode('codigoGlosaGuia', T212_Ct_motivoGlosa);
  FCodigoGlosaGuia := CreateCollection(T212_Ct_motivoGlosaList, I212_Ct_motivoGlosa, 'codigoGlosaGuia') as I212_Ct_motivoGlosaList;
  inherited;
end;

function T212_Ct_dadosGuia.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T212_Ct_dadosGuia.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T212_Ct_dadosGuia.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T212_Ct_dadosGuia.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T212_Ct_dadosGuia.Get_Beneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_dadosGuia.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T212_Ct_dadosGuia.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T212_Ct_dadosGuia.Get_ValorProcessadoGuia: Double;
begin
  Result := ChildNodes['valorProcessadoGuia'].NodeValue;
end;

procedure T212_Ct_dadosGuia.Set_ValorProcessadoGuia(Value: Double);
begin
  ChildNodes['valorProcessadoGuia'].NodeValue := Value;
end;

function T212_Ct_dadosGuia.Get_ValorLiberadoGuia: Double;
begin
  Result := ChildNodes['valorLiberadoGuia'].NodeValue;
end;

procedure T212_Ct_dadosGuia.Set_ValorLiberadoGuia(Value: Double);
begin
  ChildNodes['valorLiberadoGuia'].NodeValue := Value;
end;

function T212_Ct_dadosGuia.Get_ValorGlosaGuia: WideString;
begin
  Result := ChildNodes['valorGlosaGuia'].Text;
end;

procedure T212_Ct_dadosGuia.Set_ValorGlosaGuia(Value: WideString);
begin
  ChildNodes['valorGlosaGuia'].NodeValue := Value;
end;

function T212_Ct_dadosGuia.Get_Procedimentos: I212_ProcedimentosGuia;
begin
  Result := ChildNodes['procedimentos'] as I212_ProcedimentosGuia;
end;

function T212_Ct_dadosGuia.Get_CodigoGlosaGuia: I212_Ct_motivoGlosaList;
begin
  Result := FCodigoGlosaGuia;
end;

{ T212_Ct_beneficiario }

function T212_Ct_beneficiario.Get_NumeroCarteira: WideString;
begin
  Result := ChildNodes['numeroCarteira'].Text;
end;

procedure T212_Ct_beneficiario.Set_NumeroCarteira(Value: WideString);
begin
  ChildNodes['numeroCarteira'].NodeValue := Value;
end;

function T212_Ct_beneficiario.Get_NomeBeneficiario: WideString;
begin
  Result := ChildNodes['nomeBeneficiario'].Text;
end;

procedure T212_Ct_beneficiario.Set_NomeBeneficiario(Value: WideString);
begin
  ChildNodes['nomeBeneficiario'].NodeValue := Value;
end;

function T212_Ct_beneficiario.Get_NomePlano: WideString;
begin
  Result := ChildNodes['nomePlano'].Text;
end;

procedure T212_Ct_beneficiario.Set_NomePlano(Value: WideString);
begin
  ChildNodes['nomePlano'].NodeValue := Value;
end;

function T212_Ct_beneficiario.Get_ValidadeCarteira: WideString;
begin
  Result := ChildNodes['validadeCarteira'].Text;
end;

procedure T212_Ct_beneficiario.Set_ValidadeCarteira(Value: WideString);
begin
  ChildNodes['validadeCarteira'].NodeValue := Value;
end;

function T212_Ct_beneficiario.Get_NumeroCNS: WideString;
begin
  Result := ChildNodes['numeroCNS'].Text;
end;

procedure T212_Ct_beneficiario.Set_NumeroCNS(Value: WideString);
begin
  ChildNodes['numeroCNS'].NodeValue := Value;
end;

function T212_Ct_beneficiario.Get_IdentificadorBeneficiario: WideString;
begin
  Result := ChildNodes['identificadorBeneficiario'].Text;
end;

procedure T212_Ct_beneficiario.Set_IdentificadorBeneficiario(Value: WideString);
begin
  ChildNodes['identificadorBeneficiario'].NodeValue := Value;
end;

{ T212_ProcedimentosAutorizacao }

procedure T212_ProcedimentosAutorizacao.AfterConstruction;
begin
  RegisterChildNode('dadosProcedimento', T212_Ct_dadosProcedimento);
  ItemTag := 'dadosProcedimento';
  ItemInterface := I212_Ct_dadosProcedimento;
  inherited;
end;

function T212_ProcedimentosAutorizacao.Get_DadosProcedimento(Index: Integer): I212_Ct_dadosProcedimento;
begin
  Result := List[Index] as I212_Ct_dadosProcedimento;
end;

function T212_ProcedimentosAutorizacao.Add: I212_Ct_dadosProcedimento;
begin
  Result := AddItem(-1) as I212_Ct_dadosProcedimento;
end;

function T212_ProcedimentosAutorizacao.Insert(const Index: Integer): I212_Ct_dadosProcedimento;
begin
  Result := AddItem(Index) as I212_Ct_dadosProcedimento;
end;

{ T212_Ct_dadosProcedimento }

procedure T212_Ct_dadosProcedimento.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_tabela);
  RegisterChildNode('relacaoGlosa', T212_RelacaoGlosa);
  inherited;
end;

function T212_Ct_dadosProcedimento.Get_Procedimento: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I212_Ct_tabela;
end;

function T212_Ct_dadosProcedimento.Get_QuantidadeExecutada: Integer;
begin
  Result := ChildNodes['quantidadeExecutada'].NodeValue;
end;

procedure T212_Ct_dadosProcedimento.Set_QuantidadeExecutada(Value: Integer);
begin
  ChildNodes['quantidadeExecutada'].NodeValue := Value;
end;

function T212_Ct_dadosProcedimento.Get_ValorProcessado: WideString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure T212_Ct_dadosProcedimento.Set_ValorProcessado(Value: WideString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T212_Ct_dadosProcedimento.Get_ValorLiberado: WideString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure T212_Ct_dadosProcedimento.Set_ValorLiberado(Value: WideString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function T212_Ct_dadosProcedimento.Get_GrauParticipacao: Integer;
begin
  Result := ChildNodes['grauParticipacao'].NodeValue;
end;

procedure T212_Ct_dadosProcedimento.Set_GrauParticipacao(Value: Integer);
begin
  ChildNodes['grauParticipacao'].NodeValue := Value;
end;

function T212_Ct_dadosProcedimento.Get_RelacaoGlosa: I212_RelacaoGlosa;
begin
  Result := ChildNodes['relacaoGlosa'] as I212_RelacaoGlosa;
end;

{ T212_Ct_tabela }

function T212_Ct_tabela.Get_Codigo: WideString;
begin
  Result := ChildNodes['codigo'].Text;
end;

procedure T212_Ct_tabela.Set_Codigo(Value: WideString);
begin
  ChildNodes['codigo'].NodeValue := Value;
end;

function T212_Ct_tabela.Get_TipoTabela: WideString;
begin
  Result := ChildNodes['tipoTabela'].Text;
end;

procedure T212_Ct_tabela.Set_TipoTabela(Value: WideString);
begin
  ChildNodes['tipoTabela'].NodeValue := Value;
end;

function T212_Ct_tabela.Get_Descricao: WideString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure T212_Ct_tabela.Set_Descricao(Value: WideString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ T212_RelacaoGlosa }

procedure T212_RelacaoGlosa.AfterConstruction;
begin
  RegisterChildNode('tipoGlosa', T212_Ct_motivoGlosa);
  FTipoGlosa := CreateCollection(T212_Ct_motivoGlosaList, I212_Ct_motivoGlosa, 'tipoGlosa') as I212_Ct_motivoGlosaList;
  inherited;
end;

function T212_RelacaoGlosa.Get_TipoGlosa: I212_Ct_motivoGlosaList;
begin
  Result := FTipoGlosa;
end;

function T212_RelacaoGlosa.Get_ValorGlosa: Double;
begin
  Result := ChildNodes['valorGlosa'].NodeValue;
end;

procedure T212_RelacaoGlosa.Set_ValorGlosa(Value: Double);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

{ T212_Ct_demonstrativoOdontologia }

procedure T212_Ct_demonstrativoOdontologia.AfterConstruction;
begin
  RegisterChildNode('cabecalhoDemonstrativo', T212_Ct_cabecalhoDemonstrativo);
  RegisterChildNode('identificacaoOperadora', T212_IdentificacaoOperadora);
  RegisterChildNode('dadosPrestador', T212_DadosPrestador);
  RegisterChildNode('dadosPagamento', T212_Ct_dadosPagamento);
  RegisterChildNode('totalGeral', T212_Ct_totalDemoOdonto);
  inherited;
end;

function T212_Ct_demonstrativoOdontologia.Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as I212_Ct_cabecalhoDemonstrativo;
end;

function T212_Ct_demonstrativoOdontologia.Get_IdentificacaoOperadora: I212_IdentificacaoOperadora;
begin
  Result := ChildNodes['identificacaoOperadora'] as I212_IdentificacaoOperadora;
end;

function T212_Ct_demonstrativoOdontologia.Get_DadosPrestador: I212_DadosPrestador;
begin
  Result := ChildNodes['dadosPrestador'] as I212_DadosPrestador;
end;

function T212_Ct_demonstrativoOdontologia.Get_DadosPagamento: I212_Ct_dadosPagamento;
begin
  Result := ChildNodes['dadosPagamento'] as I212_Ct_dadosPagamento;
end;

function T212_Ct_demonstrativoOdontologia.Get_TotalGeral: I212_Ct_totalDemoOdonto;
begin
  Result := ChildNodes['totalGeral'] as I212_Ct_totalDemoOdonto;
end;

{ T212_Ct_demonstrativoOdontologiaList }

function T212_Ct_demonstrativoOdontologiaList.Add: I212_Ct_demonstrativoOdontologia;
begin
  Result := AddItem(-1) as I212_Ct_demonstrativoOdontologia;
end;

function T212_Ct_demonstrativoOdontologiaList.Insert(const Index: Integer): I212_Ct_demonstrativoOdontologia;
begin
  Result := AddItem(Index) as I212_Ct_demonstrativoOdontologia;
end;
function T212_Ct_demonstrativoOdontologiaList.Get_Item(Index: Integer): I212_Ct_demonstrativoOdontologia;
begin
  Result := List[Index] as I212_Ct_demonstrativoOdontologia;
end;

{ T212_IdentificacaoOperadora }

procedure T212_IdentificacaoOperadora.AfterConstruction;
begin
  RegisterChildNode('periodoProcessamento', T212_Ct_periodoProcessamento);
  inherited;
end;

function T212_IdentificacaoOperadora.Get_PeriodoProcessamento: I212_Ct_periodoProcessamento;
begin
  Result := ChildNodes['periodoProcessamento'] as I212_Ct_periodoProcessamento;
end;

{ T212_Ct_periodoProcessamento }

function T212_Ct_periodoProcessamento.Get_DataInicial: WideString;
begin
  Result := ChildNodes['dataInicial'].Text;
end;

procedure T212_Ct_periodoProcessamento.Set_DataInicial(Value: WideString);
begin
  ChildNodes['dataInicial'].NodeValue := Value;
end;

function T212_Ct_periodoProcessamento.Get_DataFinal: WideString;
begin
  Result := ChildNodes['dataFinal'].Text;
end;

procedure T212_Ct_periodoProcessamento.Set_DataFinal(Value: WideString);
begin
  ChildNodes['dataFinal'].NodeValue := Value;
end;

{ T212_DadosPrestador }

procedure T212_DadosPrestador.AfterConstruction;
begin
  RegisterChildNode('identificadorPrestador', T212_Ct_identificadorPrestOdontoDemo);
  inherited;
end;

function T212_DadosPrestador.Get_CodigoPrestadorNaOperadora: WideString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure T212_DadosPrestador.Set_CodigoPrestadorNaOperadora(Value: WideString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

function T212_DadosPrestador.Get_IdentificadorPrestador: I212_Ct_identificadorPrestOdontoDemo;
begin
  Result := ChildNodes['identificadorPrestador'] as I212_Ct_identificadorPrestOdontoDemo;
end;

function T212_DadosPrestador.Get_NomeContratado: WideString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure T212_DadosPrestador.Set_NomeContratado(Value: WideString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function T212_DadosPrestador.Get_NumeroCNES: WideString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure T212_DadosPrestador.Set_NumeroCNES(Value: WideString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ T212_Ct_identificadorPrestOdontoDemo }

function T212_Ct_identificadorPrestOdontoDemo.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T212_Ct_identificadorPrestOdontoDemo.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function T212_Ct_identificadorPrestOdontoDemo.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T212_Ct_identificadorPrestOdontoDemo.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

{ T212_Ct_dadosPagamento }

procedure T212_Ct_dadosPagamento.AfterConstruction;
begin
  RegisterChildNode('loteOdonto', T212_Ct_loteOdonto);
  RegisterChildNode('demaisDescontos', T212_DemaisDescontos);
  inherited;
end;

function T212_Ct_dadosPagamento.Get_DataPagamento: WideString;
begin
  Result := ChildNodes['dataPagamento'].Text;
end;

procedure T212_Ct_dadosPagamento.Set_DataPagamento(Value: WideString);
begin
  ChildNodes['dataPagamento'].NodeValue := Value;
end;

function T212_Ct_dadosPagamento.Get_LoteOdonto: I212_Ct_loteOdonto;
begin
  Result := ChildNodes['loteOdonto'] as I212_Ct_loteOdonto;
end;

function T212_Ct_dadosPagamento.Get_DemaisDescontos: I212_DemaisDescontos;
begin
  Result := ChildNodes['demaisDescontos'] as I212_DemaisDescontos;
end;

{ T212_Ct_loteOdonto }

procedure T212_Ct_loteOdonto.AfterConstruction;
begin
  RegisterChildNode('detalheGuia', T212_Ct_detalheGuiaOdonto);
  inherited;
end;

function T212_Ct_loteOdonto.Get_NumeroLote: WideString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure T212_Ct_loteOdonto.Set_NumeroLote(Value: WideString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T212_Ct_loteOdonto.Get_DetalheGuia: I212_Ct_detalheGuiaOdonto;
begin
  Result := ChildNodes['detalheGuia'] as I212_Ct_detalheGuiaOdonto;
end;

function T212_Ct_loteOdonto.Get_ValorTotalLiberadoLote: WideString;
begin
  Result := ChildNodes['valorTotalLiberadoLote'].Text;
end;

procedure T212_Ct_loteOdonto.Set_ValorTotalLiberadoLote(Value: WideString);
begin
  ChildNodes['valorTotalLiberadoLote'].NodeValue := Value;
end;

function T212_Ct_loteOdonto.Get_ValorTotalProcessadoLote: WideString;
begin
  Result := ChildNodes['valorTotalProcessadoLote'].Text;
end;

procedure T212_Ct_loteOdonto.Set_ValorTotalProcessadoLote(Value: WideString);
begin
  ChildNodes['valorTotalProcessadoLote'].NodeValue := Value;
end;

function T212_Ct_loteOdonto.Get_ValorTotalGlosaLote: WideString;
begin
  Result := ChildNodes['valorTotalGlosaLote'].Text;
end;

procedure T212_Ct_loteOdonto.Set_ValorTotalGlosaLote(Value: WideString);
begin
  ChildNodes['valorTotalGlosaLote'].NodeValue := Value;
end;

{ T212_Ct_detalheGuiaOdonto }

procedure T212_Ct_detalheGuiaOdonto.AfterConstruction;
begin
  RegisterChildNode('procedimentoRealizado', T212_ProcedimentoRealizadoOdonto);
  inherited;
end;

function T212_Ct_detalheGuiaOdonto.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T212_Ct_detalheGuiaOdonto.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T212_Ct_detalheGuiaOdonto.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T212_Ct_detalheGuiaOdonto.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T212_Ct_detalheGuiaOdonto.Get_CodigoBeneficiario: WideString;
begin
  Result := ChildNodes['codigoBeneficiario'].Text;
end;

procedure T212_Ct_detalheGuiaOdonto.Set_CodigoBeneficiario(Value: WideString);
begin
  ChildNodes['codigoBeneficiario'].NodeValue := Value;
end;

function T212_Ct_detalheGuiaOdonto.Get_NomeBeneficiario: WideString;
begin
  Result := ChildNodes['NomeBeneficiario'].Text;
end;

procedure T212_Ct_detalheGuiaOdonto.Set_NomeBeneficiario(Value: WideString);
begin
  ChildNodes['NomeBeneficiario'].NodeValue := Value;
end;

function T212_Ct_detalheGuiaOdonto.Get_ProcedimentoRealizado: I212_ProcedimentoRealizadoOdonto;
begin
  Result := ChildNodes['procedimentoRealizado'] as I212_ProcedimentoRealizadoOdonto;
end;

function T212_Ct_detalheGuiaOdonto.Get_ValorTotalGlosaGuia: WideString;
begin
  Result := ChildNodes['valorTotalGlosaGuia'].Text;
end;

procedure T212_Ct_detalheGuiaOdonto.Set_ValorTotalGlosaGuia(Value: WideString);
begin
  ChildNodes['valorTotalGlosaGuia'].NodeValue := Value;
end;

function T212_Ct_detalheGuiaOdonto.Get_ValorTotalLiberadoGuia: WideString;
begin
  Result := ChildNodes['valorTotalLiberadoGuia'].Text;
end;

procedure T212_Ct_detalheGuiaOdonto.Set_ValorTotalLiberadoGuia(Value: WideString);
begin
  ChildNodes['valorTotalLiberadoGuia'].NodeValue := Value;
end;

function T212_Ct_detalheGuiaOdonto.Get_ValorTotalProcessadoGuia: WideString;
begin
  Result := ChildNodes['valorTotalProcessadoGuia'].Text;
end;

procedure T212_Ct_detalheGuiaOdonto.Set_ValorTotalProcessadoGuia(Value: WideString);
begin
  ChildNodes['valorTotalProcessadoGuia'].NodeValue := Value;
end;

{ T212_ProcedimentoRealizadoOdonto }

procedure T212_ProcedimentoRealizadoOdonto.AfterConstruction;
begin
  RegisterChildNode('procedimentosOdonto', T212_Ct_procedimentoOdontoRealizado);
  ItemTag := 'procedimentosOdonto';
  ItemInterface := I212_Ct_procedimentoOdontoRealizado;
  inherited;
end;

function T212_ProcedimentoRealizadoOdonto.Get_ProcedimentosOdonto(Index: Integer): I212_Ct_procedimentoOdontoRealizado;
begin
  Result := List[Index] as I212_Ct_procedimentoOdontoRealizado;
end;

function T212_ProcedimentoRealizadoOdonto.Add: I212_Ct_procedimentoOdontoRealizado;
begin
  Result := AddItem(-1) as I212_Ct_procedimentoOdontoRealizado;
end;

function T212_ProcedimentoRealizadoOdonto.Insert(const Index: Integer): I212_Ct_procedimentoOdontoRealizado;
begin
  Result := AddItem(Index) as I212_Ct_procedimentoOdontoRealizado;
end;

{ T212_Ct_procedimentoOdontoRealizado }

procedure T212_Ct_procedimentoOdontoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdonto', T212_Ct_tabela);
  RegisterChildNode('denteRegiao', T212_Ct_denteRegiao);
  FMotivoGlosa := CreateCollection(T212_St_tipoGlosaList, IXMLNode, 'motivoGlosa') as I212_St_tipoGlosaList;
  inherited;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_ProcedimentoOdonto: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimentoOdonto'] as I212_Ct_tabela;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_DenteRegiao: I212_Ct_denteRegiao;
begin
  Result := ChildNodes['denteRegiao'] as I212_Ct_denteRegiao;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T212_Ct_procedimentoOdontoRealizado.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T212_Ct_procedimentoOdontoRealizado.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_Quantidade: Integer;
begin
  Result := ChildNodes['quantidade'].NodeValue;
end;

procedure T212_Ct_procedimentoOdontoRealizado.Set_Quantidade(Value: Integer);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_ValorProcessado: WideString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure T212_Ct_procedimentoOdontoRealizado.Set_ValorProcessado(Value: WideString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_ValorGlosaEstorno: WideString;
begin
  Result := ChildNodes['valorGlosaEstorno'].Text;
end;

procedure T212_Ct_procedimentoOdontoRealizado.Set_ValorGlosaEstorno(Value: WideString);
begin
  ChildNodes['valorGlosaEstorno'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_MotivoGlosa: I212_St_tipoGlosaList;
begin
  Result := FMotivoGlosa;
end;

function T212_Ct_procedimentoOdontoRealizado.Get_ValorLiberado: WideString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure T212_Ct_procedimentoOdontoRealizado.Set_ValorLiberado(Value: WideString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

{ T212_Ct_denteRegiao }

function T212_Ct_denteRegiao.Get_Dente: Integer;
begin
  Result := ChildNodes['dente'].NodeValue;
end;

procedure T212_Ct_denteRegiao.Set_Dente(Value: Integer);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T212_Ct_denteRegiao.Get_Regiao: WideString;
begin
  Result := ChildNodes['regiao'].Text;
end;

procedure T212_Ct_denteRegiao.Set_Regiao(Value: WideString);
begin
  ChildNodes['regiao'].NodeValue := Value;
end;

{ T212_DemaisDescontos }

procedure T212_DemaisDescontos.AfterConstruction;
begin
  RegisterChildNode('descontos', T212_Ct_descontoOdonto);
  ItemTag := 'descontos';
  ItemInterface := I212_Ct_descontoOdonto;
  inherited;
end;

function T212_DemaisDescontos.Get_Descontos(Index: Integer): I212_Ct_descontoOdonto;
begin
  Result := List[Index] as I212_Ct_descontoOdonto;
end;

function T212_DemaisDescontos.Add: I212_Ct_descontoOdonto;
begin
  Result := AddItem(-1) as I212_Ct_descontoOdonto;
end;

function T212_DemaisDescontos.Insert(const Index: Integer): I212_Ct_descontoOdonto;
begin
  Result := AddItem(Index) as I212_Ct_descontoOdonto;
end;

{ T212_Ct_descontoOdonto }

function T212_Ct_descontoOdonto.Get_Descricao: WideString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure T212_Ct_descontoOdonto.Set_Descricao(Value: WideString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

function T212_Ct_descontoOdonto.Get_ValorDesconto: WideString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure T212_Ct_descontoOdonto.Set_ValorDesconto(Value: WideString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

{ T212_Ct_totalDemoOdonto }

function T212_Ct_totalDemoOdonto.Get_ValorTotalGeralGlosa: WideString;
begin
  Result := ChildNodes['valorTotalGeralGlosa'].Text;
end;

procedure T212_Ct_totalDemoOdonto.Set_ValorTotalGeralGlosa(Value: WideString);
begin
  ChildNodes['valorTotalGeralGlosa'].NodeValue := Value;
end;

function T212_Ct_totalDemoOdonto.Get_ValorTotalGeralLiberado: WideString;
begin
  Result := ChildNodes['valorTotalGeralLiberado'].Text;
end;

procedure T212_Ct_totalDemoOdonto.Set_ValorTotalGeralLiberado(Value: WideString);
begin
  ChildNodes['valorTotalGeralLiberado'].NodeValue := Value;
end;

function T212_Ct_totalDemoOdonto.Get_ValorTotalProcessadoGuia: WideString;
begin
  Result := ChildNodes['valorTotalProcessadoGuia'].Text;
end;

procedure T212_Ct_totalDemoOdonto.Set_ValorTotalProcessadoGuia(Value: WideString);
begin
  ChildNodes['valorTotalProcessadoGuia'].NodeValue := Value;
end;

{ T212_Ct_demonstrativoPagamento }

procedure T212_Ct_demonstrativoPagamento.AfterConstruction;
begin
  RegisterChildNode('cabecalhoDemonstrativo', T212_Ct_cabecalhoDemonstrativo);
  RegisterChildNode('identificacaoOperadora', T212_Ct_identificacaoOperadora);
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  RegisterChildNode('dadosPagamento', T212_Ct_dadoBancario);
  RegisterChildNode('dadosResumo', T212_DadosResumo);
  RegisterChildNode('demaisDescontos', T212_Ct_descontos);
  inherited;
end;

function T212_Ct_demonstrativoPagamento.Get_CabecalhoDemonstrativo: I212_Ct_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as I212_Ct_cabecalhoDemonstrativo;
end;

function T212_Ct_demonstrativoPagamento.Get_IdentificacaoOperadora: I212_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['identificacaoOperadora'] as I212_Ct_identificacaoOperadora;
end;

function T212_Ct_demonstrativoPagamento.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_demonstrativoPagamento.Get_DadosPagamento: I212_Ct_dadoBancario;
begin
  Result := ChildNodes['dadosPagamento'] as I212_Ct_dadoBancario;
end;

function T212_Ct_demonstrativoPagamento.Get_DadosResumo: I212_DadosResumo;
begin
  Result := ChildNodes['dadosResumo'] as I212_DadosResumo;
end;

function T212_Ct_demonstrativoPagamento.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_Ct_demonstrativoPagamento.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T212_Ct_demonstrativoPagamento.Get_DemaisDescontos: I212_Ct_descontos;
begin
  Result := ChildNodes['demaisDescontos'] as I212_Ct_descontos;
end;

function T212_Ct_demonstrativoPagamento.Get_ValorFinalLiberado: Double;
begin
  Result := ChildNodes['valorFinalLiberado'].NodeValue;
end;

procedure T212_Ct_demonstrativoPagamento.Set_ValorFinalLiberado(Value: Double);
begin
  ChildNodes['valorFinalLiberado'].NodeValue := Value;
end;

{ T212_Ct_demonstrativoPagamentoList }

function T212_Ct_demonstrativoPagamentoList.Add: I212_Ct_demonstrativoPagamento;
begin
  Result := AddItem(-1) as I212_Ct_demonstrativoPagamento;
end;

function T212_Ct_demonstrativoPagamentoList.Insert(const Index: Integer): I212_Ct_demonstrativoPagamento;
begin
  Result := AddItem(Index) as I212_Ct_demonstrativoPagamento;
end;
function T212_Ct_demonstrativoPagamentoList.Get_Item(Index: Integer): I212_Ct_demonstrativoPagamento;
begin
  Result := List[Index] as I212_Ct_demonstrativoPagamento;
end;

{ T212_Ct_dadoBancario }

function T212_Ct_dadoBancario.Get_DataPagamento: WideString;
begin
  Result := ChildNodes['dataPagamento'].Text;
end;

procedure T212_Ct_dadoBancario.Set_DataPagamento(Value: WideString);
begin
  ChildNodes['dataPagamento'].NodeValue := Value;
end;

function T212_Ct_dadoBancario.Get_FormaPagamento: WideString;
begin
  Result := ChildNodes['formaPagamento'].Text;
end;

procedure T212_Ct_dadoBancario.Set_FormaPagamento(Value: WideString);
begin
  ChildNodes['formaPagamento'].NodeValue := Value;
end;

function T212_Ct_dadoBancario.Get_Banco: Integer;
begin
  Result := ChildNodes['banco'].NodeValue;
end;

procedure T212_Ct_dadoBancario.Set_Banco(Value: Integer);
begin
  ChildNodes['banco'].NodeValue := Value;
end;

function T212_Ct_dadoBancario.Get_Agencia: WideString;
begin
  Result := ChildNodes['agencia'].Text;
end;

procedure T212_Ct_dadoBancario.Set_Agencia(Value: WideString);
begin
  ChildNodes['agencia'].NodeValue := Value;
end;

function T212_Ct_dadoBancario.Get_ContaCorrente: WideString;
begin
  Result := ChildNodes['contaCorrente'].Text;
end;

procedure T212_Ct_dadoBancario.Set_ContaCorrente(Value: WideString);
begin
  ChildNodes['contaCorrente'].NodeValue := Value;
end;

{ T212_DadosResumo }

procedure T212_DadosResumo.AfterConstruction;
begin
  RegisterChildNode('detalheResumo', T212_Ct_dadosResumo);
  FDetalheResumo := CreateCollection(T212_Ct_dadosResumoList, I212_Ct_dadosResumo, 'detalheResumo') as I212_Ct_dadosResumoList;
  inherited;
end;

function T212_DadosResumo.Get_DetalheResumo: I212_Ct_dadosResumoList;
begin
  Result := FDetalheResumo;
end;

function T212_DadosResumo.Get_TotalGeralInformado: Double;
begin
  Result := ChildNodes['totalGeralInformado'].NodeValue;
end;

procedure T212_DadosResumo.Set_TotalGeralInformado(Value: Double);
begin
  ChildNodes['totalGeralInformado'].NodeValue := Value;
end;

function T212_DadosResumo.Get_TotalGeralProcessado: Double;
begin
  Result := ChildNodes['TotalGeralProcessado'].NodeValue;
end;

procedure T212_DadosResumo.Set_TotalGeralProcessado(Value: Double);
begin
  ChildNodes['TotalGeralProcessado'].NodeValue := Value;
end;

function T212_DadosResumo.Get_TotalGeralGlosa: Double;
begin
  Result := ChildNodes['TotalGeralGlosa'].NodeValue;
end;

procedure T212_DadosResumo.Set_TotalGeralGlosa(Value: Double);
begin
  ChildNodes['TotalGeralGlosa'].NodeValue := Value;
end;

function T212_DadosResumo.Get_TotalGeralLiberado: Double;
begin
  Result := ChildNodes['TotalGeralLiberado'].NodeValue;
end;

procedure T212_DadosResumo.Set_TotalGeralLiberado(Value: Double);
begin
  ChildNodes['TotalGeralLiberado'].NodeValue := Value;
end;

{ T212_Ct_dadosResumo }

function T212_Ct_dadosResumo.Get_NumeroFatura: WideString;
begin
  Result := ChildNodes['numeroFatura'].Text;
end;

procedure T212_Ct_dadosResumo.Set_NumeroFatura(Value: WideString);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function T212_Ct_dadosResumo.Get_NumeroLote: WideString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure T212_Ct_dadosResumo.Set_NumeroLote(Value: WideString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T212_Ct_dadosResumo.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T212_Ct_dadosResumo.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T212_Ct_dadosResumo.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T212_Ct_dadosResumo.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T212_Ct_dadosResumo.Get_ValorInformado: Double;
begin
  Result := ChildNodes['valorInformado'].NodeValue;
end;

procedure T212_Ct_dadosResumo.Set_ValorInformado(Value: Double);
begin
  ChildNodes['valorInformado'].NodeValue := Value;
end;

function T212_Ct_dadosResumo.Get_ValorProcessado: Double;
begin
  Result := ChildNodes['valorProcessado'].NodeValue;
end;

procedure T212_Ct_dadosResumo.Set_ValorProcessado(Value: Double);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T212_Ct_dadosResumo.Get_ValorLiberado: Double;
begin
  Result := ChildNodes['valorLiberado'].NodeValue;
end;

procedure T212_Ct_dadosResumo.Set_ValorLiberado(Value: Double);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function T212_Ct_dadosResumo.Get_ValorGlosa: Double;
begin
  Result := ChildNodes['valorGlosa'].NodeValue;
end;

procedure T212_Ct_dadosResumo.Set_ValorGlosa(Value: Double);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

{ T212_Ct_dadosResumoList }

function T212_Ct_dadosResumoList.Add: I212_Ct_dadosResumo;
begin
  Result := AddItem(-1) as I212_Ct_dadosResumo;
end;

function T212_Ct_dadosResumoList.Insert(const Index: Integer): I212_Ct_dadosResumo;
begin
  Result := AddItem(Index) as I212_Ct_dadosResumo;
end;
function T212_Ct_dadosResumoList.Get_Item(Index: Integer): I212_Ct_dadosResumo;
begin
  Result := List[Index] as I212_Ct_dadosResumo;
end;

{ T212_Ct_descontos }

procedure T212_Ct_descontos.AfterConstruction;
begin
  RegisterChildNode('itemDesconto', T212_ItemDesconto);
  ItemTag := 'itemDesconto';
  ItemInterface := I212_ItemDesconto;
  inherited;
end;

function T212_Ct_descontos.Get_ItemDesconto(Index: Integer): I212_ItemDesconto;
begin
  Result := List[Index] as I212_ItemDesconto;
end;

function T212_Ct_descontos.Add: I212_ItemDesconto;
begin
  Result := AddItem(-1) as I212_ItemDesconto;
end;

function T212_Ct_descontos.Insert(const Index: Integer): I212_ItemDesconto;
begin
  Result := AddItem(Index) as I212_ItemDesconto;
end;

{ T212_ItemDesconto }

function T212_ItemDesconto.Get_ValorDesconto: WideString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure T212_ItemDesconto.Set_ValorDesconto(Value: WideString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

function T212_ItemDesconto.Get_Descricao: WideString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure T212_ItemDesconto.Set_Descricao(Value: WideString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ T212_Ct_protocoloRecebimento }

procedure T212_Ct_protocoloRecebimento.AfterConstruction;
begin
  RegisterChildNode('dadosOperadora', T212_Ct_identificacaoOperadora);
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  RegisterChildNode('mensagemDetalheProtocolo', T212_Ct_detalheProtocolo);
  inherited;
end;

function T212_Ct_protocoloRecebimento.Get_DadosOperadora: I212_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['dadosOperadora'] as I212_Ct_identificacaoOperadora;
end;

function T212_Ct_protocoloRecebimento.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_protocoloRecebimento.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T212_Ct_protocoloRecebimento.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T212_Ct_protocoloRecebimento.Get_NumeroLote: Integer;
begin
  Result := ChildNodes['numeroLote'].NodeValue;
end;

procedure T212_Ct_protocoloRecebimento.Set_NumeroLote(Value: Integer);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T212_Ct_protocoloRecebimento.Get_MensagemDetalheProtocolo: I212_Ct_detalheProtocolo;
begin
  Result := ChildNodes['mensagemDetalheProtocolo'] as I212_Ct_detalheProtocolo;
end;

function T212_Ct_protocoloRecebimento.Get_NumeroProtocoloRecebimento: Integer;
begin
  Result := ChildNodes['numeroProtocoloRecebimento'].NodeValue;
end;

procedure T212_Ct_protocoloRecebimento.Set_NumeroProtocoloRecebimento(Value: Integer);
begin
  ChildNodes['numeroProtocoloRecebimento'].NodeValue := Value;
end;

function T212_Ct_protocoloRecebimento.Get_MensagemErro: WideString;
begin
  Result := ChildNodes['mensagemErro'].Text;
end;

procedure T212_Ct_protocoloRecebimento.Set_MensagemErro(Value: WideString);
begin
  ChildNodes['mensagemErro'].NodeValue := Value;
end;

{ T212_Ct_detalheProtocolo }

procedure T212_Ct_detalheProtocolo.AfterConstruction;
begin
  RegisterChildNode('codigoGlosaProtocolo', T212_CodigoGlosaProtocolo);
  RegisterChildNode('guias', T212_GuiasProtocolo);
  inherited;
end;

function T212_Ct_detalheProtocolo.Get_NumeroProtocolo: WideString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure T212_Ct_detalheProtocolo.Set_NumeroProtocolo(Value: WideString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T212_Ct_detalheProtocolo.Get_ValorProtocolo: WideString;
begin
  Result := ChildNodes['valorProtocolo'].Text;
end;

procedure T212_Ct_detalheProtocolo.Set_ValorProtocolo(Value: WideString);
begin
  ChildNodes['valorProtocolo'].NodeValue := Value;
end;

function T212_Ct_detalheProtocolo.Get_CodigoGlosaProtocolo: I212_CodigoGlosaProtocolo;
begin
  Result := ChildNodes['codigoGlosaProtocolo'] as I212_CodigoGlosaProtocolo;
end;

function T212_Ct_detalheProtocolo.Get_Guias: I212_GuiasProtocolo;
begin
  Result := ChildNodes['guias'] as I212_GuiasProtocolo;
end;

{ T212_CodigoGlosaProtocolo }

procedure T212_CodigoGlosaProtocolo.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T212_Ct_motivoGlosa);
  FMotivoGlosa := CreateCollection(T212_Ct_motivoGlosaList, I212_Ct_motivoGlosa, 'motivoGlosa') as I212_Ct_motivoGlosaList;
  inherited;
end;

function T212_CodigoGlosaProtocolo.Get_MotivoGlosa: I212_Ct_motivoGlosaList;
begin
  Result := FMotivoGlosa;
end;

function T212_CodigoGlosaProtocolo.Get_ValorGlosaProtocolo: WideString;
begin
  Result := ChildNodes['valorGlosaProtocolo'].Text;
end;

procedure T212_CodigoGlosaProtocolo.Set_ValorGlosaProtocolo(Value: WideString);
begin
  ChildNodes['valorGlosaProtocolo'].NodeValue := Value;
end;

{ T212_GuiasProtocolo }

procedure T212_GuiasProtocolo.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T212_Ct_dadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I212_Ct_dadosGuia;
  inherited;
end;

function T212_GuiasProtocolo.Get_DadosGuia(Index: Integer): I212_Ct_dadosGuia;
begin
  Result := List[Index] as I212_Ct_dadosGuia;
end;

function T212_GuiasProtocolo.Add: I212_Ct_dadosGuia;
begin
  Result := AddItem(-1) as I212_Ct_dadosGuia;
end;

function T212_GuiasProtocolo.Insert(const Index: Integer): I212_Ct_dadosGuia;
begin
  Result := AddItem(Index) as I212_Ct_dadosGuia;
end;

{ T212_Ct_StatusProtocolo }

procedure T212_Ct_StatusProtocolo.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  RegisterChildNode('lote', T212_Lote);
  inherited;
end;

function T212_Ct_StatusProtocolo.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Ct_StatusProtocolo.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T212_Ct_StatusProtocolo.Get_NomeOperadora: WideString;
begin
  Result := ChildNodes['nomeOperadora'].Text;
end;

procedure T212_Ct_StatusProtocolo.Set_NomeOperadora(Value: WideString);
begin
  ChildNodes['nomeOperadora'].NodeValue := Value;
end;

function T212_Ct_StatusProtocolo.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure T212_Ct_StatusProtocolo.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function T212_Ct_StatusProtocolo.Get_StatusProtocolo: Integer;
begin
  Result := ChildNodes['statusProtocolo'].NodeValue;
end;

procedure T212_Ct_StatusProtocolo.Set_StatusProtocolo(Value: Integer);
begin
  ChildNodes['statusProtocolo'].NodeValue := Value;
end;

function T212_Ct_StatusProtocolo.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_StatusProtocolo.Get_CNESPrestador: WideString;
begin
  Result := ChildNodes['CNESPrestador'].Text;
end;

procedure T212_Ct_StatusProtocolo.Set_CNESPrestador(Value: WideString);
begin
  ChildNodes['CNESPrestador'].NodeValue := Value;
end;

function T212_Ct_StatusProtocolo.Get_Lote: I212_LoteProtocolo;
begin
  Result := ChildNodes['lote'] as I212_LoteProtocolo;
end;

{ T212_LoteProtocolo }

procedure T212_LoteProtocolo.AfterConstruction;
begin
  RegisterChildNode('detalheLote', T212_Ct_statusLote);
  ItemTag := 'detalheLote';
  ItemInterface := I212_Ct_statusLote;
  inherited;
end;

function T212_LoteProtocolo.Get_DetalheLote(Index: Integer): I212_Ct_statusLote;
begin
  Result := List[Index] as I212_Ct_statusLote;
end;

function T212_LoteProtocolo.Add: I212_Ct_statusLote;
begin
  Result := AddItem(-1) as I212_Ct_statusLote;
end;

function T212_LoteProtocolo.Insert(const Index: Integer): I212_Ct_statusLote;
begin
  Result := AddItem(Index) as I212_Ct_statusLote;
end;

{ T212_Ct_statusLote }

procedure T212_Ct_statusLote.AfterConstruction;
begin
  RegisterChildNode('guias', T212_GuiasStatusLote);
  inherited;
end;

function T212_Ct_statusLote.Get_NumeroProtocolo: Integer;
begin
  Result := ChildNodes['numeroProtocolo'].NodeValue;
end;

procedure T212_Ct_statusLote.Set_NumeroProtocolo(Value: Integer);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_NumeroLote: Integer;
begin
  Result := ChildNodes['numeroLote'].NodeValue;
end;

procedure T212_Ct_statusLote.Set_NumeroLote(Value: Integer);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_DataEnvioLote: WideString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure T212_Ct_statusLote.Set_DataEnvioLote(Value: WideString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_NumeroFatura: Integer;
begin
  Result := ChildNodes['numeroFatura'].NodeValue;
end;

procedure T212_Ct_statusLote.Set_NumeroFatura(Value: Integer);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_ValorProcessado: WideString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure T212_Ct_statusLote.Set_ValorProcessado(Value: WideString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_ValorLiberado: WideString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure T212_Ct_statusLote.Set_ValorLiberado(Value: WideString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_ValorGlosa: WideString;
begin
  Result := ChildNodes['valorGlosa'].Text;
end;

procedure T212_Ct_statusLote.Set_ValorGlosa(Value: WideString);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_Status: Integer;
begin
  Result := ChildNodes['status'].NodeValue;
end;

procedure T212_Ct_statusLote.Set_Status(Value: Integer);
begin
  ChildNodes['status'].NodeValue := Value;
end;

function T212_Ct_statusLote.Get_Guias: I212_GuiasStatusLote;
begin
  Result := ChildNodes['guias'] as I212_GuiasStatusLote;
end;

{ T212_GuiasStatusLote }

procedure T212_GuiasStatusLote.AfterConstruction;
begin
  RegisterChildNode('detalheguia', T212_Detalheguia);
  ItemTag := 'detalheguia';
  ItemInterface := I212_Detalheguia;
  inherited;
end;

function T212_GuiasStatusLote.Get_Detalheguia(Index: Integer): I212_Detalheguia;
begin
  Result := List[Index] as I212_Detalheguia;
end;

function T212_GuiasStatusLote.Add: I212_Detalheguia;
begin
  Result := AddItem(-1) as I212_Detalheguia;
end;

function T212_GuiasStatusLote.Insert(const Index: Integer): I212_Detalheguia;
begin
  Result := AddItem(Index) as I212_Detalheguia;
end;

{ T212_Detalheguia }

procedure T212_Detalheguia.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', T212_Ct_cabecalhoGuia);
  RegisterChildNode('procedimentosAnalisados', T212_ProcedimentosAnalisados);
  inherited;
end;

function T212_Detalheguia.Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as I212_Ct_cabecalhoGuia;
end;

function T212_Detalheguia.Get_ProcedimentosAnalisados: I212_ProcedimentosAnalisados;
begin
  Result := ChildNodes['procedimentosAnalisados'] as I212_ProcedimentosAnalisados;
end;

{ T212_Ct_cabecalhoGuia }

function T212_Ct_cabecalhoGuia.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Ct_cabecalhoGuia.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuia.Get_DataEmissaoGuia: WideString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure T212_Ct_cabecalhoGuia.Set_DataEmissaoGuia(Value: WideString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuia.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T212_Ct_cabecalhoGuia.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuia.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T212_Ct_cabecalhoGuia.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

{ T212_ProcedimentosAnalisados }

procedure T212_ProcedimentosAnalisados.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_itemSolicitacao);
  ItemTag := 'procedimento';
  ItemInterface := I212_Ct_itemSolicitacao;
  inherited;
end;

function T212_ProcedimentosAnalisados.Get_Procedimento(Index: Integer): I212_Ct_itemSolicitacao;
begin
  Result := List[Index] as I212_Ct_itemSolicitacao;
end;

function T212_ProcedimentosAnalisados.Add: I212_Ct_itemSolicitacao;
begin
  Result := AddItem(-1) as I212_Ct_itemSolicitacao;
end;

function T212_ProcedimentosAnalisados.Insert(const Index: Integer): I212_Ct_itemSolicitacao;
begin
  Result := AddItem(Index) as I212_Ct_itemSolicitacao;
end;

{ T212_Ct_itemSolicitacao }

procedure T212_Ct_itemSolicitacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoProcedimentos', T212_Ct_tabela);
  RegisterChildNode('glosas', T212_Glosas);
  inherited;
end;

function T212_Ct_itemSolicitacao.Get_IdentificacaoProcedimentos: I212_Ct_tabela;
begin
  Result := ChildNodes['identificacaoProcedimentos'] as I212_Ct_tabela;
end;

function T212_Ct_itemSolicitacao.Get_QuantidadeSolicitada: WideString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure T212_Ct_itemSolicitacao.Set_QuantidadeSolicitada(Value: WideString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function T212_Ct_itemSolicitacao.Get_QuantidadeAutorizada: WideString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure T212_Ct_itemSolicitacao.Set_QuantidadeAutorizada(Value: WideString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function T212_Ct_itemSolicitacao.Get_StatusSolicitacaoProcedimento: WideString;
begin
  Result := ChildNodes['statusSolicitacaoProcedimento'].Text;
end;

procedure T212_Ct_itemSolicitacao.Set_StatusSolicitacaoProcedimento(Value: WideString);
begin
  ChildNodes['statusSolicitacaoProcedimento'].NodeValue := Value;
end;

function T212_Ct_itemSolicitacao.Get_Glosas: I212_Glosas;
begin
  Result := ChildNodes['glosas'] as I212_Glosas;
end;

function T212_Ct_itemSolicitacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_itemSolicitacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Glosas }

procedure T212_Glosas.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T212_Ct_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := I212_Ct_motivoGlosa;
  inherited;
end;

function T212_Glosas.Get_MotivoGlosa(Index: Integer): I212_Ct_motivoGlosa;
begin
  Result := List[Index] as I212_Ct_motivoGlosa;
end;

function T212_Glosas.Add: I212_Ct_motivoGlosa;
begin
  Result := AddItem(-1) as I212_Ct_motivoGlosa;
end;

function T212_Glosas.Insert(const Index: Integer): I212_Ct_motivoGlosa;
begin
  Result := AddItem(Index) as I212_Ct_motivoGlosa;
end;

{ T212_Ct_autorizacaoProcedimento }

procedure T212_Ct_autorizacaoProcedimento.AfterConstruction;
begin
  RegisterChildNode('identificacaoAutorizacao', T212_Ct_cabecalhoGuia);
  RegisterChildNode('beneficiario', T212_Ct_beneficiario);
  RegisterChildNode('prestadorAutorizado', T212_Ct_contratado);
  RegisterChildNode('dadosAutorizacao', T212_Ct_autorizacaoGuiaInternacao);
  RegisterChildNode('procedimentos', T212_ProcedimentosAutorizacao);
  inherited;
end;

function T212_Ct_autorizacaoProcedimento.Get_IdentificacaoAutorizacao: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoAutorizacao'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_autorizacaoProcedimento.Get_StatusSolicitacao: WideString;
begin
  Result := ChildNodes['statusSolicitacao'].Text;
end;

procedure T212_Ct_autorizacaoProcedimento.Set_StatusSolicitacao(Value: WideString);
begin
  ChildNodes['statusSolicitacao'].NodeValue := Value;
end;

function T212_Ct_autorizacaoProcedimento.Get_Beneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_autorizacaoProcedimento.Get_PrestadorAutorizado: I212_Ct_contratado;
begin
  Result := ChildNodes['prestadorAutorizado'] as I212_Ct_contratado;
end;

function T212_Ct_autorizacaoProcedimento.Get_DadosAutorizacao: I212_Ct_autorizacaoGuiaInternacao;
begin
  Result := ChildNodes['dadosAutorizacao'] as I212_Ct_autorizacaoGuiaInternacao;
end;

function T212_Ct_autorizacaoProcedimento.Get_Procedimentos: I212_ProcedimentosAutorizacao;
begin
  Result := ChildNodes['procedimentos'] as I212_ProcedimentosAutorizacao;
end;

{ T212_TotalOdonto }

function T212_TotalOdonto.Get_Totalvalor: WideString;
begin
  Result := ChildNodes['totalvalor'].Text;
end;

procedure T212_TotalOdonto.Set_Totalvalor(Value: WideString);
begin
  ChildNodes['totalvalor'].NodeValue := Value;
end;

function T212_TotalOdonto.Get_TotalFranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure T212_TotalOdonto.Set_TotalFranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

function T212_TotalOdonto.Get_TotalquantidadeUS: WideString;
begin
  Result := ChildNodes['totalquantidadeUS'].Text;
end;

procedure T212_TotalOdonto.Set_TotalquantidadeUS(Value: WideString);
begin
  ChildNodes['totalquantidadeUS'].NodeValue := Value;
end;

{ T212_Ct_diariaProrrogacaoAutorizada }

procedure T212_Ct_diariaProrrogacaoAutorizada.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', T212_Ct_motivoGlosa);
  inherited;
end;

function T212_Ct_diariaProrrogacaoAutorizada.Get_TipoAcomodacaoAutorizada: WideString;
begin
  Result := ChildNodes['tipoAcomodacaoAutorizada'].Text;
end;

procedure T212_Ct_diariaProrrogacaoAutorizada.Set_TipoAcomodacaoAutorizada(Value: WideString);
begin
  ChildNodes['tipoAcomodacaoAutorizada'].NodeValue := Value;
end;

function T212_Ct_diariaProrrogacaoAutorizada.Get_QuantidadeAutorizada: WideString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure T212_Ct_diariaProrrogacaoAutorizada.Set_QuantidadeAutorizada(Value: WideString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function T212_Ct_diariaProrrogacaoAutorizada.Get_MotivoGlosa: I212_Ct_motivoGlosa;
begin
  Result := ChildNodes['motivoGlosa'] as I212_Ct_motivoGlosa;
end;

{ T212_Ct_situacaoAutorizacao }

procedure T212_Ct_situacaoAutorizacao.AfterConstruction;
begin
  RegisterChildNode('dadosAutorizacao', T212_DadosAutorizacao);
  ItemTag := 'dadosAutorizacao';
  ItemInterface := I212_DadosAutorizacao;
  inherited;
end;

function T212_Ct_situacaoAutorizacao.Get_DadosAutorizacao(Index: Integer): I212_DadosAutorizacao;
begin
  Result := List[Index] as I212_DadosAutorizacao;
end;

function T212_Ct_situacaoAutorizacao.Add: I212_DadosAutorizacao;
begin
  Result := AddItem(-1) as I212_DadosAutorizacao;
end;

function T212_Ct_situacaoAutorizacao.Insert(const Index: Integer): I212_DadosAutorizacao;
begin
  Result := AddItem(Index) as I212_DadosAutorizacao;
end;

{ T212_DadosAutorizacao }

procedure T212_DadosAutorizacao.AfterConstruction;
begin
  RegisterChildNode('totalOdonto', T212_TotalOdonto);
  RegisterChildNode('ct_diariaProrrogacaoAutorizada', T212_Ct_diariaProrrogacaoAutorizada);
  inherited;
end;

function T212_DadosAutorizacao.Get_TotalOdonto: I212_TotalOdonto;
begin
  Result := ChildNodes['totalOdonto'] as I212_TotalOdonto;
end;

function T212_DadosAutorizacao.Get_Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada;
begin
  Result := ChildNodes['ct_diariaProrrogacaoAutorizada'] as I212_Ct_diariaProrrogacaoAutorizada;
end;

{ T212_Ct_retornoElegibilidade }

procedure T212_Ct_retornoElegibilidade.AfterConstruction;
begin
  RegisterChildNode('dadosOperadora', T212_Ct_identificacaoOperadora);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('motivoNegacao', T212_Ct_motivoGlosa);
  inherited;
end;

function T212_Ct_retornoElegibilidade.Get_DadosOperadora: I212_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['dadosOperadora'] as I212_Ct_identificacaoOperadora;
end;

function T212_Ct_retornoElegibilidade.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_retornoElegibilidade.Get_RespostaSolicitacao: Boolean;
begin
  Result := ChildNodes['respostaSolicitacao'].NodeValue;
end;

procedure T212_Ct_retornoElegibilidade.Set_RespostaSolicitacao(Value: Boolean);
begin
  ChildNodes['respostaSolicitacao'].NodeValue := Value;
end;

function T212_Ct_retornoElegibilidade.Get_MotivoNegacao: I212_Ct_motivoGlosa;
begin
  Result := ChildNodes['motivoNegacao'] as I212_Ct_motivoGlosa;
end;

{ T212_Ct_reciboCancelaGuia }

procedure T212_Ct_reciboCancelaGuia.AfterConstruction;
begin
  RegisterChildNode('operadora', T212_Ct_identificacaoOperadora);
  RegisterChildNode('guiasCanceladas', T212_GuiasCanceladas);
  inherited;
end;

function T212_Ct_reciboCancelaGuia.Get_Operadora: I212_Ct_identificacaoOperadora;
begin
  Result := ChildNodes['operadora'] as I212_Ct_identificacaoOperadora;
end;

function T212_Ct_reciboCancelaGuia.Get_GuiasCanceladas: I212_GuiasCanceladas;
begin
  Result := ChildNodes['guiasCanceladas'] as I212_GuiasCanceladas;
end;

{ T212_GuiasCanceladas }

procedure T212_GuiasCanceladas.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T212_DadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I212_DadosGuia;
  inherited;
end;

function T212_GuiasCanceladas.Get_DadosGuia(Index: Integer): I212_DadosGuia;
begin
  Result := List[Index] as I212_DadosGuia;
end;

function T212_GuiasCanceladas.Add: I212_DadosGuia;
begin
  Result := AddItem(-1) as I212_DadosGuia;
end;

function T212_GuiasCanceladas.Insert(const Index: Integer): I212_DadosGuia;
begin
  Result := AddItem(Index) as I212_DadosGuia;
end;

{ T212_DadosGuia }

function T212_DadosGuia.Get_StatusCancelamento: WideString;
begin
  Result := ChildNodes['statusCancelamento'].Text;
end;

procedure T212_DadosGuia.Set_StatusCancelamento(Value: WideString);
begin
  ChildNodes['statusCancelamento'].NodeValue := Value;
end;

function T212_DadosGuia.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_DadosGuia.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_PrestadorParaOperadora }

procedure T212_PrestadorParaOperadora.AfterConstruction;
begin
  RegisterChildNode('loteGuias', T212_Ct_loteGuias);
  RegisterChildNode('solicitacaoDemonstrativoRetorno', T212_Ct_solicitacaoDemonstrativoPagamento);
  RegisterChildNode('solicitacaoStatusProtocolo', T212_Ct_solicitacaoStatusProtocolo);
  RegisterChildNode('solicitacaoProcedimento', T212_SolicitacaoProcedimento);
  RegisterChildNode('solicitaStatusAutorizacao', T212_Ct_solicitaStatusAutorizacao);
  RegisterChildNode('verificaElegibilidade', T212_Ct_solicitaElegibilidade);
  RegisterChildNode('cancelaGuia', T212_Ct_cancelaGuia);
  inherited;
end;

function T212_PrestadorParaOperadora.Get_LoteGuias: I212_Ct_loteGuias;
begin
  Result := ChildNodes['loteGuias'] as I212_Ct_loteGuias;
end;

function T212_PrestadorParaOperadora.Get_SolicitacaoDemonstrativoRetorno: I212_Ct_solicitacaoDemonstrativoPagamento;
begin
  Result := ChildNodes['solicitacaoDemonstrativoRetorno'] as I212_Ct_solicitacaoDemonstrativoPagamento;
end;

function T212_PrestadorParaOperadora.Get_SolicitacaoStatusProtocolo: I212_Ct_solicitacaoStatusProtocolo;
begin
  Result := ChildNodes['solicitacaoStatusProtocolo'] as I212_Ct_solicitacaoStatusProtocolo;
end;

function T212_PrestadorParaOperadora.Get_SolicitacaoProcedimento: I212_SolicitacaoProcedimento;
begin
  Result := ChildNodes['solicitacaoProcedimento'] as I212_SolicitacaoProcedimento;
end;

function T212_PrestadorParaOperadora.Get_SolicitaStatusAutorizacao: I212_Ct_solicitaStatusAutorizacao;
begin
  Result := ChildNodes['solicitaStatusAutorizacao'] as I212_Ct_solicitaStatusAutorizacao;
end;

function T212_PrestadorParaOperadora.Get_VerificaElegibilidade: I212_Ct_solicitaElegibilidade;
begin
  Result := ChildNodes['verificaElegibilidade'] as I212_Ct_solicitaElegibilidade;
end;

function T212_PrestadorParaOperadora.Get_CancelaGuia: I212_Ct_cancelaGuia;
begin
  Result := ChildNodes['cancelaGuia'] as I212_Ct_cancelaGuia;
end;

{ T212_Ct_loteGuias }

procedure T212_Ct_loteGuias.AfterConstruction;
begin
  RegisterChildNode('guias', T212_Guias);
  inherited;
end;

function T212_Ct_loteGuias.Get_NumeroLote: Integer;
begin
  Result := ChildNodes['numeroLote'].NodeValue;
end;

procedure T212_Ct_loteGuias.Set_NumeroLote(Value: Integer);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function T212_Ct_loteGuias.Get_Guias: I212_Guias;
begin
  Result := ChildNodes['guias'] as I212_Guias;
end;

{ T212_Ct_guias }

procedure T212_Ct_guias.AfterConstruction;
begin
  RegisterChildNode('guiaFaturamento', T212_GuiaFaturamento);
  RegisterChildNode('guiaRevisaoGlosa', T212_GuiaRevisaoGlosa);
  inherited;
end;

function T212_Ct_guias.Get_GuiaFaturamento: I212_GuiaFaturamento;
begin
  Result := ChildNodes['guiaFaturamento'] as I212_GuiaFaturamento;
end;

function T212_Ct_guias.Get_GuiaRevisaoGlosa: I212_GuiaRevisaoGlosa;
begin
  Result := ChildNodes['guiaRevisaoGlosa'] as I212_GuiaRevisaoGlosa;
end;

{ T212_Ct_solicitacaoDemonstrativoPagamento }

procedure T212_Ct_solicitacaoDemonstrativoPagamento.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  inherited;
end;

function T212_Ct_solicitacaoDemonstrativoPagamento.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_solicitacaoDemonstrativoPagamento.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Ct_solicitacaoDemonstrativoPagamento.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T212_Ct_solicitacaoDemonstrativoPagamento.Get_DataSolicitacao: WideString;
begin
  Result := ChildNodes['dataSolicitacao'].Text;
end;

procedure T212_Ct_solicitacaoDemonstrativoPagamento.Set_DataSolicitacao(Value: WideString);
begin
  ChildNodes['dataSolicitacao'].NodeValue := Value;
end;

function T212_Ct_solicitacaoDemonstrativoPagamento.Get_TipoDemostrativo: WideString;
begin
  Result := ChildNodes['tipoDemostrativo'].Text;
end;

procedure T212_Ct_solicitacaoDemonstrativoPagamento.Set_TipoDemostrativo(Value: WideString);
begin
  ChildNodes['tipoDemostrativo'].NodeValue := Value;
end;

function T212_Ct_solicitacaoDemonstrativoPagamento.Get_DataInicial: WideString;
begin
  Result := ChildNodes['dataInicial'].Text;
end;

procedure T212_Ct_solicitacaoDemonstrativoPagamento.Set_DataInicial(Value: WideString);
begin
  ChildNodes['dataInicial'].NodeValue := Value;
end;

function T212_Ct_solicitacaoDemonstrativoPagamento.Get_DataFinal: WideString;
begin
  Result := ChildNodes['dataFinal'].Text;
end;

procedure T212_Ct_solicitacaoDemonstrativoPagamento.Set_DataFinal(Value: WideString);
begin
  ChildNodes['dataFinal'].NodeValue := Value;
end;

function T212_Ct_solicitacaoDemonstrativoPagamento.Get_NumeroProtocolo: Integer;
begin
  Result := ChildNodes['numeroProtocolo'].NodeValue;
end;

procedure T212_Ct_solicitacaoDemonstrativoPagamento.Set_NumeroProtocolo(Value: Integer);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

{ T212_Ct_solicitacaoStatusProtocolo }

procedure T212_Ct_solicitacaoStatusProtocolo.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  RegisterChildNode('detalheProtocolo', T212_DetalheProtocolo);
  inherited;
end;

function T212_Ct_solicitacaoStatusProtocolo.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Ct_solicitacaoStatusProtocolo.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T212_Ct_solicitacaoStatusProtocolo.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_solicitacaoStatusProtocolo.Get_DataSolicitacao: WideString;
begin
  Result := ChildNodes['dataSolicitacao'].Text;
end;

procedure T212_Ct_solicitacaoStatusProtocolo.Set_DataSolicitacao(Value: WideString);
begin
  ChildNodes['dataSolicitacao'].NodeValue := Value;
end;

function T212_Ct_solicitacaoStatusProtocolo.Get_DetalheProtocolo: I212_DetalheProtocolo;
begin
  Result := ChildNodes['detalheProtocolo'] as I212_DetalheProtocolo;
end;

{ T212_DetalheProtocolo }

procedure T212_DetalheProtocolo.AfterConstruction;
begin
  ItemTag := 'numeroProtocolo';
  ItemInterface := IXMLNode;
  inherited;
end;

function T212_DetalheProtocolo.Get_NumeroProtocolo(Index: Integer): Integer;
begin
  Result := List[Index].NodeValue;
end;

function T212_DetalheProtocolo.Add(const NumeroProtocolo: Integer): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := NumeroProtocolo;
end;

function T212_DetalheProtocolo.Insert(const Index: Integer; const NumeroProtocolo: Integer): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := NumeroProtocolo;
end;

{ T212_SolicitacaoProcedimento }

procedure T212_SolicitacaoProcedimento.AfterConstruction;
begin
  RegisterChildNode('guiaSolicInternacao', T212_Ct_guiaSolicInternacao);
  RegisterChildNode('guiaSolicitacaoSADT', T212_Ct_guiaSolicitacaoSP_SADT);
  RegisterChildNode('guiaSolicitacaoOdontologia', T212_Ct_guiaSolicitacaoOdonto);
  RegisterChildNode('guiaSolicitacaoProrrogacao', T212_Ct_guiaSolicitacaoProrrogacao);
  FGuiaSolicInternacao := CreateCollection(T212_Ct_guiaSolicInternacaoList, I212_Ct_guiaSolicInternacao, 'guiaSolicInternacao') as I212_Ct_guiaSolicInternacaoList;
  FGuiaSolicitacaoSADT := CreateCollection(T212_Ct_guiaSolicitacaoSP_SADTList, I212_Ct_guiaSolicitacaoSP_SADT, 'guiaSolicitacaoSADT') as I212_Ct_guiaSolicitacaoSP_SADTList;
  FGuiaSolicitacaoOdontologia := CreateCollection(T212_Ct_guiaSolicitacaoOdontoList, I212_Ct_guiaSolicitacaoOdonto, 'guiaSolicitacaoOdontologia') as I212_Ct_guiaSolicitacaoOdontoList;
  FGuiaSolicitacaoProrrogacao := CreateCollection(T212_Ct_guiaSolicitacaoProrrogacaoList, I212_Ct_guiaSolicitacaoProrrogacao, 'guiaSolicitacaoProrrogacao') as I212_Ct_guiaSolicitacaoProrrogacaoList;
  inherited;
end;

function T212_SolicitacaoProcedimento.Get_GuiaSolicInternacao: I212_Ct_guiaSolicInternacaoList;
begin
  Result := FGuiaSolicInternacao;
end;

function T212_SolicitacaoProcedimento.Get_GuiaSolicitacaoSADT: I212_Ct_guiaSolicitacaoSP_SADTList;
begin
  Result := FGuiaSolicitacaoSADT;
end;

function T212_SolicitacaoProcedimento.Get_GuiaSolicitacaoOdontologia: I212_Ct_guiaSolicitacaoOdontoList;
begin
  Result := FGuiaSolicitacaoOdontologia;
end;

function T212_SolicitacaoProcedimento.Get_GuiaSolicitacaoProrrogacao: I212_Ct_guiaSolicitacaoProrrogacaoList;
begin
  Result := FGuiaSolicitacaoProrrogacao;
end;

{ T212_Ct_guiaSolicInternacao }

procedure T212_Ct_guiaSolicInternacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSolicitacaoInternacao', T212_Ct_cabecalhoSolicitacao);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T212_Ct_solicitante);
  RegisterChildNode('prestadorSolicitado', T212_PrestadorSolicitado);
  RegisterChildNode('hipotesesDiagnosticas', T212_Ct_hipoteseDiagnostica);
  RegisterChildNode('procedimentosExamesSolicitados', T212_Ct_procedimentosSolicitados);
  RegisterChildNode('OPMsSolicitadas', T212_Ct_OPMSolicitadas);
  inherited;
end;

function T212_Ct_guiaSolicInternacao.Get_IdentificacaoGuiaSolicitacaoInternacao: I212_Ct_cabecalhoSolicitacao;
begin
  Result := ChildNodes['identificacaoGuiaSolicitacaoInternacao'] as I212_Ct_cabecalhoSolicitacao;
end;

function T212_Ct_guiaSolicInternacao.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaSolicInternacao.Get_DadosSolicitante: I212_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I212_Ct_solicitante;
end;

function T212_Ct_guiaSolicInternacao.Get_PrestadorSolicitado: I212_PrestadorSolicitado;
begin
  Result := ChildNodes['prestadorSolicitado'] as I212_PrestadorSolicitado;
end;

function T212_Ct_guiaSolicInternacao.Get_CaraterInternacao: WideString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure T212_Ct_guiaSolicInternacao.Set_CaraterInternacao(Value: WideString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaSolicInternacao.Get_TipoInternacao: Integer;
begin
  Result := ChildNodes['tipoInternacao'].NodeValue;
end;

procedure T212_Ct_guiaSolicInternacao.Set_TipoInternacao(Value: Integer);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaSolicInternacao.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T212_Ct_guiaSolicInternacao.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T212_Ct_guiaSolicInternacao.Get_RegimeInternacao: WideString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure T212_Ct_guiaSolicInternacao.Set_RegimeInternacao(Value: WideString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaSolicInternacao.Get_HipotesesDiagnosticas: I212_Ct_hipoteseDiagnostica;
begin
  Result := ChildNodes['hipotesesDiagnosticas'] as I212_Ct_hipoteseDiagnostica;
end;

function T212_Ct_guiaSolicInternacao.Get_ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosExamesSolicitados'] as I212_Ct_procedimentosSolicitados;
end;

function T212_Ct_guiaSolicInternacao.Get_OPMsSolicitadas: I212_Ct_OPMSolicitadas;
begin
  Result := ChildNodes['OPMsSolicitadas'] as I212_Ct_OPMSolicitadas;
end;

function T212_Ct_guiaSolicInternacao.Get_DiasSolicitados: Integer;
begin
  Result := ChildNodes['diasSolicitados'].NodeValue;
end;

procedure T212_Ct_guiaSolicInternacao.Set_DiasSolicitados(Value: Integer);
begin
  ChildNodes['diasSolicitados'].NodeValue := Value;
end;

function T212_Ct_guiaSolicInternacao.Get_DataProvavelAdmisHosp: WideString;
begin
  Result := ChildNodes['dataProvavelAdmisHosp'].Text;
end;

procedure T212_Ct_guiaSolicInternacao.Set_DataProvavelAdmisHosp(Value: WideString);
begin
  ChildNodes['dataProvavelAdmisHosp'].NodeValue := Value;
end;

function T212_Ct_guiaSolicInternacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaSolicInternacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaSolicInternacaoList }

function T212_Ct_guiaSolicInternacaoList.Add: I212_Ct_guiaSolicInternacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaSolicInternacao;
end;

function T212_Ct_guiaSolicInternacaoList.Insert(const Index: Integer): I212_Ct_guiaSolicInternacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaSolicInternacao;
end;
function T212_Ct_guiaSolicInternacaoList.Get_Item(Index: Integer): I212_Ct_guiaSolicInternacao;
begin
  Result := List[Index] as I212_Ct_guiaSolicInternacao;
end;

{ T212_Ct_cabecalhoSolicitacao }

function T212_Ct_cabecalhoSolicitacao.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Ct_cabecalhoSolicitacao.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T212_Ct_cabecalhoSolicitacao.Get_DataEmissaoGuia: WideString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure T212_Ct_cabecalhoSolicitacao.Set_DataEmissaoGuia(Value: WideString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function T212_Ct_cabecalhoSolicitacao.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T212_Ct_cabecalhoSolicitacao.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T212_Ct_cabecalhoSolicitacao.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T212_Ct_cabecalhoSolicitacao.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

{ T212_Ct_solicitante }

procedure T212_Ct_solicitante.AfterConstruction;
begin
  RegisterChildNode('contratado', T212_Ct_contratado);
  RegisterChildNode('profissional', T212_Ct_identificacaoProfissional);
  inherited;
end;

function T212_Ct_solicitante.Get_Contratado: I212_Ct_contratado;
begin
  Result := ChildNodes['contratado'] as I212_Ct_contratado;
end;

function T212_Ct_solicitante.Get_Profissional: I212_Ct_identificacaoProfissional;
begin
  Result := ChildNodes['profissional'] as I212_Ct_identificacaoProfissional;
end;

{ T212_Ct_identificacaoProfissional }

procedure T212_Ct_identificacaoProfissional.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T212_Ct_conselhoProfissional);
  inherited;
end;

function T212_Ct_identificacaoProfissional.Get_NomeProfissional: WideString;
begin
  Result := ChildNodes['nomeProfissional'].Text;
end;

procedure T212_Ct_identificacaoProfissional.Set_NomeProfissional(Value: WideString);
begin
  ChildNodes['nomeProfissional'].NodeValue := Value;
end;

function T212_Ct_identificacaoProfissional.Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I212_Ct_conselhoProfissional;
end;

function T212_Ct_identificacaoProfissional.Get_Cbos: WideString;
begin
  Result := ChildNodes['cbos'].Text;
end;

procedure T212_Ct_identificacaoProfissional.Set_Cbos(Value: WideString);
begin
  ChildNodes['cbos'].NodeValue := Value;
end;

{ T212_Ct_conselhoProfissional }

function T212_Ct_conselhoProfissional.Get_SiglaConselho: WideString;
begin
  Result := ChildNodes['siglaConselho'].Text;
end;

procedure T212_Ct_conselhoProfissional.Set_SiglaConselho(Value: WideString);
begin
  ChildNodes['siglaConselho'].NodeValue := Value;
end;

function T212_Ct_conselhoProfissional.Get_NumeroConselho: WideString;
begin
  Result := ChildNodes['numeroConselho'].Text;
end;

procedure T212_Ct_conselhoProfissional.Set_NumeroConselho(Value: WideString);
begin
  ChildNodes['numeroConselho'].NodeValue := Value;
end;

function T212_Ct_conselhoProfissional.Get_UfConselho: WideString;
begin
  Result := ChildNodes['ufConselho'].Text;
end;

procedure T212_Ct_conselhoProfissional.Set_UfConselho(Value: WideString);
begin
  ChildNodes['ufConselho'].NodeValue := Value;
end;

{ T212_PrestadorSolicitado }

function T212_PrestadorSolicitado.Get_NomePrestador: WideString;
begin
  Result := ChildNodes['nomePrestador'].Text;
end;

procedure T212_PrestadorSolicitado.Set_NomePrestador(Value: WideString);
begin
  ChildNodes['nomePrestador'].NodeValue := Value;
end;

{ T212_Ct_hipoteseDiagnostica }

procedure T212_Ct_hipoteseDiagnostica.AfterConstruction;
begin
  RegisterChildNode('CIDPrincipal', T212_Ct_diagnosticoGuia);
  RegisterChildNode('diagnosticosSecundarios', T212_Ct_diagnosticosSecundarios);
  FDiagnosticosSecundarios := CreateCollection(T212_Ct_diagnosticosSecundariosList, I212_Ct_diagnosticosSecundarios, 'diagnosticosSecundarios') as I212_Ct_diagnosticosSecundariosList;
  inherited;
end;

function T212_Ct_hipoteseDiagnostica.Get_CIDPrincipal: I212_Ct_diagnosticoGuia;
begin
  Result := ChildNodes['CIDPrincipal'] as I212_Ct_diagnosticoGuia;
end;

function T212_Ct_hipoteseDiagnostica.Get_DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
begin
  Result := FDiagnosticosSecundarios;
end;

{ T212_Ct_diagnosticoGuia }

procedure T212_Ct_diagnosticoGuia.AfterConstruction;
begin
  RegisterChildNode('CID', T212_Ct_diagnostico);
  RegisterChildNode('tempoReferidoEvolucaoDoenca', T212_Ct_tempoEvolucaoDoenca);
  inherited;
end;

function T212_Ct_diagnosticoGuia.Get_CID: I212_Ct_diagnostico;
begin
  Result := ChildNodes['CID'] as I212_Ct_diagnostico;
end;

function T212_Ct_diagnosticoGuia.Get_TipoDoenca: WideString;
begin
  Result := ChildNodes['tipoDoenca'].Text;
end;

procedure T212_Ct_diagnosticoGuia.Set_TipoDoenca(Value: WideString);
begin
  ChildNodes['tipoDoenca'].NodeValue := Value;
end;

function T212_Ct_diagnosticoGuia.Get_TempoReferidoEvolucaoDoenca: I212_Ct_tempoEvolucaoDoenca;
begin
  Result := ChildNodes['tempoReferidoEvolucaoDoenca'] as I212_Ct_tempoEvolucaoDoenca;
end;

function T212_Ct_diagnosticoGuia.Get_IndicadorAcidente: Integer;
begin
  Result := ChildNodes['indicadorAcidente'].NodeValue;
end;

procedure T212_Ct_diagnosticoGuia.Set_IndicadorAcidente(Value: Integer);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

{ T212_Ct_diagnostico }

function T212_Ct_diagnostico.Get_NomeTabela: WideString;
begin
  Result := ChildNodes['nomeTabela'].Text;
end;

procedure T212_Ct_diagnostico.Set_NomeTabela(Value: WideString);
begin
  ChildNodes['nomeTabela'].NodeValue := Value;
end;

function T212_Ct_diagnostico.Get_CodigoDiagnostico: WideString;
begin
  Result := ChildNodes['codigoDiagnostico'].Text;
end;

procedure T212_Ct_diagnostico.Set_CodigoDiagnostico(Value: WideString);
begin
  ChildNodes['codigoDiagnostico'].NodeValue := Value;
end;

function T212_Ct_diagnostico.Get_DescricaoDiagnostico: WideString;
begin
  Result := ChildNodes['descricaoDiagnostico'].Text;
end;

procedure T212_Ct_diagnostico.Set_DescricaoDiagnostico(Value: WideString);
begin
  ChildNodes['descricaoDiagnostico'].NodeValue := Value;
end;

{ T212_Ct_tempoEvolucaoDoenca }

function T212_Ct_tempoEvolucaoDoenca.Get_Valor: Integer;
begin
  Result := ChildNodes['valor'].NodeValue;
end;

procedure T212_Ct_tempoEvolucaoDoenca.Set_Valor(Value: Integer);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T212_Ct_tempoEvolucaoDoenca.Get_UnidadeTempo: WideString;
begin
  Result := ChildNodes['unidadeTempo'].Text;
end;

procedure T212_Ct_tempoEvolucaoDoenca.Set_UnidadeTempo(Value: WideString);
begin
  ChildNodes['unidadeTempo'].NodeValue := Value;
end;

{ T212_Ct_diagnosticosSecundarios }

procedure T212_Ct_diagnosticosSecundarios.AfterConstruction;
begin
  RegisterChildNode('CID', T212_Ct_diagnostico);
  ItemTag := 'CID';
  ItemInterface := I212_Ct_diagnostico;
  inherited;
end;

function T212_Ct_diagnosticosSecundarios.Get_CID(Index: Integer): I212_Ct_diagnostico;
begin
  Result := List[Index] as I212_Ct_diagnostico;
end;

function T212_Ct_diagnosticosSecundarios.Add: I212_Ct_diagnostico;
begin
  Result := AddItem(-1) as I212_Ct_diagnostico;
end;

function T212_Ct_diagnosticosSecundarios.Insert(const Index: Integer): I212_Ct_diagnostico;
begin
  Result := AddItem(Index) as I212_Ct_diagnostico;
end;

{ T212_Ct_diagnosticosSecundariosList }

function T212_Ct_diagnosticosSecundariosList.Add: I212_Ct_diagnosticosSecundarios;
begin
  Result := AddItem(-1) as I212_Ct_diagnosticosSecundarios;
end;

function T212_Ct_diagnosticosSecundariosList.Insert(const Index: Integer): I212_Ct_diagnosticosSecundarios;
begin
  Result := AddItem(Index) as I212_Ct_diagnosticosSecundarios;
end;
function T212_Ct_diagnosticosSecundariosList.Get_Item(Index: Integer): I212_Ct_diagnosticosSecundarios;
begin
  Result := List[Index] as I212_Ct_diagnosticosSecundarios;
end;

{ T212_Ct_procedimentosSolicitados }

procedure T212_Ct_procedimentosSolicitados.AfterConstruction;
begin
  RegisterChildNode('procedimentoSolicitado', T212_ProcedimentoSolicitado);
  ItemTag := 'procedimentoSolicitado';
  ItemInterface := I212_ProcedimentoSolicitado;
  inherited;
end;

function T212_Ct_procedimentosSolicitados.Get_ProcedimentoSolicitado(Index: Integer): I212_ProcedimentoSolicitado;
begin
  Result := List[Index] as I212_ProcedimentoSolicitado;
end;

function T212_Ct_procedimentosSolicitados.Add: I212_ProcedimentoSolicitado;
begin
  Result := AddItem(-1) as I212_ProcedimentoSolicitado;
end;

function T212_Ct_procedimentosSolicitados.Insert(const Index: Integer): I212_ProcedimentoSolicitado;
begin
  Result := AddItem(Index) as I212_ProcedimentoSolicitado;
end;

{ T212_ProcedimentoSolicitado }

procedure T212_ProcedimentoSolicitado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_tabela);
  inherited;
end;

function T212_ProcedimentoSolicitado.Get_QuantidadeSolicitada: WideString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure T212_ProcedimentoSolicitado.Set_QuantidadeSolicitada(Value: WideString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function T212_ProcedimentoSolicitado.Get_Procedimento: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I212_Ct_tabela;
end;

{ T212_Ct_OPMSolicitadas }

procedure T212_Ct_OPMSolicitadas.AfterConstruction;
begin
  RegisterChildNode('OPMSolicitada', T212_OPMSolicitada);
  ItemTag := 'OPMSolicitada';
  ItemInterface := I212_OPMSolicitada;
  inherited;
end;

function T212_Ct_OPMSolicitadas.Get_OPMSolicitada(Index: Integer): I212_OPMSolicitada;
begin
  Result := List[Index] as I212_OPMSolicitada;
end;

function T212_Ct_OPMSolicitadas.Add: I212_OPMSolicitada;
begin
  Result := AddItem(-1) as I212_OPMSolicitada;
end;

function T212_Ct_OPMSolicitadas.Insert(const Index: Integer): I212_OPMSolicitada;
begin
  Result := AddItem(Index) as I212_OPMSolicitada;
end;

{ T212_OPMSolicitada }

procedure T212_OPMSolicitada.AfterConstruction;
begin
  RegisterChildNode('OPM', T212_Ct_tabela);
  inherited;
end;

function T212_OPMSolicitada.Get_QuantidadeSolicitada: WideString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure T212_OPMSolicitada.Set_QuantidadeSolicitada(Value: WideString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function T212_OPMSolicitada.Get_Fabricante: WideString;
begin
  Result := ChildNodes['fabricante'].Text;
end;

procedure T212_OPMSolicitada.Set_Fabricante(Value: WideString);
begin
  ChildNodes['fabricante'].NodeValue := Value;
end;

function T212_OPMSolicitada.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T212_OPMSolicitada.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T212_OPMSolicitada.Get_OPM: I212_Ct_tabela;
begin
  Result := ChildNodes['OPM'] as I212_Ct_tabela;
end;

{ T212_Ct_guiaSolicitacaoSP_SADT }

procedure T212_Ct_guiaSolicitacaoSP_SADT.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSolicitacaoSADTSP', T212_Ct_cabecalhoSolicitacao);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T212_Ct_solicitante);
  RegisterChildNode('Diagnostico', T212_Ct_diagnostico);
  RegisterChildNode('procedimentosSolicitados', T212_Ct_procedimentosSolicitados);
  RegisterChildNode('opmSolicitada', T212_Ct_OPMSolicitadas);
  inherited;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_IdentificacaoGuiaSolicitacaoSADTSP: I212_Ct_cabecalhoSolicitacao;
begin
  Result := ChildNodes['identificacaoGuiaSolicitacaoSADTSP'] as I212_Ct_cabecalhoSolicitacao;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_NumeroGuiaPrincipal: Integer;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].NodeValue;
end;

procedure T212_Ct_guiaSolicitacaoSP_SADT.Set_NumeroGuiaPrincipal(Value: Integer);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_DadosSolicitante: I212_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I212_Ct_solicitante;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_CaraterSolicitacao: WideString;
begin
  Result := ChildNodes['caraterSolicitacao'].Text;
end;

procedure T212_Ct_guiaSolicitacaoSP_SADT.Set_CaraterSolicitacao(Value: WideString);
begin
  ChildNodes['caraterSolicitacao'].NodeValue := Value;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_DataHoraSolicitacao: WideString;
begin
  Result := ChildNodes['dataHoraSolicitacao'].Text;
end;

procedure T212_Ct_guiaSolicitacaoSP_SADT.Set_DataHoraSolicitacao(Value: WideString);
begin
  ChildNodes['dataHoraSolicitacao'].NodeValue := Value;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_Diagnostico: I212_Ct_diagnostico;
begin
  Result := ChildNodes['Diagnostico'] as I212_Ct_diagnostico;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T212_Ct_guiaSolicitacaoSP_SADT.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_ProcedimentosSolicitados: I212_Ct_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosSolicitados'] as I212_Ct_procedimentosSolicitados;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_OpmSolicitada: I212_Ct_OPMSolicitadas;
begin
  Result := ChildNodes['opmSolicitada'] as I212_Ct_OPMSolicitadas;
end;

function T212_Ct_guiaSolicitacaoSP_SADT.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaSolicitacaoSP_SADT.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaSolicitacaoSP_SADTList }

function T212_Ct_guiaSolicitacaoSP_SADTList.Add: I212_Ct_guiaSolicitacaoSP_SADT;
begin
  Result := AddItem(-1) as I212_Ct_guiaSolicitacaoSP_SADT;
end;

function T212_Ct_guiaSolicitacaoSP_SADTList.Insert(const Index: Integer): I212_Ct_guiaSolicitacaoSP_SADT;
begin
  Result := AddItem(Index) as I212_Ct_guiaSolicitacaoSP_SADT;
end;
function T212_Ct_guiaSolicitacaoSP_SADTList.Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoSP_SADT;
begin
  Result := List[Index] as I212_Ct_guiaSolicitacaoSP_SADT;
end;

{ T212_Ct_guiaSolicitacaoOdonto }

procedure T212_Ct_guiaSolicitacaoOdonto.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', T212_Ct_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', T212_DadosBeneficiario);
  RegisterChildNode('dadosSolicitante', T212_DadosSolicitante);
  RegisterChildNode('situacaoInicial', T212_Ct_situacaoInicial);
  RegisterChildNode('planoTratamento', T212_PlanoTratamento);
  inherited;
end;

function T212_Ct_guiaSolicitacaoOdonto.Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as I212_Ct_cabecalhoGuiaOdonto;
end;

function T212_Ct_guiaSolicitacaoOdonto.Get_DadosBeneficiario: I212_DadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_DadosBeneficiario;
end;

function T212_Ct_guiaSolicitacaoOdonto.Get_DadosSolicitante: I212_DadosSolicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I212_DadosSolicitante;
end;

function T212_Ct_guiaSolicitacaoOdonto.Get_SituacaoInicial: I212_Ct_situacaoInicial;
begin
  Result := ChildNodes['situacaoInicial'] as I212_Ct_situacaoInicial;
end;

function T212_Ct_guiaSolicitacaoOdonto.Get_PlanoTratamento: I212_PlanoTratamento;
begin
  Result := ChildNodes['planoTratamento'] as I212_PlanoTratamento;
end;

function T212_Ct_guiaSolicitacaoOdonto.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaSolicitacaoOdonto.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaSolicitacaoOdontoList }

function T212_Ct_guiaSolicitacaoOdontoList.Add: I212_Ct_guiaSolicitacaoOdonto;
begin
  Result := AddItem(-1) as I212_Ct_guiaSolicitacaoOdonto;
end;

function T212_Ct_guiaSolicitacaoOdontoList.Insert(const Index: Integer): I212_Ct_guiaSolicitacaoOdonto;
begin
  Result := AddItem(Index) as I212_Ct_guiaSolicitacaoOdonto;
end;
function T212_Ct_guiaSolicitacaoOdontoList.Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoOdonto;
begin
  Result := List[Index] as I212_Ct_guiaSolicitacaoOdonto;
end;

{ T212_Ct_cabecalhoGuiaOdonto }

function T212_Ct_cabecalhoGuiaOdonto.Get_RegistroANS: WideString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_RegistroANS(Value: WideString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuiaOdonto.Get_NumeroGuiaPrestador: WideString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_NumeroGuiaPrestador(Value: WideString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuiaOdonto.Get_NumeroGuiaOperadora: WideString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_NumeroGuiaOperadora(Value: WideString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuiaOdonto.Get_DataEmissaoGuia: WideString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_DataEmissaoGuia(Value: WideString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuiaOdonto.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuiaOdonto.Get_DataAutorizacao: WideString;
begin
  Result := ChildNodes['dataAutorizacao'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_DataAutorizacao(Value: WideString);
begin
  ChildNodes['dataAutorizacao'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuiaOdonto.Get_SenhaAutorizacao: WideString;
begin
  Result := ChildNodes['senhaAutorizacao'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_SenhaAutorizacao(Value: WideString);
begin
  ChildNodes['senhaAutorizacao'].NodeValue := Value;
end;

function T212_Ct_cabecalhoGuiaOdonto.Get_ValidadeSenha: WideString;
begin
  Result := ChildNodes['validadeSenha'].Text;
end;

procedure T212_Ct_cabecalhoGuiaOdonto.Set_ValidadeSenha(Value: WideString);
begin
  ChildNodes['validadeSenha'].NodeValue := Value;
end;

{ T212_DadosBeneficiario }

function T212_DadosBeneficiario.Get_NomeEmpresa: WideString;
begin
  Result := ChildNodes['nomeEmpresa'].Text;
end;

procedure T212_DadosBeneficiario.Set_NomeEmpresa(Value: WideString);
begin
  ChildNodes['nomeEmpresa'].NodeValue := Value;
end;

function T212_DadosBeneficiario.Get_NumeroTelefone: WideString;
begin
  Result := ChildNodes['numeroTelefone'].Text;
end;

procedure T212_DadosBeneficiario.Set_NumeroTelefone(Value: WideString);
begin
  ChildNodes['numeroTelefone'].NodeValue := Value;
end;

function T212_DadosBeneficiario.Get_NomeTitular: WideString;
begin
  Result := ChildNodes['nomeTitular'].Text;
end;

procedure T212_DadosBeneficiario.Set_NomeTitular(Value: WideString);
begin
  ChildNodes['nomeTitular'].NodeValue := Value;
end;

{ T212_DadosSolicitante }

procedure T212_DadosSolicitante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', T212_DadosContratado);
  RegisterChildNode('dadosExecutante', T212_DadosExecutante);
  inherited;
end;

function T212_DadosSolicitante.Get_DadosContratado: I212_DadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as I212_DadosContratado;
end;

function T212_DadosSolicitante.Get_DadosExecutante: I212_DadosExecutante;
begin
  Result := ChildNodes['dadosExecutante'] as I212_DadosExecutante;
end;

{ T212_DadosContratado }

procedure T212_DadosContratado.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T212_Ct_conselhoProfissional);
  inherited;
end;

function T212_DadosContratado.Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I212_Ct_conselhoProfissional;
end;

{ T212_Ct_profissionalExecutante }

procedure T212_Ct_profissionalExecutante.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', T212_Ct_conselhoProfissional);
  inherited;
end;

function T212_Ct_profissionalExecutante.Get_NomeExecutante: WideString;
begin
  Result := ChildNodes['nomeExecutante'].Text;
end;

procedure T212_Ct_profissionalExecutante.Set_NomeExecutante(Value: WideString);
begin
  ChildNodes['nomeExecutante'].NodeValue := Value;
end;

function T212_Ct_profissionalExecutante.Get_ConselhoProfissional: I212_Ct_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as I212_Ct_conselhoProfissional;
end;

function T212_Ct_profissionalExecutante.Get_CodigoCBOS: WideString;
begin
  Result := ChildNodes['codigoCBOS'].Text;
end;

procedure T212_Ct_profissionalExecutante.Set_CodigoCBOS(Value: WideString);
begin
  ChildNodes['codigoCBOS'].NodeValue := Value;
end;

{ T212_Ct_situacaoInicial }

procedure T212_Ct_situacaoInicial.AfterConstruction;
begin
  RegisterChildNode('situacaoClinica', T212_Ct_situacaoClinica);
  inherited;
end;

function T212_Ct_situacaoInicial.Get_SituacaoClinica: I212_Ct_situacaoClinica;
begin
  Result := ChildNodes['situacaoClinica'] as I212_Ct_situacaoClinica;
end;

function T212_Ct_situacaoInicial.Get_DoencaPeriodontal: Boolean;
begin
  Result := ChildNodes['doencaPeriodontal'].NodeValue;
end;

procedure T212_Ct_situacaoInicial.Set_DoencaPeriodontal(Value: Boolean);
begin
  ChildNodes['doencaPeriodontal'].NodeValue := Value;
end;

function T212_Ct_situacaoInicial.Get_AlteracaoTecidoMole: Boolean;
begin
  Result := ChildNodes['alteracaoTecidoMole'].NodeValue;
end;

procedure T212_Ct_situacaoInicial.Set_AlteracaoTecidoMole(Value: Boolean);
begin
  ChildNodes['alteracaoTecidoMole'].NodeValue := Value;
end;

function T212_Ct_situacaoInicial.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_situacaoInicial.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_situacaoClinica }

procedure T212_Ct_situacaoClinica.AfterConstruction;
begin
  RegisterChildNode('dentes', T212_Dentes);
  ItemTag := 'dentes';
  ItemInterface := I212_Dentes;
  inherited;
end;

function T212_Ct_situacaoClinica.Get_Dentes(Index: Integer): I212_Dentes;
begin
  Result := List[Index] as I212_Dentes;
end;

function T212_Ct_situacaoClinica.Add: I212_Dentes;
begin
  Result := AddItem(-1) as I212_Dentes;
end;

function T212_Ct_situacaoClinica.Insert(const Index: Integer): I212_Dentes;
begin
  Result := AddItem(Index) as I212_Dentes;
end;

{ T212_Dentes }

function T212_Dentes.Get_ElementoDentario: Integer;
begin
  Result := ChildNodes['elementoDentario'].NodeValue;
end;

procedure T212_Dentes.Set_ElementoDentario(Value: Integer);
begin
  ChildNodes['elementoDentario'].NodeValue := Value;
end;

function T212_Dentes.Get_CondicaoClinica: WideString;
begin
  Result := ChildNodes['condicaoClinica'].Text;
end;

procedure T212_Dentes.Set_CondicaoClinica(Value: WideString);
begin
  ChildNodes['condicaoClinica'].NodeValue := Value;
end;

{ T212_PlanoTratamento }

procedure T212_PlanoTratamento.AfterConstruction;
begin
  RegisterChildNode('procedimentoSolicitado', T212_Ct_procedimentoOdontologia);
  ItemTag := 'procedimentoSolicitado';
  ItemInterface := I212_Ct_procedimentoOdontologia;
  inherited;
end;

function T212_PlanoTratamento.Get_ProcedimentoSolicitado(Index: Integer): I212_Ct_procedimentoOdontologia;
begin
  Result := List[Index] as I212_Ct_procedimentoOdontologia;
end;

function T212_PlanoTratamento.Add: I212_Ct_procedimentoOdontologia;
begin
  Result := AddItem(-1) as I212_Ct_procedimentoOdontologia;
end;

function T212_PlanoTratamento.Insert(const Index: Integer): I212_Ct_procedimentoOdontologia;
begin
  Result := AddItem(Index) as I212_Ct_procedimentoOdontologia;
end;

{ T212_Ct_procedimentoOdontologia }

procedure T212_Ct_procedimentoOdontologia.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdonto', T212_Ct_tabela);
  RegisterChildNode('denteRegiao', T212_Ct_denteRegiao);
  inherited;
end;

function T212_Ct_procedimentoOdontologia.Get_ProcedimentoOdonto: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimentoOdonto'] as I212_Ct_tabela;
end;

function T212_Ct_procedimentoOdontologia.Get_DenteRegiao: I212_Ct_denteRegiao;
begin
  Result := ChildNodes['denteRegiao'] as I212_Ct_denteRegiao;
end;

function T212_Ct_procedimentoOdontologia.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T212_Ct_procedimentoOdontologia.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontologia.Get_Quantidade: Integer;
begin
  Result := ChildNodes['quantidade'].NodeValue;
end;

procedure T212_Ct_procedimentoOdontologia.Set_Quantidade(Value: Integer);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontologia.Get_QuantidadeUS: WideString;
begin
  Result := ChildNodes['quantidadeUS'].Text;
end;

procedure T212_Ct_procedimentoOdontologia.Set_QuantidadeUS(Value: WideString);
begin
  ChildNodes['quantidadeUS'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontologia.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T212_Ct_procedimentoOdontologia.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontologia.Get_FranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['franquiaCoparticipacao'].Text;
end;

procedure T212_Ct_procedimentoOdontologia.Set_FranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['franquiaCoparticipacao'].NodeValue := Value;
end;

{ T212_Ct_guiaSolicitacaoProrrogacao }

procedure T212_Ct_guiaSolicitacaoProrrogacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoProrrogacao', T212_Ct_cabecalhoGuia);
  RegisterChildNode('identificacaoGuiaReferencia', T212_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T212_Ct_solicitante);
  RegisterChildNode('procedimentosExamesSolicitados', T212_Ct_procedimentosSolicitados);
  RegisterChildNode('diarias', T212_Ct_diariaProrrogacao);
  RegisterChildNode('OPMsSolicitadas', T212_Ct_OPMSolicitadas);
  inherited;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_IdentificacaoProrrogacao: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoProrrogacao'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_IdentificacaoGuiaReferencia: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaReferencia'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_DadosSolicitante: I212_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I212_Ct_solicitante;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T212_Ct_guiaSolicitacaoProrrogacao.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_ResponsavelAutorizacao: WideString;
begin
  Result := ChildNodes['responsavelAutorizacao'].Text;
end;

procedure T212_Ct_guiaSolicitacaoProrrogacao.Set_ResponsavelAutorizacao(Value: WideString);
begin
  ChildNodes['responsavelAutorizacao'].NodeValue := Value;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_ProcedimentosExamesSolicitados: I212_Ct_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosExamesSolicitados'] as I212_Ct_procedimentosSolicitados;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_Diarias: I212_Ct_diariaProrrogacao;
begin
  Result := ChildNodes['diarias'] as I212_Ct_diariaProrrogacao;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_OPMsSolicitadas: I212_Ct_OPMSolicitadas;
begin
  Result := ChildNodes['OPMsSolicitadas'] as I212_Ct_OPMSolicitadas;
end;

function T212_Ct_guiaSolicitacaoProrrogacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaSolicitacaoProrrogacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaSolicitacaoProrrogacaoList }

function T212_Ct_guiaSolicitacaoProrrogacaoList.Add: I212_Ct_guiaSolicitacaoProrrogacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaSolicitacaoProrrogacao;
end;

function T212_Ct_guiaSolicitacaoProrrogacaoList.Insert(const Index: Integer): I212_Ct_guiaSolicitacaoProrrogacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaSolicitacaoProrrogacao;
end;
function T212_Ct_guiaSolicitacaoProrrogacaoList.Get_Item(Index: Integer): I212_Ct_guiaSolicitacaoProrrogacao;
begin
  Result := List[Index] as I212_Ct_guiaSolicitacaoProrrogacao;
end;

{ T212_Ct_solicitaStatusAutorizacao }

procedure T212_Ct_solicitaStatusAutorizacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoAutorizacao', T212_IdentificacaoAutorizacao);
  inherited;
end;

function T212_Ct_solicitaStatusAutorizacao.Get_IdentificacaoAutorizacao: I212_IdentificacaoAutorizacao;
begin
  Result := ChildNodes['identificacaoAutorizacao'] as I212_IdentificacaoAutorizacao;
end;

function T212_Ct_solicitaStatusAutorizacao.Get_DataSolicitaStatus: WideString;
begin
  Result := ChildNodes['dataSolicitaStatus'].Text;
end;

procedure T212_Ct_solicitaStatusAutorizacao.Set_DataSolicitaStatus(Value: WideString);
begin
  ChildNodes['dataSolicitaStatus'].NodeValue := Value;
end;

{ T212_IdentificacaoAutorizacao }

procedure T212_IdentificacaoAutorizacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoSolicitacao', T212_Ct_cabecalhoSolicitacao);
  ItemTag := 'identificacaoSolicitacao';
  ItemInterface := I212_Ct_cabecalhoSolicitacao;
  inherited;
end;

function T212_IdentificacaoAutorizacao.Get_IdentificacaoSolicitacao(Index: Integer): I212_Ct_cabecalhoSolicitacao;
begin
  Result := List[Index] as I212_Ct_cabecalhoSolicitacao;
end;

function T212_IdentificacaoAutorizacao.Add: I212_Ct_cabecalhoSolicitacao;
begin
  Result := AddItem(-1) as I212_Ct_cabecalhoSolicitacao;
end;

function T212_IdentificacaoAutorizacao.Insert(const Index: Integer): I212_Ct_cabecalhoSolicitacao;
begin
  Result := AddItem(Index) as I212_Ct_cabecalhoSolicitacao;
end;

{ T212_Ct_solicitaElegibilidade }

procedure T212_Ct_solicitaElegibilidade.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  inherited;
end;

function T212_Ct_solicitaElegibilidade.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_solicitaElegibilidade.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

{ T212_Ct_cancelaGuia }

procedure T212_Ct_cancelaGuia.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', T212_Ct_contratado);
  RegisterChildNode('guia', T212_GuiaCabecalho);
  inherited;
end;

function T212_Ct_cancelaGuia.Get_DadosPrestador: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as I212_Ct_contratado;
end;

function T212_Ct_cancelaGuia.Get_Guia: I212_GuiaCabecalho;
begin
  Result := ChildNodes['guia'] as I212_GuiaCabecalho;
end;

function T212_Ct_cancelaGuia.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_cancelaGuia.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_GuiaCabecalho }

procedure T212_GuiaCabecalho.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', T212_Ct_cabecalhoGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := I212_Ct_cabecalhoGuia;
  inherited;
end;

function T212_GuiaCabecalho.Get_DadosGuia(Index: Integer): I212_Ct_cabecalhoGuia;
begin
  Result := List[Index] as I212_Ct_cabecalhoGuia;
end;

function T212_GuiaCabecalho.Add: I212_Ct_cabecalhoGuia;
begin
  Result := AddItem(-1) as I212_Ct_cabecalhoGuia;
end;

function T212_GuiaCabecalho.Insert(const Index: Integer): I212_Ct_cabecalhoGuia;
begin
  Result := AddItem(Index) as I212_Ct_cabecalhoGuia;
end;

{ T212_Epilogo }

function T212_Epilogo.Get_Hash: WideString;
begin
  Result := ChildNodes['hash'].Text;
end;

procedure T212_Epilogo.Set_Hash(Value: WideString);
begin
  ChildNodes['hash'].NodeValue := Value;
end;

{ T212_Ct_atendimentoConsulta }

procedure T212_Ct_atendimentoConsulta.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Procedimento);
  inherited;
end;

function T212_Ct_atendimentoConsulta.Get_DataAtendimento: WideString;
begin
  Result := ChildNodes['dataAtendimento'].Text;
end;

procedure T212_Ct_atendimentoConsulta.Set_DataAtendimento(Value: WideString);
begin
  ChildNodes['dataAtendimento'].NodeValue := Value;
end;

function T212_Ct_atendimentoConsulta.Get_Procedimento: I212_Procedimento;
begin
  Result := ChildNodes['procedimento'] as I212_Procedimento;
end;

function T212_Ct_atendimentoConsulta.Get_TipoConsulta: WideString;
begin
  Result := ChildNodes['tipoConsulta'].Text;
end;

procedure T212_Ct_atendimentoConsulta.Set_TipoConsulta(Value: WideString);
begin
  ChildNodes['tipoConsulta'].NodeValue := Value;
end;

function T212_Ct_atendimentoConsulta.Get_TipoSaida: Integer;
begin
  Result := ChildNodes['tipoSaida'].NodeValue;
end;

procedure T212_Ct_atendimentoConsulta.Set_TipoSaida(Value: Integer);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

{ T212_Ct_atendimentoConsultaReapr }

procedure T212_Ct_atendimentoConsultaReapr.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Procedimento);
  inherited;
end;

function T212_Ct_atendimentoConsultaReapr.Get_DataAtendimento: WideString;
begin
  Result := ChildNodes['dataAtendimento'].Text;
end;

procedure T212_Ct_atendimentoConsultaReapr.Set_DataAtendimento(Value: WideString);
begin
  ChildNodes['dataAtendimento'].NodeValue := Value;
end;

function T212_Ct_atendimentoConsultaReapr.Get_Procedimento: I212_Procedimento;
begin
  Result := ChildNodes['procedimento'] as I212_Procedimento;
end;

function T212_Ct_atendimentoConsultaReapr.Get_TipoConsulta: WideString;
begin
  Result := ChildNodes['tipoConsulta'].Text;
end;

procedure T212_Ct_atendimentoConsultaReapr.Set_TipoConsulta(Value: WideString);
begin
  ChildNodes['tipoConsulta'].NodeValue := Value;
end;

function T212_Ct_atendimentoConsultaReapr.Get_TipoSaida: Integer;
begin
  Result := ChildNodes['tipoSaida'].NodeValue;
end;

procedure T212_Ct_atendimentoConsultaReapr.Set_TipoSaida(Value: Integer);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

{ T212_Procedimento }

function T212_Procedimento.Get_CodigoTabela: WideString;
begin
  Result := ChildNodes['codigoTabela'].Text;
end;

procedure T212_Procedimento.Set_CodigoTabela(Value: WideString);
begin
  ChildNodes['codigoTabela'].NodeValue := Value;
end;

function T212_Procedimento.Get_CodigoProcedimento: WideString;
begin
  Result := ChildNodes['codigoProcedimento'].Text;
end;

procedure T212_Procedimento.Set_CodigoProcedimento(Value: WideString);
begin
  ChildNodes['codigoProcedimento'].NodeValue := Value;
end;

function T212_Procedimento.Get_Justificativa: WideString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure T212_Procedimento.Set_Justificativa(Value: WideString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ T212_Ct_atendimentoOdontologia }

function T212_Ct_atendimentoOdontologia.Get_DataTerminoTratamento: WideString;
begin
  Result := ChildNodes['dataTerminoTratamento'].Text;
end;

procedure T212_Ct_atendimentoOdontologia.Set_DataTerminoTratamento(Value: WideString);
begin
  ChildNodes['dataTerminoTratamento'].NodeValue := Value;
end;

function T212_Ct_atendimentoOdontologia.Get_TipoAtendimento: WideString;
begin
  Result := ChildNodes['tipoAtendimento'].Text;
end;

procedure T212_Ct_atendimentoOdontologia.Set_TipoAtendimento(Value: WideString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

{ T212_Ct_autorizacaoGuia }

function T212_Ct_autorizacaoGuia.Get_DataAutorizacao: WideString;
begin
  Result := ChildNodes['dataAutorizacao'].Text;
end;

procedure T212_Ct_autorizacaoGuia.Set_DataAutorizacao(Value: WideString);
begin
  ChildNodes['dataAutorizacao'].NodeValue := Value;
end;

function T212_Ct_autorizacaoGuia.Get_SenhaAutorizacao: WideString;
begin
  Result := ChildNodes['senhaAutorizacao'].Text;
end;

procedure T212_Ct_autorizacaoGuia.Set_SenhaAutorizacao(Value: WideString);
begin
  ChildNodes['senhaAutorizacao'].NodeValue := Value;
end;

function T212_Ct_autorizacaoGuia.Get_ValidadeSenha: WideString;
begin
  Result := ChildNodes['validadeSenha'].Text;
end;

procedure T212_Ct_autorizacaoGuia.Set_ValidadeSenha(Value: WideString);
begin
  ChildNodes['validadeSenha'].NodeValue := Value;
end;

{ T212_Ct_autorizacaoGuiaInternacao }

function T212_Ct_autorizacaoGuiaInternacao.Get_DiasAutorizado: Integer;
begin
  Result := ChildNodes['diasAutorizado'].NodeValue;
end;

procedure T212_Ct_autorizacaoGuiaInternacao.Set_DiasAutorizado(Value: Integer);
begin
  ChildNodes['diasAutorizado'].NodeValue := Value;
end;

function T212_Ct_autorizacaoGuiaInternacao.Get_DataProvavelAdmisHosp: WideString;
begin
  Result := ChildNodes['dataProvavelAdmisHosp'].Text;
end;

procedure T212_Ct_autorizacaoGuiaInternacao.Set_DataProvavelAdmisHosp(Value: WideString);
begin
  ChildNodes['dataProvavelAdmisHosp'].NodeValue := Value;
end;

function T212_Ct_autorizacaoGuiaInternacao.Get_TipoAcomodacao: WideString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure T212_Ct_autorizacaoGuiaInternacao.Set_TipoAcomodacao(Value: WideString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

{ T212_AutorizacaoServico }

procedure T212_AutorizacaoServico.AfterConstruction;
begin
  RegisterChildNode('totalOdonto', T212_TotalOdonto);
  RegisterChildNode('ct_diariaProrrogacaoAutorizada', T212_Ct_diariaProrrogacaoAutorizada);
  inherited;
end;

function T212_AutorizacaoServico.Get_TotalOdonto: I212_TotalOdonto;
begin
  Result := ChildNodes['totalOdonto'] as I212_TotalOdonto;
end;

function T212_AutorizacaoServico.Get_Ct_diariaProrrogacaoAutorizada: I212_Ct_diariaProrrogacaoAutorizada;
begin
  Result := ChildNodes['ct_diariaProrrogacaoAutorizada'] as I212_Ct_diariaProrrogacaoAutorizada;
end;

{ T212_AutorizacaoServicoList }

function T212_AutorizacaoServicoList.Add: I212_AutorizacaoServico;
begin
  Result := AddItem(-1) as I212_AutorizacaoServico;
end;

function T212_AutorizacaoServicoList.Insert(const Index: Integer): I212_AutorizacaoServico;
begin
  Result := AddItem(Index) as I212_AutorizacaoServico;
end;
function T212_AutorizacaoServicoList.Get_Item(Index: Integer): I212_AutorizacaoServico;
begin
  Result := List[Index] as I212_AutorizacaoServico;
end;

{ T212_ProcedimentosGuia }

procedure T212_ProcedimentosGuia.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_itemSolicitacao);
  ItemTag := 'procedimento';
  ItemInterface := I212_Ct_itemSolicitacao;
  inherited;
end;

function T212_ProcedimentosGuia.Get_Procedimento(Index: Integer): I212_Ct_itemSolicitacao;
begin
  Result := List[Index] as I212_Ct_itemSolicitacao;
end;

function T212_ProcedimentosGuia.Add: I212_Ct_itemSolicitacao;
begin
  Result := AddItem(-1) as I212_Ct_itemSolicitacao;
end;

function T212_ProcedimentosGuia.Insert(const Index: Integer): I212_Ct_itemSolicitacao;
begin
  Result := AddItem(Index) as I212_Ct_itemSolicitacao;
end;

{ T212_Ct_diagnosticoSaidaInternacao }

procedure T212_Ct_diagnosticoSaidaInternacao.AfterConstruction;
begin
  RegisterChildNode('diagnosticoPrincipal', T212_Ct_diagnostico);
  RegisterChildNode('diagnosticosSecundarios', T212_Ct_diagnosticosSecundarios);
  RegisterChildNode('obito', T212_Ct_obitoInternacao);
  FDiagnosticosSecundarios := CreateCollection(T212_Ct_diagnosticosSecundariosList, I212_Ct_diagnosticosSecundarios, 'diagnosticosSecundarios') as I212_Ct_diagnosticosSecundariosList;
  inherited;
end;

function T212_Ct_diagnosticoSaidaInternacao.Get_DiagnosticoPrincipal: I212_Ct_diagnostico;
begin
  Result := ChildNodes['diagnosticoPrincipal'] as I212_Ct_diagnostico;
end;

function T212_Ct_diagnosticoSaidaInternacao.Get_IndicadorAcidente: Integer;
begin
  Result := ChildNodes['indicadorAcidente'].NodeValue;
end;

procedure T212_Ct_diagnosticoSaidaInternacao.Set_IndicadorAcidente(Value: Integer);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

function T212_Ct_diagnosticoSaidaInternacao.Get_DiagnosticosSecundarios: I212_Ct_diagnosticosSecundariosList;
begin
  Result := FDiagnosticosSecundarios;
end;

function T212_Ct_diagnosticoSaidaInternacao.Get_MotivoSaidaInternacao: WideString;
begin
  Result := ChildNodes['motivoSaidaInternacao'].Text;
end;

procedure T212_Ct_diagnosticoSaidaInternacao.Set_MotivoSaidaInternacao(Value: WideString);
begin
  ChildNodes['motivoSaidaInternacao'].NodeValue := Value;
end;

function T212_Ct_diagnosticoSaidaInternacao.Get_Obito: I212_Ct_obitoInternacao;
begin
  Result := ChildNodes['obito'] as I212_Ct_obitoInternacao;
end;

{ T212_Ct_obitoInternacao }

procedure T212_Ct_obitoInternacao.AfterConstruction;
begin
  RegisterChildNode('CID', T212_Ct_diagnostico);
  inherited;
end;

function T212_Ct_obitoInternacao.Get_CID: I212_Ct_diagnostico;
begin
  Result := ChildNodes['CID'] as I212_Ct_diagnostico;
end;

function T212_Ct_obitoInternacao.Get_NumeroDeclaracao: WideString;
begin
  Result := ChildNodes['numeroDeclaracao'].Text;
end;

procedure T212_Ct_obitoInternacao.Set_NumeroDeclaracao(Value: WideString);
begin
  ChildNodes['numeroDeclaracao'].NodeValue := Value;
end;

{ T212_Ct_executanteComplementar }

procedure T212_Ct_executanteComplementar.AfterConstruction;
begin
  RegisterChildNode('codigoProfissionalCompl', T212_Ct_identificacaoPrestador);
  inherited;
end;

function T212_Ct_executanteComplementar.Get_CodigoProfissionalCompl: I212_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['codigoProfissionalCompl'] as I212_Ct_identificacaoPrestador;
end;

function T212_Ct_executanteComplementar.Get_NomeProfissionalCompl: WideString;
begin
  Result := ChildNodes['nomeProfissionalCompl'].Text;
end;

procedure T212_Ct_executanteComplementar.Set_NomeProfissionalCompl(Value: WideString);
begin
  ChildNodes['nomeProfissionalCompl'].NodeValue := Value;
end;

{ T212_Ct_identificacaoEquipe }

procedure T212_Ct_identificacaoEquipe.AfterConstruction;
begin
  RegisterChildNode('membroEquipe', T212_MembroEquipe);
  ItemTag := 'membroEquipe';
  ItemInterface := I212_MembroEquipe;
  inherited;
end;

function T212_Ct_identificacaoEquipe.Get_MembroEquipe(Index: Integer): I212_MembroEquipe;
begin
  Result := List[Index] as I212_MembroEquipe;
end;

function T212_Ct_identificacaoEquipe.Add: I212_MembroEquipe;
begin
  Result := AddItem(-1) as I212_MembroEquipe;
end;

function T212_Ct_identificacaoEquipe.Insert(const Index: Integer): I212_MembroEquipe;
begin
  Result := AddItem(Index) as I212_MembroEquipe;
end;

{ T212_MembroEquipe }

procedure T212_MembroEquipe.AfterConstruction;
begin
  RegisterChildNode('codigoProfissional', T212_Ct_identificacaoPrestador);
  RegisterChildNode('identificacaoProfissional', T212_Ct_profissionalExecutante);
  inherited;
end;

function T212_MembroEquipe.Get_CodigoProfissional: I212_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['codigoProfissional'] as I212_Ct_identificacaoPrestador;
end;

function T212_MembroEquipe.Get_IdentificacaoProfissional: I212_Ct_profissionalExecutante;
begin
  Result := ChildNodes['identificacaoProfissional'] as I212_Ct_profissionalExecutante;
end;

function T212_MembroEquipe.Get_Cpf: WideString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure T212_MembroEquipe.Set_Cpf(Value: WideString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function T212_MembroEquipe.Get_PosicaoProfissional: Integer;
begin
  Result := ChildNodes['posicaoProfissional'].NodeValue;
end;

procedure T212_MembroEquipe.Set_PosicaoProfissional(Value: Integer);
begin
  ChildNodes['posicaoProfissional'].NodeValue := Value;
end;

{ T212_DadosExecutante }

{ T212_Ct_internacaoObstetrica }

procedure T212_Ct_internacaoObstetrica.AfterConstruction;
begin
  RegisterChildNode('declaracoesNascidosVivos', T212_Ct_numeroDN);
  inherited;
end;

function T212_Ct_internacaoObstetrica.Get_EmGestacao: Boolean;
begin
  Result := ChildNodes['emGestacao'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_EmGestacao(Value: Boolean);
begin
  ChildNodes['emGestacao'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_Aborto: Boolean;
begin
  Result := ChildNodes['aborto'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_Aborto(Value: Boolean);
begin
  ChildNodes['aborto'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_TranstornoMaternoRelGravidez: Boolean;
begin
  Result := ChildNodes['transtornoMaternoRelGravidez'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_TranstornoMaternoRelGravidez(Value: Boolean);
begin
  ChildNodes['transtornoMaternoRelGravidez'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_ComplicacaoPeriodoPuerperio: Boolean;
begin
  Result := ChildNodes['complicacaoPeriodoPuerperio'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_ComplicacaoPeriodoPuerperio(Value: Boolean);
begin
  ChildNodes['complicacaoPeriodoPuerperio'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_AtendimentoRNSalaParto: Boolean;
begin
  Result := ChildNodes['atendimentoRNSalaParto'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_AtendimentoRNSalaParto(Value: Boolean);
begin
  ChildNodes['atendimentoRNSalaParto'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_ComplicacaoNeonatal: Boolean;
begin
  Result := ChildNodes['complicacaoNeonatal'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_ComplicacaoNeonatal(Value: Boolean);
begin
  ChildNodes['complicacaoNeonatal'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_BaixoPeso: Boolean;
begin
  Result := ChildNodes['baixoPeso'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_BaixoPeso(Value: Boolean);
begin
  ChildNodes['baixoPeso'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_PartoCesareo: Boolean;
begin
  Result := ChildNodes['partoCesareo'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_PartoCesareo(Value: Boolean);
begin
  ChildNodes['partoCesareo'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_PartoNormal: Boolean;
begin
  Result := ChildNodes['partoNormal'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_PartoNormal(Value: Boolean);
begin
  ChildNodes['partoNormal'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_DeclaracoesNascidosVivos: I212_Ct_numeroDN;
begin
  Result := ChildNodes['declaracoesNascidosVivos'] as I212_Ct_numeroDN;
end;

function T212_Ct_internacaoObstetrica.Get_QtdNascidosVivosTermo: Integer;
begin
  Result := ChildNodes['qtdNascidosVivosTermo'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_QtdNascidosVivosTermo(Value: Integer);
begin
  ChildNodes['qtdNascidosVivosTermo'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_QtdNascidosMortos: Integer;
begin
  Result := ChildNodes['qtdNascidosMortos'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_QtdNascidosMortos(Value: Integer);
begin
  ChildNodes['qtdNascidosMortos'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_QtdVivosPrematuros: Integer;
begin
  Result := ChildNodes['qtdVivosPrematuros'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_QtdVivosPrematuros(Value: Integer);
begin
  ChildNodes['qtdVivosPrematuros'].NodeValue := Value;
end;

function T212_Ct_internacaoObstetrica.Get_ObitoMulher: Integer;
begin
  Result := ChildNodes['obitoMulher'].NodeValue;
end;

procedure T212_Ct_internacaoObstetrica.Set_ObitoMulher(Value: Integer);
begin
  ChildNodes['obitoMulher'].NodeValue := Value;
end;

{ T212_Ct_numeroDN }

function T212_Ct_numeroDN.Get_NumeroDN: WideString;
begin
  Result := ChildNodes['numeroDN'].Text;
end;

procedure T212_Ct_numeroDN.Set_NumeroDN(Value: WideString);
begin
  ChildNodes['numeroDN'].NodeValue := Value;
end;

{ T212_Ct_obitoNeonatal }

function T212_Ct_obitoNeonatal.Get_QtdeobitoPrecoce: Integer;
begin
  Result := ChildNodes['qtdeobitoPrecoce'].NodeValue;
end;

procedure T212_Ct_obitoNeonatal.Set_QtdeobitoPrecoce(Value: Integer);
begin
  ChildNodes['qtdeobitoPrecoce'].NodeValue := Value;
end;

function T212_Ct_obitoNeonatal.Get_QtdeobitoTardio: Integer;
begin
  Result := ChildNodes['qtdeobitoTardio'].NodeValue;
end;

procedure T212_Ct_obitoNeonatal.Set_QtdeobitoTardio(Value: Integer);
begin
  ChildNodes['qtdeobitoTardio'].NodeValue := Value;
end;

{ T212_Ct_OPMUtilizada }

procedure T212_Ct_OPMUtilizada.AfterConstruction;
begin
  RegisterChildNode('OPM', T212_OPMIdentificacao);
  inherited;
end;

function T212_Ct_OPMUtilizada.Get_OPM: I212_OPMIdentificacao;
begin
  Result := ChildNodes['OPM'] as I212_OPMIdentificacao;
end;

function T212_Ct_OPMUtilizada.Get_ValorTotalOPM: WideString;
begin
  Result := ChildNodes['valorTotalOPM'].Text;
end;

procedure T212_Ct_OPMUtilizada.Set_ValorTotalOPM(Value: WideString);
begin
  ChildNodes['valorTotalOPM'].NodeValue := Value;
end;

{ T212_OPMIdentificacao }

procedure T212_OPMIdentificacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoOPM', T212_IdentificacaoOPM);
  ItemTag := 'identificacaoOPM';
  ItemInterface := I212_IdentificacaoOPM;
  inherited;
end;

function T212_OPMIdentificacao.Get_IdentificacaoOPM(Index: Integer): I212_IdentificacaoOPM;
begin
  Result := List[Index] as I212_IdentificacaoOPM;
end;

function T212_OPMIdentificacao.Add: I212_IdentificacaoOPM;
begin
  Result := AddItem(-1) as I212_IdentificacaoOPM;
end;

function T212_OPMIdentificacao.Insert(const Index: Integer): I212_IdentificacaoOPM;
begin
  Result := AddItem(Index) as I212_IdentificacaoOPM;
end;

{ T212_IdentificacaoOPM }

procedure T212_IdentificacaoOPM.AfterConstruction;
begin
  RegisterChildNode('OPM', T212_Ct_tabela);
  inherited;
end;

function T212_IdentificacaoOPM.Get_OPM: I212_Ct_tabela;
begin
  Result := ChildNodes['OPM'] as I212_Ct_tabela;
end;

function T212_IdentificacaoOPM.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T212_IdentificacaoOPM.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T212_IdentificacaoOPM.Get_CodigoBarra: WideString;
begin
  Result := ChildNodes['codigoBarra'].Text;
end;

procedure T212_IdentificacaoOPM.Set_CodigoBarra(Value: WideString);
begin
  ChildNodes['codigoBarra'].NodeValue := Value;
end;

function T212_IdentificacaoOPM.Get_ValorUnitario: WideString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure T212_IdentificacaoOPM.Set_ValorUnitario(Value: WideString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T212_IdentificacaoOPM.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_IdentificacaoOPM.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T212_Ct_OPMUtilizadasRevisao }

procedure T212_Ct_OPMUtilizadasRevisao.AfterConstruction;
begin
  RegisterChildNode('OPMUtilizada', T212_OPMUtilizada);
  inherited;
end;

function T212_Ct_OPMUtilizadasRevisao.Get_OPMUtilizada: I212_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizada'] as I212_OPMUtilizada;
end;

function T212_Ct_OPMUtilizadasRevisao.Get_ValorTotalOPM: WideString;
begin
  Result := ChildNodes['valorTotalOPM'].Text;
end;

procedure T212_Ct_OPMUtilizadasRevisao.Set_ValorTotalOPM(Value: WideString);
begin
  ChildNodes['valorTotalOPM'].NodeValue := Value;
end;

{ T212_OPMUtilizada }

procedure T212_OPMUtilizada.AfterConstruction;
begin
  RegisterChildNode('OPM', T212_OPM);
  ItemTag := 'OPM';
  ItemInterface := I212_OPM;
  inherited;
end;

function T212_OPMUtilizada.Get_OPM(Index: Integer): I212_OPM;
begin
  Result := List[Index] as I212_OPM;
end;

function T212_OPMUtilizada.Add: I212_OPM;
begin
  Result := AddItem(-1) as I212_OPM;
end;

function T212_OPMUtilizada.Insert(const Index: Integer): I212_OPM;
begin
  Result := AddItem(Index) as I212_OPM;
end;

{ T212_OPM }

procedure T212_OPM.AfterConstruction;
begin
  RegisterChildNode('OPM', T212_Ct_tabela);
  inherited;
end;

function T212_OPM.Get_OPM: I212_Ct_tabela;
begin
  Result := ChildNodes['OPM'] as I212_Ct_tabela;
end;

function T212_OPM.Get_ValorUnitario: WideString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure T212_OPM.Set_ValorUnitario(Value: WideString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T212_OPM.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T212_OPM.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T212_OPM.Get_CodigoBarra: WideString;
begin
  Result := ChildNodes['codigoBarra'].Text;
end;

procedure T212_OPM.Set_CodigoBarra(Value: WideString);
begin
  ChildNodes['codigoBarra'].NodeValue := Value;
end;

function T212_OPM.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_OPM.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T212_OPM.Get_Justificativa: WideString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure T212_OPM.Set_Justificativa(Value: WideString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ T212_Ct_outrasDespesas }

procedure T212_Ct_outrasDespesas.AfterConstruction;
begin
  RegisterChildNode('despesa', T212_Despesa);
  FDespesa := CreateCollection(T212_DespesaList, I212_Despesa, 'despesa') as I212_DespesaList;
  inherited;
end;

function T212_Ct_outrasDespesas.Get_Despesa: I212_DespesaList;
begin
  Result := FDespesa;
end;

function T212_Ct_outrasDespesas.Get_TotalGeralOutrasDespesas: WideString;
begin
  Result := ChildNodes['totalGeralOutrasDespesas'].Text;
end;

procedure T212_Ct_outrasDespesas.Set_TotalGeralOutrasDespesas(Value: WideString);
begin
  ChildNodes['totalGeralOutrasDespesas'].NodeValue := Value;
end;

{ T212_Despesa }

procedure T212_Despesa.AfterConstruction;
begin
  RegisterChildNode('identificadorDespesa', T212_Ct_tabela);
  inherited;
end;

function T212_Despesa.Get_IdentificadorDespesa: I212_Ct_tabela;
begin
  Result := ChildNodes['identificadorDespesa'] as I212_Ct_tabela;
end;

function T212_Despesa.Get_TipoDespesa: Integer;
begin
  Result := ChildNodes['tipoDespesa'].NodeValue;
end;

procedure T212_Despesa.Set_TipoDespesa(Value: Integer);
begin
  ChildNodes['tipoDespesa'].NodeValue := Value;
end;

function T212_Despesa.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T212_Despesa.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T212_Despesa.Get_HoraInicial: WideString;
begin
  Result := ChildNodes['horaInicial'].Text;
end;

procedure T212_Despesa.Set_HoraInicial(Value: WideString);
begin
  ChildNodes['horaInicial'].NodeValue := Value;
end;

function T212_Despesa.Get_HoraFinal: WideString;
begin
  Result := ChildNodes['horaFinal'].Text;
end;

procedure T212_Despesa.Set_HoraFinal(Value: WideString);
begin
  ChildNodes['horaFinal'].NodeValue := Value;
end;

function T212_Despesa.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T212_Despesa.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T212_Despesa.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T212_Despesa.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T212_Despesa.Get_ValorUnitario: WideString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure T212_Despesa.Set_ValorUnitario(Value: WideString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T212_Despesa.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_Despesa.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T212_DespesaList }

function T212_DespesaList.Add: I212_Despesa;
begin
  Result := AddItem(-1) as I212_Despesa;
end;

function T212_DespesaList.Insert(const Index: Integer): I212_Despesa;
begin
  Result := AddItem(Index) as I212_Despesa;
end;
function T212_DespesaList.Get_Item(Index: Integer): I212_Despesa;
begin
  Result := List[Index] as I212_Despesa;
end;

{ T212_Ct_outrasDespesasRevisao }

procedure T212_Ct_outrasDespesasRevisao.AfterConstruction;
begin
  RegisterChildNode('itensDespesas', T212_ItensDespesas);
  FItensDespesas := CreateCollection(T212_ItensDespesasList, I212_ItensDespesas, 'itensDespesas') as I212_ItensDespesasList;
  inherited;
end;

function T212_Ct_outrasDespesasRevisao.Get_ItensDespesas: I212_ItensDespesasList;
begin
  Result := FItensDespesas;
end;

function T212_Ct_outrasDespesasRevisao.Get_TotalGeralOutrasDespesas: Double;
begin
  Result := ChildNodes['totalGeralOutrasDespesas'].NodeValue;
end;

procedure T212_Ct_outrasDespesasRevisao.Set_TotalGeralOutrasDespesas(Value: Double);
begin
  ChildNodes['totalGeralOutrasDespesas'].NodeValue := Value;
end;

{ T212_ItensDespesas }

procedure T212_ItensDespesas.AfterConstruction;
begin
  RegisterChildNode('despesa', T212_Ct_tabela);
  inherited;
end;

function T212_ItensDespesas.Get_TipoDespesa: Integer;
begin
  Result := ChildNodes['tipoDespesa'].NodeValue;
end;

procedure T212_ItensDespesas.Set_TipoDespesa(Value: Integer);
begin
  ChildNodes['tipoDespesa'].NodeValue := Value;
end;

function T212_ItensDespesas.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T212_ItensDespesas.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function T212_ItensDespesas.Get_Despesa: I212_Ct_tabela;
begin
  Result := ChildNodes['despesa'] as I212_Ct_tabela;
end;

function T212_ItensDespesas.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T212_ItensDespesas.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T212_ItensDespesas.Get_Quantidade: WideString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure T212_ItensDespesas.Set_Quantidade(Value: WideString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function T212_ItensDespesas.Get_ValorUnitario: Double;
begin
  Result := ChildNodes['valorUnitario'].NodeValue;
end;

procedure T212_ItensDespesas.Set_ValorUnitario(Value: Double);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function T212_ItensDespesas.Get_ValorTotal: Double;
begin
  Result := ChildNodes['valorTotal'].NodeValue;
end;

procedure T212_ItensDespesas.Set_ValorTotal(Value: Double);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T212_ItensDespesas.Get_Justificativa: WideString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure T212_ItensDespesas.Set_Justificativa(Value: WideString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ T212_ItensDespesasList }

function T212_ItensDespesasList.Add: I212_ItensDespesas;
begin
  Result := AddItem(-1) as I212_ItensDespesas;
end;

function T212_ItensDespesasList.Insert(const Index: Integer): I212_ItensDespesas;
begin
  Result := AddItem(Index) as I212_ItensDespesas;
end;
function T212_ItensDespesasList.Get_Item(Index: Integer): I212_ItensDespesas;
begin
  Result := List[Index] as I212_ItensDespesas;
end;

{ T212_Ct_procedimentosRealizados }

procedure T212_Ct_procedimentosRealizados.AfterConstruction;
begin
  RegisterChildNode('procedimentoRealizado', T212_ProcedimentoRealizado);
  ItemTag := 'procedimentoRealizado';
  ItemInterface := I212_ProcedimentoRealizado;
  inherited;
end;

function T212_Ct_procedimentosRealizados.Get_ProcedimentoRealizado(Index: Integer): I212_ProcedimentoRealizado;
begin
  Result := List[Index] as I212_ProcedimentoRealizado;
end;

function T212_Ct_procedimentosRealizados.Add: I212_ProcedimentoRealizado;
begin
  Result := AddItem(-1) as I212_ProcedimentoRealizado;
end;

function T212_Ct_procedimentosRealizados.Insert(const Index: Integer): I212_ProcedimentoRealizado;
begin
  Result := AddItem(Index) as I212_ProcedimentoRealizado;
end;

{ T212_ProcedimentoRealizado }

procedure T212_ProcedimentoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_tabela);
  inherited;
end;

function T212_ProcedimentoRealizado.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_HoraInicio: WideString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_HoraInicio(Value: WideString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_HoraFim: WideString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_HoraFim(Value: WideString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_Procedimento: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I212_Ct_tabela;
end;

function T212_ProcedimentoRealizado.Get_QuantidadeRealizada: WideString;
begin
  Result := ChildNodes['quantidadeRealizada'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_QuantidadeRealizada(Value: WideString);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_ViaAcesso: WideString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_ViaAcesso(Value: WideString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_TecnicaUtilizada: WideString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_TecnicaUtilizada(Value: WideString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T212_ProcedimentoRealizado.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_ProcedimentoRealizado.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T212_Ct_procedimentoOdontoRevisao }

procedure T212_Ct_procedimentoOdontoRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdontologia', T212_ProcedimentoOdontologia);
  inherited;
end;

function T212_Ct_procedimentoOdontoRevisao.Get_ProcedimentoOdontologia: I212_ProcedimentoOdontologia;
begin
  Result := ChildNodes['procedimentoOdontologia'] as I212_ProcedimentoOdontologia;
end;

function T212_Ct_procedimentoOdontoRevisao.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_Ct_procedimentoOdontoRevisao.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRevisao.Get_QuantidadeTotalUS: WideString;
begin
  Result := ChildNodes['quantidadeTotalUS'].Text;
end;

procedure T212_Ct_procedimentoOdontoRevisao.Set_QuantidadeTotalUS(Value: WideString);
begin
  ChildNodes['quantidadeTotalUS'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRevisao.Get_TotalFranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure T212_Ct_procedimentoOdontoRevisao.Set_TotalFranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

function T212_Ct_procedimentoOdontoRevisao.Get_JustificativaRevisao: WideString;
begin
  Result := ChildNodes['justificativaRevisao'].Text;
end;

procedure T212_Ct_procedimentoOdontoRevisao.Set_JustificativaRevisao(Value: WideString);
begin
  ChildNodes['justificativaRevisao'].NodeValue := Value;
end;

{ T212_ProcedimentoOdontologia }

function T212_ProcedimentoOdontologia.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T212_ProcedimentoOdontologia.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

{ T212_Ct_procedimentoRealizadoEquipe }

procedure T212_Ct_procedimentoRealizadoEquipe.AfterConstruction;
begin
  RegisterChildNode('procedimentos', T212_ProcedimentosEquipe);
  ItemTag := 'procedimentos';
  ItemInterface := I212_ProcedimentosEquipe;
  inherited;
end;

function T212_Ct_procedimentoRealizadoEquipe.Get_Procedimentos(Index: Integer): I212_ProcedimentosEquipe;
begin
  Result := List[Index] as I212_ProcedimentosEquipe;
end;

function T212_Ct_procedimentoRealizadoEquipe.Add: I212_ProcedimentosEquipe;
begin
  Result := AddItem(-1) as I212_ProcedimentosEquipe;
end;

function T212_Ct_procedimentoRealizadoEquipe.Insert(const Index: Integer): I212_ProcedimentosEquipe;
begin
  Result := AddItem(Index) as I212_ProcedimentosEquipe;
end;

{ T212_ProcedimentosEquipe }

procedure T212_ProcedimentosEquipe.AfterConstruction;
begin
  RegisterChildNode('equipe', T212_Ct_identificacaoEquipe);
  RegisterChildNode('procedimento', T212_Ct_tabela);
  inherited;
end;

function T212_ProcedimentosEquipe.Get_Equipe: I212_Ct_identificacaoEquipe;
begin
  Result := ChildNodes['equipe'] as I212_Ct_identificacaoEquipe;
end;

function T212_ProcedimentosEquipe.Get_Procedimento: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I212_Ct_tabela;
end;

function T212_ProcedimentosEquipe.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_HoraInicio: WideString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_HoraInicio(Value: WideString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_HoraFim: WideString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_HoraFim(Value: WideString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_QuantidadeRealizada: WideString;
begin
  Result := ChildNodes['quantidadeRealizada'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_QuantidadeRealizada(Value: WideString);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_ViaAcesso: WideString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_ViaAcesso(Value: WideString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_TecnicaUtilizada: WideString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_TecnicaUtilizada(Value: WideString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_ReducaoAcrescimo: WideString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_ReducaoAcrescimo(Value: WideString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_Valor: WideString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_Valor(Value: WideString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T212_ProcedimentosEquipe.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_ProcedimentosEquipe.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ T212_Ct_procedimentoRevisao }

procedure T212_Ct_procedimentoRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimentosRevisao', T212_ProcedimentosRevisao);
  ItemTag := 'procedimentosRevisao';
  ItemInterface := I212_ProcedimentosRevisao;
  inherited;
end;

function T212_Ct_procedimentoRevisao.Get_ProcedimentosRevisao(Index: Integer): I212_ProcedimentosRevisao;
begin
  Result := List[Index] as I212_ProcedimentosRevisao;
end;

function T212_Ct_procedimentoRevisao.Add: I212_ProcedimentosRevisao;
begin
  Result := AddItem(-1) as I212_ProcedimentosRevisao;
end;

function T212_Ct_procedimentoRevisao.Insert(const Index: Integer): I212_ProcedimentosRevisao;
begin
  Result := AddItem(Index) as I212_ProcedimentosRevisao;
end;

{ T212_Ct_procedimentoRevisaoList }

function T212_Ct_procedimentoRevisaoList.Add: I212_Ct_procedimentoRevisao;
begin
  Result := AddItem(-1) as I212_Ct_procedimentoRevisao;
end;

function T212_Ct_procedimentoRevisaoList.Insert(const Index: Integer): I212_Ct_procedimentoRevisao;
begin
  Result := AddItem(Index) as I212_Ct_procedimentoRevisao;
end;
function T212_Ct_procedimentoRevisaoList.Get_Item(Index: Integer): I212_Ct_procedimentoRevisao;
begin
  Result := List[Index] as I212_Ct_procedimentoRevisao;
end;

{ T212_ProcedimentosRevisao }

procedure T212_ProcedimentosRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_tabela);
  inherited;
end;

function T212_ProcedimentosRevisao.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T212_ProcedimentosRevisao.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_HoraInicio: WideString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure T212_ProcedimentosRevisao.Set_HoraInicio(Value: WideString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_HoraFim: WideString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure T212_ProcedimentosRevisao.Set_HoraFim(Value: WideString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_Procedimento: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I212_Ct_tabela;
end;

function T212_ProcedimentosRevisao.Get_QuantidadeRealizada: WideString;
begin
  Result := ChildNodes['quantidadeRealizada'].Text;
end;

procedure T212_ProcedimentosRevisao.Set_QuantidadeRealizada(Value: WideString);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_ViaAcesso: WideString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure T212_ProcedimentosRevisao.Set_ViaAcesso(Value: WideString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_TecnicaUtilizada: WideString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure T212_ProcedimentosRevisao.Set_TecnicaUtilizada(Value: WideString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_ReducaoAcrescimo: Double;
begin
  Result := ChildNodes['reducaoAcrescimo'].NodeValue;
end;

procedure T212_ProcedimentosRevisao.Set_ReducaoAcrescimo(Value: Double);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_Valor: Double;
begin
  Result := ChildNodes['valor'].NodeValue;
end;

procedure T212_ProcedimentosRevisao.Set_Valor(Value: Double);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_ValorTotal: Double;
begin
  Result := ChildNodes['valorTotal'].NodeValue;
end;

procedure T212_ProcedimentosRevisao.Set_ValorTotal(Value: Double);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T212_ProcedimentosRevisao.Get_JustificativaRevisao: WideString;
begin
  Result := ChildNodes['justificativaRevisao'].Text;
end;

procedure T212_ProcedimentosRevisao.Set_JustificativaRevisao(Value: WideString);
begin
  ChildNodes['justificativaRevisao'].NodeValue := Value;
end;

{ T212_Ct_situacaoDentes }

function T212_Ct_situacaoDentes.Get_Dente: Integer;
begin
  Result := ChildNodes['dente'].NodeValue;
end;

procedure T212_Ct_situacaoDentes.Set_Dente(Value: Integer);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T212_Ct_situacaoDentes.Get_Obturado: Boolean;
begin
  Result := ChildNodes['obturado'].NodeValue;
end;

procedure T212_Ct_situacaoDentes.Set_Obturado(Value: Boolean);
begin
  ChildNodes['obturado'].NodeValue := Value;
end;

function T212_Ct_situacaoDentes.Get_Careado: Boolean;
begin
  Result := ChildNodes['careado'].NodeValue;
end;

procedure T212_Ct_situacaoDentes.Set_Careado(Value: Boolean);
begin
  ChildNodes['careado'].NodeValue := Value;
end;

function T212_Ct_situacaoDentes.Get_Perdido: Boolean;
begin
  Result := ChildNodes['perdido'].NodeValue;
end;

procedure T212_Ct_situacaoDentes.Set_Perdido(Value: Boolean);
begin
  ChildNodes['perdido'].NodeValue := Value;
end;

{ T212_Ct_totaisOdonto }

function T212_Ct_totaisOdonto.Get_ServicoExecutado: WideString;
begin
  Result := ChildNodes['servicoExecutado'].Text;
end;

procedure T212_Ct_totaisOdonto.Set_ServicoExecutado(Value: WideString);
begin
  ChildNodes['servicoExecutado'].NodeValue := Value;
end;

function T212_Ct_totaisOdonto.Get_Taxas: WideString;
begin
  Result := ChildNodes['taxas'].Text;
end;

procedure T212_Ct_totaisOdonto.Set_Taxas(Value: WideString);
begin
  ChildNodes['taxas'].NodeValue := Value;
end;

function T212_Ct_totaisOdonto.Get_Materiais: WideString;
begin
  Result := ChildNodes['materiais'].Text;
end;

procedure T212_Ct_totaisOdonto.Set_Materiais(Value: WideString);
begin
  ChildNodes['materiais'].NodeValue := Value;
end;

function T212_Ct_totaisOdonto.Get_Medicamentos: WideString;
begin
  Result := ChildNodes['medicamentos'].Text;
end;

procedure T212_Ct_totaisOdonto.Set_Medicamentos(Value: WideString);
begin
  ChildNodes['medicamentos'].NodeValue := Value;
end;

function T212_Ct_totaisOdonto.Get_TotalGeral: WideString;
begin
  Result := ChildNodes['totalGeral'].Text;
end;

procedure T212_Ct_totaisOdonto.Set_TotalGeral(Value: WideString);
begin
  ChildNodes['totalGeral'].NodeValue := Value;
end;

{ T212_Ct_tratamenteOdontoRealizado }

procedure T212_Ct_tratamenteOdontoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_tabela);
  inherited;
end;

function T212_Ct_tratamenteOdontoRealizado.Get_Data: WideString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure T212_Ct_tratamenteOdontoRealizado.Set_Data(Value: WideString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function T212_Ct_tratamenteOdontoRealizado.Get_Procedimento: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I212_Ct_tabela;
end;

function T212_Ct_tratamenteOdontoRealizado.Get_Dente: Integer;
begin
  Result := ChildNodes['dente'].NodeValue;
end;

procedure T212_Ct_tratamenteOdontoRealizado.Set_Dente(Value: Integer);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T212_Ct_tratamenteOdontoRealizado.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T212_Ct_tratamenteOdontoRealizado.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

{ T212_Ct_tratamentoOdontoSolicitado }

procedure T212_Ct_tratamentoOdontoSolicitado.AfterConstruction;
begin
  RegisterChildNode('procedimento', T212_Ct_tabela);
  inherited;
end;

function T212_Ct_tratamentoOdontoSolicitado.Get_Procedimento: I212_Ct_tabela;
begin
  Result := ChildNodes['procedimento'] as I212_Ct_tabela;
end;

function T212_Ct_tratamentoOdontoSolicitado.Get_Dente: Integer;
begin
  Result := ChildNodes['dente'].NodeValue;
end;

procedure T212_Ct_tratamentoOdontoSolicitado.Set_Dente(Value: Integer);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function T212_Ct_tratamentoOdontoSolicitado.Get_Face: WideString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure T212_Ct_tratamentoOdontoSolicitado.Set_Face(Value: WideString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

{ T212_Ct_valorTotalServicos }

function T212_Ct_valorTotalServicos.Get_ServicosExecutados: WideString;
begin
  Result := ChildNodes['servicosExecutados'].Text;
end;

procedure T212_Ct_valorTotalServicos.Set_ServicosExecutados(Value: WideString);
begin
  ChildNodes['servicosExecutados'].NodeValue := Value;
end;

function T212_Ct_valorTotalServicos.Get_Diarias: WideString;
begin
  Result := ChildNodes['diarias'].Text;
end;

procedure T212_Ct_valorTotalServicos.Set_Diarias(Value: WideString);
begin
  ChildNodes['diarias'].NodeValue := Value;
end;

function T212_Ct_valorTotalServicos.Get_Taxas: WideString;
begin
  Result := ChildNodes['taxas'].Text;
end;

procedure T212_Ct_valorTotalServicos.Set_Taxas(Value: WideString);
begin
  ChildNodes['taxas'].NodeValue := Value;
end;

function T212_Ct_valorTotalServicos.Get_Materiais: WideString;
begin
  Result := ChildNodes['materiais'].Text;
end;

procedure T212_Ct_valorTotalServicos.Set_Materiais(Value: WideString);
begin
  ChildNodes['materiais'].NodeValue := Value;
end;

function T212_Ct_valorTotalServicos.Get_Medicamentos: WideString;
begin
  Result := ChildNodes['medicamentos'].Text;
end;

procedure T212_Ct_valorTotalServicos.Set_Medicamentos(Value: WideString);
begin
  ChildNodes['medicamentos'].NodeValue := Value;
end;

function T212_Ct_valorTotalServicos.Get_Gases: WideString;
begin
  Result := ChildNodes['gases'].Text;
end;

procedure T212_Ct_valorTotalServicos.Set_Gases(Value: WideString);
begin
  ChildNodes['gases'].NodeValue := Value;
end;

function T212_Ct_valorTotalServicos.Get_TotalGeral: WideString;
begin
  Result := ChildNodes['totalGeral'].Text;
end;

procedure T212_Ct_valorTotalServicos.Set_TotalGeral(Value: WideString);
begin
  ChildNodes['totalGeral'].NodeValue := Value;
end;

{ T212_Guias }

{ T212_GuiaFaturamento }

procedure T212_GuiaFaturamento.AfterConstruction;
begin
  RegisterChildNode('guiaConsulta', T212_Ct_guiaConsulta);
  RegisterChildNode('guiaSP_SADT', T212_Ct_guiaSP_SADT);
  RegisterChildNode('guiaResumoInternacao', T212_Ct_guiaResumoInternacao);
  RegisterChildNode('guiaHonorarioIndividual', T212_Ct_guiaHonorarioIndividual);
  RegisterChildNode('guiaOdontologia', T212_Ct_guiaOdontologia);
  FGuiaConsulta := CreateCollection(T212_Ct_guiaConsultaList, I212_Ct_guiaConsulta, 'guiaConsulta') as I212_Ct_guiaConsultaList;
  FGuiaSP_SADT := CreateCollection(T212_Ct_guiaSP_SADTList, I212_Ct_guiaSP_SADT, 'guiaSP_SADT') as I212_Ct_guiaSP_SADTList;
  FGuiaResumoInternacao := CreateCollection(T212_Ct_guiaResumoInternacaoList, I212_Ct_guiaResumoInternacao, 'guiaResumoInternacao') as I212_Ct_guiaResumoInternacaoList;
  FGuiaHonorarioIndividual := CreateCollection(T212_Ct_guiaHonorarioIndividualList, I212_Ct_guiaHonorarioIndividual, 'guiaHonorarioIndividual') as I212_Ct_guiaHonorarioIndividualList;
  FGuiaOdontologia := CreateCollection(T212_Ct_guiaOdontologiaList, I212_Ct_guiaOdontologia, 'guiaOdontologia') as I212_Ct_guiaOdontologiaList;
  inherited;
end;

function T212_GuiaFaturamento.Get_GuiaConsulta: I212_Ct_guiaConsultaList;
begin
  Result := FGuiaConsulta;
end;

function T212_GuiaFaturamento.Get_GuiaSP_SADT: I212_Ct_guiaSP_SADTList;
begin
  Result := FGuiaSP_SADT;
end;

function T212_GuiaFaturamento.Get_GuiaResumoInternacao: I212_Ct_guiaResumoInternacaoList;
begin
  Result := FGuiaResumoInternacao;
end;

function T212_GuiaFaturamento.Get_GuiaHonorarioIndividual: I212_Ct_guiaHonorarioIndividualList;
begin
  Result := FGuiaHonorarioIndividual;
end;

function T212_GuiaFaturamento.Get_GuiaOdontologia: I212_Ct_guiaOdontologiaList;
begin
  Result := FGuiaOdontologia;
end;

{ T212_Ct_guiaConsulta }

procedure T212_Ct_guiaConsulta.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', T212_Ct_cabecalhoGuia);
  RegisterChildNode('beneficiario', T212_Ct_beneficiario);
  RegisterChildNode('dadosContratado', T212_Ct_contratado);
  RegisterChildNode('profissionalExecutante', T212_Ct_identificacaoProfissional);
  RegisterChildNode('hipoteseDiagnostica', T212_HipoteseDiagnostica);
  RegisterChildNode('dadosAtendimento', T212_DadosAtendimento);
  inherited;
end;

function T212_Ct_guiaConsulta.Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaConsulta.Get_Beneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaConsulta.Get_DadosContratado: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosContratado'] as I212_Ct_contratado;
end;

function T212_Ct_guiaConsulta.Get_ProfissionalExecutante: I212_Ct_identificacaoProfissional;
begin
  Result := ChildNodes['profissionalExecutante'] as I212_Ct_identificacaoProfissional;
end;

function T212_Ct_guiaConsulta.Get_HipoteseDiagnostica: I212_HipoteseDiagnostica;
begin
  Result := ChildNodes['hipoteseDiagnostica'] as I212_HipoteseDiagnostica;
end;

function T212_Ct_guiaConsulta.Get_DadosAtendimento: I212_DadosAtendimento;
begin
  Result := ChildNodes['dadosAtendimento'] as I212_DadosAtendimento;
end;

function T212_Ct_guiaConsulta.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaConsulta.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaConsultaList }

function T212_Ct_guiaConsultaList.Add: I212_Ct_guiaConsulta;
begin
  Result := AddItem(-1) as I212_Ct_guiaConsulta;
end;

function T212_Ct_guiaConsultaList.Insert(const Index: Integer): I212_Ct_guiaConsulta;
begin
  Result := AddItem(Index) as I212_Ct_guiaConsulta;
end;
function T212_Ct_guiaConsultaList.Get_Item(Index: Integer): I212_Ct_guiaConsulta;
begin
  Result := List[Index] as I212_Ct_guiaConsulta;
end;

{ T212_HipoteseDiagnostica }

procedure T212_HipoteseDiagnostica.AfterConstruction;
begin
  RegisterChildNode('diagnosticoSecundario', T212_Ct_diagnosticosSecundarios);
  inherited;
end;

function T212_HipoteseDiagnostica.Get_DiagnosticoSecundario: I212_Ct_diagnosticosSecundarios;
begin
  Result := ChildNodes['diagnosticoSecundario'] as I212_Ct_diagnosticosSecundarios;
end;

{ T212_DadosAtendimento }

{ T212_Ct_guiaSP_SADT }

procedure T212_Ct_guiaSP_SADT.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSADTSP', T212_Ct_cabecalhoGuia);
  RegisterChildNode('dadosAutorizacao', T212_Ct_autorizacaoGuia);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T212_Ct_solicitante);
  RegisterChildNode('prestadorExecutante', T212_PrestadorExecutante);
  RegisterChildNode('diagnosticoGuia', T212_Ct_diagnosticoGuia);
  RegisterChildNode('procedimentosRealizados', T212_Ct_procedimentoRealizadoEquipe);
  RegisterChildNode('outrasDespesas', T212_Ct_outrasDespesas);
  RegisterChildNode('OPMUtilizada', T212_Ct_OPMUtilizada);
  RegisterChildNode('valorTotal', T212_Ct_valorTotalServicos);
  inherited;
end;

function T212_Ct_guiaSP_SADT.Get_IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaSADTSP'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaSP_SADT.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T212_Ct_guiaSP_SADT.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADT.Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I212_Ct_autorizacaoGuia;
end;

function T212_Ct_guiaSP_SADT.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaSP_SADT.Get_DadosSolicitante: I212_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I212_Ct_solicitante;
end;

function T212_Ct_guiaSP_SADT.Get_PrestadorExecutante: I212_PrestadorExecutante;
begin
  Result := ChildNodes['prestadorExecutante'] as I212_PrestadorExecutante;
end;

function T212_Ct_guiaSP_SADT.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T212_Ct_guiaSP_SADT.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADT.Get_CaraterAtendimento: WideString;
begin
  Result := ChildNodes['caraterAtendimento'].Text;
end;

procedure T212_Ct_guiaSP_SADT.Set_CaraterAtendimento(Value: WideString);
begin
  ChildNodes['caraterAtendimento'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADT.Get_DataHoraAtendimento: WideString;
begin
  Result := ChildNodes['dataHoraAtendimento'].Text;
end;

procedure T212_Ct_guiaSP_SADT.Set_DataHoraAtendimento(Value: WideString);
begin
  ChildNodes['dataHoraAtendimento'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADT.Get_DiagnosticoGuia: I212_Ct_diagnosticoGuia;
begin
  Result := ChildNodes['diagnosticoGuia'] as I212_Ct_diagnosticoGuia;
end;

function T212_Ct_guiaSP_SADT.Get_TipoSaida: WideString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure T212_Ct_guiaSP_SADT.Set_TipoSaida(Value: WideString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADT.Get_TipoAtendimento: Integer;
begin
  Result := ChildNodes['tipoAtendimento'].NodeValue;
end;

procedure T212_Ct_guiaSP_SADT.Set_TipoAtendimento(Value: Integer);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADT.Get_ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe;
begin
  Result := ChildNodes['procedimentosRealizados'] as I212_Ct_procedimentoRealizadoEquipe;
end;

function T212_Ct_guiaSP_SADT.Get_OutrasDespesas: I212_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I212_Ct_outrasDespesas;
end;

function T212_Ct_guiaSP_SADT.Get_OPMUtilizada: I212_Ct_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizada'] as I212_Ct_OPMUtilizada;
end;

function T212_Ct_guiaSP_SADT.Get_ValorTotal: I212_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I212_Ct_valorTotalServicos;
end;

function T212_Ct_guiaSP_SADT.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaSP_SADT.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaSP_SADTList }

function T212_Ct_guiaSP_SADTList.Add: I212_Ct_guiaSP_SADT;
begin
  Result := AddItem(-1) as I212_Ct_guiaSP_SADT;
end;

function T212_Ct_guiaSP_SADTList.Insert(const Index: Integer): I212_Ct_guiaSP_SADT;
begin
  Result := AddItem(Index) as I212_Ct_guiaSP_SADT;
end;
function T212_Ct_guiaSP_SADTList.Get_Item(Index: Integer): I212_Ct_guiaSP_SADT;
begin
  Result := List[Index] as I212_Ct_guiaSP_SADT;
end;

{ T212_PrestadorExecutante }

procedure T212_PrestadorExecutante.AfterConstruction;
begin
  RegisterChildNode('profissionalExecutanteCompl', T212_ProfissionalExecutanteCompl);
  inherited;
end;

function T212_PrestadorExecutante.Get_ProfissionalExecutanteCompl: I212_ProfissionalExecutanteCompl;
begin
  Result := ChildNodes['profissionalExecutanteCompl'] as I212_ProfissionalExecutanteCompl;
end;

{ T212_ProfissionalExecutanteCompl }

procedure T212_ProfissionalExecutanteCompl.AfterConstruction;
begin
  RegisterChildNode('codigoProfissionalCompl', T212_Ct_identificacaoPrestador);
  inherited;
end;

function T212_ProfissionalExecutanteCompl.Get_CodigoProfissionalCompl: I212_Ct_identificacaoPrestador;
begin
  Result := ChildNodes['codigoProfissionalCompl'] as I212_Ct_identificacaoPrestador;
end;

{ T212_Ct_guiaResumoInternacao }

procedure T212_Ct_guiaResumoInternacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaInternacao', T212_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('identificacaoExecutante', T212_Ct_contratado);
  RegisterChildNode('dadosAutorizacao', T212_Ct_autorizacaoGuia);
  RegisterChildNode('internacaoObstetrica', T212_Ct_internacaoObstetrica);
  RegisterChildNode('obitoNeonatal', T212_Ct_obitoNeonatal);
  RegisterChildNode('diagnosticosSaidaInternacao', T212_Ct_diagnosticoSaidaInternacao);
  RegisterChildNode('procedimentosRealizados', T212_Ct_procedimentoRealizadoEquipe);
  RegisterChildNode('OPMUtilizadas', T212_Ct_OPMUtilizada);
  RegisterChildNode('outrasDespesas', T212_Ct_outrasDespesas);
  RegisterChildNode('valorTotal', T212_Ct_valorTotalServicos);
  inherited;
end;

function T212_Ct_guiaResumoInternacao.Get_IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaInternacao'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaResumoInternacao.Get_NumeroGuiaSolicitacao: WideString;
begin
  Result := ChildNodes['numeroGuiaSolicitacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_NumeroGuiaSolicitacao(Value: WideString);
begin
  ChildNodes['numeroGuiaSolicitacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaResumoInternacao.Get_IdentificacaoExecutante: I212_Ct_contratado;
begin
  Result := ChildNodes['identificacaoExecutante'] as I212_Ct_contratado;
end;

function T212_Ct_guiaResumoInternacao.Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I212_Ct_autorizacaoGuia;
end;

function T212_Ct_guiaResumoInternacao.Get_CaraterInternacao: WideString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_CaraterInternacao(Value: WideString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_Acomodacao: WideString;
begin
  Result := ChildNodes['acomodacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_Acomodacao(Value: WideString);
begin
  ChildNodes['acomodacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_DataHoraInternacao: WideString;
begin
  Result := ChildNodes['dataHoraInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_DataHoraInternacao(Value: WideString);
begin
  ChildNodes['dataHoraInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_DataHoraSaidaInternacao: WideString;
begin
  Result := ChildNodes['dataHoraSaidaInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_DataHoraSaidaInternacao(Value: WideString);
begin
  ChildNodes['dataHoraSaidaInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_TipoInternacao: Integer;
begin
  Result := ChildNodes['tipoInternacao'].NodeValue;
end;

procedure T212_Ct_guiaResumoInternacao.Set_TipoInternacao(Value: Integer);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_RegimeInternacao: WideString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_RegimeInternacao(Value: WideString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_InternacaoObstetrica: I212_Ct_internacaoObstetrica;
begin
  Result := ChildNodes['internacaoObstetrica'] as I212_Ct_internacaoObstetrica;
end;

function T212_Ct_guiaResumoInternacao.Get_ObitoNeonatal: I212_Ct_obitoNeonatal;
begin
  Result := ChildNodes['obitoNeonatal'] as I212_Ct_obitoNeonatal;
end;

function T212_Ct_guiaResumoInternacao.Get_DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao;
begin
  Result := ChildNodes['diagnosticosSaidaInternacao'] as I212_Ct_diagnosticoSaidaInternacao;
end;

function T212_Ct_guiaResumoInternacao.Get_ProcedimentosRealizados: I212_Ct_procedimentoRealizadoEquipe;
begin
  Result := ChildNodes['procedimentosRealizados'] as I212_Ct_procedimentoRealizadoEquipe;
end;

function T212_Ct_guiaResumoInternacao.Get_OPMUtilizadas: I212_Ct_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizadas'] as I212_Ct_OPMUtilizada;
end;

function T212_Ct_guiaResumoInternacao.Get_OutrasDespesas: I212_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I212_Ct_outrasDespesas;
end;

function T212_Ct_guiaResumoInternacao.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacao.Get_ValorTotal: I212_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I212_Ct_valorTotalServicos;
end;

function T212_Ct_guiaResumoInternacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaResumoInternacaoList }

function T212_Ct_guiaResumoInternacaoList.Add: I212_Ct_guiaResumoInternacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaResumoInternacao;
end;

function T212_Ct_guiaResumoInternacaoList.Insert(const Index: Integer): I212_Ct_guiaResumoInternacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaResumoInternacao;
end;
function T212_Ct_guiaResumoInternacaoList.Get_Item(Index: Integer): I212_Ct_guiaResumoInternacao;
begin
  Result := List[Index] as I212_Ct_guiaResumoInternacao;
end;

{ T212_Ct_guiaHonorarioIndividual }

procedure T212_Ct_guiaHonorarioIndividual.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaHonorarioIndividual', T212_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('contratado', T212_Ct_contratado);
  RegisterChildNode('contratadoExecutante', T212_ContratadoExecutante);
  RegisterChildNode('procedimentosExamesRealizados', T212_ProcedimentosExamesRealizados);
  inherited;
end;

function T212_Ct_guiaHonorarioIndividual.Get_IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaHonorarioIndividual'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaHonorarioIndividual.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T212_Ct_guiaHonorarioIndividual.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T212_Ct_guiaHonorarioIndividual.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaHonorarioIndividual.Get_Contratado: I212_Ct_contratado;
begin
  Result := ChildNodes['contratado'] as I212_Ct_contratado;
end;

function T212_Ct_guiaHonorarioIndividual.Get_ContratadoExecutante: I212_ContratadoExecutante;
begin
  Result := ChildNodes['contratadoExecutante'] as I212_ContratadoExecutante;
end;

function T212_Ct_guiaHonorarioIndividual.Get_ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizados;
begin
  Result := ChildNodes['procedimentosExamesRealizados'] as I212_ProcedimentosExamesRealizados;
end;

function T212_Ct_guiaHonorarioIndividual.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaHonorarioIndividual.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaHonorarioIndividualList }

function T212_Ct_guiaHonorarioIndividualList.Add: I212_Ct_guiaHonorarioIndividual;
begin
  Result := AddItem(-1) as I212_Ct_guiaHonorarioIndividual;
end;

function T212_Ct_guiaHonorarioIndividualList.Insert(const Index: Integer): I212_Ct_guiaHonorarioIndividual;
begin
  Result := AddItem(Index) as I212_Ct_guiaHonorarioIndividual;
end;
function T212_Ct_guiaHonorarioIndividualList.Get_Item(Index: Integer): I212_Ct_guiaHonorarioIndividual;
begin
  Result := List[Index] as I212_Ct_guiaHonorarioIndividual;
end;

{ T212_ContratadoExecutante }

procedure T212_ContratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('identificacaoProfissional', T212_Ct_profissionalExecutante);
  inherited;
end;

function T212_ContratadoExecutante.Get_IdentificacaoProfissional: I212_Ct_profissionalExecutante;
begin
  Result := ChildNodes['identificacaoProfissional'] as I212_Ct_profissionalExecutante;
end;

function T212_ContratadoExecutante.Get_PosicaoProfissional: Integer;
begin
  Result := ChildNodes['posicaoProfissional'].NodeValue;
end;

procedure T212_ContratadoExecutante.Set_PosicaoProfissional(Value: Integer);
begin
  ChildNodes['posicaoProfissional'].NodeValue := Value;
end;

function T212_ContratadoExecutante.Get_TipoAcomodacao: WideString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure T212_ContratadoExecutante.Set_TipoAcomodacao(Value: WideString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

{ T212_ProcedimentosExamesRealizados }

function T212_ProcedimentosExamesRealizados.Get_TotalGeralHonorario: WideString;
begin
  Result := ChildNodes['totalGeralHonorario'].Text;
end;

procedure T212_ProcedimentosExamesRealizados.Set_TotalGeralHonorario(Value: WideString);
begin
  ChildNodes['totalGeralHonorario'].NodeValue := Value;
end;

{ T212_ProcedimentosExamesRealizadosReapresentacao }

function T212_ProcedimentosExamesRealizadosReapresentacao.Get_TotalGeralHonorario: WideString;
begin
  Result := ChildNodes['totalGeralHonorario'].Text;
end;

procedure T212_ProcedimentosExamesRealizadosReapresentacao.Set_TotalGeralHonorario(Value: WideString);
begin
  ChildNodes['totalGeralHonorario'].NodeValue := Value;
end;

{ T212_Ct_guiaOdontologia }

procedure T212_Ct_guiaOdontologia.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', T212_Ct_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', T212_DadosBeneficiario);
  RegisterChildNode('dadosContratadoExecutante', T212_DadosContratadoExecutante);
  RegisterChildNode('procedimentosExecutados', T212_ProcedimentosExecutados);
  RegisterChildNode('outrasDespesas', T212_Ct_outrasDespesas);
  RegisterChildNode('dadosAtendimento', T212_Ct_atendimentoOdontologia);
  inherited;
end;

function T212_Ct_guiaOdontologia.Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as I212_Ct_cabecalhoGuiaOdonto;
end;

function T212_Ct_guiaOdontologia.Get_DadosBeneficiario: I212_DadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_DadosBeneficiario;
end;

function T212_Ct_guiaOdontologia.Get_DadosContratadoExecutante: I212_DadosContratadoExecutante;
begin
  Result := ChildNodes['dadosContratadoExecutante'] as I212_DadosContratadoExecutante;
end;

function T212_Ct_guiaOdontologia.Get_ProcedimentosExecutados: I212_ProcedimentosExecutadosOdonto;
begin
  Result := ChildNodes['procedimentosExecutados'] as I212_ProcedimentosExecutadosOdonto;
end;

function T212_Ct_guiaOdontologia.Get_OutrasDespesas: I212_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I212_Ct_outrasDespesas;
end;

function T212_Ct_guiaOdontologia.Get_DadosAtendimento: I212_Ct_atendimentoOdontologia;
begin
  Result := ChildNodes['dadosAtendimento'] as I212_Ct_atendimentoOdontologia;
end;

function T212_Ct_guiaOdontologia.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T212_Ct_guiaOdontologia.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T212_Ct_guiaOdontologia.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaOdontologia.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaOdontologiaList }

function T212_Ct_guiaOdontologiaList.Add: I212_Ct_guiaOdontologia;
begin
  Result := AddItem(-1) as I212_Ct_guiaOdontologia;
end;

function T212_Ct_guiaOdontologiaList.Insert(const Index: Integer): I212_Ct_guiaOdontologia;
begin
  Result := AddItem(Index) as I212_Ct_guiaOdontologia;
end;
function T212_Ct_guiaOdontologiaList.Get_Item(Index: Integer): I212_Ct_guiaOdontologia;
begin
  Result := List[Index] as I212_Ct_guiaOdontologia;
end;

{ T212_DadosContratadoExecutante }

procedure T212_DadosContratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', T212_DadosContratado);
  RegisterChildNode('dadosExecutante', T212_Ct_profissionalExecutante);
  inherited;
end;

function T212_DadosContratadoExecutante.Get_DadosContratado: I212_DadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as I212_DadosContratado;
end;

function T212_DadosContratadoExecutante.Get_DadosExecutante: I212_Ct_profissionalExecutante;
begin
  Result := ChildNodes['dadosExecutante'] as I212_Ct_profissionalExecutante;
end;

{ T212_ProcedimentosExecutados }

procedure T212_ProcedimentosExecutados.AfterConstruction;
begin
  RegisterChildNode('procedimentoExecutado', T212_ProcedimentoExecutado);
  FProcedimentoExecutado := CreateCollection(T212_ProcedimentoExecutadoList, I212_ProcedimentoExecutado, 'procedimentoExecutado') as I212_ProcedimentoExecutadoList;
  inherited;
end;

function T212_ProcedimentosExecutados.Get_ProcedimentoExecutado: I212_ProcedimentoExecutadoList;
begin
  Result := FProcedimentoExecutado;
end;

function T212_ProcedimentosExecutados.Get_QuantidadeTotalUS: WideString;
begin
  Result := ChildNodes['quantidadeTotalUS'].Text;
end;

procedure T212_ProcedimentosExecutados.Set_QuantidadeTotalUS(Value: WideString);
begin
  ChildNodes['quantidadeTotalUS'].NodeValue := Value;
end;

function T212_ProcedimentosExecutados.Get_ValorTotal: WideString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure T212_ProcedimentosExecutados.Set_ValorTotal(Value: WideString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function T212_ProcedimentosExecutados.Get_TotalFranquiaCoparticipacao: WideString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure T212_ProcedimentosExecutados.Set_TotalFranquiaCoparticipacao(Value: WideString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

{ T212_ProcedimentoExecutado }

function T212_ProcedimentoExecutado.Get_DataRealizacao: WideString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure T212_ProcedimentoExecutado.Set_DataRealizacao(Value: WideString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

{ T212_ProcedimentoExecutadoList }

function T212_ProcedimentoExecutadoList.Add: I212_ProcedimentoExecutado;
begin
  Result := AddItem(-1) as I212_ProcedimentoExecutado;
end;

function T212_ProcedimentoExecutadoList.Insert(const Index: Integer): I212_ProcedimentoExecutado;
begin
  Result := AddItem(Index) as I212_ProcedimentoExecutado;
end;
function T212_ProcedimentoExecutadoList.Get_Item(Index: Integer): I212_ProcedimentoExecutado;
begin
  Result := List[Index] as I212_ProcedimentoExecutado;
end;

{ T212_GuiaRevisaoGlosa }

procedure T212_GuiaRevisaoGlosa.AfterConstruction;
begin
  RegisterChildNode('guiaConsultaReapresentacao', T212_Ct_guiaConsultaReapresentacao);
  RegisterChildNode('guiaSP_SADTReapresentacao', T212_Ct_guiaSP_SADTReapresentacao);
  RegisterChildNode('guiaResumoInternacaoReapresentacao', T212_Ct_guiaResumoInternacaoReapresentacao);
  RegisterChildNode('guiaHonorarioIndividualReapresentacao', T212_Ct_guiaHonorarioIndividualReapresentacao);
  RegisterChildNode('guiaOdontologiaReapresentacao', T212_Ct_guiaTratamentoOdontologicoReapresentacao);
  FGuiaConsultaReapresentacao := CreateCollection(T212_Ct_guiaConsultaReapresentacaoList, I212_Ct_guiaConsultaReapresentacao, 'guiaConsultaReapresentacao') as I212_Ct_guiaConsultaReapresentacaoList;
  FGuiaSP_SADTReapresentacao := CreateCollection(T212_Ct_guiaSP_SADTReapresentacaoList, I212_Ct_guiaSP_SADTReapresentacao, 'guiaSP_SADTReapresentacao') as I212_Ct_guiaSP_SADTReapresentacaoList;
  FGuiaResumoInternacaoReapresentacao := CreateCollection(T212_Ct_guiaResumoInternacaoReapresentacaoList, I212_Ct_guiaResumoInternacaoReapresentacao, 'guiaResumoInternacaoReapresentacao') as I212_Ct_guiaResumoInternacaoReapresentacaoList;
  FGuiaHonorarioIndividualReapresentacao := CreateCollection(T212_Ct_guiaHonorarioIndividualReapresentacaoList, I212_Ct_guiaHonorarioIndividualReapresentacao, 'guiaHonorarioIndividualReapresentacao') as I212_Ct_guiaHonorarioIndividualReapresentacaoList;
  FGuiaOdontologiaReapresentacao := CreateCollection(T212_Ct_guiaTratamentoOdontologicoReapresentacaoList, I212_Ct_guiaTratamentoOdontologicoReapresentacao, 'guiaOdontologiaReapresentacao') as I212_Ct_guiaTratamentoOdontologicoReapresentacaoList;
  inherited;
end;

function T212_GuiaRevisaoGlosa.Get_GuiaConsultaReapresentacao: I212_Ct_guiaConsultaReapresentacaoList;
begin
  Result := FGuiaConsultaReapresentacao;
end;

function T212_GuiaRevisaoGlosa.Get_GuiaSP_SADTReapresentacao: I212_Ct_guiaSP_SADTReapresentacaoList;
begin
  Result := FGuiaSP_SADTReapresentacao;
end;

function T212_GuiaRevisaoGlosa.Get_GuiaResumoInternacaoReapresentacao: I212_Ct_guiaResumoInternacaoReapresentacaoList;
begin
  Result := FGuiaResumoInternacaoReapresentacao;
end;

function T212_GuiaRevisaoGlosa.Get_GuiaHonorarioIndividualReapresentacao: I212_Ct_guiaHonorarioIndividualReapresentacaoList;
begin
  Result := FGuiaHonorarioIndividualReapresentacao;
end;

function T212_GuiaRevisaoGlosa.Get_GuiaOdontologiaReapresentacao: I212_Ct_guiaTratamentoOdontologicoReapresentacaoList;
begin
  Result := FGuiaOdontologiaReapresentacao;
end;

{ T212_Ct_guiaConsultaReapresentacao }

procedure T212_Ct_guiaConsultaReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', T212_Ct_cabecalhoGuia);
  RegisterChildNode('beneficiario', T212_Ct_beneficiario);
  RegisterChildNode('dadosContratado', T212_Ct_contratado);
  RegisterChildNode('profissionalExecutante', T212_Ct_identificacaoProfissional);
  RegisterChildNode('hipoteseDiagnostica', T212_HipoteseDiagnostica);
  RegisterChildNode('dadosAtendimento', T212_Ct_atendimentoConsultaReapr);
  inherited;
end;

function T212_Ct_guiaConsultaReapresentacao.Get_IdentificacaoGuia: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaConsultaReapresentacao.Get_Beneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaConsultaReapresentacao.Get_DadosContratado: I212_Ct_contratado;
begin
  Result := ChildNodes['dadosContratado'] as I212_Ct_contratado;
end;

function T212_Ct_guiaConsultaReapresentacao.Get_ProfissionalExecutante: I212_Ct_identificacaoProfissional;
begin
  Result := ChildNodes['profissionalExecutante'] as I212_Ct_identificacaoProfissional;
end;

function T212_Ct_guiaConsultaReapresentacao.Get_HipoteseDiagnostica: I212_HipoteseDiagnostica;
begin
  Result := ChildNodes['hipoteseDiagnostica'] as I212_HipoteseDiagnostica;
end;

function T212_Ct_guiaConsultaReapresentacao.Get_DadosAtendimento: I212_Ct_atendimentoConsultaReapr;
begin
  Result := ChildNodes['dadosAtendimento'] as I212_Ct_atendimentoConsultaReapr;
end;

function T212_Ct_guiaConsultaReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaConsultaReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaConsultaReapresentacaoList }

function T212_Ct_guiaConsultaReapresentacaoList.Add: I212_Ct_guiaConsultaReapresentacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaConsultaReapresentacao;
end;

function T212_Ct_guiaConsultaReapresentacaoList.Insert(const Index: Integer): I212_Ct_guiaConsultaReapresentacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaConsultaReapresentacao;
end;
function T212_Ct_guiaConsultaReapresentacaoList.Get_Item(Index: Integer): I212_Ct_guiaConsultaReapresentacao;
begin
  Result := List[Index] as I212_Ct_guiaConsultaReapresentacao;
end;

{ T212_Ct_guiaSP_SADTReapresentacao }

procedure T212_Ct_guiaSP_SADTReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSADTSP', T212_Ct_cabecalhoGuia);
  RegisterChildNode('dadosAutorizacao', T212_Ct_autorizacaoGuia);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('dadosSolicitante', T212_Ct_solicitante);
  RegisterChildNode('prestadorExecutante', T212_PrestadorExecutante);
  RegisterChildNode('diagnosticoGuia', T212_Ct_diagnosticoGuia);
  RegisterChildNode('procedimentosRealizados', T212_Ct_procedimentoRevisao);
  RegisterChildNode('outrasDespesas', T212_Ct_outrasDespesasRevisao);
  RegisterChildNode('OPMUtilizada', T212_Ct_OPMUtilizadasRevisao);
  RegisterChildNode('valorTotal', T212_Ct_valorTotalServicos);
  FProcedimentosRealizados := CreateCollection(T212_Ct_procedimentoRevisaoList, I212_Ct_procedimentoRevisao, 'procedimentosRealizados') as I212_Ct_procedimentoRevisaoList;
  inherited;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_IdentificacaoGuiaSADTSP: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaSADTSP'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T212_Ct_guiaSP_SADTReapresentacao.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I212_Ct_autorizacaoGuia;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_DadosSolicitante: I212_Ct_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as I212_Ct_solicitante;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_PrestadorExecutante: I212_PrestadorExecutante;
begin
  Result := ChildNodes['prestadorExecutante'] as I212_PrestadorExecutante;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_IndicacaoClinica: WideString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure T212_Ct_guiaSP_SADTReapresentacao.Set_IndicacaoClinica(Value: WideString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_CaraterAtendimento: WideString;
begin
  Result := ChildNodes['caraterAtendimento'].Text;
end;

procedure T212_Ct_guiaSP_SADTReapresentacao.Set_CaraterAtendimento(Value: WideString);
begin
  ChildNodes['caraterAtendimento'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_DataHoraAtendimento: WideString;
begin
  Result := ChildNodes['dataHoraAtendimento'].Text;
end;

procedure T212_Ct_guiaSP_SADTReapresentacao.Set_DataHoraAtendimento(Value: WideString);
begin
  ChildNodes['dataHoraAtendimento'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_DiagnosticoGuia: I212_Ct_diagnosticoGuia;
begin
  Result := ChildNodes['diagnosticoGuia'] as I212_Ct_diagnosticoGuia;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_TipoSaida: WideString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure T212_Ct_guiaSP_SADTReapresentacao.Set_TipoSaida(Value: WideString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_TipoAtendimento: Integer;
begin
  Result := ChildNodes['tipoAtendimento'].NodeValue;
end;

procedure T212_Ct_guiaSP_SADTReapresentacao.Set_TipoAtendimento(Value: Integer);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_ProcedimentosRealizados: I212_Ct_procedimentoRevisaoList;
begin
  Result := FProcedimentosRealizados;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_OutrasDespesas: I212_Ct_outrasDespesasRevisao;
begin
  Result := ChildNodes['outrasDespesas'] as I212_Ct_outrasDespesasRevisao;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_OPMUtilizada: I212_Ct_OPMUtilizadasRevisao;
begin
  Result := ChildNodes['OPMUtilizada'] as I212_Ct_OPMUtilizadasRevisao;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_ValorTotal: I212_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I212_Ct_valorTotalServicos;
end;

function T212_Ct_guiaSP_SADTReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaSP_SADTReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaSP_SADTReapresentacaoList }

function T212_Ct_guiaSP_SADTReapresentacaoList.Add: I212_Ct_guiaSP_SADTReapresentacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaSP_SADTReapresentacao;
end;

function T212_Ct_guiaSP_SADTReapresentacaoList.Insert(const Index: Integer): I212_Ct_guiaSP_SADTReapresentacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaSP_SADTReapresentacao;
end;
function T212_Ct_guiaSP_SADTReapresentacaoList.Get_Item(Index: Integer): I212_Ct_guiaSP_SADTReapresentacao;
begin
  Result := List[Index] as I212_Ct_guiaSP_SADTReapresentacao;
end;

{ T212_Ct_guiaResumoInternacaoReapresentacao }

procedure T212_Ct_guiaResumoInternacaoReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaInternacao', T212_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('identificacaoExecutante', T212_Ct_contratado);
  RegisterChildNode('dadosAutorizacao', T212_Ct_autorizacaoGuia);
  RegisterChildNode('internacaoObstetrica', T212_Ct_internacaoObstetrica);
  RegisterChildNode('obitoNeonatal', T212_Ct_obitoNeonatal);
  RegisterChildNode('diagnosticosSaidaInternacao', T212_Ct_diagnosticoSaidaInternacao);
  RegisterChildNode('procedimentosRealizados', T212_Ct_procedimentoRevisao);
  RegisterChildNode('ct_OPMUtilizadas', T212_Ct_OPMUtilizadasRevisao);
  RegisterChildNode('outrasDespesas', T212_Ct_outrasDespesasRevisao);
  RegisterChildNode('valorTotal', T212_Ct_valorTotalServicos);
  inherited;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_IdentificacaoGuiaInternacao: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaInternacao'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_NumeroGuiaSolicitacao: WideString;
begin
  Result := ChildNodes['numeroGuiaSolicitacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_NumeroGuiaSolicitacao(Value: WideString);
begin
  ChildNodes['numeroGuiaSolicitacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_IdentificacaoExecutante: I212_Ct_contratado;
begin
  Result := ChildNodes['identificacaoExecutante'] as I212_Ct_contratado;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_DadosAutorizacao: I212_Ct_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as I212_Ct_autorizacaoGuia;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_CaraterInternacao: WideString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_CaraterInternacao(Value: WideString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_Acomodacao: WideString;
begin
  Result := ChildNodes['acomodacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_Acomodacao(Value: WideString);
begin
  ChildNodes['acomodacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_DataHoraInternacao: WideString;
begin
  Result := ChildNodes['dataHoraInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_DataHoraInternacao(Value: WideString);
begin
  ChildNodes['dataHoraInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_DataHoraSaidaInternacao: WideString;
begin
  Result := ChildNodes['dataHoraSaidaInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_DataHoraSaidaInternacao(Value: WideString);
begin
  ChildNodes['dataHoraSaidaInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_TipoInternacao: Integer;
begin
  Result := ChildNodes['tipoInternacao'].NodeValue;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_TipoInternacao(Value: Integer);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_RegimeInternacao: WideString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_RegimeInternacao(Value: WideString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_InternacaoObstetrica: I212_Ct_internacaoObstetrica;
begin
  Result := ChildNodes['internacaoObstetrica'] as I212_Ct_internacaoObstetrica;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_ObitoNeonatal: I212_Ct_obitoNeonatal;
begin
  Result := ChildNodes['obitoNeonatal'] as I212_Ct_obitoNeonatal;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_DiagnosticosSaidaInternacao: I212_Ct_diagnosticoSaidaInternacao;
begin
  Result := ChildNodes['diagnosticosSaidaInternacao'] as I212_Ct_diagnosticoSaidaInternacao;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_ProcedimentosRealizados: I212_Ct_procedimentoRevisao;
begin
  Result := ChildNodes['procedimentosRealizados'] as I212_Ct_procedimentoRevisao;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_Ct_OPMUtilizadas: I212_Ct_OPMUtilizadasRevisao;
begin
  Result := ChildNodes['ct_OPMUtilizadas'] as I212_Ct_OPMUtilizadasRevisao;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_OutrasDespesas: I212_Ct_outrasDespesasRevisao;
begin
  Result := ChildNodes['outrasDespesas'] as I212_Ct_outrasDespesasRevisao;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_ValorTotal: I212_Ct_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as I212_Ct_valorTotalServicos;
end;

function T212_Ct_guiaResumoInternacaoReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaResumoInternacaoReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaResumoInternacaoReapresentacaoList }

function T212_Ct_guiaResumoInternacaoReapresentacaoList.Add: I212_Ct_guiaResumoInternacaoReapresentacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaResumoInternacaoReapresentacao;
end;

function T212_Ct_guiaResumoInternacaoReapresentacaoList.Insert(const Index: Integer): I212_Ct_guiaResumoInternacaoReapresentacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaResumoInternacaoReapresentacao;
end;
function T212_Ct_guiaResumoInternacaoReapresentacaoList.Get_Item(Index: Integer): I212_Ct_guiaResumoInternacaoReapresentacao;
begin
  Result := List[Index] as I212_Ct_guiaResumoInternacaoReapresentacao;
end;

{ T212_Ct_guiaHonorarioIndividualReapresentacao }

procedure T212_Ct_guiaHonorarioIndividualReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaHonorarioIndividual', T212_Ct_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', T212_Ct_beneficiario);
  RegisterChildNode('contratado', T212_Ct_contratado);
  RegisterChildNode('contratadoExecutante', T212_ContratadoExecutante);
  RegisterChildNode('procedimentosExamesRealizados', T212_ProcedimentosExamesRealizadosReapresentacao);
  inherited;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacao.Get_IdentificacaoGuiaHonorarioIndividual: I212_Ct_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaHonorarioIndividual'] as I212_Ct_cabecalhoGuia;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacao.Get_NumeroGuiaPrincipal: WideString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure T212_Ct_guiaHonorarioIndividualReapresentacao.Set_NumeroGuiaPrincipal(Value: WideString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacao.Get_DadosBeneficiario: I212_Ct_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_Ct_beneficiario;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacao.Get_Contratado: I212_Ct_contratado;
begin
  Result := ChildNodes['contratado'] as I212_Ct_contratado;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacao.Get_ContratadoExecutante: I212_ContratadoExecutante;
begin
  Result := ChildNodes['contratadoExecutante'] as I212_ContratadoExecutante;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacao.Get_ProcedimentosExamesRealizados: I212_ProcedimentosExamesRealizadosReapresentacao;
begin
  Result := ChildNodes['procedimentosExamesRealizados'] as I212_ProcedimentosExamesRealizadosReapresentacao;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaHonorarioIndividualReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaHonorarioIndividualReapresentacaoList }

function T212_Ct_guiaHonorarioIndividualReapresentacaoList.Add: I212_Ct_guiaHonorarioIndividualReapresentacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaHonorarioIndividualReapresentacao;
end;

function T212_Ct_guiaHonorarioIndividualReapresentacaoList.Insert(const Index: Integer): I212_Ct_guiaHonorarioIndividualReapresentacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaHonorarioIndividualReapresentacao;
end;
function T212_Ct_guiaHonorarioIndividualReapresentacaoList.Get_Item(Index: Integer): I212_Ct_guiaHonorarioIndividualReapresentacao;
begin
  Result := List[Index] as I212_Ct_guiaHonorarioIndividualReapresentacao;
end;

{ T212_Ct_guiaTratamentoOdontologicoReapresentacao }

procedure T212_Ct_guiaTratamentoOdontologicoReapresentacao.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', T212_Ct_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', T212_DadosBeneficiario);
  RegisterChildNode('dadosContratadoExecutante', T212_DadosContratadoExecutante);
  RegisterChildNode('outrasDespesas', T212_Ct_outrasDespesas);
  RegisterChildNode('dadosAtendimento', T212_Ct_atendimentoOdontologia);
  RegisterChildNode('procedimentosExecutados', T212_ProcedimentosExecutados);
  inherited;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_CabecalhoGuia: I212_Ct_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as I212_Ct_cabecalhoGuiaOdonto;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_DadosBeneficiario: I212_DadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as I212_DadosBeneficiario;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_DadosContratadoExecutante: I212_DadosContratadoExecutante;
begin
  Result := ChildNodes['dadosContratadoExecutante'] as I212_DadosContratadoExecutante;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_OutrasDespesas: I212_Ct_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as I212_Ct_outrasDespesas;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_DadosAtendimento: I212_Ct_atendimentoOdontologia;
begin
  Result := ChildNodes['dadosAtendimento'] as I212_Ct_atendimentoOdontologia;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_ProcedimentosExecutados: I212_ProcedimentosExecutados;
begin
  Result := ChildNodes['procedimentosExecutados'] as I212_ProcedimentosExecutados;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_TipoFaturamento: WideString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure T212_Ct_guiaTratamentoOdontologicoReapresentacao.Set_TipoFaturamento(Value: WideString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacao.Get_Observacao: WideString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure T212_Ct_guiaTratamentoOdontologicoReapresentacao.Set_Observacao(Value: WideString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ T212_Ct_guiaTratamentoOdontologicoReapresentacaoList }

function T212_Ct_guiaTratamentoOdontologicoReapresentacaoList.Add: I212_Ct_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := AddItem(-1) as I212_Ct_guiaTratamentoOdontologicoReapresentacao;
end;

function T212_Ct_guiaTratamentoOdontologicoReapresentacaoList.Insert(const Index: Integer): I212_Ct_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := AddItem(Index) as I212_Ct_guiaTratamentoOdontologicoReapresentacao;
end;
function T212_Ct_guiaTratamentoOdontologicoReapresentacaoList.Get_Item(Index: Integer): I212_Ct_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := List[Index] as I212_Ct_guiaTratamentoOdontologicoReapresentacao;
end;

{ T212_ProcedimentosExecutadosOdonto }

procedure T212_ProcedimentosExecutadosOdonto.AfterConstruction;
begin
  RegisterChildNode('procedimentoExecutado', T212_Ct_procedimentoOdontoRevisao);
  ItemTag := 'procedimentoExecutado';
  ItemInterface := I212_Ct_procedimentoOdontoRevisao;
  inherited;
end;

function T212_ProcedimentosExecutadosOdonto.Get_ProcedimentoExecutado(Index: Integer): I212_Ct_procedimentoOdontoRevisao;
begin
  Result := List[Index] as I212_Ct_procedimentoOdontoRevisao;
end;

function T212_ProcedimentosExecutadosOdonto.Add: I212_Ct_procedimentoOdontoRevisao;
begin
  Result := AddItem(-1) as I212_Ct_procedimentoOdontoRevisao;
end;

function T212_ProcedimentosExecutadosOdonto.Insert(const Index: Integer): I212_Ct_procedimentoOdontoRevisao;
begin
  Result := AddItem(Index) as I212_Ct_procedimentoOdontoRevisao;
end;

{ T212_St_tipoGlosaList }

function T212_St_tipoGlosaList.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function T212_St_tipoGlosaList.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;
function T212_St_tipoGlosaList.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

end.