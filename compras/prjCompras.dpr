program prjCompras;

uses
  Forms,
  uDmCompra in 'uDmCompra.pas' {dmCompra: TDataModule},
  uPai_new in '..\comercial\src\uPai_new.pas' {fPai_new},
  uCompraSolicitacao in 'uCompraSolicitacao.pas' {fSolicitacaoCompra},
  uCompraSolicProc in 'uCompraSolicProc.pas' {fCompraSolicProc},
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule},
  uProdutoProc in 'uProdutoProc.pas' {fProdutoProc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TdmCompra, dmCompra);
  Application.CreateForm(TfSolicitacaoCompra, fSolicitacaoCompra);
  Application.CreateForm(TfCompraSolicProc, fCompraSolicProc);
  Application.CreateForm(TfProdutoProc, fProdutoProc);
  Application.Run;
end.
