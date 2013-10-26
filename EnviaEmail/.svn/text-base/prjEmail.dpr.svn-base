program prjEmail;

uses
  Forms,
  uEmail in 'uEmail.pas' {Form1},
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule},
  uDmApp in '..\comercial\src\udmapp.pas' {dmApp: TDataModule},
  md5 in '..\comercial\src\md5.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS - Email';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmApp, dmApp);
  Application.Run;
end.
