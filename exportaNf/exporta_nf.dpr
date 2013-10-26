program exporta_nf;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  dmodPrincipal in 'dmodPrincipal.pas' {dmPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
