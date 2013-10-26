program prjAtsAdmin;

uses
  Forms,
  UDm in 'UDm.pas' {DM: TDataModule},
  uPai in 'uPai.pas' {fPai},
  uAtsAdmin in 'uAtsAdmin.pas' {fAtsAdmin},
  uVendas in 'uVendas.pas' {fVendas},
  ufprocura_prod in 'ufprocura_prod.pas' {fProcura_prod},
  uMostra_Contas in 'uMostra_Contas.pas' {fMostra_Contas},
  uListaClientes in 'uListaClientes.pas' {fListaClientes},
  uProcurar in 'uprocurar.pas' {fProcurar},
  uVendaFinalizar in 'uVendaFinalizar.pas' {fVendaFinalizar},
  uImpr_Boleto in 'uImpr_Boleto.pas' {fImpr_Boleto},
  uNotafiscal in 'uNotafiscal.pas' {fnotafiscal},
  uCheques_bol in 'uCheques_bol.pas' {fCheques_bol},
  uFiltroMovimento in 'uFiltroMovimento.pas' {fFiltroMovimento},
  uPdm in 'uPdm.pas' {fPdm},
  uDuplicata in 'uDuplicata.pas' {fDuplicata},
  ufcr in 'ufcr.pas' {fcrproc},
  uClienteCadastro in 'uClienteCadastro.pas' {fClienteCadastro},
  uclienteendereco in 'uclienteendereco.pas' {fclienteendereco},
  uClienteRepresentante in 'uClienteRepresentante.pas' {fClienteRepresentante},
  uClienteVeiculo in 'uClienteVeiculo.pas' {fClienteVeiculo},
  uEstado in 'uEstado.pas' {fEstado},
  uFornecedorCadastro in 'uFornecedorCadastro.pas' {fFornecedorCadastro},
  uFornecedorEndereco in 'uFornecedorEndereco.pas' {fFornecedorEndereco},
  uFornecedorRepresentante in 'uFornecedorRepresentante.pas' {fFornecedorRepresentante},
  uProdutoCadastro in 'uProdutoCadastro.pas' {fProdutoCadastro},
  uMarcas_Grupos in 'uMarcas_Grupos.pas' {fMarcas_Grupos},
  uFamilia in 'uFamilia.pas' {fFamilia},
  uCategoria in 'uCategoria.pas' {fCategoria},
  uContaRateio in 'uContaRateio.pas' {fContaRateio},
  uClassificacaoFiscal in 'uClassificacaoFiscal.pas' {fClassificacaoFiscal},
  uCodigoTerceiros in 'uCodigoTerceiros.pas' {fCodigoTerceiros},
  uUsoCadastro in 'uUsoCadastro.pas' {fUsoCadastro},
  uComissaoCadastro in 'uComissaoCadastro.pas' {fComissaoCadastro},
  uCompra in 'uCompra.pas' {fCompra},
  uRateioPag in 'uRateioPag.pas' {fRateioPag},
  uFiltroMov_compra in 'uFiltroMov_compra.pas' {fFiltroMov_compra},
  uCompraFinalizar in 'uCompraFinalizar.pas' {fCompraFinalizar},
  uSeriaNF in 'uSeriaNF.pas' {fSeriaNF},
  uftransp in 'uftransp.pas' {ftransp},
  ufNotafiscalProc in 'ufNotafiscalProc.pas' {fNotaFiscalProc},
  uSobre in 'uSobre.pas' {fSobre},
  uUso_Prod in 'uUso_Prod.pas' {fUso_Prod},
  uProdutoLote in 'uProdutoLote.pas' {fProdutoLote},
  uRelVendas in 'uRelVendas.pas' {fRelVenda},
  uITENS_NF in 'uITENS_NF.pas' {fITENS_NF},
  uLotes in 'uLotes.pas' {fLotes},
  uTerminal in 'uTerminal.pas' {fTerminal},
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  ufCpAltera in 'ufCpAltera.pas' {fCpAltera},
  ufCrAltera in 'ufCrAltera.pas' {fCrAltera},
  ufListaProd in 'ufListaProd.pas' {fListaProd},
  ufuncionario in 'ufuncionario.pas' {fFuncionario},
  ufProdutoLista in 'ufProdutoLista.pas' {fProdutoLista},
  ufTeclasAtalho in 'ufTeclasAtalho.pas' {fTeclasdeAtalho},
  uRel_vendas in 'uRel_vendas.pas' {fRel_Vendas},
  uTerminal_Delivery in 'uTerminal_Delivery.pas' {fTerminal_Delivery},
  uProduto_Mat_prima in 'uProduto_Mat_prima.pas' {fProduto_Mat_prima},
  uBaixaEstoque in 'uBaixaEstoque.pas' {fBaixaEstoque},
  uTipoVisita in 'uTipoVisita.pas' {fTipoVisita},
  uVisitas in 'uVisitas.pas' {fVisitas},
  uAgendamento in 'uAgendamento.pas' {fAgendamento},
  uTipoImprimiAgenda in 'uTipoImprimiAgenda.pas' {fTipoImprimiAgenda},
  uSelecionaVisitas in 'uSelecionaVisitas.pas' {fSelecionaVisitas},
  uVendaLoteLancao in 'uVendaLoteLancao.pas' {fVendaLoteLancao},
  uLotesCadastro in 'uLotesCadastro.pas' {fLotesCadastro},
  ufprocura_prod1 in 'ufprocura_prod1.pas' {fProcura_prod1},
  uRomaneio in 'uRomaneio.pas' {fRomaneio},
  uListaCliEscola in 'uListaCliEscola.pas' {fListaCliEscola},
  uInicial in 'uInicial.pas' {fInicial},
  Encrypt_decrypt in 'Encrypt_decrypt.pas',
  uFrConfigDbx in 'uFrConfigDbx.pas' {FrConfigDbx},
  uPai_new in 'uPai_new.pas' {fPai_new},
  uListadeCompra in 'uListadeCompra.pas' {fListadeCompra},
  Modulo in 'Modulo.pas',
  uLogs in 'uLogs.pas' {fLogs},
  uUtils in 'uUtils.pas',
  uProdFornecedor in 'uProdFornecedor.pas' {fProdFornecedor},
  uRel in 'uRel.pas' {fRel},
  uEstoqueCorrige in 'uEstoqueCorrige.pas' {fEstoqueCorrige},
  uTerminalLoja in 'uTerminalLoja.pas' {fTerminalLoja},
  uRegiaoCadastro in 'uRegiaoCadastro.pas' {fRegiaoCadastro},
  uTerminalCaixa in 'uTerminalCaixa.pas',
  uTerminalCaixaAbre in 'uTerminalCaixaAbre.pas' {fTerminalCaixaAbre},
  uFreteColheita in '..\..\citrus\uFreteColheita.pas' {fFreteColheita},
  uDmCitrus in '..\..\citrus\uDmCitrus.pas' {DmCitrus: TDataModule},
  fClassCitrus in '..\..\citrus\fClassCitrus.pas',
  uLote in '..\..\citrus\uLote.pas' {fLote},
  md5 in 'md5.pas',
  sCtrlResize in 'sCtrlResize.pas',
  uCrTituloInclui in 'uCrTituloInclui.pas' {fcrTituloInclui},
  uFiltro_forn_plano in 'uFiltro_forn_plano.pas' {fFiltro_forn_plano},
  ufcpproc in 'ufcpproc.pas' {fCpProc},
  uCrTituloPagto in 'uCrTituloPagto.pas' {fcrTituloPagto},
  uFinanceiro in 'uFinanceiro.pas' {fFinanceiro},
  ucrTitulo in 'ucrTitulo.pas' {fcrTitulo},
  ufContabilLanc in 'ufContabilLanc.pas' {fContabilLanc},
  uGeraCob in 'uGeraCob.pas' {fGeraCob},
  uProcuraCheque in 'uProcuraCheque.pas' {fProcuraCheque},
  uRelatorio in 'uRelatorio.pas' {fRelatorio},
  uRelatorioReceber in 'uRelatorioReceber.pas' {fRelatorioReceber},
  uCaixa in 'uCaixa.pas' {fCaixa},
  ufcrtitulo in 'ufcrtitulo.pas' {fcpTitulo},
  uNF in 'uNF.pas' {fNF},
  UDMNF in 'UDMNF.pas' {DMNF: TDataModule},
  uProcurar_nf in 'uProcurar_nf.pas' {fProcurar_nf},
  uProdudoBusca in 'uProdudoBusca.pas' {fProdudoBusca},
  uRel_CR1 in 'uRel_CR1.pas' {fRel_CR1},
  uMensagens in 'uMensagens.pas' {fMensagens},
  uComercial in 'uComercial.pas' {fComercial},
  uNotaf in 'uNotaf.pas' {fNotaf},
  unitComercial in 'unitComercial.pas',
  uDaoDbx in 'uDaoDbx.pas',
  uDaoU in 'uDaoU.pas',
  ufContasAssistente in 'ufContasAssistente.pas' {fContasAssistente},
  uEmpresa in 'uEmpresa.pas' {fEmpresa},
  uRelatorioFin in 'uRelatorioFin.pas' {fRelatorioFin},
  uFluxoCaixa in 'uFluxoCaixa.pas' {fFluxoCaixa},
  uRelatorioCaixa in 'uRelatorioCaixa.pas' {fRelatorioCaixa},
  uNFCompra in 'uNFCompra.pas' {fNFCompra},
  uFiltroEstoque in 'uFiltroEstoque.pas' {fFiltroEstoque},
  uEntra_Sai_estoque in 'uEntra_Sai_estoque.pas' {fEntra_Sai_estoque},
  uEscolherNF in 'uEscolherNF.pas' {fEscolherNF},
  unitExclusao in 'unitExclusao.pas' {formExclusao},
  uProcura_produtos in 'uProcura_produtos.pas' {fProcura_produtos},
  uMovLinhas in 'uMovLinhas.pas' {fMovLinhas},
  ubanco in 'ubanco.pas' {fbanco},
  uAtualizaSistema in 'uAtualizaSistema.pas' {fAtualizaSistema},
  uNotaFiscalCr in 'uNotaFiscalCr.pas' {fNotaFiscalCr},
  uSerie in 'uSerie.pas',
  ufProcContabil in 'ufProcContabil.pas' {fProcContabil},
  ufMovimentoCont in 'ufMovimentoCont.pas' {fMovimentoCont},
  ufParametro in 'ufParametro.pas' {fParametro},
  uTerminalFinalizar in 'uTerminalFinalizar.pas' {fTerminalFinalizar},
  uRelestoque in 'uRelestoque.pas' {fRelestoque},
  UCHist_Base in 'UCHist_Base.pas',
  uArquivoRetorno in 'uArquivoRetorno.pas' {fArquivoRetorno},
  uClienteBloqueio in 'uClienteBloqueio.pas' {fClienteBloqueio},
  uCfop in 'uCfop.pas' {fCfop},
  uOsClasse in 'uOsClasse.pas',
  uOs in 'uOs.pas' {fOs},
  uOsExecutar in 'uOsExecutar.pas' {fOsExecutar},
  uMaquinaControle in 'uMaquinaControle.pas' {fMaquinasControle},
  uPassivo in 'uPassivo.pas' {fPassivo},
  uCpPassivo in 'uCpPassivo.pas' {fCpPassivo},
  uNotaFiscalExporta in 'uNotaFiscalExporta.pas' {fNotaFiscalExporta},
  uFiltroContMaq in 'uFiltroContMaq.pas' {fFintroContMaq},
  uRelVendasUF in 'uRelVendasUF.pas' {fRelVendasUF},
  uFrequancia in 'uFrequancia.pas' {fFrequencia},
  uProcura_prod2 in 'uProcura_prod2.pas' {fProcura_prod2},
  uControle in 'uControle.pas' {fControle},
  uComanda in 'uComanda.pas' {fComanda},
  uCargosFuncoes in 'uCargosFuncoes.pas' {fCargosFuncoes},
  uMovCaixa in 'uMovCaixa.pas' {fMovCaixa},
  uCaixaReceber in 'uCaixaReceber.pas' {fCaixaReceber},
  ufplanocontas in 'ufplanocontas.pas' {fPlanoContas},
  uCadRG in 'uCadRG.pas' {fCadRG},
  uBancoPgto in 'uBancoPgto.pas' {fBancoPgto},
  uComissaoColaborador in 'uComissaoColaborador.pas' {fComissaoColaborador},
  uDespRec in 'uDespRec.pas' {fDespRec},
  uRatearConta in 'uRatearConta.pas' {fRatearConta},
  uLocacao in 'uLocacao.pas' {fLocacao},
  uMostraSuites in 'uMostraSuites.pas' {fMostraSuites},
  uBarCaixa in 'uBarCaixa.pas' {fBarCaixa},
  uRelComissao in 'uRelComissao.pas' {fRelComissao},
  uGuiaTranporte in 'uGuiaTranporte.pas' {fGuiaTranporte},
  uRelProgReceb in 'uRelProgReceb.pas' {fRelProgReceb},
  ucopiailha in 'ucopiailha.pas' {fCopiaIlha},
  uClassificacaoFiscalProduto in 'uClassificacaoFiscalProduto.pas' {fClassificacaoFIscalProduto},
  uRel_Guia in 'uRel_Guia.pas' {fRel_Guia},
  uNFPaulista in 'uNFPaulista.pas' {fNFPaulista},
  uselectempresa in 'uselectempresa.pas' {fSelecionaEmpresa},
  uRel_comissao in 'uRel_comissao.pas' {fRel_comissao},
  uMapeamento in 'uMapeamento.pas' {fMapeamento},
  uNotaf1 in 'uNotaf1.pas' {fNotaf1},
  uGeraAumento in 'uGeraAumento.pas' {fGeraAumento},
  uOrdemAssistencia in 'uOrdemAssistencia.pas' {fOrdemAssistencia},
  uParametrosTerminal in 'uParametrosTerminal.pas' {fParametrosTerminal},
  uPfaturamento in 'uPfaturamento.pas' {fPfaturamento},
  uNFeletronica in 'uNFeletronica.pas' {fNFeletronica},
  uLogsUsu in 'uLogsUsu.pas' {fLogsUsu},
  uTb_Ibge in 'uTb_Ibge.pas' {fTb_Ibge},
  uOf in 'uOf.pas' {fOf},
  uCallCenter in 'uCallCenter.pas' {fCallCenter},
  uNotafc in 'uNotafc.pas' {fNotafc},
  uNFeInutilizar in 'uNFeInutilizar.pas' {fNFeInutilizar},
  uPrazo in 'uPrazo.pas' {fPrazo},
  uNotafRemessa in 'uNotafRemessa.pas' {fNotafRemessa},
  uCombo in 'uCombo.pas' {fCombo},
  uGeraEtiquetas in 'uGeraEtiquetas.pas' {fGeraEtiquetas},
  uNFeMail in 'uNFeMail.pas' {fNFeMail},
  uBalancete in 'uBalancete.pas' {fBalancete},
  uProdGeraAumento in 'uProdGeraAumento.pas' {fProdGeraAumento},
  uEtiquetas_cli in 'uEtiquetas_cli.pas' {fEtiquetas_cli},
  uInventario in 'uInventario.pas' {fInventario},
  uCompraSolicitacao in 'uCompraSolicitacao.pas' {fSolicitacaoCompra},
  uCompraSolicProc in 'uCompraSolicProc.pas' {fCompraSolicProc},
  uProdutoProc in 'uProdutoProc.pas' {fProdutoProc},
  uCompraCotacao in 'uCompraCotacao.pas' {fCompraCotacao},
  uApontHoras in 'uApontHoras.pas' {fApontHoras},
  uRelNfe in 'uRelNfe.pas' {fRelNfe},
  uCompraRecebimento in 'uCompraRecebimento.pas' {fCompraRecebimento},
  uEmail in 'uEmail.pas' {fEmail},
  uCotacoesHist in 'uCotacoesHist.pas' {fCotacoesHist},
  uCompraCotacao2 in 'uCompraCotacao2.pas' {fCompraCotacao2},
  uCotacaoVer in 'uCotacaoVer.pas' {fCotacaoVer},
  uCompraCotacaoGerar in 'uCompraCotacaoGerar.pas' {fCompraCotacaoGerar},
  uListaPedido in 'uListaPedido.pas' {fListaPedido},
  u_SIMILARES in 'u_SIMILARES.pas' {F_SIMILARES},
  U_AUTOPECAS in 'U_AUTOPECAS.pas' {F_AUTOPECAS},
  U_Boletos in 'U_Boletos.pas' {F_Boletos},
  uNFClasse in 'uNFClasse.pas',
  uDeclaracaoImportacao in 'uDeclaracaoImportacao.pas' {fDeclaracaoImportacao},
  uDadosImportacao in 'uDadosImportacao.pas' {fDadosImportacao},
  uDIAdicao in 'uDIAdicao.pas' {fDIAdicao},
  uComplementar in 'uComplementar.pas' {fComplementar},
  uDetalheNF in 'uDetalheNF.pas' {fDetalheNF},
  uFiltroMov_NFcompra in 'uFiltroMov_NFcompra.pas' {fFiltroMov_NFcompra},
  uMovimento in 'uMovimento.pas',
  uMovimentoDetalhe in 'uMovimentoDetalhe.pas',
  uExpedicao in 'uExpedicao.pas' {fExpedicao},
  uEstoque in 'uEstoque.pas',
  uProcura_prodOficina in 'uProcura_ProdOficina.pas' {fProcura_ProdOficina},
  uCaixaBanco in 'uCaixaBanco.pas' {fCaixaBanco},
  uCliente in 'uCliente.pas',
  uClienteEnderecos in 'uClienteEnderecos.pas',
  uCliente1 in 'uCliente1.pas' {fCliente1},
  uOsDetalheClasse in 'uOsDetalheClasse.pas',
  uVendaCls in 'uVendaCls.pas',
  uMovimenta_Estoque in 'uMovimenta_Estoque.pas' {fMovimenta_Estoque},
  uCompraCls in 'uCompraCls.pas',
  uEndereco in 'uEndereco.pas' {fEndereco},
  uNaturezaOperacao in 'uNaturezaOperacao.pas' {fNaturezaOperacao},
  UDM_MOV in 'UDM_MOV.pas' {DM_MOV: TDataModule},
  U_AlteraPedido in 'U_AlteraPedido.pas' {F_AlteraPedido},
  uOsFiltro in 'uOsFiltro.pas' {fOsFiltro},
  uOsInsere in 'uOsInsere.pas' {fOsInsere},
  uLotes_Produtos in 'uLotes_Produtos.pas' {fLotes_Produtos},
  U_FECHAMENTO in 'U_FECHAMENTO.pas' {F_Fechamento},
  U_AUTORIZACAO in 'U_AUTORIZACAO.pas' {F_AUTORIZACAO},
  uAtsOS in 'uAtsOS.pas' {fAtsOS},
  u_mesas in 'u_mesas.pas' {F_MESAS},
  uOsInserePeca in 'uOsInserePeca.pas' {fOsInserePeca},
  U_Entrada in 'U_Entrada.pas' {F_Entrada},
  u_imagens in 'u_imagens.pas' {f_imagens},
  U_MudaMesa in 'U_MudaMesa.pas' {F_MudaMesa},
  uPeriodo in 'uPeriodo.pas' {fPeriodo},
  uPainelControleCompra in 'uPainelControleCompra.pas' {fPainelControleCompra},
  ucrdescontado in 'ucrdescontado.pas' {fcrdescontado},
  uImport in 'uImport.pas' {fImport},
  uClienteFiltro in 'uClienteFiltro.pas' {fClienteFiltro},
  uReceberCls in 'uReceberCls.pas',
  uAts_R in 'uAts_R.pas' {fAts_R},
  uAbrirCaixa in 'uAbrirCaixa.pas' {fAbrirCaixa},
  uCCe in 'uCCe.pas' {fCCe},
  uCarne in 'uCarne.pas' {fCarne},
  uPainelControle in 'uPainelControle.pas' {fPainelControle},
  U_RelTerminal in 'U_RelTerminal.pas' {F_RelTerminal},
  U_AbreComanda in 'U_AbreComanda.pas' {f_AbreComanda},
  uEstoqueAjuste in 'uEstoqueAjuste.pas' {fEstoqueAjuste},
  uListaEstoque in 'uListaEstoque.pas' {fListaEstoque},
  uBancoExtrato in 'uBancoExtrato.pas' {fBancoExtrato},
  uBancoOFX in 'uBancoOFX.pas',
  uRelOS in 'uRelOS.pas' {fRelOs},
  uBancoDePara in 'uBancoDePara.pas' {fBancoDePara},
  uPagarCls in 'uPagarCls.pas',
  uDescontoTitulos in 'uDescontoTitulos.pas' {fDescontoTitulos},
  uRel_LucroPresumido in 'uRel_LucroPresumido.pas' {fRel_LucroPresumido},
  uNfePisCofins in 'uNfePisCofins.pas' {fNfePisCofins},
  uFiscalCls in 'uFiscalCls.pas',
  uTerminalNTC in 'uTerminalNTC.pas' {fTerminalNTC},
  uIncluirProdutos in 'uIncluirProdutos.pas' {fIncluirProdutos},
  uSuites in 'uSuites.pas' {fSuites},
  uCadClientes2 in 'uCadClientes2.pas' {fCadClientes2},
  uRelTitulos in 'uRelTitulos.pas' {fRelTitulos},
  uDetalhe in 'uDetalhe.pas' {fDetalhe},
  uSangria in 'uSangria.pas' {fSangria},
  uEntradaCaixa in 'uEntradaCaixa.pas' {fEntradaCaixa},
  uCorreio in 'uCorreio.pas' {fCorreio},
  uFiltroCorreio in 'uFiltroCorreio.pas' {FiltroCorreio},
  uListaVenda in 'uListaVenda.pas' {fListaVenda},
  uComandaNTC in 'uComandaNTC.pas' {fComandaNTC},
  uRetira in 'uRetira.pas' {fRetira},
  uCadDoc in 'uCadDoc.pas' {FCadDoc},
  uFiltroCadDoc in 'uFiltroCadDoc.pas' {fFiltroCadDoc},
  uCadDep in 'uCadDep.pas' {fCadDep},
  uCadSetor in 'uCadSetor.pas' {fCadSetor},
  uFiltroSetor in 'uFiltroSetor.pas' {fFiltroSetor},
  uFiltroDep in 'uFiltroDep.pas' {fFiltroDep},
  uVendaRelPorNotaFiscalLote in 'uVendaRelPorNotaFiscalLote.pas' {fVendaRelPorNotaFiscalLote},
  uExpContMat in 'uExpContMat.pas' {fExpContMat},
  uFluxoEstoque in 'uFluxoEstoque.pas' {fFluxoEstoque},
  uNfeIcms in 'uNfeIcms.pas' {fNfeIcms},
  uperiodoSem in 'uperiodoSem.pas' {fPeriodoSem},
  uClientesAniversario in 'uClientesAniversario.pas' {fClientesAniversario},
  uUnidadeMedida in 'uUnidadeMedida.pas' {fUnidadeMedida},
  uSincronizar in 'uSincronizar.pas' {fSincronizar},
  uOsFinaliza in 'uOsFinaliza.pas' {fOsFinaliza},
  uCx in 'uCx.pas' {fCx},
  uClassificacaoFiscalNCM in 'uClassificacaoFiscalNCM.pas' {fClassificacaoFiscalNCM},
  uNCM in 'uNCM.pas' {fNCM},
  uEstoqueAtualiza in 'uEstoqueAtualiza.pas',
  uTroca in 'uTroca.pas' {fTroca},
  uTerminal2 in 'uTerminal2.pas' {fTerminal2},
  UnitDeclaracoes in 'UnitDeclaracoes.pas',
  UsaCPFDesForma in 'UsaCPFDesForma.pas' {FormUsaCPFDesForma},
  Principal in 'Principal.pas' {frmPrincipal},
  RelatorioGerencial in 'RelatorioGerencial.pas' {frmRelatorioGerencial},
  TextoImprimir in 'TextoImprimir.pas' {frmUsaComprovanteNaoFiscalVinculado},
  SimboloMoeda in 'SimboloMoeda.pas' {FormSimboloMoeda},
  AdicaoAliquota in 'AdicaoAliquota.pas' {FormAdicaoAliquota},
  Totalizador in 'Totalizador.pas' {FormTotalizador},
  NumeroLinhas in 'NumeroLinhas.pas' {FormNumeroLinhas},
  LinhaCupons in 'LinhaCupons.pas' {FormLinhaCupons},
  NomeiaDepartamento in 'NomeiaDepartamento.pas' {FormNomeiaDepartamento},
  ForcaAgulhas in 'ForcaAgulhas.pas' {FormForcaAgulhas},
  VendeItem in 'VendeItem.pas' {FormVendeItem},
  CancelItemGenerico in 'CancelItemGenerico.pas' {FormCancelItemGenerico},
  VendaPorDepartamento in 'VendaPorDepartamento.pas' {FormVendaPorDepartamento},
  FechaResumido in 'FechaResumido.pas' {FormFechaResumido},
  FechaComAcrecimo in 'FechaComAcrecimo.pas' {FormFechaComAcrecimo},
  IniciaFechamento in 'IniciaFechamento.pas' {FormIniciaFechamento},
  EfetuaFormaPagamento in 'EfetuaFormaPagamento.pas' {FormEfetuaFormaPagamento},
  TerminaFechamento in 'TerminaFechamento.pas' {FormTerminaFechamento},
  EstornoFormaPagamento in 'EstornoFormaPagamento.pas' {FormEstornoFormaPagamento},
  UsaUnidadeMedida in 'UsaUnidadeMedida.pas' {FormUsaUnidadeMedida},
  AumentaDescricaoItem in 'AumentaDescricaoItem.pas' {FormAumentaDescricaoItem},
  MemoriaFiscal in 'MemoriaFiscal.pas' {FormMemoriaFiscal},
  MemoriaFiscalMFD in 'MemoriaFiscalMFD.pas' {FormMemoriaFiscalMFD},
  Recebimento in 'Recebimento.pas' {FormRecebimento},
  ComprovanteVinculado in 'ComprovanteVinculado.pas' {FormComprovanteVinculado},
  ImprimeCheque in 'ImprimeCheque.pas' {FormImprimeCheque},
  ProgramaMoeda in 'ProgramaMoeda.pas' {FormProgramaMoeda},
  CidadeFavorecido in 'CidadeFavorecido.pas' {FormCidadeFavorecido},
  ProgramaCaracter in 'ProgramaCaracter.pas' {FormProgramaCaracter},
  AbreCupomRestaurante in 'AbreCupomRestaurante.pas' {FormAbreCupomRestaurante},
  RegistroVendas in 'RegistroVendas.pas' {FormRegistroVendas},
  ConferenciaMesa in 'ConferenciaMesa.pas' {FormConferenciaMesa},
  AbreConferencia in 'AbreConferencia.pas' {FormAbreConferencia},
  FechaConferenciaMesa in 'FechaConferenciaMesa.pas' {FormFechaConferenciaMesa},
  FechaCupom in 'FechaCupom.pas' {FormFechaCupom},
  FechaCupomContaDividida in 'FechaCupomContaDividida.pas' {FormFechaCupomContaDividida},
  TranfItem in 'TranfItem.pas' {FormTranfItem},
  LeRegVendas in 'LeRegVendas.pas' {FormLeRegVendas},
  TranfMesa in 'TranfMesa.pas' {FormTranfMesa},
  AberturaDia in 'AberturaDia.pas' {frmAberturaDoDia},
  FormaPagamento in 'FormaPagamento.pas' {frmEfetuaFormaPagamentoTextoOpcional},
  InformacaoBalanca in 'InformacaoBalanca.pas' {FormBalanca},
  BemaCarne in 'BemaCarne.pas' {FormCarne},
  DatePecker in 'DatePecker.pas' {FormDatePecker},
  IniciaFechamentoCupomMFD in 'IniciaFechamentoCupomMFD.pas' {frmIniciaFechamentoCupomMFD},
  DadosSintegra in 'DadosSintegra.pas' {frmDadosSintegra},
  RelatorioSintegraMFD in 'RelatorioSintegraMFD.pas' {frmRelatorioSintegraMFD},
  AbreCupomMFD in 'AbreCupomMFD.pas' {frmAbreCupomMFD},
  CancelamentoAcrescimoDesconto in 'CancelamentoAcrescimoDesconto.pas' {frmCancelamentoAcrescimoDesconto},
  RetornoValor in 'RetornoValor.pas' {frmRetornoValor},
  DownloadMFD in 'DownloadMFD.pas' {frmDownload},
  AtivaDesativaVendaUmaLinha in 'AtivaDesativaVendaUmaLinha.pas' {frmAtivaDesativaVendaUmaLinha},
  TerminaFechamentoCupomMFD in 'TerminaFechamentoCupomMFD.pas' {frmMensagemPromocionalMFD},
  uAliquita in 'uAliquita.pas' {fAliquota},
  uMenuCupom in 'uMenuCupom.pas' {fMenuCupom},
  uGeraSPED in 'ugeraSPED.pas' {fGeraSPED},
  unfc in 'unfc.pas' {fnfc};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS - Admin';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM_MOV, DM_MOV);
  Application.CreateForm(TDMNF, DMNF);
  Application.CreateForm(TDmCitrus, DmCitrus);
  if (dm.conectado = False) then
    Application.Terminate;
  if (dm.moduloUsado = 'AUTOMOTIVA') then
    Application.CreateForm(TfAtsOs, fAtsOs);

  if (dm.moduloUsado = 'RESTAURANTES') then
    Application.CreateForm(TfAts_R, fAts_R);

  Application.CreateForm(TfAtsAdmin, fAtsAdmin);

  Application.CreateForm(TfAtualizaSistema, fAtualizaSistema);
  Application.CreateForm(TfProcurar_nf, fProcurar_nf);
  Application.CreateForm(TfProdudoBusca, fProdudoBusca);
  Application.CreateForm(TfMensagens, fMensagens);
  Application.CreateForm(TfProcura_produtos, fProcura_produtos);
  Application.CreateForm(Tfbanco, fbanco);
  Application.CreateForm(TfMostra_Contas, fMostra_Contas);
  Application.CreateForm(TfNotaFiscalCr, fNotaFiscalCr);
  Application.CreateForm(TfProcContabil, fProcContabil);
  Application.CreateForm(TfMovimentoCont, fMovimentoCont);
  Application.CreateForm(TfParametro, fParametro);
  Application.CreateForm(TfCadRG, fCadRG);
  Application.CreateForm(TfLocacao, fLocacao);
  Application.CreateForm(TfRelComissao, fRelComissao);
  Application.CreateForm(TfRel_Guia, fRel_Guia);
  Application.CreateForm(TfPai, fPai);
  Application.CreateForm(TfGeraAumento, fGeraAumento);
  Application.CreateForm(TfOf, fOf);
  Application.CreateForm(TfCallCenter, fCallCenter);
  Application.CreateForm(TfPrazo, fPrazo);
  Application.CreateForm(TfCombo, fCombo);
  Application.CreateForm(TfGeraEtiquetas, fGeraEtiquetas);
  Application.CreateForm(TfNFeletronica, fNFeletronica);
  Application.CreateForm(TfNFeMail, fNFeMail);
  Application.CreateForm(TfBalancete, fBalancete);
  //Application.CreateForm(TForm_1, Form_1);
  Application.CreateForm(TfEtiquetas_cli, fEtiquetas_cli);
  // Application.CreateForm(TfExpContMat, fExpContMat);
  //Application.CreateForm(TfParametrosTerminal, fParametrosTerminal);  //
  Application.CreateForm(TfPfaturamento, fPfaturamento);
  DM.formusercontrol := 'formdespesas';
  Application.CreateForm(TfcrTituloPagto, fcrTituloPagto);
  DM.formusercontrol := 'formreceber';
  Application.CreateForm(TfcrTitulo, fcrTitulo);
  DM.formusercontrol := 'formreceitas';
  Application.CreateForm(TfcrTituloInclui, fcrTituloInclui);
  DM.formusercontrol := 'formvendas';
  Application.CreateForm(TfVendas, fVendas);
  Application.CreateForm(TfFiltroMovimento,fFiltroMovimento);
  DM.formusercontrol := 'formvendasfinalizar';
  Application.CreateForm(TfVendaFinalizar, fVendaFinalizar);
  Application.CreateForm(TfMostra_Contas, fMostra_Contas);
  Application.CreateForm(TfCheques_bol, fCheques_bol);
  DM.formusercontrol := 'formcompras';
  Application.CreateForm(TfCompra, fCompra);
  Application.CreateForm(TfFiltroMov_compra,  ffiltromov_compra);
  DM.formusercontrol := 'formcomprasfinalizar';
  Application.CreateForm(TfCompraFinalizar, fCompraFinalizar);
  Application.CreateForm(TfProcura_prod, fProcura_prod);
  Application.CreateForm(TfUso_Prod, fUso_Prod);
  Application.CreateForm(TfProdutoLote, fProdutoLote);
  Application.CreateForm(TfcpTitulo, fcpTitulo);
  Application.CreateForm(TfFiltro_forn_plano, fFiltro_forn_plano);
  Application.CreateForm(TfRateioPag, fRateioPag);
  Application.CreateForm(TfSolicitacaoCompra, fSolicitacaoCompra);
  Application.CreateForm(TfCompraSolicProc, fCompraSolicProc);
  Application.CreateForm(TfProdutoProc, fProdutoProc);
  Application.CreateForm(TfProcura_prod, fProcura_prod);
  Application.CreateForm(TfClienteFiltro, fClienteFiltro);
  if (dm.moduloUsado = 'AUTOMOTIVA') then
  begin
    Application.CreateForm(TfOs, fOs);
    Application.CreateForm(TfOsFiltro, fOsFiltro);
    Application.CreateForm(TfProcura_ProdOficina, fProcura_ProdOficina);
    Application.CreateForm(TfOsInsere, fOsInsere);
    Application.CreateForm(TfOsInserePeca, fOsInserePeca);
  end;

  Application.Run;
end.
