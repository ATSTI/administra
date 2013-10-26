program prjAtualizaBd;

uses
  Forms,
  Atualiza in 'Atualiza.pas' {Form1},
  Encrypt_decrypt in '..\comercial\src\Encrypt_decrypt.pas',
  uFrConfigDbx in '..\comercial\src\uFrConfigDbx.pas' {FrConfigDbx},
  UManu in 'UManu.pas' {FManu},
  uUtils in '..\comercial\src\uUtils.pas',
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFManu, FManu);
  //TFrConfigDbx.Abrir(Form1.sc);
  Application.Run;
end.
