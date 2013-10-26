unit uFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, XPMenu, FMTBcd, ExtCtrls, StdCtrls, DBClient,
  Provider, DB, SqlExpr, Buttons, dxCore, dxButton, MMJPanel, EAppProt,
  EOneInst, ImgList, XPMan, rpcompobase, rpvclreport, DBxpress, RXCtrls,
  UCBase,
  ActnList,
  JvExControls, JvLabel,
  RxGIF;

type
  TfFinanceiro = class(TForm)
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Cadastros1: TMenuItem;
    Bancos1: TMenuItem;
    PlanodeContas1: TMenuItem;
    ransportadoras1: TMenuItem;
    Lanamentos1: TMenuItem;
    Restries1: TMenuItem;
    AssociaoComercial1: TMenuItem;
    SPC1: TMenuItem;
    ContasPagar1: TMenuItem;
    ContasReceber1: TMenuItem;
    Receitas1: TMenuItem;
    Despesas1: TMenuItem;
    MovimentaoFinanceira1: TMenuItem;
    EmissodeNotasFiscais1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Agenda1: TMenuItem;
    MMJPanel1: TMMJPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    MMJPanel2: TMMJPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
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
    dsp: TDataSetProvider;
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
    statusBar1: TStatusBar;
    ContasPagar2: TMenuItem;
    ContasReceber2: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    LanarDespesas1: TMenuItem;
    LanarReceitas1: TMenuItem;
    EvOneInstance1: TEvOneInstance;
    EvAppProtect1: TEvAppProtect;
    Timer1: TTimer;
    dxButton5: TdxButton;
    NotasFiscais1: TMenuItem;
    ImageList1: TImageList;
    RelContasPagas1: TMenuItem;
    RelContasaReceber1: TMenuItem;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Empresas1: TMenuItem;
    SpeedButton6: TSpeedButton;
    PlanosdeCobranas1: TMenuItem;
    sds_video: TSQLDataSet;
    sds_parametroLOGIN: TStringField;
    sds_parametroSENHA: TStringField;
    sds_parametroPERFIL: TStringField;
    sds_parametroCODUSUARIO: TIntegerField;
    dsp_video: TDataSetProvider;
    cds_video: TClientDataSet;
    cds_parametroLOGIN: TStringField;
    cds_parametroSENHA: TStringField;
    cds_parametroPERFIL: TStringField;
    cds_parametroCODUSUARIO: TIntegerField;
    sds_videoMICRO: TStringField;
    sds_videoP1: TStringField;
    sds_videoP2: TStringField;
    cds_videoMICRO: TStringField;
    cds_videoP1: TStringField;
    cds_videoP2: TStringField;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Funcionrios1: TMenuItem;
    RelDRE1: TMenuItem;
    LancarCobranca1: TMenuItem;
    Procedimentos1: TMenuItem;
    VerLanamentos1: TMenuItem;
    VerLanamentosPCMSO1: TMenuItem;
    dxButton6: TdxButton;
    CorrigirDescontoBolsa1: TMenuItem;
    relBalancete: TMenuItem;
    LanarOutrasReceitas1: TMenuItem;
    RelResumo1: TMenuItem;
    RelCaixa1: TMenuItem;
    RelASHPCMSO1: TMenuItem;
    dxButton7: TdxButton;
    LanarOutrasReceitas2: TMenuItem;
    ReceitasPCMSO1: TMenuItem;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    LanarParticular1: TMenuItem;
    VerLanamentoParticular1: TMenuItem;
    ImprimirEnvelope1: TMenuItem;
    SpeedButton11: TSpeedButton;
    dxButton8: TdxButton;
    ReceitasPart1: TMenuItem;
    Clientes2: TMenuItem;
    FluxoCaixa1: TMenuItem;
    UserControlFinanceiro: TUserControl;
    XPMenu1: TXPMenu;
    Usuarios1: TMenuItem;
    CadastrarUsuario2: TMenuItem;
    rocarUsuario2: TMenuItem;
    rocarSenha1: TMenuItem;
    historico1: TMenuItem;
    VerMovimentaodeCheques1: TMenuItem;
    Botoes: TActionList;
    aContaPagar: TAction;
    bReceber: TAction;
    cDespesas: TAction;
    dReceitas: TAction;
    eNFisacais: TAction;
    gOutraReceitas: TAction;
    hReceitasParticular: TAction;
    fReceitasPCMSO: TAction;
    i: TAction;
    jF8Clientes: TAction;
    kAgenda: TAction;
    lTela: TAction;
    mCBR643: TAction;
    nCBR643: TAction;
    oVerASH: TAction;
    pVerPCMSO: TAction;
    qVerPArticular: TAction;
    Image1: TImage;
    FamiliaProdutos1: TMenuItem;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure ransportadoras1Click(Sender: TObject);
    procedure MovimentaoFinanceira1Click(Sender: TObject);
    procedure AssociaoComercial1Click(Sender: TObject);
    procedure statusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure RelContasPagas1Click(Sender: TObject);
    procedure RelContasaReceber1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure PlanosdeCobranas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure RelDRE1Click(Sender: TObject);
    procedure LancarCobranca1Click(Sender: TObject);
    procedure Procedimentos1Click(Sender: TObject);
    procedure CorrigirDescontoBolsa1Click(Sender: TObject);
    procedure LanarOutrasReceitas1Click(Sender: TObject);
    procedure RelResumo1Click(Sender: TObject);
    procedure RelCaixa1Click(Sender: TObject);
    procedure RelASHPCMSO1Click(Sender: TObject);
    procedure LanarParticular1Click(Sender: TObject);
    procedure ImprimirEnvelope1Click(Sender: TObject);
    procedure FluxoCaixa1Click(Sender: TObject);
    procedure rocarSenha1Click(Sender: TObject);
    procedure VerMovimentaodeCheques1Click(Sender: TObject);
    procedure aContaPagarExecute(Sender: TObject);
    procedure fReceitasPCMSOExecute(Sender: TObject);
    procedure bReceberExecute(Sender: TObject);
    procedure cDespesasExecute(Sender: TObject);
    procedure dReceitasExecute(Sender: TObject);
    procedure eNFisacaisExecute(Sender: TObject);
    procedure jF8ClientesExecute(Sender: TObject);
    procedure kAgendaExecute(Sender: TObject);
    procedure lTelaExecute(Sender: TObject);
    procedure mCBR643Execute(Sender: TObject);
    procedure nCBR643Execute(Sender: TObject);
    procedure oVerASHExecute(Sender: TObject);
    procedure pVerPCMSOExecute(Sender: TObject);
    procedure qVerPArticularExecute(Sender: TObject);
    procedure hReceitasParticularExecute(Sender: TObject);
    procedure gOutraReceitasExecute(Sender: TObject);
    procedure FamiliaProdutos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetVersion: string;
    Function NomeComputador: string;
  end;

var
  fFinanceiro: TfFinanceiro;


implementation

uses UDm, ufcr, uClienteCadastro, uFornecedorCadastro, ucrTitulo, ubanco,
  ufcpproc, uCheques_bol, ufcrtitulo, uCrTituloPagto, uFiltro_forn_plano,
  ufContasAssistente, uCrTituloInclui, uftransp, ufContabilLanc,
  uRateioPag, ufNotafiscalProc, uAssociacao, uSobre, uRelatorio,
  uRelatorioReceber, uAgendamento, ucrEscolas, uListaClientes,
  uListaCliEscola, uEmpresa, uResolucaoTela, uPlanos, ufDlgLogin,
  uArquivoRetorno, uProcuraCBR, ufuncionario, uRelatorioFin,
  uGeraCobCliente, ufcrSaude, uListaClientesSaude, uProcedimentos,
  uEntrada, uGeraCob, uLancaProcSaude, uLancaProcSaudeProc,
  uCorrigirDesconto, uRelatorioCaixa, uRelatorioAsh, uLancaProcPcmso,
  uFornecedorCadastroSaude, uLancaProcPart, uEnvelope, uFluxoCaixa,
  UDmSaude,
  uProcuraCheque,
  sCtrlResize,
  uFamilia,
  uNotaf;

{$R *.dfm}


(**********************************************************************)
Function Saudacao : string;
begin
 result:='Boa-noite!';
 if (time>=0.25) and (time<0.5) then result:='Bom-dia!';
 if (time>=0.5) and (time<0.80) then result:='Boa-tarde!';
end;
(**********************************************************************)

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfFinanceiro.SpeedButton3Click(Sender: TObject);
var
 deleta : String;
 TD: TTransactionDesc;
begin

  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    MICRO := NomeComputador;
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[1].AsString := 'Financeiro';
    cds_Login.Open;
    if not cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Financeiro');
        try
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(deleta);
          dm.sqlsisAdimin.Commit(TD);
         except
           dm.sqlsisAdimin.Rollback(TD);
           MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
         end;
    end;
    Application.Terminate;
  end
  else
   abort;

end;

procedure TfFinanceiro.FormCreate(Sender: TObject);
begin
  DM.MODULOUSERCONTROL := 'financeiro';
  sCtrlResize.CtrlResize(TForm(fFinanceiro));

  //Label3.Caption := ' ATS - Admin versão: ' + GetVersion;
  StatusBar1.Panels[2].Text:=Saudacao+' Hoje é '+formatdatetime('dddddd',date);
  if (dm.moduloUsado = 'SAUDE') then
  begin
    SpeedButton7.Enabled := False;
    SpeedButton8.Enabled := False;
    dxButton5.Caption := 'Plan. Custo(CTRL+N)';
    dxButton4.Caption := 'Receitas ASH(CTRL+T)';
    dxButton6.Caption := 'Receitas PCMSO(CTRL+C)';
    MainMenu1.Items.Items[0].Items[2].Enabled := False;
    MainMenu1.Items.Items[0].Items[4].Enabled := False;
    MainMenu1.Items.Items[0].Items[6].Enabled := False;
    MainMenu1.Items.Items[1].Items[7].Visible := True;
    MainMenu1.Items.Items[1].Items[8].Visible := True;
    MainMenu1.Items.Items[1].Items[9].Visible := True;
    MainMenu1.Items.Items[0].Items[10].Visible := True;


    // para não usar o caption da action , pois tem quer ter para aparecer no Menu Usercontrol

    SpeedButton9.Caption := '';
    SpeedButton10.Caption := '';
    SpeedButton11.Caption := '';


 //   aContaPagar.Visible := False;

    { dxButton5.Top := 222;
    dxButton6.Top := 278;
    dxButton7.Top := 334;
    dxButton8.Top := 390; }
 //   dxButton7.Top
//    SpeedButton4.Enabled := False;
  end
  else begin
    dxButton6.Top := -550;  // usado Modulo Saude
    dxButton7.Top := -550;  // usado Modulo Saude
    dxButton8.Top := -550;  // usado Modulo Saude
    dxButton1.Top := dxButton1.Top + 20;
    dxButton2.Top := dxButton2.Top + 30;
    dxButton3.Top := dxButton3.Top + 40;
    dxButton4.Top := dxButton4.Top + 50;
    dxButton5.Top := dxButton5.Top + 60;    
    SpeedButton9.Visible := False ;
    SpeedButton10.Visible := False ;
    SpeedButton11.Visible := False ;
    MainMenu1.Items.Items[0].Items[10].Visible := False;
    MainMenu1.Items.Items[1].Items[10].Visible := False;
    MainMenu1.Items.Items[1].Items[11].Visible := False;
    MainMenu1.Items.Items[2].Items[6].Visible := False;
    MainMenu1.Items.Items[2].Items[7].Visible := False;
    //MainMenu1.Items.Items[1].Items[6].Visible := False; // usado Modulo Saude

  end;
  if not cds_parametro.Active then
     cds_parametro.Open;
  if (cds_parametro.Locate('PARAMETRO', 'USARECEITAS',[loPartialKey])) then
    if (cds_parametroDADOS.AsString = 'S') then
    begin
      MainMenu1.Items.Items[1].Items[6].Enabled := False;
      dxButton4.Enabled := False;
    end;
end;

procedure TfFinanceiro.Clientes1Click(Sender: TObject);
begin
  fClienteCadastro := TfClienteCadastro.Create(Application);
  try
    fClienteCadastro.ShowModal;
  finally
    fClienteCadastro.Free;
  end;
  varform := '';
end;

procedure TfFinanceiro.Fornecedores1Click(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    fFornecedorCadastroSaude := TfFornecedorCadastroSaude.Create(Application);
    try
      fFornecedorCadastroSaude.ShowModal;
    finally
      fFornecedorCadastroSaude.Free;
    end;
  end
  else begin
    fFornecedorCadastro := TfFornecedorCadastro.Create(Application);
    try
      fFornecedorCadastro.ShowModal;
    finally
      fFornecedorCadastro.Free;
    end;
  end;
end;

procedure TfFinanceiro.Bancos1Click(Sender: TObject);
begin
 fbanco:=Tfbanco.Create(Application);
 try
   dm.cdsBanco.Open;
   fbanco.ShowModal;
 finally
   dm.cdsBanco.Close;
   fbanco.Free;
 end
end;

procedure TfFinanceiro.PlanodeContas1Click(Sender: TObject);
begin
 fContasAssistente:=TfContasAssistente.Create(Application);
 try
  fContasAssistente.ShowModal;
 finally
  fContasAssistente.Free;
 end;
end;

procedure TfFinanceiro.ransportadoras1Click(Sender: TObject);
begin
   ftransp := Tftransp.Create(Application);
   try
     ftransp.ShowModal;
   finally
     ftransp.Free;
   end;
end;

procedure TfFinanceiro.MovimentaoFinanceira1Click(Sender: TObject);
begin
  fCheques_bol := TfCheques_bol.Create(Application);
  fContabilLanc := TfContabilLanc.Create(Application);
  fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);
  try
    fContabilLanc.ShowModal;
  finally
    fCheques_bol.Free;
    fFiltro_forn_plano.Free;
    fContabilLanc.Free;
  end;
end;

procedure TfFinanceiro.AssociaoComercial1Click(Sender: TObject);
begin
   fAssociacao := TfAssociacao.Create(Application);
   try
      fAssociacao.ShowModal;
   finally
      fAssociacao.Free;
   end;
end;

procedure TfFinanceiro.statusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 statusBar1.Canvas.Brush.Color:=$00AEB7D2;
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
 ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TfFinanceiro.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TfFinanceiro.FormClose(Sender: TObject; var Action: TCloseAction);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    MICRO := NomeComputador;
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[1].AsString := 'Financeiro';
    cds_Login.Open;
    if not cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Financeiro');
        try
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(deleta);
          dm.sqlsisAdimin.Commit(TD);
         except
           dm.sqlsisAdimin.Rollback(TD);
           MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
         end;
    end;
    Application.Terminate;
  end
  else
   abort;
end;

procedure TfFinanceiro.SobreoSistema1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TfFinanceiro.RelContasPagas1Click(Sender: TObject);
begin
  fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);
  fRelatorio := TfRelatorio.Create(Application);
  try
    fRelatorio.ShowModal;
  finally
    fFiltro_forn_plano.Free;
    fRelatorio.Free;
  end;

end;

procedure TfFinanceiro.RelContasaReceber1Click(Sender: TObject);
begin
  fRelatorioReceber := TfRelatorioReceber.Create(Application);
  try
    fRelatorioReceber.ShowModal;
  finally
    fRelatorioreceber.Free;
  end;
end;

function TfFinanceiro.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

function TfFinanceiro.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';

end;

procedure TfFinanceiro.Empresas1Click(Sender: TObject);
begin
    fEmpresa := TfEmpresa.Create(Application);
    try
      fEmpresa.ShowModal;
    finally
      fEmpresa.Free;
    end;
end;

procedure TfFinanceiro.PlanosdeCobranas1Click(Sender: TObject);
begin
   fPlanos := TfPlanos.Create(Application);
   try
     fPlanos.ShowModal;
   finally
     fPlanos.Free;
   end;
end;

procedure TfFinanceiro.FormShow(Sender: TObject);
begin
    //Se tiver Agendamento para o dia abro a agenda
     if (dm.cds_ag.Active) then
        dm.cds_ag.Close;
     dm.cds_ag.Params[0].Clear;
     dm.cds_ag.Params[1].AsInteger := 9999999;
     dm.cds_ag.Params[2].Value := Now;
     dm.cds_ag.Params[3].Value := Now;
     dm.cds_ag.Params[4].Clear;
     dm.cds_ag.Params[5].AsInteger := 9999999;
     dm.cds_ag.Open;
     if (not dm.cds_ag.IsEmpty) then
     begin
        dm.cds_ag.Close;
        SpeedButton5.Click;
     end
     else
     begin
        dm.cds_ag.Close;
         if (dm.ag_dia.Active) then
            dm.ag_dia.Close;
         dm.ag_dia.Params[0].Value := now;
         dm.ag_dia.Open;
         if (dm.ag_dia.IsEmpty) then
            dm.ag_dia.Close
         else
         begin
            dm.ag_dia.Close;
            SpeedButton5.Click;
         end;
     end;
  //************************************************************
  if not cds_parametro.Active then
     cds_parametro.Open;
  cds_parametro.Locate('PARAMETRO', 'MODULO',[loPartialKey]);
  if (cds_parametroD5.AsString = 'S') then
  begin
    dm.moduloUsado := 'ESCOLA';
  end
  else if (cds_parametroD6.AsString = 'S') then
  begin
    dm.moduloUsado := 'SAUDE';
  end;

end;

procedure TfFinanceiro.Funcionrios1Click(Sender: TObject);
begin
    fFuncionario := TfFuncionario.Create(Application);
    try
      fFuncionario.ShowModal;
    finally
      fFuncionario.Free;
    end;
end;

procedure TfFinanceiro.RelDRE1Click(Sender: TObject);
begin
  fRelatorioFin := TfRelatorioFin.Create(Application);
  try
    fRelatorioFin.ShowModal;
  finally
    fRelatorioFin.Free;
  end;

end;

procedure TfFinanceiro.LancarCobranca1Click(Sender: TObject);
begin
{  fGeraCobCliente := TfGeraCobCliente.Create(Application);
  try
    fGeraCobCliente.ShowModal;
  finally
    fGeraCobCliente.Free;
  end;}
  fGeraCob := TfGeraCob.Create(Application);
  try
    fGeraCob.ComboBox2.Visible := true;
    fGeraCob.Label3.Visible := true;
    fGeraCob.ComboBox3.Visible := False;
    fGeraCob.Label12.Visible := False;
   if (dm.moduloUsado = 'SAUDE') then
   begin
    fGeraCob.edCodCCusto.Visible := TRUE;
   END;
    fGeraCob.Label11.Visible := False;
    fGeraCob.ShowModal;
  finally
    fGeraCob.Free;
  end;

end;

procedure TfFinanceiro.Procedimentos1Click(Sender: TObject);
begin
  // Cadastra Itens na Tabela Produto usados na Plan. Custo (saúde)
  fProcedimentos := TfProcedimentos.Create(Application);
  try
    fProcedimentos.ShowModal;
  finally
    fProcedimentos.Free;
  end;

end;

procedure TfFinanceiro.CorrigirDescontoBolsa1Click(Sender: TObject);
begin
   fCorrigeDesconto := TfCorrigeDesconto.Create(Application);
   try
     fCorrigeDesconto.ShowModal;
   finally
     fCorrigeDesconto.free;
   end;  
end;


procedure TfFinanceiro.LanarOutrasReceitas1Click(Sender: TObject);
begin
  fcrTituloInclui := TfcrTituloInclui.Create(Application);
  fCheques_bol := TfCheques_bol.Create(Application);
  fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);
  fcrproc:=Tfcrproc.Create(Application);
  try
    fcrTituloInclui.DBEdit4.Visible := true;
    fcrTituloInclui.ShowModal;
  finally
    fcrproc.Free;
    fCheques_bol.Free;
    fFiltro_forn_plano.Free;
    fcrTituloInclui.Free;
  end;

end;


procedure TfFinanceiro.RelResumo1Click(Sender: TObject);
begin
    fRelatorioReceber := TfRelatorioReceber.Create(Application);
  try
    fRelatorioReceber.BitBtn5.Visible := true;
    fRelatorioReceber.GroupBox1.Visible := False;
    fRelatorioReceber.GroupBox2.Visible := False;
    fRelatorioReceber.ShowModal;
  finally
    fRelatorioreceber.Free;
  end;
end;


procedure TfFinanceiro.RelCaixa1Click(Sender: TObject);
begin
  fRelatorioCaixa := TfRelatorioCaixa.Create(Application);
  try
    fRelatorioCaixa.ShowModal;
  finally
    fRelatorioCaixa.Free;
  end;

end;

procedure TfFinanceiro.RelASHPCMSO1Click(Sender: TObject);
begin
  fRelatorioAsh := TfRelatorioAsh.Create(Application);
  try
    fRelatorioAsh.ShowModal;
  finally
    fRelatorioAsh.Free;
  end;

end;

procedure TfFinanceiro.LanarParticular1Click(Sender: TObject);
begin
  fLancaProcPart := TfLancaProcPart.Create(Application);
  try
    fLancaProcPart.Color := clInfoBk;
    fLancaProcPart.Label13.Caption := 'PARTICULAR';
    fLancaProcPart.ccusto := 'PARTICULAR';
    fLancaProcPart.ShowModal;
  finally
    fLancaProcPart.Free;
  end;
end;

procedure TfFinanceiro.ImprimirEnvelope1Click(Sender: TObject);
begin
     fEnvelope := TfEnvelope.Create(Application);
   try
     fEnvelope.ShowModal;
   finally
     fEnvelope.Free;
   end;
end;

procedure TfFinanceiro.FluxoCaixa1Click(Sender: TObject);
begin
  fFluxoCaixa := TfFluxoCaixa.Create(Application);
  try
    fFluxoCaixa.ShowModal;
  finally
    fFluxoCaixa.Free;
  end;

end;

procedure TfFinanceiro.rocarSenha1Click(Sender: TObject);
begin
  UserControlFinanceiro.Logoff;
end;

procedure TfFinanceiro.VerMovimentaodeCheques1Click(Sender: TObject);
begin
  fProcuraCheque := TfProcuraCheque.Create(Application);
  try
    fProcuraCheque.ShowModal;
  finally
    fProcuraCheque.Free;
  end;  
end;

procedure TfFinanceiro.aContaPagarExecute(Sender: TObject);
begin
 fCpProc:=TfCpProc.Create(Application);
 fcptitulo:=Tfcptitulo.Create(Application);
 //fCheques_bol:=TfCheques_bol.Create(Application);
 try
   fCpProc.ShowModal;
 finally
   //fCheques_bol.Free;
   fcptitulo.Free;
   fCpProc.Free;
 end;
end;

procedure TfFinanceiro.fReceitasPCMSOExecute(Sender: TObject);
begin
  fLancaProcPcmso := TfLancaProcPcmso.Create(Application);
  try
    fLancaProcPcmso.Color := clMoneyGreen;
    fLancaProcPcmso.Label13.Caption := 'PCMSO';
    fLancaProcPcmso.ccusto := 'PCMSO';
    fLancaProcPcmso.ShowModal;
  finally
    fLancaProcPcmso.Free;
  end;
end;

procedure TfFinanceiro.bReceberExecute(Sender: TObject);
var
  TD: TTransactionDesc;
begin
  { Limpo a Tabela caso o sistema foi fechado de forma incorreta }
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP is not null');
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
  end;

  //fCheques_bol := TfCheques_bol.Create(Application);
  if (dm.moduloUsado = 'ESCOLA') then
  begin
    fcrEscolas := TfcrEscolas.Create(Application);
    try
       fcrEscolas.ShowModal;
    finally
       //fCheques_bol.Free;
       fcrEscolas.Free;
    end;
  end
  else if (dm.moduloUsado = 'SAUDE') then
  begin
      fcrProcSaude := TfcrProcSaude.Create(Application);
      try
        fcrProcSaude.ShowModal;
      finally
        //fCheques_bol.Free;
        fcrProcSaude.Free;
      end;
  end
  else
  begin
    fcrproc := Tfcrproc.Create(Application);
    try
       fcrproc.ShowModal;
    finally
       //fCheques_bol.Free;
       fcrproc.Free;
    end;
  end;
end;

procedure TfFinanceiro.cDespesasExecute(Sender: TObject);
begin
  //fcrTituloPagto := TfcrTituloPagto.Create(Application);
  //fCheques_bol := TfCheques_bol.Create(Application);
  //fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);
  //fCpProc:=TfCpProc.Create(Application);
  //try
    fcrTituloPagto.ShowModal;
  //finally
    //fCpProc.Free;
    //fCheques_bol.Free;
    //fFiltro_forn_plano.Free;
    //fcrTituloPagto.Free;
  //end;
end;

procedure TfFinanceiro.dReceitasExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    // Colocar aqui pra abrir a inclusão de Cobrança usúario.
    fLancaProcSaude := TfLancaProcSaude.Create(Application);
    try
      fLancaProcSaude.Color := clskyblue ;
      fLancaProcSaude.Label13.Caption := 'ASH';
      fLancaProcSaude.ccusto := 'ASH';
      fLancaProcSaude.ShowModal;
    finally
      fLancaProcSaude.Free;
    end;
  end
  else begin
    //fcrTituloInclui := TfcrTituloInclui.Create(Application);
    //fCheques_bol := TfCheques_bol.Create(Application);
    //fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);
    //fcrproc:=Tfcrproc.Create(Application);
    try
      if (dm.moduloUsado = 'ESCOLA') then
      begin
        fcrTituloInclui.DBEdit4.Visible := True;
        fcrTituloInclui.Label9.Caption := 'RA';
        fcrTituloInclui.Label10.Caption := 'Aluno';
      end;
      fcrTituloInclui.ShowModal;
    finally
      //fcrproc.Free;
      //fCheques_bol.Free;
      //fFiltro_forn_plano.Free;
      //fcrTituloInclui.Free;
    end;
  end;
end;

procedure TfFinanceiro.eNFisacaisExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    // Usado no Saúde
    fEntrada := TfEntrada.Create(Application);
    try
      fEntrada.ShowModal;
    finally
      fEntrada.Free;
    end;
  end
  else begin
    fNotaf := TfNotaf.Create(Application);
    try
      fNotaf.ShowModal;
    finally
      fNotaf.Free;
    end;
  end;
end;

procedure TfFinanceiro.jF8ClientesExecute(Sender: TObject);
begin
 if not cds_parametro.Active then
     cds_parametro.Open;
  cds_parametro.Locate('PARAMETRO', 'MODULO',[loPartialKey]);
  //fcrtitulo := TfcrTitulo.Create(Application);
  //fCheques_bol := TfCheques_bol.Create(Application);
  if (cds_parametroD3.AsString = 'S') then
  begin
   fListaClientes:=TfListaClientes.Create(Application);
   //fClienteCadastro := TfClienteCadastro.Create(Application);
   try
     varform := 'consulta';
     dm.var_teste := 'consulta';
     fListaClientes.ShowModal;
   finally
     //fClienteCadastro.Free;
     fListaClientes.Free;
     varform := '';
   end;
  end
  else if (cds_parametroD5.AsString = 'S') then
  begin
   fListaCliEscola:=TfListaCliEscola.Create(Application);
   //fClienteCadastro := TfClienteCadastro.Create(Application);
   try
     varform := 'consultapedagogico';
     fListaCliEscola.ShowModal;
   finally
     //fClienteCadastro.Free;
     fListaCliEscola.Free;
     varform := '';
   end;
  end
  else if (cds_parametroD6.AsString = 'S') then
  begin
   fListaClienteSaude := TfListaClienteSaude.Create(Application);
   //fClienteCadastro := TfClienteCadastro.Create(Application);
   try
     varform := 'consultaescola';
     fListaClienteSaude.ShowModal;
   finally
     //fClienteCadastro.Free;
     fListaClienteSaude.Free;
     varform := '';
   end;
  end;
  if ((dm.moduloUsado <> 'ESCOLA') and (dm.moduloUsado <> 'SAUDE')) then
    dm.var_teste := '';
  varform := '';
end;

procedure TfFinanceiro.kAgendaExecute(Sender: TObject);
begin
  fAgendamento := TfAgendamento.Create(Application);
  try
    fAgendamento.ShowModal;
  finally
    fAgendamento.Free;
  end;
end;

procedure TfFinanceiro.lTelaExecute(Sender: TObject);
begin
    fResolucaoTela := TfResolucaoTela.Create(Application);
    try
      fResolucaoTela.ShowModal;
    finally
      fResolucaoTela.free;
    end;
end;

procedure TfFinanceiro.mCBR643Execute(Sender: TObject);
begin
   fArquivoRetorno := TfArquivoRetorno.Create(Application);
   try
     fArquivoRetorno.ShowModal;
   finally
     fArquivoRetorno.Free;
   end;
end;

procedure TfFinanceiro.nCBR643Execute(Sender: TObject);
begin
   fProcuraCBR := TfProcuraCBR.Create(Application);
   try
     fProcuraCBR.ShowModal;
   finally
     fProcuraCBR.Free;
   end;
end;

procedure TfFinanceiro.oVerASHExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    fLancaProcSaudeProc := TfLancaProcSaudeProc.Create(Application);
    fLancaProcSaude := TfLancaProcSaude.Create(Application);
    fLancaProcSaudeProc.ccustoProc := 'ASH';

    if (not DMSaude.sqlVencimentoASH.Active) then
      DMSaude.sqlVencimentoASH.Open;
    fLancaProcSaudeProc.vencimento1.Text := DMSaude.sqlVencimentoASHDESCRICAO.Text;
    fLancaProcSaudeProc.vencimento2.Text := DMSaude.sqlVencimentoASHDESCRICAO.Text;

    try
      fLancaProcSaude.Color := clskyblue ;
      fLancaProcSaude.Label13.Caption := 'ASH';
      fLancaProcSaude.ccusto := 'ASH';
      fLancaProcSaudeProc.Label11.Caption := 'ASH';
      fLancaProcSaudeProc.Color := clskyblue ;

      fLancaProcSaudeProc.BitBtn6.Visible := False;
      fLancaProcSaudeProc.BitBtn7.Visible := False;
      fLancaProcSaudeProc.BitBtn10.Visible := False;      

      fLancaProcSaudeProc.ShowModal;
    finally
      fLancaProcSaude.Free;
      fLancaProcSaudeProc.Free;
    end;
  end
  else begin

  end;
end;

procedure TfFinanceiro.pVerPCMSOExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    fLancaProcSaudeProc := TfLancaProcSaudeProc.Create(Application);
    fLancaProcPcmso := TfLancaProcPcmso.Create(Application);
    fLancaProcSaudeProc.ccustoProc := 'PCMSO';

    if (not DMSaude.sqlVencimentoPCMSO.Active) then
      DMSaude.sqlVencimentoPCMSO.Open;
    fLancaProcSaudeProc.vencimento1.Text := DMSaude.sqlVencimentoPCMSODESCRICAO.Text;
    fLancaProcSaudeProc.vencimento2.Text := DMSaude.sqlVencimentoPCMSODESCRICAO.Text;

    try
      fLancaProcPcmso.Color := clMoneyGreen;
      fLancaProcPcmso.Label13.Caption := 'PCMSO';
      fLancaProcPcmso.ccusto := 'PCMSO';
      fLancaProcSaudeProc.Label11.Caption := 'PCMSO';
      fLancaProcSaudeProc.Color := clMoneyGreen;
      fLancaProcSaudeProc.BitBtn5.Visible := False;
      fLancaProcSaudeProc.Label14.Visible := False;
      fLancaProcSaudeProc.dataX.Visible := False;
      fLancaProcSaudeProc.datay.Visible := False;
      fLancaProcSaudeProc.BitBtn8.Visible := False;
      fLancaProcSaudeProc.BitBtn9.Visible := False;
      fLancaProcSaudeProc.ShowModal;


    finally
      fLancaProcPcmso.Free;
      fLancaProcSaudeProc.Free;
    end;
  end
  else begin

  end;
end;

procedure TfFinanceiro.qVerPArticularExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    fLancaProcSaudeProc := TfLancaProcSaudeProc.Create(Application);
    fLancaProcPart := TfLancaProcPart.Create(Application);
    fLancaProcSaudeProc.ccustoProc := 'PARTICULAR';
    try
      fLancaProcPart.Color := clInfoBk;
      fLancaProcPart.Label13.Caption := 'PARTICULAR';
      fLancaProcPart.ccusto := 'PARTICULAR';
      fLancaProcSaudeProc.Label11.Caption := 'PARTICULAR';
      fLancaProcSaudeProc.Color := clInfoBk;
      fLancaProcSaudeProc.BitBtn4.Enabled := False;
      fLancaProcSaudeProc.BitBtn6.Visible := False;
      fLancaProcSaudeProc.BitBtn7.Visible := False;

      fLancaProcSaudeProc.ShowModal;
    finally
      fLancaProcPart.Free;
      fLancaProcSaudeProc.Free;
    end;
  end
end;

procedure TfFinanceiro.hReceitasParticularExecute(Sender: TObject);
begin
  fLancaProcPart := TfLancaProcPart.Create(Application);
  try
    fLancaProcPart.Color := clInfoBk;
    fLancaProcPart.Label13.Caption := 'PARTICULAR';
    fLancaProcPart.ccusto := 'PARTICULAR';
    fLancaProcPart.ShowModal;
  finally
    fLancaProcPart.Free;
  end;
end;

procedure TfFinanceiro.gOutraReceitasExecute(Sender: TObject);
begin
{
  fcrTituloInclui := TfcrTituloInclui.Create(Application);
  fCheques_bol := TfCheques_bol.Create(Application);
  fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);

  fcrproc:=Tfcrproc.Create(Application);
  try
 }
    fcrTituloInclui.DBEdit4.Visible := true;
    fcrTituloInclui.ShowModal;
 {
  finally
    fcrproc.Free;
    fCheques_bol.Free;
    fFiltro_forn_plano.Free;
    fcrTituloInclui.Free;
  end;
 } 
end;

procedure TfFinanceiro.FamiliaProdutos1Click(Sender: TObject);
begin
  fFamilia := TfFamilia.Create(Application);
  try
    fFamilia.ShowModal;
  finally
    fFamilia.Free;
  end;
end;

end.
