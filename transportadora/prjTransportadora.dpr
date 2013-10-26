program prjTransportadora;

uses
  Forms,
  uTransportadora in 'uTransportadora.pas' {fPrincipalLogistica},
  UDm in '..\srcGeral\UDm.pas' {DM: TDataModule},
  uPai_new in '..\srcGeral\uPai_new.pas' {fPai_new},
  uDmTransp in 'uDmTransp.pas' {dmTransp: TDataModule},
  uTipoOperacao in 'uTipoOperacao.pas' {fTipoOperacao},
  uUtils in '..\srcGeral\uUtils.pas',
  uPai in '..\srcGeral\uPai.pas' {fPai},
  uClienteCadastro in 'uClienteCadastro.pas' {fClienteCadastro},
  uListaClientes in 'uListaClientes.pas' {fListaClientes},
  uProcurar in 'uprocurar.pas' {fProcurar},
  uFornecedorCadastro in 'uFornecedorCadastro.pas' {fFornecedorCadastro},
  ufuncionario in 'ufuncionario.pas' {fFuncionario},
  uftransp in 'uftransp.pas' {ftransp},
  uPlanos in 'uPlanos.pas' {fPlanos},
  uOperacoes in 'uOperacoes.pas' {fOperacoes},
  uOperPesquisa in 'uOperPesquisa.pas' {fOperPesquisa},
  uOperPesquisa1 in '..\comercial\src\uOperPesquisa1.pas' {fOperPesquisa1},
  uOperacaoAltera in 'uOperacaoAltera.pas' {fOperacaoAltera};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS-Logistica';
  Application.CreateForm(TfPrincipalLogistica, fPrincipalLogistica);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TdmTransp, dmTransp);
  Application.CreateForm(TfOperacaoAltera, fOperacaoAltera);
  Application.Run;
end.
