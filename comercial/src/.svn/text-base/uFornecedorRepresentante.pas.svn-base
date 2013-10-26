unit uFornecedorRepresentante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBCtrls, Mask, DBClient, Provider, SqlExpr;

type
  TfFornecedorRepresentante = class(TfPai)
    sds_repfor: TSQLDataSet;
    sds_repforCOD_FORNECEDOR: TIntegerField;
    sds_repforCOD_REPRFOR: TIntegerField;
    sds_repforFONE: TStringField;
    sds_repforFONE1: TStringField;
    sds_repforFONE2: TStringField;
    sds_repforENDERECO: TStringField;
    sds_repforNUMERO: TStringField;
    sds_repforCOMPLEMENTO: TStringField;
    sds_repforBAIRRO: TStringField;
    sds_repforCIDADE: TStringField;
    sds_repforUF: TStringField;
    sds_repforCEP: TStringField;
    sds_repforEMAIL: TStringField;
    sds_repforNOME_REPRFOR: TStringField;
    sds_repforFUNCAO: TStringField;
    dsp_repfor: TDataSetProvider;
    cds_repfor: TClientDataSet;
    cds_repforCOD_FORNECEDOR: TIntegerField;
    cds_repforCOD_REPRFOR: TIntegerField;
    cds_repforFONE: TStringField;
    cds_repforFONE1: TStringField;
    cds_repforFONE2: TStringField;
    cds_repforENDERECO: TStringField;
    cds_repforNUMERO: TStringField;
    cds_repforCOMPLEMENTO: TStringField;
    cds_repforBAIRRO: TStringField;
    cds_repforCIDADE: TStringField;
    cds_repforUF: TStringField;
    cds_repforCEP: TStringField;
    cds_repforEMAIL: TStringField;
    cds_repforNOME_REPRFOR: TStringField;
    cds_repforFUNCAO: TStringField;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBNavigator1: TDBNavigator;
    MMJPanel3: TMMJPanel;
    Panel1: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure cds_repforNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFornecedorRepresentante: TfFornecedorRepresentante;

implementation

uses uComercial, UDm, uFornecedorCadastro;

{$R *.dfm}

procedure TfFornecedorRepresentante.cds_repforNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_repforCOD_FORNECEDOR.AsInteger :=
   fFornecedorCadastro.cds_fornecedorCODFORNECEDOR.AsInteger;
end;

procedure TfFornecedorRepresentante.FormShow(Sender: TObject);
begin
  inherited;
  if cds_repfor.Active then
     cds_repfor.Close;
  cds_repfor.Params[0].AsInteger:=fFornecedorCadastro.cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_repfor.Open;
  btnIncluir.SetFocus;
end;

procedure TfFornecedorRepresentante.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfFornecedorRepresentante.btnGravarClick(Sender: TObject);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR_REP, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_repforCOD_REPRFOR.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfFornecedorRepresentante.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.
