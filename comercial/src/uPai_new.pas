unit uPai_new;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MMJPanel, StdCtrls, Buttons, Menus, XPMenu, DB, DBClient,
  ComCtrls;

type
  TfPai_new = class(TForm)
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    btnProcurar: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    videoW, videoH :string;
  end;

var
  fPai_new: TfPai_new;

implementation

uses UDm;


{$R *.dfm}

procedure TfPai_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;

procedure TfPai_new.FormCreate(Sender: TObject);
begin
  MMJPanel1.Background.EndColor   := dm.corStart;
  MMJPanel1.Background.StartColor := dm.corEnd;
  MMJPanel2.Background.EndColor   := dm.corEnd;
  MMJPanel2.Background.StartColor := dm.corStart;

  if (dm.sResolucao.Active) then
     dm.sResolucao.Close;
  dm.sResolucao.Params[0].AsString := MICRO;
  dm.sResolucao.Open;
  if (dm.sResolucao.IsEmpty) then
  begin
       DM.videoW := '800';
       DM.videoH := '600';
  end
  else
  begin
       DM.videoW := dm.sResolucaoMODULO.AsString;
       DM.videoH := dm.sResolucaoUSUARIO.AsString;
  end;

  {if videoW = '800' then
    Position := poDesigned; }

  if (DM.videoW <> 'widescreen') then
  begin
   if  (DM.videoW <> '') then
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
end;

procedure TfPai_new.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {** quando clicar enter ele entende que é o tab}
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfPai_new.btnIncluirClick(Sender: TObject);
begin
 if btnIncluir.Enabled = false then Exit;
  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;
end;

procedure TfPai_new.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    exit;
end;

procedure TfPai_new.btnSairClick(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then close;
  end
  else
   close;
end;

procedure TfPai_new.btnGravarClick(Sender: TObject);
begin
    DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfPai_new.btnCancelarClick(Sender: TObject);
begin
  DtSrc.DataSet.Cancel;
end;

procedure TfPai_new.DtSrcStateChange(Sender: TObject);
begin
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
  //btnProcurar.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnCancelar.Visible := True;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;
end;

end.
