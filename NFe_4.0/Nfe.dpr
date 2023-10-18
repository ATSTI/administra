program Nfe;

uses
  Forms,
  principal in 'principal.pas' {Form1},
  udm in 'udm.pas' {dm: TDataModule},
  uNFeInutilizar in 'uNFeInutilizar.pas' {fNFeInutilizar},
  unit2 in 'unit2.pas' {frSelecionarCertificado};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfNFeInutilizar, fNFeInutilizar);
  Application.CreateForm(TfrSelecionarCertificado, frSelecionarCertificado);
  Application.Run;
end.
