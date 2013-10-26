unit uAdm_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, ImgList, EOneInst, EAppProt, XPMenu,
  Buttons, dxCore, dxButton, StdCtrls, MMJPanel, FMTBcd, SqlExpr, Provider,
  DB, DBClient, DBxpress, UCBase, ActnList;


type
  TfAdm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    Acessos1: TMenuItem;
    Backup1: TMenuItem;
    Parmetros1: TMenuItem;
    Agenda1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Empresas1: TMenuItem;
    Usurios1: TMenuItem;
    SrieNF1: TMenuItem;
    Fiscais1: TMenuItem;
    CFOP1: TMenuItem;
    EstadosCFOP1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    MMJPanel3: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    MMJPanel1: TMMJPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    MMJPanel2: TMMJPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    ContasPagar2: TMenuItem;
    ContasReceber2: TMenuItem;
    LanarDespesas1: TMenuItem;
    LanarReceitas1: TMenuItem;
    NotasFiscais1: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    EvAppProtect1: TEvAppProtect;
    EvOneInstance1: TEvOneInstance;
    ImageList1: TImageList;
    Timer1: TTimer;
    statusBar1: TStatusBar;
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
    Senhas1: TMenuItem;
    dxButton6: TdxButton;
    Label3: TLabel;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    sds_video: TSQLDataSet;
    sds_parametroLOGIN: TStringField;
    sds_parametroSENHA: TStringField;
    sds_parametroPERFIL: TStringField;
    sds_parametroCODUSUARIO: TIntegerField;
    sds_videoMICRO: TStringField;
    sds_videoP1: TStringField;
    sds_videoP2: TStringField;
    dsp_video: TDataSetProvider;
    cds_video: TClientDataSet;
    cds_parametroLOGIN: TStringField;
    cds_parametroSENHA: TStringField;
    cds_parametroPERFIL: TStringField;
    cds_parametroCODUSUARIO: TIntegerField;
    cds_videoMICRO: TStringField;
    cds_videoP1: TStringField;
    cds_videoP2: TStringField;
    LogsdoSistema1: TMenuItem;
    InserirPerodos1: TMenuItem;
    Usuarios1: TMenuItem;
    CadastrarUsuarios1: TMenuItem;
    rocarSenha1: TMenuItem;
    RocarUsuario1: TMenuItem;
    Historico1: TMenuItem;
    UserControl1: TUserControl;
    Botoes: TActionList;
    aEmpresa: TAction;
    bFuncionarios: TAction;
    cUsuarios: TAction;
    dAgenda: TAction;
    eBackup: TAction;
    procedure statusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SrieNF1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure EstadosCFOP1Click(Sender: TObject);
    procedure LogsdoSistema1Click(Sender: TObject);
    procedure InserirPerodos1Click(Sender: TObject);
    procedure aEmpresaExecute(Sender: TObject);
    procedure bFuncionariosExecute(Sender: TObject);
    procedure eBackupExecute(Sender: TObject);
    procedure cUsuariosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetVersion: string;
  end;

var
  fAdm_Principal: TfAdm_Principal;

implementation

uses UDm, uSobre, uSeriaNF, uEmpresa, uUsuarioCadastro, ufParametro, uCfop,
  uEstado, UnitCadastroUsuarios, ufuncionario, ufDlgLogin, uLogs,
  uperiodoSem;

{$R *.dfm}

(**********************************************************************)
Function Saudacao : string;
begin
 result:='Boa-noite!';
 if (time>=0.25) and (time<0.5) then result:='Bom-dia!';
 if (time>=0.5) and (time<0.80) then result:='Boa-tarde!';
end;
(**********************************************************************)


procedure TfAdm_Principal.statusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
 ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TfAdm_Principal.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TfAdm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
//    MICRO := NomeComputador;
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[1].AsString := 'Adm';
    cds_Login.Open;
    if not dm.cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Adm');
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

procedure TfAdm_Principal.SobreoSistema1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TfAdm_Principal.FormCreate(Sender: TObject);
begin
  if (dm.sResolucao.Active) then
     dm.sResolucao.Close;
  dm.sResolucao.Params[0].AsString := MICRO;
  dm.sResolucao.Open;
  if (dm.sResolucao.IsEmpty) then
  begin
       videoW := '800';
       videoH := '600';
  end
  else
  begin
       videoW := dm.sResolucaoMODULO.AsString;
       videoH := dm.sResolucaoUSUARIO.AsString;
  end;

  if (videoW <> 'widescreen') then
  begin
   if  (videoW <> '') then
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
  dm.sResolucao.Close;

  Label3.Caption := ' ATS - Admin versão: ' + GetVersion;
  StatusBar1.Panels[2].Text:=Saudacao+' Hoje é '+formatdatetime('dddddd',date);
end;

procedure TfAdm_Principal.SrieNF1Click(Sender: TObject);
begin
 fSeriaNF := TfSeriaNF.Create(Application);
 try
  fSeriaNF.ShowModal;
 finally
  fSeriaNF.Free;
 end;
end;

procedure TfAdm_Principal.Sair1Click(Sender: TObject);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
//    MICRO := NomeComputador;
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[1].AsString := 'Adm';
    cds_Login.Open;
    if not dm.cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Adm');
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

procedure TfAdm_Principal.Parmetros1Click(Sender: TObject);
begin
  fParametro := TfParametro.Create(Application);
  try
    fParametro.ShowModal;
  finally
    fParametro.Free;
  end;
end;

procedure TfAdm_Principal.CFOP1Click(Sender: TObject);
begin
  fCfop := TfCfop.Create(Application);
  try
    fCfop.ShowModal;
  finally
    fCfop.Free;
  end;
end;

procedure TfAdm_Principal.EstadosCFOP1Click(Sender: TObject);
begin
  fEstado := TfEstado.Create(Application);
  try
    fEstado.ShowModal;
  finally
    fEstado.Free;
  end;
end;

function TfAdm_Principal.GetVersion: string;
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

procedure TfAdm_Principal.LogsdoSistema1Click(Sender: TObject);
begin
  fLogs := TfLogs.Create(Application);
  try
     fLogs.ShowModal;
  finally
     fLogs.Free;
  end;
end;

procedure TfAdm_Principal.InserirPerodos1Click(Sender: TObject);
begin
  fPeriodoSem := TfPeriodoSem.Create(Application);
  try
     fPeriodoSem.ShowModal;
  finally
     fPeriodoSem.Free;
  end;

end;

procedure TfAdm_Principal.aEmpresaExecute(Sender: TObject);
begin
    fEmpresa := TfEmpresa.Create(Application);
    try
      fEmpresa.ShowModal;
    finally
      fEmpresa.Free;
    end;
end;

procedure TfAdm_Principal.bFuncionariosExecute(Sender: TObject);
begin
 fFuncionario := TfFuncionario.Create(Application);
    try
      fFuncionario.ShowModal;
    finally
      fFuncionario.Free;
    end;
end;

procedure TfAdm_Principal.eBackupExecute(Sender: TObject);
begin
  WinExec('BackupIb.EXE', SW_SHOWNORMAL);
end;

procedure TfAdm_Principal.cUsuariosExecute(Sender: TObject);
begin
   fUsuarioCadastro := TfUsuarioCadastro.Create(Application);
   try
      fUsuarioCadastro.ShowModal;
   finally
     fUsuarioCadastro.Free;
   end;   
end;

end.
