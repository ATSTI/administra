program boleto;

uses
  Forms,
  uprincipal in 'uprincipal.pas' {Form1},
  BoletoLayout in 'BoletoLayout.pas',
  RLBoleto in 'RLBoleto.pas',
  RLCob748 in 'RLCob748.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
