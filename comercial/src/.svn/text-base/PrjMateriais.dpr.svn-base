program PrjMateriais;

uses
  Forms,
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  uMateriais in 'uMateriais.pas' {fMateriais},
  uSobre in 'uSobre.pas' {fSobre},
  UDm in 'UDm.pas' {DM: TDataModule},
  ufprocura_prod in 'ufprocura_prod.pas' {fProcura_prod},
  uPai in 'uPai.pas' {fPai},
  uProdutoCadastro in 'uProdutoCadastro.pas' {fProdutoCadastro},
  uUso_Prod in 'uUso_Prod.pas' {fUso_Prod},
  uEntra_Sai_estoque in 'uEntra_Sai_estoque.pas' {fEntra_Sai_estoque},
  uFiltroEstoque in 'uFiltroEstoque.pas' {fFiltroEstoque},
  uPdm in 'uPdm.pas' {fPdm},
  uProcurar in 'uprocurar.pas' {fProcurar},
  uProdutoLote in 'uProdutoLote.pas' {fProdutoLote},
  uEnt_Sai_Lote in 'uEnt_Sai_Lote.pas' {fEnt_Sai_Lote},
  uLotes in 'uLotes.pas' {fLotes},
  uSplash_mat in 'uSplash_mat.pas' {fSplash_mat},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  uFiltroMovMaterias in 'uFiltroMovMaterias.pas' {fFiltroMovMateriais},
  uListaClientes in 'uListaClientes.pas' {fListaClientes},
  Encrypt_decrypt in 'Encrypt_decrypt.pas',
  uFrConfigDbx in 'uFrConfigDbx.pas' {FrConfigDbx},
  uDmCitrus in '..\..\citrus\uDmCitrus.pas' {DmCitrus: TDataModule},
  uRelestoque in 'uRelestoque.pas' {fRelestoque},
  sCtrlResize in 'sCtrlResize.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfMateriais, fMateriais);
  Application.CreateForm(TfProcura_prod, fProcura_prod);
  Application.CreateForm(TDmCitrus, DmCitrus);
  Application.Run;
end.
