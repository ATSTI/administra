program prjCitrus;

uses
  Forms,
  uPrincipalCitrus in 'uPrincipalCitrus.pas' {fPrincipal},
  uDmCitrus in 'uDmCitrus.pas' {DmCitrus: TDataModule},
  uPai in '..\srcGeral\uPai.pas' {fPai},
  uPai_new in '..\srcGeral\uPai_new.pas' {fPai_new},
  uUtils in '..\srcGeral\uUtils.pas',
  uCompra in 'uCompra.pas' {fCompra},
  fClassCitrus in 'fClassCitrus.pas',
  uFiltroMov_compra in 'uFiltroMov_compra.pas' {fFiltroMov_compra},
  uprocurar in 'uprocurar.pas' {fProcurar},
  uLote in 'uLote.pas' {fLote},
  uFornecedorCadastro in 'uFornecedorCadastro.pas' {fFornecedorCadastro},
  uRegiaoCadastro in 'uRegiaoCadastro.pas' {fRegiaoCadastro},
  uNotafiscal in 'uNotafiscal.pas' {fnotafiscal},
  uITENS_NF in 'uITENS_NF.pas' {fITENS_NF};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS-Citrus';
  Application.CreateForm(TDmCitrus, DmCitrus);
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
