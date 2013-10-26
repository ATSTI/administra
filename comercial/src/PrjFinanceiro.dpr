program PrjFinanceiro;

uses
  Forms,
  uFinanceiro in 'uFinanceiro.pas' {fFinanceiro},
  UDm in 'UDm.pas' {DM: TDataModule},
  ufcr in 'ufcr.pas' {fcrproc},
  uPai in 'uPai.pas' {fPai},
  uProcurar in 'uprocurar.pas' {fProcurar},
  ufprocura_prod in 'ufprocura_prod.pas' {fProcura_prod},
  uListaClientes in 'uListaClientes.pas' {fListaClientes},
  ucrTitulo in 'ucrTitulo.pas' {fcrTitulo},
  uFornecedorRepresentante in 'uFornecedorRepresentante.pas' {fFornecedorRepresentante},
  uClienteCadastro in 'uClienteCadastro.pas' {fClienteCadastro},
  uclienteendereco in 'uclienteendereco.pas' {fclienteendereco},
  uClienteRepresentante in 'uClienteRepresentante.pas' {fClienteRepresentante},
  uClienteVeiculo in 'uClienteVeiculo.pas' {fClienteVeiculo},
  uFornecedorCadastro in 'uFornecedorCadastro.pas' {fFornecedorCadastro},
  uFornecedorEndereco in 'uFornecedorEndereco.pas' {fFornecedorEndereco},
  uDuplicata in 'uDuplicata.pas' {fDuplicata},
  uRemessaTitulo in 'uRemessaTitulo.pas' {fRemessaTitulo},
  ubanco in 'ubanco.pas' {fbanco},
  uCheques_bol in 'uCheques_bol.pas' {fCheques_bol},
  ufcpproc in 'ufcpproc.pas' {fCpProc},
  ufcrtitulo in 'ufcrtitulo.pas' {fcpTitulo},
  uCrTituloPagto in 'uCrTituloPagto.pas' {fcrTituloPagto},
  uCrTituloInclui in 'uCrTituloInclui.pas' {fcrTituloInclui},
  uFiltro_forn_plano in 'uFiltro_forn_plano.pas' {fFiltro_forn_plano},
  ufplanocontas in 'ufplanocontas.pas' {fPlanoContas},
  ufContasAssistente in 'ufContasAssistente.pas' {fContasAssistente},
  uftransp in 'uftransp.pas' {ftransp},
  ufContabilLanc in 'ufContabilLanc.pas' {fContabilLanc},
  ufProcContabil in 'ufProcContabil.pas' {fProcContabil},
  ufMovimentoCont in 'ufMovimentoCont.pas' {fMovimentoCont},
  uFamilia in 'uFamilia.pas' {fFamilia},
  uCategoria in 'uCategoria.pas' {fCategoria},
  ufNotafiscalProc in 'ufNotafiscalProc.pas' {fNotaFiscalProc},
  uNotafiscal in 'uNotafiscal.pas' {fnotafiscal},
  uAssociacao in 'uAssociacao.pas' {fAssociacao},
  uSobre in 'uSobre.pas' {fSobre},
  uRelatorio in 'uRelatorio.pas' {fRelatorio},
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  uSplash_Fin in 'uSplash_Fin.pas' {fSplash_Fin},
  uRelatorioReceber in 'uRelatorioReceber.pas' {fRelatorioReceber},
  uRateioPag in 'uRateioPag.pas' {fRateioPag},
  uMostraDetalhe in 'uMostraDetalhe.pas' {fMostraDetalhe},
  ufCrAltera in 'ufCrAltera.pas' {fCrAltera},
  gbCobranca in 'gbCobranca.pas',
  uAgendamento in 'uAgendamento.pas' {fAgendamento},
  uVisitas in 'uVisitas.pas' {fVisitas},
  ucrEscolas in 'ucrEscolas.pas' {fcrEscolas},
  uListaCliEscola in 'uListaCliEscola.pas' {fListaCliEscola},
  uRel_CR in 'uRel_CR.pas' {fRel_CR},
  uRel_CR1 in 'uRel_CR1.pas' {fRel_CR1},
  uEmpresa in 'uEmpresa.pas' {fEmpresa},
  Utils in 'Utils.pas',
  uResolucaoTela in 'uResolucaoTela.pas' {fResolucaoTela},
  uGeraCob in 'uGeraCob.pas' {fGeraCob},
  uPlanos in 'uPlanos.pas' {fPlanos},
  uProcuraCBR in 'uProcuraCBR.pas' {fProcuraCBR},
  uArquivoRetorno in 'uArquivoRetorno.pas' {fArquivoRetorno},
  uBaixaretorno in 'uBaixaretorno.pas' {fBaixaretorno},
  ufuncionario in 'ufuncionario.pas' {fFuncionario},
  uUtils in 'uUtils.pas',
  Encrypt_decrypt in 'Encrypt_decrypt.pas',
  uFrConfigDbx in 'uFrConfigDbx.pas' {FrConfigDbx},
  uRelatorioFin in 'uRelatorioFin.pas' {fRelatorioFin},
  uGeraCobCliente in 'uGeraCobCliente.pas' {fGeraCobCliente},
  ufcrSaude in 'ufcrSaude.pas' {fcrProcSaude},
  uRelCr2 in 'uRelCr2.pas' {fRel_CR2},
  uListaClientesSaude in 'uListaClientesSaude.pas' {fListaClienteSaude},
  uEntrada in 'uEntrada.pas' {fEntrada},
  uProcedimentos in 'uProcedimentos.pas' {fProcedimentos},
  uFiltroMovLancamento in 'uFiltroMovLancamento.pas' {fFiltroMovLancamento},
  uLancaProcSaude in 'uLancaProcSaude.pas' {fLancaProcSaude},
  uLancaProcSaudeProc in 'uLancaProcSaudeProc.pas' {fLancaProcSaudeProc},
  UDmSaude in 'UDmSaude.pas' {DMSaude: TDataModule},
  uCorrigirDesconto in 'uCorrigirDesconto.pas' {fCorrigeDesconto},
  uImpr_Boleto in 'uImpr_Boleto.pas' {fImpr_Boleto},
  uRelatorioCaixa in 'uRelatorioCaixa.pas' {fRelatorioCaixa},
  uRelatorioAsh in 'uRelatorioAsh.pas' {fRelatorioAsh},
  uCheq_bolBaixa in 'uCheq_bolBaixa.pas' {fCheq_bolBaixa},
  uLancaProcPcmso in 'uLancaProcPcmso.pas' {fLancaProcPcmso},
  uFornecedorCadastroSaude in 'uFornecedorCadastroSaude.pas' {fFornecedorCadastroSaude},
  uLancaProcPart in 'uLancaProcPart.pas' {fLancaProcPart},
  uProdFornecedor in 'uProdFornecedor.pas' {fProdFornecedor},
  uEnvelope in 'uEnvelope.pas' {fEnvelope},
  uFluxoCaixa in 'uFluxoCaixa.pas' {fFluxoCaixa},
  uNotaFiscalEscola in 'uNotaFiscalEscola.pas' {fNotaFiscalEscola},
  uProcuraCheque in 'uProcuraCheque.pas' {fProcuraCheque},
  fClassCitrus in '..\..\citrus\fClassCitrus.pas',
  uDmCitrus in '..\..\citrus\uDmCitrus.pas' {DmCitrus: TDataModule},
  sCtrlResize in 'sCtrlResize.pas',
  uVendaFinalizar in 'uVendaFinalizar.pas' {fVendaFinalizar},
  uVendas in 'uVendas.pas' {fVendas},
  uCompra in 'uCompra.pas' {fCompra},
  uCompraFinalizar in 'uCompraFinalizar.pas' {fCompraFinalizar},
  UDMNF in 'UDMNF.pas' {DMNF: TDataModule},
  uNotaf in 'uNotaf.pas' {fNotaf},
  uFiltroMovimento in 'uFiltroMovimento.pas' {fFiltroMovimento};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS - Financeiro';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMSaude, DMSaude);
  Application.CreateForm(TfFinanceiro, fFinanceiro);
  Application.CreateForm(TDMNF, DMNF);
  Application.CreateForm(TfNotaf, fNotaf);
  Application.CreateForm(TfFiltroMovimento, fFiltroMovimento);
  DM.formusercontrol := 'formdespesas';
  Application.CreateForm(TfcrTituloPagto, fcrTituloPagto);
  DM.formusercontrol := 'formreceber';
  Application.CreateForm(TfcrTitulo, fcrTitulo);
  DM.formusercontrol := 'formreceitas';
  Application.CreateForm(TfcrTituloInclui, fcrTituloInclui);
    //DM.formusercontrol := 'formvendas';
  //Application.CreateForm(TfVendas, fVendas);
  //DM.formusercontrol := 'formvendasfinalizar';
  //Application.CreateForm(TfVendaFinalizar, fVendaFinalizar);
  //DM.formusercontrol := 'formcompras';
  //Application.CreateForm(TfCompra, fCompra);
  //DM.formusercontrol := 'formcomprasfinalizar';
  //Application.CreateForm(TfCompraFinalizar, fCompraFinalizar);
  Application.CreateForm(TfFiltro_forn_plano, fFiltro_forn_plano);
  Application.CreateForm(TfCheques_bol, fCheques_bol);
  Application.CreateForm(TfRateioPag, fRateioPag);  
  Application.Run
end.
