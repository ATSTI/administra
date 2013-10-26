unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, ExtCtrls, MMJPanel, TFlatSpeedButtonUnit,
  FMTBcd, DB, SqlExpr, StdCtrls, DBClient, Provider, jpeg, Menus, XPMenu,
  EOneInst, Buttons;

type
  TfPrincipal = class(TForm)
    sds_parametro: TSQLDataSet;
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
    dxButton1: TdxButton;
    dxButton4: TdxButton;
    dxButton3: TdxButton;
    FlatSpeedButton1: TFlatSpeedButton;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    Administrativo1: TMenuItem;
    Financeiro1: TMenuItem;
    Comercial1: TMenuItem;
    Materiais1: TMenuItem;
    XPMenu1: TXPMenu;
    EvOneInstance1: TEvOneInstance;
    dxButton5: TdxButton;
    SQLDataSet1: TSQLDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    DataSetProvider1: TDataSetProvider;
    parametro: TClientDataSet;
    parametroDESCRICAO: TStringField;
    parametroPARAMETRO: TStringField;
    parametroCONFIGURADO: TStringField;
    parametroDADOS: TStringField;
    parametroD1: TStringField;
    parametroD2: TStringField;
    parametroD3: TStringField;
    parametroD4: TStringField;
    parametroD5: TStringField;
    parametroD6: TStringField;
    parametroD7: TStringField;
    parametroD8: TStringField;
    parametroD9: TStringField;
    parametroINSTRUCOES: TStringField;
    dxButton2: TdxButton;
    btnImprimir: TFlatSpeedButton;
    FlatSpeedButton2: TFlatSpeedButton;
    FlatSpeedButton3: TFlatSpeedButton;
    procedure dxButton1Click(Sender: TObject);
    procedure FlatSpeedButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FlatSpeedButton2Click(Sender: TObject);
    procedure FlatSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure resolucaovideo;
  end;

var
  fPrincipal: TfPrincipal;
  videoW, videoH : string;
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
  usuario_logado: SmallInt;
  modulo_financeiro, modulo_comercial, modulo_adm : string;
  modulo_saude, modulo_materiais, modulo_pedagogico : string;

implementation

uses UDm, uRelatorios, uSobre;

{$R *.dfm}

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;


procedure TfPrincipal.dxButton1Click(Sender: TObject);
begin
  WinExec('PrjAdministrativo', SW_SHOWNORMAL);
end;

procedure TfPrincipal.FlatSpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrincipal.dxButton2Click(Sender: TObject);
begin
  WinExec('PrjFinanceiro.EXE', SW_SHOWNORMAL);
end;

procedure TfPrincipal.FormCreate(Sender: TObject);
begin
  resolucaovideo;

  if (parametro.Active) then
     parametro.Close;
  parametro.Params[0].AsString := 'MODULO';
  parametro.Open;
  if (parametro.IsEmpty) then
  begin
    parametro.Append;
    parametroDESCRICAO.AsString := 'Modulos';
    parametroPARAMETRO.AsString := 'MODULO';
    parametroCONFIGURADO.AsString := 'S';
    parametroD1.AsString := 'S'; // Modulo Administrativo
    parametroD2.AsString := 'S'; // Modulo Financeiro
    parametroD3.AsString := 'S'; // Modulo Comercial
    parametroD4.AsString := 'S'; // Modulo Materiais
    parametroD5.AsString := 'N'; // Modulo Pedagogico
    parametroD6.AsString := 'N'; // Modulo Saude

    //parametroD9.AsString := 'ATUALIZADO'; // Se estiver ATUALIZADO no executa o ATUALIZA

    parametro.ApplyUpdates(0);
    parametro.Close;
    parametro.Params[0].AsString := 'MODULO';
    parametro.Open;
  end;
  // Usa Modulo Administrativo ?
  modulo_adm := parametroD1.AsString;
  if (modulo_adm = 'S') then
    dxButton1.Enabled := True
  else
    dxButton1.Enabled := False;

  // Usa modulo Financeiro
  modulo_financeiro := parametroD2.AsString;
  if (modulo_financeiro = 'S') then
    dxButton2.Enabled := True
  else
    dxButton2.Enabled := False;

  // Usa Modulo Materiais
  modulo_materiais := parametroD4.AsString;
  if (modulo_materiais = 'S') then
    dxButton3.Enabled := True
  else
    dxButton3.Enabled := False;

  // Usa Modulo Comercial
  modulo_comercial := parametroD3.AsString;
  if (modulo_comercial = 'S') then
  begin
    dxButton4.Enabled := True;
    dxButton4.BringToFront;
  end
  else
  begin
    dxButton4.Enabled := False;
    dxButton4.SendToBack;
  end;

  // Usa Modulo Pedagogico
  modulo_pedagogico := parametroD5.AsString;
  if (modulo_pedagogico = 'S') then
  begin
    dxButton5.Enabled := True;
    dxButton5.BringToFront;
  end
  else
  begin
    dxButton5.Enabled := False;
    dxButton5.SendToBack;
  end;

  // Usa Modulo Saude
  modulo_saude := parametroD6.AsString;
  if (modulo_pedagogico = 'S') then
  begin
    dxButton5.Enabled := True;
    dxButton5.BringToFront;
  end
  else
  begin
    dxButton5.Enabled := False;
    dxButton5.SendToBack;
  end;

  parametro.Close; // fecho o sql que busca os modulos..

  if not cds_parametro.Active then
     cds_parametro.Open;



end;

procedure TfPrincipal.dxButton4Click(Sender: TObject);
begin
  WinExec('PrjComercial.EXE', SW_SHOWNORMAL);
end;

procedure TfPrincipal.dxButton3Click(Sender: TObject);
begin
  WinExec('PrjMateriais.EXE', SW_SHOWNORMAL);
end;

procedure TfPrincipal.dxButton5Click(Sender: TObject);
begin
  WinExec('C:\Home\escolasol\PRJESCOLA.EXE', SW_SHOWNORMAL);
end;

procedure TfPrincipal.btnImprimirClick(Sender: TObject);
begin
   fRelatorios := TfRelatorios.Create(Application);
   try
     fRelatorios.ShowModal;
   finally
     fRelatorios.Free;
   end;
end;

procedure TfPrincipal.FlatSpeedButton2Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;   
end;

procedure TfPrincipal.FlatSpeedButton3Click(Sender: TObject);
begin
  WinExec('atsSuporte.EXE', SW_SHOWNORMAL);
end;

procedure TfPrincipal.resolucaovideo;
begin
  if (dm.sResolucao.Active) then
     dm.sResolucao.Close;
  dm.sResolucao.Params[0].AsString := MICRO1;
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

  if videoW = '800' then
    Position := poDesigned
  else
    Position := poDesktopCenter;

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

end;

end.
