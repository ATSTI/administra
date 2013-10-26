program PrjAdministrativo;

uses
  Forms,
  uAdm_Principal in 'uAdm_Principal.pas' {fAdm_Principal},
  UDm in 'UDm.pas' {DM: TDataModule},
  uSobre in 'uSobre.pas' {fSobre},
  uPai in 'uPai.pas' {fPai},
  uSeriaNF in 'uSeriaNF.pas' {fSeriaNF},
  uEmpresaCadastro in 'uEmpresaCadastro.pas' {fEmpresaCadastro},
  uEmpresaProcura in 'uEmpresaProcura.pas' {fEmpresaProcura},
  uEmpresa in 'uEmpresa.pas' {fEmpresa},
  uUsuarioCadastro in 'uUsuarioCadastro.pas' {fUsuarioCadastro},
  ufParametro in 'ufParametro.pas' {fParametro},
  uCfop in 'uCfop.pas' {fCfop},
  uEstado in 'uEstado.pas' {fEstado},
  uAlteraSenha in 'ualterasenha.pas' {fAlteraSenha},
  UnitCadastroUsuarios in 'unitcadastrousuarios.pas' {FormCadastroUsuarios},
  uNovoUsuario in 'unovousuario.pas' {fNovoUsuario},
  ufuncionario in 'ufuncionario.pas' {fFuncionario},
  uProcurar in 'uprocurar.pas' {fProcurar},
  uSplashAdm in 'uSplashAdm.pas' {fSplashAdm},
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  Encrypt_decrypt in 'Encrypt_decrypt.pas',
  uFrConfigDbx in 'uFrConfigDbx.pas' {FrConfigDbx},
  uLogs in 'uLogs.pas' {fLogs},
  uperiodoSem in 'uperiodoSem.pas' {fPeriodoSem},
  md5 in '..\..\..\..\Arquivos de programas\Borland\Delphi7\componentes\UserControl2.30RC3\Source\md5.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS-Administrativo';
  Application.CreateForm(TDM, DM);
  //TFrConfigDbx.Abrir(DM.sqlsisAdimin);
  Application.CreateForm(TdmApp, dmApp);
  Application.CreateForm(TfAdm_Principal, fAdm_Principal);
  Application.Run;
end.
