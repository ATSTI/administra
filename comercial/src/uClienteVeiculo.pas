unit uClienteVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls;

type
  TfClienteVeiculo = class(TfPai)
    sds_Veiculocli: TSQLDataSet;
    sds_VeiculocliCOD_VEICULO: TIntegerField;
    sds_VeiculocliCOD_CLIENTE: TIntegerField;
    sds_VeiculocliPLACA: TStringField;
    sds_VeiculocliMARCA_MODELO: TStringField;
    sds_VeiculocliTIPO: TStringField;
    sds_VeiculocliCOMBUSTIVEL: TStringField;
    sds_VeiculocliANO_FAB: TStringField;
    sds_VeiculocliANO_MOD: TStringField;
    sds_VeiculocliCOR: TStringField;
    dsp_Veiculocli: TDataSetProvider;
    cds_Veiculocli: TClientDataSet;
    cds_VeiculocliCOD_VEICULO: TIntegerField;
    cds_VeiculocliCOD_CLIENTE: TIntegerField;
    cds_VeiculocliPLACA: TStringField;
    cds_VeiculocliMARCA_MODELO: TStringField;
    cds_VeiculocliTIPO: TStringField;
    cds_VeiculocliCOMBUSTIVEL: TStringField;
    cds_VeiculocliANO_FAB: TStringField;
    cds_VeiculocliANO_MOD: TStringField;
    cds_VeiculocliCOR: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    sds_VeiculocliCHASSIS: TStringField;
    cds_VeiculocliCHASSIS: TStringField;
    Label10: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure cds_VeiculocliNewRecord(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cds_VeiculocliReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
    varPlaca: String;
    chassi: String;
  end;

var
  fClienteVeiculo: TfClienteVeiculo;

  
implementation

uses UDm, uVendas, uTerminal, sCtrlResize;

{$R *.dfm}

procedure TfClienteVeiculo.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfClienteVeiculo.cds_VeiculocliNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_VeiculocliCOD_CLIENTE.AsInteger := 0;
end;

procedure TfClienteVeiculo.btnGravarClick(Sender: TObject);
begin
  if (cds_Veiculocli.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_VEICU, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_VeiculocliCOD_VEICULO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;  
  inherited;
  varPlaca := cds_VeiculocliPLACA.AsString;

end;

procedure TfClienteVeiculo.FormShow(Sender: TObject);
begin
 // inherited;
   sCtrlResize.CtrlResize(TForm(fClienteVeiculo));
  if cds_Veiculocli.Active then
    cds_Veiculocli.Close;
  cds_Veiculocli.Params[0].asString := varPlaca;
  cds_Veiculocli.Open;
  if (cds_Veiculocli.IsEmpty) then
  begin
    btnIncluir.Click;
    DBEdit2.Text := varplaca;
  end;
end;

procedure TfClienteVeiculo.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfClienteVeiculo.cds_VeiculocliReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Erro para gravar os dados.' + #10#13 + E.message , mtWarning, [mbOK], 0);
end;

end.
