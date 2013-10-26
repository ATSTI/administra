unit uComissaoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Grids, DBGrids, Mask, JvExControls, JvLabel;

type
  TfComissaoCadastro = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    JvLabel1: TJvLabel;
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fComissaoCadastro: TfComissaoCadastro;

implementation

uses uComercial, UDm, sCtrlResize;

{$R *.dfm}

procedure TfComissaoCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfComissaoCadastro.FormShow(Sender: TObject);
begin
  inherited;
  sCtrlResize.CtrlResize(TForm(fComissaoCadastro));
  if dm.cds_cm.Active then
    dm.cds_cm.Close;
  dm.cds_cm.Params[0].Clear;
  dm.cds_cm.Params[1].AsInteger := 9999999;
  dm.cds_cm.Open;
  btnIncluir.SetFocus;
end;

procedure TfComissaoCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfComissaoCadastro.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COMISSAO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_cmCOD_COMISSAO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure TfComissaoCadastro.FormCreate(Sender: TObject);
begin
//  inherited;

end;

end.
