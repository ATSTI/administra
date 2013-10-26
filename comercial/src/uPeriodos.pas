unit uPeriodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Menus,
  XPMenu, DB, Buttons, ExtCtrls, MMJPanel, FMTBcd, SqlExpr;

type
  TfPeriodos = class(TfPai_new)
    Label4: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEditPeriodo: TDBEdit;
    dbNotaFinal: TDBComboBox;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Label6: TLabel;
    Label7: TLabel;
    scds_periodo_proc: TSQLDataSet;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPeriodos: TfPeriodos;

implementation

uses UDm;

{$R *.dfm}

procedure TfPeriodos.FormShow(Sender: TObject);
begin
  inherited;
  if (not DM.cdsPeriodo.Active) then
    DM.cdsPeriodo.Open;
  dm.cdsPeriodo.Last;
  dm.cdsPeriodo.Edit;
end;

procedure TfPeriodos.btnGravarClick(Sender: TObject);
begin
//  inherited;
  if Dm.cdsPeriodoPERIODO.IsNull then exit;
  if DtSrc.DataSet.State = dsInsert then
    begin
        if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_TABPERIODO, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        Dm.cdsPeriodoIDPERIODO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
        if dbNotaFinal.Text='SIM' then
        begin
          if not scds_periodo_proc.Active then
           scds_periodo_proc.Open;
           if not scds_periodo_proc.IsEmpty then
           begin
             MessageDlg('Somente 1 período pode ser escolhido para nota final.', mtError, [mbOK], 0);
             dm.cdsPeriodoNOTAFINAL.Value:='NÃO';
           end;
        end;
        Dm.cdsPeriodo.ApplyUpdates(0);
        Dm.cdsPeriodo.Append;
        DBeditPeriodo.SetFocus;;
    end
  else
   begin
     if dbNotaFinal.Text='SIM' then
     begin
       if not scds_periodo_proc.Active then
         scds_periodo_proc.Open;
       if not scds_periodo_proc.IsEmpty then
       begin
          MessageDlg('Somente 1 período pode ser escolhido para nota final.', mtError, [mbOK], 0);
          dm.cdsPeriodo.Edit;
          dm.cdsPeriodoNOTAFINAL.Value:='NÃO';
       end;
     end;
        dm.cdsPeriodo.ApplyUpdates(0);
   end;
end;

procedure TfPeriodos.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEditPeriodo.SetFocus;
end;

end.
