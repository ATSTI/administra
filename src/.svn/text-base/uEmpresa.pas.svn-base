unit uEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, StdCtrls, DBCtrls, ExtCtrls, Mask, DB, DBClient,
  Provider, SqlExpr, Menus, XPMenu, Buttons, MMJPanel;

type
  TfEmpresa = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    cdsEMPRESA: TStringField;
    cdsRAZAO: TStringField;
    cdsCNPJ_CPF: TStringField;
    cdsENDERECO: TStringField;
    cdsLOGRADOURO: TStringField;
    cdsBAIRRO: TStringField;
    cdsCIDADE: TStringField;
    cdsUF: TStringField;
    cdsCEP: TStringField;
    cdsDDD: TStringField;
    cdsFONE: TStringField;
    cdsFONE_1: TStringField;
    cdsFONE_2: TStringField;
    cdsFAX: TStringField;
    cdsE_MAIL: TStringField;
    cdsWEB: TStringField;
    cdsLOGOTIPO: TGraphicField;
    cdsCODIGO: TIntegerField;
    cdsTIPO: TStringField;
    cdsIE_RG: TStringField;
    sdsEMPRESA: TStringField;
    sdsRAZAO: TStringField;
    sdsCNPJ_CPF: TStringField;
    sdsENDERECO: TStringField;
    sdsLOGRADOURO: TStringField;
    sdsBAIRRO: TStringField;
    sdsCIDADE: TStringField;
    sdsUF: TStringField;
    sdsCEP: TStringField;
    sdsDDD: TStringField;
    sdsFONE: TStringField;
    sdsFONE_1: TStringField;
    sdsFONE_2: TStringField;
    sdsFAX: TStringField;
    sdsE_MAIL: TStringField;
    sdsWEB: TStringField;
    sdsLOGOTIPO: TGraphicField;
    sdsCODIGO: TIntegerField;
    sdsTIPO: TStringField;
    sdsIE_RG: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses UDm, uEmpresaProcura;

{$R *.dfm}

procedure TfEmpresa.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fEmpresaProcura := TfEmpresaProcura.Create(Application);
  try
   fEmpresaProcura.ShowModal;
  finally
   fEmpresaProcura.Free;
  end;
end;

procedure TfEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  if not cds.Active then
    cds.Open;
end;

end.
