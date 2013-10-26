program boletobradescoCR;

uses
  Forms,
  uprincipal in 'uprincipal.pas' {Form1},
  BoletoLayout in 'BoletoLayout.pas',
  RLBoleto in 'RLBoleto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
