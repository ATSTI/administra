program PrjPedagogico;

uses
  Forms,
  uPedagogico in 'uPedagogico.pas' {fPedagogico},
  uPai_new in 'uPai_new.pas' {fPai_new},
  uAlunoCadastro in 'uAlunoCadastro.pas' {fAlunoCadastro},
  UDm in 'UDm.pas' {DM: TDataModule},
  uListaCliEscola in 'uListaCliEscola.pas' {fListaCliEscola},
  uNotasFaltas in 'uNotasFaltas.pas' {fNotasFaltas},
  uResponsalvel in 'uResponsalvel.pas' {fResponsalvel},
  uProcResponsavel in 'uProcResponsavel.pas' {fProcResponsavel},
  uEstado in 'uEstado.pas' {fEstado},
  uBoletimAluno in 'uBoletimAluno.pas' {fBoletimAluno},
  uImpBoletim in 'uImpBoletim.pas' {fImpBoletim},
  uPeriodos in 'uPeriodos.pas' {fPeriodos},
  uTipoSerie in 'uTipoSerie.pas' {fTipoSerie},
  uMaterias in 'uMaterias.pas' {fMaterias},
  uClasseCadastro in 'uClasseCadastro.pas' {fClasseCadastro},
  uClasseEscolha in 'uClasseEscolha.pas' {fClasseEscolha},
  uClasse in 'uClasse.pas' {fClasse},
  uListaAlunos in 'uListaAlunos.pas' {fListaAlunos},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  ufSplash in 'ufSplash.pas' {fSplashPed},
  uColaboradorTurma in 'uColaboradorTurma.pas' {fColaboradorTurma},
  uExporta in 'uExporta.pas' {fExporta},
  uImporta in 'uImporta.pas' {fImporta},
  uFichaMedica in 'uFichaMedica.pas' {fFichaMedica},
  uPlanos in 'uPlanos.pas',
  uPai in 'uPai.pas' {fPai};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  fSplashPed := TfSplashPed.Create(Application);
  fSplashPed.Show;
  fSplashPed.Update;
  Application.CreateForm(TdmApp, dmApp);
  //verifico se o micro já está logado
  if (dm.cds_Login.Active) then
      dm.cds_Login.Close;
  dm.cds_Login.Params[0].Clear;
  dm.cds_Login.Params[0].AsString := MICRO;
  dm.cds_Login.Open;
  if dm.cds_Login.IsEmpty then
    Application.CreateForm(TfDlgLogin, fDlgLogin)
  else
  begin
    usuario := dm.cds_LoginUSUARIO.AsString;
    fSplashPED.Free;
    Application.CreateForm(TfPedagogico, fPedagogico);
  end;
  Application.Run;
end.
