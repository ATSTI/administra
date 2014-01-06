program prjSpedCupom;

uses
  Forms,
  uSpedCupom in 'uSpedCupom.pas' {fSpedCupom};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfSpedCupom, fSpedCupom);
  Application.Run;
end.
