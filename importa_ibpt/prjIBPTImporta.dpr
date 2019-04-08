program prjIBPTImporta;

uses
  Forms,
  ibpt_importa in 'ibpt_importa.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Atualizar Tabela IBPT/NCM';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
