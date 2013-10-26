unit uLaboratorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxCore, dxButton, Buttons, ExtCtrls, MMJPanel, Menus,
  EOneInst, FMTBcd, SqlExpr, Provider, DB, DBClient, rpcompobase,
  rpvclreport, jpeg, UCBase;

type
  TfLaboratorio = class(TForm)
    MMJPanel2: TMMJPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    MMJPanel1: TMMJPanel;
    btCliente: TdxButton;
    dxButton6: TdxButton;
    MMJPanel3: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Acessos1: TMenuItem;
    Backup1: TMenuItem;
    Parmetros1: TMenuItem;
    Senhas1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    PopupMenu1: TPopupMenu;
    ContasPagar2: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    EvOneInstance1: TEvOneInstance;
    CadastrosPCMSO1: TMenuItem;
    CadastroAssociadoPCMSO2: TMenuItem;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    VCLReport1: TVCLReport;
    VCLReport2: TVCLReport;
    Sobre1: TMenuItem;
    VCLReport3: TVCLReport;
    VCLReport4: TVCLReport;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    BuscarGuiaCtrlB1: TMenuItem;
    EditarGuiaCtrlE1: TMenuItem;
    Exame1: TMenuItem;
    SolicitaoExame1: TMenuItem;
    ResultadoExames1: TMenuItem;
    EntregaExame1: TMenuItem;
    dxButton1: TdxButton;
    ConsultarExame1: TMenuItem;
    Usuarios1: TMenuItem;
    CadastrarUsuario1: TMenuItem;
    rocarSenha1: TMenuItem;
    rocarUsuario1: TMenuItem;
    procedure SpeedButton3Click(Sender: TObject);
    procedure ss1Click(Sender: TObject);
    procedure FAIXAASH1Click(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure FunesFuncionarios1Click(Sender: TObject);
    procedure FaixaPlanoPCMSO1Click(Sender: TObject);
    procedure Diagnosticos2Click(Sender: TObject);
    procedure Hospitais2Click(Sender: TObject);
    procedure anestesias1Click(Sender: TObject);
    procedure ipoConsulta2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Colaboradores1Click(Sender: TObject);
    procedure AssociadosASH1Click(Sender: TObject);
    procedure AsseDepASH1Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure EmpreFuncPCMSO1Click(Sender: TObject);
    procedure MudanadeFaixa1Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure Exame1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLaboratorio: TfLaboratorio;

implementation

uses uClientePlano, uPlanoFaixa, uCombo, UDmSaude, ufuncionario,
     uFornecedorCadastroSaude, uFiltroGuia, uFaixaMudanca, uDM,
  uLancaProcSaude, uLancaProcSaudeProc, uLabSolicitaExame, uLabLaudo,
  uLabEntregaResultado, uLabColetaMateriais, uLabExameLocaliza, ucadastro;

{$R *.dfm}

procedure TfLaboratorio.SpeedButton3Click(Sender: TObject);
begin
close;
end;

procedure TfLaboratorio.ss1Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'TIPO DEPENDENTE';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'TIPO DEPENDENTE';
//  fCombo.Label6.Visible := false;
//  fCombo.DBEdit4.Visible := false;
  FCombo.Label5.Caption := 'ANS';
  fCombo.DBGrid1.Columns[2].Title.Caption :='ANS';
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.Color := clSkyBlue;
  fCombo.MMJPanel2.Background.StartColor := clSkyBlue;
  fCombo.MMJPanel1.Background.EndColor := clSkyBlue;

  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;

end;

procedure TfLaboratorio.FAIXAASH1Click(Sender: TObject);
begin
  fPlanoFaixa:=TfPlanoFaixa.Create(Application);
  if DMSaude.cdsFaixa.Active then
    DMSaude.cdsFaixa.Close;
  DMSaude.cdsFaixa.Params[0].AsString := 'ASH';
  DMSaude.cdsFaixa.Open;
  faixa := 'ASH';
  fPlanoFaixa.Label1.Caption := 'PLANO FAIXA ASH';
  fPlanoFaixa.Label2.Caption := 'PLANO FAIXA ASH';
  fPlanoFaixa.Label4.Caption := 'IDADE MIN';
  fPlanoFaixa.Label5.Caption := 'IDADE MAX';
  fPlanoFaixa.DBGrid1.Columns[2].Title.Caption :='IDADE MIN';
  fPlanoFaixa.DBGrid1.Columns[3].Title.Caption :='IDADE MAX';
  fPlanoFaixa.Color := clSkyBlue;
  fPlanoFaixa.MMJPanel2.Background.StartColor := clSkyBlue;
  fPlanoFaixa.MMJPanel1.Background.EndColor := clSkyBlue;
  try
    fPlanoFaixa.ShowModal;
  finally
    fPlanoFaixa.Free;
  end;
end;

procedure TfLaboratorio.btClienteClick(Sender: TObject);
begin
  fcadastro:=Tfcadastro.Create(Application);
  grupo := 'PARTICULAR';
  try
   fcadastro.Label15.Visible := false;
   fcadastro.DBEdit13.Visible := false;
   fcadastro.Label16.Visible := false;
   fcadastro.DBEdit14.Visible := false;
   fcadastro.Label17.Visible := false;
   fcadastro.DBEdit15.Visible := false;
   fcadastro.Label8.Visible := false;
   fcadastro.DBEdit6.Visible := false;
   fcadastro.Label7.Visible := false;
   fcadastro.DBEdit5.Visible := false;
   fcadastro.Label5.Visible := false;
   fcadastro.DBEdit3.Visible := false;
   fcadastro.Label13.Caption := 'CPF';
   fcadastro.Label14.Caption := 'RG';
   fcadastro.DBEdit20.Visible := false;
   fcadastro.GroupBox2.Visible := false;
   fcadastro.btnDependente.Visible := false;

   fcadastro.Label18.Visible := false;
   fcadastro.Label32.Visible := false;
 //  fcadastro.Label33.Visible := false;
 //  fcadastro.Label35.Visible := false;
   fcadastro.Label36.Visible := false;
 //  fcadastro.Label37.Visible := false;
   fcadastro.DBEdit31.Visible := false;
//   fcadastro.DBEdit32.Visible := false;
   fcadastro.DBEdit16.Visible := false;
   fcadastro.Label1.Caption := 'Particular';
   fcadastro.Label2.Caption := 'Particular';

   fcadastro.MMJPanel2.Background.StartColor := clMaroon ;
   fcadastro.MMJPanel1.Background.EndColor := clMaroon ;
   fcadastro.Color := clBtnface;
   fcadastro.ShowModal;
  finally
   fcadastro.Free;
  end;
  {

  fCLientePlano:=TfCLientePlano.Create(Application);
  fClientePlano.HistoricoTitular.Active := False;


  grupo := 'PARTICULAR';
  try
   fClientePlano.Label15.Visible := false;
   fClientePlano.DBEdit13.Visible := false;
   fClientePlano.Label16.Visible := false;
   fClientePlano.DBEdit14.Visible := false;
   fClientePlano.Label17.Visible := false;
   fClientePlano.DBEdit15.Visible := false;
   fClientePlano.Label8.Visible := false;
   fClientePlano.DBEdit6.Visible := false;
   fClientePlano.Label7.Visible := false;
   fClientePlano.DBEdit5.Visible := false;
   fClientePlano.Label5.Visible := false;
   fClientePlano.DBEdit3.Visible := false;
   fClientePlano.Label13.Caption := 'CPF';
   fClientePlano.Label14.Caption := 'RG';
   fClientePlano.DBEdit20.Visible := false;
   fClientePlano.GroupBox2.Visible := false;
   fClientePlano.btnDependente.Visible := false;

   fClientePlano.Label18.Visible := false;
   fClientePlano.Label32.Visible := false;
   fClientePlano.Label33.Visible := false;
   fClientePlano.Label35.Visible := false;
   fClientePlano.Label36.Visible := false;
   fClientePlano.Label37.Visible := false;
   fClientePlano.DBEdit31.Visible := false;
   fClientePlano.DBEdit32.Visible := false;
   fClientePlano.DBEdit16.Visible := false;

   fClientePlano.MMJPanel2.Background.StartColor := clMaroon ;
   fClientePlano.MMJPanel1.Background.EndColor := clMaroon ;
   fClientePlano.Color := clBtnface;
   fCLientePlano.ShowModal;
  finally
   fCLientePlano.Free;
  end;
  }
end;

procedure TfLaboratorio.FunesFuncionarios1Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'FUNCAO FUNCIONARIO';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'FUNCAO FUNCIONARIO';
  fCombo.Color := clMoneyGreen;

  fCombo.Label5.Visible := false;
//  fCombo.DBEdit4.Visible := false;
  fCombo.DBEdit3.Visible := false;
//  fCombo.Label6.Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;

  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;


  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfLaboratorio.FaixaPlanoPCMSO1Click(Sender: TObject);
begin
if DMSaude.cdsFaixa.Active then
    DMSaude.cdsFaixa.Close;
     DMSaude.cdsFaixa.Params[0].AsString := 'PCMSO';
     DMSaude.cdsFaixa.Open;
  fPlanoFaixa:=TfPlanoFaixa.Create(Application);
  faixa := 'PCMSO';
  fPlanoFaixa.Color := clMoneyGreen;
  try
   fPlanoFaixa.ShowModal;
 finally
   fPlanoFaixa.Free;
  end;
end;

procedure TfLaboratorio.Diagnosticos2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'DIAGNOSTICOS';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  fCombo.Label1.Caption := 'DIAGNÓSTICOS';
  fCombo.Label2.Caption := 'DIAGNÓSTICOS';
  uso := 'DIAGNOSTICOS';
//  fCombo.Label6.Visible := false;
//  fCombo.DBEdit4.Visible := false;
  fCombo.Label5.Visible := false;
  fCombo.DBEdit5.Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;

  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfLaboratorio.Hospitais2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'HOSPITAIS';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'HOSPITAIS';
  fCombo.Label1.Caption := 'HOSPITAIS E CLÍNICAS';
  fCombo.Label2.Caption := 'HOSPITAIS E CLÍNICAS';
//  fCombo.Label6.Visible := false;
//  fCombo.DBEdit4.Visible := false;
  fCombo.Label5.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;

  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;

  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfLaboratorio.anestesias1Click(Sender: TObject);
begin

if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'ANESTESIA';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'ANESTESIA';
  fCombo.Label1.Caption := 'ANESTESIAS';
  fCombo.Label2.Caption := 'ANESTESIAS';
//  fCombo.Label6.Visible := false;
//  fCombo.DBEdit4.Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfLaboratorio.ipoConsulta2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'TIPO CONSULTA';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'TIPO CONSULTA';
  fCombo.Label1.Caption := 'CONSULTAS';
  fCombo.Label2.Caption := 'CONSULTAS';
//  fCombo.Label6.Visible := false;
//  fCombo.DBEdit4.Visible := false;
  fCombo.Label5.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfLaboratorio.FormCreate(Sender: TObject);
begin
  if not cds_parametro.Active then
     cds_parametro.Open;
  cds_parametro.Locate('PARAMETRO', 'VIDEO',[loPartialKey]);
  videoW := cds_parametroD1.AsString;
  videoH := cds_parametroD2.AsString;

  if videoW <> '' then
  begin
   ScreenWidth := StrToInt(videoW);
   ScreenHeight := StrToInt(videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
end;

procedure TfLaboratorio.Colaboradores1Click(Sender: TObject);
begin
  fFuncionario:=TfFuncionario.Create(Application);
   try
   fFuncionario.ShowModal;
 finally
   fFuncionario.Free;
  end;
end;

procedure TfLaboratorio.AssociadosASH1Click(Sender: TObject);
begin
VCLReport1.Execute;
end;

procedure TfLaboratorio.AsseDepASH1Click(Sender: TObject);
begin
 VCLReport2.Execute;
end;

procedure TfLaboratorio.SobreoSistema1Click(Sender: TObject);
begin
VCLReport3.Execute;
end;

procedure TfLaboratorio.EmpreFuncPCMSO1Click(Sender: TObject);
begin
VCLReport4.Execute;
end;

procedure TfLaboratorio.MudanadeFaixa1Click(Sender: TObject);
begin
  fFaixaMudanca := TfFaixaMudanca.Create(Application);
  try
    fFaixaMudanca.ShowModal;
  finally
    fFaixaMudanca.Free;
  end;

end;

procedure TfLaboratorio.dxButton6Click(Sender: TObject);
begin
  fLabSolicitaExame := TfLabSolicitaExame.Create(Application);
  try
    fLabSolicitaExame.ShowModal;
  finally
    fLabSolicitaExame.Free;
  end;
end;

procedure TfLaboratorio.dxButton7Click(Sender: TObject);
begin
  fLabColetaMateriais.ShowModal;
end;

procedure TfLaboratorio.dxButton9Click(Sender: TObject);
begin
  fLabLaudo := TfLabLaudo.Create(Application);
  try
    fLabLaudo.ShowModal;
  finally
    fLabLaudo.Free;
  end;
end;

procedure TfLaboratorio.dxButton8Click(Sender: TObject);
begin
  fLabEntregaResultado.ShowModal;
end;

procedure TfLaboratorio.Exame1Click(Sender: TObject);
begin
 if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'EXAMES';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'EXAMES';
  fCombo.Label1.Caption := 'EXAMES';
  fCombo.Label2.Caption := 'EXAMES';
  FCombo.Label5.Caption := 'R$ : PCMSO';
  fCombo.DBGrid1.Columns[2].Title.Caption :='PCMSO';
  FCombo.Label8.Caption := 'R$ : PARTICULAR';
  fCombo.DBGrid1.Columns[3].Title.Caption :='PARTICULAR';
  fCombo.DBGrid1.Columns[4].Title.Caption :='1-Sim 2-não';
  fCombo.MMJPanel2.Background.StartColor := clMaroon ;
  fCombo.MMJPanel1.Background.EndColor := clMaroon ;
  //fCombo.DBGrid1.Columns[3].Visible := false;
//  fCombo.Label6.Visible := false;
 // fCombo.DBEdit4.Visible := false;

   try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
END;
procedure TfLaboratorio.BitBtn1Click(Sender: TObject);
begin
  fLabExameLocaliza := TfLabExameLocaliza.Create(Application);
  try
    fLabExameLocaliza.ShowModal;
    if (dmSaude.cdsExame.Active) then
      dmSaude.cdsExame.Close;
    dmSaude.cdsExame.Params[0].AsInteger := fLabExameLocaliza.codExame;
    dmSaude.cdsExame.open;
  finally
    fLabExameLocaliza.Free;
  end;
end;

procedure TfLaboratorio.dxButton1Click(Sender: TObject);
begin
  fLabExameLocaliza := TfLabExameLocaliza.Create(Application);
  try
    fLabExameLocaliza.btnSair.Caption := ' F9 Sair';
    fLabExameLocaliza.ShowModal;
  finally
    fLabExameLocaliza.Free;
  end;
end;

end.
