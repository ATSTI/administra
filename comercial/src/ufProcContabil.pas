unit ufProcContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, StdCtrls, Buttons, Mask, DB, DBClient,
  Provider, SqlExpr, XPMenu, ExtCtrls, MMJPanel, Menus;

type
  TfProcContabil = class(TForm)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsDATA_LANC: TDateField;
    cdsTIPO_DOC: TStringField;
    cdsNUM_ORIGEM: TStringField;
    cdsCONTA: TStringField;
    cdsDESC_CONTA: TStringField;
    cdsCREDITO: TFloatField;
    cdsDEBITO: TFloatField;
    cdsQTDE_C: TFloatField;
    cdsQTDE_D: TFloatField;
    cdsSALDO: TFloatField;
    ds: TDataSource;
    MMJPanel1: TMMJPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    medta1: TMaskEdit;
    medta2: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    MMJPanel2: TMMJPanel;
    DBGrid1: TDBGrid;
    XPMenu1: TXPMenu;
    sds1: TSQLDataSet;
    sds1COD1: TIntegerField;
    sds1COD2: TIntegerField;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Sair1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcContabil: TfProcContabil;

implementation

uses UDm, ufMovimentoCont;

{$R *.dfm}

procedure TfProcContabil.BitBtn1Click(Sender: TObject);
 Var
 DataStr: String;
begin
  if (cds.Active) then
    cds.Close;
  cds.Params[0].Clear;
  cds.Params[1].Clear;
  cds.Params[2].Clear;
  if (Edit1.Text <> '' ) then
    cds.Params[2].AsString := Edit1.Text
  else
    cds.Params[2].AsString := 'TODAS';
  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    cds.Params[0].AsDate := StrToDate(medta1.Text);
    cds.Params[1].AsDate := StrToDate(medta2.Text);
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  cds.Open;
  if sds1.active then
    sds1.Close;
  if (cdsTIPO_DOC.AsString <> '') then
    sds1.Params[0].AsInteger := StrToint(cdsTIPO_DOC.asString);
  sds1.Params[1].AsString := cdsNUM_ORIGEM.asString;
  sds1.Open;
end;

procedure TfProcContabil.BitBtn2Click(Sender: TObject);
begin
 fMovimentoCont:=TfMovimentoCont.Create(Application);
 try
   if DM.c3_contabil.Active then
     DM.c3_contabil.Close;
   DM.c3_contabil.Params[0].AsInteger := StrToInt(cdsTIPO_DOC.asString);
   DM.c3_contabil.Params[1].AsString := cdsNUM_ORIGEM.asString;
   DM.c3_contabil.Open;
   fMovimentoCont.ShowModal;
 finally
   fMovimentoCont.Free;
 end;

end;

procedure TfProcContabil.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfProcContabil.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfProcContabil.FormCreate(Sender: TObject);
begin
  if dm.videoW <> '' then
  begin
   ScreenWidth := StrToInt(dm.videoW);
   ScreenHeight := StrToInt(dm.videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;

end;

end.
