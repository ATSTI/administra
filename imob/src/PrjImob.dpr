program PrjImob;

uses
  Forms,
  uprincipal in 'uprincipal.pas' {fPrincipal},
  UDm in '..\..\comercial\src\UDm.pas' {DM: TDataModule},
  uPai in '..\..\comercial\src\uPai.pas' {fPai},
  uPai_new in '..\..\comercial\src\uPai_new.pas' {fPai_new},
  udmimob in 'udmimob.pas' {dmimob: TDataModule},
  uclientescadastro in 'uclientescadastro.pas' {fClientesCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(Tdmimob, dmimob);
  Application.CreateForm(TfClientesCadastro, fClientesCadastro);
  Application.Run;
end.
