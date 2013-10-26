unit uNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfNCM = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    btnProcNCM: TBitBtn;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    cdsNCM: TClientDataSet;
    dspNCM: TDataSetProvider;
    sdsNCM: TSQLDataSet;
    sdsNCMNCM: TStringField;
    sdsNCMALIQNAC: TFloatField;
    sdsNCMALIQIMP: TFloatField;
    cdsNCMNCM: TStringField;
    cdsNCMALIQNAC: TFloatField;
    cdsNCMALIQIMP: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcNCMClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNCM: TfNCM;

implementation

uses UDm, uClassificacaoFiscalNCM;

{$R *.dfm}

procedure TfNCM.FormCreate(Sender: TObject);
begin
  if not cdsNCM.Active then
    cdsNCM.Open;
end;

procedure TfNCM.FormDestroy(Sender: TObject);
begin
  inherited;
  if cdsNCM.Active then
    cdsNCM.Close;
end;

procedure TfNCM.FormShow(Sender: TObject);
begin
  dbedit1.Enabled := True;
  dbedit2.Enabled := True;
end;

procedure TfNCM.btnProcNCMClick(Sender: TObject);
var stra: string;
begin
  inherited;
  if (dbEdit1.Text = '') then
  begin
    cdsNCM.Cancel;
    cdsNCM.Filtered := False;
    exit;
  end;
  stra := dbEdit1.Text;
  cdsNCM.Cancel;
  if (cdsNCM.Filtered = True) then
    cdsNCM.Filtered := False;
  cdsNCM.Filter := 'NCM = ''' + stra + '*''';
  if (stra <> '') then
    cdsNCM.Filtered := True
  else
    cdsNCM.Filtered := False;
end;

procedure TfNCM.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Excluir := 'S';
  Alterar := 'S';
  Cancelar := 'S';
  Procurar :=  'S';
  inherited;

end;

procedure TfNCM.btnProcurarClick(Sender: TObject);
begin
//  inherited;
  fClassificacaoFiscalNCM := TfClassificacaoFiscalNCM.Create(Application);
  try
    fClassificacaoFiscalNCM.ncm := cdsNCMNCM.AsString;
    fClassificacaoFiscalNCM.Label9.Caption := cdsNCMNCM.AsString;
    fClassificacaoFiscalNCM.ShowModal;
  finally
    fClassificacaoFiscalNCM.Free;
  end;
end;

end.
