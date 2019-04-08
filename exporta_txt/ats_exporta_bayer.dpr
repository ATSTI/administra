program ats_exporta_bayer;

uses
  Forms,
  uDMCTe in 'uDMCTe.pas' {dm: TDataModule},
  uExporta in 'uExporta.pas' {fExporta};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS Exporta Bayer';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfExporta, fExporta);
  Application.Run;
end.
