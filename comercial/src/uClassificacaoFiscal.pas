unit uClassificacaoFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Mask, DBCtrls, SqlExpr, Provider, DBClient, Grids, DBGrids,
  JvExControls, JvLabel;

type
  TfClassificacaoFiscal = class(TfPai)
    cds: TClientDataSet;
    cdsCLASSIFICAO: TStringField;
    cdsCODIGO_REDUZ: TStringField;
    cdsDESCRICAO: TStringField;
    cdsTIPO_CLASSIFICA: TStringField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCLASSIFICAO: TStringField;
    sdsCODIGO_REDUZ: TStringField;
    sdsDESCRICAO: TStringField;
    sdsTIPO_CLASSIFICA: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    JvLabel1: TJvLabel;
    sdsICMS_SUBST: TFloatField;
    sdsICMS_SUBST_IC: TFloatField;
    sdsICMS_SUBST_IND: TFloatField;
    cdsICMS_SUBST: TFloatField;
    cdsICMS_SUBST_IC: TFloatField;
    cdsICMS_SUBST_IND: TFloatField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClassificacaoFiscal: TfClassificacaoFiscal;
  var_tipo: String;

implementation

uses uComercial, UDm, sCtrlResize;

{$R *.dfm}

procedure TfClassificacaoFiscal.FormShow(Sender: TObject);
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(fClassificacaoFiscal));
  if not (cds.Active) then
    cds.Params[0].AsString := var_tipo;
  cds.Open;
end;

procedure TfClassificacaoFiscal.btnGravarClick(Sender: TObject);
begin
  if (cds.State in [dsInsert, dsEdit]) then
    cdsTIPO_CLASSIFICA.AsString := var_tipo;
  inherited;

end;

procedure TfClassificacaoFiscal.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfClassificacaoFiscal.FormCreate(Sender: TObject);
begin
  //inherited;

end;

end.
