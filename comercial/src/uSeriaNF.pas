unit uSeriaNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Grids, DBGrids, Mask, FMTBcd, DBClient, Provider, SqlExpr,
  JvExControls, JvLabel;

type
  TfSeriaNF = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    JvLabel1: TJvLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Memo1: TMemo;
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSeriaNF: TfSeriaNF;

implementation

uses uComercial, UDm, sCtrlResize;

{$R *.dfm}

procedure TfSeriaNF.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Dbedit1.SetFocus;
end;

procedure TfSeriaNF.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if dm.cds_serie.State in [dsInsert,dsEdit] then
    btnGravar.SetFocus
  else
    btnSair.SetFocus;
end;

procedure TfSeriaNF.btnGravarClick(Sender: TObject);
begin
  inherited;
  btnIncluir.SetFocus;
end;

procedure TfSeriaNF.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfSeriaNF.FormShow(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fSeriaNF));
  if (not dm.cds_serie.Active) then
     dm.cds_serie.Open;
end;

procedure TfSeriaNF.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfSeriaNF.Label6Click(Sender: TObject);
begin
  inherited;
  if (Memo1.Visible) then
    Memo1.Visible := False
  else
    Memo1.Visible := True;
end;

end.
