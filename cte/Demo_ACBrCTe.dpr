program Demo_ACBrCTe;

uses
  Forms,
  Frm_Demo_ACBrCTe in 'Frm_Demo_ACBrCTe.pas' {frmDemo_ACBrCTe},
  uDMCTe in 'uDMCTe.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDemo_ACBrCTe, frmDemo_ACBrCTe);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
