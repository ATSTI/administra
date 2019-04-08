program etiqueta_zebra;

uses
  Forms,
  uprincipal in 'uprincipal.pas' {fPrincipal},
  uThread in 'uThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
