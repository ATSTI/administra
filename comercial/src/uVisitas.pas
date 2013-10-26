unit uVisitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB, Menus,
  XPMenu, Buttons, ExtCtrls, MMJPanel;

type
  TfVisitas = class(TfPai)
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVisitas: TfVisitas;
  id_cliente : integer;

implementation

uses UDm;

{$R *.dfm}

procedure TfVisitas.FormShow(Sender: TObject);
begin
  inherited;

  if dm.cdsVisita.Active then
     dm.cdsVisita.Close;
  dm.cdsVisita.Params[0].Clear;
  dm.cdsVisita.Params[1].Clear;
  dm.cdsVisita.Params[2].Clear;
  dm.cdsVisita.Params[0].AsInteger := id_cliente;
  dm.cdsVisita.Open;

  if (not dm.cdsTipoVisita.Active) then
      dm.cdsTipoVisita.Open;
  dm.cdsTipoVisita.First;
  while not dm.cdsTipoVisita.Eof do
  begin
     DBComboBox1.Items.Add(dm.cdsTipoVisitaVISITA.AsString);
     dm.cdsTipoVisita.Next;
  end;
  dm.cdsTipoVisita.Close;

end;

procedure TfVisitas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBComboBox1.SetFocus;
end;

procedure TfVisitas.btnGravarClick(Sender: TObject);
begin
  dm.cdsVisitaCODCLIENTE.AsInteger := id_cliente;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_VISITAS, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  dm.cdsVisitaCODVISITA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;
  inherited;

end;

procedure TfVisitas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  id_cliente := 0;
end;

procedure TfVisitas.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

end.
