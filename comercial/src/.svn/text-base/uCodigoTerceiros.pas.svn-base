unit uCodigoTerceiros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Grids, DBGrids, Mask, DBCtrls, DBClient, Provider, SqlExpr;

type
  TfCodigoTerceiros = class(TfPai)
    sds_codigos: TSQLDataSet;
    sds_codigosCOD_PRODUTO: TIntegerField;
    sds_codigosCOD_CODIGO: TIntegerField;
    sds_codigosCODIGO: TStringField;
    sds_codigosNUMERO: TStringField;
    dsp_codigos: TDataSetProvider;
    cds_codigos: TClientDataSet;
    cds_codigosCOD_PRODUTO: TIntegerField;
    cds_codigosCOD_CODIGO: TIntegerField;
    cds_codigosCODIGO: TStringField;
    cds_codigosNUMERO: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBText2: TDBText;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCodigoTerceiros: TfCodigoTerceiros;

implementation

uses uComercial, UDm, uProdutoCadastro, sCtrlResize;

{$R *.dfm}

procedure TfCodigoTerceiros.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Text := 'A';
  DBEdit1.SetFocus;
  DBEdit1.Text := '';
end;

procedure TfCodigoTerceiros.FormCreate(Sender: TObject);
begin
//  inherited;
   if cds_codigos.Active then
       cds_codigos.Close;
   cds_codigos.Params[0].Clear;
   cds_codigos.Params[0].AsInteger := dm.cds_produtoCODPRODUTO.AsInteger;
   cds_codigos.Open;
end;

procedure TfCodigoTerceiros.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODTERC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_codigosCOD_CODIGO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    cds_codigosCOD_PRODUTO.AsInteger := dm.cds_produtoCODPRODUTO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure TfCodigoTerceiros.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfCodigoTerceiros.FormShow(Sender: TObject);
begin
//  inherited;
   sCtrlResize.CtrlResize(TForm(fCodigoTerceiros));
   if (cds_codigos.IsEmpty) then
     btnIncluir.Click
   else
     btnIncluir.SetFocus;
end;

end.
