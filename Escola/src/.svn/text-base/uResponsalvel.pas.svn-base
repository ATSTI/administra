unit uResponsalvel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, DBCtrls, StdCtrls, Mask, Menus, XPMenu, DB, Buttons,
  ExtCtrls, MMJPanel, ComCtrls;

type
  TfResponsalvel = class(TfPai_new)
    DBTextDestaque1: TDBText;
    DBTextDestaque: TDBText;
    Label59: TLabel;
    DBEdit46: TDBEdit;
    Label60: TLabel;
    DBEdit47: TDBEdit;
    Label61: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label62: TLabel;
    DBEdit50: TDBEdit;
    Label63: TLabel;
    DBEdit51: TDBEdit;
    Label64: TLabel;
    DBEdit52: TDBEdit;
    Label65: TLabel;
    DBEdit53: TDBEdit;
    Label66: TLabel;
    DBEdit54: TDBEdit;
    Label67: TLabel;
    DBEdit55: TDBEdit;
    Label68: TLabel;
    DBEdit56: TDBEdit;
    Label69: TLabel;
    DBEdit57: TDBEdit;
    Label70: TLabel;
    DBEdit58: TDBEdit;
    Label71: TLabel;
    DBEdit59: TDBEdit;
    Label72: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codresponsavel : integer;
  end;

var
  fResponsalvel: TfResponsalvel;

implementation

uses UDm, uProcResponsavel, UDMEscola;

{$R *.dfm}

procedure TfResponsalvel.btnIncluirClick(Sender: TObject);
begin
  inherited;
  //DBRadioGroup22.ItemIndex := 2;
//  DBEdit46.SetFocus;
end;

procedure TfResponsalvel.btnGravarClick(Sender: TObject);
begin
  if (ComboBox1.Text = '') then
  begin
    MessageDlg('Informe o tipo do responsável.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (DMEscola.cdsResponsavel.State in [dsInsert]) then
  begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_RESPONSAVEL, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMEscola.cdsResponsavelCOD_RESPONSAVEL.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  DMEscola.cdsResponsavelTIPORESPONSAVEL.AsString := ComboBox1.Text;
  inherited;

end;

procedure TfResponsalvel.FormShow(Sender: TObject);
begin
  inherited;
    if (DMEscola.cdsResponsavel.Active) then
       DMEscola.cdsResponsavel.Close;
    DMEscola.cdsResponsavel.Params[0].AsInteger := codresponsavel;
    DMEscola.cdsResponsavel.Open;
end;

end.
