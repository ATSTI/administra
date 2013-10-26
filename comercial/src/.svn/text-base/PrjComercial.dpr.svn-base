program PrjComercial;

uses
  Forms,
  UDm in 'UDm.pas' {DM: TDataModule},
  uPai in 'uPai.pas' {fPai},
  uComercial in 'uComercial.pas' {fComercial},
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
  uSplash in 'usplash.pas' {fSplash},
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
  md5 in '..\..\..\..\Arquivos de programas\Borland\Delphi7\componentes\UserControl2.30RC3\Source\md5.pas',
  uNotaFiscalExporta in 'uNotaFiscalExporta.pas' {fNotaFiscalExporta},
  sCtrlResize in 'sCtrlResize.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS - Comercial';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDmCitrus, DmCitrus);
  Application.CreateForm(TfComercial, fComercial);
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
  Application.CreateForm(TfTerminal, fTerminal);
  Application.CreateForm(TfTerminal_Delivery, fTerminal_Delivery);
  Application.CreateForm(TfRateioPag, fRateioPag);
  Application.Run;
end.
