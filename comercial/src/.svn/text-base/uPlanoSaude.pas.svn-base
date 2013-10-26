unit uPlanoSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxCore, dxButton, Buttons, ExtCtrls, MMJPanel, Menus,
  EOneInst, FMTBcd, SqlExpr, Provider, DB, DBClient, rpcompobase,
  rpvclreport, UCBase, ActnList, ComCtrls;

type
  TfPlanoSaude = class(TForm)
    MMJPanel2: TMMJPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    MMJPanel1: TMMJPanel;
    btColaboradores: TdxButton;
    btCadastroASH: TdxButton;
    btCadastroPCMSO: TdxButton;
    btBuscaGuia: TdxButton;
    btGeraGuia: TdxButton;
    btContratado: TdxButton;
    MMJPanel3: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Acessos1: TMenuItem;
    Backup1: TMenuItem;
    Parmetros1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    PopupMenu1: TPopupMenu;
    ContasPagar2: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    AssociadosCtrlU1: TMenuItem;
    ss1: TMenuItem;
    FAIXAASH1: TMenuItem;
    CadastroAssociadoASH1: TMenuItem;
    EvOneInstance1: TEvOneInstance;
    CadastrosPCMSO1: TMenuItem;
    FunesFuncionarios1: TMenuItem;
    FaixaPlanoPCMSO1: TMenuItem;
    CadastroAssociadoPCMSO2: TMenuItem;
    Cadstros1: TMenuItem;
    Diagnosticos2: TMenuItem;
    Hospitais2: TMenuItem;
    anestesias1: TMenuItem;
    ipoConsulta2: TMenuItem;
    ValorExame1: TMenuItem;
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
    Colaboradores1: TMenuItem;
    AssociadosASH1: TMenuItem;
    VCLReport1: TVCLReport;
    VCLReport2: TVCLReport;
    AsseDepASH1: TMenuItem;
    Sobre1: TMenuItem;
    VCLReport3: TVCLReport;
    EmpreFuncPCMSO1: TMenuItem;
    VCLReport4: TVCLReport;
    btEditarGuia: TdxButton;
    MudanadeFaixa1: TMenuItem;
    dxButton8: TdxButton;
    btCadastroParticular: TdxButton;
    dxButton10: TdxButton;
    dxButton11: TdxButton;
    GerarGuia1: TMenuItem;
    BuscarGuiaCtrlB1: TMenuItem;
    EditarGuiaCtrlE1: TMenuItem;
    RelatiosEmpresas1: TMenuItem;
    AsseDepOrdem1: TMenuItem;
    AssociadosporFaixa1: TMenuItem;
    AssociadosVotam1: TMenuItem;
    N2: TMenuItem;
    CadastrarUsuario1: TMenuItem;
    rocarSenha1: TMenuItem;
    rocarUsuario1: TMenuItem;
    UserControlSaude: TUserControl;
    Botoes: TActionList;
    aCadastro_ASH: TAction;
    bCadastroPcmso: TAction;
    Contratado1: TMenuItem;
    cColaboradores: TAction;
    dContratado: TAction;
    eGerarGuia: TAction;
    fBuscarGuia: TAction;
    gEditarGuia: TAction;
    hCadastroParticular: TAction;
    iCadastrarUsuario: TAction;
    jTrocarSenha: TAction;
    jTrocarUsuario: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    CadastrarUsuario2: TMenuItem;
    rocarSenha2: TMenuItem;
    trocarUsuarioLogOff1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    N5: TMenuItem;
    Historico1: TMenuItem;
    Nascidos1: TMenuItem;
    IncluidonoPeriodo1: TMenuItem;
    ExcluidosnoPeriodo1: TMenuItem;
    procedure SpeedButton3Click(Sender: TObject);
    procedure ss1Click(Sender: TObject);
    procedure FAIXAASH1Click(Sender: TObject);
    procedure CadastroAssociadoASH1Click(Sender: TObject);
    procedure FunesFuncionarios1Click(Sender: TObject);
    procedure FaixaPlanoPCMSO1Click(Sender: TObject);
    procedure CadastroAssociadoPCMSO2Click(Sender: TObject);
    procedure Diagnosticos2Click(Sender: TObject);
    procedure Hospitais2Click(Sender: TObject);
    procedure anestesias1Click(Sender: TObject);
    procedure ipoConsulta2Click(Sender: TObject);
    procedure ValorExame1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Colaboradores1Click(Sender: TObject);
    procedure AssociadosASH1Click(Sender: TObject);
    procedure AsseDepASH1Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure EmpreFuncPCMSO1Click(Sender: TObject);
    procedure btGeraGuiaClick(Sender: TObject);
    procedure btBuscaGuiaClick(Sender: TObject);
    procedure btEditarGuiaClick(Sender: TObject);
    procedure MudanadeFaixa1Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure btCadastroParticularClick(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure RelatiosEmpresas1Click(Sender: TObject);
    procedure AsseDepOrdem1Click(Sender: TObject);
    procedure AssociadosporFaixa1Click(Sender: TObject);
    procedure AssociadosVotam1Click(Sender: TObject);
    procedure Contratado1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Nascidos1Click(Sender: TObject);
    procedure IncluidonoPeriodo1Click(Sender: TObject);
    procedure ExcluidosnoPeriodo1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPlanoSaude: TfPlanoSaude;

implementation

uses uClientePlano, uPlanoFaixa, uCombo, UDmSaude, ufuncionario, uXmlAns,
     uFornecedorCadastroSaude, uFiltroGuia, uFaixaMudanca, uDM,
  uLancaProcSaude, uLancaProcSaudeProc, uListaClieDep,uRelPcmo,uVotam,
  ufaturamento, uresumointernacao, udemonstrativo;

{$R *.dfm}

procedure TfPlanoSaude.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfPlanoSaude.ss1Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'TIPO DEPENDENTE';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'TIPO DEPENDENTE';
  fCombo.Label1.Caption := 'TIPO DEPENDENTE';
  fCombo.Label2.Caption := 'TIPO DEPENDENTE';
  fCombo.Label8.Visible := false;
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.DBEdit5.Visible := false;
  FCombo.Label5.Caption := 'ANS';
  fCombo.DBGrid1.Columns[2].Title.Caption :='ANS';
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  fCombo.Color := clSkyBlue;
  fCombo.MMJPanel2.Background.StartColor := clSkyBlue;
  fCombo.MMJPanel1.Background.EndColor := clSkyBlue;

  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;

end;

procedure TfPlanoSaude.FAIXAASH1Click(Sender: TObject);
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

procedure TfPlanoSaude.CadastroAssociadoASH1Click(Sender: TObject);
begin
//  fCLientePlano:=TfCLientePlano.Create(Application);
  grupo := 'ASH';
  fClientePlano.MMJPanel2.Background.StartColor := clSkyBlue ;
  fClientePlano.MMJPanel1.Background.EndColor := clSkyBlue ;
  fClientePlano.Color := clSkyBlue ;
  fClientePlano.Label1.Caption := 'ASH';
  fClientePlano.Label2.Caption := 'ASH';
  fClientePlano.Label38.Visible := False;
  fClientePlano.Label39.Visible := false;
  fClientePlano.DBEdit33.Visible := False;
  fClientePlano.btnDependente.Caption := 'F5-DEPENDENTE';

  ///apos usercontrol
   fClientePlano.Label15.Visible := True;
   fClientePlano.DBEdit13.Visible := True;
   fClientePlano.Label16.Visible := True;
   fClientePlano.DBEdit14.Visible := True;
   fClientePlano.Label17.Visible := True;
   fClientePlano.DBEdit15.Visible := True;
   fClientePlano.Label8.Visible := True;
   fClientePlano.DBEdit6.Visible := True;
   fClientePlano.Label7.Visible := True;
   fClientePlano.DBEdit5.Visible := True;
   fClientePlano.Label5.Visible := True;
   fClientePlano.DBEdit3.Visible := True;
   fClientePlano.Label14.Caption := 'CPF';
   fClientePlano.Label13.Caption := 'RG';
   fClientePlano.DBEdit20.Visible := True;
   fClientePlano.GroupBox2.Visible := True;
   fClientePlano.Label32.Visible := True;
   fClientePlano.Label33.Visible := True;
   fClientePlano.Label34.Visible := True;
   fClientePlano.Label35.Visible := True;
   fClientePlano.Label36.Visible := True;
   fClientePlano.DBEdit31.Visible := True;
   fClientePlano.DBEdit32.Visible := True;
   fClientePlano.Label37.Visible := True;
   fClientePlano.GroupBox1.Visible := True;
   fClientePlano.btnDependente.Visible := True;
   fClientePlano.DBEdit17.Visible := True;
   fClientePlano.DBEdit18.Visible := True;
   fClientePlano.DBEdit19.Visible := True;

//  try
    fCLientePlano.ShowModal;
 // finally
//    fCLientePlano.Free;
//  end;
  Label3.Caption := UserControlSaude.CurrentUser.UserName;
  StatusBar1.Panels[1].Text := UserControlSaude.CurrentUser.UserName;
//  StatusBar1.Panels<0>.Text:=DateToStr(now);
//  StatusBar1.Panels<1>.Text:=TimeToStr(now);
end;

procedure TfPlanoSaude.FunesFuncionarios1Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'FUNCAO FUNCIONARIO';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'FUNCAO FUNCIONARIO';
  fCombo.Color := clMoneyGreen;
  fCombo.Label1.Caption := 'FUNÇÃO FUNCIONARIO';
  fCombo.Label2.Caption := 'FUNÇÃO FUNCIONARIO';
  fCombo.Label5.Visible := false;
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.DBEdit3.Visible := false;
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

procedure TfPlanoSaude.FaixaPlanoPCMSO1Click(Sender: TObject);
begin
if DMSaude.cdsFaixa.Active then
    DMSaude.cdsFaixa.Close;
     DMSaude.cdsFaixa.Params[0].AsString := 'PCMSO';
     DMSaude.cdsFaixa.Open;
  fPlanoFaixa:=TfPlanoFaixa.Create(Application);
  faixa := 'PCMSO';
  fPlanoFaixa.Label1.Caption := 'PLANO FAIXA PCMSO';
  fPlanoFaixa.Label2.Caption := 'PLANO FAIXA PCMSO';
  fPlanoFaixa.Color := clMoneyGreen;
  try
   fPlanoFaixa.ShowModal;
 finally
   fPlanoFaixa.Free;
  end;
end;

procedure TfPlanoSaude.CadastroAssociadoPCMSO2Click(Sender: TObject);
begin
//  fCLientePlano:=TfCLientePlano.Create(Application);
   grupo := 'PCMSO';
   fClientePlano.Label1.Caption := 'PCMSO';
   fClientePlano.Label2.Caption := 'PCMSO';
   fClientePlano.MMJPanel2.Background.StartColor := clTeal ;
   fClientePlano.MMJPanel1.Background.EndColor := clTeal ;
   fClientePlano.Color := clMoneyGreen;
//  try
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
   fClientePlano.Label14.Caption := 'CNPJ';
   fClientePlano.Label13.Caption := 'INS.EST';
   fClientePlano.DBEdit20.Visible := false;
   fClientePlano.GroupBox2.Visible := false;
   fClientePlano.Label32.Visible := false;

   fClientePlano.Label33.Visible := false;
   fClientePlano.Label34.Visible := false;
   fClientePlano.Label35.Visible := false;
   fClientePlano.Label36.Visible := false;
   fClientePlano.DBEdit31.Visible := false;
   fClientePlano.DBEdit32.Visible := false;
   fClientePlano.Label37.Visible := False;
   fClientePlano.Label38.Visible := False;
   fClientePlano.DBEdit33.Visible := False;
   fClientePlano.Label39.Visible := True;
   fCLientePlano.ShowModal;

// finally
//   fCLientePlano.Free;
//  end;
end;

procedure TfPlanoSaude.Diagnosticos2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'DIAGNOSTICOS';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  fCombo.Label1.Caption := 'DIAGNÓSTICOS';
  fCombo.Label2.Caption := 'DIAGNÓSTICOS';
  uso := 'DIAGNOSTICOS';
  fCombo.DBRadioGroup1.Visible := false;
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

procedure TfPlanoSaude.Hospitais2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'HOSPITAIS';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'HOSPITAIS';
  fCombo.Label1.Caption := 'HOSPITAIS E CLÍNICAS';
  fCombo.Label2.Caption := 'HOSPITAIS E CLÍNICAS';
  fCombo.DBRadioGroup1.Visible := false;
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

procedure TfPlanoSaude.anestesias1Click(Sender: TObject);
begin

if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'VENCIMENTO';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'VENCIMENTO';
  fCombo.Label1.Caption := 'VENCIMENTO';
  fCombo.Label2.Caption := 'VENCIMENTO';
  fCombo.Label4.Caption := 'DATA VENCIMENTO : 00/00/0000';
  fCombo.Label5.Caption := 'USO';
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.Label8.Visible := false;
//  fCombo.DBEdit5.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.ipoConsulta2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'TIPO CONSULTA';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'TIPO CONSULTA';
  fCombo.Label1.Caption := 'CONSULTAS';
  fCombo.Label2.Caption := 'CONSULTAS';
  fCombo.DBRadioGroup1.Visible := false;
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

procedure TfPlanoSaude.ValorExame1Click(Sender: TObject);
begin
  if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'EXAMES';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'EXAMES';
  fCombo.Label1.Caption := 'EXAMES';
  fCombo.Label2.Caption := 'EXAMES';
  FCombo.Label5.Caption := 'PCMSO';
  fCombo.DBGrid1.Columns[2].Title.Caption :='PCMSO';
  FCombo.Label8.Caption := 'PARTICULAR';
  fCombo.DBGrid1.Columns[3].Title.Caption :='PARTICULAR';
  fCombo.DBGrid1.Columns[4].Title.Caption :='1-Sim 2-não';
  //fCombo.DBGrid1.Columns[3].Visible := false;
//  fCombo.Label6.Visible := false;
 // fCombo.DBEdit4.Visible := false;

   try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.FormCreate(Sender: TObject);
begin
  if not cds_parametro.Active then
     cds_parametro.Open;
  cds_parametro.Locate('PARAMETRO', 'VIDEO',[loPartialKey]);
  DM.videoW := cds_parametroD1.AsString;
  DM.videoH := cds_parametroD2.AsString;

  if DM.videoW <> '' then
  begin
   ScreenWidth := StrToInt(DM.videoW);
   ScreenHeight := StrToInt(DM.videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
end;

procedure TfPlanoSaude.Colaboradores1Click(Sender: TObject);
begin
  fFuncionario:=TfFuncionario.Create(Application);
   try
   fFuncionario.ShowModal;
 finally
   fFuncionario.Free;
  end;
end;

procedure TfPlanoSaude.AssociadosASH1Click(Sender: TObject);
begin
//VCLReport1.Execute;
  VCLReport1.Filename := str_relatorio + 'rel_cliente_ash.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;

end;

procedure TfPlanoSaude.AsseDepASH1Click(Sender: TObject);
begin
 //VCLReport2.Execute;
  VCLReport1.Filename := str_relatorio + 'rel_cli_dep_ash.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.SobreoSistema1Click(Sender: TObject);
begin
 //VCLReport3.Execute;
  VCLReport1.Filename := str_relatorio + 'rel_cliente_pcmso.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.EmpreFuncPCMSO1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ';
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.btGeraGuiaClick(Sender: TObject);
begin
  fXmlAns:=TfXmlAns.Create(Application);
   try
   fXmlAns.ShowModal;
 finally
   fXmlAns.Free;
  end;
end;

procedure TfPlanoSaude.btBuscaGuiaClick(Sender: TObject);
begin
  filtroGuia:=TfiltroGuia.Create(Application);
  try
  filtroGuia.Color := clskyblue ;
  filtroGuia.BitBtn3.Visible := False;
  filtroGuia.BitBtn2.Enabled := False;
  filtroGuia.Label4.Caption := 'Busca' ;
  filtroGuia.ShowModal;
  finally
  filtroGuia.Free;
  end;
end;

procedure TfPlanoSaude.btEditarGuiaClick(Sender: TObject);
begin
  filtroGuia:=TfiltroGuia.Create(Application);
  try
  filtroGuia.Color := clskyblue ;
  filtroGuia.BitBtn2.Visible := False;
  filtroGuia.BitBtn3.Enabled := False;
  filtroGuia.Label4.Caption := 'Editar' ;
  filtroGuia.ShowModal;
  finally
  filtroGuia.Free;
  end;
end;

procedure TfPlanoSaude.MudanadeFaixa1Click(Sender: TObject);
begin
  fFaixaMudanca := TfFaixaMudanca.Create(Application);
  try
    fFaixaMudanca.ShowModal;
  finally
    fFaixaMudanca.Free;
  end;

end;

procedure TfPlanoSaude.dxButton8Click(Sender: TObject);
begin
  fresumointernacao := Tfresumointernacao.Create(Application);
  try
    fresumointernacao.ShowModal;
  finally
    fresumointernacao.Free;
  end;

end;

procedure TfPlanoSaude.btCadastroParticularClick(Sender: TObject);
begin
// fCLientePlano:=TfCLientePlano.Create(Application);
  grupo := 'PARTICULAR';
//  try
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
   fClientePlano.Label14.Caption := 'CPF';
   fClientePlano.Label13.Caption := 'RG';
   fClientePlano.DBEdit20.Visible := false;
   fClientePlano.GroupBox2.Visible := false;
   fClientePlano.btnDependente.Visible := false;
   fClientePlano.Label32.Visible := false;
   // Plano Faixa
   fClientePlano.Label19.Visible := true;
   fClientePlano.DBEdit2.Visible := true;
   fClientePlano.Label37.Visible := False;
   fClientePlano.Label33.Visible := False;
   fClientePlano.Label35.Visible := False;
   fClientePlano.Label36.Visible := False;
   fClientePlano.DBEdit32.Visible := false;
   fClientePlano.DBEdit31.Visible := false;
   fClientePlano.Label39.Visible := false;
   fClientePlano.MMJPanel2.Background.StartColor := clMaroon ;
   fClientePlano.MMJPanel1.Background.EndColor := clMaroon ;
   fClientePlano.Color := clBtnface;
   fCLientePlano.ShowModal;
//  finally
//  fCLientePlano.Free;
//  end;
end;

procedure TfPlanoSaude.dxButton10Click(Sender: TObject);
begin
  ffaturamento := Tffaturamento.Create(Application);
  try
    ffaturamento.ShowModal;
  finally
    ffaturamento.Free;
  end;

end;

procedure TfPlanoSaude.dxButton11Click(Sender: TObject);
begin
  fdemonstrativo := Tfdemonstrativo.Create(Application);
  try
    fdemonstrativo.ShowModal;
  finally
    fdemonstrativo.Free;
  end;
end;

procedure TfPlanoSaude.RelatiosEmpresas1Click(Sender: TObject);
begin
   fRelPcmo:=TfRelPcmo.Create(Application);
   try
   fRelPcmo.ShowModal;
   finally
   fRelPcmo.Free;
   end;
end;

procedure TfPlanoSaude.AsseDepOrdem1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_cli_dep_ash_ORDEM.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.AssociadosporFaixa1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'associados_faixa.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.AssociadosVotam1Click(Sender: TObject);
begin
   fVotam:=TfVotam.Create(Application);
   fVotam.BitBtn3.Visible := False;
   fVotam.BitBtn4.Visible := False;
   fVotam.BitBtn5.Visible := False;
   try
   fVotam.ShowModal;
   finally
   fVotam.Free;
   end;

end;

procedure TfPlanoSaude.Contratado1Click(Sender: TObject);
begin
   fFornecedorCadastroSaude:=TfFornecedorCadastroSaude.Create(Application);
   try
   fFornecedorCadastroSaude.ShowModal;
 finally
   fFornecedorCadastroSaude.Free;
   end;
end;

procedure TfPlanoSaude.SpeedButton1Click(Sender: TObject);
begin
 UserControlSaude.Logoff;
end;

procedure TfPlanoSaude.Nascidos1Click(Sender: TObject);
begin
   fVotam:=TfVotam.Create(Application);
   fVotam.JvDateEdit3.Visible := False;
   fVotam.Label4.Visible := False;
   fVotam.Label5.Visible := False;
   fVotam.Label6.Visible := False;
   fVotam.BitBtn1.Visible := False;
   fVotam.BitBtn2.Visible := False;
   fVotam.BitBtn4.Visible := False;
   fVotam.BitBtn5.Visible := False;
   try
   fVotam.ShowModal;
   finally
   fVotam.Free;
   end;
end;

procedure TfPlanoSaude.IncluidonoPeriodo1Click(Sender: TObject);
begin
   fVotam:=TfVotam.Create(Application);
   fVotam.JvDateEdit3.Visible := False;
   fVotam.Label1.Caption := ' Incluidos' ;
   fVotam.Label4.Visible := False;
   fVotam.Label5.Visible := False;
   fVotam.Label6.Visible := False;
   fVotam.BitBtn1.Visible := False;
   fVotam.BitBtn2.Visible := False;
   fVotam.BitBtn3.Visible := False;
   fVotam.BitBtn5.Visible := False;
   try
   fVotam.ShowModal;
   finally
   fVotam.Free;
   end;
end;

procedure TfPlanoSaude.ExcluidosnoPeriodo1Click(Sender: TObject);
begin
   fVotam:=TfVotam.Create(Application);
   fVotam.JvDateEdit3.Visible := False;
   fVotam.Label1.Caption := ' Excluidos' ;
   fVotam.Label4.Visible := False;
   fVotam.Label5.Visible := False;
   fVotam.Label6.Visible := False;
   fVotam.BitBtn1.Visible := False;
   fVotam.BitBtn2.Visible := False;
   fVotam.BitBtn3.Visible := False;
   fVotam.BitBtn4.Visible := False;
   try
   fVotam.ShowModal;
   finally
   fVotam.Free;
   end;
end;

end.
