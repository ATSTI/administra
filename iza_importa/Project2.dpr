program Project2;

uses
  Forms,
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Importacao_DBF';
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
