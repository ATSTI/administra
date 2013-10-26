unit uClienteRepresentante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, DBCtrls, Mask;

type
  TfClienteRepresentante = class(TfPai)
    DBText1: TDBText;
    DBText2: TDBText;
    sds_repcli: TSQLDataSet;
    sds_repcliCOD_CLIENTE: TIntegerField;
    sds_repcliCOD_REPRCLI: TIntegerField;
    sds_repcliFONE: TStringField;
    sds_repcliFONE1: TStringField;
    sds_repcliFONE2: TStringField;
    sds_repcliENDERECO: TStringField;
    sds_repcliNUMERO: TStringField;
    sds_repcliCOMPLEMENTO: TStringField;
    sds_repcliBAIRRO: TStringField;
    sds_repcliCIDADE: TStringField;
    sds_repcliUF: TStringField;
    sds_repcliCEP: TStringField;
    sds_repcliEMAIL: TStringField;
    sds_repcliNOME_REPRCLI: TStringField;
    sds_repcliFUNCAO: TStringField;
    dsp_repcli: TDataSetProvider;
    cds_repcli: TClientDataSet;
    cds_repcliCOD_CLIENTE: TIntegerField;
    cds_repcliCOD_REPRCLI: TIntegerField;
    cds_repcliFONE: TStringField;
    cds_repcliFONE1: TStringField;
    cds_repcliFONE2: TStringField;
    cds_repcliENDERECO: TStringField;
    cds_repcliNUMERO: TStringField;
    cds_repcliCOMPLEMENTO: TStringField;
    cds_repcliBAIRRO: TStringField;
    cds_repcliCIDADE: TStringField;
    cds_repcliUF: TStringField;
    cds_repcliCEP: TStringField;
    cds_repcliEMAIL: TStringField;
    cds_repcliNOME_REPRCLI: TStringField;
    cds_repcliFUNCAO: TStringField;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBNavigator1: TDBNavigator;
    MMJPanel3: TMMJPanel;
    Panel1: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cds_repcliNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClienteRepresentante: TfClienteRepresentante;

implementation

uses UDm, uClienteCadastro;

{$R *.dfm}

procedure TfClienteRepresentante.btnGravarClick(Sender: TObject);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI_REP, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_repcliCOD_REPRCLI.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfClienteRepresentante.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfClienteRepresentante.FormShow(Sender: TObject);
begin
  inherited;
  if cds_repcli.Active then
     cds_repcli.Close;
  cds_repcli.Params[0].AsInteger:=fClienteCadastro.cds_CliCODCLIENTE.AsInteger;
  cds_repcli.Open;
end;

procedure TfClienteRepresentante.cds_repcliNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_repcliCOD_CLIENTE.AsInteger := fClienteCadastro.cds_cliCODCLIENTE.AsInteger;
end;

end.
