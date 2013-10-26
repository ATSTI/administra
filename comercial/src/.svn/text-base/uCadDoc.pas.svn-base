unit uCadDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Mask, DBCtrls, SqlExpr, Provider, DBClient;

type
  TFCadDoc = class(TfPai_new)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    sqlC: TSQLDataSet;
    sqlCID: TIntegerField;
    sqlCCODDOC: TStringField;
    sqlCDESCR: TStringField;
    sqlCANODESC: TFloatField;
    sqlCMETODO: TStringField;
    sqlCLEI1: TStringField;
    sqlCLEI2: TStringField;
    sqlCOBS: TStringField;
    sqlCSEQUENCIA: TStringField;
    sqlCMICROF: TStringField;
    sqlCDIGITA: TStringField;
    sqlCPRAZO: TStringField;
    sqlCFORDESTR: TStringField;
    sqlCFISCAL: TStringField;
    sqlCANEXO: TMemoField;
    sqlCCODSIS: TStringField;
    dspC: TDataSetProvider;
    cdsC: TClientDataSet;
    cdsCID: TIntegerField;
    cdsCCODDOC: TStringField;
    cdsCDESCR: TStringField;
    cdsCANODESC: TFloatField;
    cdsCMETODO: TStringField;
    cdsCLEI1: TStringField;
    cdsCLEI2: TStringField;
    cdsCSEQUENCIA: TStringField;
    cdsCOBS: TStringField;
    cdsCMICROF: TStringField;
    cdsCDIGITA: TStringField;
    cdsCPRAZO: TStringField;
    cdsCFORDESTR: TStringField;
    cdsCFISCAL: TStringField;
    cdsCANEXO: TMemoField;
    cdsCCODSIS: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadDoc: TFCadDoc;

implementation

uses UDm, uFiltroCadDoc;

{$R *.dfm}

procedure TFCadDoc.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fFiltroCadDoc := TfFiltroCadDoc.Create(Application);  
  try
    fFiltroCadDoc.BitBtn1.Visible := False;
    fFiltroCadDoc.ShowModal;
  finally
    fFiltroCadDoc.Free;
  end;
end;

procedure TFCadDoc.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TFCadDoc.btnGravarClick(Sender: TObject);
begin
    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CADOC, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      FCadDoc.cdsCID.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
    end;

  inherited;

end;

procedure TFCadDoc.FormShow(Sender: TObject);
begin
  inherited;
  btnExcluir.Visible := False;
end;

end.
