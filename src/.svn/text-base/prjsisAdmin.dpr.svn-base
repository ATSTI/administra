program prjsisAdmin;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  UDm in 'UDm.pas' {DM: TDataModule},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  uSplash in 'usplash.pas' {fSplash},
  uRelatorios in 'uRelatorios.pas' {fRelatorios};

{$R *.res}

begin
  Application.Initialize;
//  fSplash := TfSplash.Create(Application);
//  fSplash.Show;
//  fSplash.Update;
  Application.Title := 'ATS - Admin';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
