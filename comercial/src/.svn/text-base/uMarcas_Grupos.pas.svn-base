unit uMarcas_Grupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Grids, DBGrids, Mask, JvExControls, JvLabel, JvExStdCtrls,
  JvEdit, JvDBSearchEdit;

type
  TfMarcas_Grupos = class(TfPai)
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    JvLabel1: TJvLabel;
    btnConfirma: TBitBtn;
    JvDBSearchEdit1: TJvDBSearchEdit;
    DBEdit1: TDBEdit;
    bvl1: TBevel;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMarcas_Grupos: TfMarcas_Grupos;

implementation

uses uComercial, UDm, sCtrlResize;

{$R *.dfm}

procedure TfMarcas_Grupos.btnIncluirClick(Sender: TObject);
begin
  inherited;     
  DBEdit1.SetFocus;
end;

procedure TfMarcas_Grupos.btnGravarClick(Sender: TObject);
begin
  inherited;
  btnIncluir.SetFocus;
end;

procedure TfMarcas_Grupos.FormDestroy(Sender: TObject);
begin
  inherited;
  if (not DM.cds_Marca.Active) then
    DM.cds_Marca.Open;
end;

procedure TfMarcas_Grupos.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfMarcas_Grupos.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DM.cds_Marca.State in [dsInsert, dsEdit] then
    btnGravar.SetFocus
  else
    btnSair.SetFocus;
end;

procedure TfMarcas_Grupos.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfMarcas_Grupos.FormShow(Sender: TObject);
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(fMarcas_Grupos));
  if(dm.cds_Marca.Active) then
  dm.cds_Marca.Close;
  dm.cds_Marca.Open;

end;

procedure TfMarcas_Grupos.btnConfirmaClick(Sender: TObject);
begin
  inherited;
  if dm.cds_produto.State = dsbrowse then
    dm.cds_produto.Edit;
  if ( not DM.cds_MarcaDESCMARCAS.IsNull) then
    dm.cds_produtoMARCA.AsString := DM.cds_MarcaDESCMARCAS.AsString;
  btnSair.Click;
end;

end.
