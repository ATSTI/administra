program PrjEscola;

uses
  Forms,
  uPedagogico in 'uPedagogico.pas' {fPedagogico},
  UDm in 'UDm.pas' {DM: TDataModule},
  uPai_new in 'uPai_new.pas' {fPai_new},
  uAlunosCadastro in 'uAlunosCadastro.pas' {fAlunosCadastro},
  UDMEscola in 'UDMEscola.pas' {DMEscola: TDataModule},
  uListaCliEscola in 'uListaCliEscola.pas' {fListaCliEscola},
  uProcResponsavel in 'uProcResponsavel.pas' {fProcResponsavel},
  uFichaMedica in 'uFichaMedica.pas' {fFichaMedica},
  uResponsalvel in 'uResponsalvel.pas' {fResponsalvel},
  uRelatorios in 'uRelatorios.pas' {fRelatorios},
  uNotasFaltas in 'uNotasFaltas.pas' {fNotasFaltas},
  uBoletimAluno in 'uBoletimAluno.pas' {fBoletimAluno},
  uImpBoletim in 'uImpBoletim.pas' {fImpBoletim};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMEscola, DMEscola);
  Application.CreateForm(TfPedagogico, fPedagogico);
  Application.Run;
end.
