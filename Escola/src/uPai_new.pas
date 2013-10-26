unit uPai_new;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MMJPanel, StdCtrls, Buttons, Menus, XPMenu, DB, DBClient,
  ComCtrls;

type
  TfPai_new = class(TForm)
    MMJPanel1: TMMJPanel;
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet11: TTabSheet;
    MMJPanel2: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
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
    function Verifica_Campos_Em_Branco: Boolean;
  public
    { Public declarations }
  end;

var
  fPai_new: TfPai_new;

implementation

uses UDm;

{$R *.dfm}

(***********************************************************************)
function TfPai_new.Verifica_Campos_Em_Branco: Boolean;
var cont : integer;
begin
  Result:=True; //assume que estão todos preenchidos
  for cont:= 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[cont].Required then
      if (DtSrc.DataSet.Fields[cont].IsNull)or
         (DtSrc.DataSet.Fields[cont].AsString='') then
      begin
        MessageDlg('Preencha o campo "'+DtSrc.DataSet.Fields[cont].DisplayLabel+'"',
                   mtWarning,[mbOk],0);
        Result:=False;
        Break;
      end;
end;
(***********************************************************************)

procedure TfPai_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;

procedure TfPai_new.FormCreate(Sender: TObject);
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       videoW := dm.UsuarioP1.AsString;
       videoH := dm.UsuarioP2.AsString;
  end;
  //if videoW = '800' then
  //  Position := poDesigned;
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
  end;
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
  if Verifica_Campos_Em_Branco then
  begin
    try
      DtSrc.DataSet.Post;
      (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
    except
      MessageDlg('Erro ao gravar o registro !', mterror,[mbOk],0);
    end;
  end
  else abort;
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
