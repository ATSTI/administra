program ats_CTe;

uses
  Forms,
  Frm_Demo_ACBrCTe in 'Frm_Demo_ACBrCTe.pas' {frmDemo_ACBrCTe},
  uDMCTe in 'uDMCTe.pas' {dm: TDataModule},
  uQuantCarga in 'uQuantCarga.pas' {fQuantCarga},
  ufCompValor in 'ufCompValor.pas' {fCompValor},
  uNFe in 'uNFe.pas' {fNFe},
  uSeguro in 'uSeguro.pas' {fSeguro},
  uMotorista in 'uMotorista.pas' {fMotorista},
  uVeiculo in 'uVeiculo.pas' {fVeiculo},
  uNF in 'uNF.pas' {fNF},
  uDocOutros in 'uDocOutros.pas' {fDocOutros};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmDemo_ACBrCTe, frmDemo_ACBrCTe);
  Application.CreateForm(TfQuantCarga, fQuantCarga);
  Application.CreateForm(TfCompValor, fCompValor);
  Application.CreateForm(TfCompValor, fCompValor);
  Application.CreateForm(TfNFe, fNFe);
  Application.CreateForm(TfSeguro, fSeguro);
  Application.CreateForm(TfMotorista, fMotorista);
  Application.CreateForm(TfVeiculo, fVeiculo);
  Application.CreateForm(TfNF, fNF);
  Application.CreateForm(TfDocOutros, fDocOutros);
  Application.Run;
end.
