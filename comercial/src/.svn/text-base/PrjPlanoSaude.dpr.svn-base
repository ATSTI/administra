program PrjPlanoSaude;

uses
  Forms,
  uPlanoSaude in 'uPlanoSaude.pas' {fPlanoSaude},
  uPai in 'uPai.pas' {fPai},
  uClientePlano in 'uClientePlano.pas' {fClientePlano},
  UDmSaude in 'UDmSaude.pas' {DMSaude: TDataModule},
  uprocurarSaude in 'uprocurarSaude.pas' {fProcurarSaude},
  uDependente in 'uDependente.pas' {fDependente},
  uPlanoFaixa in 'uPlanoFaixa.pas' {fPlanoFaixa},
  uCombo in 'uCombo.pas' {fCombo},
  UProcuraGrupo in 'UProcuraGrupo.pas' {fProcuraGrupo},
  ufuncionario in 'ufuncionario.pas' {fFuncionario},
  UDm in 'UDm.pas' {DM: TDataModule},
  uProcurar in 'uprocurar.pas' {fProcurar},
  uXmlAns in 'uXmlAns.pas' {fXmlAns},
  UTissV2_01_02 in 'UTissV2_01_02.pas',
  uQguia in 'uQguia.pas' {fQguia},
  uFornecedorCadastroSaude in 'uFornecedorCadastroSaude.pas' {fFornecedorCadastroSaude},
  uFornecedorEnderecoSaude in 'uFornecedorEnderecoSaude.pas' {fFornecedorEnderecoSaude},
  uFornecedorRepresentanteSaude in 'uFornecedorRepresentanteSaude.pas' {fFornecedorRepresentanteSaude},
  uFiltroGuia in 'uFiltroGuia.pas' {filtroGuia},
  uprocurar_prest in 'uprocurar_prest.pas' {fProcurar_prest},
  uEditar in 'uEditar.pas' {fEditar},
  uFaixaMudanca in 'uFaixaMudanca.pas' {fFaixaMudanca},
  uUtils in 'uUtils.pas',
  uLancaProcSaude in 'uLancaProcSaude.pas' {fLancaProcSaude},
  uPai_new in 'uPai_new.pas' {fPai_new},
  uLancaProcSaudeProc in 'uLancaProcSaudeProc.pas' {fLancaProcSaudeProc},
  uRelPcmo in 'uRelPcmo.pas' {fRelPcmo},
  uVotam in 'uVotam.pas' {fVotam},
  md5 in '..\..\..\..\Arquivos de programas\Borland\Delphi7\componentes\UserControl2.30RC3\Source\md5.pas',
  ufaturamento in 'ufaturamento.pas' {ffaturamento},
  UTissV2_01_03 in 'UTissV2_01_03.pas',
  uresumointernacao in 'uresumointernacao.pas' {fresumointernacao},
  udemonstrativo in 'udemonstrativo.pas' {fdemonstrativo},
  uIdadeSexo in 'uIdadeSexo.pas' {fIdadeSexo};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS-SAUDE';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMSaude, DMSaude);
  Application.CreateForm(TfPlanoSaude, fPlanoSaude);
  Application.CreateForm(TfClientePlano, fClientePlano);
  Application.CreateForm(TfDependente, fDependente);
  Application.CreateForm(TfEditar, fEditar);
  Application.CreateForm(TfVotam, fVotam);
  Application.CreateForm(Tffaturamento, ffaturamento);
  Application.CreateForm(Tfresumointernacao, fresumointernacao);
  Application.CreateForm(Tfdemonstrativo, fdemonstrativo);
  Application.CreateForm(TfIdadeSexo, fIdadeSexo);
  Application.Run;
end.
