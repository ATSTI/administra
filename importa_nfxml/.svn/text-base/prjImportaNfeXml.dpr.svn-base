program prjImportaNfeXml;

uses
  Forms,
  uimporta_nfxml in 'uimporta_nfxml.pas' {fImporta_XML},
  uProdutoFornecedor in 'uProdutoFornecedor.pas' {fProdutoFornec},
  uProdutoProc in 'uProdutoProc.pas' {fProdutoProc},
  uMovimento in '..\comercial\src\uMovimento.pas',
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule},
  md5 in '..\comercial\src\md5.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfImporta_XML, fImporta_XML);
  Application.CreateForm(TfProdutoFornec, fProdutoFornec);
  Application.CreateForm(TfProdutoProc, fProdutoProc);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
